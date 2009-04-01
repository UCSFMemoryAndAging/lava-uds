package edu.ucsf.lava.crms.assessment.controller;

import static edu.ucsf.lava.crms.assessment.controller.InstrumentComponentFormAction.INSTRUMENT;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.definition.StateDefinition;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.ActionUtils;
import edu.ucsf.lava.core.controller.ComponentCommand;
import edu.ucsf.lava.core.controller.ScrollablePagedListHolder;
import edu.ucsf.lava.core.session.CoreSessionUtils;
import edu.ucsf.lava.crms.assessment.controller.InstrumentHandler;
import edu.ucsf.lava.crms.assessment.dto.UdsMedications2DtoMapper;
import edu.ucsf.lava.crms.assessment.model.UdsMedications2;
import edu.ucsf.lava.crms.people.model.AddPatientCommand;
import edu.ucsf.lava.crms.session.CrmsSessionUtils;


public class UdsMedications2Handler extends InstrumentHandler {
	public static final int DATA_ENTRY_SECTION_LENGTH = 40;
	public static final String MEDICATIONS_DTO = "udsMedications2Dto";
	
	public UdsMedications2Handler() {
	
	}

	@Override
	public Map getBackingObjects(RequestContext context, Map components) {
		Map backingObjects = super.getBackingObjects(context, components);
		String flowMode = ActionUtils.getFlowMode(context.getActiveFlow().getId()); 
		
		//do nothing on add
		if (flowMode.equals("add")) return backingObjects;
		
		UdsMedications2 medications = (UdsMedications2) backingObjects.get(INSTRUMENT);

		// use a DTO for the command object used by the view, as opposed to the model object itself. 
		// this is for two reasons:
		// 1) so that blank rows in the details lists can be collapsed before writing to the database (note, the
		//    collapsing takes place during mapping the DTO to the model, not to the DTO itself, because if user
		//    returned to input view due to error or revise, do not want the DTO to have been collapsed)
		// 2) if prior medications values are used, do not want to modify the model object after it is retrieved
		//    because at the end of the request Hibernate may automatically persist the model object because it is dirty
		//    and this causes the versioning timestamp to be updated. because the timestamp is updated, when the
		//    model object is persisted upon save (verify) - which is a separate Hibernate session - Hibernate
		//    sees that the versioning timestamp was modified in some other Hibernate session and throws a 
		//    StaleObjectStateException is thrown. so instead, use the DTO as the command object for binding in the view.
		
		// use the DTO for the view flow too, because if priorMedications values are used, do
		// not want to modify the change property on priorMedications, as it will likewise be persisted
		// due to automatic persistence of dirty objects, and do not want the change property of the
		// priorMedications entity modified. instead, modify the change property on the DTO after the
		// priorMedications values have been transferred to it.
		UdsMedications2 dto = this.createUdsMedications2Dto(); // method to allow override by custom subclasses
		
		
		if(flowMode.equals("enterReview")){
			dto.initialize(this.DATA_ENTRY_SECTION_LENGTH);
		}
		else {
			dto.initialize(medications.getDetailsLength());
		}
			
			//now copy to the Data Transfer Object
			this.mapDtoFromModel(dto, medications);
		

		
		// populate the model as necessary for the view
		
		if (flowMode.equals("enterReview")) {
			//put detail records in the model
			backingObjects.put(this.MEDICATIONS_DTO, dto);
		}
		else {
			// the view flow displays the medications as a readonly list, using PagedListHolder structures, so 
			// set those up here.
			// use the DTO rather than priorMedications or medications, because if priorMedications values are being 
			// used, the change property was modified in the DTO, not in priorMedications which would then result
			// in the undesireable effect of automatic persistence of the priorMedications entity with modified
			// change property values
			
			ScrollablePagedListHolder details = (ScrollablePagedListHolder) new ScrollablePagedListHolder();
			backingObjects.put("details", details);
			details.setSource(dto.getDetails());
	
			backingObjects.put(this.MEDICATIONS_DTO, dto);
		}
		
		return backingObjects;
	}

	
	// allow these to be overridden by instance specific subclasses, which may have additional properties in its DTO/model
	protected UdsMedications2 createUdsMedications2Dto() {
		return new UdsMedications2();
	}

