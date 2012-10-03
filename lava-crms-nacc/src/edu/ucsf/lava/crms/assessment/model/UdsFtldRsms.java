package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.controller.CalcUtils;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldRsms extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldRsms.class);
	public static final int UDS_C6F_ERROR_CODE_CANNOT_CALCULATE = 88;	
	public static final int REVERSE = 5;	
	public static final String UDS_FTLD_RSMS_FORMID = "C6F";
	public UdsFtldRsms() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldRsms(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_RSMS_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdcpc6f;
	protected Short ftdalter;
	protected Short ftdemot;
	protected Short ftdacros;
	protected Short ftdconv;
	protected Short ftdintui;
	protected Short ftdjoke;
	protected Short ftdimagp;
	protected Short ftdinapp;
	protected Short ftdchbeh;
	protected Short ftdadbeh;
	protected Short ftdlying;
	protected Short ftdgoodf;
	protected Short ftdregul;
	protected Short ftdsmscr;
	protected Short ftdspscr;
	protected Short ftdrsmst;

	public Short getFtdcpc6f() {
		return ftdcpc6f;
	}

	public void setFtdcpc6f(Short ftdcpc6f) {
		this.ftdcpc6f = ftdcpc6f;
	}

	public Short getFtdalter() {
		return ftdalter;
	}

	public void setFtdalter(Short ftdalter) {
		this.ftdalter = ftdalter;
	}

	public Short getFtdemot() {
		return ftdemot;
	}

	public void setFtdemot(Short ftdemot) {
		this.ftdemot = ftdemot;
	}

	public Short getFtdacros() {
		return ftdacros;
	}

	public void setFtdacros(Short ftdacros) {
		this.ftdacros = ftdacros;
	}

	public Short getFtdconv() {
		return ftdconv;
	}

	public void setFtdconv(Short ftdconv) {
		this.ftdconv = ftdconv;
	}

	public Short getFtdintui() {
		return ftdintui;
	}

	public void setFtdintui(Short ftdintui) {
		this.ftdintui = ftdintui;
	}

	public Short getFtdjoke() {
		return ftdjoke;
	}

	public void setFtdjoke(Short ftdjoke) {
		this.ftdjoke = ftdjoke;
	}

	public Short getFtdimagp() {
		return ftdimagp;
	}

	public void setFtdimagp(Short ftdimagp) {
		this.ftdimagp = ftdimagp;
	}

	public Short getFtdinapp() {
		return ftdinapp;
	}

	public void setFtdinapp(Short ftdinapp) {
		this.ftdinapp = ftdinapp;
	}

	public Short getFtdchbeh() {
		return ftdchbeh;
	}

	public void setFtdchbeh(Short ftdchbeh) {
		this.ftdchbeh = ftdchbeh;
	}

	public Short getFtdadbeh() {
		return ftdadbeh;
	}

	public void setFtdadbeh(Short ftdadbeh) {
		this.ftdadbeh = ftdadbeh;
	}

	public Short getFtdlying() {
		return ftdlying;
	}

	public void setFtdlying(Short ftdlying) {
		this.ftdlying = ftdlying;
	}

	public Short getFtdgoodf() {
		return ftdgoodf;
	}

	public void setFtdgoodf(Short ftdgoodf) {
		this.ftdgoodf = ftdgoodf;
	}

	public Short getFtdregul() {
		return ftdregul;
	}

	public void setFtdregul(Short ftdregul) {
		this.ftdregul = ftdregul;
	}

	public Short getFtdsmscr() {
		return ftdsmscr;
	}

	public void setFtdsmscr(Short ftdsmscr) {
		this.ftdsmscr = ftdsmscr;
	}

	public Short getFtdspscr() {
		return ftdspscr;
	}

	public void setFtdspscr(Short ftdspscr) {
		this.ftdspscr = ftdspscr;
	}

	public Short getFtdrsmst() {
		return ftdrsmst;
	}

	public void setFtdrsmst(Short ftdrsmst) {
		this.ftdrsmst = ftdrsmst;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdcpc6f",
				"ftdalter",
				"ftdemot",
				"ftdacros",
				"ftdconv",
				"ftdintui",
				"ftdjoke",
				"ftdimagp",
				"ftdinapp",
				"ftdchbeh",
				"ftdadbeh",
				"ftdlying",
				"ftdgoodf",
				"ftdregul"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdcpc6f())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdalter())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdemot())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdacros())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdconv())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdintui())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdjoke())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdimagp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinapp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdchbeh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdadbeh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlying())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdgoodf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdregul())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmscr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdspscr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdrsmst())).append(",");
		return buffer.toString();
	}
	
	public void beforeUpdate() {

		super.beforeUpdate();
		
		this.ftdsmscr = CalcUtils.add(new Short[] {this.ftdemot, this.ftdconv, this.ftdintui, this.ftdjoke, this.ftdinapp, this.ftdlying}).shortValue();
		if (this.ftdsmscr == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsmscr = UDS_C6F_ERROR_CODE_CANNOT_CALCULATE;

		this.ftdspscr = CalcUtils.add(new Short[] {
				this.ftdalter,
				this.ftdacros,
				this.ftdimagp,
				CalcUtils.reverseScore(this.ftdchbeh, UdsFtldRsms.REVERSE),
				this.ftdadbeh,
				CalcUtils.reverseScore(this.ftdgoodf, UdsFtldRsms.REVERSE),
				this.ftdregul
		}).shortValue();
		if (this.ftdspscr == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdspscr = UDS_C6F_ERROR_CODE_CANNOT_CALCULATE;

		this.ftdrsmst = CalcUtils.add(new Short[] {
				this.ftdalter,
				this.ftdemot,
				this.ftdacros,
				this.ftdconv,
				this.ftdintui,
				this.ftdjoke,
				this.ftdimagp,
				this.ftdinapp,
				CalcUtils.reverseScore(this.ftdchbeh, UdsFtldRsms.REVERSE),
				this.ftdadbeh,
				this.ftdlying,
				CalcUtils.reverseScore(this.ftdgoodf, UdsFtldRsms.REVERSE),
				this.ftdregul
		}).shortValue();
		if (this.ftdrsmst == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdrsmst = UDS_C6F_ERROR_CODE_CANNOT_CALCULATE;
		
	}	
	
}


