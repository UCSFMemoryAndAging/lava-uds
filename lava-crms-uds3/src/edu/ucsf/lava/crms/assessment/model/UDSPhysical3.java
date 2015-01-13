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

public class UDSPhysical3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSPhysical3.class);
  public UDSPhysical3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSPhysical3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Float height;
  private Integer weight;
  private Integer bpsys;
  private Integer bpdias;
  private Integer hrate;
  private Integer vision;
  private Integer viscorr;
  private Integer viswcorr;
  private Integer hearing;
  private Integer hearaid;
  private Integer hearwaid;



  public Float getHeight() {
    return height;
  }
  public void setHeight(Float height) {
    this.height=height;
  }

  public Integer getWeight() {
    return weight;
  }
  public void setWeight(Integer weight) {
    this.weight=weight;
  }

  public Integer getBpsys() {
    return bpsys;
  }
  public void setBpsys(Integer bpsys) {
    this.bpsys=bpsys;
  }

  public Integer getBpdias() {
    return bpdias;
  }
  public void setBpdias(Integer bpdias) {
    this.bpdias=bpdias;
  }

  public Integer getHrate() {
    return hrate;
  }
  public void setHrate(Integer hrate) {
    this.hrate=hrate;
  }

  public Integer getVision() {
    return vision;
  }
  public void setVision(Integer vision) {
    this.vision=vision;
  }

  public Integer getViscorr() {
    return viscorr;
  }
  public void setViscorr(Integer viscorr) {
    this.viscorr=viscorr;
  }

  public Integer getViswcorr() {
    return viswcorr;
  }
  public void setViswcorr(Integer viswcorr) {
    this.viswcorr=viswcorr;
  }

  public Integer getHearing() {
    return hearing;
  }
  public void setHearing(Integer hearing) {
    this.hearing=hearing;
  }

  public Integer getHearaid() {
    return hearaid;
  }
  public void setHearaid(Integer hearaid) {
    this.hearaid=hearaid;
  }

  public Integer getHearwaid() {
    return hearwaid;
  }
  public void setHearwaid(Integer hearwaid) {
    this.hearwaid=hearwaid;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "height",
      "weight",
      "bpsys",
      "bpdias",
      "hrate",
      "vision",
      "viscorr",
      "viswcorr",
      "hearing",
      "hearaid",
      "hearwaid"
    };
    return required;
  }
}
