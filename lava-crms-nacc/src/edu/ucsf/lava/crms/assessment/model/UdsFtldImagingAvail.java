package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldImagingAvail extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldImagingAvail.class);
	public static final String UDS_FTLD_IMAGINGAVAIL_FORMID = "E2F";
	public UdsFtldImagingAvail() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldImagingAvail(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_IMAGINGAVAIL_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdsmri;
	protected Short ftdsmmo;
	protected Short ftdsmdy;
	protected Short ftdsmyr;
	protected Short ftdsmdic;
	protected String ftdsmdis;
	protected Short ftdsmadn;
	protected String ftdsmadv;
	protected Short ftdsmman;
	protected String ftdsmmao;
	protected String ftdsmmam;
	protected Short ftdsmfs;
	protected String ftdsmfso;
	protected Short ftdsmqu;
	protected Short ftdfdgpt;
	protected Short ftdfpmo;
	protected Short ftdfpdy;
	protected Short ftdfpyr;
	protected Short ftdfddic;
	protected String ftdfddid;
	protected Short ftdfdadn;
	protected String ftdfdadv;
	protected Short ftdfdman;
	protected String ftdfdmao;
	protected String ftdfdmam;
	protected Short ftdfdqu;
	protected Short ftdamypt;
	protected Short ftdammo;
	protected Short ftdamdy;
	protected Short ftdamyr;
	protected Short ftdamdic;
	protected String ftdamdid;
	protected Short ftdamlig;
	protected String ftdamlio;
	protected Short ftdamadn;
	protected String ftdamadv;
	protected Short ftdamman;
	protected String ftdammao;
	protected String ftdammam;
	protected Short ftdamqu;
	protected Short ftdother;
	protected Short ftdotdop;
	protected Short ftdotser;
	protected Short ftdotcho;
	protected Short ftdotano;
	protected String ftdotans;
	
	public Short getFtdsmri() {
		return ftdsmri;
	}

	public void setFtdsmri(Short ftdsmri) {
		this.ftdsmri = ftdsmri;
	}

	public Short getFtdsmmo() {
		return ftdsmmo;
	}

	public void setFtdsmmo(Short ftdsmmo) {
		this.ftdsmmo = ftdsmmo;
	}

	public Short getFtdsmdy() {
		return ftdsmdy;
	}

	public void setFtdsmdy(Short ftdsmdy) {
		this.ftdsmdy = ftdsmdy;
	}

	public Short getFtdsmyr() {
		return ftdsmyr;
	}

	public void setFtdsmyr(Short ftdsmyr) {
		this.ftdsmyr = ftdsmyr;
	}

	public Short getFtdsmdic() {
		return ftdsmdic;
	}

	public void setFtdsmdic(Short ftdsmdic) {
		this.ftdsmdic = ftdsmdic;
	}

	public String getFtdsmdis() {
		return ftdsmdis;
	}

	public void setFtdsmdis(String ftdsmdis) {
		this.ftdsmdis = ftdsmdis;
	}

	public Short getFtdsmadn() {
		return ftdsmadn;
	}

	public void setFtdsmadn(Short ftdsmadn) {
		this.ftdsmadn = ftdsmadn;
	}

	public String getFtdsmadv() {
		return ftdsmadv;
	}

	public void setFtdsmadv(String ftdsmadv) {
		this.ftdsmadv = ftdsmadv;
	}

	public Short getFtdsmman() {
		return ftdsmman;
	}

	public void setFtdsmman(Short ftdsmman) {
		this.ftdsmman = ftdsmman;
	}

	public String getFtdsmmao() {
		return ftdsmmao;
	}

	public void setFtdsmmao(String ftdsmmao) {
		this.ftdsmmao = ftdsmmao;
	}

	public String getFtdsmmam() {
		return ftdsmmam;
	}

	public void setFtdsmmam(String ftdsmmam) {
		this.ftdsmmam = ftdsmmam;
	}

	public Short getFtdsmfs() {
		return ftdsmfs;
	}

	public void setFtdsmfs(Short ftdsmfs) {
		this.ftdsmfs = ftdsmfs;
	}

	public String getFtdsmfso() {
		return ftdsmfso;
	}

	public void setFtdsmfso(String ftdsmfso) {
		this.ftdsmfso = ftdsmfso;
	}

	public Short getFtdsmqu() {
		return ftdsmqu;
	}

	public void setFtdsmqu(Short ftdsmqu) {
		this.ftdsmqu = ftdsmqu;
	}

	public Short getFtdfdgpt() {
		return ftdfdgpt;
	}

	public void setFtdfdgpt(Short ftdfdgpt) {
		this.ftdfdgpt = ftdfdgpt;
	}

	public Short getFtdfpmo() {
		return ftdfpmo;
	}

	public void setFtdfpmo(Short ftdfpmo) {
		this.ftdfpmo = ftdfpmo;
	}

	public Short getFtdfpdy() {
		return ftdfpdy;
	}

	public void setFtdfpdy(Short ftdfpdy) {
		this.ftdfpdy = ftdfpdy;
	}

	public Short getFtdfpyr() {
		return ftdfpyr;
	}

	public void setFtdfpyr(Short ftdfpyr) {
		this.ftdfpyr = ftdfpyr;
	}

	public Short getFtdfddic() {
		return ftdfddic;
	}

	public void setFtdfddic(Short ftdfddic) {
		this.ftdfddic = ftdfddic;
	}

	public String getFtdfddid() {
		return ftdfddid;
	}

	public void setFtdfddid(String ftdfddid) {
		this.ftdfddid = ftdfddid;
	}

	public Short getFtdfdadn() {
		return ftdfdadn;
	}

	public void setFtdfdadn(Short ftdfdadn) {
		this.ftdfdadn = ftdfdadn;
	}

	public String getFtdfdadv() {
		return ftdfdadv;
	}

	public void setFtdfdadv(String ftdfdadv) {
		this.ftdfdadv = ftdfdadv;
	}

	public Short getFtdfdman() {
		return ftdfdman;
	}

	public void setFtdfdman(Short ftdfdman) {
		this.ftdfdman = ftdfdman;
	}

	public String getFtdfdmao() {
		return ftdfdmao;
	}

	public void setFtdfdmao(String ftdfdmao) {
		this.ftdfdmao = ftdfdmao;
	}

	public String getFtdfdmam() {
		return ftdfdmam;
	}

	public void setFtdfdmam(String ftdfdmam) {
		this.ftdfdmam = ftdfdmam;
	}

	public Short getFtdfdqu() {
		return ftdfdqu;
	}

	public void setFtdfdqu(Short ftdfdqu) {
		this.ftdfdqu = ftdfdqu;
	}

	public Short getFtdamypt() {
		return ftdamypt;
	}

	public void setFtdamypt(Short ftdamypt) {
		this.ftdamypt = ftdamypt;
	}

	public Short getFtdammo() {
		return ftdammo;
	}

	public void setFtdammo(Short ftdammo) {
		this.ftdammo = ftdammo;
	}

	public Short getFtdamdy() {
		return ftdamdy;
	}

	public void setFtdamdy(Short ftdamdy) {
		this.ftdamdy = ftdamdy;
	}

	public Short getFtdamyr() {
		return ftdamyr;
	}

	public void setFtdamyr(Short ftdamyr) {
		this.ftdamyr = ftdamyr;
	}

	public Short getFtdamdic() {
		return ftdamdic;
	}

	public void setFtdamdic(Short ftdamdic) {
		this.ftdamdic = ftdamdic;
	}

	public String getFtdamdid() {
		return ftdamdid;
	}

	public void setFtdamdid(String ftdamdid) {
		this.ftdamdid = ftdamdid;
	}

	public Short getFtdamlig() {
		return ftdamlig;
	}

	public void setFtdamlig(Short ftdamlig) {
		this.ftdamlig = ftdamlig;
	}

	public String getFtdamlio() {
		return ftdamlio;
	}

	public void setFtdamlio(String ftdamlio) {
		this.ftdamlio = ftdamlio;
	}

	public Short getFtdamadn() {
		return ftdamadn;
	}

	public void setFtdamadn(Short ftdamadn) {
		this.ftdamadn = ftdamadn;
	}

	public String getFtdamadv() {
		return ftdamadv;
	}

	public void setFtdamadv(String ftdamadv) {
		this.ftdamadv = ftdamadv;
	}

	public Short getFtdamman() {
		return ftdamman;
	}

	public void setFtdamman(Short ftdamman) {
		this.ftdamman = ftdamman;
	}

	public String getFtdammao() {
		return ftdammao;
	}

	public void setFtdammao(String ftdammao) {
		this.ftdammao = ftdammao;
	}

	public String getFtdammam() {
		return ftdammam;
	}

	public void setFtdammam(String ftdammam) {
		this.ftdammam = ftdammam;
	}

	public Short getFtdamqu() {
		return ftdamqu;
	}

	public void setFtdamqu(Short ftdamqu) {
		this.ftdamqu = ftdamqu;
	}

	public Short getFtdother() {
		return ftdother;
	}

	public void setFtdother(Short ftdother) {
		this.ftdother = ftdother;
	}

	public Short getFtdotdop() {
		return ftdotdop;
	}

	public void setFtdotdop(Short ftdotdop) {
		this.ftdotdop = ftdotdop;
	}

	public Short getFtdotser() {
		return ftdotser;
	}

	public void setFtdotser(Short ftdotser) {
		this.ftdotser = ftdotser;
	}

	public Short getFtdotcho() {
		return ftdotcho;
	}

	public void setFtdotcho(Short ftdotcho) {
		this.ftdotcho = ftdotcho;
	}

	public Short getFtdotano() {
		return ftdotano;
	}

	public void setFtdotano(Short ftdotano) {
		this.ftdotano = ftdotano;
	}

	public String getFtdotans() {
		return ftdotans;
	}

	public void setFtdotans(String ftdotans) {
		this.ftdotans = ftdotans;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdsmri",
				"ftdsmmo",
				"ftdsmdy",
				"ftdsmyr",
				"ftdsmdic",
				"ftdsmadn",
				"ftdsmman",
				"ftdsmfs",
				"ftdsmqu",
				"ftdfdgpt",
				"ftdfpmo",
				"ftdfpdy",
				"ftdfpyr",
				"ftdfddic",
				"ftdfdadn",
				"ftdfdman",
				"ftdfdqu",
				"ftdamypt",
				"ftdammo",
				"ftdamdy",
				"ftdamyr",
				"ftdamdic",
				"ftdamlig",
				"ftdamadn",
				"ftdamman",
				"ftdamqu",
				"ftdother",
				"ftdotdop",
				"ftdotser",
				"ftdotcho",
				"ftdotano"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdsmri())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmmo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmdy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmyr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmdic())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmdis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmadn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmadv())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmman())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmmao())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmmam())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmfs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmfso())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmqu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgpt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfpmo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfpdy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfpyr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfddic())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfddid())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdadn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdadv())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdman())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdmao())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdmam())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdqu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamypt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdammo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamdy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamdic())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamdid())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamlig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamlio())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamadn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamadv())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamman())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdammao())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdammam())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamqu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdother())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdotdop())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdotser())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdotcho())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdotano())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdotans())).append(",");
		return buffer.toString();
	}
	
}


