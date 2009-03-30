package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsHachinski extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsHachinski.class);
	
	public static final String UDS_HACHINSKI_FORMID = "B2";
	public UdsHachinski() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsHachinski(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_HACHINSKI_FORMID);
	}
	
	private Short cvdCog;
	private Short strokCog;
	private Short cvdImag;
	private Short cvdImag1;
	private Short cvdImag2;
	private Short cvdImag3;
	private Short cvdImag4;
	private String cvdImagx;
	
	private Short abrupt;
	private Short stepwise;
	private Short somatic;
	private Short emot;
	private Short hxHyper;
	private Short hxStroke;
	private Short foclSym;
	private Short foclSign;
	private Short hachin;
	
	public Short getAbrupt() {
		return abrupt;
	}

	public void setAbrupt(Short abrupt) {
		this.abrupt = abrupt;
	}

	public Short getEmot() {
		return emot;
	}

	public void setEmot(Short emot) {
		this.emot = emot;
	}

	public Short getFoclSign() {
		return foclSign;
	}

	public void setFoclSign(Short foclSign) {
		this.foclSign = foclSign;
	}

	public Short getFoclSym() {
		return foclSym;
	}

	public void setFoclSym(Short foclSym) {
		this.foclSym = foclSym;
	}

	public Short getHachin() {
		return hachin;
	}

	public void setHachin(Short hachin) {
		this.hachin = hachin;
	}

	public Short getHxHyper() {
		return hxHyper;
	}

	public void setHxHyper(Short hxHyper) {
		this.hxHyper = hxHyper;
	}

	public Short getHxStroke() {
		return hxStroke;
	}

	public void setHxStroke(Short hxStroke) {
		this.hxStroke = hxStroke;
	}

	public Short getSomatic() {
		return somatic;
	}

	public void setSomatic(Short somatic) {
		this.somatic = somatic;
	}

	public Short getStepwise() {
		return stepwise;
	}

	public void setStepwise(Short stepwise) {
		this.stepwise = stepwise;
	}

	public Short getCvdCog() {
		return cvdCog;
	}

	public void setCvdCog(Short cvdCog) {
		this.cvdCog = cvdCog;
	}

	public Short getCvdImag() {
		return cvdImag;
	}

	public void setCvdImag(Short cvdImag) {
		this.cvdImag = cvdImag;
	}

	public Short getCvdImag1() {
		return cvdImag1;
	}

	public void setCvdImag1(Short cvdImag1) {
		this.cvdImag1 = cvdImag1;
	}

	public Short getCvdImag2() {
		return cvdImag2;
	}

	public void setCvdImag2(Short cvdImag2) {
		this.cvdImag2 = cvdImag2;
	}

	public Short getCvdImag3() {
		return cvdImag3;
	}

	public void setCvdImag3(Short cvdImag3) {
		this.cvdImag3 = cvdImag3;
	}

	public Short getCvdImag4() {
		return cvdImag4;
	}

	public void setCvdImag4(Short cvdImag4) {
		this.cvdImag4 = cvdImag4;
	}

	public String getCvdImagx() {
		return cvdImagx;
	}

	public void setCvdImagx(String cvdImagx) {
		this.cvdImagx = cvdImagx;
	}

	public Short getStrokCog() {
		return strokCog;
	}

	public void setStrokCog(Short strokCog) {
		this.strokCog = strokCog;
	}

	
	
	public String[] getRequiredResultFields(String version) {
		String[] required = new String[]{};
		
		if (version.equalsIgnoreCase("1")) {
			required = new String[]{		
				"abrupt",
				"stepwise",
				"somatic",
				"emot",
				"hxHyper",
				"hxStroke",
				"foclSym",
				"foclSign"
			};
		}
		else if (version.equalsIgnoreCase("2")) {
			required = new String[]{
				"cvdCog",
				"strokCog",
				"cvdImag",
				"cvdImag1",
				"cvdImag2",
				"cvdImag3",
				"cvdImag4",
				"cvdImagx",
				"abrupt",
				"stepwise",
				"somatic",
				"emot",
				"hxHyper",
				"hxStroke",
				"foclSym",
				"foclSign"					
			};
		}
		
		return required;
	}	

	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getInstrVer().equals("1")){
			buffer.append(UdsUploadUtils.formatField(getAbrupt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStepwise())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSomatic())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEmot())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHxHyper())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHxStroke())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFoclSym())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFoclSign())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHachin()));
		}else if(getInstrVer().equals("2")){
			buffer.append(UdsUploadUtils.formatField(getAbrupt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStepwise())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSomatic())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEmot())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHxHyper())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHxStroke())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFoclSym())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFoclSign())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHachin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrokCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImag())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImag1())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImag2())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImag3())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImag4())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImagx()));
		}
		return buffer.toString();
	}	
}


