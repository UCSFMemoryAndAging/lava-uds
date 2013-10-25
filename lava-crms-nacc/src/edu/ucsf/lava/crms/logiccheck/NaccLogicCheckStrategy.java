package edu.ucsf.lava.crms.logiccheck;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.logiccheck.AbstractLogicCheckMappingStrategy;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.logiccheck.controller.LogicCheckUtils;
import edu.ucsf.lava.core.logiccheck.model.LogicCheck;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.assessment.model.UdsHealthHistory;
import edu.ucsf.lava.crms.assessment.model.UdsInformantDemo;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;
import edu.ucsf.lava.crms.assessment.model.UdsSubjectDemo;
import edu.ucsf.lava.crms.assessment.model.UdsDiagnosis;
import edu.ucsf.lava.crms.logiccheck.controller.CrmsLogicCheckUtils;
import edu.ucsf.lava.crms.model.CrmsEntity;

public class NaccLogicCheckStrategy extends AbstractLogicCheckMappingStrategy {

	@Override
	public boolean handlesEntityAndLogicCheck(EntityBase entity, LogicCheck lc) {
		// all custom code for *UDS* instruments will be handled by this strategy
		if (!(entity instanceof UdsInstrument)) return false;
		
		return true;
	}
	
	@Override
	public boolean doLogicCheckPrimaryLogicCustom(EntityBase entity, LogicCheck lc, String[] checkDescDataAppend) throws Exception {
		UdsInstrument instr = (UdsInstrument)entity;
		
		boolean isLogicIssue = false;
		
		// check if CUSTOM primary logic, but this should always be the case at this point
		if (!lc.getPrimaryLogic().equals("CUSTOM")) return false;
		
		// Note: code_id must be unique for every instrType, instrVer, and visitType combination
		if (entity instanceof UdsSubjectDemo) {  // A1
			if (lc.getCodeID().equals("26")) {
				isLogicIssue = doCheck_RaceRedundancy((UdsSubjectDemo)entity, checkDescDataAppend);
			}
			if (lc.getCodeID().equals("34")) {
				isLogicIssue = doCheck_MinAgeForVisit((UdsSubjectDemo)entity, lc.getField1values(), checkDescDataAppend);
			}
		} else if (entity instanceof UdsInformantDemo) {  // A2
			if (lc.getCodeID().equals("1")) {
				isLogicIssue = doCheck_MaxInformantBirthYear((UdsInformantDemo)entity, lc.getField1values(), lc.getField2values(), checkDescDataAppend);
			}
		} else if (entity instanceof UdsHealthHistory) { // A5
			if (lc.getCodeID().equals("28")) {
				isLogicIssue = doCheck_StrokeYearsFormerlySpecified((UdsHealthHistory)entity, checkDescDataAppend);
			}
			if (lc.getCodeID().equals("29")) {
				isLogicIssue = doCheck_TIAYearsFormerlySpecified((UdsHealthHistory)entity, checkDescDataAppend);
			}
			if (lc.getCodeID().equals("41")) {
				isLogicIssue = doCheck_StrokeYearsInvalidBlank((UdsHealthHistory)entity, checkDescDataAppend);
			}
			if (lc.getCodeID().equals("42")) {
				isLogicIssue = doCheck_TIAYearsInvalidBlank((UdsHealthHistory)entity, checkDescDataAppend);
			}
		} else if (entity instanceof UdsDiagnosis) { // D1
			if (lc.getCodeID().equals("1") || lc.getCodeID().equals("3")) {
				isLogicIssue = doCheck_RequirePresentDiagnosis((UdsDiagnosis)entity, checkDescDataAppend);
			}
			if (lc.getCodeID().equals("2") || lc.getCodeID().equals("4")) {
				isLogicIssue = doCheck_RequirePrimaryDiagnosis((UdsDiagnosis)entity, checkDescDataAppend);
			}
		}
		return isLogicIssue;		
	}
	
	protected boolean doCheck_RaceRedundancy(UdsSubjectDemo instr, String[] checkDescDataAppend) {
		// ensure no race values are the same, unless the value is 88 ("None Reported") or 99 ("Unknown")
		// TODO: we are unclear about NACC's error check (29 and 2012), whether it considers 99 or not
		ArrayList<Short> racesFound = new ArrayList<Short>();
		racesFound.add(instr.getRace());
		if (instr.getRaceSec()!=null && instr.getRaceSec()!=(short)88 && instr.getRaceSec()!=(short)99 && racesFound.contains(instr.getRaceSec()))
			return true; // a logic issue
		racesFound.add(instr.getRaceSec());
		if (instr.getRaceTer()!=null && instr.getRaceTer()!=(short)88 && instr.getRaceTer()!=(short)99 && racesFound.contains(instr.getRaceTer()))
			return true; // a logic issue
		// no duplicates, so no issue
		return false;
	}

