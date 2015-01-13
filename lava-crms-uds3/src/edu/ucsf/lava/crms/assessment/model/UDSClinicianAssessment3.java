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

public class UDSClinicianAssessment3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSClinicianAssessment3.class);
  public UDSClinicianAssessment3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSClinicianAssessment3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer cancer;
  private String cancsite;
  private Integer cancact;
  private Integer diabet;
  private Integer myoinf;
  private Integer conghrt;
  private Integer afibrill;
  private Integer hypert;
  private Integer angina;
  private Integer hypchol;
  private Integer vb12def;
  private Integer thydis;
  private Integer arth;
  private Integer artype;
  private String artypex;
  private Integer artupex;
  private Integer artloex;
  private Integer artspin;
  private Integer artunkn;
  private Integer urineinc;
  private Integer bowlinc;
  private Integer sleepap;
  private Integer remdis;
  private Integer hyposom;
  private Integer sleepoth;
  private String sleepotx;
  private Integer angiocp;
  private Integer angiopci;
  private Integer pacemake;
  private Integer hvalve;
  private Integer othcond;
  private String othcondx;



  public Integer getCancer() {
    return cancer;
  }
  public void setCancer(Integer cancer) {
    this.cancer=cancer;
  }

  public String getCancsite() {
    return cancsite;
  }
  public void setCancsite(String cancsite) {
    this.cancsite=cancsite;
  }

  public Integer getCancact() {
    return cancact;
  }
  public void setCancact(Integer cancact) {
    this.cancact=cancact;
  }

  public Integer getDiabet() {
    return diabet;
  }
  public void setDiabet(Integer diabet) {
    this.diabet=diabet;
  }

  public Integer getMyoinf() {
    return myoinf;
  }
  public void setMyoinf(Integer myoinf) {
    this.myoinf=myoinf;
  }

  public Integer getConghrt() {
    return conghrt;
  }
  public void setConghrt(Integer conghrt) {
    this.conghrt=conghrt;
  }

  public Integer getAfibrill() {
    return afibrill;
  }
  public void setAfibrill(Integer afibrill) {
    this.afibrill=afibrill;
  }

  public Integer getHypert() {
    return hypert;
  }
  public void setHypert(Integer hypert) {
    this.hypert=hypert;
  }

  public Integer getAngina() {
    return angina;
  }
  public void setAngina(Integer angina) {
    this.angina=angina;
  }

  public Integer getHypchol() {
    return hypchol;
  }
  public void setHypchol(Integer hypchol) {
    this.hypchol=hypchol;
  }

  public Integer getVb12def() {
    return vb12def;
  }
  public void setVb12def(Integer vb12def) {
    this.vb12def=vb12def;
  }

  public Integer getThydis() {
    return thydis;
  }
  public void setThydis(Integer thydis) {
    this.thydis=thydis;
  }

  public Integer getArth() {
    return arth;
  }
  public void setArth(Integer arth) {
    this.arth=arth;
  }

  public Integer getArtype() {
    return artype;
  }
  public void setArtype(Integer artype) {
    this.artype=artype;
  }

  public String getArtypex() {
    return artypex;
  }
  public void setArtypex(String artypex) {
    this.artypex=artypex;
  }

  public Integer getArtupex() {
    return artupex;
  }
  public void setArtupex(Integer artupex) {
    this.artupex=artupex;
  }

  public Integer getArtloex() {
    return artloex;
  }
  public void setArtloex(Integer artloex) {
    this.artloex=artloex;
  }

  public Integer getArtspin() {
    return artspin;
  }
  public void setArtspin(Integer artspin) {
    this.artspin=artspin;
  }

  public Integer getArtunkn() {
    return artunkn;
  }
  public void setArtunkn(Integer artunkn) {
    this.artunkn=artunkn;
  }

  public Integer getUrineinc() {
    return urineinc;
  }
  public void setUrineinc(Integer urineinc) {
    this.urineinc=urineinc;
  }

  public Integer getBowlinc() {
    return bowlinc;
  }
  public void setBowlinc(Integer bowlinc) {
    this.bowlinc=bowlinc;
  }

  public Integer getSleepap() {
    return sleepap;
  }
  public void setSleepap(Integer sleepap) {
    this.sleepap=sleepap;
  }

  public Integer getRemdis() {
    return remdis;
  }
  public void setRemdis(Integer remdis) {
    this.remdis=remdis;
  }

  public Integer getHyposom() {
    return hyposom;
  }
  public void setHyposom(Integer hyposom) {
    this.hyposom=hyposom;
  }

  public Integer getSleepoth() {
    return sleepoth;
  }
  public void setSleepoth(Integer sleepoth) {
    this.sleepoth=sleepoth;
  }

  public String getSleepotx() {
    return sleepotx;
  }
  public void setSleepotx(String sleepotx) {
    this.sleepotx=sleepotx;
  }

  public Integer getAngiocp() {
    return angiocp;
  }
  public void setAngiocp(Integer angiocp) {
    this.angiocp=angiocp;
  }

  public Integer getAngiopci() {
    return angiopci;
  }
  public void setAngiopci(Integer angiopci) {
    this.angiopci=angiopci;
  }

  public Integer getPacemake() {
    return pacemake;
  }
  public void setPacemake(Integer pacemake) {
    this.pacemake=pacemake;
  }

  public Integer getHvalve() {
    return hvalve;
  }
  public void setHvalve(Integer hvalve) {
    this.hvalve=hvalve;
  }

  public Integer getOthcond() {
    return othcond;
  }
  public void setOthcond(Integer othcond) {
    this.othcond=othcond;
  }

  public String getOthcondx() {
    return othcondx;
  }
  public void setOthcondx(String othcondx) {
    this.othcondx=othcondx;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "cancer",
      "cancsite",
      "cancact",
      "diabet",
      "myoinf",
      "conghrt",
      "afibrill",
      "hypert",
      "angina",
      "hypchol",
      "vb12def",
      "thydis",
      "arth",
      "artype",
      "artypex",
      "artupex",
      "artloex",
      "artspin",
      "artunkn",
      "urineinc",
      "bowlinc",
      "sleepap",
      "remdis",
      "hyposom",
      "sleepoth",
      "sleepotx",
      "angiocp",
      "angiopci",
      "pacemake",
      "hvalve",
      "othcond",
      "othcondx"
    };
    return required;
  }
}
