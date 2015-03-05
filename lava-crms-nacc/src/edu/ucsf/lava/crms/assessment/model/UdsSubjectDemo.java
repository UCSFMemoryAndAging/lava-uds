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
	
	private Short inMds; // UDS3 remove
	private Short reason; // UDS3 recode
	private String reasonx; // UDS3 remove
	private Short refer; // UDS3 replaced by "referSc"
	private String referx; // UDS3 remove
	private Short preStat;
	private Short presPart;
	private Short source; // UDS3 replaced by "sourceNw"
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
	private Short mariStat; // UDS3 recode
	private String mariStax; // UDS3 remove
	private Short livSit; // UDS3 replaced by "livSitua"
	private String livSitx; // UDS3 remove
	private Short independ;
	private Short residenc; // UDS3 recode 
	private String residenx; // UDS3 remove
	private String zip;
	private Short handed;

	// new variables in UDS 3
	private Short referSc; // UDS3 new var, replaced "refer"
	private Short learned; // UDS3 new
	private Short sourceNw; // UDS3 new var, replaced "source"
	private Short livSitua; // UDS3 new var, replaced "livSit"

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
	
	public Short getLearned() {
		return learned;
	}

	public void setLearned(Short learned) {
		this.learned = learned;
	}

	public Short getReferSc() {
		return referSc;
	}

	public void setReferSc(Short referSc) {
		this.referSc = referSc;
	}

	public Short getSourceNw() {
		return sourceNw;
	}

	public void setSourceNw(Short sourceNw) {
		this.sourceNw = sourceNw;
	}

	public Short getLivSitua() {
		return livSitua;
	}

	public void setLivSitua(Short livSitua) {
		this.livSitua = livSitua;
	}
	
	public void markUnusedFields(String version) {
		if(version.equalsIgnoreCase("1") || version.equalsIgnoreCase("2")){
			this.referSc = this.learned = this.sourceNw = this.livSitua = (short)-8;
		}
		else if(version.equalsIgnoreCase("3")){
			this.inMds = this.refer = this.source = this.livSit = (short)-8;
			this.reasonx = this.referx = this.mariStax = livSitx = residenx = "-8";
			if (this.getPacket() != null && !this.getPacket().equals("I")) {
				// note that when when this instrument is added do not know at that time whether the packet will
				// be initial or followup, so these do not get marked. however, markUnusedFields is call in 
				// InstrumentHandler override of doSave and at that point packet will have a value (since it is
				// required)
				this.reason = this.referSc = this.learned = this.preStat = this.presPart = this.sourceNw = this.hispanic
				= this.hispOr = this.race = this.raceSec = this.raceTer = this.primLang = this.educ = this.handed = (short)-8;
				this.hispOrx = this.racex = this.raceSecx = this.raceTerx = this.primLanx = "-8";
			}
		}
	}

	public String[] getRequiredResultFields(String version) {
		// different fields are required depending on packet type
		if (this.getPacket() == null) {
			return new String[] {"packet"};
		}
		else if (this.getPacket().equals("I")){
			if (version.equals("3")) {
				return new String[] {
					    "reason",
					    "referSc",
					    "learned",
					    "preStat",
					    "presPart",
					    "sourceNw",
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
					    "livSitua",
					    "independ",
					    "residenc",
					    "mariStat",
					    "handed" };
			}
			else {
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
				    "handed" };
			}
		} else {
			if (version.equals("3")) {
				return new String[] {
				"birthMo",
				"birthYr",
				"mariStat",
				"sex",
				"livSitua",
				"independ",
				"residenc"};
			}
			else {
				return new String[] {
				"birthMo",
				"birthYr",
				"sex",
				"livSit",
				"independ",
				"residenc",
				"mariStat"};
			}
		}
	}

	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getPacket().equals("I")){
			if (getInstrVer().equals("3")) {
				buffer.append(UdsUploadUtils.formatField(getReason())).append(",");
				buffer.append(UdsUploadUtils.formatField(getReferSc())).append(",");
				buffer.append(UdsUploadUtils.formatField(getLearned())).append(",");
				buffer.append(UdsUploadUtils.formatField(getPreStat())).append(",");
				buffer.append(UdsUploadUtils.formatField(getPresPart())).append(",");
				buffer.append(UdsUploadUtils.formatField(getSourceNw())).append(",");
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
				buffer.append(UdsUploadUtils.formatField(getMariStat())).append(",");
				buffer.append(UdsUploadUtils.formatField(getLivSitua())).append(",");
				buffer.append(UdsUploadUtils.formatField(getIndepend())).append(",");
				buffer.append(UdsUploadUtils.formatField(getResidenc())).append(",");
				buffer.append(UdsUploadUtils.formatField(getZip())).append(",");
				buffer.append(UdsUploadUtils.formatField(getHanded()));
			}
			else {
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
		}		
		else if(getPacket().equals("T") || getPacket().equals("F")){
			if (getInstrVer().equals("3")) {
				buffer.append(UdsUploadUtils.formatField(getBirthMo())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBirthYr())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMariStat())).append(",");
				buffer.append(UdsUploadUtils.formatField(getSex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getLivSitua())).append(",");
				
			}
			else {
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
		}
	return buffer.toString();
	}
	
}


