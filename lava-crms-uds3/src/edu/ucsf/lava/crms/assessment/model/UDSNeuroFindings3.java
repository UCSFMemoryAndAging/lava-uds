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

public class UDSNeuroFindings3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSNeuroFindings3.class);
  public UDSNeuroFindings3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSNeuroFindings3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer normexam;
  private Integer parksign;
  private Integer resttrl;
  private Integer resttrr;
  private Integer slowingl;
  private Integer slowingr;
  private Integer rigidl;
  private Integer rigidr;
  private Integer brady;
  private Integer parkgait;
  private Integer postinst;
  private Integer cvdsigns;
  private Integer cortdef;
  private Integer sivdfind;
  private Integer cvdmotl;
  private Integer cvdmotr;
  private Integer cortvisl;
  private Integer cortvisr;
  private Integer somatl;
  private Integer somatr;
  private Integer postcort;
  private Integer pspcbs;
  private Integer eyepsp;
  private Integer dyspsp;
  private Integer axialpsp;
  private Integer gaitpsp;
  private Integer apraxsp;
  private Integer apraxl;
  private Integer apraxr;
  private Integer cortsenl;
  private Integer cortsenr;
  private Integer ataxl;
  private Integer ataxr;
  private Integer alienlml;
  private Integer alienlmr;
  private Integer dystonl;
  private Integer dystonr;
  private Integer myocllt;
  private Integer myoclrt;
  private Integer alsfind;
  private Integer gaitnph;
  private Integer othneur;
  private String othneurx;



  public Integer getNormexam() {
    return normexam;
  }
  public void setNormexam(Integer normexam) {
    this.normexam=normexam;
  }

  public Integer getParksign() {
    return parksign;
  }
  public void setParksign(Integer parksign) {
    this.parksign=parksign;
  }

  public Integer getResttrl() {
    return resttrl;
  }
  public void setResttrl(Integer resttrl) {
    this.resttrl=resttrl;
  }

  public Integer getResttrr() {
    return resttrr;
  }
  public void setResttrr(Integer resttrr) {
    this.resttrr=resttrr;
  }

  public Integer getSlowingl() {
    return slowingl;
  }
  public void setSlowingl(Integer slowingl) {
    this.slowingl=slowingl;
  }

  public Integer getSlowingr() {
    return slowingr;
  }
  public void setSlowingr(Integer slowingr) {
    this.slowingr=slowingr;
  }

  public Integer getRigidl() {
    return rigidl;
  }
  public void setRigidl(Integer rigidl) {
    this.rigidl=rigidl;
  }

  public Integer getRigidr() {
    return rigidr;
  }
  public void setRigidr(Integer rigidr) {
    this.rigidr=rigidr;
  }

  public Integer getBrady() {
    return brady;
  }
  public void setBrady(Integer brady) {
    this.brady=brady;
  }

  public Integer getParkgait() {
    return parkgait;
  }
  public void setParkgait(Integer parkgait) {
    this.parkgait=parkgait;
  }

  public Integer getPostinst() {
    return postinst;
  }
  public void setPostinst(Integer postinst) {
    this.postinst=postinst;
  }

  public Integer getCvdsigns() {
    return cvdsigns;
  }
  public void setCvdsigns(Integer cvdsigns) {
    this.cvdsigns=cvdsigns;
  }

  public Integer getCortdef() {
    return cortdef;
  }
  public void setCortdef(Integer cortdef) {
    this.cortdef=cortdef;
  }

  public Integer getSivdfind() {
    return sivdfind;
  }
  public void setSivdfind(Integer sivdfind) {
    this.sivdfind=sivdfind;
  }

  public Integer getCvdmotl() {
    return cvdmotl;
  }
  public void setCvdmotl(Integer cvdmotl) {
    this.cvdmotl=cvdmotl;
  }

  public Integer getCvdmotr() {
    return cvdmotr;
  }
  public void setCvdmotr(Integer cvdmotr) {
    this.cvdmotr=cvdmotr;
  }

  public Integer getCortvisl() {
    return cortvisl;
  }
  public void setCortvisl(Integer cortvisl) {
    this.cortvisl=cortvisl;
  }

  public Integer getCortvisr() {
    return cortvisr;
  }
  public void setCortvisr(Integer cortvisr) {
    this.cortvisr=cortvisr;
  }

  public Integer getSomatl() {
    return somatl;
  }
  public void setSomatl(Integer somatl) {
    this.somatl=somatl;
  }

  public Integer getSomatr() {
    return somatr;
  }
  public void setSomatr(Integer somatr) {
    this.somatr=somatr;
  }

  public Integer getPostcort() {
    return postcort;
  }
  public void setPostcort(Integer postcort) {
    this.postcort=postcort;
  }

  public Integer getPspcbs() {
    return pspcbs;
  }
  public void setPspcbs(Integer pspcbs) {
    this.pspcbs=pspcbs;
  }

  public Integer getEyepsp() {
    return eyepsp;
  }
  public void setEyepsp(Integer eyepsp) {
    this.eyepsp=eyepsp;
  }

  public Integer getDyspsp() {
    return dyspsp;
  }
  public void setDyspsp(Integer dyspsp) {
    this.dyspsp=dyspsp;
  }

  public Integer getAxialpsp() {
    return axialpsp;
  }
  public void setAxialpsp(Integer axialpsp) {
    this.axialpsp=axialpsp;
  }

  public Integer getGaitpsp() {
    return gaitpsp;
  }
  public void setGaitpsp(Integer gaitpsp) {
    this.gaitpsp=gaitpsp;
  }

  public Integer getApraxsp() {
    return apraxsp;
  }
  public void setApraxsp(Integer apraxsp) {
    this.apraxsp=apraxsp;
  }

  public Integer getApraxl() {
    return apraxl;
  }
  public void setApraxl(Integer apraxl) {
    this.apraxl=apraxl;
  }

  public Integer getApraxr() {
    return apraxr;
  }
  public void setApraxr(Integer apraxr) {
    this.apraxr=apraxr;
  }

  public Integer getCortsenl() {
    return cortsenl;
  }
  public void setCortsenl(Integer cortsenl) {
    this.cortsenl=cortsenl;
  }

  public Integer getCortsenr() {
    return cortsenr;
  }
  public void setCortsenr(Integer cortsenr) {
    this.cortsenr=cortsenr;
  }

  public Integer getAtaxl() {
    return ataxl;
  }
  public void setAtaxl(Integer ataxl) {
    this.ataxl=ataxl;
  }

  public Integer getAtaxr() {
    return ataxr;
  }
  public void setAtaxr(Integer ataxr) {
    this.ataxr=ataxr;
  }

  public Integer getAlienlml() {
    return alienlml;
  }
  public void setAlienlml(Integer alienlml) {
    this.alienlml=alienlml;
  }

  public Integer getAlienlmr() {
    return alienlmr;
  }
  public void setAlienlmr(Integer alienlmr) {
    this.alienlmr=alienlmr;
  }

  public Integer getDystonl() {
    return dystonl;
  }
  public void setDystonl(Integer dystonl) {
    this.dystonl=dystonl;
  }

  public Integer getDystonr() {
    return dystonr;
  }
  public void setDystonr(Integer dystonr) {
    this.dystonr=dystonr;
  }

  public Integer getMyocllt() {
    return myocllt;
  }
  public void setMyocllt(Integer myocllt) {
    this.myocllt=myocllt;
  }

  public Integer getMyoclrt() {
    return myoclrt;
  }
  public void setMyoclrt(Integer myoclrt) {
    this.myoclrt=myoclrt;
  }

  public Integer getAlsfind() {
    return alsfind;
  }
  public void setAlsfind(Integer alsfind) {
    this.alsfind=alsfind;
  }

  public Integer getGaitnph() {
    return gaitnph;
  }
  public void setGaitnph(Integer gaitnph) {
    this.gaitnph=gaitnph;
  }

  public Integer getOthneur() {
    return othneur;
  }
  public void setOthneur(Integer othneur) {
    this.othneur=othneur;
  }

  public String getOthneurx() {
    return othneurx;
  }
  public void setOthneurx(String othneurx) {
    this.othneurx=othneurx;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "normexam",
      "parksign",
      "resttrl",
      "resttrr",
      "slowingl",
      "slowingr",
      "rigidl",
      "rigidr",
      "brady",
      "parkgait",
      "postinst",
      "cvdsigns",
      "cortdef",
      "sivdfind",
      "cvdmotl",
      "cvdmotr",
      "cortvisl",
      "cortvisr",
      "somatl",
      "somatr",
      "postcort",
      "pspcbs",
      "eyepsp",
      "dyspsp",
      "axialpsp",
      "gaitpsp",
      "apraxsp",
      "apraxl",
      "apraxr",
      "cortsenl",
      "cortsenr",
      "ataxl",
      "ataxr",
      "alienlml",
      "alienlmr",
      "dystonl",
      "dystonr",
      "myocllt",
      "myoclrt",
      "alsfind",
      "gaitnph",
      "othneur",
      "othneurx"
    };
    return required;
  }
}
