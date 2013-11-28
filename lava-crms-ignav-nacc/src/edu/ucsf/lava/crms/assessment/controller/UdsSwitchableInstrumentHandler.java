package edu.ucsf.lava.crms.assessment.controller;

import static edu.ucsf.lava.crms.assessment.controller.InstrumentComponentFormAction.INSTRUMENT;

import java.util.Map;

import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.ActionUtils;
import edu.ucsf.lava.core.controller.ComponentCommand;
import edu.ucsf.lava.crms.assessment.controller.UdsInstrumentHandler;
import edu.ucsf.lava.crms.assessment.controller.cbt.FileLoader;
import edu.ucsf.lava.crms.assessment.model.Instrument;

// UdsInstrumentHandler extends InstrumentHandler, not SwitchableInstrumentHandler,
//   thus we'll need to repeat functionality in SwitchableInstrumentHandler here
public class UdsSwitchableInstrumentHandler extends UdsInstrumentHandler {
	
	public UdsSwitchableInstrumentHandler() {
		super();
		requiredFieldEvents.add("switch");  // switch does a save, so definitely check required fields
	}
	
	public UdsSwitchableInstrumentHandler(Map<String, FileLoader> fileLoaders) {
		super(fileLoaders);
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
