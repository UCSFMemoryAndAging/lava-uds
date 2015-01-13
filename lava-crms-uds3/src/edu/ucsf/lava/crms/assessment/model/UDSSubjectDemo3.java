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

public class UDSSubjectDemo3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSSubjectDemo3.class);
  public UDSSubjectDemo3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSSubjectDemo3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer reason;
  private Integer refersc;
  private Integer learned;
  private Integer prestat;
  private Integer prespart;
  private Integer sourcenw;
  private Integer birthmo;
  private Integer birthyr;
  private Integer sex;
  private Integer hispanic;
  private Integer hispor;
  private String hisporx;
  private Integer race;
  private String racex;
  private Integer racesec;
  private String racesecx;
  private Integer raceter;
  private String raceterx;
  private Integer primlang;
  private String primlanx;
  private Integer educ;
  private Integer maristat;
  private Integer livsitua;
  private Integer independ;
  private Integer residenc;
  private String zip;
  private Integer handed;



  public Integer getReason() {
    return reason;
  }
  public void setReason(Integer reason) {
    this.reason=reason;
  }

  public Integer getRefersc() {
    return refersc;
  }
  public void setRefersc(Integer refersc) {
    this.refersc=refersc;
  }

  public Integer getLearned() {
    return learned;
  }
  public void setLearned(Integer learned) {
    this.learned=learned;
  }

  public Integer getPrestat() {
    return prestat;
  }
  public void setPrestat(Integer prestat) {
    this.prestat=prestat;
  }

  public Integer getPrespart() {
    return prespart;
  }
  public void setPrespart(Integer prespart) {
    this.prespart=prespart;
  }

  public Integer getSourcenw() {
    return sourcenw;
  }
  public void setSourcenw(Integer sourcenw) {
    this.sourcenw=sourcenw;
  }

  public Integer getBirthmo() {
    return birthmo;
  }
  public void setBirthmo(Integer birthmo) {
    this.birthmo=birthmo;
  }

  public Integer getBirthyr() {
    return birthyr;
  }
  public void setBirthyr(Integer birthyr) {
    this.birthyr=birthyr;
  }

  public Integer getSex() {
    return sex;
  }
  public void setSex(Integer sex) {
    this.sex=sex;
  }

  public Integer getHispanic() {
    return hispanic;
  }
  public void setHispanic(Integer hispanic) {
    this.hispanic=hispanic;
  }

  public Integer getHispor() {
    return hispor;
  }
  public void setHispor(Integer hispor) {
    this.hispor=hispor;
  }

  public String getHisporx() {
    return hisporx;
  }
  public void setHisporx(String hisporx) {
    this.hisporx=hisporx;
  }

  public Integer getRace() {
    return race;
  }
  public void setRace(Integer race) {
    this.race=race;
  }

  public String getRacex() {
    return racex;
  }
  public void setRacex(String racex) {
    this.racex=racex;
  }

  public Integer getRacesec() {
    return racesec;
  }
  public void setRacesec(Integer racesec) {
    this.racesec=racesec;
  }

  public String getRacesecx() {
    return racesecx;
  }
  public void setRacesecx(String racesecx) {
    this.racesecx=racesecx;
  }

  public Integer getRaceter() {
    return raceter;
  }
  public void setRaceter(Integer raceter) {
    this.raceter=raceter;
  }

  public String getRaceterx() {
    return raceterx;
  }
  public void setRaceterx(String raceterx) {
    this.raceterx=raceterx;
  }

  public Integer getPrimlang() {
    return primlang;
  }
  public void setPrimlang(Integer primlang) {
    this.primlang=primlang;
  }

  public String getPrimlanx() {
    return primlanx;
  }
  public void setPrimlanx(String primlanx) {
    this.primlanx=primlanx;
  }

  public Integer getEduc() {
    return educ;
  }
  public void setEduc(Integer educ) {
    this.educ=educ;
  }

  public Integer getMaristat() {
    return maristat;
  }
  public void setMaristat(Integer maristat) {
    this.maristat=maristat;
  }

  public Integer getLivsitua() {
    return livsitua;
  }
  public void setLivsitua(Integer livsitua) {
    this.livsitua=livsitua;
  }

  public Integer getIndepend() {
    return independ;
  }
  public void setIndepend(Integer independ) {
    this.independ=independ;
  }

  public Integer getResidenc() {
    return residenc;
  }
  public void setResidenc(Integer residenc) {
    this.residenc=residenc;
  }

  public String getZip() {
    return zip;
  }
  public void setZip(String zip) {
    this.zip=zip;
  }

  public Integer getHanded() {
    return handed;
  }
  public void setHanded(Integer handed) {
    this.handed=handed;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "reason",
      "refersc",
      "learned",
      "prestat",
      "prespart",
      "sourcenw",
      "birthmo",
      "birthyr",
      "sex",
      "hispanic",
      "hispor",
      "hisporx",
      "race",
      "racex",
      "racesec",
      "racesecx",
      "raceter",
      "raceterx",
      "primlang",
      "primlanx",
      "educ",
      "maristat",
      "livsitua",
      "independ",
      "residenc",
      "zip",
      "handed"
    };
    return required;
  }
}