	protected boolean doCheck_MinAgeForVisit(UdsSubjectDemo instr, String field1values, String[] checkDescDataAppend) throws Exception {
		// ensure the age of the visit (based on A1's birth mo/yr) is a minimum age
		// TODO: we are unclear how birthdays following in same month of visit are counted,
		//   assume NACC assumes they had their birthday if same month, to give us maximum age
		//   So if they still hadn't reached the minAge, then give error.  I am assuming NACC
		//   wouldn't give an error/alert if it knew it could be a false positive, but I could be wrong!
		
		boolean isLogicIssue = false;
		
		// note: there is no NACC-accepted "unknown" value for birthyr and birthmo; it is either filled or not
		Short birthYr = instr.getBirthYr();
		Short birthMo = instr.getBirthMo();
		// do calculation as if birthDay is 1, giving us the "maximum" age the subject could have been
		Short birthDay = 1;
		
		Short minAge = Short.parseShort(field1values);
		
		// if birthYr not filled, not enough info to create an issue
		if (birthYr == null || LogicCheckUtils.isMetadataField(birthYr)) throw new Exception("metadataFound");
		if (birthMo == null || LogicCheckUtils.isMetadataField(birthMo)) {
			// even though form not filled in yet, still give an issue if *known* to fit criteria already
			birthMo = 1; // this gives "maximum" age
		}
		
		Calendar approx_birth_date = Calendar.getInstance();
		approx_birth_date.set(birthYr.intValue(), birthMo.intValue(), birthDay.intValue());
		
		Date visitDate = instr.getVisit().getVisitDate();
		
		Integer age = CrmsEntity.calcAge(approx_birth_date.getTime(),visitDate);
		
		isLogicIssue = age.intValue() < minAge.intValue();
		
		return isLogicIssue;
	} 
	
	protected boolean doCheck_MaxInformantBirthYear(UdsInformantDemo instr, String field1values, String field2values, String[] checkDescDataAppend) throws Exception {
		// ensure the informant's birth year is less than visit's year minus offset_years_from_current
		// TODO: this may end up being a min informant age check, if considering month too, but currently mimicking data dictionary allowed values
		boolean isLogicIssue = false;
		
		Short inBirYr = instr.getInBirYr();
		Short visitYr = instr.getVisitYr();
		
		if (inBirYr == null || LogicCheckUtils.isMetadataField(inBirYr)) throw new Exception("metadataFound");
		if (inBirYr.equals((short)9999)) throw new Exception("notAnIssue");
		
		Short min_allowed_years_from_visit = Short.parseShort(field1values);
		Short min_allowed_year_of_birth = Short.parseShort(field2values);
		
		checkDescDataAppend[checkDescDataAppend.length-1] += "[must be " + min_allowed_year_of_birth.toString() + " to " + new Integer(visitYr - min_allowed_years_from_visit).toString() + "]";
		
		isLogicIssue = (inBirYr < min_allowed_year_of_birth)
		               || (inBirYr > visitYr - min_allowed_years_from_visit);
		
		return isLogicIssue;
	}
	
	private boolean helper_YearFormerlySpecified(Short year, ArrayList<Short> yearList, boolean aPriorYearAlreadyFoundMissing, String[] checkDescDataAppend) {
		// TODO: Clarify how to handle multiple 9999s
		if (yearList.isEmpty())
		
		if (year != null && !LogicCheckUtils.isMetadataField(year) // ignore nulls and metadata
			&& (!year.equals((short)9999) || yearList.isEmpty())  // i.e. ignore 9999 unless current list is empty
			&& !yearList.contains(year)) {
			if (aPriorYearAlreadyFoundMissing)	checkDescDataAppend[checkDescDataAppend.length-1] += ", ";
			checkDescDataAppend[checkDescDataAppend.length-1] += year.toString();
			yearList.add(year); // add to yearsInThisForm, so that year is not added to checkDescDataAppend again
			return true;
		}
		return false;
	}
	
