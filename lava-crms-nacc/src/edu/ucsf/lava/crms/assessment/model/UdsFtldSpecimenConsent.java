package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldSpecimenConsent extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldSpecimenConsent.class);
	public static final String UDS_FTLD_SPECIMENCONSENT_FORMID = "A3A";
	public UdsFtldSpecimenConsent() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldSpecimenConsent(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_SPECIMENCONSENT_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdrelco;
	protected Short ftdsibby;
	protected Short ftdchdby;
	protected Short ftdstore;
	protected Short ftdslear;
	protected Short ftdcomme;

	public Short getFtdrelco() {
		return ftdrelco;
	}

	public void setFtdrelco(Short ftdrelco) {
		this.ftdrelco = ftdrelco;
	}

	public Short getFtdsibby() {
		return ftdsibby;
	}

	public void setFtdsibby(Short ftdsibby) {
		this.ftdsibby = ftdsibby;
	}

	public Short getFtdchdby() {
		return ftdchdby;
	}

	public void setFtdchdby(Short ftdchdby) {
		this.ftdchdby = ftdchdby;
	}

	public Short getFtdstore() {
		return ftdstore;
	}

	public void setFtdstore(Short ftdstore) {
		this.ftdstore = ftdstore;
	}

	public Short getFtdslear() {
		return ftdslear;
	}

	public void setFtdslear(Short ftdslear) {
		this.ftdslear = ftdslear;
	}

	public Short getFtdcomme() {
		return ftdcomme;
	}

	public void setFtdcomme(Short ftdcomme) {
		this.ftdcomme = ftdcomme;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdrelco",
				"ftdsibby",
				"ftdchdby",
				"ftdstore",
				"ftdslear",
				"ftdcomme"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdrelco())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsibby())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdchdby())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdstore())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdslear())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcomme()));
		return buffer.toString();
	}
	
}


