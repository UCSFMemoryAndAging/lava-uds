package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.controller.CalcUtils;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldBis extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldBis.class);
	public static final int UDS_C4F_ERROR_CODE_CANNOT_CALCULATE = 88;
	public static final int REVERSE = 5;
	public static final String UDS_FTLD_BIS_FORMID = "C4F";
	public UdsFtldBis() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldBis(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_BIS_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdcpc4f;
	protected Short ftdworku;
	protected Short ftdmist;
	protected Short ftdcrit;
	protected Short ftdworr;
	protected Short ftdbad;
	protected Short ftdpoor;
	protected Short ftdffear;
	protected Short ftdbist;

	public Short getFtdcpc4f() {
		return ftdcpc4f;
	}

	public void setFtdcpc4f(Short ftdcpc4f) {
		this.ftdcpc4f = ftdcpc4f;
	}

	public Short getFtdworku() {
		return ftdworku;
	}

	public void setFtdworku(Short ftdworku) {
		this.ftdworku = ftdworku;
	}

	public Short getFtdmist() {
		return ftdmist;
	}

	public void setFtdmist(Short ftdmist) {
		this.ftdmist = ftdmist;
	}

	public Short getFtdcrit() {
		return ftdcrit;
	}

	public void setFtdcrit(Short ftdcrit) {
		this.ftdcrit = ftdcrit;
	}

	public Short getFtdworr() {
		return ftdworr;
	}

	public void setFtdworr(Short ftdworr) {
		this.ftdworr = ftdworr;
	}

	public Short getFtdbad() {
		return ftdbad;
	}

	public void setFtdbad(Short ftdbad) {
		this.ftdbad = ftdbad;
	}

	public Short getFtdpoor() {
		return ftdpoor;
	}

	public void setFtdpoor(Short ftdpoor) {
		this.ftdpoor = ftdpoor;
	}

	public Short getFtdffear() {
		return ftdffear;
	}

	public void setFtdffear(Short ftdffear) {
		this.ftdffear = ftdffear;
	}

	public Short getFtdbist() {
		return ftdbist;
	}

	public void setFtdbist(Short ftdbist) {
		this.ftdbist = ftdbist;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdcpc4f",
				"ftdworku",
				"ftdmist",
				"ftdcrit",
				"ftdworr",
				"ftdbad",
				"ftdpoor",
				"ftdffear"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdcpc4f())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworku())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmist())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcrit())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbad())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdpoor())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdffear())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbist()));
		return buffer.toString();
	}
	
	public void beforeUpdate() {

		super.beforeUpdate();

		this.ftdbist = CalcUtils.add(new Short[] {
				this.ftdworku,
				this.ftdmist,
				this.ftdcrit,
				this.ftdworr,
				CalcUtils.reverseScore(this.ftdbad, UdsFtldRsms.REVERSE),
				this.ftdpoor,
				CalcUtils.reverseScore(this.ftdffear, UdsFtldRsms.REVERSE)
		}).shortValue();
		if (this.ftdbist == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdbist = UDS_C4F_ERROR_CODE_CANNOT_CALCULATE;
		
	}
	
}


