package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsNpi extends UdsInstrument {
	
	public static EntityManager MANAGER = new EntityBase.Manager(UdsNpi.class);
	
	public static final String UDS_NPI_FORMID = "B5";
	public static final String UDS_NPI_SPANISH_FORMID = "B5S";
	public UdsNpi() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsNpi(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_NPI_FORMID);
	}
	
	
	// note: id inherited from Instrument
	private Short npiqInf;
	private String npiqInfx;
	private Short del;
	private Short delSev;
	private Short hall;
	private Short hallSev;
	private Short agit;
	private Short agitSev;
	private Short depD;
	private Short depDSev;
	private Short anx;
	private Short anxSev;
	private Short elat;
	private Short elatSev;
	private Short apa;
	private Short apaSev;
	private Short disn;
	private Short disnSev;
	private Short irr;
	private Short irrSev;
	private Short mot;
	private Short motSev;
	private Short nite;
	private Short niteSev;
	private Short app;
	private Short appSev;
	
	public Short getAgit() {
		return agit;
	}

	public void setAgit(Short agit) {
		this.agit = agit;
	}

	public Short getAgitSev() {
		return agitSev;
	}

	public void setAgitSev(Short agitSev) {
		this.agitSev = agitSev;
	}

	public Short getAnx() {
		return anx;
	}

	public void setAnx(Short anx) {
		this.anx = anx;
	}

	public Short getAnxSev() {
		return anxSev;
	}

	public void setAnxSev(Short anxSev) {
		this.anxSev = anxSev;
	}

	public Short getApa() {
		return apa;
	}

	public void setApa(Short apa) {
		this.apa = apa;
	}

	public Short getApaSev() {
		return apaSev;
	}

	public void setApaSev(Short apaSev) {
		this.apaSev = apaSev;
	}

	public Short getApp() {
		return app;
	}

	public void setApp(Short app) {
		this.app = app;
	}

	public Short getAppSev() {
		return appSev;
	}

	public void setAppSev(Short appSev) {
		this.appSev = appSev;
	}

	public Short getDel() {
		return del;
	}

	public void setDel(Short del) {
		this.del = del;
	}

	public Short getDelSev() {
		return delSev;
	}

	public void setDelSev(Short delSev) {
		this.delSev = delSev;
	}

	public Short getDepD() {
		return depD;
	}

	public void setDepD(Short depD) {
		this.depD = depD;
	}

	public Short getDepDSev() {
		return depDSev;
	}

	public void setDepDSev(Short depDSev) {
		this.depDSev = depDSev;
	}

	public Short getDisn() {
		return disn;
	}

	public void setDisn(Short disn) {
		this.disn = disn;
	}

	public Short getDisnSev() {
		return disnSev;
	}

	public void setDisnSev(Short disnSev) {
		this.disnSev = disnSev;
	}

	public Short getElat() {
		return elat;
	}

	public void setElat(Short elat) {
		this.elat = elat;
	}

	public Short getElatSev() {
		return elatSev;
	}

	public void setElatSev(Short elatSev) {
		this.elatSev = elatSev;
	}

	public Short getHall() {
		return hall;
	}

	public void setHall(Short hall) {
		this.hall = hall;
	}

	public Short getHallSev() {
		return hallSev;
	}

	public void setHallSev(Short hallSev) {
		this.hallSev = hallSev;
	}

	public Short getIrr() {
		return irr;
	}

	public void setIrr(Short irr) {
		this.irr = irr;
	}

	public Short getIrrSev() {
		return irrSev;
	}

	public void setIrrSev(Short irrSev) {
		this.irrSev = irrSev;
	}

	public Short getMot() {
		return mot;
	}

	public void setMot(Short mot) {
		this.mot = mot;
	}

	public Short getMotSev() {
		return motSev;
	}

	public void setMotSev(Short motSev) {
		this.motSev = motSev;
	}

	public Short getNite() {
		return nite;
	}

	public void setNite(Short nite) {
		this.nite = nite;
	}

	public Short getNiteSev() {
		return niteSev;
	}

	public void setNiteSev(Short niteSev) {
		this.niteSev = niteSev;
	}

	public Short getNpiqInf() {
		return npiqInf;
	}

	public void setNpiqInf(Short npiqInf) {
		this.npiqInf = npiqInf;
	}

	public String getNpiqInfx() {
		return npiqInfx;
	}

	public void setNpiqInfx(String npiqInfx) {
		this.npiqInfx = npiqInfx;
	}



	
	public String[] getRequiredResultFields() {
		return new String[] {
			
				"npiqInf",
				"del",
				"delSev",
				"hall",
				"hallSev",
				"agit",
				"agitSev",
				"depD",
				"depDSev",
				"anx",
				"anxSev",
				"elat",
				"elatSev",
				"apa",
				"apaSev",
				"disn",
				"disnSev",
				"irr",
				"irrSev",
				"mot",
				"motSev",
				"nite",
				"niteSev",
				"app",
				"appSev"
		};
	}

	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getNpiqInf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNpiqInfx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDel())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDelSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHall())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHallSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAgit())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAgitSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDepD())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDepDSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAnx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAnxSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getElat())).append(",");
		buffer.append(UdsUploadUtils.formatField(getElatSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getApa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getApaSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDisn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDisnSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getIrr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getIrrSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMot())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMotSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNite())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNiteSev())).append(",");
		buffer.append(UdsUploadUtils.formatField(getApp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAppSev()));
		return buffer.toString();
	}
	
}


