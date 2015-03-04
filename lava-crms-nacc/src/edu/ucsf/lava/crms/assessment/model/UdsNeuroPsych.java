package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsNeuroPsych extends UdsInstrument {
	private static final String UDS_NEUROPSYCH_FORMID = "C1";
	private static final String UDS_NEUROPSYCH_SPANISH_FORMID = "C1S";
	
	public UdsNeuroPsych() {}
	public static EntityManager MANAGER = new EntityBase.Manager(UdsNeuroPsych.class);
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsNeuroPsych(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_NEUROPSYCH_FORMID);
		// this instrument was discontinued after version "2" so override the current version set
		// in UdsInstrument constructor
		setInstrVer("2");
		this.setFormVer("2");
	}
	
	// note: id inherited from Instrument
	private Short mmseLoc;
	private Short mmseLan;
	private String mmseLanx;
	private Short mmseOrDa;
	private Short mmseOrLo;
	private Short pentagon;
	private Short mmse;
	private Short npsycLoc;
	private Short npsyLan;
	private String npsyLanx;
	private Short logiMo;
	private Short logiDay;
	private Short logiYr;
	private Short logiPrev;
	private Short logiMem;
	private Short digiF;
	private Short digiFLen;
	private Short digiB;
	private Short digiBLen;
	private Short animals;
	private Short veg;
	private Short trailA;
	private Short trailARR;
	private Short trailALI;
	private Short trailB;
	private Short trailBRR;
	private Short trailBLI;
	private Short wais;
	private Short memUnits;
	private Short memTime;
	private Short boston;
	private Short cogStat;

	

	public Short getAnimals() {
		return animals;
	}

	public void setAnimals(Short animals) {
		this.animals = animals;
	}

	public Short getBoston() {
		return boston;
	}

	public void setBoston(Short boston) {
		this.boston = boston;
	}

	public Short getCogStat() {
		return cogStat;
	}

	public void setCogStat(Short cogStat) {
		this.cogStat = cogStat;
	}

	public Short getDigiB() {
		return digiB;
	}

	public void setDigiB(Short digiB) {
		this.digiB = digiB;
	}

	public Short getDigiBLen() {
		return digiBLen;
	}

	public void setDigiBLen(Short digiBLen) {
		this.digiBLen = digiBLen;
	}

	public Short getDigiF() {
		return digiF;
	}

	public void setDigiF(Short digiF) {
		this.digiF = digiF;
	}

	public Short getDigiFLen() {
		return digiFLen;
	}

	public void setDigiFLen(Short digiFLen) {
		this.digiFLen = digiFLen;
	}

	public Short getLogiDay() {
		return logiDay;
	}

	public void setLogiDay(Short logiDay) {
		this.logiDay = logiDay;
	}

	public Short getLogiMem() {
		return logiMem;
	}

	public void setLogiMem(Short logiMem) {
		this.logiMem = logiMem;
	}

	public Short getLogiMo() {
		return logiMo;
	}

	public void setLogiMo(Short logiMo) {
		this.logiMo = logiMo;
	}

	public Short getLogiPrev() {
		return logiPrev;
	}

	public void setLogiPrev(Short logiPrev) {
		this.logiPrev = logiPrev;
	}

	public Short getLogiYr() {
		return logiYr;
	}

	public void setLogiYr(Short logiYr) {
		this.logiYr = logiYr;
	}

	public Short getMemTime() {
		return memTime;
	}

	public void setMemTime(Short memTime) {
		this.memTime = memTime;
	}

	public Short getMemUnits() {
		return memUnits;
	}

	public void setMemUnits(Short memUnits) {
		this.memUnits = memUnits;
	}

	public Short getMmse() {
		return mmse;
	}

	public void setMmse(Short mmse) {
		this.mmse = mmse;
	}

	public Short getMmseLan() {
		return mmseLan;
	}

	public void setMmseLan(Short mmseLan) {
		this.mmseLan = mmseLan;
	}

	public String getMmseLanx() {
		return mmseLanx;
	}

	public void setMmseLanx(String mmseLanx) {
		this.mmseLanx = mmseLanx;
	}

	public Short getMmseLoc() {
		return mmseLoc;
	}

	public void setMmseLoc(Short mmseLoc) {
		this.mmseLoc = mmseLoc;
	}

	public Short getMmseOrDa() {
		return mmseOrDa;
	}

	public void setMmseOrDa(Short mmseOrDa) {
		this.mmseOrDa = mmseOrDa;
	}

	public Short getMmseOrLo() {
		return mmseOrLo;
	}

	public void setMmseOrLo(Short mmseOrLo) {
		this.mmseOrLo = mmseOrLo;
	}

	public Short getNpsycLoc() {
		return npsycLoc;
	}

	public void setNpsycLoc(Short npsycLoc) {
		this.npsycLoc = npsycLoc;
	}

	public Short getNpsyLan() {
		return npsyLan;
	}

	public void setNpsyLan(Short npsyLan) {
		this.npsyLan = npsyLan;
	}

	public String getNpsyLanx() {
		return npsyLanx;
	}

	public void setNpsyLanx(String npsyLanx) {
		this.npsyLanx = npsyLanx;
	}

	public Short getTrailA() {
		return trailA;
	}

	public void setTrailA(Short trailA) {
		this.trailA = trailA;
	}

	public Short getTrailB() {
		return trailB;
	}

	public void setTrailB(Short trailB) {
		this.trailB = trailB;
	}

	public Short getVeg() {
		return veg;
	}

	public void setVeg(Short veg) {
		this.veg = veg;
	}

	public Short getWais() {
		return wais;
	}

	public void setWais(Short wais) {
		this.wais = wais;
	}

	
	
	public Short getPentagon() {
		return pentagon;
	}

	public void setPentagon(Short pentagon) {
		this.pentagon = pentagon;
	}

	public Short getTrailALI() {
		return trailALI;
	}

	public void setTrailALI(Short trailALI) {
		this.trailALI = trailALI;
	}

	public Short getTrailARR() {
		return trailARR;
	}

	public void setTrailARR(Short trailARR) {
		this.trailARR = trailARR;
	}

	public Short getTrailBLI() {
		return trailBLI;
	}

	public void setTrailBLI(Short trailBLI) {
		this.trailBLI = trailBLI;
	}

	public Short getTrailBRR() {
		return trailBRR;
	}

	public void setTrailBRR(Short trailBRR) {
		this.trailBRR = trailBRR;
	}


	
	
	
	public void markUnusedFields(String version) {
		if(version.equalsIgnoreCase("1")){
			this.pentagon = this.trailARR = this.trailALI = this.trailBRR = this.trailBLI = (short)-8;
		}
	}

	public String[] getRequiredResultFields(String version) {
		if (version.equalsIgnoreCase("1")){
			return new String[] {
					"mmseLoc",
					"mmseLan",
					"mmseOrDa",
					"mmseOrLo",
					"mmse",
					"npsycLoc",
					"npsyLan",
					"logiMo",
					"logiDay",
					"logiYr",
					"logiPrev",
					"logiMem",
					"digiF",
					"digiFLen",
					"digiB",
					"digiBLen",
					"animals",
					"veg",
					"trailA",
					"trailB",
					"wais",
					"memUnits",
					"memTime",
					"boston",
					"cogStat"};
		} else if (version.equalsIgnoreCase("2")){
			return new String[] {
					"mmseLoc",
					"mmseLan",
					"mmseOrDa",
					"mmseOrLo",
					"pentagon",
					"mmse",
					"npsycLoc",
					"npsyLan",
					"logiMo",
					"logiDay",
					"logiYr",
					"logiPrev",
					"logiMem",
					"digiF",
					"digiFLen",
					"digiB",
					"digiBLen",
					"animals",
					"veg",
					"trailA",
					"trailARR",
					"trailALI",
					"trailB",
					"trailBRR",
					"trailBLI",
					"wais",
					"memUnits",
					"memTime",
					"boston",
					"cogStat"};			
		}
		return new String[]{};
	}

	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getInstrVer().equals("1")){
			buffer.append(UdsUploadUtils.formatField(getMmseLoc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseLan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseLanx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseOrDa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseOrLo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsycLoc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsyLan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsyLanx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiDay())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiPrev())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiMem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiF())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiFLen())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiB())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiBLen())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAnimals())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVeg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailA())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailB())).append(",");
			buffer.append(UdsUploadUtils.formatField(getWais())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMemUnits())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMemTime())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBoston())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogStat()));

		}else if(getInstrVer().equals("2")){
			buffer.append(UdsUploadUtils.formatField(getMmseLoc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseLan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseLanx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseOrDa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmseOrLo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPentagon())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMmse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsycLoc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsyLan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsyLanx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiDay())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiPrev())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLogiMem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiF())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiFLen())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiB())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDigiBLen())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAnimals())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVeg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailA())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailARR())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailALI())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailB())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailBRR())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrailBLI())).append(",");
			buffer.append(UdsUploadUtils.formatField(getWais())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMemUnits())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMemTime())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBoston())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogStat()));
		}
		return buffer.toString();
	}	
	
	
}


