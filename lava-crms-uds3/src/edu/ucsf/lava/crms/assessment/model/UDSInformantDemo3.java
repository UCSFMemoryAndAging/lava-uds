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

public class UDSInformantDemo3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSInformantDemo3.class);
  public UDSInformantDemo3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSInformantDemo3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer inbirmo;
  private Integer inbiryr;
  private Integer insex;
  private Integer newinf;
  private Integer inhisp;
  private Integer inhispor;
  private String inhispox;
  private Integer inrace;
  private String inracex;
  private Integer inrasec;
  private String inrasecx;
  private Integer inrater;
  private String inraterx;
  private Integer ineduc;
  private Integer inrelto;
  private Integer inknown;
  private Integer inlivwth;
  private Integer invisits;
  private Integer incalls;
  private Integer inrely;



  public Integer getInbirmo() {
    return inbirmo;
  }
  public void setInbirmo(Integer inbirmo) {
    this.inbirmo=inbirmo;
  }

  public Integer getInbiryr() {
    return inbiryr;
  }
  public void setInbiryr(Integer inbiryr) {
    this.inbiryr=inbiryr;
  }

  public Integer getInsex() {
    return insex;
  }
  public void setInsex(Integer insex) {
    this.insex=insex;
  }

  public Integer getNewinf() {
    return newinf;
  }
  public void setNewinf(Integer newinf) {
    this.newinf=newinf;
  }

  public Integer getInhisp() {
    return inhisp;
  }
  public void setInhisp(Integer inhisp) {
    this.inhisp=inhisp;
  }

  public Integer getInhispor() {
    return inhispor;
  }
  public void setInhispor(Integer inhispor) {
    this.inhispor=inhispor;
  }

  public String getInhispox() {
    return inhispox;
  }
  public void setInhispox(String inhispox) {
    this.inhispox=inhispox;
  }

  public Integer getInrace() {
    return inrace;
  }
  public void setInrace(Integer inrace) {
    this.inrace=inrace;
  }

  public String getInracex() {
    return inracex;
  }
  public void setInracex(String inracex) {
    this.inracex=inracex;
  }

  public Integer getInrasec() {
    return inrasec;
  }
  public void setInrasec(Integer inrasec) {
    this.inrasec=inrasec;
  }

  public String getInrasecx() {
    return inrasecx;
  }
  public void setInrasecx(String inrasecx) {
    this.inrasecx=inrasecx;
  }

  public Integer getInrater() {
    return inrater;
  }
  public void setInrater(Integer inrater) {
    this.inrater=inrater;
  }

  public String getInraterx() {
    return inraterx;
  }
  public void setInraterx(String inraterx) {
    this.inraterx=inraterx;
  }

  public Integer getIneduc() {
    return ineduc;
  }
  public void setIneduc(Integer ineduc) {
    this.ineduc=ineduc;
  }

  public Integer getInrelto() {
    return inrelto;
  }
  public void setInrelto(Integer inrelto) {
    this.inrelto=inrelto;
  }

  public Integer getInknown() {
    return inknown;
  }
  public void setInknown(Integer inknown) {
    this.inknown=inknown;
  }

  public Integer getInlivwth() {
    return inlivwth;
  }
  public void setInlivwth(Integer inlivwth) {
    this.inlivwth=inlivwth;
  }

  public Integer getInvisits() {
    return invisits;
  }
  public void setInvisits(Integer invisits) {
    this.invisits=invisits;
  }

  public Integer getIncalls() {
    return incalls;
  }
  public void setIncalls(Integer incalls) {
    this.incalls=incalls;
  }

  public Integer getInrely() {
    return inrely;
  }
  public void setInrely(Integer inrely) {
    this.inrely=inrely;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "inbirmo",
      "inbiryr",
      "insex",
      "newinf",
      "inhisp",
      "inhispor",
      "inhispox",
      "inrace",
      "inracex",
      "inrasec",
      "inrasecx",
      "inrater",
      "inraterx",
      "ineduc",
      "inrelto",
      "inknown",
      "inlivwth",
      "invisits",
      "incalls",
      "inrely"
    };
    return required;
  }
}
