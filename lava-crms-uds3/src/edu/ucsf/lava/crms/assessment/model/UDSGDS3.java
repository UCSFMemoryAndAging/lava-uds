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

public class UDSGDS3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSGDS3.class);
  public UDSGDS3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSGDS3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer nogds;
  private Integer satis;
  private Integer dropact;
  private Integer empty;
  private Integer bored;
  private Integer spirits;
  private Integer afraid;
  private Integer happy;
  private Integer helpless;
  private Integer stayhome;
  private Integer memprob;
  private Integer wondrful;
  private Integer wrthless;
  private Integer energy;
  private Integer hopeless;
  private Integer better;
  private Integer gds;



  public Integer getNogds() {
    return nogds;
  }
  public void setNogds(Integer nogds) {
    this.nogds=nogds;
  }

  public Integer getSatis() {
    return satis;
  }
  public void setSatis(Integer satis) {
    this.satis=satis;
  }

  public Integer getDropact() {
    return dropact;
  }
  public void setDropact(Integer dropact) {
    this.dropact=dropact;
  }

  public Integer getEmpty() {
    return empty;
  }
  public void setEmpty(Integer empty) {
    this.empty=empty;
  }

  public Integer getBored() {
    return bored;
  }
  public void setBored(Integer bored) {
    this.bored=bored;
  }

  public Integer getSpirits() {
    return spirits;
  }
  public void setSpirits(Integer spirits) {
    this.spirits=spirits;
  }

  public Integer getAfraid() {
    return afraid;
  }
  public void setAfraid(Integer afraid) {
    this.afraid=afraid;
  }

  public Integer getHappy() {
    return happy;
  }
  public void setHappy(Integer happy) {
    this.happy=happy;
  }

  public Integer getHelpless() {
    return helpless;
  }
  public void setHelpless(Integer helpless) {
    this.helpless=helpless;
  }

  public Integer getStayhome() {
    return stayhome;
  }
  public void setStayhome(Integer stayhome) {
    this.stayhome=stayhome;
  }

  public Integer getMemprob() {
    return memprob;
  }
  public void setMemprob(Integer memprob) {
    this.memprob=memprob;
  }

  public Integer getWondrful() {
    return wondrful;
  }
  public void setWondrful(Integer wondrful) {
    this.wondrful=wondrful;
  }

  public Integer getWrthless() {
    return wrthless;
  }
  public void setWrthless(Integer wrthless) {
    this.wrthless=wrthless;
  }

  public Integer getEnergy() {
    return energy;
  }
  public void setEnergy(Integer energy) {
    this.energy=energy;
  }

  public Integer getHopeless() {
    return hopeless;
  }
  public void setHopeless(Integer hopeless) {
    this.hopeless=hopeless;
  }

  public Integer getBetter() {
    return better;
  }
  public void setBetter(Integer better) {
    this.better=better;
  }

  public Integer getGds() {
    return gds;
  }
  public void setGds(Integer gds) {
    this.gds=gds;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "nogds",
      "satis",
      "dropact",
      "empty",
      "bored",
      "spirits",
      "afraid",
      "happy",
      "helpless",
      "stayhome",
      "memprob",
      "wondrful",
      "wrthless",
      "energy",
      "hopeless",
      "better",
      "gds"
    };
    return required;
  }
}
