package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldClinFeatures extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldClinFeatures.class);
	public static final String UDS_FTLD_CLINFEATURES_FORMID = "B9F";
	public UdsFtldClinFeatures() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldClinFeatures(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_CLINFEATURES_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdppasl;
	protected Short ftdppapo;
	protected Short ftdppaiw;
	protected Short ftdppasw;
	protected Short ftdppapk;
	protected Short ftdppags;
	protected Short ftdppaeh;
	protected Short ftdppacs;
	protected Short ftdppass;
	protected Short ftdppasr;
	protected Short ftdppasd;
	protected Short ftdcppa;
	protected Short ftdcppas;
	protected Short ftdbvcln;
	protected Short ftdbvdis;
	protected Short ftdbvapa;
	protected Short ftdbvlos;
	protected Short ftdbvrit;
	protected Short ftdbvhyp;
	protected Short ftdbvneu;
	protected Short ftdbvidl;
	protected Short ftdbvft;
	protected Short ftdemgpv;
	protected Short ftdemgpy;
	protected Short ftdemgmn;
	protected Short ftdpabvf;
	
	public Short getFtdppasl() {
		return ftdppasl;
	}

	public void setFtdppasl(Short ftdppasl) {
		this.ftdppasl = ftdppasl;
	}

	public Short getFtdppapo() {
		return ftdppapo;
	}

	public void setFtdppapo(Short ftdppapo) {
		this.ftdppapo = ftdppapo;
	}

	public Short getFtdppaiw() {
		return ftdppaiw;
	}

	public void setFtdppaiw(Short ftdppaiw) {
		this.ftdppaiw = ftdppaiw;
	}

	public Short getFtdppasw() {
		return ftdppasw;
	}

	public void setFtdppasw(Short ftdppasw) {
		this.ftdppasw = ftdppasw;
	}

	public Short getFtdppapk() {
		return ftdppapk;
	}

	public void setFtdppapk(Short ftdppapk) {
		this.ftdppapk = ftdppapk;
	}

	public Short getFtdppags() {
		return ftdppags;
	}

	public void setFtdppags(Short ftdppags) {
		this.ftdppags = ftdppags;
	}

	public Short getFtdppaeh() {
		return ftdppaeh;
	}

	public void setFtdppaeh(Short ftdppaeh) {
		this.ftdppaeh = ftdppaeh;
	}

	public Short getFtdppacs() {
		return ftdppacs;
	}

	public void setFtdppacs(Short ftdppacs) {
		this.ftdppacs = ftdppacs;
	}

	public Short getFtdppass() {
		return ftdppass;
	}

	public void setFtdppass(Short ftdppass) {
		this.ftdppass = ftdppass;
	}

	public Short getFtdppasr() {
		return ftdppasr;
	}

	public void setFtdppasr(Short ftdppasr) {
		this.ftdppasr = ftdppasr;
	}

	public Short getFtdppasd() {
		return ftdppasd;
	}

	public void setFtdppasd(Short ftdppasd) {
		this.ftdppasd = ftdppasd;
	}

	public Short getFtdcppa() {
		return ftdcppa;
	}

	public void setFtdcppa(Short ftdcppa) {
		this.ftdcppa = ftdcppa;
	}

	public Short getFtdcppas() {
		return ftdcppas;
	}

	public void setFtdcppas(Short ftdcppas) {
		this.ftdcppas = ftdcppas;
	}

	public Short getFtdbvcln() {
		return ftdbvcln;
	}

	public void setFtdbvcln(Short ftdbvcln) {
		this.ftdbvcln = ftdbvcln;
	}

	public Short getFtdbvdis() {
		return ftdbvdis;
	}

	public void setFtdbvdis(Short ftdbvdis) {
		this.ftdbvdis = ftdbvdis;
	}

	public Short getFtdbvapa() {
		return ftdbvapa;
	}

	public void setFtdbvapa(Short ftdbvapa) {
		this.ftdbvapa = ftdbvapa;
	}

	public Short getFtdbvlos() {
		return ftdbvlos;
	}

	public void setFtdbvlos(Short ftdbvlos) {
		this.ftdbvlos = ftdbvlos;
	}

	public Short getFtdbvrit() {
		return ftdbvrit;
	}

	public void setFtdbvrit(Short ftdbvrit) {
		this.ftdbvrit = ftdbvrit;
	}

	public Short getFtdbvhyp() {
		return ftdbvhyp;
	}

	public void setFtdbvhyp(Short ftdbvhyp) {
		this.ftdbvhyp = ftdbvhyp;
	}

	public Short getFtdbvneu() {
		return ftdbvneu;
	}

	public void setFtdbvneu(Short ftdbvneu) {
		this.ftdbvneu = ftdbvneu;
	}

	public Short getFtdbvidl() {
		return ftdbvidl;
	}

	public void setFtdbvidl(Short ftdbvidl) {
		this.ftdbvidl = ftdbvidl;
	}

	public Short getFtdbvft() {
		return ftdbvft;
	}

	public void setFtdbvft(Short ftdbvft) {
		this.ftdbvft = ftdbvft;
	}

	public Short getFtdemgpv() {
		return ftdemgpv;
	}

	public void setFtdemgpv(Short ftdemgpv) {
		this.ftdemgpv = ftdemgpv;
	}

	public Short getFtdemgpy() {
		return ftdemgpy;
	}

	public void setFtdemgpy(Short ftdemgpy) {
		this.ftdemgpy = ftdemgpy;
	}

	public Short getFtdemgmn() {
		return ftdemgmn;
	}

	public void setFtdemgmn(Short ftdemgmn) {
		this.ftdemgmn = ftdemgmn;
	}

	public Short getFtdpabvf() {
		return ftdpabvf;
	}

	public void setFtdpabvf(Short ftdpabvf) {
		this.ftdpabvf = ftdpabvf;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
			"ftdppasl",
			"ftdppapo",
			"ftdppaiw",
			"ftdppasw",
			"ftdppapk",
			"ftdppags",
			"ftdppaeh",
			"ftdppacs",
			"ftdppass",
			"ftdppasr",
			"ftdppasd",
			"ftdcppa",
			"ftdcppas",
			"ftdbvcln",
			"ftdbvdis",
			"ftdbvapa",
			"ftdbvlos",
			"ftdbvrit",
			"ftdbvhyp",
			"ftdbvneu",
			"ftdbvidl",
			"ftdbvft",
			"ftdemgpv",
			"ftdemgpy",
			"ftdemgmn"
			//"ftdpabvf" not required since subject may only have one diagnosis in which case this question doesn't make sense
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdppasl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppapo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppaiw())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppasw())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppapk())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppags())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppaeh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppacs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppass())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppasr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdppasd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcppa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcppas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvcln())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvdis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvapa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvlos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvrit())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvhyp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvneu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvidl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbvft())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdemgpv())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdemgpy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdemgmn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdpabvf()));
		return buffer.toString();
	}
	
}


