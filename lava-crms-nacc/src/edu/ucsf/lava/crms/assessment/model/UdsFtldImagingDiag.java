package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldImagingDiag extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldImagingDiag.class);
	public static final String UDS_FTLD_IMAGINGDIAG_FORMID = "E3F";
	public UdsFtldImagingDiag() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldImagingDiag(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_IMAGINGDIAG_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdidiag;
	protected Short ftdsmrio;
	protected Short ftdmrifa;
	protected Short ftdmrirf;
	protected Short ftdmrilf;
	protected Short ftdmrirt;
	protected Short ftdmrilt;
	protected Short ftdmrirm;
	protected Short ftdmrilm;
	protected Short ftdmrirp;
	protected Short ftdmrilp;
	protected Short ftdmrirb;
	protected Short ftdmrilb;
	protected Short ftdmriob;
	protected String ftdmrios;
	protected Short ftdfdgpe;
	protected Short ftdfdgfh;
	protected Short ftdfdgrf;
	protected Short ftdfdglf;
	protected Short ftdfdgrt;
	protected Short ftdfdglt;
	protected Short ftdfdgrm;
	protected Short ftdfdglm;
	protected Short ftdfdgrp;
	protected Short ftdfdglp;
	protected Short ftdfdgrb;
	protected Short ftdfdglb;
	protected Short ftdfdgoa;
	protected String ftdfdgos;
	protected Short ftdamyp;
	protected Short ftdamyvi;
	protected Short ftdamyrf;
	protected Short ftdamylf;
	protected Short ftdamyrt;
	protected Short ftdamylt;
	protected Short ftdamyrm;
	protected Short ftdamylm;
	protected Short ftdamyrp;
	protected Short ftdamylp;
	protected Short ftdamyrb;
	protected Short ftdamylb;
	protected Short ftdamyoa;
	protected String ftdamyos;
	protected Short ftdcbfsp;
	protected Short ftdcbfvi;
	protected Short ftdcbfrf;
	protected Short ftdcbflf;
	protected Short ftdcbfrt;
	protected Short ftdcbflt;
	protected Short ftdcbfrm;
	protected Short ftdcbflm;
	protected Short ftdcbfrp;
	protected Short ftdcbflp;
	protected Short ftdcbfrb;
	protected Short ftdcbflb;
	protected Short ftdcbfoa;
	protected String ftdcbfos;
	protected Short ftdothi;
	protected String ftdothis;
	

	public Short getFtdidiag() {
		return ftdidiag;
	}

	public void setFtdidiag(Short ftdidiag) {
		this.ftdidiag = ftdidiag;
	}

	public Short getFtdsmrio() {
		return ftdsmrio;
	}

	public void setFtdsmrio(Short ftdsmrio) {
		this.ftdsmrio = ftdsmrio;
	}

	public Short getFtdmrifa() {
		return ftdmrifa;
	}

	public void setFtdmrifa(Short ftdmrifa) {
		this.ftdmrifa = ftdmrifa;
	}

	public Short getFtdmrirf() {
		return ftdmrirf;
	}

	public void setFtdmrirf(Short ftdmrirf) {
		this.ftdmrirf = ftdmrirf;
	}

	public Short getFtdmrilf() {
		return ftdmrilf;
	}

	public void setFtdmrilf(Short ftdmrilf) {
		this.ftdmrilf = ftdmrilf;
	}

	public Short getFtdmrirt() {
		return ftdmrirt;
	}

	public void setFtdmrirt(Short ftdmrirt) {
		this.ftdmrirt = ftdmrirt;
	}

	public Short getFtdmrilt() {
		return ftdmrilt;
	}

	public void setFtdmrilt(Short ftdmrilt) {
		this.ftdmrilt = ftdmrilt;
	}

	public Short getFtdmrirm() {
		return ftdmrirm;
	}

	public void setFtdmrirm(Short ftdmrirm) {
		this.ftdmrirm = ftdmrirm;
	}

	public Short getFtdmrilm() {
		return ftdmrilm;
	}

	public void setFtdmrilm(Short ftdmrilm) {
		this.ftdmrilm = ftdmrilm;
	}

	public Short getFtdmrirp() {
		return ftdmrirp;
	}

	public void setFtdmrirp(Short ftdmrirp) {
		this.ftdmrirp = ftdmrirp;
	}

	public Short getFtdmrilp() {
		return ftdmrilp;
	}

	public void setFtdmrilp(Short ftdmrilp) {
		this.ftdmrilp = ftdmrilp;
	}

	public Short getFtdmrirb() {
		return ftdmrirb;
	}

	public void setFtdmrirb(Short ftdmrirb) {
		this.ftdmrirb = ftdmrirb;
	}

	public Short getFtdmrilb() {
		return ftdmrilb;
	}

	public void setFtdmrilb(Short ftdmrilb) {
		this.ftdmrilb = ftdmrilb;
	}

	public Short getFtdmriob() {
		return ftdmriob;
	}

	public void setFtdmriob(Short ftdmriob) {
		this.ftdmriob = ftdmriob;
	}

	public String getFtdmrios() {
		return ftdmrios;
	}

	public void setFtdmrios(String ftdmrios) {
		this.ftdmrios = ftdmrios;
	}

	public Short getFtdfdgpe() {
		return ftdfdgpe;
	}

	public void setFtdfdgpe(Short ftdfdgpe) {
		this.ftdfdgpe = ftdfdgpe;
	}

	public Short getFtdfdgfh() {
		return ftdfdgfh;
	}

	public void setFtdfdgfh(Short ftdfdgfh) {
		this.ftdfdgfh = ftdfdgfh;
	}

	public Short getFtdfdgrf() {
		return ftdfdgrf;
	}

	public void setFtdfdgrf(Short ftdfdgrf) {
		this.ftdfdgrf = ftdfdgrf;
	}

	public Short getFtdfdglf() {
		return ftdfdglf;
	}

	public void setFtdfdglf(Short ftdfdglf) {
		this.ftdfdglf = ftdfdglf;
	}

	public Short getFtdfdgrt() {
		return ftdfdgrt;
	}

	public void setFtdfdgrt(Short ftdfdgrt) {
		this.ftdfdgrt = ftdfdgrt;
	}

	public Short getFtdfdglt() {
		return ftdfdglt;
	}

	public void setFtdfdglt(Short ftdfdglt) {
		this.ftdfdglt = ftdfdglt;
	}

	public Short getFtdfdgrm() {
		return ftdfdgrm;
	}

	public void setFtdfdgrm(Short ftdfdgrm) {
		this.ftdfdgrm = ftdfdgrm;
	}

	public Short getFtdfdglm() {
		return ftdfdglm;
	}

	public void setFtdfdglm(Short ftdfdglm) {
		this.ftdfdglm = ftdfdglm;
	}

	public Short getFtdfdgrp() {
		return ftdfdgrp;
	}

	public void setFtdfdgrp(Short ftdfdgrp) {
		this.ftdfdgrp = ftdfdgrp;
	}

	public Short getFtdfdglp() {
		return ftdfdglp;
	}

	public void setFtdfdglp(Short ftdfdglp) {
		this.ftdfdglp = ftdfdglp;
	}

	public Short getFtdfdgrb() {
		return ftdfdgrb;
	}

	public void setFtdfdgrb(Short ftdfdgrb) {
		this.ftdfdgrb = ftdfdgrb;
	}

	public Short getFtdfdglb() {
		return ftdfdglb;
	}

	public void setFtdfdglb(Short ftdfdglb) {
		this.ftdfdglb = ftdfdglb;
	}

	public Short getFtdfdgoa() {
		return ftdfdgoa;
	}

	public void setFtdfdgoa(Short ftdfdgoa) {
		this.ftdfdgoa = ftdfdgoa;
	}

	public String getFtdfdgos() {
		return ftdfdgos;
	}

	public void setFtdfdgos(String ftdfdgos) {
		this.ftdfdgos = ftdfdgos;
	}

	public Short getFtdamyp() {
		return ftdamyp;
	}

	public void setFtdamyp(Short ftdamyp) {
		this.ftdamyp = ftdamyp;
	}

	public Short getFtdamyvi() {
		return ftdamyvi;
	}

	public void setFtdamyvi(Short ftdamyvi) {
		this.ftdamyvi = ftdamyvi;
	}

	public Short getFtdamyrf() {
		return ftdamyrf;
	}

	public void setFtdamyrf(Short ftdamyrf) {
		this.ftdamyrf = ftdamyrf;
	}

	public Short getFtdamylf() {
		return ftdamylf;
	}

	public void setFtdamylf(Short ftdamylf) {
		this.ftdamylf = ftdamylf;
	}

	public Short getFtdamyrt() {
		return ftdamyrt;
	}

	public void setFtdamyrt(Short ftdamyrt) {
		this.ftdamyrt = ftdamyrt;
	}

	public Short getFtdamylt() {
		return ftdamylt;
	}

	public void setFtdamylt(Short ftdamylt) {
		this.ftdamylt = ftdamylt;
	}

	public Short getFtdamyrm() {
		return ftdamyrm;
	}

	public void setFtdamyrm(Short ftdamyrm) {
		this.ftdamyrm = ftdamyrm;
	}

	public Short getFtdamylm() {
		return ftdamylm;
	}

	public void setFtdamylm(Short ftdamylm) {
		this.ftdamylm = ftdamylm;
	}

	public Short getFtdamyrp() {
		return ftdamyrp;
	}

	public void setFtdamyrp(Short ftdamyrp) {
		this.ftdamyrp = ftdamyrp;
	}

	public Short getFtdamylp() {
		return ftdamylp;
	}

	public void setFtdamylp(Short ftdamylp) {
		this.ftdamylp = ftdamylp;
	}

	public Short getFtdamyrb() {
		return ftdamyrb;
	}

	public void setFtdamyrb(Short ftdamyrb) {
		this.ftdamyrb = ftdamyrb;
	}

	public Short getFtdamylb() {
		return ftdamylb;
	}

	public void setFtdamylb(Short ftdamylb) {
		this.ftdamylb = ftdamylb;
	}

	public Short getFtdamyoa() {
		return ftdamyoa;
	}

	public void setFtdamyoa(Short ftdamyoa) {
		this.ftdamyoa = ftdamyoa;
	}

	public String getFtdamyos() {
		return ftdamyos;
	}

	public void setFtdamyos(String ftdamyos) {
		this.ftdamyos = ftdamyos;
	}

	public Short getFtdcbfsp() {
		return ftdcbfsp;
	}

	public void setFtdcbfsp(Short ftdcbfsp) {
		this.ftdcbfsp = ftdcbfsp;
	}

	public Short getFtdcbfvi() {
		return ftdcbfvi;
	}

	public void setFtdcbfvi(Short ftdcbfvi) {
		this.ftdcbfvi = ftdcbfvi;
	}

	public Short getFtdcbfrf() {
		return ftdcbfrf;
	}

	public void setFtdcbfrf(Short ftdcbfrf) {
		this.ftdcbfrf = ftdcbfrf;
	}

	public Short getFtdcbflf() {
		return ftdcbflf;
	}

	public void setFtdcbflf(Short ftdcbflf) {
		this.ftdcbflf = ftdcbflf;
	}

	public Short getFtdcbfrt() {
		return ftdcbfrt;
	}

	public void setFtdcbfrt(Short ftdcbfrt) {
		this.ftdcbfrt = ftdcbfrt;
	}

	public Short getFtdcbflt() {
		return ftdcbflt;
	}

	public void setFtdcbflt(Short ftdcbflt) {
		this.ftdcbflt = ftdcbflt;
	}

	public Short getFtdcbfrm() {
		return ftdcbfrm;
	}

	public void setFtdcbfrm(Short ftdcbfrm) {
		this.ftdcbfrm = ftdcbfrm;
	}

	public Short getFtdcbflm() {
		return ftdcbflm;
	}

	public void setFtdcbflm(Short ftdcbflm) {
		this.ftdcbflm = ftdcbflm;
	}

	public Short getFtdcbfrp() {
		return ftdcbfrp;
	}

	public void setFtdcbfrp(Short ftdcbfrp) {
		this.ftdcbfrp = ftdcbfrp;
	}

	public Short getFtdcbflp() {
		return ftdcbflp;
	}

	public void setFtdcbflp(Short ftdcbflp) {
		this.ftdcbflp = ftdcbflp;
	}

	public Short getFtdcbfrb() {
		return ftdcbfrb;
	}

	public void setFtdcbfrb(Short ftdcbfrb) {
		this.ftdcbfrb = ftdcbfrb;
	}

	public Short getFtdcbflb() {
		return ftdcbflb;
	}

	public void setFtdcbflb(Short ftdcbflb) {
		this.ftdcbflb = ftdcbflb;
	}

	public Short getFtdcbfoa() {
		return ftdcbfoa;
	}

	public void setFtdcbfoa(Short ftdcbfoa) {
		this.ftdcbfoa = ftdcbfoa;
	}

	public String getFtdcbfos() {
		return ftdcbfos;
	}

	public void setFtdcbfos(String ftdcbfos) {
		this.ftdcbfos = ftdcbfos;
	}

	public Short getFtdothi() {
		return ftdothi;
	}

	public void setFtdothi(Short ftdothi) {
		this.ftdothi = ftdothi;
	}

	public String getFtdothis() {
		return ftdothis;
	}

	public void setFtdothis(String ftdothis) {
		this.ftdothis = ftdothis;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdidiag",
				"ftdsmrio",
				"ftdmrifa",
				"ftdmrirf",
				"ftdmrilf",
				"ftdmrirt",
				"ftdmrilt",
				"ftdmrirm",
				"ftdmrilm",
				"ftdmrirp",
				"ftdmrilp",
				"ftdmrirb",
				"ftdmrilb",
				"ftdmriob",
				"ftdfdgpe",
				"ftdfdgfh",
				"ftdfdgrf",
				"ftdfdglf",
				"ftdfdgrt",
				"ftdfdglt",
				"ftdfdgrm",
				"ftdfdglm",
				"ftdfdgrp",
				"ftdfdglp",
				"ftdfdgrb",
				"ftdfdglb",
				"ftdfdgoa",
				"ftdamyp",
				"ftdamyvi",
				"ftdamyrf",
				"ftdamylf",
				"ftdamyrt",
				"ftdamylt",
				"ftdamyrm",
				"ftdamylm",
				"ftdamyrp",
				"ftdamylp",
				"ftdamyrb",
				"ftdamylb",
				"ftdamyoa",
				"ftdcbfsp",
				"ftdcbfvi",
				"ftdcbfrf",
				"ftdcbflf",
				"ftdcbfrt",
				"ftdcbflt",
				"ftdcbfrm",
				"ftdcbflm",
				"ftdcbfrp",
				"ftdcbflp",
				"ftdcbfrb",
				"ftdcbflb",
				"ftdcbfoa",
				"ftdothi"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdidiag())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsmrio())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrifa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrirf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrilf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrirt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrilt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrirm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrilm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrirp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrilp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrirb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrilb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmriob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmrios())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgpe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgfh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgrf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdglf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgrt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdglt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgrm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdglm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgrp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdglp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgrb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdglb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgoa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfdgos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyvi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyrf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamylf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyrt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamylt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyrm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamylm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyrp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamylp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyrb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamylb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyoa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdamyos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfsp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfvi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfrf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbflf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfrt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbflt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfrm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbflm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfrp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbflp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfrb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbflb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfoa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcbfos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdothi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdothis())).append(",");
		return buffer.toString();
	}
	
}


