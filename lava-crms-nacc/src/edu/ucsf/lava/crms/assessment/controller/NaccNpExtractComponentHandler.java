package edu.ucsf.lava.crms.assessment.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.definition.StateDefinition;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.ActionUtils;
import edu.ucsf.lava.core.calendar.CalendarDaoUtils;
import edu.ucsf.lava.core.calendar.controller.CalendarHandlerUtils;
import edu.ucsf.lava.core.controller.ComponentCommand;
import edu.ucsf.lava.core.controller.LavaComponentFormAction;
import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.reporting.model.ReportSetup;
import edu.ucsf.lava.crms.assessment.dto.UdsExtractReportDto;
import edu.ucsf.lava.crms.assessment.model.NaccPathology;
import edu.ucsf.lava.crms.assessment.model.UdsUploadUtils;
import edu.ucsf.lava.crms.assessment.model.UdsUploadable;
import edu.ucsf.lava.crms.reporting.controller.CrmsReportComponentHandler;
import edu.ucsf.lava.crms.session.CrmsSessionUtils;

/*
 * Used to extract NACC's NP data set only (not including any other NACC datasets, like UDS)
 * 
 * @author trobbie (EMORY)
 */

public class NaccNpExtractComponentHandler extends CrmsReportComponentHandler {
	
	public NaccNpExtractComponentHandler() {
		super();
	}

	// subclasses can override/enhance this to add additional criteria filter fields 
	protected LavaDaoFilter setupReportFilter(RequestContext context, LavaDaoFilter filter) {
		HttpServletRequest request = ((ServletExternalContext)context.getExternalContext()).getRequest();
		super.setupReportFilter(context, filter);

		// selection (unlike for lists, where they are mutually exclusive), want to initialize them here so 
		// they default to the defaultDisplayRange
		
		// ultimately, dateEnd is ignored because it is not a criteria for the UDSExtract. it is
		// not displayed on the report setup parameters view, and is set to the extreme value
		// when the report is to be generated. but does not hurt to handle it here because it is
		// handled in unison with dateStart, which is used
			
		// initializes the query date range to defaults based on the defaultDisplayRange 
		CalendarHandlerUtils.setDateFilterParams(context, filter, this.defaultDisplayRange, this.startDateParam, this.endDateParam);
		// transfer the default date range to the custom date params used as filter fields in the view. this
		// must be done separately from the above call because the Calendar handler does not want this to happen
		// (see updateCustomParamsFromDateParams comments)
		CalendarDaoUtils.updateCustomParamsFromDateParams(filter, this.startDateParam, this.endDateParam, Boolean.TRUE);	
		
		// initialize the patientId filter field to the current patient
		if (CrmsSessionUtils.getCurrentPatient(sessionManager,request) != null) {
			filter.setParam("patientId", CrmsSessionUtils.getCurrentPatient(sessionManager,request).getId());
		}
		
		return filter;
	}

	
	public Map getBackingObjects(RequestContext context, Map components) {
		Map backingObjects = super.getBackingObjects(context, components);
		ReportSetup reportSetup = (ReportSetup) backingObjects.get(this.getDefaultObjectName());
		reportSetup.setFormat("csv");
		return backingObjects;
	}
	
	
	// override and do not set any required fields because EITHER the startDate or
	// patientId must be input (or both), so either startDate or patientId could be null 
	protected String[] defineRequiredFields(RequestContext context, Object command) {
		String[] required = new String[0];
		setRequiredFields(required);
		return getRequiredFields();
	}

	

	
	public Map addReferenceData(RequestContext context, Object command, BindingResult errors, Map model)
	{
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
	 	String flowMode = ActionUtils.getFlowMode(context.getActiveFlow().getId()); 
	 	StateDefinition state = context.getCurrentState();
		ReportSetup reportSetup = (ReportSetup) ((ComponentCommand)command).getComponents().get(this.getDefaultObjectName());

	 	model = super.addReferenceData(context, command, errors, model);
	 	
	 	if (state.getId().equals("reportSetup")) {
		    // override the setting of dateCriteria for the purpose of the model so that the view
	 		// will not display the dateCriteria, because only using the startDate, not the endDate, so
	 		// the display of the startDate criteria is done in the udsExtract.jsp
	 		// note that the dateCriteria is set true otherwise to take advantage of this handler and the
	 		// superclass handler's handling of the dateStart property, w.r.t. quick date selection, etc.
		    model.put("dateCriteria", false);
		}
	 	
	 	if (state.getId().equals("reportGen")) {
	 		model.put("naccNpExtractRecords", (List)((ComponentCommand)command).getComponents().get("naccNpExtractRecords"));
	 	}
	 	
		return model;
	}
		
