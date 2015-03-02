package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import org.springframework.util.StringUtils;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldUpdrs extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldUpdrs.class);
	public static final String UDS_FTLD_UPDRS_FORMID = "B3F";
	public UdsFtldUpdrs() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldUpdrs(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_UPDRS_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdltfas;
	protected Short ftdlimb;
	protected Short ftdbulb;
	protected Short ftdeye; // delete in FTLD Module v. 3
	protected Short ftddyst; // delete in FTLD Module v. 3
	protected Short ftdideo; // delete in FTLD Module v. 3
	protected Short ftdalien; // delete in FTLD Module v. 3
	protected Short ftdmyocl; // delete in FTLD Module v. 3
	protected Short ftdcorts; // delete in FTLD Module v. 3
	protected Short ftdgsev;
	protected String ftdgsevx;
	protected Short ftdgtyp;
	protected String ftdgtypg;
	protected String ftdgtypx;
	
	public Short getFtdltfas() {
		return ftdltfas;
	}

	public void setFtdltfas(Short ftdltfas) {
		this.ftdltfas = ftdltfas;
	}

	public Short getFtdlimb() {
		return ftdlimb;
	}

	public void setFtdlimb(Short ftdlimb) {
		this.ftdlimb = ftdlimb;
	}

	public Short getFtdbulb() {
		return ftdbulb;
	}

	public void setFtdbulb(Short ftdbulb) {
		this.ftdbulb = ftdbulb;
	}

	public Short getFtdeye() {
		return ftdeye;
	}

	public void setFtdeye(Short ftdeye) {
		this.ftdeye = ftdeye;
	}

	public Short getFtddyst() {
		return ftddyst;
	}

	public void setFtddyst(Short ftddyst) {
		this.ftddyst = ftddyst;
	}

	public Short getFtdideo() {
		return ftdideo;
	}

	public void setFtdideo(Short ftdideo) {
		this.ftdideo = ftdideo;
	}

	public Short getFtdalien() {
		return ftdalien;
	}

	public void setFtdalien(Short ftdalien) {
		this.ftdalien = ftdalien;
	}

	public Short getFtdmyocl() {
		return ftdmyocl;
	}

	public void setFtdmyocl(Short ftdmyocl) {
		this.ftdmyocl = ftdmyocl;
	}

	public Short getFtdcorts() {
		return ftdcorts;
	}

	public void setFtdcorts(Short ftdcorts) {
		this.ftdcorts = ftdcorts;
	}

	public Short getFtdgsev() {
		return ftdgsev;
	}

	public void setFtdgsev(Short ftdgsev) {
		this.ftdgsev = ftdgsev;
	}

	public String getFtdgsevx() {
		return ftdgsevx;
	}

	public void setFtdgsevx(String ftdgsevx) {
		this.ftdgsevx = ftdgsevx;
	}

	public Short getFtdgtyp() {
		return ftdgtyp;
	}

	public void setFtdgtyp(Short ftdgtyp) {
		this.ftdgtyp = ftdgtyp;
	}

	public String getFtdgtypg() {
		return ftdgtypg;
	}

	public void setFtdgtypg(String ftdgtypg) {
		this.ftdgtypg = ftdgtypg;
	}

	public String getFtdgtypx() {
		return ftdgtypx;
	}

	public void setFtdgtypx(String ftdgtypx) {
		this.ftdgtypx = ftdgtypx;
	}

	public String[] getRequiredResultFields(String version) {
		String[] required;
		required = new String[] {
				"ftdltfas",
				"ftdlimb",
				"ftdbulb",
				"ftdgsev",
				"ftdgsevx",
				"ftdgtyp",
				"ftdgtypg",
				"ftdgtypx"
		};
		if (version.equals("2")){
			// properties deleted in FTLD Module 3
			required = StringUtils.concatenateStringArrays(required, new String[]{
					"ftdeye",
					"ftddyst",
					"ftdideo",
					"ftdalien",
					"ftdmyocl",
					"ftdcorts"});
		}
		return required;
	}
	
	public void markUnusedFields(String version) {
		if(version.equals("3")) {
			this.ftdeye = (short)-8;
			this.ftddyst = (short)-8;
			this.ftdideo = (short)-8;
			this.ftdalien = (short)-8;
			this.ftdmyocl = (short)-8;
			this.ftdcorts = (short)-8;
		}
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdltfas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlimb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbulb())).append(",");
		if (getInstrVer().equals("2")) {
			buffer.append(UdsUploadUtils.formatField(getFtdeye())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddyst())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdideo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdalien())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmyocl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdcorts())).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getFtdgsev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdgsevx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdgtyp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdgtypg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdgtypx())).append(",");
		return buffer.toString();
	}
	
}


