package edu.ucsf.lava.crms.scheduling.model;

import java.util.List;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.core.model.EntityManagerBase;
import edu.ucsf.lava.crms.assessment.model.UdsFormChecklist;
import edu.ucsf.lava.crms.assessment.model.UdsFtldFormChecklist;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;
import edu.ucsf.lava.crms.assessment.model.UdsInstrumentTracking;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.assessment.model.UdsMilestone;
import edu.ucsf.lava.crms.assessment.model.UdsUploadUtils;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsVisit extends Visit {

	public static String UDS_PACKET_TYPE_NA = "NA";
	public static EntityManager MANAGER = new EntityBase.Manager(UdsVisit.class);

	
	protected String packet;
	protected Short visitNum;
	
	public UdsVisit() {
		super();
	}

	public String getPacket() {
		return packet;
	}

	public void setPacket(String packet) {
		this.trackDirty("packet",packet);
		this.packet = packet;
	}

	public Short getVisitNum() {
		return visitNum;
	}

	public void setVisitNum(Short visitNum) {
		this.trackDirty("visitNum", visitNum);
		this.visitNum = visitNum;
	}

	@Override
	public boolean afterUpdate() {
		//if Packet type not set, then no settings propagate to uds instruments associated with the visit
		if(this.getPacket() == null || this.getPacket().equals(this.UDS_PACKET_TYPE_NA)){
			return super.afterUpdate();
		}
		
		if(isDirty("visitNum") || isDirty("packet")){
		
			
			//update the packet and visitNum of all UDS instruments associated with this visit
			LavaDaoFilter filter = UdsInstrument.MANAGER.newFilterInstance();
			filter.addDaoParam(filter.daoEqualityParam("visit.id",this.getId()));
			filter.setAlias("visit","visit");
			List<UdsInstrumentTracking> instruments = UdsInstrumentTracking.MANAGER.get(filter);
			for(UdsInstrumentTracking i : instruments){
				i.setVisitNum(visitNum);
				i.setPacket(packet);
				i.save();
			}
			return true;
		}else{
			return super.afterUpdate();
		}
	}
	
	public void flushPacketStatus(UdsInstrument instrUpdated) {
		// instrUpdated is the instrument that was just updated
		
		// if this is a UDS Form Checklist (form 'Z1' or 'Z1F') then update the packet status of all other
		// UDS instruments for the same patient and visit to be the same as the UDS Form Checklist
		if (instrUpdated.getFormId().equals(UdsFormChecklist.UDS_FORMCHECKLIST_FORMID)
		    || instrUpdated.getFormId().equals(UdsFtldFormChecklist.UDS_FTLD_FORMCHECKLIST_FORMID)) {
			LavaDaoFilter filter = newFilterInstance();
			filter.setAlias("visit","visit");
			filter.addDaoParam(filter.daoEqualityParam("visit.id", this.getId()));
			filter.addDaoParam(filter.daoNot(
					filter.daoOr(
							filter.daoEqualityParam("formId", UdsFtldFormChecklist.UDS_FTLD_FORMCHECKLIST_FORMID),
							filter.daoEqualityParam("formId", UdsFormChecklist.UDS_FORMCHECKLIST_FORMID))));
			List<UdsInstrumentTracking> udsInstrs = UdsInstrumentTracking.MANAGER.get(filter);
			for (UdsInstrumentTracking udsInstr : udsInstrs) {
				// at this point the Patient property of udsInstr is a hibernateProxy so materialize the Patient 
				// in case Patient properties are needed (e.g. the instrument save could set the UdsInstrument ptid
				// to an IdManager value derived from the Patient (or subclass)
				// trick is that if the DAO materialize method is called on the HibernateProxy, even though the
				// Patient is materialized upon return will still be a HibernateProxy, so have to call the DAO 
				// directly
				// i.e. this does not work: Patient p = (Patient) udsInstr.getPatient().materializeProxy();
				EntityManagerBase entityManager = new EntityManagerBase();
				Patient p = (Patient) entityManager.materializeProxy(udsInstr.getPatient());
				udsInstr.setPatient(p);
				
				udsInstr.setPacketDate(instrUpdated.getPacketDate());
				udsInstr.setPacketBy(instrUpdated.getPacketBy());
				udsInstr.setPacketStatus(instrUpdated.getPacketStatus());
				udsInstr.setPacketReason(instrUpdated.getPacketReason());
				udsInstr.setPacketNotes(instrUpdated.getPacketNotes());
				udsInstr.save();
			}
		}
		else {
			// if this is NOT a UDS Form Checklist instrument, update the packet status of this 
			// instrument based on the UDS Form Checklist instrument for this patient and visit
			
			// obtain the UDS Form Checklist instrument for this patient and visit
			LavaDaoFilter filter = newFilterInstance();
			filter.addDaoParam(filter.daoEqualityParam("id", this.getId()));
			filter.addDaoParam(filter.daoEqualityParam("formId", (this.getVisitType().equals("FTLD Assessment") ? UdsFtldFormChecklist.UDS_FTLD_FORMCHECKLIST_FORMID : UdsFormChecklist.UDS_FORMCHECKLIST_FORMID)));
			UdsInstrumentTracking udsFormChecklist = (UdsInstrumentTracking) UdsInstrumentTracking.MANAGER.getOne(filter);
			// there is always a UDS Form Checklist instrument for this patient and visit, since
			// a patient will always get the complete UDS set of instruments at a visit. however,
			// in the case where the UDSVisit is edited the UDSVisit afterUpdate method propagates
			// any visitNum and packet changes down to all of the visit's instruments. as each of these
			// instruments is saved, this beforeUpdate method is invoked, and if a given instrument's
			// visitNum is modified before the UDS Form Checklist's visitNum, the UDS Form Checklist
			// will not be found
			// note that regardless of where the UDS Form Checklist is in the order that UDSVisit is
			// iterating over, all instruments will be involved in the packet status update, either
			// here in the else clause if the instrument is being updated after the UDS Form Checklist,
			// or above in the if clause if the instrument is being updated before the UDS Form Checklist
			if (udsFormChecklist != null) {
				instrUpdated.setPacketDate(udsFormChecklist.getPacketDate());
				instrUpdated.setPacketBy(udsFormChecklist.getPacketBy());
				instrUpdated.setPacketStatus(udsFormChecklist.getPacketStatus());
				instrUpdated.setPacketReason(udsFormChecklist.getPacketReason());
				instrUpdated.setPacketNotes(udsFormChecklist.getPacketNotes());
				// do not have to explicitly call save here since this object is in the process of
				// being saved
			}
		}
	}
	
	public String getSubmissionStatusZ1() {
		// it is likely that Z1 submission status would represent the entire packet's submission status
		//  refer to your ADRC's submission policy before using this to represent the packet submission status
		
		LavaDaoFilter filterZ1 = UdsFormChecklist.MANAGER.newFilterInstance();
		filterZ1.addDaoParam(filterZ1.daoEqualityParam("visit.id",this.getId()));
		filterZ1.setAlias("visit","visit");
		UdsFormChecklist z1 = (UdsFormChecklist)UdsFormChecklist.MANAGER.getOne(filterZ1);
		
		if (z1 == null)
			return "No Z1 form";
		else
			return z1.getPacketStatus();
	}
	
	// used by ignav to determine whether to packet is ready for submission
	// TODO: TQR: my guess is that this could be cleaned up (refactored), having done it quite a while ago
	public boolean getPacketComplete() {
		boolean logiccheck_problem;
		
		LavaDaoFilter filter = UdsInstrumentTracking.MANAGER.newFilterInstance();
		filter.addDaoParam(filter.daoEqualityParam("visit.id",this.getId()));
		filter.setAlias("visit","visit");
		List<UdsInstrumentTracking> visitInstruments = UdsInstrumentTracking.MANAGER.get(filter);
		
		if (this.getVisitType().equals("Milestone")) {
			for(UdsInstrumentTracking i : visitInstruments) {
				if (i.getDeStatus() == null || !i.getDeStatus().equals("Complete")
					|| i.getDcStatus() == null || !i.getDcStatus().equals("Complete")
				    || i.hasMissingOrIncompleteFields()
				    || (i.getLcStatus() != null
				    	&& i.getLcStatus().equals("Failed")))
					return false;
				if (i.getInstrType().equals("UDS Milestone")) { // should always be the case
					// check if milestone has no useful info (e.g. if said nothing changed)
					filter = UdsMilestone.MANAGER.newFilterInstance();
					filter.setAlias("visit","visit");
					filter.addDaoParam(filter.daoEqualityParam("visit.id",this.getId()));
					UdsMilestone m1 = (UdsMilestone)UdsMilestone.MANAGER.getOne(filter);
					if (m1.getInstrVer().equals("1")) continue;  // TODO: analyze version 1 fields for completeness
					if ((m1.getDeceased() == null || m1.getDeceased().equals((short)0))
						&& (m1.getDiscont() == null || m1.getDiscont().equals((short)0))
						&& (m1.getRejoined() == null || m1.getRejoined().equals((short)0))
						&& (m1.getNurseHome() == null || m1.getNurseHome().equals((short)0))
						&& (m1.getProtocol() == null || m1.getProtocol().equals((short)0))
						) 
						return false;
				}
			}
			return true;
		} else if (this.getVisitType().equals("Initial Assessment")
				   || this.getVisitType().equals("Follow Up Assessment")
				   || this.getVisitType().equals("Telephone Follow Up")) {
			
			// the Z1 form determines which forms will not be a part of the packet
			// for each form in the packet, ensure its data is "complete", else return false
			
			// find the real data for Z1 (not just the UdsInstrumentTracking part)
			LavaDaoFilter filterZ1 = UdsFormChecklist.MANAGER.newFilterInstance();
			filterZ1.addDaoParam(filterZ1.daoEqualityParam("visit.id",this.getId()));
			filterZ1.setAlias("visit","visit");
			UdsFormChecklist z1 = (UdsFormChecklist)UdsFormChecklist.MANAGER.getOne(filterZ1);
	 		UdsFtldFormChecklist z1f = (UdsFtldFormChecklist)UdsFtldFormChecklist.MANAGER.getOne(filterZ1);
			
			// for each form in the packet, check if supposed to be complete
			for(UdsInstrumentTracking i : visitInstruments) {
				logiccheck_problem = (i.getLcStatus() != null && i.getLcStatus().equals("Failed"));
				
				// The following forms are exceptions:
				// 	 Z1, A1, A5, B4, B9, C1, D1, E1
				// From NACC: "NACC expects and intends that all UDS forms will be attempted on all subjects, but we
				// realize this may be impossible when the patient is terminally ill, or when there is no
				// informant, or for other reasons.  NACC requires that Forms Z1, A1, A5, B4, B9, C1, D1, and E1
				// be submitted for a subject to be included in the UDS database, even though these forms
				// may include some missing data."
				if (i.getFormId() == "Z1" || i.getFormId() == "A1" || i.getFormId() == "A5"
					 || i.getFormId() == "B4" || i.getFormId() == "B9" || i.getFormId() == "C1"
					 || i.getFormId() == "D1" || i.getFormId() == "E1"
					 || i.getFormId() == "Z1F" || i.getFormId() == "B3F" || i.getFormId() == "B9F"
					 || i.getFormId() == "C1F" || i.getFormId() == "C2F" || i.getFormId() == "C3F"
					 || i.getFormId() == "E2F" || i.getFormId() == "E3F") {
					// always included (based on the reading above, even if there were incomplete/missing values),
					// so just check if *attempted* to have been completed (DEStatus="Complete" means it was saved)
					if (!i.getDeStatus().equals("Complete") || logiccheck_problem)
						return false;
				} else {
					if (UdsUploadUtils.includeInstrBasedOnZ1(i, z1, z1f)
						&& (i.getDeStatus() == null || !i.getDeStatus().equals("Complete")
							|| i.getDcStatus() == null || !i.getDcStatus().equals("Complete")
							|| i.hasMissingOrIncompleteFields()
							|| logiccheck_problem))
						return false;
				}
			}
			
			// if made it through, then all included instruments are complete without logiccheck problems
			return true;
		} else {
			return true;  // any unconsidered visit types will always return true
		}
		
	}
	
	
	
}
