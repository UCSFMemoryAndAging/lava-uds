package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsHealthHistory extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsHealthHistory.class);
	public static final String UDS_HEALTHHISTORY_FORMID = "A5";
	public UdsHealthHistory() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsHealthHistory(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_HEALTHHISTORY_FORMID);
	}
	
	private Short tobac30;
	private Short tobac100;
	private Short smokYrs;
	private Short packsPer;
	private Short quitSmok;
	private Short alcoCcas; // UDS3 new
	private Short alcFreq; // UDS3 new
	private Short cvHAtt;
	private Short hattMult; // UDS3 new
	private Short hattYear; // UDS3 new
	private Short cvAFib;
	private Short cvAngio;
	private Short cvBypass;
	private Short cvPace; // UDS3 replaced by cvPacDef
	private Short cvPacDef; // UDS new var replaced cvPace
	private Short cvChf;
	private Short cvAngina; // UDS3 new
	private Short cvHValve; // UDS3 new
	private Short cvOthr;
	private String cvOthrx;
	private Short cbStroke;
	private Short strokMul; // UDS3 new
	private Short strokYr; // UDS3 new
	private Short strok1Yr; // UDS3 removed
	private Short strok2Yr; // UDS3 removed
	private Short strok3Yr; // UDS3 removed
	private Short strok4Yr; // UDS3 removed
	private Short strok5Yr; // UDS3 removed
	private Short strok6Yr; // UDS3 removed
	private Short cbTia;
	private Short tiaMult; // UDS new
	private Short tiaYear; // UDS new
	private Short tia1Yr; // UDS3 removed
	private Short tia2Yr; // UDS3 removed
	private Short tia3Yr; // UDS3 removed
	private Short tia4Yr; // UDS3 removed
	private Short tia5Yr; // UDS3 removed
	private Short tia6Yr; // UDS3 removed
	private Short cbOthr; // UDS3 removed
	private String cbOthrx; // UDS3 removed
	private Short pd;
	private Short pdYr;
	private Short pdOthr;
	private Short pdOthrYr;
	private Short seizures;
	private Short tbi;
	private Short tbiBrief;
	private Short tbiExten;
	private Short tbiWolos;
	private Short tbiYear;
	private Short traumBrf; // UDS removed
	private Short traumExt; // UDS3 removed
	private Short traumChr; // UDS3 removed
	private Short ncOthr; // UDS3 removed
	private String ncOthrx; // UDS3 removed
	private Short diabetes;
	private Short diabType; // UDS new
	private Short hyperten;
	private Short hyperCho;
	private Short b12Def;
	private Short thyroid;
	private Short arthrit; // UDS3 new
	private Short arthType; // UDS3 new
	private String arthTypx; // UDS3 new
	private Short arthUpEx; // UDS3 new
	private Short arthLoEx; // UDS3 new
	private Short arthSpin; // UDS3 new
	private Short arthUnk; // UDS3 new
	private Short incontU;
	private Short incontF;
	private Short apnea; // UDS3 new
	private Short rbd; // UDS3 new
	private Short insomn; // UDS3 new
	private Short othSleep; // UDS3 new
	private String othSleex; // UDS3 new
	private Short alcohol;
	private Short abusOthr;
	private String abusx;
	private Short ptsd; // UDS3 new
	private Short bipolar; // UDS3 new
	private Short schiz; // UDS3 new
	private Short dep2Yrs;
	private Short depOthr;
	private Short anxiety; // UDS3 new
	private Short ocd; // UD3 new
	private Short npsyDev; // UDS3 new
	private Short psycDis;
	private String psycDisx;
	
	public Short getAbusOthr() {
		return abusOthr;
	}

	public void setAbusOthr(Short abusOthr) {
		this.abusOthr = abusOthr;
	}

	public String getAbusx() {
		return abusx;
	}

	public void setAbusx(String abusx) {
		this.abusx = abusx;
	}

	public Short getAlcohol() {
		return alcohol;
	}

	public void setAlcohol(Short alcohol) {
		this.alcohol = alcohol;
	}

	public Short getB12Def() {
		return b12Def;
	}

	public void setB12Def(Short def) {
		b12Def = def;
	}

	public Short getCbOthr() {
		return cbOthr;
	}

	public void setCbOthr(Short cbOthr) {
		this.cbOthr = cbOthr;
	}

	public String getCbOthrx() {
		return cbOthrx;
	}

	public void setCbOthrx(String cbOthrx) {
		this.cbOthrx = cbOthrx;
	}

	public Short getCbStroke() {
		return cbStroke;
	}

	public void setCbStroke(Short cbStroke) {
		this.cbStroke = cbStroke;
	}

	public Short getCbTia() {
		return cbTia;
	}

	public void setCbTia(Short cbTia) {
		this.cbTia = cbTia;
	}

	public Short getCvAFib() {
		return cvAFib;
	}

	public void setCvAFib(Short cvAFib) {
		this.cvAFib = cvAFib;
	}

	public Short getCvAngio() {
		return cvAngio;
	}

	public void setCvAngio(Short cvAngio) {
		this.cvAngio = cvAngio;
	}

	public Short getCvBypass() {
		return cvBypass;
	}

	public void setCvBypass(Short cvBypass) {
		this.cvBypass = cvBypass;
	}

	public Short getCvChf() {
		return cvChf;
	}

	public void setCvChf(Short cvChf) {
		this.cvChf = cvChf;
	}

	public Short getCvHAtt() {
		return cvHAtt;
	}

	public void setCvHAtt(Short cvHAtt) {
		this.cvHAtt = cvHAtt;
	}

	public Short getCvOthr() {
		return cvOthr;
	}

	public void setCvOthr(Short cvOthr) {
		this.cvOthr = cvOthr;
	}

	public String getCvOthrx() {
		return cvOthrx;
	}

	public void setCvOthrx(String cvOthrx) {
		this.cvOthrx = cvOthrx;
	}

	public Short getCvPace() {
		return cvPace;
	}

	public void setCvPace(Short cvPace) {
		this.cvPace = cvPace;
	}

	public Short getDep2Yrs() {
		return dep2Yrs;
	}

	public void setDep2Yrs(Short dep2Yrs) {
		this.dep2Yrs = dep2Yrs;
	}

	public Short getDepOthr() {
		return depOthr;
	}

	public void setDepOthr(Short depOthr) {
		this.depOthr = depOthr;
	}

	public Short getDiabetes() {
		return diabetes;
	}

	public void setDiabetes(Short diabetes) {
		this.diabetes = diabetes;
	}

	public Short getHyperCho() {
		return hyperCho;
	}

	public void setHyperCho(Short hyperCho) {
		this.hyperCho = hyperCho;
	}

	public Short getHyperten() {
		return hyperten;
	}

	public void setHyperten(Short hyperten) {
		this.hyperten = hyperten;
	}

	public Short getIncontF() {
		return incontF;
	}

	public void setIncontF(Short incontF) {
		this.incontF = incontF;
	}

	public Short getIncontU() {
		return incontU;
	}

	public void setIncontU(Short incontU) {
		this.incontU = incontU;
	}
	public Short getNcOthr() {
		return ncOthr;
	}

	public void setNcOthr(Short ncOthr) {
		this.ncOthr = ncOthr;
	}

	public String getNcOthrx() {
		return ncOthrx;
	}

	public void setNcOthrx(String ncOthrx) {
		this.ncOthrx = ncOthrx;
	}

	public Short getPacksPer() {
		return packsPer;
	}

	public void setPacksPer(Short packsPer) {
		this.packsPer = packsPer;
	}

	public Short getPd() {
		return pd;
	}

	public void setPd(Short pd) {
		this.pd = pd;
	}

	public Short getPdOthr() {
		return pdOthr;
	}

	public void setPdOthr(Short pdOthr) {
		this.pdOthr = pdOthr;
	}

	public Short getPdOthrYr() {
		return pdOthrYr;
	}

	public void setPdOthrYr(Short pdOthrYr) {
		this.pdOthrYr = pdOthrYr;
	}

	public Short getPdYr() {
		return pdYr;
	}

	public void setPdYr(Short pdYr) {
		this.pdYr = pdYr;
	}

	public Short getPsycDis() {
		return psycDis;
	}

	public void setPsycDis(Short psycDis) {
		this.psycDis = psycDis;
	}

	public String getPsycDisx() {
		return psycDisx;
	}

	public void setPsycDisx(String psycDisx) {
		this.psycDisx = psycDisx;
	}

	public Short getQuitSmok() {
		return quitSmok;
	}

	public void setQuitSmok(Short quitSmok) {
		this.quitSmok = quitSmok;
	}

	public Short getSeizures() {
		return seizures;
	}

	public void setSeizures(Short seizures) {
		this.seizures = seizures;
	}

	public Short getSmokYrs() {
		return smokYrs;
	}

	public void setSmokYrs(Short smokYrs) {
		this.smokYrs = smokYrs;
	}

	public Short getStrok1Yr() {
		return strok1Yr;
	}

	public void setStrok1Yr(Short strok1Yr) {
		this.strok1Yr = strok1Yr;
	}

	public Short getStrok2Yr() {
		return strok2Yr;
	}

	public void setStrok2Yr(Short strok2Yr) {
		this.strok2Yr = strok2Yr;
	}

	public Short getStrok3Yr() {
		return strok3Yr;
	}

	public void setStrok3Yr(Short strok3Yr) {
		this.strok3Yr = strok3Yr;
	}

	public Short getStrok4Yr() {
		return strok4Yr;
	}

	public void setStrok4Yr(Short strok4Yr) {
		this.strok4Yr = strok4Yr;
	}

	public Short getStrok5Yr() {
		return strok5Yr;
	}

	public void setStrok5Yr(Short strok5Yr) {
		this.strok5Yr = strok5Yr;
	}

	public Short getStrok6Yr() {
		return strok6Yr;
	}

	public void setStrok6Yr(Short strok6Yr) {
		this.strok6Yr = strok6Yr;
	}

	public Short getThyroid() {
		return thyroid;
	}

	public void setThyroid(Short thyroid) {
		this.thyroid = thyroid;
	}

	public Short getTia1Yr() {
		return tia1Yr;
	}

	public void setTia1Yr(Short tia1Yr) {
		this.tia1Yr = tia1Yr;
	}

	public Short getTia2Yr() {
		return tia2Yr;
	}

	public void setTia2Yr(Short tia2Yr) {
		this.tia2Yr = tia2Yr;
	}

	public Short getTia3Yr() {
		return tia3Yr;
	}

	public void setTia3Yr(Short tia3Yr) {
		this.tia3Yr = tia3Yr;
	}

	public Short getTia4Yr() {
		return tia4Yr;
	}

	public void setTia4Yr(Short tia4Yr) {
		this.tia4Yr = tia4Yr;
	}

	public Short getTia5Yr() {
		return tia5Yr;
	}

	public void setTia5Yr(Short tia5Yr) {
		this.tia5Yr = tia5Yr;
	}

	public Short getTia6Yr() {
		return tia6Yr;
	}

	public void setTia6Yr(Short tia6Yr) {
		this.tia6Yr = tia6Yr;
	}

	public Short getTobac100() {
		return tobac100;
	}

	public void setTobac100(Short tobac100) {
		this.tobac100 = tobac100;
	}

	public Short getTobac30() {
		return tobac30;
	}

	public void setTobac30(Short tobac30) {
		this.tobac30 = tobac30;
	}

	public Short getTraumBrf() {
		return traumBrf;
	}

	public void setTraumBrf(Short traumBrf) {
		this.traumBrf = traumBrf;
	}

	public Short getTraumChr() {
		return traumChr;
	}

	public void setTraumChr(Short traumChr) {
		this.traumChr = traumChr;
	}

	public Short getTraumExt() {
		return traumExt;
	}

	public void setTraumExt(Short traumExt) {
		this.traumExt = traumExt;
	}
	
	public Short getAlcoCcas() {
		return alcoCcas;
	}

	public void setAlcoCcas(Short alcoCcas) {
		this.alcoCcas = alcoCcas;
	}

	public Short getAlcFreq() {
		return alcFreq;
	}

	public void setAlcFreq(Short alcFreq) {
		this.alcFreq = alcFreq;
	}

	public Short getHattMult() {
		return hattMult;
	}

	public void setHattMult(Short hattMult) {
		this.hattMult = hattMult;
	}

	public Short getHattYear() {
		return hattYear;
	}

	public void setHattYear(Short hattYear) {
		this.hattYear = hattYear;
	}

	public Short getCvPacDef() {
		return cvPacDef;
	}

	public void setCvPacDef(Short cvPacDef) {
		this.cvPacDef = cvPacDef;
	}

	public Short getCvAngina() {
		return cvAngina;
	}

	public void setCvAngina(Short cvAngina) {
		this.cvAngina = cvAngina;
	}

	public Short getCvHValve() {
		return cvHValve;
	}

	public void setCvHValve(Short cvHValve) {
		this.cvHValve = cvHValve;
	}

	public Short getStrokMul() {
		return strokMul;
	}

	public void setStrokMul(Short strokMul) {
		this.strokMul = strokMul;
	}

	public Short getStrokYr() {
		return strokYr;
	}

	public void setStrokYr(Short strokYr) {
		this.strokYr = strokYr;
	}

	public Short getTiaMult() {
		return tiaMult;
	}

	public void setTiaMult(Short tiaMult) {
		this.tiaMult = tiaMult;
	}

	public Short getTiaYear() {
		return tiaYear;
	}

	public void setTiaYear(Short tiaYear) {
		this.tiaYear = tiaYear;
	}

	public Short getTbi() {
		return tbi;
	}

	public void setTbi(Short tbi) {
		this.tbi = tbi;
	}

	public Short getTbiBrief() {
		return tbiBrief;
	}

	public void setTbiBrief(Short tbiBrief) {
		this.tbiBrief = tbiBrief;
	}

	public Short getTbiExten() {
		return tbiExten;
	}

	public void setTbiExten(Short tbiExten) {
		this.tbiExten = tbiExten;
	}

	public Short getTbiWolos() {
		return tbiWolos;
	}

	public void setTbiWolos(Short tbiWolos) {
		this.tbiWolos = tbiWolos;
	}

	public Short getTbiYear() {
		return tbiYear;
	}

	public void setTbiYear(Short tbiYear) {
		this.tbiYear = tbiYear;
	}

	public Short getDiabType() {
		return diabType;
	}

	public void setDiabType(Short diabType) {
		this.diabType = diabType;
	}

	public Short getArthrit() {
		return arthrit;
	}

	public void setArthrit(Short arthrit) {
		this.arthrit = arthrit;
	}

	public Short getArthType() {
		return arthType;
	}

	public void setArthType(Short arthType) {
		this.arthType = arthType;
	}

	public String getArthTypx() {
		return arthTypx;
	}

	public void setArthTypx(String arthTypx) {
		this.arthTypx = arthTypx;
	}

	public Short getArthUpEx() {
		return arthUpEx;
	}

	public void setArthUpEx(Short arthUpEx) {
		this.arthUpEx = arthUpEx;
	}

	public Short getArthLoEx() {
		return arthLoEx;
	}

	public void setArthLoEx(Short arthLoEx) {
		this.arthLoEx = arthLoEx;
	}

	public Short getArthSpin() {
		return arthSpin;
	}

	public void setArthSpin(Short arthSpin) {
		this.arthSpin = arthSpin;
	}

	public Short getArthUnk() {
		return arthUnk;
	}

	public void setArthUnk(Short arthUnk) {
		this.arthUnk = arthUnk;
	}

	public Short getApnea() {
		return apnea;
	}

	public void setApnea(Short apnea) {
		this.apnea = apnea;
	}
	
	public Short getRbd() {
		return rbd;
	}

	public void setRbd(Short rbd) {
		this.rbd = rbd;
	}

	public Short getInsomn() {
		return insomn;
	}

	public void setInsomn(Short insomn) {
		this.insomn = insomn;
	}

	public Short getOthSleep() {
		return othSleep;
	}

	public void setOthSleep(Short othSleep) {
		this.othSleep = othSleep;
	}

	public String getOthSleex() {
		return othSleex;
	}

	public void setOthSleex(String othSleex) {
		this.othSleex = othSleex;
	}

	public Short getPtsd() {
		return ptsd;
	}

	public void setPtsd(Short ptsd) {
		this.ptsd = ptsd;
	}

	public Short getBipolar() {
		return bipolar;
	}

	public void setBipolar(Short bipolar) {
		this.bipolar = bipolar;
	}

	public Short getSchiz() {
		return schiz;
	}

	public void setSchiz(Short schiz) {
		this.schiz = schiz;
	}

	public Short getAnxiety() {
		return anxiety;
	}

	public void setAnxiety(Short anxiety) {
		this.anxiety = anxiety;
	}

	public Short getOcd() {
		return ocd;
	}

	public void setOcd(Short ocd) {
		this.ocd = ocd;
	}

	public Short getNpsyDev() {
		return npsyDev;
	}

	public void setNpsyDev(Short npsyDev) {
		this.npsyDev = npsyDev;
	}
	
	public void markUnusedFields(String version) {
		if(version.equals("1") || version.equals("2")){
			
			//TODO put all UDS3 new here
			
			
			
		}
		else if(version.equals("3")){
			
			//TODO put all UDS3 removed / replaced here
			
			
			
		}
	}

	public String[] getRequiredResultFields(String version) {
		// For the year fields, only the first would be required, not all of them
		// Reasoning: if cbStroke is Absent, everything would be filled with skip (-6)
		// But if cbStroke is Active or Inactive, this would imply at least one must be filled,
		// even if that value was 9999 (unknown).
		// In all, this means the first year should always have a value.
		if (version.equals("3")) {
			return new String[] {
					"tobac30",
					"tobac100",
					"smokYrs",
					"packsPer",
					"quitSmok",
					"alcoCcas",
					"alcFreq",
					"cvHAtt",
					"hattMult",
					"hattYear",
					"cvAFib",
					"cvAngio",
					"cvBypass",
					"cvPacDef",
					"cvChf",
					"cvAngina",
					"cvHValve",
					"cvOthr",
					"cbStroke",
					"strokMul",
					"strokYr",
					"cbTia",
					"tiaMult",
					"tiaYear",
					"pd",
					"pdYr",
					"pdOthr",
					"pdOthrYr",
					"seizures",
					"tbi",
					"tbiBrief",
					"tbiExten",
					"tbiWolos",
					"tbiYear",
					"diabetes",
					"diabType",
					"hyperten",
					"hyperCho",
					"b12Def",
					"thyroid",
					"arthrit",
					"arthType",
					"arthTypx",
					"arthUpEx",
					"arthLoEx",
					"arthSpin",
					"arthUnk",
					"incontU",
					"incontF",
					"apnea",
					"rbd",
					"insomn",
					"othSleep",
					"alcohol",
					"abusOthr",
					"ptsd",
					"bipolar",
					"schiz",
					"dep2Yrs",
					"depOthr",
					"anxiety",
					"ocd",
					"npsyDev",
					"psycDis"
			};
		}
		else {
			return new String[] {
					"cvHAtt",
					"cvAFib",
					"cvAngio",
					"cvBypass",
					"cvPace",
					"cvChf",
					"cvOthr",
					"cbStroke",
					"strok1Yr",
					//"strok2Yr",
					//"strok3Yr",
					//"strok4Yr",
					//"strok5Yr",
					//"strok6Yr",
					"cbTia",
					"tia1Yr",
					//"tia2Yr",
					//"tia3Yr",
					//"tia4Yr",
					//"tia5Yr",
					//"tia6Yr",
					"cbOthr",
					"pd",
					"pdYr",
					"pdOthr",
					"pdOthrYr",
					"seizures",
					"traumBrf",
					"traumExt",
					"traumChr",
					"ncOthr",
					"hyperten",
					"hyperCho",
					"diabetes",
					"b12Def",
					"thyroid",
					"incontU",
					"incontF",
					"dep2Yrs",
					"depOthr",
					"alcohol",
					"tobac30",
					"tobac100",
					"smokYrs",
					"packsPer",
					"quitSmok",
					"abusOthr",
					"psycDis"
			};
		}
	}

		
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if (getInstrVer().equals("3")) {
			buffer.append(UdsUploadUtils.formatField(getTobac30())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTobac100())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSmokYrs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPacksPer())).append(",");
			buffer.append(UdsUploadUtils.formatField(getQuitSmok())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcoCcas())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcFreq())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvHAtt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHattMult())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHattYear())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvAFib())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvAngio())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvBypass())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvPacDef())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvChf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvAngina())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvHValve())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCbStroke())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrokMul())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrokYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCbTia())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTiaMult())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTiaYear())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPdYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPdOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPdOthrYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSeizures())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTbi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTbiBrief())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTbiExten())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTbiWolos())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTbiYear())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiabetes())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiabType())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyperten())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyperCho())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB12Def())).append(",");
			buffer.append(UdsUploadUtils.formatField(getThyroid())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthrit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthType())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthTypx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthUpEx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthLoEx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthSpin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getArthUnk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getIncontU())).append(",");
			buffer.append(UdsUploadUtils.formatField(getIncontF())).append(",");
			buffer.append(UdsUploadUtils.formatField(getApnea())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRbd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInsomn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthSleep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthSleex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcohol())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAbusOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAbusx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPtsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBipolar())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSchiz())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDep2Yrs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDepOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAnxiety())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsyDev())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsycDis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsycDisx()));
			return buffer.toString();
		}
		else {
			buffer.append(UdsUploadUtils.formatField(getCvHAtt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvAFib())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvAngio())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvBypass())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvPace())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvChf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCbStroke())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrok1Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrok2Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrok3Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrok4Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrok5Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrok6Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCbTia())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTia1Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTia2Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTia3Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTia4Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTia5Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTia6Yr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCbOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCbOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPdYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPdOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPdOthrYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSeizures())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTraumBrf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTraumExt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTraumChr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNcOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNcOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyperten())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyperCho())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiabetes())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB12Def())).append(",");
			buffer.append(UdsUploadUtils.formatField(getThyroid())).append(",");
			buffer.append(UdsUploadUtils.formatField(getIncontU())).append(",");
			buffer.append(UdsUploadUtils.formatField(getIncontF())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDep2Yrs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDepOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcohol())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTobac30())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTobac100())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSmokYrs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPacksPer())).append(",");
			buffer.append(UdsUploadUtils.formatField(getQuitSmok())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAbusOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAbusx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsycDis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsycDisx()));
			return buffer.toString();
		}
	}


}


