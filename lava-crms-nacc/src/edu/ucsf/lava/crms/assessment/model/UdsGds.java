package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsGds extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsGds.class);
	public static final String UDS_GDS_FORMID = "B6";
	public UdsGds() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsGds(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_GDS_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short noGds;
	private Short satis;
	private Short dropAct;
	private Short empty;
	private Short bored;
	private Short spirits;
	private Short afraid;
	private Short happy;
	private Short helpless;
	private Short stayhome;
	private Short memprob;
	private Short wondrful;
	private Short wrthless;
	private Short energy;
	private Short hopeless;
	private Short better;
	private Short gds;

	public Short getAfraid() {
		return afraid;
	}

	public void setAfraid(Short afraid) {
		this.afraid = afraid;
	}

	public Short getBetter() {
		return better;
	}

	public void setBetter(Short better) {
		this.better = better;
	}

	public Short getBored() {
		return bored;
	}

	public void setBored(Short bored) {
		this.bored = bored;
	}

	public Short getDropAct() {
		return dropAct;
	}

	public void setDropAct(Short dropAct) {
		this.dropAct = dropAct;
	}

	public Short getEmpty() {
		return empty;
	}

	public void setEmpty(Short empty) {
		this.empty = empty;
	}

	public Short getEnergy() {
		return energy;
	}

	public void setEnergy(Short energy) {
		this.energy = energy;
	}

	public Short getGds() {
		return gds;
	}

	public void setGds(Short gds) {
		this.gds = gds;
	}

	public Short getHappy() {
		return happy;
	}

	public void setHappy(Short happy) {
		this.happy = happy;
	}

	public Short getHelpless() {
		return helpless;
	}

	public void setHelpless(Short helpless) {
		this.helpless = helpless;
	}

	public Short getHopeless() {
		return hopeless;
	}

	public void setHopeless(Short hopeless) {
		this.hopeless = hopeless;
	}

	public Short getMemprob() {
		return memprob;
	}

	public void setMemprob(Short memprob) {
		this.memprob = memprob;
	}

	public Short getNoGds() {
		return noGds;
	}

	public void setNoGds(Short noGds) {
		this.noGds = noGds;
	}

	public Short getSatis() {
		return satis;
	}

	public void setSatis(Short satis) {
		this.satis = satis;
	}

	public Short getSpirits() {
		return spirits;
	}

	public void setSpirits(Short spirits) {
		this.spirits = spirits;
	}

	public Short getStayhome() {
		return stayhome;
	}

	public void setStayhome(Short stayhome) {
		this.stayhome = stayhome;
	}

	public Short getWondrful() {
		return wondrful;
	}

	public void setWondrful(Short wondrful) {
		this.wondrful = wondrful;
	}

	public Short getWrthless() {
		return wrthless;
	}

	public void setWrthless(Short wrthless) {
		this.wrthless = wrthless;
	}

	
	public String[] getRequiredResultFields() {
		return new String[] {
				"noGds",
				"satis",
				"dropAct",
				"empty",
				"bored",
				"spirits",
				"afraid",
				"happy",
				"helpless",
				"stayhome",
				"memprob",
				"wondrful",
				"wrthless",
				"energy",
				"hopeless",
				"better"
		};
	}
	
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getNoGds())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSatis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDropAct())).append(",");
		buffer.append(UdsUploadUtils.formatField(getEmpty())).append(",");
		buffer.append(UdsUploadUtils.formatField(getBored())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSpirits())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAfraid())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHappy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHelpless())).append(",");
		buffer.append(UdsUploadUtils.formatField(getStayhome())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMemprob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getWondrful())).append(",");
		buffer.append(UdsUploadUtils.formatField(getWrthless())).append(",");
		buffer.append(UdsUploadUtils.formatField(getEnergy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHopeless())).append(",");
		buffer.append(UdsUploadUtils.formatField(getBetter())).append(",");
		buffer.append(UdsUploadUtils.formatField(getGds()));
		return buffer.toString();
	}

	

	
}


