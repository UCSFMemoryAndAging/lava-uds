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

public class UDSMilestone3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSMilestone3.class);
  public UDSMilestone3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSMilestone3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer changemo;
  private Integer changedy;
  private Integer changeyr;
  private Integer protocol;
  private Integer aconsent;
  private Integer recogim;
  private Integer rephyill;
  private Integer rerefuse;
  private Integer renavail;
  private Integer renurse;
  private Integer nursemo;
  private Integer nursedy;
  private Integer nurseyr;
  private Integer rejoin;
  private Integer ftlddisc;
  private Integer ftldreas;
  private String ftldreax;
  private Integer deceased;
  private Integer discont;
  private Integer deathmo;
  private Integer deathdy;
  private Integer deathyr;
  private Integer autopsy;
  private Integer discmo;
  private Integer discdy;
  private Integer discr;
  private Integer dropreas;



  public Integer getChangemo() {
    return changemo;
  }
  public void setChangemo(Integer changemo) {
    this.changemo=changemo;
  }

  public Integer getChangedy() {
    return changedy;
  }
  public void setChangedy(Integer changedy) {
    this.changedy=changedy;
  }

  public Integer getChangeyr() {
    return changeyr;
  }
  public void setChangeyr(Integer changeyr) {
    this.changeyr=changeyr;
  }

  public Integer getProtocol() {
    return protocol;
  }
  public void setProtocol(Integer protocol) {
    this.protocol=protocol;
  }

  public Integer getAconsent() {
    return aconsent;
  }
  public void setAconsent(Integer aconsent) {
    this.aconsent=aconsent;
  }

  public Integer getRecogim() {
    return recogim;
  }
  public void setRecogim(Integer recogim) {
    this.recogim=recogim;
  }

  public Integer getRephyill() {
    return rephyill;
  }
  public void setRephyill(Integer rephyill) {
    this.rephyill=rephyill;
  }

  public Integer getRerefuse() {
    return rerefuse;
  }
  public void setRerefuse(Integer rerefuse) {
    this.rerefuse=rerefuse;
  }

  public Integer getRenavail() {
    return renavail;
  }
  public void setRenavail(Integer renavail) {
    this.renavail=renavail;
  }

  public Integer getRenurse() {
    return renurse;
  }
  public void setRenurse(Integer renurse) {
    this.renurse=renurse;
  }

  public Integer getNursemo() {
    return nursemo;
  }
  public void setNursemo(Integer nursemo) {
    this.nursemo=nursemo;
  }

  public Integer getNursedy() {
    return nursedy;
  }
  public void setNursedy(Integer nursedy) {
    this.nursedy=nursedy;
  }

  public Integer getNurseyr() {
    return nurseyr;
  }
  public void setNurseyr(Integer nurseyr) {
    this.nurseyr=nurseyr;
  }

  public Integer getRejoin() {
    return rejoin;
  }
  public void setRejoin(Integer rejoin) {
    this.rejoin=rejoin;
  }

  public Integer getFtlddisc() {
    return ftlddisc;
  }
  public void setFtlddisc(Integer ftlddisc) {
    this.ftlddisc=ftlddisc;
  }

  public Integer getFtldreas() {
    return ftldreas;
  }
  public void setFtldreas(Integer ftldreas) {
    this.ftldreas=ftldreas;
  }

  public String getFtldreax() {
    return ftldreax;
  }
  public void setFtldreax(String ftldreax) {
    this.ftldreax=ftldreax;
  }

  public Integer getDeceased() {
    return deceased;
  }
  public void setDeceased(Integer deceased) {
    this.deceased=deceased;
  }

  public Integer getDiscont() {
    return discont;
  }
  public void setDiscont(Integer discont) {
    this.discont=discont;
  }

  public Integer getDeathmo() {
    return deathmo;
  }
  public void setDeathmo(Integer deathmo) {
    this.deathmo=deathmo;
  }

  public Integer getDeathdy() {
    return deathdy;
  }
  public void setDeathdy(Integer deathdy) {
    this.deathdy=deathdy;
  }

  public Integer getDeathyr() {
    return deathyr;
  }
  public void setDeathyr(Integer deathyr) {
    this.deathyr=deathyr;
  }

  public Integer getAutopsy() {
    return autopsy;
  }
  public void setAutopsy(Integer autopsy) {
    this.autopsy=autopsy;
  }

  public Integer getDiscmo() {
    return discmo;
  }
  public void setDiscmo(Integer discmo) {
    this.discmo=discmo;
  }

  public Integer getDiscdy() {
    return discdy;
  }
  public void setDiscdy(Integer discdy) {
    this.discdy=discdy;
  }

  public Integer getDiscr() {
    return discr;
  }
  public void setDiscr(Integer discr) {
    this.discr=discr;
  }

  public Integer getDropreas() {
    return dropreas;
  }
  public void setDropreas(Integer dropreas) {
    this.dropreas=dropreas;
  }


  public String[] getRequiredResultFields() {
    String[] required;
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
      "nursemo",
      "nursedy",
      "nurseyr",
      "rejoin",
      "ftlddisc",
      "ftldreas",
      "ftldreax",
      "deceased",
      "discont",
      "deathmo",
      "deathdy",
      "deathyr",
      "autopsy",
      "discmo",
      "discdy",
      "discr",
      "dropreas"
    };
    return required;
  }
}
