package edu.ucsf.lava.crms.assessment.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UDSDiagnosis3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSDiagnosis3.class);
  public UDSDiagnosis3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSDiagnosis3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer dxmethod;
  private Integer normcog;
  private Integer demented;
  private Integer amndem;
  private Integer pca;
  private Integer ppasyn;
  private Integer ppasynt;
  private Integer ftdsyn;
  private Integer lbdsyn;
  private Integer namndem;
  private Integer mciamem;
  private Integer mciaplus;
  private Integer mciaplan;
  private Integer mciapatt;
  private Integer mciapex;
  private Integer mciapvis;
  private Integer mcinon1;
  private Integer mcin1lan;
  private Integer mcin1att;
  private Integer mcin1ex;
  private Integer mcin1vis;
  private Integer mcinon2;
  private Integer mcin2lan;
  private Integer mcin2att;
  private Integer mcin2ex;
  private Integer mcin2vis;
  private Integer impnomci;
  private Integer amylpet;
  private Integer amylcsf;
  private Integer fdgad;
  private Integer hippatr;
  private Integer taupetad;
  private Integer csftau;
  private Integer fdgftld;
  private Integer tpetftld;
  private Integer mrftld;
  private Integer datscan;
  private Integer othbiom;
  private String othbiomx;
  private Integer imaglinf;
  private Integer imaglac;
  private Integer imagmach;
  private Integer imagmich;
  private Integer imagmwmh;
  private Integer imagewmh;
  private Integer admut;
  private Integer ftldmut;
  private Integer othmut;
  private String othmutx;
  private Integer alzdis;
  private Integer alzdisif;
  private Integer lbdis;
  private Integer lbdif;
  private Integer park;
  private Integer msa;
  private Integer msaif;
  private Integer psp;
  private Integer pspif;
  private Integer cort;
  private Integer cortif;
  private Integer ftldmo;
  private Integer ftldmoif;
  private Integer ftldnos;
  private Integer ftldnoif;
  private Integer ftldsubt;
  private String ftldsubx;
  private Integer cvd;
  private Integer cvdif;
  private Integer prevstk;
  private Integer strokedec;
  private Integer stkimag;
  private Integer infnetw;
  private Integer infwmh;
  private Integer esstrem;
  private Integer esstreif;
  private Integer downs;
  private Integer downsif;
  private Integer hunt;
  private Integer huntif;
  private Integer prion;
  private Integer prionif;
  private Integer brninj;
  private Integer brninjif;
  private Integer brnincte;
  private Integer hyceph;
  private Integer hycephif;
  private Integer epilep;
  private Integer epilepif;
  private Integer neop;
  private Integer neopif;
  private Integer neopstat;
  private Integer hiv;
  private Integer hivif;
  private Integer othcog;
  private Integer othcogif;
  private String othcogx;
  private Integer dep;
  private Integer depif;
  private Integer deptreat;
  private Integer bipoldx;
  private Integer bipoldif;
  private Integer schizop;
  private Integer schizoif;
  private Integer anxiet;
  private Integer anxietif;
  private Integer delir;
  private Integer delirif;
  private Integer ptsddx;
  private Integer ptsddxif;
  private Integer othpsy;
  private Integer othpsyif;
  private String othpsyx;
  private Integer alcdem;
  private Integer alcdemif;
  private Integer alcabuse;
  private Integer impsub;
  private Integer impsubif;
  private Integer dysill;
  private Integer dysillif;
  private Integer meds;
  private Integer medsif;
  private Integer cogoth;
  private Integer cogoth1f;
  private String cogothx;
  private Integer cogoth2;
  private Integer cogoth2f;
  private String cogoth2x;
  private Integer cogoth3;
  private Integer cogoth3f;
  private String cogoth3x;



  public Integer getDxmethod() {
    return dxmethod;
  }
  public void setDxmethod(Integer dxmethod) {
    this.dxmethod=dxmethod;
  }

  public Integer getNormcog() {
    return normcog;
  }
  public void setNormcog(Integer normcog) {
    this.normcog=normcog;
  }

  public Integer getDemented() {
    return demented;
  }
  public void setDemented(Integer demented) {
    this.demented=demented;
  }

  public Integer getAmndem() {
    return amndem;
  }
  public void setAmndem(Integer amndem) {
    this.amndem=amndem;
  }

  public Integer getPca() {
    return pca;
  }
  public void setPca(Integer pca) {
    this.pca=pca;
  }

  public Integer getPpasyn() {
    return ppasyn;
  }
  public void setPpasyn(Integer ppasyn) {
    this.ppasyn=ppasyn;
  }

  public Integer getPpasynt() {
    return ppasynt;
  }
  public void setPpasynt(Integer ppasynt) {
    this.ppasynt=ppasynt;
  }

  public Integer getFtdsyn() {
    return ftdsyn;
  }
  public void setFtdsyn(Integer ftdsyn) {
    this.ftdsyn=ftdsyn;
  }

  public Integer getLbdsyn() {
    return lbdsyn;
  }
  public void setLbdsyn(Integer lbdsyn) {
    this.lbdsyn=lbdsyn;
  }

  public Integer getNamndem() {
    return namndem;
  }
  public void setNamndem(Integer namndem) {
    this.namndem=namndem;
  }

  public Integer getMciamem() {
    return mciamem;
  }
  public void setMciamem(Integer mciamem) {
    this.mciamem=mciamem;
  }

  public Integer getMciaplus() {
    return mciaplus;
  }
  public void setMciaplus(Integer mciaplus) {
    this.mciaplus=mciaplus;
  }

  public Integer getMciaplan() {
    return mciaplan;
  }
  public void setMciaplan(Integer mciaplan) {
    this.mciaplan=mciaplan;
  }

  public Integer getMciapatt() {
    return mciapatt;
  }
  public void setMciapatt(Integer mciapatt) {
    this.mciapatt=mciapatt;
  }

  public Integer getMciapex() {
    return mciapex;
  }
  public void setMciapex(Integer mciapex) {
    this.mciapex=mciapex;
  }

  public Integer getMciapvis() {
    return mciapvis;
  }
  public void setMciapvis(Integer mciapvis) {
    this.mciapvis=mciapvis;
  }

  public Integer getMcinon1() {
    return mcinon1;
  }
  public void setMcinon1(Integer mcinon1) {
    this.mcinon1=mcinon1;
  }

  public Integer getMcin1lan() {
    return mcin1lan;
  }
  public void setMcin1lan(Integer mcin1lan) {
    this.mcin1lan=mcin1lan;
  }

  public Integer getMcin1att() {
    return mcin1att;
  }
  public void setMcin1att(Integer mcin1att) {
    this.mcin1att=mcin1att;
  }

  public Integer getMcin1ex() {
    return mcin1ex;
  }
  public void setMcin1ex(Integer mcin1ex) {
    this.mcin1ex=mcin1ex;
  }

  public Integer getMcin1vis() {
    return mcin1vis;
  }
  public void setMcin1vis(Integer mcin1vis) {
    this.mcin1vis=mcin1vis;
  }

  public Integer getMcinon2() {
    return mcinon2;
  }
  public void setMcinon2(Integer mcinon2) {
    this.mcinon2=mcinon2;
  }

  public Integer getMcin2lan() {
    return mcin2lan;
  }
  public void setMcin2lan(Integer mcin2lan) {
    this.mcin2lan=mcin2lan;
  }

  public Integer getMcin2att() {
    return mcin2att;
  }
  public void setMcin2att(Integer mcin2att) {
    this.mcin2att=mcin2att;
  }

  public Integer getMcin2ex() {
    return mcin2ex;
  }
  public void setMcin2ex(Integer mcin2ex) {
    this.mcin2ex=mcin2ex;
  }

  public Integer getMcin2vis() {
    return mcin2vis;
  }
  public void setMcin2vis(Integer mcin2vis) {
    this.mcin2vis=mcin2vis;
  }

  public Integer getImpnomci() {
    return impnomci;
  }
  public void setImpnomci(Integer impnomci) {
    this.impnomci=impnomci;
  }

  public Integer getAmylpet() {
    return amylpet;
  }
  public void setAmylpet(Integer amylpet) {
    this.amylpet=amylpet;
  }

  public Integer getAmylcsf() {
    return amylcsf;
  }
  public void setAmylcsf(Integer amylcsf) {
    this.amylcsf=amylcsf;
  }

  public Integer getFdgad() {
    return fdgad;
  }
  public void setFdgad(Integer fdgad) {
    this.fdgad=fdgad;
  }

  public Integer getHippatr() {
    return hippatr;
  }
  public void setHippatr(Integer hippatr) {
    this.hippatr=hippatr;
  }

  public Integer getTaupetad() {
    return taupetad;
  }
  public void setTaupetad(Integer taupetad) {
    this.taupetad=taupetad;
  }

  public Integer getCsftau() {
    return csftau;
  }
  public void setCsftau(Integer csftau) {
    this.csftau=csftau;
  }

  public Integer getFdgftld() {
    return fdgftld;
  }
  public void setFdgftld(Integer fdgftld) {
    this.fdgftld=fdgftld;
  }

  public Integer getTpetftld() {
    return tpetftld;
  }
  public void setTpetftld(Integer tpetftld) {
    this.tpetftld=tpetftld;
  }

  public Integer getMrftld() {
    return mrftld;
  }
  public void setMrftld(Integer mrftld) {
    this.mrftld=mrftld;
  }

  public Integer getDatscan() {
    return datscan;
  }
  public void setDatscan(Integer datscan) {
    this.datscan=datscan;
  }

  public Integer getOthbiom() {
    return othbiom;
  }
  public void setOthbiom(Integer othbiom) {
    this.othbiom=othbiom;
  }

  public String getOthbiomx() {
    return othbiomx;
  }
  public void setOthbiomx(String othbiomx) {
    this.othbiomx=othbiomx;
  }

  public Integer getImaglinf() {
    return imaglinf;
  }
  public void setImaglinf(Integer imaglinf) {
    this.imaglinf=imaglinf;
  }

  public Integer getImaglac() {
    return imaglac;
  }
  public void setImaglac(Integer imaglac) {
    this.imaglac=imaglac;
  }

  public Integer getImagmach() {
    return imagmach;
  }
  public void setImagmach(Integer imagmach) {
    this.imagmach=imagmach;
  }

  public Integer getImagmich() {
    return imagmich;
  }
  public void setImagmich(Integer imagmich) {
    this.imagmich=imagmich;
  }

  public Integer getImagmwmh() {
    return imagmwmh;
  }
  public void setImagmwmh(Integer imagmwmh) {
    this.imagmwmh=imagmwmh;
  }

  public Integer getImagewmh() {
    return imagewmh;
  }
  public void setImagewmh(Integer imagewmh) {
    this.imagewmh=imagewmh;
  }

  public Integer getAdmut() {
    return admut;
  }
  public void setAdmut(Integer admut) {
    this.admut=admut;
  }

  public Integer getFtldmut() {
    return ftldmut;
  }
  public void setFtldmut(Integer ftldmut) {
    this.ftldmut=ftldmut;
  }

  public Integer getOthmut() {
    return othmut;
  }
  public void setOthmut(Integer othmut) {
    this.othmut=othmut;
  }

  public String getOthmutx() {
    return othmutx;
  }
  public void setOthmutx(String othmutx) {
    this.othmutx=othmutx;
  }

  public Integer getAlzdis() {
    return alzdis;
  }
  public void setAlzdis(Integer alzdis) {
    this.alzdis=alzdis;
  }

  public Integer getAlzdisif() {
    return alzdisif;
  }
  public void setAlzdisif(Integer alzdisif) {
    this.alzdisif=alzdisif;
  }

  public Integer getLbdis() {
    return lbdis;
  }
  public void setLbdis(Integer lbdis) {
    this.lbdis=lbdis;
  }

  public Integer getLbdif() {
    return lbdif;
  }
  public void setLbdif(Integer lbdif) {
    this.lbdif=lbdif;
  }

  public Integer getPark() {
    return park;
  }
  public void setPark(Integer park) {
    this.park=park;
  }

  public Integer getMsa() {
    return msa;
  }
  public void setMsa(Integer msa) {
    this.msa=msa;
  }

  public Integer getMsaif() {
    return msaif;
  }
  public void setMsaif(Integer msaif) {
    this.msaif=msaif;
  }

  public Integer getPsp() {
    return psp;
  }
  public void setPsp(Integer psp) {
    this.psp=psp;
  }

  public Integer getPspif() {
    return pspif;
  }
  public void setPspif(Integer pspif) {
    this.pspif=pspif;
  }

  public Integer getCort() {
    return cort;
  }
  public void setCort(Integer cort) {
    this.cort=cort;
  }

  public Integer getCortif() {
    return cortif;
  }
  public void setCortif(Integer cortif) {
    this.cortif=cortif;
  }

  public Integer getFtldmo() {
    return ftldmo;
  }
  public void setFtldmo(Integer ftldmo) {
    this.ftldmo=ftldmo;
  }

  public Integer getFtldmoif() {
    return ftldmoif;
  }
  public void setFtldmoif(Integer ftldmoif) {
    this.ftldmoif=ftldmoif;
  }

  public Integer getFtldnos() {
    return ftldnos;
  }
  public void setFtldnos(Integer ftldnos) {
    this.ftldnos=ftldnos;
  }

  public Integer getFtldnoif() {
    return ftldnoif;
  }
  public void setFtldnoif(Integer ftldnoif) {
    this.ftldnoif=ftldnoif;
  }

  public Integer getFtldsubt() {
    return ftldsubt;
  }
  public void setFtldsubt(Integer ftldsubt) {
    this.ftldsubt=ftldsubt;
  }

  public String getFtldsubx() {
    return ftldsubx;
  }
  public void setFtldsubx(String ftldsubx) {
    this.ftldsubx=ftldsubx;
  }

  public Integer getCvd() {
    return cvd;
  }
  public void setCvd(Integer cvd) {
    this.cvd=cvd;
  }

  public Integer getCvdif() {
    return cvdif;
  }
  public void setCvdif(Integer cvdif) {
    this.cvdif=cvdif;
  }

  public Integer getPrevstk() {
    return prevstk;
  }
  public void setPrevstk(Integer prevstk) {
    this.prevstk=prevstk;
  }

  public Integer getStrokedec() {
    return strokedec;
  }
  public void setStrokedec(Integer strokedec) {
    this.strokedec=strokedec;
  }

  public Integer getStkimag() {
    return stkimag;
  }
  public void setStkimag(Integer stkimag) {
    this.stkimag=stkimag;
  }

  public Integer getInfnetw() {
    return infnetw;
  }
  public void setInfnetw(Integer infnetw) {
    this.infnetw=infnetw;
  }

  public Integer getInfwmh() {
    return infwmh;
  }
  public void setInfwmh(Integer infwmh) {
    this.infwmh=infwmh;
  }

  public Integer getEsstrem() {
    return esstrem;
  }
  public void setEsstrem(Integer esstrem) {
    this.esstrem=esstrem;
  }

  public Integer getEsstreif() {
    return esstreif;
  }
  public void setEsstreif(Integer esstreif) {
    this.esstreif=esstreif;
  }

  public Integer getDowns() {
    return downs;
  }
  public void setDowns(Integer downs) {
    this.downs=downs;
  }

  public Integer getDownsif() {
    return downsif;
  }
  public void setDownsif(Integer downsif) {
    this.downsif=downsif;
  }

  public Integer getHunt() {
    return hunt;
  }
  public void setHunt(Integer hunt) {
    this.hunt=hunt;
  }

  public Integer getHuntif() {
    return huntif;
  }
  public void setHuntif(Integer huntif) {
    this.huntif=huntif;
  }

  public Integer getPrion() {
    return prion;
  }
  public void setPrion(Integer prion) {
    this.prion=prion;
  }

  public Integer getPrionif() {
    return prionif;
  }
  public void setPrionif(Integer prionif) {
    this.prionif=prionif;
  }

  public Integer getBrninj() {
    return brninj;
  }
  public void setBrninj(Integer brninj) {
    this.brninj=brninj;
  }

  public Integer getBrninjif() {
    return brninjif;
  }
  public void setBrninjif(Integer brninjif) {
    this.brninjif=brninjif;
  }

  public Integer getBrnincte() {
    return brnincte;
  }
  public void setBrnincte(Integer brnincte) {
    this.brnincte=brnincte;
  }

  public Integer getHyceph() {
    return hyceph;
  }
  public void setHyceph(Integer hyceph) {
    this.hyceph=hyceph;
  }

  public Integer getHycephif() {
    return hycephif;
  }
  public void setHycephif(Integer hycephif) {
    this.hycephif=hycephif;
  }

  public Integer getEpilep() {
    return epilep;
  }
  public void setEpilep(Integer epilep) {
    this.epilep=epilep;
  }

  public Integer getEpilepif() {
    return epilepif;
  }
  public void setEpilepif(Integer epilepif) {
    this.epilepif=epilepif;
  }

  public Integer getNeop() {
    return neop;
  }
  public void setNeop(Integer neop) {
    this.neop=neop;
  }

  public Integer getNeopif() {
    return neopif;
  }
  public void setNeopif(Integer neopif) {
    this.neopif=neopif;
  }

  public Integer getNeopstat() {
    return neopstat;
  }
  public void setNeopstat(Integer neopstat) {
    this.neopstat=neopstat;
  }

  public Integer getHiv() {
    return hiv;
  }
  public void setHiv(Integer hiv) {
    this.hiv=hiv;
  }

  public Integer getHivif() {
    return hivif;
  }
  public void setHivif(Integer hivif) {
    this.hivif=hivif;
  }

  public Integer getOthcog() {
    return othcog;
  }
  public void setOthcog(Integer othcog) {
    this.othcog=othcog;
  }

  public Integer getOthcogif() {
    return othcogif;
  }
  public void setOthcogif(Integer othcogif) {
    this.othcogif=othcogif;
  }

  public String getOthcogx() {
    return othcogx;
  }
  public void setOthcogx(String othcogx) {
    this.othcogx=othcogx;
  }

  public Integer getDep() {
    return dep;
  }
  public void setDep(Integer dep) {
    this.dep=dep;
  }

  public Integer getDepif() {
    return depif;
  }
  public void setDepif(Integer depif) {
    this.depif=depif;
  }

  public Integer getDeptreat() {
    return deptreat;
  }
  public void setDeptreat(Integer deptreat) {
    this.deptreat=deptreat;
  }

  public Integer getBipoldx() {
    return bipoldx;
  }
  public void setBipoldx(Integer bipoldx) {
    this.bipoldx=bipoldx;
  }

  public Integer getBipoldif() {
    return bipoldif;
  }
  public void setBipoldif(Integer bipoldif) {
    this.bipoldif=bipoldif;
  }

  public Integer getSchizop() {
    return schizop;
  }
  public void setSchizop(Integer schizop) {
    this.schizop=schizop;
  }

  public Integer getSchizoif() {
    return schizoif;
  }
  public void setSchizoif(Integer schizoif) {
    this.schizoif=schizoif;
  }

  public Integer getAnxiet() {
    return anxiet;
  }
  public void setAnxiet(Integer anxiet) {
    this.anxiet=anxiet;
  }

  public Integer getAnxietif() {
    return anxietif;
  }
  public void setAnxietif(Integer anxietif) {
    this.anxietif=anxietif;
  }

  public Integer getDelir() {
    return delir;
  }
  public void setDelir(Integer delir) {
    this.delir=delir;
  }

  public Integer getDelirif() {
    return delirif;
  }
  public void setDelirif(Integer delirif) {
    this.delirif=delirif;
  }

  public Integer getPtsddx() {
    return ptsddx;
  }
  public void setPtsddx(Integer ptsddx) {
    this.ptsddx=ptsddx;
  }

  public Integer getPtsddxif() {
    return ptsddxif;
  }
  public void setPtsddxif(Integer ptsddxif) {
    this.ptsddxif=ptsddxif;
  }

  public Integer getOthpsy() {
    return othpsy;
  }
  public void setOthpsy(Integer othpsy) {
    this.othpsy=othpsy;
  }

  public Integer getOthpsyif() {
    return othpsyif;
  }
  public void setOthpsyif(Integer othpsyif) {
    this.othpsyif=othpsyif;
  }

  public String getOthpsyx() {
    return othpsyx;
  }
  public void setOthpsyx(String othpsyx) {
    this.othpsyx=othpsyx;
  }

  public Integer getAlcdem() {
    return alcdem;
  }
  public void setAlcdem(Integer alcdem) {
    this.alcdem=alcdem;
  }

  public Integer getAlcdemif() {
    return alcdemif;
  }
  public void setAlcdemif(Integer alcdemif) {
    this.alcdemif=alcdemif;
  }

  public Integer getAlcabuse() {
    return alcabuse;
  }
  public void setAlcabuse(Integer alcabuse) {
    this.alcabuse=alcabuse;
  }

  public Integer getImpsub() {
    return impsub;
  }
  public void setImpsub(Integer impsub) {
    this.impsub=impsub;
  }

  public Integer getImpsubif() {
    return impsubif;
  }
  public void setImpsubif(Integer impsubif) {
    this.impsubif=impsubif;
  }

  public Integer getDysill() {
    return dysill;
  }
  public void setDysill(Integer dysill) {
    this.dysill=dysill;
  }

  public Integer getDysillif() {
    return dysillif;
  }
  public void setDysillif(Integer dysillif) {
    this.dysillif=dysillif;
  }

  public Integer getMeds() {
    return meds;
  }
  public void setMeds(Integer meds) {
    this.meds=meds;
  }

  public Integer getMedsif() {
    return medsif;
  }
  public void setMedsif(Integer medsif) {
    this.medsif=medsif;
  }

  public Integer getCogoth() {
    return cogoth;
  }
  public void setCogoth(Integer cogoth) {
    this.cogoth=cogoth;
  }

  public Integer getCogoth1f() {
    return cogoth1f;
  }
  public void setCogoth1f(Integer cogoth1f) {
    this.cogoth1f=cogoth1f;
  }

  public String getCogothx() {
    return cogothx;
  }
  public void setCogothx(String cogothx) {
    this.cogothx=cogothx;
  }

  public Integer getCogoth2() {
    return cogoth2;
  }
  public void setCogoth2(Integer cogoth2) {
    this.cogoth2=cogoth2;
  }

  public Integer getCogoth2f() {
    return cogoth2f;
  }
  public void setCogoth2f(Integer cogoth2f) {
    this.cogoth2f=cogoth2f;
  }

  public String getCogoth2x() {
    return cogoth2x;
  }
  public void setCogoth2x(String cogoth2x) {
    this.cogoth2x=cogoth2x;
  }

  public Integer getCogoth3() {
    return cogoth3;
  }
  public void setCogoth3(Integer cogoth3) {
    this.cogoth3=cogoth3;
  }

  public Integer getCogoth3f() {
    return cogoth3f;
  }
  public void setCogoth3f(Integer cogoth3f) {
    this.cogoth3f=cogoth3f;
  }

  public String getCogoth3x() {
    return cogoth3x;
  }
  public void setCogoth3x(String cogoth3x) {
    this.cogoth3x=cogoth3x;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "dxmethod",
      "normcog",
      "demented",
      "amndem",
      "pca",
      "ppasyn",
      "ppasynt",
      "ftdsyn",
      "lbdsyn",
      "namndem",
      "mciamem",
      "mciaplus",
      "mciaplan",
      "mciapatt",
      "mciapex",
      "mciapvis",
      "mcinon1",
      "mcin1lan",
      "mcin1att",
      "mcin1ex",
      "mcin1vis",
      "mcinon2",
      "mcin2lan",
      "mcin2att",
      "mcin2ex",
      "mcin2vis",
      "impnomci",
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
      "pspif",
      "cort",
      "cortif",
      "ftldmo",
      "ftldmoif",
      "ftldnos",
      "ftldnoif",
      "ftldsubt",
      "ftldsubx",
      "cvd",
      "cvdif",
      "prevstk",
      "strokedec",
      "stkimag",
      "infnetw",
      "infwmh",
      "esstrem",
      "esstreif",
      "downs",
      "downsif",
      "hunt",
      "huntif",
      "prion",
      "prionif",
      "brninj",
      "brninjif",
      "brnincte",
      "hyceph",
      "hycephif",
      "epilep",
      "epilepif",
      "neop",
      "neopif",
      "neopstat",
      "hiv",
      "hivif",
      "othcog",
      "othcogif",
      "othcogx",
      "dep",
      "depif",
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
      "othpsy",
      "othpsyif",
      "othpsyx",
      "alcdem",
      "alcdemif",
      "alcabuse",
      "impsub",
      "impsubif",
      "dysill",
      "dysillif",
      "meds",
      "medsif",
      "cogoth",
      "cogoth1f",
      "cogothx",
      "cogoth2",
      "cogoth2f",
      "cogoth2x",
      "cogoth3",
      "cogoth3f",
      "cogoth3x"
    };
    return required;
  }
}
