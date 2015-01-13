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

public class UDSCDR3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSCDR3.class);
  public UDSCDR3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSCDR3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Float memory;
  private Float orient;
  private Float judgment;
  private Float commun;
  private Float homehobb;
  private Float perscare;
  private Float cdrsum;
  private Float cdrglob;
  private Float comport;
  private Float cdrlang;



  public Float getMemory() {
    return memory;
  }
  public void setMemory(Float memory) {
    this.memory=memory;
  }

  public Float getOrient() {
    return orient;
  }
  public void setOrient(Float orient) {
    this.orient=orient;
  }

  public Float getJudgment() {
    return judgment;
  }
  public void setJudgment(Float judgment) {
    this.judgment=judgment;
  }

  public Float getCommun() {
    return commun;
  }
  public void setCommun(Float commun) {
    this.commun=commun;
  }

  public Float getHomehobb() {
    return homehobb;
  }
  public void setHomehobb(Float homehobb) {
    this.homehobb=homehobb;
  }

  public Float getPerscare() {
    return perscare;
  }
  public void setPerscare(Float perscare) {
    this.perscare=perscare;
  }

  public Float getCdrsum() {
    return cdrsum;
  }
  public void setCdrsum(Float cdrsum) {
    this.cdrsum=cdrsum;
  }

  public Float getCdrglob() {
    return cdrglob;
  }
  public void setCdrglob(Float cdrglob) {
    this.cdrglob=cdrglob;
  }

  public Float getComport() {
    return comport;
  }
  public void setComport(Float comport) {
    this.comport=comport;
  }

  public Float getCdrlang() {
    return cdrlang;
  }
  public void setCdrlang(Float cdrlang) {
    this.cdrlang=cdrlang;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "memory",
      "orient",
      "judgment",
      "commun",
      "homehobb",
      "perscare",
      "cdrsum",
      "cdrglob",
      "comport",
      "cdrlang"
    };
    return required;
  }
}
