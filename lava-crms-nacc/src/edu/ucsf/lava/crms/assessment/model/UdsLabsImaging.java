package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsLabsImaging extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsLabsImaging.class);
	public static final String UDS_LABSIMAGING_FORMID = "E1";
	public UdsLabsImaging() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsLabsImaging(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_LABSIMAGING_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short ctFlm;
	private Short ctDig;
	private Short mri1Flm;
	private Short mri1Dig;
	private Short mri2Flm;
	private Short mri2Dig;
	private Short mri3Flm;
	private Short mri3Dig;
	private Short mriSpFlm;
	private Short mriSpDig;
	private Short spectFlm;
	private Short spectDig;
	private Short petFlm;
	private Short petDig;
	private Short dna;
	private Short csfAntem;
	private Short serum;
	private Short apoe;
	
	public Short getApoe() {
		return apoe;
	}

	public void setApoe(Short apoe) {
		this.apoe = apoe;
	}

	public Short getCsfAntem() {
		return csfAntem;
	}

	public void setCsfAntem(Short csfAntem) {
		this.csfAntem = csfAntem;
	}

	public Short getCtDig() {
		return ctDig;
	}

	public void setCtDig(Short ctDig) {
		this.ctDig = ctDig;
	}

	public Short getCtFlm() {
		return ctFlm;
	}

	public void setCtFlm(Short ctFlm) {
		this.ctFlm = ctFlm;
	}

	public Short getDna() {
		return dna;
	}

	public void setDna(Short dna) {
		this.dna = dna;
	}

	public Short getMri1Dig() {
		return mri1Dig;
	}

	public void setMri1Dig(Short mri1Dig) {
		this.mri1Dig = mri1Dig;
	}

	public Short getMri1Flm() {
		return mri1Flm;
	}

	public void setMri1Flm(Short mri1Flm) {
		this.mri1Flm = mri1Flm;
	}

	public Short getMri2Dig() {
		return mri2Dig;
	}

	public void setMri2Dig(Short mri2Dig) {
		this.mri2Dig = mri2Dig;
	}

	public Short getMri2Flm() {
		return mri2Flm;
	}

	public void setMri2Flm(Short mri2Flm) {
		this.mri2Flm = mri2Flm;
	}

	public Short getMri3Dig() {
		return mri3Dig;
	}

	public void setMri3Dig(Short mri3Dig) {
		this.mri3Dig = mri3Dig;
	}

	public Short getMri3Flm() {
		return mri3Flm;
	}

	public void setMri3Flm(Short mri3Flm) {
		this.mri3Flm = mri3Flm;
	}

	public Short getMriSpDig() {
		return mriSpDig;
	}

	public void setMriSpDig(Short mriSpDig) {
		this.mriSpDig = mriSpDig;
	}

	public Short getMriSpFlm() {
		return mriSpFlm;
	}

	public void setMriSpFlm(Short mriSpFlm) {
		this.mriSpFlm = mriSpFlm;
	}

	public Short getPetDig() {
		return petDig;
	}

	public void setPetDig(Short petDig) {
		this.petDig = petDig;
	}

	public Short getPetFlm() {
		return petFlm;
	}

	public void setPetFlm(Short petFlm) {
		this.petFlm = petFlm;
	}

	public Short getSerum() {
		return serum;
	}

	public void setSerum(Short serum) {
		this.serum = serum;
	}

	public Short getSpectDig() {
		return spectDig;
	}

	public void setSpectDig(Short spectDig) {
		this.spectDig = spectDig;
	}

	public Short getSpectFlm() {
		return spectFlm;
	}

	public void setSpectFlm(Short spectFlm) {
		this.spectFlm = spectFlm;
	}



	public String[] getRequiredResultFields() {
		return new String[] {
				"ctFlm",
				"ctDig",
				"mri1Flm",
				"mri1Dig",
				"mri2Flm",
				"mri2Dig",
				"mri3Flm",
				"mri3Dig",
				"mriSpFlm",
				"mriSpDig",
				"spectFlm",
				"spectDig",
				"petFlm",
				"petDig",
				"dna",
				"csfAntem",
				"serum",
				"apoe"
		};
	}

	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getCtFlm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCtDig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMri1Flm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMri1Dig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMri2Flm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMri2Dig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMri3Flm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMri3Dig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMriSpFlm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMriSpDig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSpectFlm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSpectDig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPetFlm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPetDig())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDna())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCsfAntem())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSerum())).append(",");
		buffer.append(UdsUploadUtils.formatField(getApoe()));
	return buffer.toString();
	}
	
	
}


