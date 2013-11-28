package edu.ucsf.lava.crms.assessment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.core.action.model.Action;
import edu.ucsf.lava.core.auth.model.AuthUser;
import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.session.CoreSessionUtils;
import edu.ucsf.lava.crms.assessment.controller.SwitchInstrumentGroupHandler;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.UdsVisit;
import edu.ucsf.lava.crms.scheduling.model.Visit;
import edu.ucsf.lava.crms.session.CrmsSessionUtils;
import edu.ucsf.lava.crms.assessment.model.UdsInstrumentTracking;
import edu.ucsf.lava.crms.auth.CrmsAuthUtils;

public class UdsSwitchInstrumentGroupHandler extends
		SwitchInstrumentGroupHandler {

	public UdsSwitchInstrumentGroupHandler() {
		super();
	}

	@Override
	protected List<Instrument> getInstrumentListFromVisit(RequestContext context, Visit v) {
		HttpServletRequest request =  ((ServletExternalContext)context.getExternalContext()).getRequest();
		
		LavaDaoFilter filter = UdsInstrumentTracking.newFilterInstance(getCurrentUser(request));
		// sort by formId so that it appears in right order on the action bar
		filter.addDefaultSort("formId",true);
		// needed when using filter for UdsInstrumentTracking.MANAGER.get()
		filter.setAlias("visit","visit");

		long visit_id;
		if (v == null) {
			// then we wish to return nothing for our backingObjects, so filter out everything
			// visit id should never be 0, so this returns no values
			visit_id = 0;
		} else {
			visit_id = v.getId();
		}
		filter.addDaoParam(filter.daoEqualityParam("visit.id",new Long(visit_id)));
		
		List<Instrument> instruments = UdsInstrumentTracking.MANAGER.get(filter);
		return instruments;
	}
	
	@Override
	/* get last *UDS* visit */
	protected Visit getLastVisit(RequestContext context) {
		HttpServletRequest request = ((ServletExternalContext) context.getExternalContext()).getRequest();

		String currentProjectName = CrmsSessionUtils.getCurrentProjectName(sessionManager, request);
		Patient p = CrmsSessionUtils.getCurrentPatient(sessionManager, request);
		AuthUser currentUser = getCurrentUser(request);
		Action currentAction = CoreSessionUtils.getCurrentAction(sessionManager, request);
		
		LavaDaoFilter filter = UdsVisit.newFilterInstance(currentUser);
		filter.setAlias("patient", "patient");
		filter.addDaoParam(filter.daoEqualityParam("patient.id", p.getId()));
		if (currentProjectName != null && !currentProjectName.equals(""))
			filter.addDaoParam(filter.daoEqualityParam("projName", currentProjectName));
		List<Visit> visits = (List<Visit>)UdsVisit.MANAGER.get(filter);
		
		// filter out visits to which user lacks permission
		visits = CrmsAuthUtils.filterVisitListByPermission(currentUser, currentAction,
				visits, false);
		
		Visit lastvisit = null;
		for (Visit v : visits) {
			// must be after or same date as current value to replace
			if ((lastvisit == null)
					|| (!v.getVisitDate().before(lastvisit.getVisitDate()))) { 
				lastvisit = v;
			}
		}
		return lastvisit;
	}
}


