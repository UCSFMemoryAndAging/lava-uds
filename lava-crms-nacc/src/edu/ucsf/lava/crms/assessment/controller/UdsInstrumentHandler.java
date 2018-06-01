package edu.ucsf.lava.crms.assessment.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.validation.BindingResult;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import static edu.ucsf.lava.crms.assessment.controller.InstrumentComponentFormAction.INSTRUMENT;
import edu.ucsf.lava.core.controller.ComponentCommand;
import edu.ucsf.lava.core.controller.LavaComponentFormAction;
import edu.ucsf.lava.crms.assessment.controller.upload.FileLoader;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;

public class UdsInstrumentHandler extends InstrumentHandler {

	public UdsInstrumentHandler() {
		super();

	}

	public UdsInstrumentHandler(Map<String, FileLoader> fileLoaders) {
		super(fileLoaders);

	}

	@Override
	public Map addReferenceData(RequestContext context, Object command, BindingResult errors, Map model) {
		model = super.addReferenceData(context, command, errors, model);
		this.addListsToModel(model,listManager.getStaticListsForEntity("udsinstrument"));
		return model;
	}
	
	
	public Event udsValidationCheck(RequestContext context, Object command, BindingResult errors) throws Exception {
		UdsInstrument udsInstr = (UdsInstrument) ((ComponentCommand)command).getComponents().get(INSTRUMENT);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date uds3StartDate = null;
		try {
			uds3StartDate = sdf.parse("2015-03-15");
		}
		catch (ParseException pe) {
		}
		
		if (udsInstr.getVisitNum() != null && !udsInstr.getInstrTypeEncoded().startsWith("udsmilestone") && udsInstr.getVisitNum() <= 0) {
			// visitNumber must be 1 or greater (but UDS Milestone does not use visitNum and it is set to -8 = Unused Variable in udscommon.jsp, so allow negative value in that case)
			LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSVisitNum0", new Object[]{}); 
			return new Event(this,ERROR_FLOW_EVENT_ID);
		}
		else if (udsInstr.getFormId() != null && udsInstr.getFormId().endsWith("F")) {
			// FTLD module form
			if (udsInstr.getPacket() != null && !udsInstr.getPacket().equals("IF") && !udsInstr.getPacket().equals("FF")) {
				LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSFTLDFormId", new Object[]{}); 
				return new Event(this,ERROR_FLOW_EVENT_ID);
			}
			// packet cannot be Follow Up if visitNum is 1
			else if (udsInstr.getVisitNum() != null && udsInstr.getVisitNum().equals((short)1) && udsInstr.getPacket() != null && udsInstr.getPacket().equals("FF")) {
				LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSPacketTypeForVisit1", new Object[]{}); 
				return new Event(this,ERROR_FLOW_EVENT_ID);
			}
			// note that if Packet Type = 'IF' cannot validate that Visit Number must be 1 because the patient may have started the
			// FTLD module at a later visit than the UDS module, e.g. could have Packet Type='IF' and Visit Number=4
		}
		else {
			// UDS module form

			// Milestone packet 'M' has Milestone Form 'M1' and does not use UDS Visit Number so LAVA sets visitNum to the Unused
			// error code, -8, for the Milestone form, which is submitted to the NACC as a blank
			if (udsInstr.getFormId() != null && udsInstr.getFormId().equals("M1")) {
				if (udsInstr.getPacket() != null && !udsInstr.getPacket().equals("M")) {
					LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSMilestonePacket", new Object[]{}); 
					return new Event(this,ERROR_FLOW_EVENT_ID);
				}
			}
			else if (udsInstr.getPacket() != null && !udsInstr.getPacket().equals("I") && !udsInstr.getPacket().equals("F") && !udsInstr.getPacket().equals("T")) {
				LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSFormId", new Object[]{}); 
				return new Event(this,ERROR_FLOW_EVENT_ID);
			}
			
			// packet cannot be Follow Up (in person 'F' or telephone 'T') if visitNum is 1
			// note: Telephone Packet Type 'T' is for UDS module Follow Up visits that are conducted over the telephone
			else if (udsInstr.getVisitNum() != null && udsInstr.getVisitNum().equals((short)1) && udsInstr.getPacket() != null && (udsInstr.getPacket().equals("F") || udsInstr.getPacket().equals("T"))) {
				LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSPacketTypeForVisit1", new Object[]{}); 
				return new Event(this,ERROR_FLOW_EVENT_ID);
			}
			// validate that Packet Type 'Initial Visit' must have Visit Number = 1, or a Visit Number > 99. The convention is to 
			// use Visit Number > 99 for any form that will not be submitted to the NACC. this could be for a number of reasons:
			// a) the patient did not complete the visit so do not have a complete packet of NACC forms
			// b) one or more forms are missing for whatever reason
			// c) project using UDS forms does not submit data to the NACC
			
			// see note below where validating visitNum < 100 for more background on coordinators using visitNum > 99
			else if (udsInstr.getPacket() != null && udsInstr.getPacket().equals("I") && udsInstr.getVisitNum() != null && (udsInstr.getVisitNum() > 1 && udsInstr.getVisitNum() < 100)) {
				LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidUDSVisitNumForInitialPacketType", new Object[]{}); 
				return new Event(this,ERROR_FLOW_EVENT_ID);
			}
		}
		
		// user should not use UDS Form Version 3 for UDS instruments collected before UDS 3 existed, i.e. before 3/15/15. However, this cannot
		// be an error that prevents the user from saving because users cannot edit the Form Version directly. They have to execute a Change Version to
		// change Form Version. So do not show an error; instead just show an info message
		if (uds3StartDate != null && udsInstr.getDcDate().before(uds3StartDate) && udsInstr.getFormVer().equals("3")) {
			// allow save so do not return error but give info message about this situation
			LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidVersion3BasedOnDate", new Object[]{}); 
			return new Event(this,ERROR_FLOW_EVENT_ID);
		}

		
		// visitNum < 100 implies that the form and its packet are ready for NACC submission, so do not allow "Do Not Submit".
		
		// because the user does not have access to change the dsStatus field on the current page, can not return error
		// and keep the user on the page so just give an info message. In the doSaveStatusEvent can return error because
		// on that page can edit both visitNum and dsStatus
		
		// note: when coordinators are entering the form data for a packet the packet is not complete and ready to be submitted
		// until they finish data entry for all forms in the packet. To prevent the packet from being submitted to the NACC until
		// the packet data entry is complete, the coordinators practice is to temporarily set PacketStatus to 'Do Not Complete' (on
		// the Z1 form since PacketStatus can only be edited on Z1 and then propagates to all other forms (not really, jhesse solution
		// uses views to give the appearance of propagation)). Therefore, allowing the scenario where there is a submittable
		// visitNum (i.e. < 100) but yet with a packetStatus = 'Do Not Complete'
		if ((udsInstr.getVisitNum() != null && (udsInstr.getVisitNum() > 0 && udsInstr.getVisitNum() < 100)) && (udsInstr.getDsStatus() != null && udsInstr.getDsStatus().equals("Do Not Submit"))) {
			LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidVisitNumStatus", new Object[]{}); 
		}
		
		// similarly, visitNum > 99 implies that the form and its packet will not be submitted so enforce that either DsStatus must be "Do Not Submit" or PacketStatus must be "Do Not Complete"
		// issue with this check is that when data entering the instrument for the first time the visitNum will be set first so dsStatus and packetStatus will both be null, which would be 
		// an invalid combination when visitNum > 99, but since user has not gotten to the flow where dsStatus or packetStatus can be set yet, cannot fully enforce. Can only enforce when
		// either dsStatus or packetStatus have a value, but given an info message to the user otherwise
		if ((udsInstr.getVisitNum() != null && udsInstr.getVisitNum() > 99)) {
			if ((udsInstr.getDsStatus() == null || !udsInstr.getDsStatus().equals("Do Not Submit"))
				&& (udsInstr.getPacketStatus() == null || !udsInstr.getPacketStatus().equals("Do Not Complete"))) {
				// allow save so do not return error but give info message about this situation
				LavaComponentFormAction.createCommandError(errors, "udsinstrument.invalidVisitNumStatus2", new Object[]{}); 
			}
		}
		
		
		
		//TODO: additional validation:
		// 1. validate that this form has the same visitNum as every other UDS/FTLD form in the same LAVA visit
		// 2. validate that for this patient there is no other form with the same formId and visitNum as this form, unless
		//    that form has a status that will prevent it from being submitted (see the UDS extract procs to see what
		//    statuses prevent a form from being submitted, copied below)
		//        destatus like 'complete%' and
		//        dcstatus like 'complete%' and
		//        ...
		//        COALESCE(u.PacketStatus,'') NOT IN ('Do Not Complete') and
		//        COALESCE(u.DSStatus,'') NOT IN ('Do Not Submit')
		
		return new Event(this, SUCCESS_FLOW_EVENT_ID);
	}
	
	
	protected Event doEnterSaveEvent(RequestContext context, Object command, BindingResult errors) throws Exception {
		Event returnEvent = null;
		
		if ((returnEvent = udsValidationCheck(context, command, errors)).getId().equals(ERROR_FLOW_EVENT_ID)) {
			return returnEvent;
		}
		
		return super.doEnterSaveEvent(context, command, errors);
	}
		
		
	protected Event doEnterReviewSaveEvent(RequestContext context, Object command, BindingResult errors) throws Exception {
		Event returnEvent = null;
		
		if ((returnEvent = udsValidationCheck(context, command, errors)).getId().equals(ERROR_FLOW_EVENT_ID)) {
				return returnEvent;
		}
		
		return super.doEnterReviewSaveEvent(context, command, errors);
	}
	

}