	// override because startDate is a datetime so have CalendarHandlerUtils format quick date selections with a time portion
	protected Event handleCustomEvent(RequestContext context, Object command, BindingResult errors) throws Exception {
		//	handle filter events for quick date range selection
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		ReportSetup reportSetup = (ReportSetup) ((ComponentCommand)command).getComponents().get(this.getDefaultObjectName());		
		CalendarHandlerUtils.setDateFilterParams(context,(LavaDaoFilter)reportSetup.getFilter(), this.defaultDisplayRange, this.startDateParam, this.endDateParam);
		// reflect the new date param values in the view by updating the custom date params
		CalendarDaoUtils.updateCustomParamsFromDateParams(reportSetup.getFilter(), this.startDateParam, this.endDateParam, Boolean.TRUE);	
		return new Event(this,SUCCESS_FLOW_EVENT_ID);
	}

	
	// the "generate" event is handled when the user submits parameters to generate the report. the
	// actual generation is done by the reporting engine (Jasper Reports) but this handler can be used
	// to validate that the parameters have been correctly set
	protected Event doGenerate(RequestContext context, Object command, BindingResult errors) throws Exception {
 		
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		ReportSetup reportSetup = (ReportSetup) ((ComponentCommand)command).getComponents().get(this.getDefaultObjectName());
	 	LavaDaoFilter reportFilter = reportSetup.getFilter();
		
		// transfer the customStartDate param used by the view to the startParam used in the query
		CalendarHandlerUtils.handleCustomDateFilter(reportFilter, this.startDateParam, this.endDateParam);
		
		// conditionally check required fields here, i.e. since only one of the startDate and
 		// patientId report parameters are required, but it does not matter which one, can not
 		// enforce required fields via the binder, so do it here after the report params have
 		// been bound
		
 		if (reportFilter.getParam(this.startDateParam) == null && reportFilter.getParam("patientId") == null) {
 			LavaComponentFormAction.createCommandError(errors, "naccNpExtract.reportSetup.required", null);
 			return new Event(this,ERROR_FLOW_EVENT_ID);
 		}
 		
 		//do query for records here
 		LavaDaoFilter naccNpFilter = NaccPathology.MANAGER.newFilterInstance(this.getCurrentUser(request));
 		
 		//NACC NP sorted by patient and data collection date. 
 		naccNpFilter.setAlias("patient", "patient");
 		naccNpFilter.addSort("patient.id",true);
 		naccNpFilter.addSort("dcDate",true);
 	
 		//set completion status and submission status filters
 		naccNpFilter.addDaoParam(naccNpFilter.daoOr(naccNpFilter.daoNull("submissionstatus"),naccNpFilter.daoNot(naccNpFilter.daoEqualityParam("submissionstatus", "DO NOT SUBMIT"))));
 		naccNpFilter.addDaoParam(naccNpFilter.daoEqualityParam("deStatus", "Complete"));
 		naccNpFilter.addDaoParam(naccNpFilter.daoEqualityParam("dcStatus", "Complete"));
 		
 		Date startDate = (Date)reportFilter.getParam(this.startDateParam);
 		//if start date supplied, then get all records modified after the date supplied
 		if(startDate!=null){
 			naccNpFilter.addDaoParam(naccNpFilter.daoGreaterThanOrEqualParam("modified", startDate));
 		}
 		//if a specific patient is specified, then limit results to that patient
 		Object idParam = reportFilter.getParam("patientId");
 		if(idParam!=null){
 			Long patientId = null;
 			if(idParam instanceof Long){
 				patientId = (Long)idParam;
 			}else if(idParam instanceof String){
 				try{
 					patientId = Long.valueOf((String)idParam);
 				}catch(NumberFormatException nfe){};
 			}
 			if(patientId!=null){
 				naccNpFilter.addDaoParam(naccNpFilter.daoEqualityParam("patient.id",patientId));
 			}
 		}
 		
 		List naccNpExtractInstruments = NaccPathology.MANAGER.get(naccNpFilter);
 		Collections.sort(naccNpExtractInstruments, UdsUploadUtils.udsExtractComparator);
 		
 		List naccNpExtractRecords = new ArrayList(naccNpExtractInstruments.size());
 		for(Object o : naccNpExtractInstruments){
 			if(UdsUploadable.class.isAssignableFrom(o.getClass())){
 				List<String> records = ((UdsUploadable)o).getUdsUploadCsvRecords();
 				for(String record : records){
 					naccNpExtractRecords.add(new UdsExtractReportDto(record));
 				}
 			}
 		}
 		
 		((ComponentCommand)command).getComponents().put("naccNpExtractRecords",naccNpExtractRecords);
 	 	
		return new Event(this,SUCCESS_FLOW_EVENT_ID);
	}
	

	
}
