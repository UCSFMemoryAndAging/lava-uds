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
	private Short cvdImagSingle;
	private Short cvdImagMultiple;
	private Short cvdImagExtensive;
	private Short cvdImagOther;
	private String cvdImagOtherX;
	
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

	public Short getCvdImagSingle() {
		return cvdImagSingle;
	}

	public void setCvdImagSingle(Short cvdImagSingle) {
		this.cvdImagSingle = cvdImagSingle;
	}

	public Short getCvdImagMultiple() {
		return cvdImagMultiple;
	}

	public void setCvdImagMultiple(Short cvdImagMultiple) {
		this.cvdImagMultiple = cvdImagMultiple;
	}

	public Short getCvdImagExtensive() {
		return cvdImagExtensive;
	}

	public void setCvdImagExtensive(Short cvdImagExtensive) {
		this.cvdImagExtensive = cvdImagExtensive;
	}

	public Short getCvdImagOther() {
		return cvdImagOther;
	}

	public void setCvdImagOther(Short cvdImagOther) {
		this.cvdImagOther = cvdImagOther;
	}

	public String getCvdImagOtherX() {
		return cvdImagOtherX;
	}

	public void setCvdImagOtherX(String cvdImagOtherX) {
		this.cvdImagOtherX = cvdImagOtherX;
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
				"cvdImagSingle",
				"cvdImagMultiple",
				"cvdImagExtensive",
				"cvdImagOther",
				"cvdImagOtherX",
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
			buffer.append(UdsUploadUtils.formatField(getCvdImagSingle())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImagMultiple())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImagExtensive())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImagOther())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdImagOtherX()));
		}
		return buffer.toString();
	}	

	@Override
	public void updateCalculatedFields() {
		super.updateCalculatedFields();
		
		if ((this.abrupt == null)
			|| (this.stepwise == null)
			|| (this.somatic == null)
			|| (this.emot == null)
			|| (this.hxHyper == null)
			|| (this.hxStroke == null)
			|| (this.foclSym == null)
			|| (this.foclSign == null)) {
			
			this.hachin = null;
			
		} else {
			// calculate hachinski score
			if (((this.abrupt.equals((short)0)) || (this.abrupt.equals((short)2)))
				&& ((this.stepwise.equals((short)0)) || (this.stepwise.equals((short)1)))
				&& ((this.somatic.equals((short)0)) || (this.somatic.equals((short)1)))
				&& ((this.emot.equals((short)0)) || (this.emot.equals((short)1)))
				&& ((this.hxHyper.equals((short)0)) || (this.hxHyper.equals((short)1)))
				&& ((this.hxStroke.equals((short)0)) || (this.hxStroke.equals((short)2)))
				&& ((this.foclSym.equals((short)0)) || (this.foclSym.equals((short)2)))
				&& ((this.foclSign.equals((short)0)) || (this.foclSign.equals((short)2)))) {
			  
				this.hachin = (short)(this.abrupt
								+ this.stepwise
								+ this.somatic
								+ this.emot
								+ this.hxHyper
								+ this.hxStroke
								+ this.foclSym
								+ this.foclSign);
			} else {
				// else some field is not valid, so indeterminable
				this.hachin = (short)-5;		
			}
		}
	}
}


