package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsDiagnosis extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsDiagnosis.class);
	
	public static final String UDS_DIAGNOSIS_FORMID="D1";
	public UdsDiagnosis() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsDiagnosis(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_DIAGNOSIS_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short whoDidDx;
	private Short normCog;
	private Short demented;
	private Short mciaMem;
	private Short mciaPlus;
	private Short mciaPLan;
	private Short mciaPAtt;
	private Short mciaPEx;
	private Short mciaPVis;
	private Short mciNon1;
	private Short mciN1Lan;
	private Short mciN1Att;
	private Short mciN1Ex;
	private Short mciN1Vis;
	private Short mciNon2;
	private Short mciN2Lan;
	private Short mciN2Att;
	private Short mciN2Ex;
	private Short mciN2Vis;
	private Short impNoMci;
	private Short probAd;
	private Short probAdIf;
	private Short possAd;
	private Short possAdIf;
	private Short dlb;
	private Short dlbIf;
	private Short vasc;
	private Short vascIf;
	private Short vascPs;
	private Short vascPsIf;
	private Short alcDem;
	private Short alcDemIf;
	private Short demUn;
	private Short demUnIf;
	private Short ftd;
	private Short ftdIf;
	private Short ppAph;
	private Short ppAphIf;
	private Short pnAph;
	private Short semDemAn;
	private Short semDemAg;
	private Short ppAOthr;
	private Short psp;
	private Short pspIf;
	private Short cort;
	private Short cortIf;
	private Short hunt;
	private Short huntIf;
	private Short prion;
	private Short prionIf;
	private Short meds;
	private Short medsIf;
	private Short dysIll;
	private Short dysIllIf;
	private Short dep;
	private Short depIf;
	private Short othPsy;
	private Short othPsyIf;
	private Short downs;
	private Short downsIf;
	private Short park;
	private Short parkIf;
	private Short stroke;
	private Short strokIf;
	private Short hyceph;
	private Short hycephIf;
	private Short brnInj;
	private Short brnInjIf;
	private Short neop;
	private Short neopIf;
	private Short cogOth;
	private Short cogOthIf;
	private String cogOthx;
	private Short cogOth2;
	private Short cogOth2If;
	private String cogOth2x;
	private Short cogOth3;
	private Short cogOth3If;
	private String cogOth3x;
	
	
	public Short getAlcDem() {
		return alcDem;
	}

	public void setAlcDem(Short alcDem) {
		this.alcDem = alcDem;
	}

	public Short getAlcDemIf() {
		return alcDemIf;
	}

	public void setAlcDemIf(Short alcDemIf) {
		this.alcDemIf = alcDemIf;
	}

	public Short getBrnInj() {
		return brnInj;
	}

	public void setBrnInj(Short brnInj) {
		this.brnInj = brnInj;
	}

	public Short getBrnInjIf() {
		return brnInjIf;
	}

	public void setBrnInjIf(Short brnInjIf) {
		this.brnInjIf = brnInjIf;
	}

	public Short getCogOth() {
		return cogOth;
	}

	public void setCogOth(Short cogOth) {
		this.cogOth = cogOth;
	}

	public Short getCogOthIf() {
		return cogOthIf;
	}

	public void setCogOthIf(Short cogOthIf) {
		this.cogOthIf = cogOthIf;
	}

	public String getCogOthx() {
		return cogOthx;
	}

	public void setCogOthx(String cogOthx) {
		this.cogOthx = cogOthx;
	}

	public Short getCort() {
		return cort;
	}

	public void setCort(Short cort) {
		this.cort = cort;
	}

	public Short getCortIf() {
		return cortIf;
	}

	public void setCortIf(Short cortIf) {
		this.cortIf = cortIf;
	}

	public Short getDemented() {
		return demented;
	}

	public void setDemented(Short demented) {
		this.demented = demented;
	}

	public Short getDemUn() {
		return demUn;
	}

	public void setDemUn(Short demUn) {
		this.demUn = demUn;
	}

	public Short getDemUnIf() {
		return demUnIf;
	}

	public void setDemUnIf(Short demUnIf) {
		this.demUnIf = demUnIf;
	}

	public Short getDep() {
		return dep;
	}

	public void setDep(Short dep) {
		this.dep = dep;
	}

	public Short getDepIf() {
		return depIf;
	}

	public void setDepIf(Short depIf) {
		this.depIf = depIf;
	}

	public Short getDlb() {
		return dlb;
	}

	public void setDlb(Short dlb) {
		this.dlb = dlb;
	}

	public Short getDlbIf() {
		return dlbIf;
	}

	public void setDlbIf(Short dlbIf) {
		this.dlbIf = dlbIf;
	}

	public Short getDowns() {
		return downs;
	}

	public void setDowns(Short downs) {
		this.downs = downs;
	}

	public Short getDownsIf() {
		return downsIf;
	}

	public void setDownsIf(Short downsIf) {
		this.downsIf = downsIf;
	}

	public Short getDysIll() {
		return dysIll;
	}

	public void setDysIll(Short dysIll) {
		this.dysIll = dysIll;
	}

	public Short getDysIllIf() {
		return dysIllIf;
	}

	public void setDysIllIf(Short dysIllIf) {
		this.dysIllIf = dysIllIf;
	}

	public Short getFtd() {
		return ftd;
	}

	public void setFtd(Short ftd) {
		this.ftd = ftd;
	}

	public Short getFtdIf() {
		return ftdIf;
	}

	public void setFtdIf(Short ftdIf) {
		this.ftdIf = ftdIf;
	}

	public Short getHunt() {
		return hunt;
	}

	public void setHunt(Short hunt) {
		this.hunt = hunt;
	}

	public Short getHuntIf() {
		return huntIf;
	}

	public void setHuntIf(Short huntIf) {
		this.huntIf = huntIf;
	}

	public Short getHyceph() {
		return hyceph;
	}

	public void setHyceph(Short hyceph) {
		this.hyceph = hyceph;
	}

	public Short getHycephIf() {
		return hycephIf;
	}

	public void setHycephIf(Short hycephIf) {
		this.hycephIf = hycephIf;
	}

	public Short getImpNoMci() {
		return impNoMci;
	}

	public void setImpNoMci(Short impNoMci) {
		this.impNoMci = impNoMci;
	}

	public Short getMciaMem() {
		return mciaMem;
	}

	public void setMciaMem(Short mciaMem) {
		this.mciaMem = mciaMem;
	}

	public Short getMciaPAtt() {
		return mciaPAtt;
	}

	public void setMciaPAtt(Short mciaPAtt) {
		this.mciaPAtt = mciaPAtt;
	}

	public Short getMciaPEx() {
		return mciaPEx;
	}

	public void setMciaPEx(Short mciaPEx) {
		this.mciaPEx = mciaPEx;
	}

	public Short getMciaPLan() {
		return mciaPLan;
	}

	public void setMciaPLan(Short mciaPLan) {
		this.mciaPLan = mciaPLan;
	}

	public Short getMciaPlus() {
		return mciaPlus;
	}

	public void setMciaPlus(Short mciaPlus) {
		this.mciaPlus = mciaPlus;
	}

	public Short getMciaPVis() {
		return mciaPVis;
	}

	public void setMciaPVis(Short mciaPVis) {
		this.mciaPVis = mciaPVis;
	}

	public Short getMciN1Att() {
		return mciN1Att;
	}

	public void setMciN1Att(Short mciN1Att) {
		this.mciN1Att = mciN1Att;
	}

	public Short getMciN1Ex() {
		return mciN1Ex;
	}

	public void setMciN1Ex(Short mciN1Ex) {
		this.mciN1Ex = mciN1Ex;
	}

	public Short getMciN1Lan() {
		return mciN1Lan;
	}

	public void setMciN1Lan(Short mciN1Lan) {
		this.mciN1Lan = mciN1Lan;
	}

	public Short getMciN1Vis() {
		return mciN1Vis;
	}

	public void setMciN1Vis(Short mciN1Vis) {
		this.mciN1Vis = mciN1Vis;
	}

	public Short getMciN2Att() {
		return mciN2Att;
	}

	public void setMciN2Att(Short mciN2Att) {
		this.mciN2Att = mciN2Att;
	}

	public Short getMciN2Ex() {
		return mciN2Ex;
	}

	public void setMciN2Ex(Short mciN2Ex) {
		this.mciN2Ex = mciN2Ex;
	}

	public Short getMciN2Lan() {
		return mciN2Lan;
	}

	public void setMciN2Lan(Short mciN2Lan) {
		this.mciN2Lan = mciN2Lan;
	}

	public Short getMciN2Vis() {
		return mciN2Vis;
	}

	public void setMciN2Vis(Short mciN2Vis) {
		this.mciN2Vis = mciN2Vis;
	}

	public Short getMciNon1() {
		return mciNon1;
	}

	public void setMciNon1(Short mciNon1) {
		this.mciNon1 = mciNon1;
	}

	public Short getMciNon2() {
		return mciNon2;
	}

	public void setMciNon2(Short mciNon2) {
		this.mciNon2 = mciNon2;
	}

	public Short getMeds() {
		return meds;
	}

	public void setMeds(Short meds) {
		this.meds = meds;
	}

	public Short getMedsIf() {
		return medsIf;
	}

	public void setMedsIf(Short medsIf) {
		this.medsIf = medsIf;
	}

	public Short getNeop() {
		return neop;
	}

	public void setNeop(Short neop) {
		this.neop = neop;
	}

	public Short getNeopIf() {
		return neopIf;
	}

	public void setNeopIf(Short neopIf) {
		this.neopIf = neopIf;
	}

	public Short getNormCog() {
		return normCog;
	}

	public void setNormCog(Short normCog) {
		this.normCog = normCog;
	}

	public Short getOthPsy() {
		return othPsy;
	}

	public void setOthPsy(Short othPsy) {
		this.othPsy = othPsy;
	}

	public Short getOthPsyIf() {
		return othPsyIf;
	}

	public void setOthPsyIf(Short othPsyIf) {
		this.othPsyIf = othPsyIf;
	}

	public Short getPark() {
		return park;
	}

	public void setPark(Short park) {
		this.park = park;
	}

	public Short getParkIf() {
		return parkIf;
	}

	public void setParkIf(Short parkIf) {
		this.parkIf = parkIf;
	}

	public Short getPnAph() {
		return pnAph;
	}

	public void setPnAph(Short pnAph) {
		this.pnAph = pnAph;
	}

	public Short getPossAd() {
		return possAd;
	}

	public void setPossAd(Short possAd) {
		this.possAd = possAd;
	}

	public Short getPossAdIf() {
		return possAdIf;
	}

	public void setPossAdIf(Short possAdIf) {
		this.possAdIf = possAdIf;
	}

	public Short getPpAOthr() {
		return ppAOthr;
	}

	public void setPpAOthr(Short ppAOthr) {
		this.ppAOthr = ppAOthr;
	}

	public Short getPpAph() {
		return ppAph;
	}

	public void setPpAph(Short ppAph) {
		this.ppAph = ppAph;
	}

	public Short getPpAphIf() {
		return ppAphIf;
	}

	public void setPpAphIf(Short ppAphIf) {
		this.ppAphIf = ppAphIf;
	}

	public Short getPrion() {
		return prion;
	}

	public void setPrion(Short prion) {
		this.prion = prion;
	}

	public Short getPrionIf() {
		return prionIf;
	}

	public void setPrionIf(Short prionIf) {
		this.prionIf = prionIf;
	}

	public Short getProbAd() {
		return probAd;
	}

	public void setProbAd(Short probAd) {
		this.probAd = probAd;
	}

	public Short getProbAdIf() {
		return probAdIf;
	}

	public void setProbAdIf(Short probAdIf) {
		this.probAdIf = probAdIf;
	}

	public Short getPsp() {
		return psp;
	}

	public void setPsp(Short psp) {
		this.psp = psp;
	}

	public Short getPspIf() {
		return pspIf;
	}

	public void setPspIf(Short pspIf) {
		this.pspIf = pspIf;
	}

	public Short getSemDemAg() {
		return semDemAg;
	}

	public void setSemDemAg(Short semDemAg) {
		this.semDemAg = semDemAg;
	}

	public Short getSemDemAn() {
		return semDemAn;
	}

	public void setSemDemAn(Short semDemAn) {
		this.semDemAn = semDemAn;
	}

	public Short getStroke() {
		return stroke;
	}

	public void setStroke(Short stroke) {
		this.stroke = stroke;
	}

	public Short getStrokIf() {
		return strokIf;
	}

	public void setStrokIf(Short strokIf) {
		this.strokIf = strokIf;
	}

	public Short getVasc() {
		return vasc;
	}

	public void setVasc(Short vasc) {
		this.vasc = vasc;
	}

	public Short getVascIf() {
		return vascIf;
	}

	public void setVascIf(Short vascIf) {
		this.vascIf = vascIf;
	}

	public Short getWhoDidDx() {
		return whoDidDx;
	}

	public void setWhoDidDx(Short whoDidDx) {
		this.whoDidDx = whoDidDx;
	}

	public Short getCogOth2() {
		return cogOth2;
	}

	public void setCogOth2(Short cogOth2) {
		this.cogOth2 = cogOth2;
	}

	public Short getCogOth2If() {
		return cogOth2If;
	}

	public void setCogOth2If(Short cogOth2If) {
		this.cogOth2If = cogOth2If;
	}

	public String getCogOth2x() {
		return cogOth2x;
	}

	public void setCogOth2x(String cogOth2x) {
		this.cogOth2x = cogOth2x;
	}

	public Short getCogOth3() {
		return cogOth3;
	}

	public void setCogOth3(Short cogOth3) {
		this.cogOth3 = cogOth3;
	}

	public Short getCogOth3If() {
		return cogOth3If;
	}

	public void setCogOth3If(Short cogOth3If) {
		this.cogOth3If = cogOth3If;
	}

	public String getCogOth3x() {
		return cogOth3x;
	}

	public void setCogOth3x(String cogOth3x) {
		this.cogOth3x = cogOth3x;
	}

	public Short getVascPs() {
		return vascPs;
	}

	public void setVascPs(Short vascPs) {
		this.vascPs = vascPs;
	}

	public Short getVascPsIf() {
		return vascPsIf;
	}

	public void setVascPsIf(Short vascPsIf) {
		this.vascPsIf = vascPsIf;
	}

	
	
	

	public void markUnusedFields(String version) {
		if(version.equalsIgnoreCase("1")){
			this.vascPs = this.vascPsIf = this.cogOth2 = this.cogOth2If = this.cogOth3 = this.cogOth3If = (short)-8;
		}
		
	}

	public String[] getRequiredResultFields(String version) {
		
		if (version.equalsIgnoreCase("1")){
			return new String[] {
				"whoDidDx",
				"normCog",
				"demented",
				"mciaMem",
				"mciaPlus",
				"mciaPLan",
				"mciaPAtt",
				"mciaPEx",
				"mciaPVis",
				"mciNon1",
				"mciN1Lan",
				"mciN1Att",
				"mciN1Ex",
				"mciN1Vis",
				"mciNon2",
				"mciN2Lan",
				"mciN2Att",
				"mciN2Ex",
				"mciN2Vis",
				"impNoMci",
				"probAd",
				"probAdIf",
				"possAd",
				"possAdIf",
				"dlb",
				"dlbIf",
				"vasc",
				"vascIf",
				"alcDem",
				"alcDemIf",
				"demUn",
				"demUnIf",
				"ftd",
				"ftdIf",
				"ppAph",
				"ppAphIf",
				"pnAph",
				"semDemAn",
				"semDemAg",
				"ppAOthr",
				"psp",
				"pspIf",
				"cort",
				"cortIf",
				"hunt",
				"huntIf",
				"prion",
				"prionIf",
				"meds",
				"medsIf",
				"dysIll",
				"dysIllIf",
				"dep",
				"depIf",
				"othPsy",
				"othPsyIf",
				"downs",
				"downsIf",
				"park",
				"parkIf",
				"stroke",
				"strokIf",
				"hyceph",
				"hycephIf",
				"brnInj",
				"brnInjIf",
				"neop",
				"neopIf",
				"cogOth",
				"cogOthIf"};
		}else if (version.equalsIgnoreCase("2")){
			return new String[] {
					"whoDidDx",
					"normCog",
					"demented",
					"mciaMem",
					"mciaPlus",
					"mciaPLan",
					"mciaPAtt",
					"mciaPEx",
					"mciaPVis",
					"mciNon1",
					"mciN1Lan",
					"mciN1Att",
					"mciN1Ex",
					"mciN1Vis",
					"mciNon2",
					"mciN2Lan",
					"mciN2Att",
					"mciN2Ex",
					"mciN2Vis",
					"impNoMci",
					"probAd",
					"probAdIf",
					"possAd",
					"possAdIf",
					"dlb",
					"dlbIf",
					"vasc",
					"vascIf",
					"vascPs",
					"vascPsIf",
					"alcDem",
					"alcDemIf",
					"demUn",
					"demUnIf",
					"ftd",
					"ftdIf",
					"ppAph",
					"ppAphIf",
					"pnAph",
					"semDemAn",
					"semDemAg",
					"ppAOthr",
					"psp",
					"pspIf",
					"cort",
					"cortIf",
					"hunt",
					"huntIf",
					"prion",
					"prionIf",
					"meds",
					"medsIf",
					"dysIll",
					"dysIllIf",
					"dep",
					"depIf",
					"othPsy",
					"othPsyIf",
					"downs",
					"downsIf",
					"park",
					"parkIf",
					"stroke",
					"strokIf",
					"hyceph",
					"hycephIf",
					"brnInj",
					"brnInjIf",
					"neop",
					"neopIf",
					"cogOth",
					"cogOthIf",
					"cogOth2",
					"cogOth2If",
					"cogOth3",
					"cogOth3If"};
			}
		return new String[]{};
	}
	
	
	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getInstrVer().equals("1")){
			buffer.append(UdsUploadUtils.formatField(getWhoDidDx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNormCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemented())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaMem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPlus())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPLan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPAtt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPEx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPVis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciNon1())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Lan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Att())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Ex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Vis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciNon2())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Lan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Att())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Ex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Vis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImpNoMci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getProbAd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getProbAdIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPossAd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPossAdIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDlb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDlbIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVasc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVascIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcDemIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemUn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemUnIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpAph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpAphIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPnAph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSemDemAn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSemDemAg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpAOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPspIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCort())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCortIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHunt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHuntIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrion())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrionIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMeds())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMedsIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDysIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDysIllIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDepIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthPsy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthPsyIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDowns())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDownsIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPark())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParkIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStroke())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrokIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyceph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHycephIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnInj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnInjIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeop())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeopIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthx()));
		}else if(getInstrVer().equals("2")){
			buffer.append(UdsUploadUtils.formatField(getWhoDidDx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNormCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemented())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaMem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPlus())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPLan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPAtt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPEx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciaPVis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciNon1())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Lan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Att())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Ex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN1Vis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciNon2())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Lan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Att())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Ex())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMciN2Vis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImpNoMci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getProbAd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getProbAdIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPossAd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPossAdIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDlb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDlbIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVasc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVascIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVascPs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getVascPsIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcDemIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemUn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemUnIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpAph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpAphIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPnAph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSemDemAn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSemDemAg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpAOthr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPspIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCort())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCortIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHunt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHuntIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrion())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrionIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMeds())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMedsIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDysIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDysIllIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDepIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthPsy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthPsyIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDowns())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDownsIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPark())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParkIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStroke())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrokIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyceph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHycephIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnInj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnInjIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeop())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeopIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOthx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth2())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth2If())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth2x())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth3())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth3If())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCogOth3x()));

		}
		return buffer.toString();
	}	
	
}


