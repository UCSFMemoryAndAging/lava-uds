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

public class UDSNPI3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSNPI3.class);
  public UDSNPI3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSNPI3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer npiqinf;
  private String npiqinfx;
  private Integer del;
  private Integer delsev;
  private Integer hall;
  private Integer hallsev;
  private Integer agit;
  private Integer agitsev;
  private Integer depd;
  private Integer depdsev;
  private Integer anx;
  private Integer anxsev;
  private Integer elat;
  private Integer elatsev;
  private Integer apa;
  private Integer apasev;
  private Integer disn;
  private Integer disnsev;
  private Integer irr;
  private Integer irrsev;
  private Integer mot;
  private Integer motsev;
  private Integer nite;
  private Integer nitesev;
  private Integer app;
  private Integer appsev;



  public Integer getNpiqinf() {
    return npiqinf;
  }
  public void setNpiqinf(Integer npiqinf) {
    this.npiqinf=npiqinf;
  }

  public String getNpiqinfx() {
    return npiqinfx;
  }
  public void setNpiqinfx(String npiqinfx) {
    this.npiqinfx=npiqinfx;
  }

  public Integer getDel() {
    return del;
  }
  public void setDel(Integer del) {
    this.del=del;
  }

  public Integer getDelsev() {
    return delsev;
  }
  public void setDelsev(Integer delsev) {
    this.delsev=delsev;
  }

  public Integer getHall() {
    return hall;
  }
  public void setHall(Integer hall) {
    this.hall=hall;
  }

  public Integer getHallsev() {
    return hallsev;
  }
  public void setHallsev(Integer hallsev) {
    this.hallsev=hallsev;
  }

  public Integer getAgit() {
    return agit;
  }
  public void setAgit(Integer agit) {
    this.agit=agit;
  }

  public Integer getAgitsev() {
    return agitsev;
  }
  public void setAgitsev(Integer agitsev) {
    this.agitsev=agitsev;
  }

  public Integer getDepd() {
    return depd;
  }
  public void setDepd(Integer depd) {
    this.depd=depd;
  }

  public Integer getDepdsev() {
    return depdsev;
  }
  public void setDepdsev(Integer depdsev) {
    this.depdsev=depdsev;
  }

  public Integer getAnx() {
    return anx;
  }
  public void setAnx(Integer anx) {
    this.anx=anx;
  }

  public Integer getAnxsev() {
    return anxsev;
  }
  public void setAnxsev(Integer anxsev) {
    this.anxsev=anxsev;
  }

  public Integer getElat() {
    return elat;
  }
  public void setElat(Integer elat) {
    this.elat=elat;
  }

  public Integer getElatsev() {
    return elatsev;
  }
  public void setElatsev(Integer elatsev) {
    this.elatsev=elatsev;
  }

  public Integer getApa() {
    return apa;
  }
  public void setApa(Integer apa) {
    this.apa=apa;
  }

  public Integer getApasev() {
    return apasev;
  }
  public void setApasev(Integer apasev) {
    this.apasev=apasev;
  }

  public Integer getDisn() {
    return disn;
  }
  public void setDisn(Integer disn) {
    this.disn=disn;
  }

  public Integer getDisnsev() {
    return disnsev;
  }
  public void setDisnsev(Integer disnsev) {
    this.disnsev=disnsev;
  }

  public Integer getIrr() {
    return irr;
  }
  public void setIrr(Integer irr) {
    this.irr=irr;
  }

  public Integer getIrrsev() {
    return irrsev;
  }
  public void setIrrsev(Integer irrsev) {
    this.irrsev=irrsev;
  }

  public Integer getMot() {
    return mot;
  }
  public void setMot(Integer mot) {
    this.mot=mot;
  }

  public Integer getMotsev() {
    return motsev;
  }
  public void setMotsev(Integer motsev) {
    this.motsev=motsev;
  }

  public Integer getNite() {
    return nite;
  }
  public void setNite(Integer nite) {
    this.nite=nite;
  }

  public Integer getNitesev() {
    return nitesev;
  }
  public void setNitesev(Integer nitesev) {
    this.nitesev=nitesev;
  }

  public Integer getApp() {
    return app;
  }
  public void setApp(Integer app) {
    this.app=app;
  }

  public Integer getAppsev() {
    return appsev;
  }
  public void setAppsev(Integer appsev) {
    this.appsev=appsev;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "npiqinf",
      "npiqinfx",
      "del",
      "delsev",
      "hall",
      "hallsev",
      "agit",
      "agitsev",
      "depd",
      "depdsev",
      "anx",
      "anxsev",
      "elat",
      "elatsev",
      "apa",
      "apasev",
      "disn",
      "disnsev",
      "irr",
      "irrsev",
      "mot",
      "motsev",
      "nite",
      "nitesev",
      "app",
      "appsev"
    };
    return required;
  }
}
