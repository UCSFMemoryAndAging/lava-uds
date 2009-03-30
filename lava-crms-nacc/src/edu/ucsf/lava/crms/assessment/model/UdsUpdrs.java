package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsUpdrs extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsUpdrs.class);
	public static final String UDS_UPDRS_FORMID = "B3";
	public UdsUpdrs() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsUpdrs(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_UPDRS_FORMID);
	}
	
	// note: id inherited from Instrument
	
	// 15 new fields for uds 2.0
	private String speechx;
	private String faceXpx;
	private String trestFacx;
	private String trestRHdx;
	private String trestLHdx;
	private String trestRFtx;
	private String trestLFtx;
	private String trActRHdx;
	private String trActLHdx;
	private String rigdNeckx;
	private String rigdUpRtx;
	private String rigdUpLfx;
	private String rigdLoRtx;
	private String rigdLoLfx;
	private String bradykinx;
	
	private Short pdNormal;
	private Short speech;
	private Short faceXp;
	private Short trestFac;
	private Short trestRHd;
	private Short trestLHd;
	private Short trestRFt;
	private Short trestLFt;
	private Short trActRHd;
	private Short trActLHd;
	private Short rigdNeck;
	private Short rigdUpRt;
	private Short rigdUpLf;
	private Short rigdLoRt;
	private Short rigdLoLf;
	private Short tapsRt;
	private String tapsRtx;
	private Short tapsLf;
	private String tapsLfx;
	private Short handMovR;
	private String handMvRx;
	private Short handMovL;
	private String handMvLx;
	private Short handAltR;
	private String handAtRx;
	private Short handAltL;
	private String handAtLx;
	private Short legRt;
	private String legRtx;
	private Short legLf;
	private String legLfx;
	private Short arising;
	private String arisingx;
	private Short posture;
	private String posturex;
	private Short gait;
	private String gaitx;
	private Short posStab;
	private String posStabx;
	private Short bradykin;


	public String getBradykinx() {
		return bradykinx;
	}

	public void setBradykinx(String bradykinx) {
		this.bradykinx = bradykinx;
	}

	public String getFaceXpx() {
		return faceXpx;
	}

	public void setFaceXpx(String faceXpx) {
		this.faceXpx = faceXpx;
	}

	public String getRigdLoLfx() {
		return rigdLoLfx;
	}

	public void setRigdLoLfx(String rigdLoLfx) {
		this.rigdLoLfx = rigdLoLfx;
	}

	public String getRigdLoRtx() {
		return rigdLoRtx;
	}

	public void setRigdLoRtx(String rigdLoRtx) {
		this.rigdLoRtx = rigdLoRtx;
	}

	public String getRigdNeckx() {
		return rigdNeckx;
	}

	public void setRigdNeckx(String rigdNeckx) {
		this.rigdNeckx = rigdNeckx;
	}

	public String getRigdUpLfx() {
		return rigdUpLfx;
	}

	public void setRigdUpLfx(String rigdUpLfx) {
		this.rigdUpLfx = rigdUpLfx;
	}

	public String getRigdUpRtx() {
		return rigdUpRtx;
	}

	public void setRigdUpRtx(String rigdUpRtx) {
		this.rigdUpRtx = rigdUpRtx;
	}

	public String getSpeechx() {
		return speechx;
	}

	public void setSpeechx(String speechx) {
		this.speechx = speechx;
	}

	public String getTrActLHdx() {
		return trActLHdx;
	}

	public void setTrActLHdx(String trActLHdx) {
		this.trActLHdx = trActLHdx;
	}

	public String getTrActRHdx() {
		return trActRHdx;
	}

	public void setTrActRHdx(String trActRHdx) {
		this.trActRHdx = trActRHdx;
	}

	public String getTrestFacx() {
		return trestFacx;
	}

	public void setTrestFacx(String trestFacx) {
		this.trestFacx = trestFacx;
	}

	public String getTrestLFtx() {
		return trestLFtx;
	}

	public void setTrestLFtx(String trestLFtx) {
		this.trestLFtx = trestLFtx;
	}

	public String getTrestLHdx() {
		return trestLHdx;
	}

	public void setTrestLHdx(String trestLHdx) {
		this.trestLHdx = trestLHdx;
	}

	public String getTrestRFtx() {
		return trestRFtx;
	}

	public void setTrestRFtx(String trestRFtx) {
		this.trestRFtx = trestRFtx;
	}

	public String getTrestRHdx() {
		return trestRHdx;
	}

	public void setTrestRHdx(String trestRHdx) {
		this.trestRHdx = trestRHdx;
	}
	
	public Short getArising() {
		return arising;
	}

	public void setArising(Short arising) {
		this.arising = arising;
	}

	public String getArisingx() {
		return arisingx;
	}

	public void setArisingx(String arisingx) {
		this.arisingx = arisingx;
	}

	public Short getBradykin() {
		return bradykin;
	}

	public void setBradykin(Short bradykin) {
		this.bradykin = bradykin;
	}

	public Short getFaceXp() {
		return faceXp;
	}

	public void setFaceXp(Short faceXp) {
		this.faceXp = faceXp;
	}

	public Short getGait() {
		return gait;
	}

	public void setGait(Short gait) {
		this.gait = gait;
	}

	public String getGaitx() {
		return gaitx;
	}

	public void setGaitx(String gaitx) {
		this.gaitx = gaitx;
	}

	public Short getHandAltL() {
		return handAltL;
	}

	public void setHandAltL(Short handAltL) {
		this.handAltL = handAltL;
	}

	public Short getHandAltR() {
		return handAltR;
	}

	public void setHandAltR(Short handAltR) {
		this.handAltR = handAltR;
	}

	public String getHandAtLx() {
		return handAtLx;
	}

	public void setHandAtLx(String handAtLx) {
		this.handAtLx = handAtLx;
	}

	public String getHandAtRx() {
		return handAtRx;
	}

	public void setHandAtRx(String handAtRx) {
		this.handAtRx = handAtRx;
	}

	public Short getHandMovL() {
		return handMovL;
	}

	public void setHandMovL(Short handMovL) {
		this.handMovL = handMovL;
	}

	public Short getHandMovR() {
		return handMovR;
	}

	public void setHandMovR(Short handMovR) {
		this.handMovR = handMovR;
	}

	public String getHandMvLx() {
		return handMvLx;
	}

	public void setHandMvLx(String handMvLx) {
		this.handMvLx = handMvLx;
	}

	public String getHandMvRx() {
		return handMvRx;
	}

	public void setHandMvRx(String handMvRx) {
		this.handMvRx = handMvRx;
	}

	public Short getLegLf() {
		return legLf;
	}

	public void setLegLf(Short legLf) {
		this.legLf = legLf;
	}

	public String getLegLfx() {
		return legLfx;
	}

	public void setLegLfx(String legLfx) {
		this.legLfx = legLfx;
	}

	public Short getLegRt() {
		return legRt;
	}

	public void setLegRt(Short legRt) {
		this.legRt = legRt;
	}

	public String getLegRtx() {
		return legRtx;
	}

	public void setLegRtx(String legRtx) {
		this.legRtx = legRtx;
	}

	public Short getPdNormal() {
		return pdNormal;
	}

	public void setPdNormal(Short pdNormal) {
		this.pdNormal = pdNormal;
	}

	public Short getPosStab() {
		return posStab;
	}

	public void setPosStab(Short posStab) {
		this.posStab = posStab;
	}

	public String getPosStabx() {
		return posStabx;
	}

	public void setPosStabx(String posStabx) {
		this.posStabx = posStabx;
	}

	public Short getPosture() {
		return posture;
	}

	public void setPosture(Short posture) {
		this.posture = posture;
	}

	public String getPosturex() {
		return posturex;
	}

	public void setPosturex(String posturex) {
		this.posturex = posturex;
	}

	public Short getRigdUpRt() {
		return rigdUpRt;
	}

	public void setRigdUpRt(Short rigdUpRt) {
		this.rigdUpRt = rigdUpRt;
	}

	public Short getRigdLoLf() {
		return rigdLoLf;
	}

	public void setRigdLoLf(Short rigdLoLf) {
		this.rigdLoLf = rigdLoLf;
	}

	public Short getRigdLoRt() {
		return rigdLoRt;
	}

	public void setRigdLoRt(Short rigdLoRt) {
		this.rigdLoRt = rigdLoRt;
	}

	public Short getRigdNeck() {
		return rigdNeck;
	}

	public void setRigdNeck(Short rigdNeck) {
		this.rigdNeck = rigdNeck;
	}

	public Short getRigdUpLf() {
		return rigdUpLf;
	}

	public void setRigdUpLf(Short rigdUpLf) {
		this.rigdUpLf = rigdUpLf;
	}

	public Short getSpeech() {
		return speech;
	}

	public void setSpeech(Short speech) {
		this.speech = speech;
	}

	public Short getTapsLf() {
		return tapsLf;
	}

	public void setTapsLf(Short tapsLf) {
		this.tapsLf = tapsLf;
	}

	public String getTapsLfx() {
		return tapsLfx;
	}

	public void setTapsLfx(String tapsLfx) {
		this.tapsLfx = tapsLfx;
	}

	public Short getTapsRt() {
		return tapsRt;
	}

	public void setTapsRt(Short tapsRt) {
		this.tapsRt = tapsRt;
	}

	public String getTapsRtx() {
		return tapsRtx;
	}

	public void setTapsRtx(String tapsRtx) {
		this.tapsRtx = tapsRtx;
	}

	public Short getTrActLHd() {
		return trActLHd;
	}

	public void setTrActLHd(Short trActLHd) {
		this.trActLHd = trActLHd;
	}

	public Short getTrActRHd() {
		return trActRHd;
	}

	public void setTrActRHd(Short trActRHd) {
		this.trActRHd = trActRHd;
	}

	public Short getTrestFac() {
		return trestFac;
	}

	public void setTrestFac(Short trestFac) {
		this.trestFac = trestFac;
	}

	public Short getTrestLFt() {
		return trestLFt;
	}

	public void setTrestLFt(Short trestLFt) {
		this.trestLFt = trestLFt;
	}

	public Short getTrestLHd() {
		return trestLHd;
	}

	public void setTrestLHd(Short trestLHd) {
		this.trestLHd = trestLHd;
	}

	public Short getTrestRFt() {
		return trestRFt;
	}

	public void setTrestRFt(Short trestRFt) {
		this.trestRFt = trestRFt;
	}

	public Short getTrestRHd() {
		return trestRHd;
	}

	public void setTrestRHd(Short trestRHd) {
		this.trestRHd = trestRHd;
	}

	
	public void markUnusedFields(String version) {
        if (version.equalsIgnoreCase("1")) {
        	this.speechx = this.faceXpx = this.trestFacx = this.trestRHdx = this.trestLHdx = this.trestRFtx = this.trestLFtx = this.trActRHdx = this.trActLHdx = this.rigdNeckx = this.rigdUpRtx = this.rigdUpLfx = this.rigdLoRtx = this.rigdLoLfx = this.bradykinx = "-8.0";
   			}
	}
	public String[] getRequiredResultFields(String version) {
		String[] required = new String[]{};
		
		if (version.equalsIgnoreCase("1")) {
			required = new String[]{
					"pdNormal",
					"speech",
					"faceXp",
					"trestFac",
					"trestRHd",
					"trestLHd",
					"trestRFt",
					"trestLFt",
					"trActRHd",
					"trActLHd",
					"rigdNeck",
					"rigdUpRt",
					"rigdUpLf",
					"rigdLoRt",
					"rigdLoLf",
					"tapsRt",
					"tapsRtx",
					"tapsLf",
					"tapsLfx",
					"handMovR",
					"handMvRx",
					"handMovL",
					"handMvLx",
					"handAltR",
					"handAtRx",
					"handAltL",
					"handAtLx",
					"legRt",
					"legRtx",
					"legLf",
					"legLfx",
					"arising",
					"arisingx",
					"posture",
					"posturex",
					"gait",
					"gaitx",
					"posStab",
					"posStabx",
					"bradykin"
			};
		}
		else if (version.equalsIgnoreCase("2")){
			required = new String[]{
					
					"speechx",
					"faceXpx",
					"trestFacx",
					"trestRHdx",
					"trestLHdx",
					"trestRFtx",
					"trestLFtx",
					"trActRHdx",
					"trActLHdx",
					"rigdNeckx",
					"rigdUpRtx",
					"rigdUpLfx",
					"rigdLoRtx",
					"rigdLoLfx",
					"bradykinx",
					"pdNormal",
					"speech",
					"faceXp",
					"trestFac",
					"trestRHd",
					"trestLHd",
					"trestRFt",
					"trestLFt",
					"trActRHd",
					"trActLHd",
					"rigdNeck",
					"rigdUpRt",
					"rigdUpLf",
					"rigdLoRt",
					"rigdLoLf",
					"tapsRt",
					"tapsRtx",
					"tapsLf",
					"tapsLfx",
					"handMovR",
					"handMvRx",
					"handMovL",
					"handMvLx",
					"handAltR",
					"handAtRx",
					"handAltL",
					"handAtLx",
					"legRt",
					"legRtx",
					"legLf",
					"legLfx",
					"arising",
					"arisingx",
					"posture",
					"posturex",
					"gait",
					"gaitx",
					"posStab",
					"posStabx",
					"bradykin"
			};
		}
		return required;
	}
	
	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getInstrVer().equals("1")){
			buffer.append(UdsUploadUtils.formatField(getPdNormal())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSpeech())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFaceXp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestFac())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestRHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestLHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestRFt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestLFt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrActRHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrActLHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdNeck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdUpRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdUpLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdLoRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdLoLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsRtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsLfx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMovR())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMvRx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMovL())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMvLx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAltR())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAtRx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAltL())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAtLx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegRtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegLfx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArising())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArisingx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosture())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosturex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getGait())).append(",");
			buffer.append(UdsUploadUtils.formatField(getGaitx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosStab())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosStabx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBradykin()));
			
		}else if(getInstrVer().equals("2")){
			buffer.append(UdsUploadUtils.formatField(getPdNormal())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSpeech())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSpeechx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFaceXp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFaceXpx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestFac())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestFacx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestRHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestRHdx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestLHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestLHdx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestRFt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestRFtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestLFt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrestLFtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrActRHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrActRHdx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrActLHd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTrActLHdx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdNeck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdNeckx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdUpRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdUpRtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdUpLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdUpLfx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdLoRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdLoRtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdLoLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRigdLoLfx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsRtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTapsLfx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMovR())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMvRx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMovL())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandMvLx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAltR())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAtRx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAltL())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHandAtLx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegRt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegRtx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegLf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLegLfx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArising())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArisingx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosture())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosturex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getGait())).append(",");
			buffer.append(UdsUploadUtils.formatField(getGaitx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosStab())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPosStabx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBradykin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBradykinx()));
			
		}
		return buffer.toString();
	}	
	

}


