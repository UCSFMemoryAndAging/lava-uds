package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsPhoneInclusion extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsPhoneInclusion.class);
	public static final String UDS_PHONEINCLUSION_FORMID = "T1";
	public static final String UDS_PHONEINCLUSION_PACKET = "T";
	public UdsPhoneInclusion() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsPhoneInclusion(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_PHONEINCLUSION_FORMID);
		this.setPacket(UDS_PHONEINCLUSION_PACKET);
	}
	
	// note: id inherited from Instrument
	private Short cogImp;
	private Short physImp;
	private Short home;
	private Short refused;
	private Short other;
	private String otherx;
	private Short milestone;
	private Short inperson;
	
	public Short getCogImp() {
		return cogImp;
	}

	public void setCogImp(Short cogImp) {
		this.cogImp = cogImp;
	}

	public Short getHome() {
		return home;
	}

	public void setHome(Short home) {
		this.home = home;
	}

	public Short getInperson() {
		return inperson;
	}

	public void setInperson(Short inperson) {
		this.inperson = inperson;
	}

	public Short getMilestone() {
		return milestone;
	}

	public void setMilestone(Short milestone) {
		this.milestone = milestone;
	}

	public Short getOther() {
		return other;
	}

	public void setOther(Short other) {
		this.other = other;
	}

	public String getOtherx() {
		return otherx;
	}

	public void setOtherx(String otherx) {
		this.otherx = otherx;
	}

	public Short getPhysImp() {
		return physImp;
	}

	public void setPhysImp(Short physImp) {
		this.physImp = physImp;
	}

	public Short getRefused() {
		return refused;
	}

	public void setRefused(Short refused) {
		this.refused = refused;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
		           "cogImp",
		           "physImp",
		           "home",
		           "refused",
		           "other",
		           "milestone",
		           "inperson"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getCogImp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPhysImp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHome())).append(",");
		buffer.append(UdsUploadUtils.formatField(getRefused())).append(",");
		buffer.append(UdsUploadUtils.formatField(getOther())).append(",");
		buffer.append(UdsUploadUtils.formatField(getOtherx())).append(",");
		if (this.getInstrVer().equals("1") || this.getInstrVer().equals("2")) {
			buffer.append(UdsUploadUtils.formatField(getMilestone())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInperson()));
		} // swapped order of these in UDS 3
		else if (this.getInstrVer().equals("3")) {
			buffer.append(UdsUploadUtils.formatField(getInperson())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMilestone()));
		}
		return buffer.toString();
	}

}


