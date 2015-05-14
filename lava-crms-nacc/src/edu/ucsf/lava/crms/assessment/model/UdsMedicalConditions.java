package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsMedicalConditions extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsMedicalConditions.class);
	public static final String UDS_MEDICALCONDITIONS_FORMID = "D2";
	public UdsMedicalConditions() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsMedicalConditions(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_MEDICALCONDITIONS_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short cancer;
	protected String cancsite;
	protected Short diabet;
	protected Short myoinf;
	protected Short conghrt;
	protected Short afibrill;
	protected Short hypert;
	protected Short angina;
	protected Short hypchol;
	protected Short vb12def;
	protected Short thydis;
	protected Short arth;
	protected Short artype;
	protected String artypex;
	protected Short artupex;
	protected Short artloex;
	protected Short artspin;
	protected Short artunkn;
	protected Short urineinc;
	protected Short bowlinc;
	protected Short sleepap;
	protected Short remdis;
	protected Short hyposom;
	protected Short sleepoth;
	protected String sleepotx;
	protected Short angiocp;
	protected Short angiopci;
	protected Short pacemake;
	protected Short hvalve;
	protected Short antienc;
	protected String antiencx;
	protected Short othcond;
	protected String othcondx;	

	public Short getCancer() {
		return cancer;
	}

	public void setCancer(Short cancer) {
		this.cancer = cancer;
	}

	public String getCancsite() {
		return cancsite;
	}

	public void setCancsite(String cancsite) {
		this.cancsite = cancsite;
	}

	public Short getDiabet() {
		return diabet;
	}

	public void setDiabet(Short diabet) {
		this.diabet = diabet;
	}

	public Short getMyoinf() {
		return myoinf;
	}

	public void setMyoinf(Short myoinf) {
		this.myoinf = myoinf;
	}

	public Short getConghrt() {
		return conghrt;
	}

	public void setConghrt(Short conghrt) {
		this.conghrt = conghrt;
	}

	public Short getAfibrill() {
		return afibrill;
	}

	public void setAfibrill(Short afibrill) {
		this.afibrill = afibrill;
	}

	public Short getHypert() {
		return hypert;
	}

	public void setHypert(Short hypert) {
		this.hypert = hypert;
	}

	public Short getAngina() {
		return angina;
	}

	public void setAngina(Short angina) {
		this.angina = angina;
	}

	public Short getHypchol() {
		return hypchol;
	}

	public void setHypchol(Short hypchol) {
		this.hypchol = hypchol;
	}

	public Short getVb12def() {
		return vb12def;
	}

	public void setVb12def(Short vb12def) {
		this.vb12def = vb12def;
	}

	public Short getThydis() {
		return thydis;
	}

	public void setThydis(Short thydis) {
		this.thydis = thydis;
	}

	public Short getArth() {
		return arth;
	}

	public void setArth(Short arth) {
		this.arth = arth;
	}

	public Short getArtype() {
		return artype;
	}

	public void setArtype(Short artype) {
		this.artype = artype;
	}

	public String getArtypex() {
		return artypex;
	}

	public void setArtypex(String artypex) {
		this.artypex = artypex;
	}

	public Short getArtupex() {
		return artupex;
	}

	public void setArtupex(Short artupex) {
		this.artupex = artupex;
	}

	public Short getArtloex() {
		return artloex;
	}

	public void setArtloex(Short artloex) {
		this.artloex = artloex;
	}

	public Short getArtspin() {
		return artspin;
	}

	public void setArtspin(Short artspin) {
		this.artspin = artspin;
	}

	public Short getArtunkn() {
		return artunkn;
	}

	public void setArtunkn(Short artunkn) {
		this.artunkn = artunkn;
	}

	public Short getUrineinc() {
		return urineinc;
	}

	public void setUrineinc(Short urineinc) {
		this.urineinc = urineinc;
	}

	public Short getBowlinc() {
		return bowlinc;
	}

	public void setBowlinc(Short bowlinc) {
		this.bowlinc = bowlinc;
	}

	public Short getSleepap() {
		return sleepap;
	}

	public void setSleepap(Short sleepap) {
		this.sleepap = sleepap;
	}

	public Short getRemdis() {
		return remdis;
	}

	public void setRemdis(Short remdis) {
		this.remdis = remdis;
	}

	public Short getHyposom() {
		return hyposom;
	}

	public void setHyposom(Short hyposom) {
		this.hyposom = hyposom;
	}

	public Short getSleepoth() {
		return sleepoth;
	}

	public void setSleepoth(Short sleepoth) {
		this.sleepoth = sleepoth;
	}

	public String getSleepotx() {
		return sleepotx;
	}

	public void setSleepotx(String sleepotx) {
		this.sleepotx = sleepotx;
	}

	public Short getAngiocp() {
		return angiocp;
	}

	public void setAngiocp(Short angiocp) {
		this.angiocp = angiocp;
	}

	public Short getAngiopci() {
		return angiopci;
	}

	public void setAngiopci(Short angiopci) {
		this.angiopci = angiopci;
	}

	public Short getPacemake() {
		return pacemake;
	}

	public void setPacemake(Short pacemake) {
		this.pacemake = pacemake;
	}

	public Short getHvalve() {
		return hvalve;
	}

	public void setHvalve(Short hvalve) {
		this.hvalve = hvalve;
	}

	public Short getAntienc() {
		return antienc;
	}

	public void setAntienc(Short antienc) {
		this.antienc = antienc;
	}

	public String getAntiencx() {
		return antiencx;
	}

	public void setAntiencx(String antiencx) {
		this.antiencx = antiencx;
	}

	public Short getOthcond() {
		return othcond;
	}

	public void setOthcond(Short othcond) {
		this.othcond = othcond;
	}

	public String getOthcondx() {
		return othcondx;
	}

	public void setOthcondx(String othcondx) {
		this.othcondx = othcondx;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
			"cancer",
			"cancsite",
			"diabet",
			"myoinf",
			"conghrt",
			"afibrill",
			"hypert",
			"angina",
			"hypchol",
			"vb12def",
			"thydis",
			"arth",
			"artype",
			"artypex",
			"artupex",
			"artloex",
			"artspin",
			"artunkn",
			"urineinc",
			"bowlinc",
			"sleepap",
			"remdis",
			"hyposom",
			"sleepoth",
			"sleepotx",
			"angiocp",
			"angiopci",
			"pacemake",
			"hvalve",
			"antienc",
			"antiencx",
			"othcond",
			"othcondx"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getCancer())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCancsite())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDiabet())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMyoinf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getConghrt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAfibrill())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHypert())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAngina())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHypchol())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVb12def())).append(",");
		buffer.append(UdsUploadUtils.formatField(getThydis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArth())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArtype())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArtypex())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArtupex())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArtloex())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArtspin())).append(",");
		buffer.append(UdsUploadUtils.formatField(getArtunkn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUrineinc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getBowlinc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSleepap())).append(",");
		buffer.append(UdsUploadUtils.formatField(getRemdis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHyposom())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSleepoth())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSleepotx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAngiocp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAngiopci())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPacemake())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHvalve())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAntienc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAntiencx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getOthcond())).append(",");
		buffer.append(UdsUploadUtils.formatField(getOthcondx()));
		return buffer.toString();
	}
	
}
