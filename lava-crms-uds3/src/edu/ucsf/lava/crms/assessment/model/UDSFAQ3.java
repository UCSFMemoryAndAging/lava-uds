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

public class UDSFAQ3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSFAQ3.class);
  public UDSFAQ3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSFAQ3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer bills;
  private Integer taxes;
  private Integer shopping;
  private Integer games;
  private Integer stove;
  private Integer mealprep;
  private Integer events;
  private Integer payattn;
  private Integer remdates;
  private Integer travel;



  public Integer getBills() {
    return bills;
  }
  public void setBills(Integer bills) {
    this.bills=bills;
  }

  public Integer getTaxes() {
    return taxes;
  }
  public void setTaxes(Integer taxes) {
    this.taxes=taxes;
  }

  public Integer getShopping() {
    return shopping;
  }
  public void setShopping(Integer shopping) {
    this.shopping=shopping;
  }

  public Integer getGames() {
    return games;
  }
  public void setGames(Integer games) {
    this.games=games;
  }

  public Integer getStove() {
    return stove;
  }
  public void setStove(Integer stove) {
    this.stove=stove;
  }

  public Integer getMealprep() {
    return mealprep;
  }
  public void setMealprep(Integer mealprep) {
    this.mealprep=mealprep;
  }

  public Integer getEvents() {
    return events;
  }
  public void setEvents(Integer events) {
    this.events=events;
  }

  public Integer getPayattn() {
    return payattn;
  }
  public void setPayattn(Integer payattn) {
    this.payattn=payattn;
  }

  public Integer getRemdates() {
    return remdates;
  }
  public void setRemdates(Integer remdates) {
    this.remdates=remdates;
  }

  public Integer getTravel() {
    return travel;
  }
  public void setTravel(Integer travel) {
    this.travel=travel;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "bills",
      "taxes",
      "shopping",
      "games",
      "stove",
      "mealprep",
      "events",
      "payattn",
      "remdates",
      "travel"
    };
    return required;
  }
}