	protected boolean doCheck_StrokeYearsFormerlySpecified(UdsHealthHistory instr, String[] checkDescDataAppend) {
		// ensure that if a year was specified in prior data, then it must be specified here.  A prior 9999 year will be
		//   considered an issue only if the current form has no years specified.
		// TODO: Note that we are not ensuring we have at least the same number of years specified
		// TODO: Note that we are not checking if this form's years are specified in previous visits (if was before previous visit)
		boolean isLogicIssue = false;
		
		checkDescDataAppend[checkDescDataAppend.length-1] += "[Prior years found: ";
		
		// compile list of years given in this form
		ArrayList<Short> yearsInThisForm = new ArrayList<Short>();
		if (instr.getStrok1Yr() != null && !LogicCheckUtils.isMetadataField(instr.getStrok1Yr()))	yearsInThisForm.add(instr.getStrok1Yr());
		if (instr.getStrok2Yr() != null && !LogicCheckUtils.isMetadataField(instr.getStrok2Yr()))	yearsInThisForm.add(instr.getStrok2Yr());
		if (instr.getStrok3Yr() != null && !LogicCheckUtils.isMetadataField(instr.getStrok3Yr()))	yearsInThisForm.add(instr.getStrok3Yr());
		if (instr.getStrok4Yr() != null && !LogicCheckUtils.isMetadataField(instr.getStrok4Yr()))	yearsInThisForm.add(instr.getStrok4Yr());
		if (instr.getStrok5Yr() != null && !LogicCheckUtils.isMetadataField(instr.getStrok5Yr()))	yearsInThisForm.add(instr.getStrok5Yr());
		if (instr.getStrok6Yr() != null && !LogicCheckUtils.isMetadataField(instr.getStrok6Yr()))	yearsInThisForm.add(instr.getStrok6Yr());
		
		List<Instrument> prior_instruments = CrmsLogicCheckUtils.getPriorInstrumentsOfSameType(instr);
		for (Instrument prior_instr : prior_instruments) {
			UdsHealthHistory a5 = (UdsHealthHistory)prior_instr;
			isLogicIssue |= helper_YearFormerlySpecified(a5.getStrok1Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getStrok2Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getStrok3Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getStrok4Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getStrok5Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getStrok6Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
		}
		checkDescDataAppend[checkDescDataAppend.length-1] += "]";
		
		
		return isLogicIssue;
	}
	
	protected boolean doCheck_TIAYearsFormerlySpecified(UdsHealthHistory instr, String[] checkDescDataAppend) {
		// ensure that if a year was specified in prior data, then it must be specified here.  A prior 9999 year will be
		//   considered an issue only if the current form has no years specified.
		// TODO: Note that we are not ensuring we have at least the same number of years specified
		// TODO: Note that we are not checking if this form's years are specified in previous visits (if was before previous visit)
		boolean isLogicIssue = false;
		
		checkDescDataAppend[checkDescDataAppend.length-1] += "[Prior years found: ";
		
		// compile list of years given in this form
		ArrayList<Short> yearsInThisForm = new ArrayList<Short>();
		if (instr.getTia1Yr() != null && !LogicCheckUtils.isMetadataField(instr.getTia1Yr()))	yearsInThisForm.add(instr.getTia1Yr());
		if (instr.getTia2Yr() != null && !LogicCheckUtils.isMetadataField(instr.getTia2Yr()))	yearsInThisForm.add(instr.getTia2Yr());
		if (instr.getTia3Yr() != null && !LogicCheckUtils.isMetadataField(instr.getTia3Yr()))	yearsInThisForm.add(instr.getTia3Yr());
		if (instr.getTia4Yr() != null && !LogicCheckUtils.isMetadataField(instr.getTia4Yr()))	yearsInThisForm.add(instr.getTia4Yr());
		if (instr.getTia5Yr() != null && !LogicCheckUtils.isMetadataField(instr.getTia5Yr()))	yearsInThisForm.add(instr.getTia5Yr());
		if (instr.getTia6Yr() != null && !LogicCheckUtils.isMetadataField(instr.getTia6Yr()))	yearsInThisForm.add(instr.getTia6Yr());
		
		
		List<Instrument> prior_instruments = CrmsLogicCheckUtils.getPriorInstrumentsOfSameType(instr);
		for (Instrument prior_instr : prior_instruments) {
			UdsHealthHistory a5 = (UdsHealthHistory)prior_instr;
			isLogicIssue |= helper_YearFormerlySpecified(a5.getTia1Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getTia2Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getTia3Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getTia4Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getTia5Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
			isLogicIssue |= helper_YearFormerlySpecified(a5.getTia6Yr(), yearsInThisForm, isLogicIssue, checkDescDataAppend);
		}
		checkDescDataAppend[checkDescDataAppend.length-1] += "]";
		
		return isLogicIssue;
	}

	protected boolean doCheck_StrokeYearsInvalidBlank(UdsHealthHistory instr, String[] checkDescDataAppend) {
		// ensure that no years are specified after any blank years
		boolean isLogicIssue = false;
		
		ArrayList<Short> yearsInThisForm = new ArrayList<Short>();
		yearsInThisForm.add(instr.getStrok1Yr());
		yearsInThisForm.add(instr.getStrok2Yr());
		yearsInThisForm.add(instr.getStrok3Yr());
		yearsInThisForm.add(instr.getStrok4Yr());
		yearsInThisForm.add(instr.getStrok5Yr());
		yearsInThisForm.add(instr.getStrok6Yr());
		
		boolean blank_found = false;
		for (Short year : yearsInThisForm) {
			if ((year == null) || LogicCheckUtils.isMetadataField(year)) {
				blank_found = true;
				continue;
			}
			// thus year is non-blank, so an issue if a blank_found earlier
			if (blank_found) {
				isLogicIssue = true;
				break;
			}
		}
		
		return isLogicIssue;
	}
	
	protected boolean doCheck_TIAYearsInvalidBlank(UdsHealthHistory instr, String[] checkDescDataAppend) {
		// ensure that no years are specified after any blank years
		boolean isLogicIssue = false;
		
		ArrayList<Short> yearsInThisForm = new ArrayList<Short>();
		yearsInThisForm.add(instr.getTia1Yr());
		yearsInThisForm.add(instr.getTia2Yr());
		yearsInThisForm.add(instr.getTia3Yr());
		yearsInThisForm.add(instr.getTia4Yr());
		yearsInThisForm.add(instr.getTia5Yr());
		yearsInThisForm.add(instr.getTia6Yr());
		
		boolean blank_found = false;
		for (Short year : yearsInThisForm) {
			if ((year == null) || LogicCheckUtils.isMetadataField(year)) {
				blank_found = true;
				continue;
			}
			// thus year is non-blank, so an issue if a blank_found earlier
			if (blank_found) {
				isLogicIssue = true;
				break;
			}
		}
		
		return isLogicIssue;
	}
	
	protected boolean doCheck_RequirePresentDiagnosis(UdsDiagnosis instr, String[] checkDescDataAppend) {
		// ensure there is at least one "Present" diagnosis when having MCI
		boolean isLogicIssue = false;
		Short present = (short)1;
		if ((instr.getMciaMem()!=null && instr.getMciaMem().equals(present))
			|| (instr.getMciaPlus()!=null && instr.getMciaPlus().equals(present))
			|| (instr.getMciNon1()!=null && instr.getMciNon1().equals(present))
			||(instr.getMciNon2()!=null &&  instr.getMciNon2().equals(present))) {
			// then patient has MCI; check for "Present" diagnosis
			boolean presentDxFound = (instr.getProbAd()!=null && instr.getProbAd().equals(present))
									 || (instr.getPossAd()!=null && instr.getPossAd().equals(present))
									 || (instr.getDlb()!=null && instr.getDlb().equals(present))
									 || (instr.getVasc()!=null && instr.getVasc().equals(present))
									 || (instr.getAlcDem()!=null && instr.getAlcDem().equals(present))
									 || (instr.getDemUn()!=null && instr.getDemUn().equals(present))
									 || (instr.getFtd()!=null && instr.getFtd().equals(present))
									 || (instr.getPpAph()!=null && instr.getPpAph().equals(present))
									 || (instr.getPsp()!=null && instr.getPsp().equals(present))
									 || (instr.getCort()!=null && instr.getCort().equals(present))
									 || (instr.getHunt()!=null && instr.getHunt().equals(present))
									 || (instr.getPrion()!=null && instr.getPrion().equals(present))
									 || (instr.getMeds()!=null && instr.getMeds().equals(present))
									 || (instr.getDysIll()!=null && instr.getDysIll().equals(present))
									 || (instr.getDep()!=null && instr.getDep().equals(present))
									 || (instr.getOthPsy()!=null && instr.getOthPsy().equals(present))
									 || (instr.getDowns()!=null && instr.getDowns().equals(present))
									 || (instr.getPark()!=null && instr.getPark().equals(present))
									 || (instr.getStroke()!=null && instr.getStroke().equals(present))
									 || (instr.getHyceph()!=null && instr.getHyceph().equals(present))
									 || (instr.getBrnInj()!=null && instr.getBrnInj().equals(present))
									 || (instr.getNeop()!=null && instr.getNeop().equals(present))
									 || (instr.getCogOth()!=null && instr.getCogOth().equals(present));
			// those fields only found in version 2:
			if (instr.getInstrVer().equals("2"))
				presentDxFound = presentDxFound
								 || (instr.getVascPs()!=null && instr.getVascPs().equals(present))
								 || (instr.getCogOth2()!=null && instr.getCogOth2().equals(present))
								 || (instr.getCogOth3()!=null && instr.getCogOth3().equals(present));
			
			if (!presentDxFound) isLogicIssue = true;			
		}		
		
		return isLogicIssue;
	}
	
	protected boolean doCheck_RequirePrimaryDiagnosis(UdsDiagnosis instr, String[] checkDescDataAppend) {
		// ensure there is exactly one "Primary" diagnosis when having MCI
		boolean isLogicIssue = false;
		Short present = (short)1;
		Short primary = (short)1;
		if ((instr.getMciaMem()!=null && instr.getMciaMem().equals(present))
			|| (instr.getMciaPlus()!=null &&instr.getMciaPlus().equals(present))
			|| (instr.getMciNon1()!=null && instr.getMciNon1().equals(present))
			|| (instr.getMciNon2()!=null && instr.getMciNon2().equals(present))) {
			// then patient has MCI; check for "Present" diagnosis
			int numOfPrimaryDx = (instr.getProbAdIf()!=null && instr.getProbAdIf().equals(primary)?1:0)
									 + (instr.getPossAdIf()!=null && instr.getPossAdIf().equals(primary)?1:0)
									 + (instr.getDlbIf()!=null && instr.getDlbIf().equals(primary)?1:0)
									 + (instr.getVascIf()!=null && instr.getVascIf().equals(primary)?1:0)
									 + (instr.getAlcDemIf()!=null && instr.getAlcDemIf().equals(primary)?1:0)
									 + (instr.getDemUnIf()!=null && instr.getDemUnIf().equals(primary)?1:0)
									 + (instr.getFtdIf()!=null && instr.getFtdIf().equals(primary)?1:0)
									 + (instr.getPpAphIf()!=null && instr.getPpAphIf().equals(primary)?1:0)
									 + (instr.getPspIf()!=null && instr.getPspIf().equals(primary)?1:0)
									 + (instr.getCortIf()!=null && instr.getCortIf().equals(primary)?1:0)
									 + (instr.getHuntIf()!=null && instr.getHuntIf().equals(primary)?1:0)
									 + (instr.getPrionIf()!=null && instr.getPrionIf().equals(primary)?1:0)
									 + (instr.getMedsIf()!=null && instr.getMedsIf().equals(primary)?1:0)
									 + (instr.getDysIllIf()!=null && instr.getDysIllIf().equals(primary)?1:0)
									 + (instr.getDepIf()!=null && instr.getDepIf().equals(primary)?1:0)
									 + (instr.getOthPsyIf()!=null && instr.getOthPsyIf().equals(primary)?1:0)
									 + (instr.getDownsIf()!=null && instr.getDownsIf().equals(primary)?1:0)
									 + (instr.getParkIf()!=null && instr.getParkIf().equals(primary)?1:0)
									 + (instr.getStrokIf()!=null && instr.getStrokIf().equals(primary)?1:0)
									 + (instr.getHycephIf()!=null && instr.getHycephIf().equals(primary)?1:0)
									 + (instr.getBrnInjIf()!=null && instr.getBrnInjIf().equals(primary)?1:0)
									 + (instr.getNeopIf()!=null && instr.getNeopIf().equals(primary)?1:0)
									 + (instr.getCogOthIf()!=null && instr.getCogOthIf().equals(primary)?1:0);
			// those fields only found in version 2:
			if (instr.getInstrVer().equals("2"))
				numOfPrimaryDx += (instr.getVascPsIf()!=null && instr.getVascPsIf().equals(primary)?1:0)
								  + (instr.getCogOth2If()!=null && instr.getCogOth2If().equals(primary)?1:0)
								  + (instr.getCogOth3If()!=null && instr.getCogOth3If().equals(primary)?1:0);

			
			if (numOfPrimaryDx != 1) isLogicIssue = true;			
		}		
		
		return isLogicIssue;
	}
	
}
