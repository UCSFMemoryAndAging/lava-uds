package edu.ucsf.lava.crms.scheduling.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.ActionUtils;
import edu.ucsf.lava.core.controller.ComponentCommand;
import edu.ucsf.lava.crms.scheduling.model.UdsVisit;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsVisitHandler extends VisitHandler {

		public UdsVisitHandler() {
			super();
			this.setHandledEntity("visit", UdsVisit.class);
			this.setDefaultObjectBaseClass(Visit.class);
			
		}
		
		
		
		/**
		 * This checks to see if the visit id matches a "UDS" visit.  If so the UdsVisit handler handles the
		 * event (unless it is an add event). 
		 */
		@Override
		public Event preSetupFlowDirector(RequestContext context) throws Exception {
			String id = context.getFlowScope().getString("id");
			String flowMode = ActionUtils.getFlowMode(context.getActiveFlow().getId()); 
			HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();

			if (flowMode.equals("add")) {
				return new Event(this,this.UNHANDLED_FLOW_EVENT_ID);	
			}
			else if(StringUtils.isNumeric(id)){
				UdsVisit udsVisit = (UdsVisit) UdsVisit.MANAGER.getById(Long.valueOf(id), UdsVisit.newFilterInstance(this.getCurrentUser(request)));
				if(udsVisit != null){
					return new Event(this,this.SUCCESS_FLOW_EVENT_ID);
				}
			}
			return new Event(this,this.UNHANDLED_FLOW_EVENT_ID);
			
			
		}



		@Override
		public Map addReferenceData(RequestContext context, Object command,BindingResult errors, Map model) {
				 model = super.addReferenceData(context, command, errors, model);
				 this.addListsToModel(model, listManager.getStaticListsForEntity("udsVisit"));
				 return model;
				 
		}




	



	
		
		
}
