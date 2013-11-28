package edu.ucsf.lava.crms.assessment.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.ActionUtils;
import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.dao.LavaEqualityParamHandler;
import edu.ucsf.lava.crms.assessment.controller.VisitInstrumentsHandler;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.assessment.model.UdsInstrumentTracking;
import edu.ucsf.lava.crms.scheduling.model.Visit;
import edu.ucsf.lava.crms.scheduling.model.UdsVisit;
import edu.ucsf.lava.crms.session.CrmsSessionUtils;

public class UdsVisitInstrumentsHandler extends VisitInstrumentsHandler {

	public UdsVisitInstrumentsHandler() {
		super();
		this.setEntityForStandardSourceProvider(UdsInstrumentTracking.class);
	}
	
	public LavaDaoFilter extractFilterFromRequest(RequestContext context, Map components){
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		LavaDaoFilter filter = UdsInstrumentTracking.newFilterInstance(getCurrentUser(request));
		filter.addDefaultSort("formId",true);
		// determine the visit to use for the list of instruments. 
		// in case this is the secondary component list on the Add Instrument page, first check 
		// the visit id field submitted on the form (the form is resubmitted every time the user 
		// changes the visit so that the list of instruments can be updated). however, on the initial
		// GET, the field will not be submitted, so then check if there is a currentVisit
		// in context
		Instrument instrument = ((Instrument)components.get("instrument"));
		Long visitId = null;
		if (instrument != null) {
			visitId = instrument.getVisit().getId();
		}
		if (visitId != null) {
			filter.setParam("visit.id",visitId);
		}
		else {
			Visit v = CrmsSessionUtils.getCurrentVisit(sessionManager, request);
			if (v != null) {
				filter.setParam("visit.id",v.getId());
			}
			else {
				filter.setParam("visit.id",new Long(0));
			}
		}
		filter.addParamHandler(new LavaEqualityParamHandler("visit.id"));
		return filter;
	}

	/**
	 * This checks to see if the visit id matches a "UDS" visit.  If so
	 *   the UdsVisitInstruments handler handles the event.
	 */
	@Override
	public Event preSetupFlowDirector(RequestContext context) throws Exception {
		String id = context.getFlowScope().getString("id");
		String flowMode = ActionUtils.getFlowMode(context.getActiveFlow().getId()); 
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		
		Visit v = CrmsSessionUtils.getCurrentVisit(sessionManager, request);
		
		if(StringUtils.isNumeric(id)){
			// check if the current visit (determining this list) is a UdsVisit
			if (UdsVisit.class.isAssignableFrom(v.getClass())) {
				return new Event(this,this.SUCCESS_FLOW_EVENT_ID);
			}
		}
		return new Event(this,this.UNHANDLED_FLOW_EVENT_ID);
	}
	
	@Override
	public Event postSetupFlowDirector(RequestContext context, Object command) throws Exception {
		String id = context.getFlowScope().getString("id");
		String flowMode = ActionUtils.getFlowMode(context.getActiveFlow().getId()); 
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		
		Visit v = CrmsSessionUtils.getCurrentVisit(sessionManager, request);
		
		if(StringUtils.isNumeric(id)){
			// check if the current visit (determining this list) is a UdsVisit
			if (UdsVisit.class.isAssignableFrom(v.getClass())) {
				return new Event(this,this.CONTINUE_FLOW_EVENT_ID);
			}
		}
		return new Event(this,this.UNHANDLED_FLOW_EVENT_ID);
	}
}
