package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsSymptomsOnset extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsSymptomsOnset.class);
	
	public static final String UDS_SYMPTOMSONSET_FORMID = "B9";
	
	public UdsSymptomsOnset() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsSymptomsOnset(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_SYMPTOMSONSET_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short b9Chg;
	private Short decSub;
	private Short decIn;
	private Short decClin; // UDS3 removed, replaced by decClCog
	private Short cogMem;
	private Short cogJudg;
	private Short cogLang;
	private Short cogVis;
	private Short cogAttn;
	private Short cogFluc;
	private Short cogOthr;
	private String cogOthrx;
	private Short cogFrst; // UDS3 replaced by cogFPred
	private String cogFrstx; // UDS3 replaced by cogFPrex
	private Short cogMode;
	private String cogModex;
	private Short decAge; // UDS3 moved from item 3 to item 7 
	private Short beApathy;
	private Short beDep;
	private Short beVHall;
	private Short beVWell;
	private Short beAHall;
	private Short beDel;
	private Short beDisin;
	private Short beIrrit;
	private Short beAgit;
	private Short bePerCh;
	private Short beRem;
	private Short beOthr;
	private String beOthrx;
	private Short beFrst; // UDS3 replaced by beFPred
	private String beFrstx; // UDS3 replaced by beFPredX  
	private Short beMode;
	private String beModex;
	private Short moGait;
	private Short moFalls;
	private Short moTrem;
	private Short moSlow;
	private Short moFrst;
	private Short moMode;
	private String moModex;
	private Short moMoPark;
	private Short course;
	private Short frstChg;

	// new variables UDS 3
	private Short decClCog; // UDS 3 new (cognitive symptoms gateway question)
	private Short cogOri; // UDS new
	private Short cogFlAgO; // UDS3 new (fluctuating cognition age of onset)
	private Short cogFPred; // UDS3 replaced cogFrst, recoded
	private String cogFPrex; // UDS3 replaced cogFrstx
	private Short decClBe; // UDS3 new (behavioral symptoms gateway question)
	private Short beVHAgO; // UDS3 new (visual hallucinations age of onset)
	private Short beRemAgO; // UDS3 new (REM sleep behavior disorder age of onset)
	private Short beAnx; // UDS3 new (anxiety)
	private Short beFPred; // UDS3 replaced beFrst (behavior first predominant symptom), recoded
	private String beFPredx; // UDS3 replaced beFrstx
	private Short beAge; // UDS3 new (behavioral symptoms age of onset)
	private Short decClMot; // UDS3 new (motor symptoms gateway question)
	private Short parkAge; // UDS3 new
	private Short moMoAls; // UDS3 new
	private Short alsAge; // UDS3 new
	private Short moAge; // UDS3 new
	private Short lbdEval; // UDS3 new
	private Short ftldEval; // UDS3 new
	
	
	public Short getB9Chg() {
		return b9Chg;
	}

	public void setB9Chg(Short chg) {
		b9Chg = chg;
	}

	public Short getBeDep() {
		return beDep;
	}

	public void setBeDep(Short beDep) {
		this.beDep = beDep;
	}

	public Short getBeAgit() {
		return beAgit;
	}

	public void setBeAgit(Short beAgit) {
		this.beAgit = beAgit;
	}

	public Short getBeAHall() {
		return beAHall;
	}

	public void setBeAHall(Short beAHall) {
		this.beAHall = beAHall;
	}

	public Short getBeApathy() {
		return beApathy;
	}

	public void setBeApathy(Short beApathy) {
		this.beApathy = beApathy;
	}

	public Short getBeDel() {
		return beDel;
	}

	public void setBeDel(Short beDel) {
		this.beDel = beDel;
	}

	public Short getBeDisin() {
		return beDisin;
	}

	public void setBeDisin(Short beDisin) {
		this.beDisin = beDisin;
	}

	public Short getBeFrst() {
		return beFrst;
	}

	public void setBeFrst(Short beFrst) {
		this.beFrst = beFrst;
	}

	public String getBeFrstx() {
		return beFrstx;
	}

	public void setBeFrstx(String beFrstx) {
		this.beFrstx = beFrstx;
	}

	public Short getBeIrrit() {
		return beIrrit;
	}

	public void setBeIrrit(Short beIrrit) {
		this.beIrrit = beIrrit;
	}

	public Short getBeMode() {
		return beMode;
	}

	public void setBeMode(Short beMode) {
		this.beMode = beMode;
	}

	public String getBeModex() {
		return beModex;
	}

	public void setBeModex(String beModex) {
		this.beModex = beModex;
	}

	public Short getBeOthr() {
		return beOthr;
	}

	public void setBeOthr(Short beOthr) {
		this.beOthr = beOthr;
	}

	public String getBeOthrx() {
		return beOthrx;
	}

	public void setBeOthrx(String beOthrx) {
		this.beOthrx = beOthrx;
	}

	public Short getBePerCh() {
		return bePerCh;
	}

	public void setBePerCh(Short bePerCh) {
		this.bePerCh = bePerCh;
	}

	public Short getBeVHall() {
		return beVHall;
	}

	public void setBeVHall(Short beVHall) {
		this.beVHall = beVHall;
	}

	public Short getCogAttn() {
		return cogAttn;
	}

	public void setCogAttn(Short cogAttn) {
		this.cogAttn = cogAttn;
	}

	public Short getCogFrst() {
		return cogFrst;
	}

	public void setCogFrst(Short cogFrst) {
		this.cogFrst = cogFrst;
	}

	public String getCogFrstx() {
		return cogFrstx;
	}

	public void setCogFrstx(String cogFrstx) {
		this.cogFrstx = cogFrstx;
	}

	public Short getCogJudg() {
		return cogJudg;
	}

	public void setCogJudg(Short cogJudg) {
		this.cogJudg = cogJudg;
	}

	public Short getCogLang() {
		return cogLang;
	}

	public void setCogLang(Short cogLang) {
		this.cogLang = cogLang;
	}

	public Short getCogMem() {
		return cogMem;
	}

	public void setCogMem(Short cogMem) {
		this.cogMem = cogMem;
	}

	public Short getCogMode() {
		return cogMode;
	}

	public void setCogMode(Short cogMode) {
		this.cogMode = cogMode;
	}

	public String getCogModex() {
		return cogModex;
	}

	public void setCogModex(String cogModex) {
		this.cogModex = cogModex;
	}

	public Short getCogOthr() {
		return cogOthr;
	}

	public void setCogOthr(Short cogOthr) {
		this.cogOthr = cogOthr;
	}

	public String getCogOthrx() {
		return cogOthrx;
	}

	public void setCogOthrx(String cogOthrx) {
		this.cogOthrx = cogOthrx;
	}

	public Short getCogVis() {
		return cogVis;
	}

	public void setCogVis(Short cogVis) {
		this.cogVis = cogVis;
	}

	public Short getCourse() {
		return course;
	}

	public void setCourse(Short course) {
		this.course = course;
	}

	public Short getDecAge() {
		return decAge;
	}

	public void setDecAge(Short decAge) {
		this.decAge = decAge;
	}

	public Short getDecClin() {
		return decClin;
	}

	public void setDecClin(Short decClin) {
		this.decClin = decClin;
	}

	public Short getDecIn() {
		return decIn;
	}

	public void setDecIn(Short decIn) {
		this.decIn = decIn;
	}

	public Short getDecSub() {
		return decSub;
	}

	public void setDecSub(Short decSub) {
		this.decSub = decSub;
	}

	
	public Short getFrstChg() {
		return frstChg;
	}

	public void setFrstChg(Short frstChg) {
		this.frstChg = frstChg;
	}

	public Short getMoFalls() {
		return moFalls;
	}

	public void setMoFalls(Short moFalls) {
		this.moFalls = moFalls;
	}

	public Short getMoFrst() {
		return moFrst;
	}

	public void setMoFrst(Short moFrst) {
		this.moFrst = moFrst;
	}

	public Short getMoGait() {
		return moGait;
	}

	public void setMoGait(Short moGait) {
		this.moGait = moGait;
	}

	public Short getMoMode() {
		return moMode;
	}

	public void setMoMode(Short moMode) {
		this.moMode = moMode;
	}

	public String getMoModex() {
		return moModex;
	}

	public void setMoModex(String moModex) {
		this.moModex = moModex;
	}

	public Short getMoSlow() {		

		return moSlow;
	}

	public void setMoSlow(Short moSlow) {
		this.moSlow = moSlow;
	}

	public Short getMoTrem() {
		return moTrem;
	}

	public void setMoTrem(Short moTrem) {
		this.moTrem = moTrem;
	}

	public Short getBeRem() {
		return beRem;
	}

	public void setBeRem(Short beRem) {
		this.beRem = beRem;
	}

	public Short getBeVWell() {
		return beVWell;
	}

	public void setBeVWell(Short beVWell) {
		this.beVWell = beVWell;
	}

	public Short getCogFluc() {
		return cogFluc;
	}

	public void setCogFluc(Short cogFluc) {
		this.cogFluc = cogFluc;
	}

	public Short getMoMoPark() {
		return moMoPark;
	}

	public void setMoMoPark(Short moMoPark) {
		this.moMoPark = moMoPark;
	}
	
	public Short getDecClCog() {
		return decClCog;
	}

	public void setDecClCog(Short decClCog) {
		this.decClCog = decClCog;
	}

	public Short getCogOri() {
		return cogOri;
	}

	public void setCogOri(Short cogOri) {
		this.cogOri = cogOri;
	}

	public Short getCogFlAgO() {
		return cogFlAgO;
	}

	public void setCogFlAgO(Short cogFlAgO) {
		this.cogFlAgO = cogFlAgO;
	}

	public Short getCogFPred() {
		return cogFPred;
	}

	public void setCogFPred(Short cogFPred) {
		this.cogFPred = cogFPred;
	}

	public String getCogFPrex() {
		return cogFPrex;
	}

	public void setCogFPrex(String cogFPrex) {
		this.cogFPrex = cogFPrex;
	}

	public Short getDecClBe() {
		return decClBe;
	}

	public void setDecClBe(Short decClBe) {
		this.decClBe = decClBe;
	}

	public Short getBeVHAgO() {
		return beVHAgO;
	}

	public void setBeVHAgO(Short beVHAgO) {
		this.beVHAgO = beVHAgO;
	}

	public Short getBeRemAgO() {
		return beRemAgO;
	}

	public void setBeRemAgO(Short beRemAgO) {
		this.beRemAgO = beRemAgO;
	}

	public Short getBeAnx() {
		return beAnx;
	}

	public void setBeAnx(Short beAnx) {
		this.beAnx = beAnx;
	}

	public Short getBeFPred() {
		return beFPred;
	}

	public void setBeFPred(Short beFPred) {
		this.beFPred = beFPred;
	}

	public String getBeFPredx() {
		return beFPredx;
	}

	public void setBeFPredx(String beFPredx) {
		this.beFPredx = beFPredx;
	}

	public Short getBeAge() {
		return beAge;
	}

	public void setBeAge(Short beAge) {
		this.beAge = beAge;
	}

	public Short getDecClMot() {
		return decClMot;
	}

	public void setDecClMot(Short decClMot) {
		this.decClMot = decClMot;
	}

	public Short getParkAge() {
		return parkAge;
	}

	public void setParkAge(Short parkAge) {
		this.parkAge = parkAge;
	}

	public Short getMoMoAls() {
		return moMoAls;
	}

	public void setMoMoAls(Short moMoAls) {
		this.moMoAls = moMoAls;
	}

	public Short getAlsAge() {
		return alsAge;
	}

	public void setAlsAge(Short alsAge) {
		this.alsAge = alsAge;
	}

	public Short getMoAge() {
		return moAge;
	}

	public void setMoAge(Short moAge) {
		this.moAge = moAge;
	}

	public Short getLbdEval() {
		return lbdEval;
	}

	public void setLbdEval(Short lbdEval) {
		this.lbdEval = lbdEval;
	}

	public Short getFtldEval() {
		return ftldEval;
	}

	public void setFtldEval(Short ftldEval) {
		this.ftldEval = ftldEval;
	}

	public void markUnusedFields(String version) {
        if (version.equals("1") || version.equals("2")) {
        	if (version.equals("1")) {
        		this.cogFluc = this.beVWell = this.beRem = this.moMoPark = (short)-8;
        	}
   			else if (version.equals("2")){
   				this.b9Chg = (short)-8;
   			}
        	// version 3 properties
        	this.decClCog = this.cogOri = this.cogFlAgO = this.cogFPred = this.decClBe = this.beVHAgO = this.beRemAgO = this.beAnx = this.beFPred = this.beAge
   				= this.decClMot = this.parkAge = this.moMoAls = this.alsAge = this.moAge = this.lbdEval = this.ftldEval = (short) -8;
   			this.cogFPrex = this.beFPredx = "-8";
		}
   		else if (version.equals("3")){
   			this.b9Chg = (short)-8;
   			this.decClin = this.cogFrst = this.beFrst = (short) -8; 
   			this.cogFrstx = this.beFrstx = "-8";
   		}
	}
	
	public String[] getRequiredResultFields(String version) {
		String[] required = new String[]{};
		
		if (version.equalsIgnoreCase("1")) {
			required = new String[] {
					"b9Chg",
					"decSub",
					"decIn",
					"decClin",
					"decAge",
					"cogMem",
					"cogJudg",
					"cogLang",
					"cogVis",
					"cogAttn",
					"cogOthr",
					"cogFrst",
					"cogMode",
					"beApathy",
					"beDep",
					"beVHall",
					"beAHall",
					"beDel",
					"beDisin",
					"beIrrit",
					"beAgit",
					"bePerCh",
					"beOthr",
					"beFrst",
					"beMode",
					"moGait",
					"moFalls",
					"moTrem",
					"moSlow",
					"moFrst",
					"moMode",
					"course",
					"frstChg"};
		}
		else if (version.equalsIgnoreCase("2")) {
			required = new String[] {
					"decSub",
					"decIn",
					"decClin",
					"decAge",
					"cogMem",
					"cogJudg",
					"cogLang",
					"cogVis",
					"cogAttn",
					"cogFluc",
					"cogOthr",
					"cogFrst",
					"cogMode",
					"beApathy",
					"beDep",
					"beVHall",
					"beVWell",
					"beAHall",
					"beDel",
					"beDisin",
					"beIrrit",
					"beAgit",
					"bePerCh",
					"beRem",
					"beOthr",
					"beFrst",
					"beMode",
					"moGait",
					"moFalls",
					"moTrem",
					"moSlow",
					"moFrst",
					"moMode",
					"moMoPark",
					"course",
					"frstChg"};
		}
		else if (version.equals("3")) {
			required = new String[] {
					"decSub",
					"decIn",
					"decClCog",
					"decAge",
					"cogMem",
					"cogOri",
					"cogJudg",
					"cogLang",
					"cogVis",
					"cogAttn",
					"cogFluc",
					"cogFlAgO",
					"cogOthr",
					"cogFPred",
					"cogMode",
					"decClBe",
					"beApathy",
					"beDep",
					"beVHall",
					"beVWell",
					"beVHAgO",
					"beAHall",
					"beDel",
					"beDisin",
					"beIrrit",
					"beAgit",
					"bePerCh",
					"beRem",
					"beRemAgO",
					"beAnx",
					"beOthr",
					"beFPred",
					"beMode",
					"beAge",
					"decClMot",
					"moGait",
					"moFalls",
					"moTrem",
					"moSlow",
					"moFrst",
					"moMode",
					"moMoPark",
					"parkAge",
					"moMoAls",
					"alsAge",
					"moAge",
					"course",
					"frstChg",
					"lbdEval",
					"ftldEval"};
		}
		return required;
	}
	
	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null || getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getInstrVer().equals("1")){
			if(getPacket().equals("I")){
				buffer.append(UdsUploadUtils.formatField(getDecSub())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecIn())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecClin())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecAge())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogMem())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogJudg())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogLang())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogVis())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogAttn())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogOthr())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogOthrx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogFrst())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogFrstx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogMode())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogModex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeApathy())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeDep())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeVHall())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeAHall())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeDel())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeDisin())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeIrrit())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeAgit())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBePerCh())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeOthr())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeOthrx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeFrst())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeFrstx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeMode())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeModex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoGait())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoFalls())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoTrem())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoSlow())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoFrst())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoMode())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoModex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCourse())).append(",");
				buffer.append(UdsUploadUtils.formatField(getFrstChg()));

			}
			else if(getPacket().equals("T") || getPacket().equals("F")){
				buffer.append(UdsUploadUtils.formatField(getB9Chg())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecSub())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecIn())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecClin())).append(",");
				buffer.append(UdsUploadUtils.formatField(getDecAge())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogMem())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogJudg())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogLang())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogVis())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogAttn())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogOthr())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogOthrx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogFrst())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogFrstx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogMode())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCogModex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeApathy())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeDep())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeVHall())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeAHall())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeDel())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeDisin())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeIrrit())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeAgit())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBePerCh())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeOthr())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeOthrx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeFrst())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeFrstx())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeMode())).append(",");
				buffer.append(UdsUploadUtils.formatField(getBeModex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoGait())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoFalls())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoTrem())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoSlow())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoFrst())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoMode())).append(",");
				buffer.append(UdsUploadUtils.formatField(getMoModex())).append(",");
				buffer.append(UdsUploadUtils.formatField(getCourse())).append(",");
				buffer.append(UdsUploadUtils.formatField(getFrstChg()));

			}

		}else if(getInstrVer().equals("2")){
			buffer.append(UdsUploadUtils.formatField(getDecSub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecIn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecClin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogMem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogJudg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogLang())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogVis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogAttn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFluc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFrst())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFrstx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogMode())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogModex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeApathy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeDep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeVHall())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeVWell())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeAHall())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeDel())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeDisin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeIrrit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeAgit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBePerCh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeRem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeFrst())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeFrstx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeMode())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeModex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoGait())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoFalls())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoTrem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoSlow())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoFrst())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoMode())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoModex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoMoPark())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCourse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFrstChg()));
		}else if(getInstrVer().equals("3")){
			buffer.append(UdsUploadUtils.formatField(getDecSub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecIn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecClCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogMem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOri())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogJudg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogLang())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogVis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogAttn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFluc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFlAgO())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFPred())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogFPrex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogMode())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogModex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecClBe())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeApathy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeDep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeVHall())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeVWell())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeVHAgO())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeAHall())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeDel())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeDisin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeIrrit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeAgit())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBePerCh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeRem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeRemAgO())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeAnx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeOthrx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeFPred())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeFPredx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeMode())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeModex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBeAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDecClMot())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoGait())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoFalls())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoTrem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoSlow())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoFrst())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoMode())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoModex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoMoPark())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParkAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoMoAls())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlsAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMoAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCourse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFrstChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLbdEval())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldEval()));
		}
		
		
		return buffer.toString();
	}	
	
	
}


