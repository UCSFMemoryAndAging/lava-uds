package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsMilestone extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsMilestone.class);
	
	public static final String UDS_MILESTONE_FORMID = "M1";
	public UdsMilestone() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsMilestone(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_MILESTONE_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short deceased;
	private Short deathMo;
	private Short deathDy;
	private Short deathYr;
	private Short autopsy;
	private Short discont;
	private Short discMo;
	private Short discDy;
	private Short discYr;
	private Short discReas;
	private String discReax;
	private Short rejoined;
	private Short nurseHome;
	private Short nurseMo;
	private Short nurseDy;
	private Short nurseYr;
	private Short protocol;
	private Short npsyTest;
	private Short npCogImp;
	private Short npPhyIll;
	private Short npHomen;
	private Short npRefus;
	private Short npOthRea;
	private String npOthRex;
	private Short phynData;
	private Short phyCog;
	private Short phyIll;
	private Short phyHome;
	private Short phyRefus;
	private Short phyOth;
	private String phyOthx;
	private Short udsActiv;

	// new fields for version 3
	private Short changemo;
	private Short changedy;
	private Short changeyr;
	private Short aconsent;
	private Short recogim;
	private Short rephyill;
	private Short rerefuse;
	private Short renavail;
	private Short renurse;
	private Short rejoin;
	private Short ftlddisc;
	private Short ftldreas;
	private String ftldreax;
	private Short dropreas;	
	
	public Short getAutopsy() {
		return autopsy;
	}

	public void setAutopsy(Short autopsy) {
		this.autopsy = autopsy;
	}

	public Short getDeathDy() {
		return deathDy;
	}

	public void setDeathDy(Short deathDy) {
		this.deathDy = deathDy;
	}

	public Short getDeathMo() {
		return deathMo;
	}

	public void setDeathMo(Short deathMo) {
		this.deathMo = deathMo;
	}

	public Short getDeathYr() {
		return deathYr;
	}

	public void setDeathYr(Short deathYr) {
		this.deathYr = deathYr;
	}

	public Short getDeceased() {
		return deceased;
	}

	public void setDeceased(Short deceased) {
		this.deceased = deceased;
	}

	public Short getDiscDy() {
		return discDy;
	}

	public void setDiscDy(Short discDy) {
		this.discDy = discDy;
	}

	public Short getDiscMo() {
		return discMo;
	}

	public void setDiscMo(Short discMo) {
		this.discMo = discMo;
	}

	public Short getDiscont() {
		return discont;
	}

	public void setDiscont(Short discont) {
		this.discont = discont;
	}

	public Short getDiscReas() {
		return discReas;
	}

	public void setDiscReas(Short discReas) {
		this.discReas = discReas;
	}

	public String getDiscReax() {
		return discReax;
	}

	public void setDiscReax(String discReax) {
		this.discReax = discReax;
	}

	public Short getDiscYr() {
		return discYr;
	}

	public void setDiscYr(Short discYr) {
		this.discYr = discYr;
	}

	public Short getNpCogImp() {
		return npCogImp;
	}

	public void setNpCogImp(Short npCogImp) {
		this.npCogImp = npCogImp;
	}

	public Short getNpHomen() {
		return npHomen;
	}

	public void setNpHomen(Short npHomen) {
		this.npHomen = npHomen;
	}

	public Short getNpOthRea() {
		return npOthRea;
	}

	public void setNpOthRea(Short npOthRea) {
		this.npOthRea = npOthRea;
	}

	public String getNpOthRex() {
		return npOthRex;
	}

	public void setNpOthRex(String npOthRex) {
		this.npOthRex = npOthRex;
	}

	public Short getNpPhyIll() {
		return npPhyIll;
	}

	public void setNpPhyIll(Short npPhyIll) {
		this.npPhyIll = npPhyIll;
	}

	public Short getNpRefus() {
		return npRefus;
	}

	public void setNpRefus(Short npRefus) {
		this.npRefus = npRefus;
	}

	public Short getNpsyTest() {
		return npsyTest;
	}

	public void setNpsyTest(Short npsyTest) {
		this.npsyTest = npsyTest;
	}

	public Short getNurseDy() {
		return nurseDy;
	}

	public void setNurseDy(Short nurseDy) {
		this.nurseDy = nurseDy;
	}

	public Short getNurseHome() {
		return nurseHome;
	}

	public void setNurseHome(Short nurseHome) {
		this.nurseHome = nurseHome;
	}

	public Short getNurseMo() {
		return nurseMo;
	}

	public void setNurseMo(Short nurseMo) {
		this.nurseMo = nurseMo;
	}

	public Short getNurseYr() {
		return nurseYr;
	}

	public void setNurseYr(Short nurseYr) {
		this.nurseYr = nurseYr;
	}

	public Short getPhyCog() {
		return phyCog;
	}

	public void setPhyCog(Short phyCog) {
		this.phyCog = phyCog;
	}

	public Short getPhyHome() {
		return phyHome;
	}

	public void setPhyHome(Short phyHome) {
		this.phyHome = phyHome;
	}

	public Short getPhyIll() {
		return phyIll;
	}

	public void setPhyIll(Short phyIll) {
		this.phyIll = phyIll;
	}

	public Short getPhynData() {
		return phynData;
	}

	public void setPhynData(Short phynData) {
		this.phynData = phynData;
	}

	public Short getPhyOth() {
		return phyOth;
	}

	public void setPhyOth(Short phyOth) {
		this.phyOth = phyOth;
	}

	public String getPhyOthx() {
		return phyOthx;
	}

	public void setPhyOthx(String phyOthx) {
		this.phyOthx = phyOthx;
	}

	public Short getPhyRefus() {
		return phyRefus;
	}

	public void setPhyRefus(Short phyRefus) {
		this.phyRefus = phyRefus;
	}

	public Short getProtocol() {
		return protocol;
	}

	public void setProtocol(Short protocol) {
		this.protocol = protocol;
	}

	public Short getRejoined() {
		return rejoined;
	}

	public void setRejoined(Short rejoined) {
		this.rejoined = rejoined;
	}

	public Short getUdsActiv() {
		return udsActiv;
	}

	public void setUdsActiv(Short udsActiv) {
		this.udsActiv = udsActiv;
	}	
	
	public Short getChangemo() {
		return changemo;
	}

	public void setChangemo(Short changemo) {
		this.changemo = changemo;
	}

	public Short getChangedy() {
		return changedy;
	}

	public void setChangedy(Short changedy) {
		this.changedy = changedy;
	}

	public Short getChangeyr() {
		return changeyr;
	}

	public void setChangeyr(Short changeyr) {
		this.changeyr = changeyr;
	}

	public Short getAconsent() {
		return aconsent;
	}

	public void setAconsent(Short aconsent) {
		this.aconsent = aconsent;
	}

	public Short getRecogim() {
		return recogim;
	}

	public void setRecogim(Short recogim) {
		this.recogim = recogim;
	}

	public Short getRephyill() {
		return rephyill;
	}

	public void setRephyill(Short rephyill) {
		this.rephyill = rephyill;
	}

	public Short getRerefuse() {
		return rerefuse;
	}

	public void setRerefuse(Short rerefuse) {
		this.rerefuse = rerefuse;
	}

	public Short getRenavail() {
		return renavail;
	}

	public void setRenavail(Short renavail) {
		this.renavail = renavail;
	}

	public Short getRenurse() {
		return renurse;
	}

	public void setRenurse(Short renurse) {
		this.renurse = renurse;
	}

	public Short getRejoin() {
		return rejoin;
	}

	public void setRejoin(Short rejoin) {
		this.rejoin = rejoin;
	}

	public Short getFtlddisc() {
		return ftlddisc;
	}

	public void setFtlddisc(Short ftlddisc) {
		this.ftlddisc = ftlddisc;
	}

	public Short getFtldreas() {
		return ftldreas;
	}

	public void setFtldreas(Short ftldreas) {
		this.ftldreas = ftldreas;
	}

	public String getFtldreax() {
		return ftldreax;
	}

	public void setFtldreax(String ftldreax) {
		this.ftldreax = ftldreax;
	}

	public Short getDropreas() {
		return dropreas;
	}

	public void setDropreas(Short dropreas) {
		this.dropreas = dropreas;
	}

	public void markUnusedFields(String version) {
        if (version.equalsIgnoreCase("1")) {
        	this.rejoined = this.protocol = this.npRefus = this.phyRefus = this.changemo = this.changedy = this.changeyr = this.aconsent = this.recogim = this.rephyill = this.rerefuse = this.renavail = this.renurse = this.rejoin = this.ftlddisc = this.ftldreas = this.dropreas = (short) -8;
        	this.ftldreax = "-8";
   		} else if (version.equalsIgnoreCase("2")) {
   			this.udsActiv = this.changemo = this.changedy = this.changeyr = this.aconsent = this.recogim = this.rephyill = this.rerefuse = this.renavail = this.renurse = this.rejoin = this.ftlddisc = this.ftldreas = this.dropreas = (short) -8;   			
   			this.ftldreax = "-8";
   		} else if (version.equalsIgnoreCase("3")) {
   			this.discReas = this.rejoined = this.nurseHome = this.npsyTest = this.npCogImp = this.npPhyIll = this.npHomen = this.npRefus = this.npOthRea = this.phynData = this.phyCog = this.phyIll = this.phyHome = this.phyRefus = this.phyOth = this.udsActiv = (short) -8;
   			this.discReax = this.npOthRex = this.phyOthx = "-8";
   		}
	}
	public String[] getRequiredResultFields(String version) {
		String[] required = new String[]{};
		// note: "other" fields are not required, yet NACC alerts us
		if (version.equalsIgnoreCase("3")) {
			required = new String[] {
					"changemo",
					"changedy",
					"changeyr",
					"protocol",
					"aconsent",
					"recogim",
					"rephyill",
					"rerefuse",
					"renavail",
					"renurse",
					"nurseMo",
					"nurseDy",
					"nurseYr",
					"rejoin",
					"ftlddisc",
					"ftldreas",
					"ftldreax",
					"deceased",
					"discont",
					"deathMo",
					"deathDy",
					"deathYr",
					"autopsy",
					"discMo",
					"discDy",
					"discYr",
					"dropreas"};
		}		
		else if (version.equalsIgnoreCase("2")) {
			required = new String[] {
					   "deceased",
			           "deathMo",
			           "deathDy",
			           "deathYr",
			           "autopsy",
			           "discont",
			           "discMo",
			           "discDy",
			           "discYr",
			           "discReas",
			           "rejoined",
			           "nurseHome",
			           "nurseMo",
			           "nurseDy",
			           "nurseYr",
			           "protocol",
			           "npsyTest",
			           "npCogImp",
			           "npPhyIll",
			           "npHomen",
			           "npRefus",
			           "npOthRea",
			           "phynData",
			           "phyCog",
			           "phyIll",
			           "phyHome",
			           "phyRefus",
			           "phyOth"};
		}
		else if (version.equalsIgnoreCase("1")) {
			required = new String[] {
					  "npsyTest",
			           "npCogImp",
			           "npPhyIll",
			           "npHomen",
			           "npOthRea",
			           "phynData",
			           "phyCog",
			           "phyIll",
			           "phyHome",
			           "phyOth",
			           "nurseHome",
			           "nurseMo",
			           "nurseDy",
			           "nurseYr",
			           "discont",
			           "discMo",
			           "discDy",
			           "discYr",
			           "discReas",
			           "deceased",
			           "deathMo",
			           "deathDy",
			           "deathYr",
			           "autopsy",
			           "udsActiv"};
		}
		return required;
	}
	
	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getInstrVer().equals("1")){
			buffer.append(UdsUploadUtils.formatField(getNpsyTest())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpCogImp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpPhyIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpHomen())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpOthRea())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpOthRex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhynData())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyHome())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyOth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyOthx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseHome())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscont())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscReas())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscReax())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeceased())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAutopsy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getUdsActiv()));
		}else if(getInstrVer().equals("2")){
			buffer.append(UdsUploadUtils.formatField(getDeceased())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAutopsy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscont())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscReas())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscReax())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRejoined())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseHome())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseYr())).append(",");
			if (getProtocol() != null && getProtocol().equals((short)0))
				buffer.append(UdsUploadUtils.formatField("")).append(",");
			else
				buffer.append(UdsUploadUtils.formatField(getProtocol())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpsyTest())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpCogImp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpPhyIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpHomen())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpRefus())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpOthRea())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNpOthRex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhynData())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyHome())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyRefus())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyOth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPhyOthx()));
		} else if (getInstrVer().equals("3")) {
			buffer.append(UdsUploadUtils.formatField(getChangemo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getChangedy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getChangeyr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getProtocol())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAconsent())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRecogim())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRephyill())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRerefuse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRenavail())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRenurse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNurseYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRejoin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtlddisc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldreas())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldreax())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeceased())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscont())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeathYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAutopsy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscMo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscDy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDiscYr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDropreas())).append(",");
		}
		return buffer.toString();
	}	
	

}



