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

public class UDSFamilyHistory3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSFamilyHistory3.class);
  public UDSFamilyHistory3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSFamilyHistory3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer afffamm;
  private Integer fadmut;
  private String fadmutx;
  private Integer fadmuso;
  private String fadmusox;
  private Integer fftdmut;
  private String fftdmutx;
  private Integer fftdmuso;
  private String fftdmusx;
  private Integer fothmut;
  private String fothmutx;
  private Integer fothmuso;
  private String fothmusx;
  private Integer mommob;
  private Integer momyob;
  private Integer momdage;
  private Integer momneur;
  private Integer momprdx;
  private Integer mommoe;
  private Integer momageo;
  private Integer dadmob;
  private Integer dadyob;
  private Integer daddage;
  private Integer dadneur;
  private Integer dadprdx;
  private Integer dadmoe;
  private Integer dadageo;
  private Integer sibs;
  private Integer sib1mob;
  private Integer sib1yob;
  private Integer sib1agd;
  private Integer sib1neu;
  private Integer sib1pdx;
  private Integer sib1moe;
  private Integer sib1ago;
  private Integer sib2mob;
  private Integer sib2yob;
  private Integer sib2agd;
  private Integer sib2neu;
  private Integer sib2pdx;
  private Integer sib2moe;
  private Integer sib2ago;
  private Integer sib3mob;
  private Integer sib3yob;
  private Integer sib3agd;
  private Integer sib3neu;
  private Integer sib3pdx;
  private Integer sib3moe;
  private Integer sib3ago;
  private Integer sib4mob;
  private Integer sib4yob;
  private Integer sib4agd;
  private Integer sib4neu;
  private Integer sib4pdx;
  private Integer sib4moe;
  private Integer sib4ago;
  private Integer sib5mob;
  private Integer sib5yob;
  private Integer sib5agd;
  private Integer sib5neu;
  private Integer sib5pdx;
  private Integer sib5moe;
  private Integer sib5ago;
  private Integer sib6mob;
  private Integer sib6yob;
  private Integer sib6agd;
  private Integer sib6neu;
  private Integer sib6pdx;
  private Integer sib6moe;
  private Integer sib6ago;
  private Integer sib7mob;
  private Integer sib7yob;
  private Integer sib7agd;
  private Integer sib7neu;
  private Integer sib7pdx;
  private Integer sib7moe;
  private Integer sib7ago;
  private Integer sib8mob;
  private Integer sib8yob;
  private Integer sib8agd;
  private Integer sib8neu;
  private Integer sib8pdx;
  private Integer sib8moe;
  private Integer sib8ago;
  private Integer sib9mob;
  private Integer sib9yob;
  private Integer sib9agd;
  private Integer sib9neu;
  private Integer sib9pdx;
  private Integer sib9moe;
  private Integer sib9ago;
  private Integer sib10mob;
  private Integer sib10yob;
  private Integer sib10agd;
  private Integer sib10neu;
  private Integer sib10pdx;
  private Integer sib10moe;
  private Integer sib10ago;
  private Integer sib11mob;
  private Integer sib11yob;
  private Integer sib11agd;
  private Integer sib11neu;
  private Integer sib11pdx;
  private Integer sib11moe;
  private Integer sib11ago;
  private Integer sib12mob;
  private Integer sib12yob;
  private Integer sib12agd;
  private Integer sib12neu;
  private Integer sib12pdx;
  private Integer sib12moe;
  private Integer sib12ago;
  private Integer sib13mob;
  private Integer sib13yob;
  private Integer sib13agd;
  private Integer sib13neu;
  private Integer sib13pdx;
  private Integer sib13moe;
  private Integer sib13ago;
  private Integer sib14mob;
  private Integer sib14yob;
  private Integer sib14agd;
  private Integer sib14neu;
  private Integer sib14pdx;
  private Integer sib14moe;
  private Integer sib14ago;
  private Integer sib15mob;
  private Integer sib15yob;
  private Integer sib15agd;
  private Integer sib15neu;
  private Integer sib15pdx;
  private Integer sib15moe;
  private Integer sib15ago;
  private Integer sib16mob;
  private Integer sib16yob;
  private Integer sib16agd;
  private Integer sib16neu;
  private Integer sib16pdx;
  private Integer sib16moe;
  private Integer sib16ago;
  private Integer sib17mob;
  private Integer sib17yob;
  private Integer sib17agd;
  private Integer sib17neu;
  private Integer sib17pdx;
  private Integer sib17moe;
  private Integer sib17ago;
  private Integer sib18mob;
  private Integer sib18yob;
  private Integer sib18agd;
  private Integer sib18neu;
  private Integer sib18pdx;
  private Integer sib18moe;
  private Integer sib18ago;
  private Integer sib19mob;
  private Integer sib19yob;
  private Integer sib19agd;
  private Integer sib19neu;
  private Integer sib19pdx;
  private Integer sib19moe;
  private Integer sib19ago;
  private Integer sib20mob;
  private Integer sib20yob;
  private Integer sib20agd;
  private Integer sib20neu;
  private Integer sib20pdx;
  private Integer sib20moe;
  private Integer sib20ago;
  private Integer kids;
  private Integer kid1mob;
  private Integer kid1yob;
  private Integer kid1agd;
  private Integer kid1neu;
  private Integer kid1pdx;
  private Integer kid1moe;
  private Integer kid1ago;
  private Integer kid2mob;
  private Integer kid2yob;
  private Integer kid2agd;
  private Integer kid2neu;
  private Integer kid2pdx;
  private Integer kid2moe;
  private Integer kid2ago;
  private Integer kid3mob;
  private Integer kid3yob;
  private Integer kid3agd;
  private Integer kid3neu;
  private Integer kid3pdx;
  private Integer kid3moe;
  private Integer kid3ago;
  private Integer kid4mob;
  private Integer kid4yob;
  private Integer kid4agd;
  private Integer kid4neu;
  private Integer kid4pdx;
  private Integer kid4moe;
  private Integer kid4ago;
  private Integer kid5mob;
  private Integer kid5yob;
  private Integer kid5agd;
  private Integer kid5neu;
  private Integer kid5pdx;
  private Integer kid5moe;
  private Integer kid5ago;
  private Integer kid6mob;
  private Integer kid6yob;
  private Integer kid6agd;
  private Integer kid6neu;
  private Integer kid6pdx;
  private Integer kid6moe;
  private Integer kid6ago;
  private Integer kid7mob;
  private Integer kid7yob;
  private Integer kid7agd;
  private Integer kid7neu;
  private Integer kid7pdx;
  private Integer kid7moe;
  private Integer kid7ago;
  private Integer kid8mob;
  private Integer kid8yob;
  private Integer kid8agd;
  private Integer kid8neu;
  private Integer kid8pdx;
  private Integer kid8moe;
  private Integer kid8ago;
  private Integer kid9mob;
  private Integer kid9yob;
  private Integer kid9agd;
  private Integer kid9neu;
  private Integer kid9pdx;
  private Integer kid9moe;
  private Integer kid9ago;
  private Integer kid10mob;
  private Integer kid10yob;
  private Integer kid10agd;
  private Integer kid10neu;
  private Integer kid10pdx;
  private Integer kid10moe;
  private Integer kid10ago;
  private Integer kid11mob;
  private Integer kid11yob;
  private Integer kid11agd;
  private Integer kid11neu;
  private Integer kid11pdx;
  private Integer kid11moe;
  private Integer kid11ago;
  private Integer kid12mob;
  private Integer kid12yob;
  private Integer kid12agd;
  private Integer kid12neu;
  private Integer kid12pdx;
  private Integer kid12moe;
  private Integer kid12ago;
  private Integer kid13mob;
  private Integer kid13yob;
  private Integer kid13agd;
  private Integer kid13neu;
  private Integer kid13pdx;
  private Integer kid13moe;
  private Integer kid13ago;
  private Integer kid14mob;
  private Integer kid14yob;
  private Integer kid14agd;
  private Integer kid14neu;
  private Integer kid14pdx;
  private Integer kid14moe;
  private Integer kid14ago;
  private Integer kid15mob;
  private Integer kid15yob;
  private Integer kid15agd;
  private Integer kid15neu;
  private Integer kid15pdx;
  private Integer kid15moe;
  private Integer kid15ago;



  public Integer getAfffamm() {
    return afffamm;
  }
  public void setAfffamm(Integer afffamm) {
    this.afffamm=afffamm;
  }

  public Integer getFadmut() {
    return fadmut;
  }
  public void setFadmut(Integer fadmut) {
    this.fadmut=fadmut;
  }

  public String getFadmutx() {
    return fadmutx;
  }
  public void setFadmutx(String fadmutx) {
    this.fadmutx=fadmutx;
  }

  public Integer getFadmuso() {
    return fadmuso;
  }
  public void setFadmuso(Integer fadmuso) {
    this.fadmuso=fadmuso;
  }

  public String getFadmusox() {
    return fadmusox;
  }
  public void setFadmusox(String fadmusox) {
    this.fadmusox=fadmusox;
  }

  public Integer getFftdmut() {
    return fftdmut;
  }
  public void setFftdmut(Integer fftdmut) {
    this.fftdmut=fftdmut;
  }

  public String getFftdmutx() {
    return fftdmutx;
  }
  public void setFftdmutx(String fftdmutx) {
    this.fftdmutx=fftdmutx;
  }

  public Integer getFftdmuso() {
    return fftdmuso;
  }
  public void setFftdmuso(Integer fftdmuso) {
    this.fftdmuso=fftdmuso;
  }

  public String getFftdmusx() {
    return fftdmusx;
  }
  public void setFftdmusx(String fftdmusx) {
    this.fftdmusx=fftdmusx;
  }

  public Integer getFothmut() {
    return fothmut;
  }
  public void setFothmut(Integer fothmut) {
    this.fothmut=fothmut;
  }

  public String getFothmutx() {
    return fothmutx;
  }
  public void setFothmutx(String fothmutx) {
    this.fothmutx=fothmutx;
  }

  public Integer getFothmuso() {
    return fothmuso;
  }
  public void setFothmuso(Integer fothmuso) {
    this.fothmuso=fothmuso;
  }

  public String getFothmusx() {
    return fothmusx;
  }
  public void setFothmusx(String fothmusx) {
    this.fothmusx=fothmusx;
  }

  public Integer getMommob() {
    return mommob;
  }
  public void setMommob(Integer mommob) {
    this.mommob=mommob;
  }

  public Integer getMomyob() {
    return momyob;
  }
  public void setMomyob(Integer momyob) {
    this.momyob=momyob;
  }

  public Integer getMomdage() {
    return momdage;
  }
  public void setMomdage(Integer momdage) {
    this.momdage=momdage;
  }

  public Integer getMomneur() {
    return momneur;
  }
  public void setMomneur(Integer momneur) {
    this.momneur=momneur;
  }

  public Integer getMomprdx() {
    return momprdx;
  }
  public void setMomprdx(Integer momprdx) {
    this.momprdx=momprdx;
  }

  public Integer getMommoe() {
    return mommoe;
  }
  public void setMommoe(Integer mommoe) {
    this.mommoe=mommoe;
  }

  public Integer getMomageo() {
    return momageo;
  }
  public void setMomageo(Integer momageo) {
    this.momageo=momageo;
  }

  public Integer getDadmob() {
    return dadmob;
  }
  public void setDadmob(Integer dadmob) {
    this.dadmob=dadmob;
  }

  public Integer getDadyob() {
    return dadyob;
  }
  public void setDadyob(Integer dadyob) {
    this.dadyob=dadyob;
  }

  public Integer getDaddage() {
    return daddage;
  }
  public void setDaddage(Integer daddage) {
    this.daddage=daddage;
  }

  public Integer getDadneur() {
    return dadneur;
  }
  public void setDadneur(Integer dadneur) {
    this.dadneur=dadneur;
  }

  public Integer getDadprdx() {
    return dadprdx;
  }
  public void setDadprdx(Integer dadprdx) {
    this.dadprdx=dadprdx;
  }

  public Integer getDadmoe() {
    return dadmoe;
  }
  public void setDadmoe(Integer dadmoe) {
    this.dadmoe=dadmoe;
  }

  public Integer getDadageo() {
    return dadageo;
  }
  public void setDadageo(Integer dadageo) {
    this.dadageo=dadageo;
  }

  public Integer getSibs() {
    return sibs;
  }
  public void setSibs(Integer sibs) {
    this.sibs=sibs;
  }

  public Integer getSib1mob() {
    return sib1mob;
  }
  public void setSib1mob(Integer sib1mob) {
    this.sib1mob=sib1mob;
  }

  public Integer getSib1yob() {
    return sib1yob;
  }
  public void setSib1yob(Integer sib1yob) {
    this.sib1yob=sib1yob;
  }

  public Integer getSib1agd() {
    return sib1agd;
  }
  public void setSib1agd(Integer sib1agd) {
    this.sib1agd=sib1agd;
  }

  public Integer getSib1neu() {
    return sib1neu;
  }
  public void setSib1neu(Integer sib1neu) {
    this.sib1neu=sib1neu;
  }

  public Integer getSib1pdx() {
    return sib1pdx;
  }
  public void setSib1pdx(Integer sib1pdx) {
    this.sib1pdx=sib1pdx;
  }

  public Integer getSib1moe() {
    return sib1moe;
  }
  public void setSib1moe(Integer sib1moe) {
    this.sib1moe=sib1moe;
  }

  public Integer getSib1ago() {
    return sib1ago;
  }
  public void setSib1ago(Integer sib1ago) {
    this.sib1ago=sib1ago;
  }

  public Integer getSib2mob() {
    return sib2mob;
  }
  public void setSib2mob(Integer sib2mob) {
    this.sib2mob=sib2mob;
  }

  public Integer getSib2yob() {
    return sib2yob;
  }
  public void setSib2yob(Integer sib2yob) {
    this.sib2yob=sib2yob;
  }

  public Integer getSib2agd() {
    return sib2agd;
  }
  public void setSib2agd(Integer sib2agd) {
    this.sib2agd=sib2agd;
  }

  public Integer getSib2neu() {
    return sib2neu;
  }
  public void setSib2neu(Integer sib2neu) {
    this.sib2neu=sib2neu;
  }

  public Integer getSib2pdx() {
    return sib2pdx;
  }
  public void setSib2pdx(Integer sib2pdx) {
    this.sib2pdx=sib2pdx;
  }

  public Integer getSib2moe() {
    return sib2moe;
  }
  public void setSib2moe(Integer sib2moe) {
    this.sib2moe=sib2moe;
  }

  public Integer getSib2ago() {
    return sib2ago;
  }
  public void setSib2ago(Integer sib2ago) {
    this.sib2ago=sib2ago;
  }

  public Integer getSib3mob() {
    return sib3mob;
  }
  public void setSib3mob(Integer sib3mob) {
    this.sib3mob=sib3mob;
  }

  public Integer getSib3yob() {
    return sib3yob;
  }
  public void setSib3yob(Integer sib3yob) {
    this.sib3yob=sib3yob;
  }

  public Integer getSib3agd() {
    return sib3agd;
  }
  public void setSib3agd(Integer sib3agd) {
    this.sib3agd=sib3agd;
  }

  public Integer getSib3neu() {
    return sib3neu;
  }
  public void setSib3neu(Integer sib3neu) {
    this.sib3neu=sib3neu;
  }

  public Integer getSib3pdx() {
    return sib3pdx;
  }
  public void setSib3pdx(Integer sib3pdx) {
    this.sib3pdx=sib3pdx;
  }

  public Integer getSib3moe() {
    return sib3moe;
  }
  public void setSib3moe(Integer sib3moe) {
    this.sib3moe=sib3moe;
  }

  public Integer getSib3ago() {
    return sib3ago;
  }
  public void setSib3ago(Integer sib3ago) {
    this.sib3ago=sib3ago;
  }

  public Integer getSib4mob() {
    return sib4mob;
  }
  public void setSib4mob(Integer sib4mob) {
    this.sib4mob=sib4mob;
  }

  public Integer getSib4yob() {
    return sib4yob;
  }
  public void setSib4yob(Integer sib4yob) {
    this.sib4yob=sib4yob;
  }

  public Integer getSib4agd() {
    return sib4agd;
  }
  public void setSib4agd(Integer sib4agd) {
    this.sib4agd=sib4agd;
  }

  public Integer getSib4neu() {
    return sib4neu;
  }
  public void setSib4neu(Integer sib4neu) {
    this.sib4neu=sib4neu;
  }

  public Integer getSib4pdx() {
    return sib4pdx;
  }
  public void setSib4pdx(Integer sib4pdx) {
    this.sib4pdx=sib4pdx;
  }

  public Integer getSib4moe() {
    return sib4moe;
  }
  public void setSib4moe(Integer sib4moe) {
    this.sib4moe=sib4moe;
  }

  public Integer getSib4ago() {
    return sib4ago;
  }
  public void setSib4ago(Integer sib4ago) {
    this.sib4ago=sib4ago;
  }

  public Integer getSib5mob() {
    return sib5mob;
  }
  public void setSib5mob(Integer sib5mob) {
    this.sib5mob=sib5mob;
  }

  public Integer getSib5yob() {
    return sib5yob;
  }
  public void setSib5yob(Integer sib5yob) {
    this.sib5yob=sib5yob;
  }

  public Integer getSib5agd() {
    return sib5agd;
  }
  public void setSib5agd(Integer sib5agd) {
    this.sib5agd=sib5agd;
  }

  public Integer getSib5neu() {
    return sib5neu;
  }
  public void setSib5neu(Integer sib5neu) {
    this.sib5neu=sib5neu;
  }

  public Integer getSib5pdx() {
    return sib5pdx;
  }
  public void setSib5pdx(Integer sib5pdx) {
    this.sib5pdx=sib5pdx;
  }

  public Integer getSib5moe() {
    return sib5moe;
  }
  public void setSib5moe(Integer sib5moe) {
    this.sib5moe=sib5moe;
  }

  public Integer getSib5ago() {
    return sib5ago;
  }
  public void setSib5ago(Integer sib5ago) {
    this.sib5ago=sib5ago;
  }

  public Integer getSib6mob() {
    return sib6mob;
  }
  public void setSib6mob(Integer sib6mob) {
    this.sib6mob=sib6mob;
  }

  public Integer getSib6yob() {
    return sib6yob;
  }
  public void setSib6yob(Integer sib6yob) {
    this.sib6yob=sib6yob;
  }

  public Integer getSib6agd() {
    return sib6agd;
  }
  public void setSib6agd(Integer sib6agd) {
    this.sib6agd=sib6agd;
  }

  public Integer getSib6neu() {
    return sib6neu;
  }
  public void setSib6neu(Integer sib6neu) {
    this.sib6neu=sib6neu;
  }

  public Integer getSib6pdx() {
    return sib6pdx;
  }
  public void setSib6pdx(Integer sib6pdx) {
    this.sib6pdx=sib6pdx;
  }

  public Integer getSib6moe() {
    return sib6moe;
  }
  public void setSib6moe(Integer sib6moe) {
    this.sib6moe=sib6moe;
  }

  public Integer getSib6ago() {
    return sib6ago;
  }
  public void setSib6ago(Integer sib6ago) {
    this.sib6ago=sib6ago;
  }

  public Integer getSib7mob() {
    return sib7mob;
  }
  public void setSib7mob(Integer sib7mob) {
    this.sib7mob=sib7mob;
  }

  public Integer getSib7yob() {
    return sib7yob;
  }
  public void setSib7yob(Integer sib7yob) {
    this.sib7yob=sib7yob;
  }

  public Integer getSib7agd() {
    return sib7agd;
  }
  public void setSib7agd(Integer sib7agd) {
    this.sib7agd=sib7agd;
  }

  public Integer getSib7neu() {
    return sib7neu;
  }
  public void setSib7neu(Integer sib7neu) {
    this.sib7neu=sib7neu;
  }

  public Integer getSib7pdx() {
    return sib7pdx;
  }
  public void setSib7pdx(Integer sib7pdx) {
    this.sib7pdx=sib7pdx;
  }

  public Integer getSib7moe() {
    return sib7moe;
  }
  public void setSib7moe(Integer sib7moe) {
    this.sib7moe=sib7moe;
  }

  public Integer getSib7ago() {
    return sib7ago;
  }
  public void setSib7ago(Integer sib7ago) {
    this.sib7ago=sib7ago;
  }

  public Integer getSib8mob() {
    return sib8mob;
  }
  public void setSib8mob(Integer sib8mob) {
    this.sib8mob=sib8mob;
  }

  public Integer getSib8yob() {
    return sib8yob;
  }
  public void setSib8yob(Integer sib8yob) {
    this.sib8yob=sib8yob;
  }

  public Integer getSib8agd() {
    return sib8agd;
  }
  public void setSib8agd(Integer sib8agd) {
    this.sib8agd=sib8agd;
  }

  public Integer getSib8neu() {
    return sib8neu;
  }
  public void setSib8neu(Integer sib8neu) {
    this.sib8neu=sib8neu;
  }

  public Integer getSib8pdx() {
    return sib8pdx;
  }
  public void setSib8pdx(Integer sib8pdx) {
    this.sib8pdx=sib8pdx;
  }

  public Integer getSib8moe() {
    return sib8moe;
  }
  public void setSib8moe(Integer sib8moe) {
    this.sib8moe=sib8moe;
  }

  public Integer getSib8ago() {
    return sib8ago;
  }
  public void setSib8ago(Integer sib8ago) {
    this.sib8ago=sib8ago;
  }

  public Integer getSib9mob() {
    return sib9mob;
  }
  public void setSib9mob(Integer sib9mob) {
    this.sib9mob=sib9mob;
  }

  public Integer getSib9yob() {
    return sib9yob;
  }
  public void setSib9yob(Integer sib9yob) {
    this.sib9yob=sib9yob;
  }

  public Integer getSib9agd() {
    return sib9agd;
  }
  public void setSib9agd(Integer sib9agd) {
    this.sib9agd=sib9agd;
  }

  public Integer getSib9neu() {
    return sib9neu;
  }
  public void setSib9neu(Integer sib9neu) {
    this.sib9neu=sib9neu;
  }

  public Integer getSib9pdx() {
    return sib9pdx;
  }
  public void setSib9pdx(Integer sib9pdx) {
    this.sib9pdx=sib9pdx;
  }

  public Integer getSib9moe() {
    return sib9moe;
  }
  public void setSib9moe(Integer sib9moe) {
    this.sib9moe=sib9moe;
  }

  public Integer getSib9ago() {
    return sib9ago;
  }
  public void setSib9ago(Integer sib9ago) {
    this.sib9ago=sib9ago;
  }

  public Integer getSib10mob() {
    return sib10mob;
  }
  public void setSib10mob(Integer sib10mob) {
    this.sib10mob=sib10mob;
  }

  public Integer getSib10yob() {
    return sib10yob;
  }
  public void setSib10yob(Integer sib10yob) {
    this.sib10yob=sib10yob;
  }

  public Integer getSib10agd() {
    return sib10agd;
  }
  public void setSib10agd(Integer sib10agd) {
    this.sib10agd=sib10agd;
  }

  public Integer getSib10neu() {
    return sib10neu;
  }
  public void setSib10neu(Integer sib10neu) {
    this.sib10neu=sib10neu;
  }

  public Integer getSib10pdx() {
    return sib10pdx;
  }
  public void setSib10pdx(Integer sib10pdx) {
    this.sib10pdx=sib10pdx;
  }

  public Integer getSib10moe() {
    return sib10moe;
  }
  public void setSib10moe(Integer sib10moe) {
    this.sib10moe=sib10moe;
  }

  public Integer getSib10ago() {
    return sib10ago;
  }
  public void setSib10ago(Integer sib10ago) {
    this.sib10ago=sib10ago;
  }

  public Integer getSib11mob() {
    return sib11mob;
  }
  public void setSib11mob(Integer sib11mob) {
    this.sib11mob=sib11mob;
  }

  public Integer getSib11yob() {
    return sib11yob;
  }
  public void setSib11yob(Integer sib11yob) {
    this.sib11yob=sib11yob;
  }

  public Integer getSib11agd() {
    return sib11agd;
  }
  public void setSib11agd(Integer sib11agd) {
    this.sib11agd=sib11agd;
  }

  public Integer getSib11neu() {
    return sib11neu;
  }
  public void setSib11neu(Integer sib11neu) {
    this.sib11neu=sib11neu;
  }

  public Integer getSib11pdx() {
    return sib11pdx;
  }
  public void setSib11pdx(Integer sib11pdx) {
    this.sib11pdx=sib11pdx;
  }

  public Integer getSib11moe() {
    return sib11moe;
  }
  public void setSib11moe(Integer sib11moe) {
    this.sib11moe=sib11moe;
  }

  public Integer getSib11ago() {
    return sib11ago;
  }
  public void setSib11ago(Integer sib11ago) {
    this.sib11ago=sib11ago;
  }

  public Integer getSib12mob() {
    return sib12mob;
  }
  public void setSib12mob(Integer sib12mob) {
    this.sib12mob=sib12mob;
  }

  public Integer getSib12yob() {
    return sib12yob;
  }
  public void setSib12yob(Integer sib12yob) {
    this.sib12yob=sib12yob;
  }

  public Integer getSib12agd() {
    return sib12agd;
  }
  public void setSib12agd(Integer sib12agd) {
    this.sib12agd=sib12agd;
  }

  public Integer getSib12neu() {
    return sib12neu;
  }
  public void setSib12neu(Integer sib12neu) {
    this.sib12neu=sib12neu;
  }

  public Integer getSib12pdx() {
    return sib12pdx;
  }
  public void setSib12pdx(Integer sib12pdx) {
    this.sib12pdx=sib12pdx;
  }

  public Integer getSib12moe() {
    return sib12moe;
  }
  public void setSib12moe(Integer sib12moe) {
    this.sib12moe=sib12moe;
  }

  public Integer getSib12ago() {
    return sib12ago;
  }
  public void setSib12ago(Integer sib12ago) {
    this.sib12ago=sib12ago;
  }

  public Integer getSib13mob() {
    return sib13mob;
  }
  public void setSib13mob(Integer sib13mob) {
    this.sib13mob=sib13mob;
  }

  public Integer getSib13yob() {
    return sib13yob;
  }
  public void setSib13yob(Integer sib13yob) {
    this.sib13yob=sib13yob;
  }

  public Integer getSib13agd() {
    return sib13agd;
  }
  public void setSib13agd(Integer sib13agd) {
    this.sib13agd=sib13agd;
  }

  public Integer getSib13neu() {
    return sib13neu;
  }
  public void setSib13neu(Integer sib13neu) {
    this.sib13neu=sib13neu;
  }

  public Integer getSib13pdx() {
    return sib13pdx;
  }
  public void setSib13pdx(Integer sib13pdx) {
    this.sib13pdx=sib13pdx;
  }

  public Integer getSib13moe() {
    return sib13moe;
  }
  public void setSib13moe(Integer sib13moe) {
    this.sib13moe=sib13moe;
  }

  public Integer getSib13ago() {
    return sib13ago;
  }
  public void setSib13ago(Integer sib13ago) {
    this.sib13ago=sib13ago;
  }

  public Integer getSib14mob() {
    return sib14mob;
  }
  public void setSib14mob(Integer sib14mob) {
    this.sib14mob=sib14mob;
  }

  public Integer getSib14yob() {
    return sib14yob;
  }
  public void setSib14yob(Integer sib14yob) {
    this.sib14yob=sib14yob;
  }

  public Integer getSib14agd() {
    return sib14agd;
  }
  public void setSib14agd(Integer sib14agd) {
    this.sib14agd=sib14agd;
  }

  public Integer getSib14neu() {
    return sib14neu;
  }
  public void setSib14neu(Integer sib14neu) {
    this.sib14neu=sib14neu;
  }

  public Integer getSib14pdx() {
    return sib14pdx;
  }
  public void setSib14pdx(Integer sib14pdx) {
    this.sib14pdx=sib14pdx;
  }

  public Integer getSib14moe() {
    return sib14moe;
  }
  public void setSib14moe(Integer sib14moe) {
    this.sib14moe=sib14moe;
  }

  public Integer getSib14ago() {
    return sib14ago;
  }
  public void setSib14ago(Integer sib14ago) {
    this.sib14ago=sib14ago;
  }

  public Integer getSib15mob() {
    return sib15mob;
  }
  public void setSib15mob(Integer sib15mob) {
    this.sib15mob=sib15mob;
  }

  public Integer getSib15yob() {
    return sib15yob;
  }
  public void setSib15yob(Integer sib15yob) {
    this.sib15yob=sib15yob;
  }

  public Integer getSib15agd() {
    return sib15agd;
  }
  public void setSib15agd(Integer sib15agd) {
    this.sib15agd=sib15agd;
  }

  public Integer getSib15neu() {
    return sib15neu;
  }
  public void setSib15neu(Integer sib15neu) {
    this.sib15neu=sib15neu;
  }

  public Integer getSib15pdx() {
    return sib15pdx;
  }
  public void setSib15pdx(Integer sib15pdx) {
    this.sib15pdx=sib15pdx;
  }

  public Integer getSib15moe() {
    return sib15moe;
  }
  public void setSib15moe(Integer sib15moe) {
    this.sib15moe=sib15moe;
  }

  public Integer getSib15ago() {
    return sib15ago;
  }
  public void setSib15ago(Integer sib15ago) {
    this.sib15ago=sib15ago;
  }

  public Integer getSib16mob() {
    return sib16mob;
  }
  public void setSib16mob(Integer sib16mob) {
    this.sib16mob=sib16mob;
  }

  public Integer getSib16yob() {
    return sib16yob;
  }
  public void setSib16yob(Integer sib16yob) {
    this.sib16yob=sib16yob;
  }

  public Integer getSib16agd() {
    return sib16agd;
  }
  public void setSib16agd(Integer sib16agd) {
    this.sib16agd=sib16agd;
  }

  public Integer getSib16neu() {
    return sib16neu;
  }
  public void setSib16neu(Integer sib16neu) {
    this.sib16neu=sib16neu;
  }

  public Integer getSib16pdx() {
    return sib16pdx;
  }
  public void setSib16pdx(Integer sib16pdx) {
    this.sib16pdx=sib16pdx;
  }

  public Integer getSib16moe() {
    return sib16moe;
  }
  public void setSib16moe(Integer sib16moe) {
    this.sib16moe=sib16moe;
  }

  public Integer getSib16ago() {
    return sib16ago;
  }
  public void setSib16ago(Integer sib16ago) {
    this.sib16ago=sib16ago;
  }

  public Integer getSib17mob() {
    return sib17mob;
  }
  public void setSib17mob(Integer sib17mob) {
    this.sib17mob=sib17mob;
  }

  public Integer getSib17yob() {
    return sib17yob;
  }
  public void setSib17yob(Integer sib17yob) {
    this.sib17yob=sib17yob;
  }

  public Integer getSib17agd() {
    return sib17agd;
  }
  public void setSib17agd(Integer sib17agd) {
    this.sib17agd=sib17agd;
  }

  public Integer getSib17neu() {
    return sib17neu;
  }
  public void setSib17neu(Integer sib17neu) {
    this.sib17neu=sib17neu;
  }

  public Integer getSib17pdx() {
    return sib17pdx;
  }
  public void setSib17pdx(Integer sib17pdx) {
    this.sib17pdx=sib17pdx;
  }

  public Integer getSib17moe() {
    return sib17moe;
  }
  public void setSib17moe(Integer sib17moe) {
    this.sib17moe=sib17moe;
  }

  public Integer getSib17ago() {
    return sib17ago;
  }
  public void setSib17ago(Integer sib17ago) {
    this.sib17ago=sib17ago;
  }

  public Integer getSib18mob() {
    return sib18mob;
  }
  public void setSib18mob(Integer sib18mob) {
    this.sib18mob=sib18mob;
  }

  public Integer getSib18yob() {
    return sib18yob;
  }
  public void setSib18yob(Integer sib18yob) {
    this.sib18yob=sib18yob;
  }

  public Integer getSib18agd() {
    return sib18agd;
  }
  public void setSib18agd(Integer sib18agd) {
    this.sib18agd=sib18agd;
  }

  public Integer getSib18neu() {
    return sib18neu;
  }
  public void setSib18neu(Integer sib18neu) {
    this.sib18neu=sib18neu;
  }

  public Integer getSib18pdx() {
    return sib18pdx;
  }
  public void setSib18pdx(Integer sib18pdx) {
    this.sib18pdx=sib18pdx;
  }

  public Integer getSib18moe() {
    return sib18moe;
  }
  public void setSib18moe(Integer sib18moe) {
    this.sib18moe=sib18moe;
  }

  public Integer getSib18ago() {
    return sib18ago;
  }
  public void setSib18ago(Integer sib18ago) {
    this.sib18ago=sib18ago;
  }

  public Integer getSib19mob() {
    return sib19mob;
  }
  public void setSib19mob(Integer sib19mob) {
    this.sib19mob=sib19mob;
  }

  public Integer getSib19yob() {
    return sib19yob;
  }
  public void setSib19yob(Integer sib19yob) {
    this.sib19yob=sib19yob;
  }

  public Integer getSib19agd() {
    return sib19agd;
  }
  public void setSib19agd(Integer sib19agd) {
    this.sib19agd=sib19agd;
  }

  public Integer getSib19neu() {
    return sib19neu;
  }
  public void setSib19neu(Integer sib19neu) {
    this.sib19neu=sib19neu;
  }

  public Integer getSib19pdx() {
    return sib19pdx;
  }
  public void setSib19pdx(Integer sib19pdx) {
    this.sib19pdx=sib19pdx;
  }

  public Integer getSib19moe() {
    return sib19moe;
  }
  public void setSib19moe(Integer sib19moe) {
    this.sib19moe=sib19moe;
  }

  public Integer getSib19ago() {
    return sib19ago;
  }
  public void setSib19ago(Integer sib19ago) {
    this.sib19ago=sib19ago;
  }

  public Integer getSib20mob() {
    return sib20mob;
  }
  public void setSib20mob(Integer sib20mob) {
    this.sib20mob=sib20mob;
  }

  public Integer getSib20yob() {
    return sib20yob;
  }
  public void setSib20yob(Integer sib20yob) {
    this.sib20yob=sib20yob;
  }

  public Integer getSib20agd() {
    return sib20agd;
  }
  public void setSib20agd(Integer sib20agd) {
    this.sib20agd=sib20agd;
  }

  public Integer getSib20neu() {
    return sib20neu;
  }
  public void setSib20neu(Integer sib20neu) {
    this.sib20neu=sib20neu;
  }

  public Integer getSib20pdx() {
    return sib20pdx;
  }
  public void setSib20pdx(Integer sib20pdx) {
    this.sib20pdx=sib20pdx;
  }

  public Integer getSib20moe() {
    return sib20moe;
  }
  public void setSib20moe(Integer sib20moe) {
    this.sib20moe=sib20moe;
  }

  public Integer getSib20ago() {
    return sib20ago;
  }
  public void setSib20ago(Integer sib20ago) {
    this.sib20ago=sib20ago;
  }

  public Integer getKids() {
    return kids;
  }
  public void setKids(Integer kids) {
    this.kids=kids;
  }

  public Integer getKid1mob() {
    return kid1mob;
  }
  public void setKid1mob(Integer kid1mob) {
    this.kid1mob=kid1mob;
  }

  public Integer getKid1yob() {
    return kid1yob;
  }
  public void setKid1yob(Integer kid1yob) {
    this.kid1yob=kid1yob;
  }

  public Integer getKid1agd() {
    return kid1agd;
  }
  public void setKid1agd(Integer kid1agd) {
    this.kid1agd=kid1agd;
  }

  public Integer getKid1neu() {
    return kid1neu;
  }
  public void setKid1neu(Integer kid1neu) {
    this.kid1neu=kid1neu;
  }

  public Integer getKid1pdx() {
    return kid1pdx;
  }
  public void setKid1pdx(Integer kid1pdx) {
    this.kid1pdx=kid1pdx;
  }

  public Integer getKid1moe() {
    return kid1moe;
  }
  public void setKid1moe(Integer kid1moe) {
    this.kid1moe=kid1moe;
  }

  public Integer getKid1ago() {
    return kid1ago;
  }
  public void setKid1ago(Integer kid1ago) {
    this.kid1ago=kid1ago;
  }

  public Integer getKid2mob() {
    return kid2mob;
  }
  public void setKid2mob(Integer kid2mob) {
    this.kid2mob=kid2mob;
  }

  public Integer getKid2yob() {
    return kid2yob;
  }
  public void setKid2yob(Integer kid2yob) {
    this.kid2yob=kid2yob;
  }

  public Integer getKid2agd() {
    return kid2agd;
  }
  public void setKid2agd(Integer kid2agd) {
    this.kid2agd=kid2agd;
  }

  public Integer getKid2neu() {
    return kid2neu;
  }
  public void setKid2neu(Integer kid2neu) {
    this.kid2neu=kid2neu;
  }

  public Integer getKid2pdx() {
    return kid2pdx;
  }
  public void setKid2pdx(Integer kid2pdx) {
    this.kid2pdx=kid2pdx;
  }

  public Integer getKid2moe() {
    return kid2moe;
  }
  public void setKid2moe(Integer kid2moe) {
    this.kid2moe=kid2moe;
  }

  public Integer getKid2ago() {
    return kid2ago;
  }
  public void setKid2ago(Integer kid2ago) {
    this.kid2ago=kid2ago;
  }

  public Integer getKid3mob() {
    return kid3mob;
  }
  public void setKid3mob(Integer kid3mob) {
    this.kid3mob=kid3mob;
  }

  public Integer getKid3yob() {
    return kid3yob;
  }
  public void setKid3yob(Integer kid3yob) {
    this.kid3yob=kid3yob;
  }

  public Integer getKid3agd() {
    return kid3agd;
  }
  public void setKid3agd(Integer kid3agd) {
    this.kid3agd=kid3agd;
  }

  public Integer getKid3neu() {
    return kid3neu;
  }
  public void setKid3neu(Integer kid3neu) {
    this.kid3neu=kid3neu;
  }

  public Integer getKid3pdx() {
    return kid3pdx;
  }
  public void setKid3pdx(Integer kid3pdx) {
    this.kid3pdx=kid3pdx;
  }

  public Integer getKid3moe() {
    return kid3moe;
  }
  public void setKid3moe(Integer kid3moe) {
    this.kid3moe=kid3moe;
  }

  public Integer getKid3ago() {
    return kid3ago;
  }
  public void setKid3ago(Integer kid3ago) {
    this.kid3ago=kid3ago;
  }

  public Integer getKid4mob() {
    return kid4mob;
  }
  public void setKid4mob(Integer kid4mob) {
    this.kid4mob=kid4mob;
  }

  public Integer getKid4yob() {
    return kid4yob;
  }
  public void setKid4yob(Integer kid4yob) {
    this.kid4yob=kid4yob;
  }

  public Integer getKid4agd() {
    return kid4agd;
  }
  public void setKid4agd(Integer kid4agd) {
    this.kid4agd=kid4agd;
  }

  public Integer getKid4neu() {
    return kid4neu;
  }
  public void setKid4neu(Integer kid4neu) {
    this.kid4neu=kid4neu;
  }

  public Integer getKid4pdx() {
    return kid4pdx;
  }
  public void setKid4pdx(Integer kid4pdx) {
    this.kid4pdx=kid4pdx;
  }

  public Integer getKid4moe() {
    return kid4moe;
  }
  public void setKid4moe(Integer kid4moe) {
    this.kid4moe=kid4moe;
  }

  public Integer getKid4ago() {
    return kid4ago;
  }
  public void setKid4ago(Integer kid4ago) {
    this.kid4ago=kid4ago;
  }

  public Integer getKid5mob() {
    return kid5mob;
  }
  public void setKid5mob(Integer kid5mob) {
    this.kid5mob=kid5mob;
  }

  public Integer getKid5yob() {
    return kid5yob;
  }
  public void setKid5yob(Integer kid5yob) {
    this.kid5yob=kid5yob;
  }

  public Integer getKid5agd() {
    return kid5agd;
  }
  public void setKid5agd(Integer kid5agd) {
    this.kid5agd=kid5agd;
  }

  public Integer getKid5neu() {
    return kid5neu;
  }
  public void setKid5neu(Integer kid5neu) {
    this.kid5neu=kid5neu;
  }

  public Integer getKid5pdx() {
    return kid5pdx;
  }
  public void setKid5pdx(Integer kid5pdx) {
    this.kid5pdx=kid5pdx;
  }

  public Integer getKid5moe() {
    return kid5moe;
  }
  public void setKid5moe(Integer kid5moe) {
    this.kid5moe=kid5moe;
  }

  public Integer getKid5ago() {
    return kid5ago;
  }
  public void setKid5ago(Integer kid5ago) {
    this.kid5ago=kid5ago;
  }

  public Integer getKid6mob() {
    return kid6mob;
  }
  public void setKid6mob(Integer kid6mob) {
    this.kid6mob=kid6mob;
  }

  public Integer getKid6yob() {
    return kid6yob;
  }
  public void setKid6yob(Integer kid6yob) {
    this.kid6yob=kid6yob;
  }

  public Integer getKid6agd() {
    return kid6agd;
  }
  public void setKid6agd(Integer kid6agd) {
    this.kid6agd=kid6agd;
  }

  public Integer getKid6neu() {
    return kid6neu;
  }
  public void setKid6neu(Integer kid6neu) {
    this.kid6neu=kid6neu;
  }

  public Integer getKid6pdx() {
    return kid6pdx;
  }
  public void setKid6pdx(Integer kid6pdx) {
    this.kid6pdx=kid6pdx;
  }

  public Integer getKid6moe() {
    return kid6moe;
  }
  public void setKid6moe(Integer kid6moe) {
    this.kid6moe=kid6moe;
  }

  public Integer getKid6ago() {
    return kid6ago;
  }
  public void setKid6ago(Integer kid6ago) {
    this.kid6ago=kid6ago;
  }

  public Integer getKid7mob() {
    return kid7mob;
  }
  public void setKid7mob(Integer kid7mob) {
    this.kid7mob=kid7mob;
  }

  public Integer getKid7yob() {
    return kid7yob;
  }
  public void setKid7yob(Integer kid7yob) {
    this.kid7yob=kid7yob;
  }

  public Integer getKid7agd() {
    return kid7agd;
  }
  public void setKid7agd(Integer kid7agd) {
    this.kid7agd=kid7agd;
  }

  public Integer getKid7neu() {
    return kid7neu;
  }
  public void setKid7neu(Integer kid7neu) {
    this.kid7neu=kid7neu;
  }

  public Integer getKid7pdx() {
    return kid7pdx;
  }
  public void setKid7pdx(Integer kid7pdx) {
    this.kid7pdx=kid7pdx;
  }

  public Integer getKid7moe() {
    return kid7moe;
  }
  public void setKid7moe(Integer kid7moe) {
    this.kid7moe=kid7moe;
  }

  public Integer getKid7ago() {
    return kid7ago;
  }
  public void setKid7ago(Integer kid7ago) {
    this.kid7ago=kid7ago;
  }

  public Integer getKid8mob() {
    return kid8mob;
  }
  public void setKid8mob(Integer kid8mob) {
    this.kid8mob=kid8mob;
  }

  public Integer getKid8yob() {
    return kid8yob;
  }
  public void setKid8yob(Integer kid8yob) {
    this.kid8yob=kid8yob;
  }

  public Integer getKid8agd() {
    return kid8agd;
  }
  public void setKid8agd(Integer kid8agd) {
    this.kid8agd=kid8agd;
  }

  public Integer getKid8neu() {
    return kid8neu;
  }
  public void setKid8neu(Integer kid8neu) {
    this.kid8neu=kid8neu;
  }

  public Integer getKid8pdx() {
    return kid8pdx;
  }
  public void setKid8pdx(Integer kid8pdx) {
    this.kid8pdx=kid8pdx;
  }

  public Integer getKid8moe() {
    return kid8moe;
  }
  public void setKid8moe(Integer kid8moe) {
    this.kid8moe=kid8moe;
  }

  public Integer getKid8ago() {
    return kid8ago;
  }
  public void setKid8ago(Integer kid8ago) {
    this.kid8ago=kid8ago;
  }

  public Integer getKid9mob() {
    return kid9mob;
  }
  public void setKid9mob(Integer kid9mob) {
    this.kid9mob=kid9mob;
  }

  public Integer getKid9yob() {
    return kid9yob;
  }
  public void setKid9yob(Integer kid9yob) {
    this.kid9yob=kid9yob;
  }

  public Integer getKid9agd() {
    return kid9agd;
  }
  public void setKid9agd(Integer kid9agd) {
    this.kid9agd=kid9agd;
  }

  public Integer getKid9neu() {
    return kid9neu;
  }
  public void setKid9neu(Integer kid9neu) {
    this.kid9neu=kid9neu;
  }

  public Integer getKid9pdx() {
    return kid9pdx;
  }
  public void setKid9pdx(Integer kid9pdx) {
    this.kid9pdx=kid9pdx;
  }

  public Integer getKid9moe() {
    return kid9moe;
  }
  public void setKid9moe(Integer kid9moe) {
    this.kid9moe=kid9moe;
  }

  public Integer getKid9ago() {
    return kid9ago;
  }
  public void setKid9ago(Integer kid9ago) {
    this.kid9ago=kid9ago;
  }

  public Integer getKid10mob() {
    return kid10mob;
  }
  public void setKid10mob(Integer kid10mob) {
    this.kid10mob=kid10mob;
  }

  public Integer getKid10yob() {
    return kid10yob;
  }
  public void setKid10yob(Integer kid10yob) {
    this.kid10yob=kid10yob;
  }

  public Integer getKid10agd() {
    return kid10agd;
  }
  public void setKid10agd(Integer kid10agd) {
    this.kid10agd=kid10agd;
  }

  public Integer getKid10neu() {
    return kid10neu;
  }
  public void setKid10neu(Integer kid10neu) {
    this.kid10neu=kid10neu;
  }

  public Integer getKid10pdx() {
    return kid10pdx;
  }
  public void setKid10pdx(Integer kid10pdx) {
    this.kid10pdx=kid10pdx;
  }

  public Integer getKid10moe() {
    return kid10moe;
  }
  public void setKid10moe(Integer kid10moe) {
    this.kid10moe=kid10moe;
  }

  public Integer getKid10ago() {
    return kid10ago;
  }
  public void setKid10ago(Integer kid10ago) {
    this.kid10ago=kid10ago;
  }

  public Integer getKid11mob() {
    return kid11mob;
  }
  public void setKid11mob(Integer kid11mob) {
    this.kid11mob=kid11mob;
  }

  public Integer getKid11yob() {
    return kid11yob;
  }
  public void setKid11yob(Integer kid11yob) {
    this.kid11yob=kid11yob;
  }

  public Integer getKid11agd() {
    return kid11agd;
  }
  public void setKid11agd(Integer kid11agd) {
    this.kid11agd=kid11agd;
  }

  public Integer getKid11neu() {
    return kid11neu;
  }
  public void setKid11neu(Integer kid11neu) {
    this.kid11neu=kid11neu;
  }

  public Integer getKid11pdx() {
    return kid11pdx;
  }
  public void setKid11pdx(Integer kid11pdx) {
    this.kid11pdx=kid11pdx;
  }

  public Integer getKid11moe() {
    return kid11moe;
  }
  public void setKid11moe(Integer kid11moe) {
    this.kid11moe=kid11moe;
  }

  public Integer getKid11ago() {
    return kid11ago;
  }
  public void setKid11ago(Integer kid11ago) {
    this.kid11ago=kid11ago;
  }

  public Integer getKid12mob() {
    return kid12mob;
  }
  public void setKid12mob(Integer kid12mob) {
    this.kid12mob=kid12mob;
  }

  public Integer getKid12yob() {
    return kid12yob;
  }
  public void setKid12yob(Integer kid12yob) {
    this.kid12yob=kid12yob;
  }

  public Integer getKid12agd() {
    return kid12agd;
  }
  public void setKid12agd(Integer kid12agd) {
    this.kid12agd=kid12agd;
  }

  public Integer getKid12neu() {
    return kid12neu;
  }
  public void setKid12neu(Integer kid12neu) {
    this.kid12neu=kid12neu;
  }

  public Integer getKid12pdx() {
    return kid12pdx;
  }
  public void setKid12pdx(Integer kid12pdx) {
    this.kid12pdx=kid12pdx;
  }

  public Integer getKid12moe() {
    return kid12moe;
  }
  public void setKid12moe(Integer kid12moe) {
    this.kid12moe=kid12moe;
  }

  public Integer getKid12ago() {
    return kid12ago;
  }
  public void setKid12ago(Integer kid12ago) {
    this.kid12ago=kid12ago;
  }

  public Integer getKid13mob() {
    return kid13mob;
  }
  public void setKid13mob(Integer kid13mob) {
    this.kid13mob=kid13mob;
  }

  public Integer getKid13yob() {
    return kid13yob;
  }
  public void setKid13yob(Integer kid13yob) {
    this.kid13yob=kid13yob;
  }

  public Integer getKid13agd() {
    return kid13agd;
  }
  public void setKid13agd(Integer kid13agd) {
    this.kid13agd=kid13agd;
  }

  public Integer getKid13neu() {
    return kid13neu;
  }
  public void setKid13neu(Integer kid13neu) {
    this.kid13neu=kid13neu;
  }

  public Integer getKid13pdx() {
    return kid13pdx;
  }
  public void setKid13pdx(Integer kid13pdx) {
    this.kid13pdx=kid13pdx;
  }

  public Integer getKid13moe() {
    return kid13moe;
  }
  public void setKid13moe(Integer kid13moe) {
    this.kid13moe=kid13moe;
  }

  public Integer getKid13ago() {
    return kid13ago;
  }
  public void setKid13ago(Integer kid13ago) {
    this.kid13ago=kid13ago;
  }

  public Integer getKid14mob() {
    return kid14mob;
  }
  public void setKid14mob(Integer kid14mob) {
    this.kid14mob=kid14mob;
  }

  public Integer getKid14yob() {
    return kid14yob;
  }
  public void setKid14yob(Integer kid14yob) {
    this.kid14yob=kid14yob;
  }

  public Integer getKid14agd() {
    return kid14agd;
  }
  public void setKid14agd(Integer kid14agd) {
    this.kid14agd=kid14agd;
  }

  public Integer getKid14neu() {
    return kid14neu;
  }
  public void setKid14neu(Integer kid14neu) {
    this.kid14neu=kid14neu;
  }

  public Integer getKid14pdx() {
    return kid14pdx;
  }
  public void setKid14pdx(Integer kid14pdx) {
    this.kid14pdx=kid14pdx;
  }

  public Integer getKid14moe() {
    return kid14moe;
  }
  public void setKid14moe(Integer kid14moe) {
    this.kid14moe=kid14moe;
  }

  public Integer getKid14ago() {
    return kid14ago;
  }
  public void setKid14ago(Integer kid14ago) {
    this.kid14ago=kid14ago;
  }

  public Integer getKid15mob() {
    return kid15mob;
  }
  public void setKid15mob(Integer kid15mob) {
    this.kid15mob=kid15mob;
  }

  public Integer getKid15yob() {
    return kid15yob;
  }
  public void setKid15yob(Integer kid15yob) {
    this.kid15yob=kid15yob;
  }

  public Integer getKid15agd() {
    return kid15agd;
  }
  public void setKid15agd(Integer kid15agd) {
    this.kid15agd=kid15agd;
  }

  public Integer getKid15neu() {
    return kid15neu;
  }
  public void setKid15neu(Integer kid15neu) {
    this.kid15neu=kid15neu;
  }

  public Integer getKid15pdx() {
    return kid15pdx;
  }
  public void setKid15pdx(Integer kid15pdx) {
    this.kid15pdx=kid15pdx;
  }

  public Integer getKid15moe() {
    return kid15moe;
  }
  public void setKid15moe(Integer kid15moe) {
    this.kid15moe=kid15moe;
  }

  public Integer getKid15ago() {
    return kid15ago;
  }
  public void setKid15ago(Integer kid15ago) {
    this.kid15ago=kid15ago;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "afffamm",
      "fadmut",
      "fadmutx",
      "fadmuso",
      "fadmusox",
      "fftdmut",
      "fftdmutx",
      "fftdmuso",
      "fftdmusx",
      "fothmut",
      "fothmutx",
      "fothmuso",
      "fothmusx",
      "mommob",
      "momyob",
      "momdage",
      "momneur",
      "momprdx",
      "mommoe",
      "momageo",
      "dadmob",
      "dadyob",
      "daddage",
      "dadneur",
      "dadprdx",
      "dadmoe",
      "dadageo",
      "sibs",
      "sib1mob",
      "sib1yob",
      "sib1agd",
      "sib1neu",
      "sib1pdx",
      "sib1moe",
      "sib1ago",
      "sib2mob",
      "sib2yob",
      "sib2agd",
      "sib2neu",
      "sib2pdx",
      "sib2moe",
      "sib2ago",
      "sib3mob",
      "sib3yob",
      "sib3agd",
      "sib3neu",
      "sib3pdx",
      "sib3moe",
      "sib3ago",
      "sib4mob",
      "sib4yob",
      "sib4agd",
      "sib4neu",
      "sib4pdx",
      "sib4moe",
      "sib4ago",
      "sib5mob",
      "sib5yob",
      "sib5agd",
      "sib5neu",
      "sib5pdx",
      "sib5moe",
      "sib5ago",
      "sib6mob",
      "sib6yob",
      "sib6agd",
      "sib6neu",
      "sib6pdx",
      "sib6moe",
      "sib6ago",
      "sib7mob",
      "sib7yob",
      "sib7agd",
      "sib7neu",
      "sib7pdx",
      "sib7moe",
      "sib7ago",
      "sib8mob",
      "sib8yob",
      "sib8agd",
      "sib8neu",
      "sib8pdx",
      "sib8moe",
      "sib8ago",
      "sib9mob",
      "sib9yob",
      "sib9agd",
      "sib9neu",
      "sib9pdx",
      "sib9moe",
      "sib9ago",
      "sib10mob",
      "sib10yob",
      "sib10agd",
      "sib10neu",
      "sib10pdx",
      "sib10moe",
      "sib10ago",
      "sib11mob",
      "sib11yob",
      "sib11agd",
      "sib11neu",
      "sib11pdx",
      "sib11moe",
      "sib11ago",
      "sib12mob",
      "sib12yob",
      "sib12agd",
      "sib12neu",
      "sib12pdx",
      "sib12moe",
      "sib12ago",
      "sib13mob",
      "sib13yob",
      "sib13agd",
      "sib13neu",
      "sib13pdx",
      "sib13moe",
      "sib13ago",
      "sib14mob",
      "sib14yob",
      "sib14agd",
      "sib14neu",
      "sib14pdx",
      "sib14moe",
      "sib14ago",
      "sib15mob",
      "sib15yob",
      "sib15agd",
      "sib15neu",
      "sib15pdx",
      "sib15moe",
      "sib15ago",
      "sib16mob",
      "sib16yob",
      "sib16agd",
      "sib16neu",
      "sib16pdx",
      "sib16moe",
      "sib16ago",
      "sib17mob",
      "sib17yob",
      "sib17agd",
      "sib17neu",
      "sib17pdx",
      "sib17moe",
      "sib17ago",
      "sib18mob",
      "sib18yob",
      "sib18agd",
      "sib18neu",
      "sib18pdx",
      "sib18moe",
      "sib18ago",
      "sib19mob",
      "sib19yob",
      "sib19agd",
      "sib19neu",
      "sib19pdx",
      "sib19moe",
      "sib19ago",
      "sib20mob",
      "sib20yob",
      "sib20agd",
      "sib20neu",
      "sib20pdx",
      "sib20moe",
      "sib20ago",
      "kids",
      "kid1mob",
      "kid1yob",
      "kid1agd",
      "kid1neu",
      "kid1pdx",
      "kid1moe",
      "kid1ago",
      "kid2mob",
      "kid2yob",
      "kid2agd",
      "kid2neu",
      "kid2pdx",
      "kid2moe",
      "kid2ago",
      "kid3mob",
      "kid3yob",
      "kid3agd",
      "kid3neu",
      "kid3pdx",
      "kid3moe",
      "kid3ago",
      "kid4mob",
      "kid4yob",
      "kid4agd",
      "kid4neu",
      "kid4pdx",
      "kid4moe",
      "kid4ago",
      "kid5mob",
      "kid5yob",
      "kid5agd",
      "kid5neu",
      "kid5pdx",
      "kid5moe",
      "kid5ago",
      "kid6mob",
      "kid6yob",
      "kid6agd",
      "kid6neu",
      "kid6pdx",
      "kid6moe",
      "kid6ago",
      "kid7mob",
      "kid7yob",
      "kid7agd",
      "kid7neu",
      "kid7pdx",
      "kid7moe",
      "kid7ago",
      "kid8mob",
      "kid8yob",
      "kid8agd",
      "kid8neu",
      "kid8pdx",
      "kid8moe",
      "kid8ago",
      "kid9mob",
      "kid9yob",
      "kid9agd",
      "kid9neu",
      "kid9pdx",
      "kid9moe",
      "kid9ago",
      "kid10mob",
      "kid10yob",
      "kid10agd",
      "kid10neu",
      "kid10pdx",
      "kid10moe",
      "kid10ago",
      "kid11mob",
      "kid11yob",
      "kid11agd",
      "kid11neu",
      "kid11pdx",
      "kid11moe",
      "kid11ago",
      "kid12mob",
      "kid12yob",
      "kid12agd",
      "kid12neu",
      "kid12pdx",
      "kid12moe",
      "kid12ago",
      "kid13mob",
      "kid13yob",
      "kid13agd",
      "kid13neu",
      "kid13pdx",
      "kid13moe",
      "kid13ago",
      "kid14mob",
      "kid14yob",
      "kid14agd",
      "kid14neu",
      "kid14pdx",
      "kid14moe",
      "kid14ago",
      "kid15mob",
      "kid15yob",
      "kid15agd",
      "kid15neu",
      "kid15pdx",
      "kid15moe",
      "kid15ago"
    };
    return required;
  }
}
