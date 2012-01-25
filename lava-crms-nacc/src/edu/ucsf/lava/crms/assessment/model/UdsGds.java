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
				"noGds"
				/* fields are allowed to be unanswered
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
				*/
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

	@Override
	public void updateCalculatedFields() {
		super.updateCalculatedFields();

		// count how many questions are answered
		short num_answered = (short)0;
		if (this.satis != null    && (this.satis.equals((short)0) || this.satis.equals((short)1)))        num_answered++;
		if (this.dropAct != null  && (this.dropAct.equals((short)0) || this.dropAct.equals((short)1)))    num_answered++;
		if (this.empty != null    && (this.empty.equals((short)0) || this.empty.equals((short)1)))        num_answered++;
		if (this.bored != null    && (this.bored.equals((short)0) || this.bored.equals((short)1)))        num_answered++;
		if (this.spirits != null  && (this.spirits.equals((short)0) || this.spirits.equals((short)1)))    num_answered++;
		if (this.afraid != null   && (this.afraid.equals((short)0) || this.afraid.equals((short)1)))      num_answered++;
		if (this.happy != null    && (this.happy.equals((short)0) || this.happy.equals((short)1)))        num_answered++;
		if (this.helpless != null && (this.helpless.equals((short)0) || this.helpless.equals((short)1)))  num_answered++;
		if (this.stayhome != null && (this.stayhome.equals((short)0) || this.stayhome.equals((short)1)))  num_answered++;
		if (this.memprob != null  && (this.memprob.equals((short)0) || this.memprob.equals((short)1)))    num_answered++;
		if (this.wondrful != null && (this.wondrful.equals((short)0) || this.wondrful.equals((short)1)))  num_answered++;
		if (this.wrthless != null && (this.wrthless.equals((short)0) || this.wrthless.equals((short)1)))  num_answered++;
		if (this.energy != null   && (this.energy.equals((short)0) || this.energy.equals((short)1)))      num_answered++;
		if (this.hopeless != null && (this.hopeless.equals((short)0) || this.hopeless.equals((short)1)))  num_answered++;
		if (this.better != null   && (this.better.equals((short)0) || this.better.equals((short)1)))      num_answered++;
		
		// 12 is the required number of questions that must be answered to be considered complete
		// only consider the number answered if the user never filled noGds or it was filled as completed (0)
		if ((this.noGds == null) || this.noGds.equals((short)0)) {
			if (num_answered < 12) { 
				this.noGds = (short)1;  // Yes, subject was NOT able to complete the GDS
			} else {
				this.noGds = (short)0;  // No, subject WAS able to complete the GDS
			}
		}
		
		if (this.noGds != null
			&& this.noGds.equals((short)1)) {
			// then "Unable to Complete" and form says to fill in 88 for gds
			this.gds = (short)88;
		}
		else {
			// do calculation for this.gds
			//   Allow fields to have been null, in case wasn't answered
			short counter = (short)0;
			if (this.satis != null    && this.satis.equals((short)1))    counter++;
			if (this.dropAct != null  && this.dropAct.equals((short)1))  counter++;
			if (this.empty != null    && this.empty.equals((short)1))    counter++;
			if (this.bored != null    && this.bored.equals((short)1))    counter++;
			if (this.spirits != null  && this.spirits.equals((short)1))  counter++;
			if (this.afraid != null   && this.afraid.equals((short)1))   counter++;
			if (this.happy != null    && this.happy.equals((short)1))    counter++;
			if (this.helpless != null && this.helpless.equals((short)1)) counter++;
			if (this.stayhome != null && this.stayhome.equals((short)1)) counter++;
			if (this.memprob != null  && this.memprob.equals((short)1))  counter++;
			if (this.wondrful != null && this.wondrful.equals((short)1)) counter++;
			if (this.wrthless != null && this.wrthless.equals((short)1)) counter++;
			if (this.energy != null   && this.energy.equals((short)1))   counter++;
			if (this.hopeless != null && this.hopeless.equals((short)1)) counter++;
			if (this.better != null   && this.better.equals((short)1))   counter++;
			
			this.gds = counter;
		}
	}

	

	
}