	protected void mapDtoFromModel(UdsMedications2 dto, UdsMedications2 m) {
		UdsMedications2DtoMapper.mapDtoFromModel(dto, m);
	}
	
	protected void mapModelFromDto(UdsMedications2 m, UdsMedications2 dto) {
		UdsMedications2DtoMapper.mapModelFromDto(m, dto);
	}
	
	public Map addReferenceData(RequestContext context, Object command, BindingResult errors, Map model) {
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();

		super.addReferenceData(context, command, errors, model);

		// for print, the Medications object is added as a data source by the superclass addReferenceData,
		// but need to add the details Lists as data sources
	 	String flowMode = ActionUtils.getFlowMode(context.getActiveFlow().getId()); 
	 	StateDefinition state = context.getCurrentState();
	 	if (flowMode.equals("view") && state.getId().equals("print")) {
	 		UdsMedications2 medicationsDto = (UdsMedications2) ((ComponentCommand)command).getComponents().get(MEDICATIONS_DTO);

		    // override the default report data source put into the model by the superclass (which is the model
		    // object itself) and use the DTO instead. for reasons stated in getBackingObjects, a DTO is used, and
		    // in the case of a follow up instrument that has not been edited yet, the DTO will correctly contain
		    // the prior medication instrument values, whereas the current medication instrument will not, so the
		    // report would not reflect them
	 		model.put("entityReportDataSource", new Object[] {medicationsDto});
		    
		    // put the details lists in the subreport data sources
	 		model.put("detailsDataSource", medicationsDto.getDetails());
	 		
		}
	 	
	 	
	 	//TODO: write a check to make sure we are only adding the medications list to the model when it is needed
//	 	load up dynamic lists
		Map<String,Map<String,String>> dynamicLists = getDynamicLists(model);
		dynamicLists.put("medications.drugLookup", listManager.getDynamicList("medications.drugLookup"));
	 	
	 	return model;
	}



	protected Event doSave(RequestContext context, Object command, BindingResult errors) throws Exception {
		UdsMedications2 medications = (UdsMedications2) ((ComponentCommand)command).getComponents().get(INSTRUMENT);
		UdsMedications2 dto = (UdsMedications2) ((ComponentCommand)command).getComponents().get(MEDICATIONS_DTO);
		this.mapModelFromDto(medications, dto); // method to allow override by custom subclasses
		
		// the review mode of the enterReview flow displays the medications as a readonly list, using PagedListHolder 
		// structures, so set those up here (note: do not use the DTO as done for view flow in getBackingObjects,
		// which was necessary since the change property could be modified. here we are in the enterReview flow,
		// and the DTO object should not be used for in the readonly list because it has blank entries, and
		// do not want to collapse those blanks in return to the edit page due to an error or user choosing to
		// revise)
		ScrollablePagedListHolder details = (ScrollablePagedListHolder) new ScrollablePagedListHolder();
		details.setPageSize(this.DATA_ENTRY_SECTION_LENGTH);
		details.setSource(medications.getDetails());
		((ComponentCommand)command).getComponents().put("details", details);
			

		
		return super.doSave(context, command, errors);
	}

	protected Event doEnterReviewSaveEvent(RequestContext context, Object command, BindingResult errors) throws Exception {
		Event returnEvent = doCustomValidation(context,command,errors);
		returnEvent = super.doEnterReviewSaveEvent(context, command, errors);
		return returnEvent;
	}
	
	//TODO: validate that all required fields are present for detail records.
	protected Event doCustomValidation(RequestContext context, Object command, BindingResult errors) throws Exception {
		Event returnEvent = new Event(this,SUCCESS_FLOW_EVENT_ID);
		return returnEvent;
	}
	
	
	
	
	

}
