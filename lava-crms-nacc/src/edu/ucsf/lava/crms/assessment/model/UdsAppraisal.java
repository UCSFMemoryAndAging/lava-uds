package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import org.apache.commons.lang.StringUtils;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

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
	private Short foclDef;
	private Short gaitDis;
	private Short eyeMove;

	

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

	
	public String[] getRequiredResultFields(String version) {
		String[] required = null;
		if (version.equalsIgnoreCase("1") || version.equalsIgnoreCase("2")) {
			required = new String[] {
					"normal",
					"foclDef",
					"gaitDis",
					"eyeMove"};
		}
		return required;
	}

	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getNormal())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFoclDef())).append(",");
		buffer.append(UdsUploadUtils.formatField(getGaitDis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getEyeMove()));
		return buffer.toString();
	}
	
	
	
}


