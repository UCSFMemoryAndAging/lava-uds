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

public class UDSHealthHistory3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSHealthHistory3.class);
  public UDSHealthHistory3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSHealthHistory3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer tobac30;
  private Integer tobac100;
  private Integer smokyrs;
  private Integer packsper;
  private Integer quitsmok;
  private Integer alcoccas;
  private Integer alcfreq;
  private Integer cvhatt;
  private Integer hattmult;
  private Integer hattyear;
  private Integer cvafib;
  private Integer cvangio;
  private Integer cvbypass;
  private Integer cvpacdef;
  private Integer cvchf;
  private Integer cvangina;
  private Integer cvhvalve;
  private Integer cvothr;
  private String cvothrx;
  private Integer cbstroke;
  private Integer strokmul;
  private Integer strokyr;
  private Integer cbtia;
  private Integer tiamult;
  private Integer tiayear;
  private Integer pd;
  private Integer pdyr;
  private Integer pdothr;
  private Integer pdothryr;
  private Integer seizures;
  private Integer tbi;
  private Integer tbibrief;
  private Integer tbiexten;
  private Integer tbiwolos;
  private Integer tbiyear;
  private Integer diabetes;
  private Integer diabtype;
  private Integer hyperten;
  private Integer hypercho;
  private Integer b12def;
  private Integer thyroid;
  private Integer arthrit;
  private Integer arthtype;
  private String arthtypx;
  private Integer arthupex;
  private Integer arthloex;
  private Integer arthspin;
  private Integer arthunk;
  private Integer incontu;
  private Integer incontf;
  private Integer apnea;
  private Integer rbd;
  private Integer insomn;
  private Integer othsleep;
  private String othsleex;
  private Integer alcohol;
  private Integer abusothr;
  private String abusx;
  private Integer ptsd;
  private Integer bipolar;
  private Integer schiz;
  private Integer dep2yrs;
  private Integer depothr;
  private Integer anxiety;
  private Integer ocd;
  private Integer npsydev;
  private Integer psycdis;
  private String psycdisx;



  public Integer getTobac30() {
    return tobac30;
  }
  public void setTobac30(Integer tobac30) {
    this.tobac30=tobac30;
  }

  public Integer getTobac100() {
    return tobac100;
  }
  public void setTobac100(Integer tobac100) {
    this.tobac100=tobac100;
  }

  public Integer getSmokyrs() {
    return smokyrs;
  }
  public void setSmokyrs(Integer smokyrs) {
    this.smokyrs=smokyrs;
  }

  public Integer getPacksper() {
    return packsper;
  }
  public void setPacksper(Integer packsper) {
    this.packsper=packsper;
  }

  public Integer getQuitsmok() {
    return quitsmok;
  }
  public void setQuitsmok(Integer quitsmok) {
    this.quitsmok=quitsmok;
  }

  public Integer getAlcoccas() {
    return alcoccas;
  }
  public void setAlcoccas(Integer alcoccas) {
    this.alcoccas=alcoccas;
  }

  public Integer getAlcfreq() {
    return alcfreq;
  }
  public void setAlcfreq(Integer alcfreq) {
    this.alcfreq=alcfreq;
  }

  public Integer getCvhatt() {
    return cvhatt;
  }
  public void setCvhatt(Integer cvhatt) {
    this.cvhatt=cvhatt;
  }

  public Integer getHattmult() {
    return hattmult;
  }
  public void setHattmult(Integer hattmult) {
    this.hattmult=hattmult;
  }

  public Integer getHattyear() {
    return hattyear;
  }
  public void setHattyear(Integer hattyear) {
    this.hattyear=hattyear;
  }

  public Integer getCvafib() {
    return cvafib;
  }
  public void setCvafib(Integer cvafib) {
    this.cvafib=cvafib;
  }

  public Integer getCvangio() {
    return cvangio;
  }
  public void setCvangio(Integer cvangio) {
    this.cvangio=cvangio;
  }

  public Integer getCvbypass() {
    return cvbypass;
  }
  public void setCvbypass(Integer cvbypass) {
    this.cvbypass=cvbypass;
  }

  public Integer getCvpacdef() {
    return cvpacdef;
  }
  public void setCvpacdef(Integer cvpacdef) {
    this.cvpacdef=cvpacdef;
  }

  public Integer getCvchf() {
    return cvchf;
  }
  public void setCvchf(Integer cvchf) {
    this.cvchf=cvchf;
  }

  public Integer getCvangina() {
    return cvangina;
  }
  public void setCvangina(Integer cvangina) {
    this.cvangina=cvangina;
  }

  public Integer getCvhvalve() {
    return cvhvalve;
  }
  public void setCvhvalve(Integer cvhvalve) {
    this.cvhvalve=cvhvalve;
  }

  public Integer getCvothr() {
    return cvothr;
  }
  public void setCvothr(Integer cvothr) {
    this.cvothr=cvothr;
  }

  public String getCvothrx() {
    return cvothrx;
  }
  public void setCvothrx(String cvothrx) {
    this.cvothrx=cvothrx;
  }

  public Integer getCbstroke() {
    return cbstroke;
  }
  public void setCbstroke(Integer cbstroke) {
    this.cbstroke=cbstroke;
  }

  public Integer getStrokmul() {
    return strokmul;
  }
  public void setStrokmul(Integer strokmul) {
    this.strokmul=strokmul;
  }

  public Integer getStrokyr() {
    return strokyr;
  }
  public void setStrokyr(Integer strokyr) {
    this.strokyr=strokyr;
  }

  public Integer getCbtia() {
    return cbtia;
  }
  public void setCbtia(Integer cbtia) {
    this.cbtia=cbtia;
  }

  public Integer getTiamult() {
    return tiamult;
  }
  public void setTiamult(Integer tiamult) {
    this.tiamult=tiamult;
  }

  public Integer getTiayear() {
    return tiayear;
  }
  public void setTiayear(Integer tiayear) {
    this.tiayear=tiayear;
  }

  public Integer getPd() {
    return pd;
  }
  public void setPd(Integer pd) {
    this.pd=pd;
  }

  public Integer getPdyr() {
    return pdyr;
  }
  public void setPdyr(Integer pdyr) {
    this.pdyr=pdyr;
  }

  public Integer getPdothr() {
    return pdothr;
  }
  public void setPdothr(Integer pdothr) {
    this.pdothr=pdothr;
  }

  public Integer getPdothryr() {
    return pdothryr;
  }
  public void setPdothryr(Integer pdothryr) {
    this.pdothryr=pdothryr;
  }

  public Integer getSeizures() {
    return seizures;
  }
  public void setSeizures(Integer seizures) {
    this.seizures=seizures;
  }

  public Integer getTbi() {
    return tbi;
  }
  public void setTbi(Integer tbi) {
    this.tbi=tbi;
  }

  public Integer getTbibrief() {
    return tbibrief;
  }
  public void setTbibrief(Integer tbibrief) {
    this.tbibrief=tbibrief;
  }

  public Integer getTbiexten() {
    return tbiexten;
  }
  public void setTbiexten(Integer tbiexten) {
    this.tbiexten=tbiexten;
  }

  public Integer getTbiwolos() {
    return tbiwolos;
  }
  public void setTbiwolos(Integer tbiwolos) {
    this.tbiwolos=tbiwolos;
  }

  public Integer getTbiyear() {
    return tbiyear;
  }
  public void setTbiyear(Integer tbiyear) {
    this.tbiyear=tbiyear;
  }

  public Integer getDiabetes() {
    return diabetes;
  }
  public void setDiabetes(Integer diabetes) {
    this.diabetes=diabetes;
  }

  public Integer getDiabtype() {
    return diabtype;
  }
  public void setDiabtype(Integer diabtype) {
    this.diabtype=diabtype;
  }

  public Integer getHyperten() {
    return hyperten;
  }
  public void setHyperten(Integer hyperten) {
    this.hyperten=hyperten;
  }

  public Integer getHypercho() {
    return hypercho;
  }
  public void setHypercho(Integer hypercho) {
    this.hypercho=hypercho;
  }

  public Integer getB12def() {
    return b12def;
  }
  public void setB12def(Integer b12def) {
    this.b12def=b12def;
  }

  public Integer getThyroid() {
    return thyroid;
  }
  public void setThyroid(Integer thyroid) {
    this.thyroid=thyroid;
  }

  public Integer getArthrit() {
    return arthrit;
  }
  public void setArthrit(Integer arthrit) {
    this.arthrit=arthrit;
  }

  public Integer getArthtype() {
    return arthtype;
  }
  public void setArthtype(Integer arthtype) {
    this.arthtype=arthtype;
  }

  public String getArthtypx() {
    return arthtypx;
  }
  public void setArthtypx(String arthtypx) {
    this.arthtypx=arthtypx;
  }

  public Integer getArthupex() {
    return arthupex;
  }
  public void setArthupex(Integer arthupex) {
    this.arthupex=arthupex;
  }

  public Integer getArthloex() {
    return arthloex;
  }
  public void setArthloex(Integer arthloex) {
    this.arthloex=arthloex;
  }

  public Integer getArthspin() {
    return arthspin;
  }
  public void setArthspin(Integer arthspin) {
    this.arthspin=arthspin;
  }

  public Integer getArthunk() {
    return arthunk;
  }
  public void setArthunk(Integer arthunk) {
    this.arthunk=arthunk;
  }

  public Integer getIncontu() {
    return incontu;
  }
  public void setIncontu(Integer incontu) {
    this.incontu=incontu;
  }

  public Integer getIncontf() {
    return incontf;
  }
  public void setIncontf(Integer incontf) {
    this.incontf=incontf;
  }

  public Integer getApnea() {
    return apnea;
  }
  public void setApnea(Integer apnea) {
    this.apnea=apnea;
  }

  public Integer getRbd() {
    return rbd;
  }
  public void setRbd(Integer rbd) {
    this.rbd=rbd;
  }

  public Integer getInsomn() {
    return insomn;
  }
  public void setInsomn(Integer insomn) {
    this.insomn=insomn;
  }

  public Integer getOthsleep() {
    return othsleep;
  }
  public void setOthsleep(Integer othsleep) {
    this.othsleep=othsleep;
  }

  public String getOthsleex() {
    return othsleex;
  }
  public void setOthsleex(String othsleex) {
    this.othsleex=othsleex;
  }

  public Integer getAlcohol() {
    return alcohol;
  }
  public void setAlcohol(Integer alcohol) {
    this.alcohol=alcohol;
  }

  public Integer getAbusothr() {
    return abusothr;
  }
  public void setAbusothr(Integer abusothr) {
    this.abusothr=abusothr;
  }

  public String getAbusx() {
    return abusx;
  }
  public void setAbusx(String abusx) {
    this.abusx=abusx;
  }

  public Integer getPtsd() {
    return ptsd;
  }
  public void setPtsd(Integer ptsd) {
    this.ptsd=ptsd;
  }

  public Integer getBipolar() {
    return bipolar;
  }
  public void setBipolar(Integer bipolar) {
    this.bipolar=bipolar;
  }

  public Integer getSchiz() {
    return schiz;
  }
  public void setSchiz(Integer schiz) {
    this.schiz=schiz;
  }

  public Integer getDep2yrs() {
    return dep2yrs;
  }
  public void setDep2yrs(Integer dep2yrs) {
    this.dep2yrs=dep2yrs;
  }

  public Integer getDepothr() {
    return depothr;
  }
  public void setDepothr(Integer depothr) {
    this.depothr=depothr;
  }

  public Integer getAnxiety() {
    return anxiety;
  }
  public void setAnxiety(Integer anxiety) {
    this.anxiety=anxiety;
  }

  public Integer getOcd() {
    return ocd;
  }
  public void setOcd(Integer ocd) {
    this.ocd=ocd;
  }

  public Integer getNpsydev() {
    return npsydev;
  }
  public void setNpsydev(Integer npsydev) {
    this.npsydev=npsydev;
  }

  public Integer getPsycdis() {
    return psycdis;
  }
  public void setPsycdis(Integer psycdis) {
    this.psycdis=psycdis;
  }

  public String getPsycdisx() {
    return psycdisx;
  }
  public void setPsycdisx(String psycdisx) {
    this.psycdisx=psycdisx;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "tobac30",
      "tobac100",
      "smokyrs",
      "packsper",
      "quitsmok",
      "alcoccas",
      "alcfreq",
      "cvhatt",
      "hattmult",
      "hattyear",
      "cvafib",
      "cvangio",
      "cvbypass",
      "cvpacdef",
      "cvchf",
      "cvangina",
      "cvhvalve",
      "cvothr",
      "cvothrx",
      "cbstroke",
      "strokmul",
      "strokyr",
      "cbtia",
      "tiamult",
      "tiayear",
      "pd",
      "pdyr",
      "pdothr",
      "pdothryr",
      "seizures",
      "tbi",
      "tbibrief",
      "tbiexten",
      "tbiwolos",
      "tbiyear",
      "diabetes",
      "diabtype",
      "hyperten",
      "hypercho",
      "b12def",
      "thyroid",
      "arthrit",
      "arthtype",
      "arthtypx",
      "arthupex",
      "arthloex",
      "arthspin",
      "arthunk",
      "incontu",
      "incontf",
      "apnea",
      "rbd",
      "insomn",
      "othsleep",
      "othsleex",
      "alcohol",
      "abusothr",
      "abusx",
      "ptsd",
      "bipolar",
      "schiz",
      "dep2yrs",
      "depothr",
      "anxiety",
      "ocd",
      "npsydev",
      "psycdis",
      "psycdisx"
    };
    return required;
  }
}
