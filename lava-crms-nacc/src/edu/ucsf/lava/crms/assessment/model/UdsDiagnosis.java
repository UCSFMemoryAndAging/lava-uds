package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;
import java.util.Locale;

import edu.ucsf.lava.core.metadata.MetadataManager;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.core.model.ValidationException;
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
	
    // folowing fields are new for version 3
	protected Short dxmethod;
	protected Short amndem;
	protected Short pca;
	protected Short ppasyn;
	protected Short ppasynt;
	protected Short ftdsyn;
	protected Short lbdsyn;
	protected Short namndem;
	protected Short amylpet;
	protected Short amylcsf;
	protected Short fdgad;
	protected Short hippatr;
	protected Short taupetad;
	protected Short csftau;
	protected Short fdgftld;
	protected Short tpetftld;
	protected Short mrftld;
	protected Short datscan;
	protected Short othbiom;
	protected String othbiomx;
	protected Short imaglinf;
	protected Short imaglac;
	protected Short imagmach;
	protected Short imagmich;
	protected Short imagmwmh;
	protected Short imagewmh;
	protected Short admut;
	protected Short ftldmut;
	protected Short othmut;
	protected String othmutx;
	protected Short alzdis;
	protected Short alzdisif;
	protected Short lbdis;
	protected Short lbdif;
	protected Short msa;
	protected Short msaif;
	protected Short ftldmo;
	protected Short ftldmoif;
	protected Short ftldnos;
	protected Short ftldnoif;
	protected Short ftldsubt;
	protected String ftldsubx;
	protected Short cvd;
	protected Short cvdif;
	protected Short prevstk;
	protected Short strokdec;
	protected Short stkimag;
	protected Short infnetw;
	protected Short infwmh;
	protected Short esstrem;
	protected Short esstreif;
	protected Short brnincte;
	protected Short epilep;
	protected Short epilepif;
	protected Short neopstat;
	protected Short hiv;
	protected Short hivif;
	protected Short othcog;
	protected Short othcogif;
	protected String othcogx;
	protected Short deptreat;
	protected Short bipoldx;
	protected Short bipoldif;
	protected Short schizop;
	protected Short schizoif;
	protected Short anxiet;
	protected Short anxietif;
	protected Short delir;
	protected Short delirif;
	protected Short ptsddx;
	protected Short ptsddxif;
	protected String othpsyx;
	protected Short alcabuse;
	protected Short impsub;
	protected Short impsubif;	
	
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
	
	public Short getDxmethod() {
		return dxmethod;
	}

	public void setDxmethod(Short dxmethod) {
		this.dxmethod = dxmethod;
	}

	public Short getAmndem() {
		return amndem;
	}

	public void setAmndem(Short amndem) {
		this.amndem = amndem;
	}

	public Short getPca() {
		return pca;
	}

	public void setPca(Short pca) {
		this.pca = pca;
	}

	public Short getPpasyn() {
		return ppasyn;
	}

	public void setPpasyn(Short ppasyn) {
		this.ppasyn = ppasyn;
	}

	public Short getPpasynt() {
		return ppasynt;
	}

	public void setPpasynt(Short ppasynt) {
		this.ppasynt = ppasynt;
	}

	public Short getFtdsyn() {
		return ftdsyn;
	}

	public void setFtdsyn(Short ftdsyn) {
		this.ftdsyn = ftdsyn;
	}

	public Short getLbdsyn() {
		return lbdsyn;
	}

	public void setLbdsyn(Short lbdsyn) {
		this.lbdsyn = lbdsyn;
	}

	public Short getNamndem() {
		return namndem;
	}

	public void setNamndem(Short namndem) {
		this.namndem = namndem;
	}

	public Short getAmylpet() {
		return amylpet;
	}

	public void setAmylpet(Short amylpet) {
		this.amylpet = amylpet;
	}

	public Short getAmylcsf() {
		return amylcsf;
	}

	public void setAmylcsf(Short amylcsf) {
		this.amylcsf = amylcsf;
	}

	public Short getFdgad() {
		return fdgad;
	}

	public void setFdgad(Short fdgad) {
		this.fdgad = fdgad;
	}

	public Short getHippatr() {
		return hippatr;
	}

	public void setHippatr(Short hippatr) {
		this.hippatr = hippatr;
	}

	public Short getTaupetad() {
		return taupetad;
	}

	public void setTaupetad(Short taupetad) {
		this.taupetad = taupetad;
	}

	public Short getCsftau() {
		return csftau;
	}

	public void setCsftau(Short csftau) {
		this.csftau = csftau;
	}

	public Short getFdgftld() {
		return fdgftld;
	}

	public void setFdgftld(Short fdgftld) {
		this.fdgftld = fdgftld;
	}

	public Short getTpetftld() {
		return tpetftld;
	}

	public void setTpetftld(Short tpetftld) {
		this.tpetftld = tpetftld;
	}

	public Short getMrftld() {
		return mrftld;
	}

	public void setMrftld(Short mrftld) {
		this.mrftld = mrftld;
	}

	public Short getDatscan() {
		return datscan;
	}

	public void setDatscan(Short datscan) {
		this.datscan = datscan;
	}

	public Short getOthbiom() {
		return othbiom;
	}

	public void setOthbiom(Short othbiom) {
		this.othbiom = othbiom;
	}

	public String getOthbiomx() {
		return othbiomx;
	}

	public void setOthbiomx(String othbiomx) {
		this.othbiomx = othbiomx;
	}

	public Short getImaglinf() {
		return imaglinf;
	}

	public void setImaglinf(Short imaglinf) {
		this.imaglinf = imaglinf;
	}

	public Short getImaglac() {
		return imaglac;
	}

	public void setImaglac(Short imaglac) {
		this.imaglac = imaglac;
	}

	public Short getImagmach() {
		return imagmach;
	}

	public void setImagmach(Short imagmach) {
		this.imagmach = imagmach;
	}

	public Short getImagmich() {
		return imagmich;
	}

	public void setImagmich(Short imagmich) {
		this.imagmich = imagmich;
	}

	public Short getImagmwmh() {
		return imagmwmh;
	}

	public void setImagmwmh(Short imagmwmh) {
		this.imagmwmh = imagmwmh;
	}

	public Short getImagewmh() {
		return imagewmh;
	}

	public void setImagewmh(Short imagewmh) {
		this.imagewmh = imagewmh;
	}

	public Short getAdmut() {
		return admut;
	}

	public void setAdmut(Short admut) {
		this.admut = admut;
	}

	public Short getFtldmut() {
		return ftldmut;
	}

	public void setFtldmut(Short ftldmut) {
		this.ftldmut = ftldmut;
	}

	public Short getOthmut() {
		return othmut;
	}

	public void setOthmut(Short othmut) {
		this.othmut = othmut;
	}

	public String getOthmutx() {
		return othmutx;
	}

	public void setOthmutx(String othmutx) {
		this.othmutx = othmutx;
	}

	public Short getAlzdis() {
		return alzdis;
	}

	public void setAlzdis(Short alzdis) {
		this.alzdis = alzdis;
	}

	public Short getAlzdisif() {
		return alzdisif;
	}

	public void setAlzdisif(Short alzdisif) {
		this.alzdisif = alzdisif;
	}

	public Short getLbdis() {
		return lbdis;
	}

	public void setLbdis(Short lbdis) {
		this.lbdis = lbdis;
	}

	public Short getLbdif() {
		return lbdif;
	}

	public void setLbdif(Short lbdif) {
		this.lbdif = lbdif;
	}

	public Short getMsa() {
		return msa;
	}

	public void setMsa(Short msa) {
		this.msa = msa;
	}

	public Short getMsaif() {
		return msaif;
	}

	public void setMsaif(Short msaif) {
		this.msaif = msaif;
	}

	public Short getFtldmo() {
		return ftldmo;
	}

	public void setFtldmo(Short ftldmo) {
		this.ftldmo = ftldmo;
	}

	public Short getFtldmoif() {
		return ftldmoif;
	}

	public void setFtldmoif(Short ftldmoif) {
		this.ftldmoif = ftldmoif;
	}

	public Short getFtldnos() {
		return ftldnos;
	}

	public void setFtldnos(Short ftldnos) {
		this.ftldnos = ftldnos;
	}

	public Short getFtldnoif() {
		return ftldnoif;
	}

	public void setFtldnoif(Short ftldnoif) {
		this.ftldnoif = ftldnoif;
	}

	public Short getFtldsubt() {
		return ftldsubt;
	}

	public void setFtldsubt(Short ftldsubt) {
		this.ftldsubt = ftldsubt;
	}

	public String getFtldsubx() {
		return ftldsubx;
	}

	public void setFtldsubx(String ftldsubx) {
		this.ftldsubx = ftldsubx;
	}

	public Short getCvd() {
		return cvd;
	}

	public void setCvd(Short cvd) {
		this.cvd = cvd;
	}

	public Short getCvdif() {
		return cvdif;
	}

	public void setCvdif(Short cvdif) {
		this.cvdif = cvdif;
	}

	public Short getPrevstk() {
		return prevstk;
	}

	public void setPrevstk(Short prevstk) {
		this.prevstk = prevstk;
	}

	public Short getStrokdec() {
		return strokdec;
	}

	public void setStrokdec(Short strokdec) {
		this.strokdec = strokdec;
	}

	public Short getStkimag() {
		return stkimag;
	}

	public void setStkimag(Short stkimag) {
		this.stkimag = stkimag;
	}

	public Short getInfnetw() {
		return infnetw;
	}

	public void setInfnetw(Short infnetw) {
		this.infnetw = infnetw;
	}

	public Short getInfwmh() {
		return infwmh;
	}

	public void setInfwmh(Short infwmh) {
		this.infwmh = infwmh;
	}

	public Short getEsstrem() {
		return esstrem;
	}

	public void setEsstrem(Short esstrem) {
		this.esstrem = esstrem;
	}

	public Short getEsstreif() {
		return esstreif;
	}

	public void setEsstreif(Short esstreif) {
		this.esstreif = esstreif;
	}

	public Short getBrnincte() {
		return brnincte;
	}

	public void setBrnincte(Short brnincte) {
		this.brnincte = brnincte;
	}

	public Short getEpilep() {
		return epilep;
	}

	public void setEpilep(Short epilep) {
		this.epilep = epilep;
	}

	public Short getEpilepif() {
		return epilepif;
	}

	public void setEpilepif(Short epilepif) {
		this.epilepif = epilepif;
	}

	public Short getNeopstat() {
		return neopstat;
	}

	public void setNeopstat(Short neopstat) {
		this.neopstat = neopstat;
	}

	public Short getHiv() {
		return hiv;
	}

	public void setHiv(Short hiv) {
		this.hiv = hiv;
	}

	public Short getHivif() {
		return hivif;
	}

	public void setHivif(Short hivif) {
		this.hivif = hivif;
	}

	public Short getOthcog() {
		return othcog;
	}

	public void setOthcog(Short othcog) {
		this.othcog = othcog;
	}

	public Short getOthcogif() {
		return othcogif;
	}

	public void setOthcogif(Short othcogif) {
		this.othcogif = othcogif;
	}

	public String getOthcogx() {
		return othcogx;
	}

	public void setOthcogx(String othcogx) {
		this.othcogx = othcogx;
	}

	public Short getDeptreat() {
		return deptreat;
	}

	public void setDeptreat(Short deptreat) {
		this.deptreat = deptreat;
	}

	public Short getBipoldx() {
		return bipoldx;
	}

	public void setBipoldx(Short bipoldx) {
		this.bipoldx = bipoldx;
	}

	public Short getBipoldif() {
		return bipoldif;
	}

	public void setBipoldif(Short bipoldif) {
		this.bipoldif = bipoldif;
	}

	public Short getSchizop() {
		return schizop;
	}

	public void setSchizop(Short schizop) {
		this.schizop = schizop;
	}

	public Short getSchizoif() {
		return schizoif;
	}

	public void setSchizoif(Short schizoif) {
		this.schizoif = schizoif;
	}

	public Short getAnxiet() {
		return anxiet;
	}

	public void setAnxiet(Short anxiet) {
		this.anxiet = anxiet;
	}

	public Short getAnxietif() {
		return anxietif;
	}

	public void setAnxietif(Short anxietif) {
		this.anxietif = anxietif;
	}

	public Short getDelir() {
		return delir;
	}

	public void setDelir(Short delir) {
		this.delir = delir;
	}

	public Short getDelirif() {
		return delirif;
	}

	public void setDelirif(Short delirif) {
		this.delirif = delirif;
	}

	public Short getPtsddx() {
		return ptsddx;
	}

	public void setPtsddx(Short ptsddx) {
		this.ptsddx = ptsddx;
	}

	public Short getPtsddxif() {
		return ptsddxif;
	}

	public void setPtsddxif(Short ptsddxif) {
		this.ptsddxif = ptsddxif;
	}

	public String getOthpsyx() {
		return othpsyx;
	}

	public void setOthpsyx(String othpsyx) {
		this.othpsyx = othpsyx;
	}

	public Short getAlcabuse() {
		return alcabuse;
	}

	public void setAlcabuse(Short alcabuse) {
		this.alcabuse = alcabuse;
	}

	public Short getImpsub() {
		return impsub;
	}

	public void setImpsub(Short impsub) {
		this.impsub = impsub;
	}

	public Short getImpsubif() {
		return impsubif;
	}

	public void setImpsubif(Short impsubif) {
		this.impsubif = impsubif;
	}

	public void markUnusedFields(String version) {
		if(version.equalsIgnoreCase("1")){
			this.vascPs = this.vascPsIf = this.cogOth2 = this.cogOth2If = this.cogOth3 = this.cogOth3If = (short)-8;
		}
		
	}
	
	
	public void validate(MetadataManager metadataManager) {
		super.validate(metadataManager);
		
		if(this.getFormVer().equalsIgnoreCase("3")){
			// Only one diagnosis can be selected as 1=Primary.
			int numPrimaryDxs = 0;
			
			if (this.alzdisif != null && this.alzdisif==1) numPrimaryDxs++;
			if (this.lbdif != null && this.lbdif==1) numPrimaryDxs++;
			if (this.msaif != null && this.msaif==1) numPrimaryDxs++;
			if (this.pspIf != null && this.pspIf==1) numPrimaryDxs++;
			if (this.cortIf != null && this.cortIf==1) numPrimaryDxs++;
			if (this.ftldmoif != null && this.ftldmoif==1) numPrimaryDxs++;
			if (this.ftldnoif != null && this.ftldnoif==1) numPrimaryDxs++;
			if (this.cvdif != null && this.cvdif==1) numPrimaryDxs++;
			if (this.esstreif != null && this.esstreif==1) numPrimaryDxs++;
			if (this.downsIf != null && this.downsIf==1) numPrimaryDxs++;
			if (this.huntIf != null && this.huntIf==1) numPrimaryDxs++;
			if (this.prionIf != null && this.prionIf==1) numPrimaryDxs++;
			if (this.brnInjIf != null && this.brnInjIf==1) numPrimaryDxs++;
			if (this.hycephIf != null && this.hycephIf==1) numPrimaryDxs++;
			if (this.epilepif != null && this.epilepif==1) numPrimaryDxs++;
			if (this.neopIf != null && this.neopIf==1) numPrimaryDxs++;
			if (this.hivif != null && this.hivif==1) numPrimaryDxs++;
			if (this.othcogif != null && this.othcogif==1) numPrimaryDxs++;
			if (this.depIf != null && this.depIf==1) numPrimaryDxs++;
			if (this.bipoldif != null && this.bipoldif==1) numPrimaryDxs++;
			if (this.schizoif != null && this.schizoif==1) numPrimaryDxs++;
			if (this.anxietif != null && this.anxietif==1) numPrimaryDxs++;
			if (this.delirif != null && this.delirif==1) numPrimaryDxs++;
			if (this.ptsddxif != null && this.ptsddxif==1) numPrimaryDxs++;
			if (this.othPsyIf != null && this.othPsyIf==1) numPrimaryDxs++;
			if (this.alcDemIf != null && this.alcDemIf==1) numPrimaryDxs++;
			if (this.impsubif != null && this.impsubif==1) numPrimaryDxs++;
			if (this.dysIllIf != null && this.dysIllIf==1) numPrimaryDxs++;
			if (this.medsIf != null && this.medsIf==1) numPrimaryDxs++;
			if (this.cogOthIf != null && this.cogOthIf==1) numPrimaryDxs++;
			if (this.cogOth2If != null && this.cogOth2If==1) numPrimaryDxs++;
			if (this.cogOth3If != null && this.cogOth3If==1) numPrimaryDxs++;
	
			if (numPrimaryDxs > 1) {
				throw new ValidationException(metadataManager.getMessage("udsdiagnosis3.validation.primaryDx",null,Locale.getDefault()));
			}
	
			if (this.othbiom != null && this.othbiom < 0) {
				throw new ValidationException(metadataManager.getMessage("udsdiagnosis3.validation.othbiomYesNo",null,Locale.getDefault()));
			}
		}
	}
	

	public String[] getRequiredResultFields(String version) {
		
		if (version.equalsIgnoreCase("1")) {
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
		} else if (version.equalsIgnoreCase("2")) {
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
		} else if (version.equalsIgnoreCase("3")) {
			return new String[] {
					"dxmethod",
					"normCog",
					"demented",
					"amndem",
					"pca",
					"ppasyn",
					"ppasynt",
					"ftdsyn",
					"lbdsyn",
					"namndem",
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
					"amylpet",
					"amylcsf",
					"fdgad",
					"hippatr",
					"taupetad",
					"csftau",
					"fdgftld",
					"tpetftld",
					"mrftld",
					"datscan",
					"othbiom",
					"othbiomx",
					"imaglinf",
					"imaglac",
					"imagmach",
					"imagmich",
					"imagmwmh",
					"imagewmh",
					"admut",
					"ftldmut",
					"othmut",
					"othmutx",
					"alzdis",
					"alzdisif",
					"lbdis",
					"lbdif",
					"park",
					"msa",
					"msaif",
					"psp",
					"pspIf",
					"cort",
					"cortIf",
					"ftldmo",
					"ftldmoif",
					"ftldnos",
					"ftldnoif",
					"ftldsubt",
					"ftldsubx",
					"cvd",
					"cvdif",
					"prevstk",
					"strokdec",
					"stkimag",
					"infnetw",
					"infwmh",
					"esstrem",
					"esstreif",
					"downs",
					"downsIf",
					"hunt",
					"huntIf",
					"prion",
					"prionIf",
					"brnInj",
					"brnInjIf",
					"brnincte",
					"hyceph",
					"hycephIf",
					"epilep",
					"epilepif",
					"neop",
					"neopIf",
					"neopstat",
					"hiv",
					"hivif",
					"othcog",
					"othcogif",
					"othcogx",
					"dep",
					"depIf",
					"deptreat",
					"bipoldx",
					"bipoldif",
					"schizop",
					"schizoif",
					"anxiet",
					"anxietif",
					"delir",
					"delirif",
					"ptsddx",
					"ptsddxif",
					"othPsy",
					"othPsyIf",
					"othpsyx",
					"alcDem",
					"alcDemIf",
					"alcabuse",
					"impsub",
					"impsubif",
					"dysIll",
					"dysIllIf",
					"meds",
					"medsIf",
					"cogOth",
					"cogOthIf",
					"cogOth2",
					"cogOth2If",
					"cogOth3",
					"cogOth3If"
					};
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
		} else if(getInstrVer().equals("2")) {
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
		} else if(getInstrVer().equals("3")) {
			buffer.append(UdsUploadUtils.formatField(getDxmethod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNormCog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDemented())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAmndem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpasyn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPpasynt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdsyn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLbdsyn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNamndem())).append(",");
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
			buffer.append(UdsUploadUtils.formatField(getAmylpet())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAmylcsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFdgad())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHippatr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTaupetad())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCsftau())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFdgftld())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTpetftld())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMrftld())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDatscan())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthbiom())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthbiomx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImaglinf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImaglac())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImagmach())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImagmich())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImagmwmh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImagewmh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAdmut())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldmut())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthmut())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthmutx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlzdis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlzdisif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLbdis())).append(",");
			buffer.append(UdsUploadUtils.formatField(getLbdif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPark())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMsaif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPsp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPspIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCort())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCortIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldmo())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldmoif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldnos())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldnoif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldsubt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtldsubx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCvdif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrevstk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStrokdec())).append(",");
			buffer.append(UdsUploadUtils.formatField(getStkimag())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInfnetw())).append(",");
			buffer.append(UdsUploadUtils.formatField(getInfwmh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEsstrem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEsstreif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDowns())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDownsIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHunt())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHuntIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrion())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPrionIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnInj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnInjIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBrnincte())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHyceph())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHycephIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEpilep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getEpilepif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeop())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeopIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getNeopstat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHiv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getHivif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthcog())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthcogif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthcogx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDep())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDepIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDeptreat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBipoldx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getBipoldif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSchizop())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSchizoif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAnxiet())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAnxietif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDelir())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDelirif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPtsddx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getPtsddxif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthPsy())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthPsyIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getOthpsyx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcDemIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getAlcabuse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImpsub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getImpsubif())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDysIll())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDysIllIf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMeds())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMedsIf())).append(",");
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


