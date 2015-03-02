package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import org.apache.commons.lang.StringUtils;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

/**
 * UDS Neurological Exam Findings
 * 
 */

public class UdsAppraisal extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsAppraisal.class);
	
	public static final String UDS_APPRAISAL_FORMID = "B8";
	public UdsAppraisal() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsAppraisal(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_APPRAISAL_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short normal;
	private Short foclDef; // UDS3 removed
	private Short gaitDis; // UDS3 removed
	private Short eyeMove; // UDS3 removed
	
	// new fields for UDS 3
	private Short normexam;
	private Short parksign;
	private Short resttrl;
	private Short resttrr;
	private Short slowingl;
	private Short slowingr;
	private Short rigidl;
	private Short rigidr;
	private Short brady;
	private Short parkgait;
	private Short postinst;
	private Short cvdsigns;
	private Short cortdef;
	private Short sivdfind;
	private Short cvdmotl;
	private Short cvdmotr;
	private Short cortvisl;
	private Short cortvisr;
	private Short somatl;
	private Short somatr;
	private Short postcort;
	private Short pspcbs;
	private Short eyepsp;
	private Short dyspsp;
	private Short axialpsp;
	private Short gaitpsp;
	private Short apraxsp;
	private Short apraxl;
	private Short apraxr;
	private Short cortsenl;
	private Short cortsenr;
	private Short ataxl;
	private Short ataxr;
	private Short alienlml;
	private Short alienlmr;
	private Short dystonl;
	private Short dystonr;
	private Short myocllt;
	private Short myoclrt;
	private Short alsfind;
	private Short gaitnph;
	private Short othneur;
	private String othneurx;
	
	public Short getEyeMove() {
		return eyeMove;
	}

	public void setEyeMove(Short eyeMove) {
		this.eyeMove = eyeMove;
	}

	public Short getFoclDef() {
		return foclDef;
	}

	public void setFoclDef(Short foclDef) {
		this.foclDef = foclDef;
	}

	public Short getGaitDis() {
		return gaitDis;
	}

	public void setGaitDis(Short gaitDis) {
		this.gaitDis = gaitDis;
	}

	public Short getNormal() {
		return normal;
	}

	public void setNormal(Short normal) {
		this.normal = normal;
	}
	
	public Short getNormexam() {
		return normexam;
	}

	public void setNormexam(Short normexam) {
		this.normexam = normexam;
	}

	public Short getParksign() {
		return parksign;
	}

	public void setParksign(Short parksign) {
		this.parksign = parksign;
	}

	public Short getResttrl() {
		return resttrl;
	}

	public void setResttrl(Short resttrl) {
		this.resttrl = resttrl;
	}

	public Short getResttrr() {
		return resttrr;
	}

	public void setResttrr(Short resttrr) {
		this.resttrr = resttrr;
	}

	public Short getSlowingl() {
		return slowingl;
	}

	public void setSlowingl(Short slowingl) {
		this.slowingl = slowingl;
	}

	public Short getSlowingr() {
		return slowingr;
	}

	public void setSlowingr(Short slowingr) {
		this.slowingr = slowingr;
	}

	public Short getRigidl() {
		return rigidl;
	}

	public void setRigidl(Short rigidl) {
		this.rigidl = rigidl;
	}

	public Short getRigidr() {
		return rigidr;
	}

	public void setRigidr(Short rigidr) {
		this.rigidr = rigidr;
	}

	public Short getBrady() {
		return brady;
	}

	public void setBrady(Short brady) {
		this.brady = brady;
	}

	public Short getParkgait() {
		return parkgait;
	}

	public void setParkgait(Short parkgait) {
		this.parkgait = parkgait;
	}

	public Short getPostinst() {
		return postinst;
	}

	public void setPostinst(Short postinst) {
		this.postinst = postinst;
	}

	public Short getCvdsigns() {
		return cvdsigns;
	}

	public void setCvdsigns(Short cvdsigns) {
		this.cvdsigns = cvdsigns;
	}

	public Short getCortdef() {
		return cortdef;
	}

	public void setCortdef(Short cortdef) {
		this.cortdef = cortdef;
	}

	public Short getSivdfind() {
		return sivdfind;
	}

	public void setSivdfind(Short sivdfind) {
		this.sivdfind = sivdfind;
	}

	public Short getCvdmotl() {
		return cvdmotl;
	}

	public void setCvdmotl(Short cvdmotl) {
		this.cvdmotl = cvdmotl;
	}

	public Short getCvdmotr() {
		return cvdmotr;
	}

	public void setCvdmotr(Short cvdmotr) {
		this.cvdmotr = cvdmotr;
	}

	public Short getCortvisl() {
		return cortvisl;
	}

	public void setCortvisl(Short cortvisl) {
		this.cortvisl = cortvisl;
	}

	public Short getCortvisr() {
		return cortvisr;
	}

	public void setCortvisr(Short cortvisr) {
		this.cortvisr = cortvisr;
	}

	public Short getSomatl() {
		return somatl;
	}

	public void setSomatl(Short somatl) {
		this.somatl = somatl;
	}

	public Short getSomatr() {
		return somatr;
	}

	public void setSomatr(Short somatr) {
		this.somatr = somatr;
	}

	public Short getPostcort() {
		return postcort;
	}

	public void setPostcort(Short postcort) {
		this.postcort = postcort;
	}

	public Short getPspcbs() {
		return pspcbs;
	}

	public void setPspcbs(Short pspcbs) {
		this.pspcbs = pspcbs;
	}

	public Short getEyepsp() {
		return eyepsp;
	}

	public void setEyepsp(Short eyepsp) {
		this.eyepsp = eyepsp;
	}

	public Short getDyspsp() {
		return dyspsp;
	}

	public void setDyspsp(Short dyspsp) {
		this.dyspsp = dyspsp;
	}

	public Short getAxialpsp() {
		return axialpsp;
	}

	public void setAxialpsp(Short axialpsp) {
		this.axialpsp = axialpsp;
	}

	public Short getGaitpsp() {
		return gaitpsp;
	}

	public void setGaitpsp(Short gaitpsp) {
		this.gaitpsp = gaitpsp;
	}

	public Short getApraxsp() {
		return apraxsp;
	}

	public void setApraxsp(Short apraxsp) {
		this.apraxsp = apraxsp;
	}

	public Short getApraxl() {
		return apraxl;
	}

	public void setApraxl(Short apraxl) {
		this.apraxl = apraxl;
	}

	public Short getApraxr() {
		return apraxr;
	}

	public void setApraxr(Short apraxr) {
		this.apraxr = apraxr;
	}

	public Short getCortsenl() {
		return cortsenl;
	}

	public void setCortsenl(Short cortsenl) {
		this.cortsenl = cortsenl;
	}

	public Short getCortsenr() {
		return cortsenr;
	}

	public void setCortsenr(Short cortsenr) {
		this.cortsenr = cortsenr;
	}

	public Short getAtaxl() {
		return ataxl;
	}

	public void setAtaxl(Short ataxl) {
		this.ataxl = ataxl;
	}

	public Short getAtaxr() {
		return ataxr;
	}

	public void setAtaxr(Short ataxr) {
		this.ataxr = ataxr;
	}

	public Short getAlienlml() {
		return alienlml;
	}

	public void setAlienlml(Short alienlml) {
		this.alienlml = alienlml;
	}

	public Short getAlienlmr() {
		return alienlmr;
	}

	public void setAlienlmr(Short alienlmr) {
		this.alienlmr = alienlmr;
	}

	public Short getDystonl() {
		return dystonl;
	}

	public void setDystonl(Short dystonl) {
		this.dystonl = dystonl;
	}

	public Short getDystonr() {
		return dystonr;
	}

	public void setDystonr(Short dystonr) {
		this.dystonr = dystonr;
	}

	public Short getMyocllt() {
		return myocllt;
	}

	public void setMyocllt(Short myocllt) {
		this.myocllt = myocllt;
	}

	public Short getMyoclrt() {
		return myoclrt;
	}

	public void setMyoclrt(Short myoclrt) {
		this.myoclrt = myoclrt;
	}

	public Short getAlsfind() {
		return alsfind;
	}

	public void setAlsfind(Short alsfind) {
		this.alsfind = alsfind;
	}

	public Short getGaitnph() {
		return gaitnph;
	}

	public void setGaitnph(Short gaitnph) {
		this.gaitnph = gaitnph;
	}

	public Short getOthneur() {
		return othneur;
	}

	public void setOthneur(Short othneur) {
		this.othneur = othneur;
	}

	public String getOthneurx() {
		return othneurx;
	}

	public void setOthneurx(String othneurx) {
		this.othneurx = othneurx;
	}

	public void markUnusedFields(String version) {
		if (version.equals("1") || version.equals("2")) {
			this.normexam = this.parksign = this.resttrl = this.resttrr = this.slowingl = this.slowingr = this.rigidl = this.rigidr = this.brady
				= this.parkgait = this.postinst = this.cvdsigns = this.cortdef = this.sivdfind = this.cvdmotl = this.cvdmotr 
				= this.cortvisl = this.cortvisr = this.somatl = this.somatr = this.postcort = this.pspcbs = this.eyepsp = this.dyspsp
				= this.axialpsp = this.gaitpsp = this.apraxsp = this.apraxl = this.apraxr = this.cortsenl = this.cortsenr = this.ataxl
				= this.ataxr = this.alienlml = this.alienlmr = this.dystonl = this.dystonr = this.myocllt = this.myoclrt = this.alsfind
				= this.gaitnph = this.othneur = (short) -8;
			this.othneurx = "-8";
		}
		if(version.equalsIgnoreCase("3")){
			this.normal = this.foclDef = this.gaitDis = this.eyeMove = (short)-8;
		}
	}



	public String[] getRequiredResultFields(String version) {
		String[] required = null;
		if (version.equals("1") || version.equals("2")) {
			required = new String[] {
					"normal",
					"foclDef",
					"gaitDis",
					"eyeMove"};
		}
		else if (version.equals("3")) {
			required = new String[] {
		      "normexam",
		      "parksign",
		      "resttrl",
		      "resttrr",
		      "slowingl",
		      "slowingr",
		      "rigidl",
		      "rigidr",
		      "brady",
		      "parkgait",
		      "postinst",
		      "cvdsigns",
		      "cortdef",
		      "sivdfind",
		      "cvdmotl",
		      "cvdmotr",
		      "cortvisl",
		      "cortvisr",
		      "somatl",
		      "somatr",
		      "postcort",
		      "pspcbs",
		      "eyepsp",
		      "dyspsp",
		      "axialpsp",
		      "gaitpsp",
		      "apraxsp",
		      "apraxl",
		      "apraxr",
		      "cortsenl",
		      "cortsenr",
		      "ataxl",
		      "ataxr",
		      "alienlml",
		      "alienlmr",
		      "dystonl",
		      "dystonr",
		      "myocllt",
		      "myoclrt",
		      "alsfind",
		      "gaitnph",
		      "othneur"};
		}
		return required;
	}

	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if (getInstrVer().equals("1") || getInstrVer().equals("2")) {
			buffer.append(UdsUploadUtils.formatField(getNormal())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFoclDef())).append(",");
			buffer.append(UdsUploadUtils.formatField(getGaitDis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEyeMove()));
		}
		else if (getInstrVer().equals("3")) {
			buffer.append(UdsUploadUtils.formatField(getNormexam())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParksign())).append(",");
			buffer.append(UdsUploadUtils.formatField(getResttrl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getResttrr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSlowingl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSlowingr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigidl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigidr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrady())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParkgait())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPostinst())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdsigns())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCortdef())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSivdfind())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdmotl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdmotr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCortvisl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCortvisr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSomatl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSomatr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPostcort())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPspcbs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEyepsp()));
		}
		return buffer.toString();
	}
	
}


