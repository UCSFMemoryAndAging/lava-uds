package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldFormChecklist extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldFormChecklist.class);
	public static final String UDS_FTLD_FORMCHECKLIST_FORMID = "Z1F";
	public UdsFtldFormChecklist() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldFormChecklist(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_FORMCHECKLIST_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftda3afs;
	protected Short ftda3afr;
	protected String ftda3afc;
	protected Short ftda3fs;
	protected Short ftda3fr;
	protected String ftda3fc;
	protected Short ftdc4fs;
	protected Short ftdc4fr;
	protected String ftdc4fc;
	protected Short ftdc5fs;
	protected Short ftdc5fr;
	protected String ftdc5fc;
	protected Short ftdc6fs;
	protected Short ftdc6fr;
	protected String ftdc6fc;

	public Short getFtda3afs() {
		return ftda3afs;
	}

	public void setFtda3afs(Short ftda3afs) {
		this.ftda3afs = ftda3afs;
	}

	public Short getFtda3afr() {
		return ftda3afr;
	}

	public void setFtda3afr(Short ftda3afr) {
		this.ftda3afr = ftda3afr;
	}

	public String getFtda3afc() {
		return ftda3afc;
	}

	public void setFtda3afc(String ftda3afc) {
		this.ftda3afc = ftda3afc;
	}

	public Short getFtda3fs() {
		return ftda3fs;
	}

	public void setFtda3fs(Short ftda3fs) {
		this.ftda3fs = ftda3fs;
	}

	public Short getFtda3fr() {
		return ftda3fr;
	}

	public void setFtda3fr(Short ftda3fr) {
		this.ftda3fr = ftda3fr;
	}

	public String getFtda3fc() {
		return ftda3fc;
	}

	public void setFtda3fc(String ftda3fc) {
		this.ftda3fc = ftda3fc;
	}

	public Short getFtdc4fs() {
		return ftdc4fs;
	}

	public void setFtdc4fs(Short ftdc4fs) {
		this.ftdc4fs = ftdc4fs;
	}

	public Short getFtdc4fr() {
		return ftdc4fr;
	}

	public void setFtdc4fr(Short ftdc4fr) {
		this.ftdc4fr = ftdc4fr;
	}

	public String getFtdc4fc() {
		return ftdc4fc;
	}

	public void setFtdc4fc(String ftdc4fc) {
		this.ftdc4fc = ftdc4fc;
	}

	public Short getFtdc5fs() {
		return ftdc5fs;
	}

	public void setFtdc5fs(Short ftdc5fs) {
		this.ftdc5fs = ftdc5fs;
	}

	public Short getFtdc5fr() {
		return ftdc5fr;
	}

	public void setFtdc5fr(Short ftdc5fr) {
		this.ftdc5fr = ftdc5fr;
	}

	public String getFtdc5fc() {
		return ftdc5fc;
	}

	public void setFtdc5fc(String ftdc5fc) {
		this.ftdc5fc = ftdc5fc;
	}

	public Short getFtdc6fs() {
		return ftdc6fs;
	}

	public void setFtdc6fs(Short ftdc6fs) {
		this.ftdc6fs = ftdc6fs;
	}

	public Short getFtdc6fr() {
		return ftdc6fr;
	}

	public void setFtdc6fr(Short ftdc6fr) {
		this.ftdc6fr = ftdc6fr;
	}

	public String getFtdc6fc() {
		return ftdc6fc;
	}

	public void setFtdc6fc(String ftdc6fc) {
		this.ftdc6fc = ftdc6fc;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftda3afs",
				"ftda3afr",
				//"ftda3afc",
				"ftda3fs",
				"ftda3fr",
				//"ftda3fc",
				"ftdc4fs",
				"ftdc4fr",
				//"ftdc4fc",
				"ftdc5fs",
				"ftdc5fr",
				//"ftdc5fc",
				"ftdc6fs",
				"ftdc6fr"
				//"ftdc6fc"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtda3afs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtda3afr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtda3afc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtda3fs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtda3fr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtda3fc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc4fs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc4fr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc4fc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc5fs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc5fr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc5fc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc6fs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc6fr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdc6fc())).append(",");
		return buffer.toString();
	}
	
}


