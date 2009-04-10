package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsSubjectDemo extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsSubjectDemo.class);
	
	public static final String UDS_SUBJECTDEMO_FORMID = "A1";
	public UdsSubjectDemo() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsSubjectDemo(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_SUBJECTDEMO_FORMID);
	}
	
	// note: id inherited from Instrument
	
	private Short inMds;
	private Short reason;
	private String reasonx;
	private Short refer;
	private String referx;
	private Short preStat;
	private Short presPart;
	private Short source;
	private Short birthMo;
	private Short birthYr;
	private Short sex;
	private Short hispanic;
	private Short hispOr;
	private String hispOrx;
	private Short race;
	private String racex;
	private Short raceSec;
	private String raceSecx;
	private Short raceTer;
	private String raceTerx;
	private Short primLang;
	private String primLanx;
	private Short educ;
	private Short livSit;
	private String livSitx;
	private Short independ;
	private Short residenc;
	private String residenx;
	private String zip;
	private Short mariStat;
	private String mariStax;
	private Short handed;
		

	public Short getBirthMo() {
		return birthMo;
	}

	public void setBirthMo(Short birthMo) {
		this.birthMo = birthMo;
	}

	public Short getBirthYr() {
		return birthYr;
	}

	public void setBirthYr(Short birthYr) {
		this.birthYr = birthYr;
	}

	public Short getEduc() {
		return educ;
	}

	public void setEduc(Short educ) {
		this.educ = educ;
	}

	public Short getHanded() {
		return handed;
	}

	public void setHanded(Short handed) {
		this.handed = handed;
	}

	public Short getHispanic() {
		return hispanic;
	}

	public void setHispanic(Short hispanic) {
		this.hispanic = hispanic;
	}

	public Short getHispOr() {
		return hispOr;
	}

	public void setHispOr(Short hispOr) {
		this.hispOr = hispOr;
	}

	public String getHispOrx() {
		return hispOrx;
	}

	public void setHispOrx(String hispOrx) {
		this.hispOrx = hispOrx;
	}

	public Short getIndepend() {
		return independ;
	}

	public void setIndepend(Short independ) {
		this.independ = independ;
	}

	public Short getInMds() {
		return inMds;
	}

	public void setInMds(Short inMds) {
		this.inMds = inMds;
	}

	public Short getLivSit() {
		return livSit;
	}

	public void setLivSit(Short livSit) {
		this.livSit = livSit;
	}

	public String getLivSitx() {
		return livSitx;
	}

	public void setLivSitx(String livSitx) {
		this.livSitx = livSitx;
	}

	public Short getMariStat() {
		return mariStat;
	}

	public void setMariStat(Short mariStat) {
		this.mariStat = mariStat;
	}

	public String getMariStax() {
		return mariStax;
	}

	public void setMariStax(String mariStax) {
		this.mariStax = mariStax;
	}

	public Short getPresPart() {
		return presPart;
	}

	public void setPresPart(Short presPart) {
		this.presPart = presPart;
	}

	public Short getPreStat() {
		return preStat;
	}

	public void setPreStat(Short preStat) {
		this.preStat = preStat;
	}

	public Short getPrimLang() {
		return primLang;
	}

	public void setPrimLang(Short primLang) {
		this.primLang = primLang;
	}

	public String getPrimLanx() {
		return primLanx;
	}

	public void setPrimLanx(String primLanx) {
		this.primLanx = primLanx;
	}

	public Short getRace() {
		return race;
	}

	public void setRace(Short race) {
		this.race = race;
	}

	public Short getRaceSec() {
		return raceSec;
	}

	public void setRaceSec(Short raceSec) {
		this.raceSec = raceSec;
	}

	public String getRaceSecx() {
		return raceSecx;
	}

	public void setRaceSecx(String raceSecx) {
		this.raceSecx = raceSecx;
	}

	public Short getRaceTer() {
		return raceTer;
	}

	public void setRaceTer(Short raceTer) {
		this.raceTer = raceTer;
	}

	public String getRaceTerx() {
		return raceTerx;
	}

	public void setRaceTerx(String raceTerx) {
		this.raceTerx = raceTerx;
	}

	public String getRacex() {
		return racex;
	}

	public void setRacex(String racex) {
		this.racex = racex;
	}

	public Short getReason() {
		return reason;
	}

	public void setReason(Short reason) {
		this.reason = reason;
	}

	public String getReasonx() {
		return reasonx;
	}

	public void setReasonx(String reasonx) {
		this.reasonx = reasonx;
	}

	public Short getRefer() {
		return refer;
	}

	public void setRefer(Short refer) {
		this.refer = refer;
	}

	public String getReferx() {
		return referx;
	}

	public void setReferx(String referx) {
		this.referx = referx;
	}

	public Short getResidenc() {
		return residenc;
	}

	public void setResidenc(Short residenc) {
		this.residenc = residenc;
	}

	public String getResidenx() {
		return residenx;
	}

	public void setResidenx(String residenx) {
		this.residenx = residenx;
	}

	public Short getSex() {
		return sex;
	}

	public void setSex(Short sex) {
		this.sex = sex;
	}

	public Short getSource() {
		return source;
	}

	public void setSource(Short source) {
		this.source = source;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public String getZip(){
		return this.zip;
	}

	
	public String[] getRequiredResultFields() {
		return new String[] {
		    "inMds",
		    "reason",
		    "refer",
		    "preStat",
		    "presPart",
		    "source",
		    "birthMo",
		    "birthYr",
		    "sex",
		    "hispanic",
		    "hispOr",
		    "race",
		    "raceSec",
		    "raceTer",
		    "primLang",
		    "educ",
		    "livSit",
		    "independ",
		    "residenc",
		    "mariStat",
		    "handed"
		};
	}

	

	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getPacket().equals("I")){
			buffer.append(UdsUploadUtils.formatField(getInMds())).append(",");
			buffer.append(UdsUploadUtils.formatField(getReason())).append(",");
			buffer.append(UdsUploadUtils.formatField(getReasonx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRefer())).append(",");
			buffer.append(UdsUploadUtils.formatField(getReferx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPreStat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPresPart())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSource())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBirthMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBirthYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHispanic())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHispOr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHispOrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRace())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRacex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRaceSec())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRaceSecx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRaceTer())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRaceTerx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrimLang())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrimLanx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEduc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLivSit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLivSitx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getIndepend())).append(",");
			buffer.append(UdsUploadUtils.formatField(getResidenc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getResidenx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getZip())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMariStat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMariStax())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHanded()));
		}
		else if(getPacket().equals("T") || getPacket().equals("F")){
			buffer.append(UdsUploadUtils.formatField(getBirthMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBirthYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLivSit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLivSitx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getIndepend())).append(",");
			buffer.append(UdsUploadUtils.formatField(getResidenc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getResidenx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getZip())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMariStat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMariStax()));
		}
	return buffer.toString();
	}
	
}


