package edu.ucsf.lava.crms.assessment.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.validation.BindingResult;
import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.dao.LavaDateRangeParamHandler;
import edu.ucsf.lava.core.dao.LavaTypedEqualityParamHandler;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;
import edu.ucsf.lava.crms.assessment.model.UdsInstrumentTracking;
import edu.ucsf.lava.crms.controller.CrmsListComponentHandler;
import edu.ucsf.lava.crms.session.CrmsSessionUtils;


public class PatientUdsInstrumentsHandler extends CrmsListComponentHandler {

	public PatientUdsInstrumentsHandler() {
		super();
		this.setHandledList("patientUdsInstruments","instrument");
		this.addListedEntityName("udsInstrument");
		CrmsSessionUtils.setIsPatientContext(this);
		this.setEntityForStandardSourceProvider(UdsInstrumentTracking.class);
		}
	
	public LavaDaoFilter extractFilterFromRequest(RequestContext context, Map components){
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		LavaDaoFilter filter = UdsInstrumentTracking.newFilterInstance(getCurrentUser(request));
		CrmsSessionUtils.setFilterPatientContext(sessionManager,request,filter);
		filter.addParamHandler(new LavaDateRangeParamHandler("dcDate"));
		filter.addParamHandler(new LavaDateRangeParamHandler("deDate"));
		filter.addParamHandler(new LavaDateRangeParamHandler("dsDate"));
		filter.addParamHandler(new LavaDateRangeParamHandler("lcDate"));
		filter.addParamHandler(new LavaDateRangeParamHandler("packetDate"));
		filter.addParamHandler(new LavaTypedEqualityParamHandler("visitNum",Short.class));
		filter.addDefaultSort("visitNum",true);
		filter.addDefaultSort("formId",true);
		filter.setAlias("visit", "visit");
		return filter;
	}
	
	public void updateFilterFromContext(LavaDaoFilter filter, RequestContext context, Map components){
	}
		
	public Map addReferenceData(RequestContext context, Object command, BindingResult errors, Map model) {
		
		model.put("instrumentConfig", instrumentManager.getInstrumentConfig());
		return super.addReferenceData(context, command, errors, model);

	}

	
	public List getList(Class entityClass, LavaDaoFilter daoFilter) {
		return UdsInstrument.findUdsInstruments(daoFilter);	
		}
	
}
