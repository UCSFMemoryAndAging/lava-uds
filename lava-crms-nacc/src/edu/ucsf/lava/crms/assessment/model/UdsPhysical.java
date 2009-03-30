package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsPhysical extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsPhysical.class);
	public static final String UDS_PHYSICAL_FORMID = "B1";
	public UdsPhysical() {}

	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsPhysical(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_PHYSICAL_FORMID);
	}
	
	// note: id inherited from Instrument
	private Float height;
	private Short weight;
	private Short bpSys;
	private Short bpDias;
	private Short hrate;
	private Short vision;
	private Short visCorr;
	private Short visWCorr;
	private Short hearing;
	private Short hearAid;
	private Short hearWAid;
		
	public Short getBpDias() {
		return bpDias;
	}

	public void setBpDias(Short bpDias) {
		this.bpDias = bpDias;
	}

	public Short getBpSys() {
		return bpSys;
	}

	public void setBpSys(Short bpSys) {
		this.bpSys = bpSys;
	}

	public Short getHearAid() {
		return hearAid;
	}

	public void setHearAid(Short hearAid) {
		this.hearAid = hearAid;
	}

	public Short getHearing() {
		return hearing;
	}

	public void setHearing(Short hearing) {
		this.hearing = hearing;
	}

	public Short getHearWAid() {
		return hearWAid;
	}

	public void setHearWAid(Short hearWAid) {
		this.hearWAid = hearWAid;
	}

	public Float getHeight() {
		return height;
	}

	public void setHeight(Float height) {
		this.height = height;
	}

	public Short getHrate() {
		return hrate;
	}

	public void setHrate(Short hrate) {
		this.hrate = hrate;
	}

	public Short getVisCorr() {
		return visCorr;
	}

	public void setVisCorr(Short visCorr) {
		this.visCorr = visCorr;
	}

	public Short getVision() {
		return vision;
	}

	public void setVision(Short vision) {
		this.vision = vision;
	}

	public Short getVisWCorr() {
		return visWCorr;
	}

	public void setVisWCorr(Short visWCorr) {
		this.visWCorr = visWCorr;
	}

	public Short getWeight() {
		return weight;
	}

	public void setWeight(Short weight) {
		this.weight = weight;
	}

	
	public String[] getRequiredResultFields() {
		return new String[] {
				
				"height",
				"weight",
				"bpSys",
				"bpDias",
				"hrate",
				"vision",
				"visCorr",
				"visWCorr",
				"hearing",
				"hearAid",
				"hearWAid"
		};
	}


	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getHeight())).append(",");
		buffer.append(UdsUploadUtils.formatField(getWeight())).append(",");
		buffer.append(UdsUploadUtils.formatField(getBpSys())).append(",");
		buffer.append(UdsUploadUtils.formatField(getBpDias())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHrate())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVision())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVisCorr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVisWCorr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHearing())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHearAid())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHearWAid()));
		return buffer.toString();
	}
	
}


