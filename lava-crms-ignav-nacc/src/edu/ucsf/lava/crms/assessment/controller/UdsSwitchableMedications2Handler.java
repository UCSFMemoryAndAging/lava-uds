package edu.ucsf.lava.crms.assessment.controller;

import static edu.ucsf.lava.crms.assessment.controller.InstrumentComponentFormAction.INSTRUMENT;

import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.ActionUtils;
import edu.ucsf.lava.core.controller.ComponentCommand;
import edu.ucsf.lava.crms.assessment.controller.UdsMedications2Handler;
import edu.ucsf.lava.crms.assessment.model.Instrument;

public class UdsSwitchableMedications2Handler extends UdsMedications2Handler {

	public UdsSwitchableMedications2Handler() {
		super();
		requiredFieldEvents.add("switch");
	}
	
	@Override
	protected String[] defineRequiredFields(RequestContext context, Object command) {
		Instrument instrument = (Instrument) ((ComponentCommand)command).getComponents().get(INSTRUMENT);
		String event = ActionUtils.getEventName(context);

		super.defineRequiredFields(context, command);
		// note: be aware that setRequiredFields() has been called by super, even to erase required fields for unhandled events
		
		// also set required fields when trying to "switch" (since it acts like an 'enter', i.e. saving)
		if (event.equals("switch")) {
	    	if(instrument.getEntityNameEncoded().startsWith("uds")){
	    		setRequiredFields(new String[]{
	    				"packet",
	    				"formId",
	    				"visitNum"
	    				// initials are not required at NACC
	    				//"initials"
	    				});
	    	}
	    	else {
		    	setRequiredFields(new String[0]);
	    	}
	    }
		
		return getRequiredFields();
	}

}
