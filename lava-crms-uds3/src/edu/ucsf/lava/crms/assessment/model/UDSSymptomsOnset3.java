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

public class UDSSymptomsOnset3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSSymptomsOnset3.class);
  public UDSSymptomsOnset3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSSymptomsOnset3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer decsub;
  private Integer decin;
  private Integer decclcog;
  private Integer cogmem;
  private Integer cogori;
  private Integer cogjudg;
  private Integer coglang;
  private Integer cogvis;
  private Integer cogattn;
  private Integer cogfluc;
  private Integer cogflago;
  private Integer cogothr;
  private String cogothrx;
  private Integer cogfpred;
  private String cogfprex;
  private Integer cogmode;
  private String cogmodex;
  private Integer decage;
  private Integer decclbe;
  private Integer beapathy;
  private Integer bedep;
  private Integer bevhall;
  private Integer bevwell;
  private Integer bevhago;
  private Integer beahall;
  private Integer bedel;
  private Integer bedisin;
  private Integer beirrit;
  private Integer beagit;
  private Integer beperch;
  private Integer berem;
  private Integer beremago;
  private Integer beanx;
  private Integer beothr;
  private String beothrx;
  private Integer befpred;
  private String befpredx;
  private Integer bemode;
  private String bemodex;
  private Integer beage;
  private Integer decclmot;
  private Integer mogait;
  private Integer mofalls;
  private Integer motrem;
  private Integer moslow;
  private Integer mofrst;
  private Integer momode;
  private String momodex;
  private Integer momopark;
  private Integer parkage;
  private Integer momoals;
  private Integer alsage;
  private Integer moage;
  private Integer course;
  private Integer frstchg;
  private Integer lbdeval;
  private Integer ftldeval;



  public Integer getDecsub() {
    return decsub;
  }
  public void setDecsub(Integer decsub) {
    this.decsub=decsub;
  }

  public Integer getDecin() {
    return decin;
  }
  public void setDecin(Integer decin) {
    this.decin=decin;
  }

  public Integer getDecclcog() {
    return decclcog;
  }
  public void setDecclcog(Integer decclcog) {
    this.decclcog=decclcog;
  }

  public Integer getCogmem() {
    return cogmem;
  }
  public void setCogmem(Integer cogmem) {
    this.cogmem=cogmem;
  }

  public Integer getCogori() {
    return cogori;
  }
  public void setCogori(Integer cogori) {
    this.cogori=cogori;
  }

  public Integer getCogjudg() {
    return cogjudg;
  }
  public void setCogjudg(Integer cogjudg) {
    this.cogjudg=cogjudg;
  }

  public Integer getCoglang() {
    return coglang;
  }
  public void setCoglang(Integer coglang) {
    this.coglang=coglang;
  }

  public Integer getCogvis() {
    return cogvis;
  }
  public void setCogvis(Integer cogvis) {
    this.cogvis=cogvis;
  }

  public Integer getCogattn() {
    return cogattn;
  }
  public void setCogattn(Integer cogattn) {
    this.cogattn=cogattn;
  }

  public Integer getCogfluc() {
    return cogfluc;
  }
  public void setCogfluc(Integer cogfluc) {
    this.cogfluc=cogfluc;
  }

  public Integer getCogflago() {
    return cogflago;
  }
  public void setCogflago(Integer cogflago) {
    this.cogflago=cogflago;
  }

  public Integer getCogothr() {
    return cogothr;
  }
  public void setCogothr(Integer cogothr) {
    this.cogothr=cogothr;
  }

  public String getCogothrx() {
    return cogothrx;
  }
  public void setCogothrx(String cogothrx) {
    this.cogothrx=cogothrx;
  }

  public Integer getCogfpred() {
    return cogfpred;
  }
  public void setCogfpred(Integer cogfpred) {
    this.cogfpred=cogfpred;
  }

  public String getCogfprex() {
    return cogfprex;
  }
  public void setCogfprex(String cogfprex) {
    this.cogfprex=cogfprex;
  }

  public Integer getCogmode() {
    return cogmode;
  }
  public void setCogmode(Integer cogmode) {
    this.cogmode=cogmode;
  }

  public String getCogmodex() {
    return cogmodex;
  }
  public void setCogmodex(String cogmodex) {
    this.cogmodex=cogmodex;
  }

  public Integer getDecage() {
    return decage;
  }
  public void setDecage(Integer decage) {
    this.decage=decage;
  }

  public Integer getDecclbe() {
    return decclbe;
  }
  public void setDecclbe(Integer decclbe) {
    this.decclbe=decclbe;
  }

  public Integer getBeapathy() {
    return beapathy;
  }
  public void setBeapathy(Integer beapathy) {
    this.beapathy=beapathy;
  }

  public Integer getBedep() {
    return bedep;
  }
  public void setBedep(Integer bedep) {
    this.bedep=bedep;
  }

  public Integer getBevhall() {
    return bevhall;
  }
  public void setBevhall(Integer bevhall) {
    this.bevhall=bevhall;
  }

  public Integer getBevwell() {
    return bevwell;
  }
  public void setBevwell(Integer bevwell) {
    this.bevwell=bevwell;
  }

  public Integer getBevhago() {
    return bevhago;
  }
  public void setBevhago(Integer bevhago) {
    this.bevhago=bevhago;
  }

  public Integer getBeahall() {
    return beahall;
  }
  public void setBeahall(Integer beahall) {
    this.beahall=beahall;
  }

  public Integer getBedel() {
    return bedel;
  }
  public void setBedel(Integer bedel) {
    this.bedel=bedel;
  }

  public Integer getBedisin() {
    return bedisin;
  }
  public void setBedisin(Integer bedisin) {
    this.bedisin=bedisin;
  }

  public Integer getBeirrit() {
    return beirrit;
  }
  public void setBeirrit(Integer beirrit) {
    this.beirrit=beirrit;
  }

  public Integer getBeagit() {
    return beagit;
  }
  public void setBeagit(Integer beagit) {
    this.beagit=beagit;
  }

  public Integer getBeperch() {
    return beperch;
  }
  public void setBeperch(Integer beperch) {
    this.beperch=beperch;
  }

  public Integer getBerem() {
    return berem;
  }
  public void setBerem(Integer berem) {
    this.berem=berem;
  }

  public Integer getBeremago() {
    return beremago;
  }
  public void setBeremago(Integer beremago) {
    this.beremago=beremago;
  }

  public Integer getBeanx() {
    return beanx;
  }
  public void setBeanx(Integer beanx) {
    this.beanx=beanx;
  }

  public Integer getBeothr() {
    return beothr;
  }
  public void setBeothr(Integer beothr) {
    this.beothr=beothr;
  }

  public String getBeothrx() {
    return beothrx;
  }
  public void setBeothrx(String beothrx) {
    this.beothrx=beothrx;
  }

  public Integer getBefpred() {
    return befpred;
  }
  public void setBefpred(Integer befpred) {
    this.befpred=befpred;
  }

  public String getBefpredx() {
    return befpredx;
  }
  public void setBefpredx(String befpredx) {
    this.befpredx=befpredx;
  }

  public Integer getBemode() {
    return bemode;
  }
  public void setBemode(Integer bemode) {
    this.bemode=bemode;
  }

  public String getBemodex() {
    return bemodex;
  }
  public void setBemodex(String bemodex) {
    this.bemodex=bemodex;
  }

  public Integer getBeage() {
    return beage;
  }
  public void setBeage(Integer beage) {
    this.beage=beage;
  }

  public Integer getDecclmot() {
    return decclmot;
  }
  public void setDecclmot(Integer decclmot) {
    this.decclmot=decclmot;
  }

  public Integer getMogait() {
    return mogait;
  }
  public void setMogait(Integer mogait) {
    this.mogait=mogait;
  }

  public Integer getMofalls() {
    return mofalls;
  }
  public void setMofalls(Integer mofalls) {
    this.mofalls=mofalls;
  }

  public Integer getMotrem() {
    return motrem;
  }
  public void setMotrem(Integer motrem) {
    this.motrem=motrem;
  }

  public Integer getMoslow() {
    return moslow;
  }
  public void setMoslow(Integer moslow) {
    this.moslow=moslow;
  }

  public Integer getMofrst() {
    return mofrst;
  }
  public void setMofrst(Integer mofrst) {
    this.mofrst=mofrst;
  }

  public Integer getMomode() {
    return momode;
  }
  public void setMomode(Integer momode) {
    this.momode=momode;
  }

  public String getMomodex() {
    return momodex;
  }
  public void setMomodex(String momodex) {
    this.momodex=momodex;
  }

  public Integer getMomopark() {
    return momopark;
  }
  public void setMomopark(Integer momopark) {
    this.momopark=momopark;
  }

  public Integer getParkage() {
    return parkage;
  }
  public void setParkage(Integer parkage) {
    this.parkage=parkage;
  }

  public Integer getMomoals() {
    return momoals;
  }
  public void setMomoals(Integer momoals) {
    this.momoals=momoals;
  }

  public Integer getAlsage() {
    return alsage;
  }
  public void setAlsage(Integer alsage) {
    this.alsage=alsage;
  }

  public Integer getMoage() {
    return moage;
  }
  public void setMoage(Integer moage) {
    this.moage=moage;
  }

  public Integer getCourse() {
    return course;
  }
  public void setCourse(Integer course) {
    this.course=course;
  }

  public Integer getFrstchg() {
    return frstchg;
  }
  public void setFrstchg(Integer frstchg) {
    this.frstchg=frstchg;
  }

  public Integer getLbdeval() {
    return lbdeval;
  }
  public void setLbdeval(Integer lbdeval) {
    this.lbdeval=lbdeval;
  }

  public Integer getFtldeval() {
    return ftldeval;
  }
  public void setFtldeval(Integer ftldeval) {
    this.ftldeval=ftldeval;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "decsub",
      "decin",
      "decclcog",
      "cogmem",
      "cogori",
      "cogjudg",
      "coglang",
      "cogvis",
      "cogattn",
      "cogfluc",
      "cogflago",
      "cogothr",
      "cogothrx",
      "cogfpred",
      "cogfprex",
      "cogmode",
      "cogmodex",
      "decage",
      "decclbe",
      "beapathy",
      "bedep",
      "bevhall",
      "bevwell",
      "bevhago",
      "beahall",
      "bedel",
      "bedisin",
      "beirrit",
      "beagit",
      "beperch",
      "berem",
      "beremago",
      "beanx",
      "beothr",
      "beothrx",
      "befpred",
      "befpredx",
      "bemode",
      "bemodex",
      "beage",
      "decclmot",
      "mogait",
      "mofalls",
      "motrem",
      "moslow",
      "mofrst",
      "momode",
      "momodex",
      "momopark",
      "parkage",
      "momoals",
      "alsage",
      "moage",
      "course",
      "frstchg",
      "lbdeval",
      "ftldeval"
    };
    return required;
  }
}
