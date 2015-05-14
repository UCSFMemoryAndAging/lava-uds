package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.controller.CalcUtils;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldIri extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldIri.class);
	public static final int UDS_C5F_ERROR_CODE_CANNOT_CALCULATE = 88;	
	public static final int REVERSE = 6;	
	public static final String UDS_FTLD_IRI_FORMID = "C5F";
	public UdsFtldIri() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldIri(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_IRI_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdcpc5f;
	protected Short ftdinsex;
	protected Short ftdinfmo;
	protected Short ftdinfyr;
	protected Short ftdinfre;
	protected Short ftdfeel;
	protected Short ftddiff;
	protected Short ftdsorr;
	protected Short ftdside;
	protected Short ftdadvan;
	protected Short ftdimag;
	protected Short ftdmisf;
	protected Short ftdwaste;
	protected Short ftdpity;
	protected Short ftdqtouc;
	protected Short ftdsides;
	protected Short ftdsofth;
	protected Short ftdupset;
	protected Short ftdcriti;
	protected Short ftdiriec;
	protected Short ftdiript;

	public Short getFtdcpc5f() {
		return ftdcpc5f;
	}

	public void setFtdcpc5f(Short ftdcpc5f) {
		this.ftdcpc5f = ftdcpc5f;
	}

	public Short getFtdinsex() {
		return ftdinsex;
	}

	public void setFtdinsex(Short ftdinsex) {
		this.ftdinsex = ftdinsex;
	}

	public Short getFtdinfmo() {
		return ftdinfmo;
	}

	public void setFtdinfmo(Short ftdinfmo) {
		this.ftdinfmo = ftdinfmo;
	}

	public Short getFtdinfyr() {
		return ftdinfyr;
	}

	public void setFtdinfyr(Short ftdinfyr) {
		this.ftdinfyr = ftdinfyr;
	}

	public Short getFtdinfre() {
		return ftdinfre;
	}

	public void setFtdinfre(Short ftdinfre) {
		this.ftdinfre = ftdinfre;
	}

	public Short getFtdfeel() {
		return ftdfeel;
	}

	public void setFtdfeel(Short ftdfeel) {
		this.ftdfeel = ftdfeel;
	}

	public Short getFtddiff() {
		return ftddiff;
	}

	public void setFtddiff(Short ftddiff) {
		this.ftddiff = ftddiff;
	}

	public Short getFtdsorr() {
		return ftdsorr;
	}

	public void setFtdsorr(Short ftdsorr) {
		this.ftdsorr = ftdsorr;
	}

	public Short getFtdside() {
		return ftdside;
	}

	public void setFtdside(Short ftdside) {
		this.ftdside = ftdside;
	}

	public Short getFtdadvan() {
		return ftdadvan;
	}

	public void setFtdadvan(Short ftdadvan) {
		this.ftdadvan = ftdadvan;
	}

	public Short getFtdimag() {
		return ftdimag;
	}

	public void setFtdimag(Short ftdimag) {
		this.ftdimag = ftdimag;
	}

	public Short getFtdmisf() {
		return ftdmisf;
	}

	public void setFtdmisf(Short ftdmisf) {
		this.ftdmisf = ftdmisf;
	}

	public Short getFtdwaste() {
		return ftdwaste;
	}

	public void setFtdwaste(Short ftdwaste) {
		this.ftdwaste = ftdwaste;
	}

	public Short getFtdpity() {
		return ftdpity;
	}

	public void setFtdpity(Short ftdpity) {
		this.ftdpity = ftdpity;
	}

	public Short getFtdqtouc() {
		return ftdqtouc;
	}

	public void setFtdqtouc(Short ftdqtouc) {
		this.ftdqtouc = ftdqtouc;
	}

	public Short getFtdsides() {
		return ftdsides;
	}

	public void setFtdsides(Short ftdsides) {
		this.ftdsides = ftdsides;
	}

	public Short getFtdsofth() {
		return ftdsofth;
	}

	public void setFtdsofth(Short ftdsofth) {
		this.ftdsofth = ftdsofth;
	}

	public Short getFtdupset() {
		return ftdupset;
	}

	public void setFtdupset(Short ftdupset) {
		this.ftdupset = ftdupset;
	}

	public Short getFtdcriti() {
		return ftdcriti;
	}

	public void setFtdcriti(Short ftdcriti) {
		this.ftdcriti = ftdcriti;
	}

	public Short getFtdiriec() {
		return ftdiriec;
	}

	public void setFtdiriec(Short ftdiriec) {
		this.ftdiriec = ftdiriec;
	}

	public Short getFtdiript() {
		return ftdiript;
	}

	public void setFtdiript(Short ftdiript) {
		this.ftdiript = ftdiript;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdcpc5f",
				"ftdinsex",
				"ftdinfmo",
				"ftdinfyr",
				"ftdinfre",
				"ftdfeel",
				"ftddiff",
				"ftdsorr",
				"ftdside",
				"ftdadvan",
				"ftdimag",
				"ftdmisf",
				"ftdwaste",
				"ftdpity",
				"ftdqtouc",
				"ftdsides",
				"ftdsofth",
				"ftdupset",
				"ftdcriti"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdcpc5f())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinsex())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinfmo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinfyr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinfre())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfeel())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddiff())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsorr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdside())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdadvan())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdimag())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmisf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdwaste())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdpity())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdqtouc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsides())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsofth())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdupset())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcriti())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdiriec())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdiript()));		
		return buffer.toString();
	}
	

	public void beforeUpdate() {

		super.beforeUpdate();

		this.ftdiriec = CalcUtils.add(new Short[] {
				this.ftdfeel,
				CalcUtils.reverseScore(this.ftdsorr, UdsFtldIri.REVERSE),
				this.ftdadvan,
				CalcUtils.reverseScore(this.ftdmisf, UdsFtldIri.REVERSE),
				CalcUtils.reverseScore(this.ftdpity, UdsFtldIri.REVERSE),
				this.ftdqtouc,
				this.ftdsofth
		}).shortValue();
		if (this.ftdiriec == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdiriec = UDS_C5F_ERROR_CODE_CANNOT_CALCULATE;

		this.ftdiript = CalcUtils.add(new Short[] {
				CalcUtils.reverseScore(this.ftddiff, UdsFtldIri.REVERSE),
				this.ftdside,
				this.ftdimag,
				CalcUtils.reverseScore(this.ftdwaste, UdsFtldIri.REVERSE),
				this.ftdsides,
				this.ftdupset,
				this.ftdcriti
		}).shortValue();
		if (this.ftdiript == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdiript = UDS_C5F_ERROR_CODE_CANNOT_CALCULATE;
		
	}		
	
}


