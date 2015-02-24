package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import org.springframework.util.StringUtils;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

/**
 * As of UDS 3.0 the name of the form was changed from "A2: Informant Demographics" to 
 * "A2: Co-participant Demographics". However the content is largely the same so this same underlying
 * model class is used. 
 */
public class UdsInformantDemo extends UdsInstrument {
	
	public static EntityManager MANAGER = new EntityBase.Manager(UdsInformantDemo.class);
	
	public static final String UDS_INFORMANTDEMO_FORMID = "A2";
	
	public UdsInformantDemo() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsInformantDemo(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_INFORMANTDEMO_FORMID);
	}
	
	// note: id inherited from Instrument
	
	private Short inBirMo;
	private Short inBirYr;
	private Short inSex;
	private Short newInf;
	private Short inHisp;
	private Short inHispOr;
	private String inHispOx;
	private Short inRace;
	private String inRacex;
	private Short inRaSec;
	private String inRaSecx;
	private Short inRaTer;
	private String inRaTerx;
	private Short inEduc;
	private Short inRelTo; // UDS3 recoded
	private String inRelTox; // UDS3 removed
	private Short inKnown; // UDS3 new
	private Short inLivWth;
	private Short inVisits;
	private Short inCalls;
	private Short inRely;
	

	public Short getInBirMo() {
		return inBirMo;
	}

	public void setInBirMo(Short inBirMo) {
		this.inBirMo = inBirMo;
	}

	public Short getInBirYr() {
		return inBirYr;
	}

	public void setInBirYr(Short inBirYr) {
		this.inBirYr = inBirYr;
	}

	public Short getInCalls() {
		return inCalls;
	}

	public void setInCalls(Short inCalls) {
		this.inCalls = inCalls;
	}

	public Short getInEduc() {
		return inEduc;
	}

	public void setInEduc(Short inEduc) {
		this.inEduc = inEduc;
	}

	public Short getInHisp() {
		return inHisp;
	}

	public void setInHisp(Short inHisp) {
		this.inHisp = inHisp;
	}

	public Short getInHispOr() {
		return inHispOr;
	}

	public void setInHispOr(Short inHispOr) {
		this.inHispOr = inHispOr;
	}

	public String getInHispOx() {
		return inHispOx;
	}

	public void setInHispOx(String inHispOx) {
		this.inHispOx = inHispOx;
	}



	public Short getInLivWth() {
		return inLivWth;
	}

	public void setInLivWth(Short inLivWth) {
		this.inLivWth = inLivWth;
	}

	public Short getInRace() {
		return inRace;
	}

	public void setInRace(Short inRace) {
		this.inRace = inRace;
	}

	public String getInRacex() {
		return inRacex;
	}

	public void setInRacex(String inRacex) {
		this.inRacex = inRacex;
	}

	public Short getInRaSec() {
		return inRaSec;
	}

	public void setInRaSec(Short inRaSec) {
		this.inRaSec = inRaSec;
	}

	public String getInRaSecx() {
		return inRaSecx;
	}

	public void setInRaSecx(String inRaSecx) {
		this.inRaSecx = inRaSecx;
	}

	public Short getInRaTer() {
		return inRaTer;
	}

	public void setInRaTer(Short inRaTer) {
		this.inRaTer = inRaTer;
	}

	public String getInRaTerx() {
		return inRaTerx;
	}

	public void setInRaTerx(String inRaTerx) {
		this.inRaTerx = inRaTerx;
	}

	public Short getInRelTo() {
		return inRelTo;
	}

	public void setInRelTo(Short inRelTo) {
		this.inRelTo = inRelTo;
	}

	public String getInRelTox() {
		return inRelTox;
	}

	public void setInRelTox(String inRelTox) {
		this.inRelTox = inRelTox;
	}

	public Short getInRely() {
		return inRely;
	}

	public void setInRely(Short inRely) {
		this.inRely = inRely;
	}

	public Short getInSex() {
		return inSex;
	}

	public void setInSex(Short inSex) {
		this.inSex = inSex;
	}

	public Short getInVisits() {
		return inVisits;
	}

	public void setInVisits(Short inVisits) {
		this.inVisits = inVisits;
	}

	public Short getNewInf() {
		return newInf;
	}

	public void setNewInf(Short newInf) {
		this.newInf = newInf;
	}
	
	public Short getInKnown() {
		return inKnown;
	}

	public void setInKnown(Short inKnown) {
		this.inKnown = inKnown;
	}

	public String[] getRequiredResultFields(String version) {
		String[] required;
		
		if (this.getPacket() == null)
			return new String[] {};
		
		if (this.getPacket().equals("I")) {
			required = new String[] {
				"inBirMo",
				"inBirYr",
				"inSex",
				"inHisp",
				"inHispOr",
				"inRace",
				"inRaSec",
				"inRaTer",
				"inEduc",
				"inRelTo",
				"inLivWth",
				"inVisits",
				"inCalls",
				"inRely"
			};
		} else {
			required = new String[] {
				"inBirMo",
				"inBirYr",
				"inSex",
				"newInf",
				"inHisp",
				"inHispOr",
				"inRace",
				"inRaSec",
				"inRaTer",
				"inEduc",
				"inRelTo",
				"inLivWth",
				"inVisits",
				"inCalls",
				"inRely"
			};
		}
		
		if (version.equals("3")){
			// new var added in UDS 3
			required = StringUtils.concatenateStringArrays(required, new String[]{"inKnown"});
		}
		
		return required;
	}

	
	public void markUnusedFields(String version) {
		if (this.getPacket().equals("I")){
			this.newInf = (short)-8;
		}
		if(version.equals("1") || (version.equals("2"))) {
			this.inKnown = (short)-8;
		}
		else if (version.equals("3"))  {
			this.inRelTox = "-8";
		}
	}
	

	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getPacket().equals("I")){
			buffer.append(UdsUploadUtils.formatField(getInBirMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInBirYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInSex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInHisp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInHispOr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInHispOx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRace())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRacex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaSec())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaSecx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaTer())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaTerx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInEduc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRelTo())).append(",");
			if (getInstrVer().equals("1") || getInstrVer().equals("2")) {
				buffer.append(UdsUploadUtils.formatField(getInRelTox())).append(",");
			}
			if (getInstrVer().equals("3")) {
				buffer.append(UdsUploadUtils.formatField(getInKnown())).append(",");
			}
			buffer.append(UdsUploadUtils.formatField(getInLivWth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInVisits())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInCalls())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRely()));
		}
		else if(getPacket().equals("T") || getPacket().equals("F")){
			buffer.append(UdsUploadUtils.formatField(getInBirMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInBirYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInSex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNewInf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInHisp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInHispOr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInHispOx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRace())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRacex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaSec())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaSecx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaTer())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRaTerx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInEduc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRelTo())).append(",");
			if (getInstrVer().equals("1") || getInstrVer().equals("2")) {
				buffer.append(UdsUploadUtils.formatField(getInRelTox())).append(",");
			}
			if (getInstrVer().equals("3")) {
				buffer.append(UdsUploadUtils.formatField(getInKnown())).append(",");
			}
			buffer.append(UdsUploadUtils.formatField(getInLivWth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInVisits())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInCalls())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInRely()));
		}
	return buffer.toString();
	}
	
	
	
}


