package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

/**
 * The UDS Family History form changed significantly from UDS 2.0 to UDS 3.0, therefore a new model class
 * has been created specific to UDS 3.0.
 */

import org.springframework.util.StringUtils;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFamilyHistory3 extends UdsInstrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UdsFamilyHistory3.class);
  public static final String UDS_FAMILY_HISTORY_FORMID = "A3";
 
  public UdsFamilyHistory3() {}
  
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UdsFamilyHistory3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
	this.setFormId(UDS_FAMILY_HISTORY_FORMID);		
  }
  
  private Short afffamm;
  private Short nwinfmut;
  private Short fadmut;
  private String fadmutx;
  private Short fadmuso;
  private String fadmusox;
  private Short fftdmut;
  private String fftdmutx;
  private Short fftdmuso;
  private String fftdmusx;
  private Short fothmut;
  private String fothmutx;
  private Short fothmuso;
  private String fothmusx;
  private Short nwinfpar;
  private Short mommob;
  private Short momyob;
  private Short momdage;
  private Short momneur;
  private Short momprdx;
  private Short mommoe;
  private Short momageo;
  private Short dadmob;
  private Short dadyob;
  private Short daddage;
  private Short dadneur;
  private Short dadprdx;
  private Short dadmoe;
  private Short dadageo;
  private Short sibs;
  private Short nwinfsib;
  private Short sib1mob;
  private Short sib1yob;
  private Short sib1agd;
  private Short sib1neu;
  private Short sib1pdx;
  private Short sib1moe;
  private Short sib1ago;
  private Short sib2mob;
  private Short sib2yob;
  private Short sib2agd;
  private Short sib2neu;
  private Short sib2pdx;
  private Short sib2moe;
  private Short sib2ago;
  private Short sib3mob;
  private Short sib3yob;
  private Short sib3agd;
  private Short sib3neu;
  private Short sib3pdx;
  private Short sib3moe;
  private Short sib3ago;
  private Short sib4mob;
  private Short sib4yob;
  private Short sib4agd;
  private Short sib4neu;
  private Short sib4pdx;
  private Short sib4moe;
  private Short sib4ago;
  private Short sib5mob;
  private Short sib5yob;
  private Short sib5agd;
  private Short sib5neu;
  private Short sib5pdx;
  private Short sib5moe;
  private Short sib5ago;
  private Short sib6mob;
  private Short sib6yob;
  private Short sib6agd;
  private Short sib6neu;
  private Short sib6pdx;
  private Short sib6moe;
  private Short sib6ago;
  private Short sib7mob;
  private Short sib7yob;
  private Short sib7agd;
  private Short sib7neu;
  private Short sib7pdx;
  private Short sib7moe;
  private Short sib7ago;
  private Short sib8mob;
  private Short sib8yob;
  private Short sib8agd;
  private Short sib8neu;
  private Short sib8pdx;
  private Short sib8moe;
  private Short sib8ago;
  private Short sib9mob;
  private Short sib9yob;
  private Short sib9agd;
  private Short sib9neu;
  private Short sib9pdx;
  private Short sib9moe;
  private Short sib9ago;
  private Short sib10mob;
  private Short sib10yob;
  private Short sib10agd;
  private Short sib10neu;
  private Short sib10pdx;
  private Short sib10moe;
  private Short sib10ago;
  private Short sib11mob;
  private Short sib11yob;
  private Short sib11agd;
  private Short sib11neu;
  private Short sib11pdx;
  private Short sib11moe;
  private Short sib11ago;
  private Short sib12mob;
  private Short sib12yob;
  private Short sib12agd;
  private Short sib12neu;
  private Short sib12pdx;
  private Short sib12moe;
  private Short sib12ago;
  private Short sib13mob;
  private Short sib13yob;
  private Short sib13agd;
  private Short sib13neu;
  private Short sib13pdx;
  private Short sib13moe;
  private Short sib13ago;
  private Short sib14mob;
  private Short sib14yob;
  private Short sib14agd;
  private Short sib14neu;
  private Short sib14pdx;
  private Short sib14moe;
  private Short sib14ago;
  private Short sib15mob;
  private Short sib15yob;
  private Short sib15agd;
  private Short sib15neu;
  private Short sib15pdx;
  private Short sib15moe;
  private Short sib15ago;
  private Short sib16mob;
  private Short sib16yob;
  private Short sib16agd;
  private Short sib16neu;
  private Short sib16pdx;
  private Short sib16moe;
  private Short sib16ago;
  private Short sib17mob;
  private Short sib17yob;
  private Short sib17agd;
  private Short sib17neu;
  private Short sib17pdx;
  private Short sib17moe;
  private Short sib17ago;
  private Short sib18mob;
  private Short sib18yob;
  private Short sib18agd;
  private Short sib18neu;
  private Short sib18pdx;
  private Short sib18moe;
  private Short sib18ago;
  private Short sib19mob;
  private Short sib19yob;
  private Short sib19agd;
  private Short sib19neu;
  private Short sib19pdx;
  private Short sib19moe;
  private Short sib19ago;
  private Short sib20mob;
  private Short sib20yob;
  private Short sib20agd;
  private Short sib20neu;
  private Short sib20pdx;
  private Short sib20moe;
  private Short sib20ago;
  private Short kids;
  private Short nwinfkid;
  private Short kid1mob;
  private Short kid1yob;
  private Short kid1agd;
  private Short kid1neu;
  private Short kid1pdx;
  private Short kid1moe;
  private Short kid1ago;
  private Short kid2mob;
  private Short kid2yob;
  private Short kid2agd;
  private Short kid2neu;
  private Short kid2pdx;
  private Short kid2moe;
  private Short kid2ago;
  private Short kid3mob;
  private Short kid3yob;
  private Short kid3agd;
  private Short kid3neu;
  private Short kid3pdx;
  private Short kid3moe;
  private Short kid3ago;
  private Short kid4mob;
  private Short kid4yob;
  private Short kid4agd;
  private Short kid4neu;
  private Short kid4pdx;
  private Short kid4moe;
  private Short kid4ago;
  private Short kid5mob;
  private Short kid5yob;
  private Short kid5agd;
  private Short kid5neu;
  private Short kid5pdx;
  private Short kid5moe;
  private Short kid5ago;
  private Short kid6mob;
  private Short kid6yob;
  private Short kid6agd;
  private Short kid6neu;
  private Short kid6pdx;
  private Short kid6moe;
  private Short kid6ago;
  private Short kid7mob;
  private Short kid7yob;
  private Short kid7agd;
  private Short kid7neu;
  private Short kid7pdx;
  private Short kid7moe;
  private Short kid7ago;
  private Short kid8mob;
  private Short kid8yob;
  private Short kid8agd;
  private Short kid8neu;
  private Short kid8pdx;
  private Short kid8moe;
  private Short kid8ago;
  private Short kid9mob;
  private Short kid9yob;
  private Short kid9agd;
  private Short kid9neu;
  private Short kid9pdx;
  private Short kid9moe;
  private Short kid9ago;
  private Short kid10mob;
  private Short kid10yob;
  private Short kid10agd;
  private Short kid10neu;
  private Short kid10pdx;
  private Short kid10moe;
  private Short kid10ago;
  private Short kid11mob;
  private Short kid11yob;
  private Short kid11agd;
  private Short kid11neu;
  private Short kid11pdx;
  private Short kid11moe;
  private Short kid11ago;
  private Short kid12mob;
  private Short kid12yob;
  private Short kid12agd;
  private Short kid12neu;
  private Short kid12pdx;
  private Short kid12moe;
  private Short kid12ago;
  private Short kid13mob;
  private Short kid13yob;
  private Short kid13agd;
  private Short kid13neu;
  private Short kid13pdx;
  private Short kid13moe;
  private Short kid13ago;
  private Short kid14mob;
  private Short kid14yob;
  private Short kid14agd;
  private Short kid14neu;
  private Short kid14pdx;
  private Short kid14moe;
  private Short kid14ago;
  private Short kid15mob;
  private Short kid15yob;
  private Short kid15agd;
  private Short kid15neu;
  private Short kid15pdx;
  private Short kid15moe;
  private Short kid15ago;



  public Short getAfffamm() {
    return afffamm;
  }
  public void setAfffamm(Short afffamm) {
    this.afffamm=afffamm;
  }

  public Short getFadmut() {
    return fadmut;
  }
  public void setFadmut(Short fadmut) {
    this.fadmut=fadmut;
  }

  public String getFadmutx() {
    return fadmutx;
  }
  public void setFadmutx(String fadmutx) {
    this.fadmutx=fadmutx;
  }

  public Short getFadmuso() {
    return fadmuso;
  }
  public void setFadmuso(Short fadmuso) {
    this.fadmuso=fadmuso;
  }

  public String getFadmusox() {
    return fadmusox;
  }
  public void setFadmusox(String fadmusox) {
    this.fadmusox=fadmusox;
  }

  public Short getFftdmut() {
    return fftdmut;
  }
  public void setFftdmut(Short fftdmut) {
    this.fftdmut=fftdmut;
  }

  public String getFftdmutx() {
    return fftdmutx;
  }
  public void setFftdmutx(String fftdmutx) {
    this.fftdmutx=fftdmutx;
  }

  public Short getFftdmuso() {
    return fftdmuso;
  }
  public void setFftdmuso(Short fftdmuso) {
    this.fftdmuso=fftdmuso;
  }

  public String getFftdmusx() {
    return fftdmusx;
  }
  public void setFftdmusx(String fftdmusx) {
    this.fftdmusx=fftdmusx;
  }

  public Short getFothmut() {
    return fothmut;
  }
  public void setFothmut(Short fothmut) {
    this.fothmut=fothmut;
  }

  public String getFothmutx() {
    return fothmutx;
  }
  public void setFothmutx(String fothmutx) {
    this.fothmutx=fothmutx;
  }

  public Short getFothmuso() {
    return fothmuso;
  }
  public void setFothmuso(Short fothmuso) {
    this.fothmuso=fothmuso;
  }

  public String getFothmusx() {
    return fothmusx;
  }
  public void setFothmusx(String fothmusx) {
    this.fothmusx=fothmusx;
  }

  public Short getMommob() {
    return mommob;
  }
  public void setMommob(Short mommob) {
    this.mommob=mommob;
  }

  public Short getMomyob() {
    return momyob;
  }
  public void setMomyob(Short momyob) {
    this.momyob=momyob;
  }

  public Short getMomdage() {
    return momdage;
  }
  public void setMomdage(Short momdage) {
    this.momdage=momdage;
  }

  public Short getMomneur() {
    return momneur;
  }
  public void setMomneur(Short momneur) {
    this.momneur=momneur;
  }

  public Short getMomprdx() {
    return momprdx;
  }
  public void setMomprdx(Short momprdx) {
    this.momprdx=momprdx;
  }

  public Short getMommoe() {
    return mommoe;
  }
  public void setMommoe(Short mommoe) {
    this.mommoe=mommoe;
  }

  public Short getMomageo() {
    return momageo;
  }
  public void setMomageo(Short momageo) {
    this.momageo=momageo;
  }

  public Short getDadmob() {
    return dadmob;
  }
  public void setDadmob(Short dadmob) {
    this.dadmob=dadmob;
  }

  public Short getDadyob() {
    return dadyob;
  }
  public void setDadyob(Short dadyob) {
    this.dadyob=dadyob;
  }

  public Short getDaddage() {
    return daddage;
  }
  public void setDaddage(Short daddage) {
    this.daddage=daddage;
  }

  public Short getDadneur() {
    return dadneur;
  }
  public void setDadneur(Short dadneur) {
    this.dadneur=dadneur;
  }

  public Short getDadprdx() {
    return dadprdx;
  }
  public void setDadprdx(Short dadprdx) {
    this.dadprdx=dadprdx;
  }

  public Short getDadmoe() {
    return dadmoe;
  }
  public void setDadmoe(Short dadmoe) {
    this.dadmoe=dadmoe;
  }

  public Short getDadageo() {
    return dadageo;
  }
  public void setDadageo(Short dadageo) {
    this.dadageo=dadageo;
  }

  public Short getSibs() {
    return sibs;
  }
  public void setSibs(Short sibs) {
    this.sibs=sibs;
  }

  public Short getSib1mob() {
    return sib1mob;
  }
  public void setSib1mob(Short sib1mob) {
    this.sib1mob=sib1mob;
  }

  public Short getSib1yob() {
    return sib1yob;
  }
  public void setSib1yob(Short sib1yob) {
    this.sib1yob=sib1yob;
  }

  public Short getSib1agd() {
    return sib1agd;
  }
  public void setSib1agd(Short sib1agd) {
    this.sib1agd=sib1agd;
  }

  public Short getSib1neu() {
    return sib1neu;
  }
  public void setSib1neu(Short sib1neu) {
    this.sib1neu=sib1neu;
  }

  public Short getSib1pdx() {
    return sib1pdx;
  }
  public void setSib1pdx(Short sib1pdx) {
    this.sib1pdx=sib1pdx;
  }

  public Short getSib1moe() {
    return sib1moe;
  }
  public void setSib1moe(Short sib1moe) {
    this.sib1moe=sib1moe;
  }

  public Short getSib1ago() {
    return sib1ago;
  }
  public void setSib1ago(Short sib1ago) {
    this.sib1ago=sib1ago;
  }

  public Short getSib2mob() {
    return sib2mob;
  }
  public void setSib2mob(Short sib2mob) {
    this.sib2mob=sib2mob;
  }

  public Short getSib2yob() {
    return sib2yob;
  }
  public void setSib2yob(Short sib2yob) {
    this.sib2yob=sib2yob;
  }

  public Short getSib2agd() {
    return sib2agd;
  }
  public void setSib2agd(Short sib2agd) {
    this.sib2agd=sib2agd;
  }

  public Short getSib2neu() {
    return sib2neu;
  }
  public void setSib2neu(Short sib2neu) {
    this.sib2neu=sib2neu;
  }

  public Short getSib2pdx() {
    return sib2pdx;
  }
  public void setSib2pdx(Short sib2pdx) {
    this.sib2pdx=sib2pdx;
  }

  public Short getSib2moe() {
    return sib2moe;
  }
  public void setSib2moe(Short sib2moe) {
    this.sib2moe=sib2moe;
  }

  public Short getSib2ago() {
    return sib2ago;
  }
  public void setSib2ago(Short sib2ago) {
    this.sib2ago=sib2ago;
  }

  public Short getSib3mob() {
    return sib3mob;
  }
  public void setSib3mob(Short sib3mob) {
    this.sib3mob=sib3mob;
  }

  public Short getSib3yob() {
    return sib3yob;
  }
  public void setSib3yob(Short sib3yob) {
    this.sib3yob=sib3yob;
  }

  public Short getSib3agd() {
    return sib3agd;
  }
  public void setSib3agd(Short sib3agd) {
    this.sib3agd=sib3agd;
  }

  public Short getSib3neu() {
    return sib3neu;
  }
  public void setSib3neu(Short sib3neu) {
    this.sib3neu=sib3neu;
  }

  public Short getSib3pdx() {
    return sib3pdx;
  }
  public void setSib3pdx(Short sib3pdx) {
    this.sib3pdx=sib3pdx;
  }

  public Short getSib3moe() {
    return sib3moe;
  }
  public void setSib3moe(Short sib3moe) {
    this.sib3moe=sib3moe;
  }

  public Short getSib3ago() {
    return sib3ago;
  }
  public void setSib3ago(Short sib3ago) {
    this.sib3ago=sib3ago;
  }

  public Short getSib4mob() {
    return sib4mob;
  }
  public void setSib4mob(Short sib4mob) {
    this.sib4mob=sib4mob;
  }

  public Short getSib4yob() {
    return sib4yob;
  }
  public void setSib4yob(Short sib4yob) {
    this.sib4yob=sib4yob;
  }

  public Short getSib4agd() {
    return sib4agd;
  }
  public void setSib4agd(Short sib4agd) {
    this.sib4agd=sib4agd;
  }

  public Short getSib4neu() {
    return sib4neu;
  }
  public void setSib4neu(Short sib4neu) {
    this.sib4neu=sib4neu;
  }

  public Short getSib4pdx() {
    return sib4pdx;
  }
  public void setSib4pdx(Short sib4pdx) {
    this.sib4pdx=sib4pdx;
  }

  public Short getSib4moe() {
    return sib4moe;
  }
  public void setSib4moe(Short sib4moe) {
    this.sib4moe=sib4moe;
  }

  public Short getSib4ago() {
    return sib4ago;
  }
  public void setSib4ago(Short sib4ago) {
    this.sib4ago=sib4ago;
  }

  public Short getSib5mob() {
    return sib5mob;
  }
  public void setSib5mob(Short sib5mob) {
    this.sib5mob=sib5mob;
  }

  public Short getSib5yob() {
    return sib5yob;
  }
  public void setSib5yob(Short sib5yob) {
    this.sib5yob=sib5yob;
  }

  public Short getSib5agd() {
    return sib5agd;
  }
  public void setSib5agd(Short sib5agd) {
    this.sib5agd=sib5agd;
  }

  public Short getSib5neu() {
    return sib5neu;
  }
  public void setSib5neu(Short sib5neu) {
    this.sib5neu=sib5neu;
  }

  public Short getSib5pdx() {
    return sib5pdx;
  }
  public void setSib5pdx(Short sib5pdx) {
    this.sib5pdx=sib5pdx;
  }

  public Short getSib5moe() {
    return sib5moe;
  }
  public void setSib5moe(Short sib5moe) {
    this.sib5moe=sib5moe;
  }

  public Short getSib5ago() {
    return sib5ago;
  }
  public void setSib5ago(Short sib5ago) {
    this.sib5ago=sib5ago;
  }

  public Short getSib6mob() {
    return sib6mob;
  }
  public void setSib6mob(Short sib6mob) {
    this.sib6mob=sib6mob;
  }

  public Short getSib6yob() {
    return sib6yob;
  }
  public void setSib6yob(Short sib6yob) {
    this.sib6yob=sib6yob;
  }

  public Short getSib6agd() {
    return sib6agd;
  }
  public void setSib6agd(Short sib6agd) {
    this.sib6agd=sib6agd;
  }

  public Short getSib6neu() {
    return sib6neu;
  }
  public void setSib6neu(Short sib6neu) {
    this.sib6neu=sib6neu;
  }

  public Short getSib6pdx() {
    return sib6pdx;
  }
  public void setSib6pdx(Short sib6pdx) {
    this.sib6pdx=sib6pdx;
  }

  public Short getSib6moe() {
    return sib6moe;
  }
  public void setSib6moe(Short sib6moe) {
    this.sib6moe=sib6moe;
  }

  public Short getSib6ago() {
    return sib6ago;
  }
  public void setSib6ago(Short sib6ago) {
    this.sib6ago=sib6ago;
  }

  public Short getSib7mob() {
    return sib7mob;
  }
  public void setSib7mob(Short sib7mob) {
    this.sib7mob=sib7mob;
  }

  public Short getSib7yob() {
    return sib7yob;
  }
  public void setSib7yob(Short sib7yob) {
    this.sib7yob=sib7yob;
  }

  public Short getSib7agd() {
    return sib7agd;
  }
  public void setSib7agd(Short sib7agd) {
    this.sib7agd=sib7agd;
  }

  public Short getSib7neu() {
    return sib7neu;
  }
  public void setSib7neu(Short sib7neu) {
    this.sib7neu=sib7neu;
  }

  public Short getSib7pdx() {
    return sib7pdx;
  }
  public void setSib7pdx(Short sib7pdx) {
    this.sib7pdx=sib7pdx;
  }

  public Short getSib7moe() {
    return sib7moe;
  }
  public void setSib7moe(Short sib7moe) {
    this.sib7moe=sib7moe;
  }

  public Short getSib7ago() {
    return sib7ago;
  }
  public void setSib7ago(Short sib7ago) {
    this.sib7ago=sib7ago;
  }

  public Short getSib8mob() {
    return sib8mob;
  }
  public void setSib8mob(Short sib8mob) {
    this.sib8mob=sib8mob;
  }

  public Short getSib8yob() {
    return sib8yob;
  }
  public void setSib8yob(Short sib8yob) {
    this.sib8yob=sib8yob;
  }

  public Short getSib8agd() {
    return sib8agd;
  }
  public void setSib8agd(Short sib8agd) {
    this.sib8agd=sib8agd;
  }

  public Short getSib8neu() {
    return sib8neu;
  }
  public void setSib8neu(Short sib8neu) {
    this.sib8neu=sib8neu;
  }

  public Short getSib8pdx() {
    return sib8pdx;
  }
  public void setSib8pdx(Short sib8pdx) {
    this.sib8pdx=sib8pdx;
  }

  public Short getSib8moe() {
    return sib8moe;
  }
  public void setSib8moe(Short sib8moe) {
    this.sib8moe=sib8moe;
  }

  public Short getSib8ago() {
    return sib8ago;
  }
  public void setSib8ago(Short sib8ago) {
    this.sib8ago=sib8ago;
  }

  public Short getSib9mob() {
    return sib9mob;
  }
  public void setSib9mob(Short sib9mob) {
    this.sib9mob=sib9mob;
  }

  public Short getSib9yob() {
    return sib9yob;
  }
  public void setSib9yob(Short sib9yob) {
    this.sib9yob=sib9yob;
  }

  public Short getSib9agd() {
    return sib9agd;
  }
  public void setSib9agd(Short sib9agd) {
    this.sib9agd=sib9agd;
  }

  public Short getSib9neu() {
    return sib9neu;
  }
  public void setSib9neu(Short sib9neu) {
    this.sib9neu=sib9neu;
  }

  public Short getSib9pdx() {
    return sib9pdx;
  }
  public void setSib9pdx(Short sib9pdx) {
    this.sib9pdx=sib9pdx;
  }

  public Short getSib9moe() {
    return sib9moe;
  }
  public void setSib9moe(Short sib9moe) {
    this.sib9moe=sib9moe;
  }

  public Short getSib9ago() {
    return sib9ago;
  }
  public void setSib9ago(Short sib9ago) {
    this.sib9ago=sib9ago;
  }

  public Short getSib10mob() {
    return sib10mob;
  }
  public void setSib10mob(Short sib10mob) {
    this.sib10mob=sib10mob;
  }

  public Short getSib10yob() {
    return sib10yob;
  }
  public void setSib10yob(Short sib10yob) {
    this.sib10yob=sib10yob;
  }

  public Short getSib10agd() {
    return sib10agd;
  }
  public void setSib10agd(Short sib10agd) {
    this.sib10agd=sib10agd;
  }

  public Short getSib10neu() {
    return sib10neu;
  }
  public void setSib10neu(Short sib10neu) {
    this.sib10neu=sib10neu;
  }

  public Short getSib10pdx() {
    return sib10pdx;
  }
  public void setSib10pdx(Short sib10pdx) {
    this.sib10pdx=sib10pdx;
  }

  public Short getSib10moe() {
    return sib10moe;
  }
  public void setSib10moe(Short sib10moe) {
    this.sib10moe=sib10moe;
  }

  public Short getSib10ago() {
    return sib10ago;
  }
  public void setSib10ago(Short sib10ago) {
    this.sib10ago=sib10ago;
  }

  public Short getSib11mob() {
    return sib11mob;
  }
  public void setSib11mob(Short sib11mob) {
    this.sib11mob=sib11mob;
  }

  public Short getSib11yob() {
    return sib11yob;
  }
  public void setSib11yob(Short sib11yob) {
    this.sib11yob=sib11yob;
  }

  public Short getSib11agd() {
    return sib11agd;
  }
  public void setSib11agd(Short sib11agd) {
    this.sib11agd=sib11agd;
  }

  public Short getSib11neu() {
    return sib11neu;
  }
  public void setSib11neu(Short sib11neu) {
    this.sib11neu=sib11neu;
  }

  public Short getSib11pdx() {
    return sib11pdx;
  }
  public void setSib11pdx(Short sib11pdx) {
    this.sib11pdx=sib11pdx;
  }

  public Short getSib11moe() {
    return sib11moe;
  }
  public void setSib11moe(Short sib11moe) {
    this.sib11moe=sib11moe;
  }

  public Short getSib11ago() {
    return sib11ago;
  }
  public void setSib11ago(Short sib11ago) {
    this.sib11ago=sib11ago;
  }

  public Short getSib12mob() {
    return sib12mob;
  }
  public void setSib12mob(Short sib12mob) {
    this.sib12mob=sib12mob;
  }

  public Short getSib12yob() {
    return sib12yob;
  }
  public void setSib12yob(Short sib12yob) {
    this.sib12yob=sib12yob;
  }

  public Short getSib12agd() {
    return sib12agd;
  }
  public void setSib12agd(Short sib12agd) {
    this.sib12agd=sib12agd;
  }

  public Short getSib12neu() {
    return sib12neu;
  }
  public void setSib12neu(Short sib12neu) {
    this.sib12neu=sib12neu;
  }

  public Short getSib12pdx() {
    return sib12pdx;
  }
  public void setSib12pdx(Short sib12pdx) {
    this.sib12pdx=sib12pdx;
  }

  public Short getSib12moe() {
    return sib12moe;
  }
  public void setSib12moe(Short sib12moe) {
    this.sib12moe=sib12moe;
  }

  public Short getSib12ago() {
    return sib12ago;
  }
  public void setSib12ago(Short sib12ago) {
    this.sib12ago=sib12ago;
  }

  public Short getSib13mob() {
    return sib13mob;
  }
  public void setSib13mob(Short sib13mob) {
    this.sib13mob=sib13mob;
  }

  public Short getSib13yob() {
    return sib13yob;
  }
  public void setSib13yob(Short sib13yob) {
    this.sib13yob=sib13yob;
  }

  public Short getSib13agd() {
    return sib13agd;
  }
  public void setSib13agd(Short sib13agd) {
    this.sib13agd=sib13agd;
  }

  public Short getSib13neu() {
    return sib13neu;
  }
  public void setSib13neu(Short sib13neu) {
    this.sib13neu=sib13neu;
  }

  public Short getSib13pdx() {
    return sib13pdx;
  }
  public void setSib13pdx(Short sib13pdx) {
    this.sib13pdx=sib13pdx;
  }

  public Short getSib13moe() {
    return sib13moe;
  }
  public void setSib13moe(Short sib13moe) {
    this.sib13moe=sib13moe;
  }

  public Short getSib13ago() {
    return sib13ago;
  }
  public void setSib13ago(Short sib13ago) {
    this.sib13ago=sib13ago;
  }

  public Short getSib14mob() {
    return sib14mob;
  }
  public void setSib14mob(Short sib14mob) {
    this.sib14mob=sib14mob;
  }

  public Short getSib14yob() {
    return sib14yob;
  }
  public void setSib14yob(Short sib14yob) {
    this.sib14yob=sib14yob;
  }

  public Short getSib14agd() {
    return sib14agd;
  }
  public void setSib14agd(Short sib14agd) {
    this.sib14agd=sib14agd;
  }

  public Short getSib14neu() {
    return sib14neu;
  }
  public void setSib14neu(Short sib14neu) {
    this.sib14neu=sib14neu;
  }

  public Short getSib14pdx() {
    return sib14pdx;
  }
  public void setSib14pdx(Short sib14pdx) {
    this.sib14pdx=sib14pdx;
  }

  public Short getSib14moe() {
    return sib14moe;
  }
  public void setSib14moe(Short sib14moe) {
    this.sib14moe=sib14moe;
  }

  public Short getSib14ago() {
    return sib14ago;
  }
  public void setSib14ago(Short sib14ago) {
    this.sib14ago=sib14ago;
  }

  public Short getSib15mob() {
    return sib15mob;
  }
  public void setSib15mob(Short sib15mob) {
    this.sib15mob=sib15mob;
  }

  public Short getSib15yob() {
    return sib15yob;
  }
  public void setSib15yob(Short sib15yob) {
    this.sib15yob=sib15yob;
  }

  public Short getSib15agd() {
    return sib15agd;
  }
  public void setSib15agd(Short sib15agd) {
    this.sib15agd=sib15agd;
  }

  public Short getSib15neu() {
    return sib15neu;
  }
  public void setSib15neu(Short sib15neu) {
    this.sib15neu=sib15neu;
  }

  public Short getSib15pdx() {
    return sib15pdx;
  }
  public void setSib15pdx(Short sib15pdx) {
    this.sib15pdx=sib15pdx;
  }

  public Short getSib15moe() {
    return sib15moe;
  }
  public void setSib15moe(Short sib15moe) {
    this.sib15moe=sib15moe;
  }

  public Short getSib15ago() {
    return sib15ago;
  }
  public void setSib15ago(Short sib15ago) {
    this.sib15ago=sib15ago;
  }

  public Short getSib16mob() {
    return sib16mob;
  }
  public void setSib16mob(Short sib16mob) {
    this.sib16mob=sib16mob;
  }

  public Short getSib16yob() {
    return sib16yob;
  }
  public void setSib16yob(Short sib16yob) {
    this.sib16yob=sib16yob;
  }

  public Short getSib16agd() {
    return sib16agd;
  }
  public void setSib16agd(Short sib16agd) {
    this.sib16agd=sib16agd;
  }

  public Short getSib16neu() {
    return sib16neu;
  }
  public void setSib16neu(Short sib16neu) {
    this.sib16neu=sib16neu;
  }

  public Short getSib16pdx() {
    return sib16pdx;
  }
  public void setSib16pdx(Short sib16pdx) {
    this.sib16pdx=sib16pdx;
  }

  public Short getSib16moe() {
    return sib16moe;
  }
  public void setSib16moe(Short sib16moe) {
    this.sib16moe=sib16moe;
  }

  public Short getSib16ago() {
    return sib16ago;
  }
  public void setSib16ago(Short sib16ago) {
    this.sib16ago=sib16ago;
  }

  public Short getSib17mob() {
    return sib17mob;
  }
  public void setSib17mob(Short sib17mob) {
    this.sib17mob=sib17mob;
  }

  public Short getSib17yob() {
    return sib17yob;
  }
  public void setSib17yob(Short sib17yob) {
    this.sib17yob=sib17yob;
  }

  public Short getSib17agd() {
    return sib17agd;
  }
  public void setSib17agd(Short sib17agd) {
    this.sib17agd=sib17agd;
  }

  public Short getSib17neu() {
    return sib17neu;
  }
  public void setSib17neu(Short sib17neu) {
    this.sib17neu=sib17neu;
  }

  public Short getSib17pdx() {
    return sib17pdx;
  }
  public void setSib17pdx(Short sib17pdx) {
    this.sib17pdx=sib17pdx;
  }

  public Short getSib17moe() {
    return sib17moe;
  }
  public void setSib17moe(Short sib17moe) {
    this.sib17moe=sib17moe;
  }

  public Short getSib17ago() {
    return sib17ago;
  }
  public void setSib17ago(Short sib17ago) {
    this.sib17ago=sib17ago;
  }

  public Short getSib18mob() {
    return sib18mob;
  }
  public void setSib18mob(Short sib18mob) {
    this.sib18mob=sib18mob;
  }

  public Short getSib18yob() {
    return sib18yob;
  }
  public void setSib18yob(Short sib18yob) {
    this.sib18yob=sib18yob;
  }

  public Short getSib18agd() {
    return sib18agd;
  }
  public void setSib18agd(Short sib18agd) {
    this.sib18agd=sib18agd;
  }

  public Short getSib18neu() {
    return sib18neu;
  }
  public void setSib18neu(Short sib18neu) {
    this.sib18neu=sib18neu;
  }

  public Short getSib18pdx() {
    return sib18pdx;
  }
  public void setSib18pdx(Short sib18pdx) {
    this.sib18pdx=sib18pdx;
  }

  public Short getSib18moe() {
    return sib18moe;
  }
  public void setSib18moe(Short sib18moe) {
    this.sib18moe=sib18moe;
  }

  public Short getSib18ago() {
    return sib18ago;
  }
  public void setSib18ago(Short sib18ago) {
    this.sib18ago=sib18ago;
  }

  public Short getSib19mob() {
    return sib19mob;
  }
  public void setSib19mob(Short sib19mob) {
    this.sib19mob=sib19mob;
  }

  public Short getSib19yob() {
    return sib19yob;
  }
  public void setSib19yob(Short sib19yob) {
    this.sib19yob=sib19yob;
  }

  public Short getSib19agd() {
    return sib19agd;
  }
  public void setSib19agd(Short sib19agd) {
    this.sib19agd=sib19agd;
  }

  public Short getSib19neu() {
    return sib19neu;
  }
  public void setSib19neu(Short sib19neu) {
    this.sib19neu=sib19neu;
  }

  public Short getSib19pdx() {
    return sib19pdx;
  }
  public void setSib19pdx(Short sib19pdx) {
    this.sib19pdx=sib19pdx;
  }

  public Short getSib19moe() {
    return sib19moe;
  }
  public void setSib19moe(Short sib19moe) {
    this.sib19moe=sib19moe;
  }

  public Short getSib19ago() {
    return sib19ago;
  }
  public void setSib19ago(Short sib19ago) {
    this.sib19ago=sib19ago;
  }

  public Short getSib20mob() {
    return sib20mob;
  }
  public void setSib20mob(Short sib20mob) {
    this.sib20mob=sib20mob;
  }

  public Short getSib20yob() {
    return sib20yob;
  }
  public void setSib20yob(Short sib20yob) {
    this.sib20yob=sib20yob;
  }

  public Short getSib20agd() {
    return sib20agd;
  }
  public void setSib20agd(Short sib20agd) {
    this.sib20agd=sib20agd;
  }

  public Short getSib20neu() {
    return sib20neu;
  }
  public void setSib20neu(Short sib20neu) {
    this.sib20neu=sib20neu;
  }

  public Short getSib20pdx() {
    return sib20pdx;
  }
  public void setSib20pdx(Short sib20pdx) {
    this.sib20pdx=sib20pdx;
  }

  public Short getSib20moe() {
    return sib20moe;
  }
  public void setSib20moe(Short sib20moe) {
    this.sib20moe=sib20moe;
  }

  public Short getSib20ago() {
    return sib20ago;
  }
  public void setSib20ago(Short sib20ago) {
    this.sib20ago=sib20ago;
  }

  public Short getKids() {
    return kids;
  }
  public void setKids(Short kids) {
    this.kids=kids;
  }

  public Short getKid1mob() {
    return kid1mob;
  }
  public void setKid1mob(Short kid1mob) {
    this.kid1mob=kid1mob;
  }

  public Short getKid1yob() {
    return kid1yob;
  }
  public void setKid1yob(Short kid1yob) {
    this.kid1yob=kid1yob;
  }

  public Short getKid1agd() {
    return kid1agd;
  }
  public void setKid1agd(Short kid1agd) {
    this.kid1agd=kid1agd;
  }

  public Short getKid1neu() {
    return kid1neu;
  }
  public void setKid1neu(Short kid1neu) {
    this.kid1neu=kid1neu;
  }

  public Short getKid1pdx() {
    return kid1pdx;
  }
  public void setKid1pdx(Short kid1pdx) {
    this.kid1pdx=kid1pdx;
  }

  public Short getKid1moe() {
    return kid1moe;
  }
  public void setKid1moe(Short kid1moe) {
    this.kid1moe=kid1moe;
  }

  public Short getKid1ago() {
    return kid1ago;
  }
  public void setKid1ago(Short kid1ago) {
    this.kid1ago=kid1ago;
  }

  public Short getKid2mob() {
    return kid2mob;
  }
  public void setKid2mob(Short kid2mob) {
    this.kid2mob=kid2mob;
  }

  public Short getKid2yob() {
    return kid2yob;
  }
  public void setKid2yob(Short kid2yob) {
    this.kid2yob=kid2yob;
  }

  public Short getKid2agd() {
    return kid2agd;
  }
  public void setKid2agd(Short kid2agd) {
    this.kid2agd=kid2agd;
  }

  public Short getKid2neu() {
    return kid2neu;
  }
  public void setKid2neu(Short kid2neu) {
    this.kid2neu=kid2neu;
  }

  public Short getKid2pdx() {
    return kid2pdx;
  }
  public void setKid2pdx(Short kid2pdx) {
    this.kid2pdx=kid2pdx;
  }

  public Short getKid2moe() {
    return kid2moe;
  }
  public void setKid2moe(Short kid2moe) {
    this.kid2moe=kid2moe;
  }

  public Short getKid2ago() {
    return kid2ago;
  }
  public void setKid2ago(Short kid2ago) {
    this.kid2ago=kid2ago;
  }

  public Short getKid3mob() {
    return kid3mob;
  }
  public void setKid3mob(Short kid3mob) {
    this.kid3mob=kid3mob;
  }

  public Short getKid3yob() {
    return kid3yob;
  }
  public void setKid3yob(Short kid3yob) {
    this.kid3yob=kid3yob;
  }

  public Short getKid3agd() {
    return kid3agd;
  }
  public void setKid3agd(Short kid3agd) {
    this.kid3agd=kid3agd;
  }

  public Short getKid3neu() {
    return kid3neu;
  }
  public void setKid3neu(Short kid3neu) {
    this.kid3neu=kid3neu;
  }

  public Short getKid3pdx() {
    return kid3pdx;
  }
  public void setKid3pdx(Short kid3pdx) {
    this.kid3pdx=kid3pdx;
  }

  public Short getKid3moe() {
    return kid3moe;
  }
  public void setKid3moe(Short kid3moe) {
    this.kid3moe=kid3moe;
  }

  public Short getKid3ago() {
    return kid3ago;
  }
  public void setKid3ago(Short kid3ago) {
    this.kid3ago=kid3ago;
  }

  public Short getKid4mob() {
    return kid4mob;
  }
  public void setKid4mob(Short kid4mob) {
    this.kid4mob=kid4mob;
  }

  public Short getKid4yob() {
    return kid4yob;
  }
  public void setKid4yob(Short kid4yob) {
    this.kid4yob=kid4yob;
  }

  public Short getKid4agd() {
    return kid4agd;
  }
  public void setKid4agd(Short kid4agd) {
    this.kid4agd=kid4agd;
  }

  public Short getKid4neu() {
    return kid4neu;
  }
  public void setKid4neu(Short kid4neu) {
    this.kid4neu=kid4neu;
  }

  public Short getKid4pdx() {
    return kid4pdx;
  }
  public void setKid4pdx(Short kid4pdx) {
    this.kid4pdx=kid4pdx;
  }

  public Short getKid4moe() {
    return kid4moe;
  }
  public void setKid4moe(Short kid4moe) {
    this.kid4moe=kid4moe;
  }

  public Short getKid4ago() {
    return kid4ago;
  }
  public void setKid4ago(Short kid4ago) {
    this.kid4ago=kid4ago;
  }

  public Short getKid5mob() {
    return kid5mob;
  }
  public void setKid5mob(Short kid5mob) {
    this.kid5mob=kid5mob;
  }

  public Short getKid5yob() {
    return kid5yob;
  }
  public void setKid5yob(Short kid5yob) {
    this.kid5yob=kid5yob;
  }

  public Short getKid5agd() {
    return kid5agd;
  }
  public void setKid5agd(Short kid5agd) {
    this.kid5agd=kid5agd;
  }

  public Short getKid5neu() {
    return kid5neu;
  }
  public void setKid5neu(Short kid5neu) {
    this.kid5neu=kid5neu;
  }

  public Short getKid5pdx() {
    return kid5pdx;
  }
  public void setKid5pdx(Short kid5pdx) {
    this.kid5pdx=kid5pdx;
  }

  public Short getKid5moe() {
    return kid5moe;
  }
  public void setKid5moe(Short kid5moe) {
    this.kid5moe=kid5moe;
  }

  public Short getKid5ago() {
    return kid5ago;
  }
  public void setKid5ago(Short kid5ago) {
    this.kid5ago=kid5ago;
  }

  public Short getKid6mob() {
    return kid6mob;
  }
  public void setKid6mob(Short kid6mob) {
    this.kid6mob=kid6mob;
  }

  public Short getKid6yob() {
    return kid6yob;
  }
  public void setKid6yob(Short kid6yob) {
    this.kid6yob=kid6yob;
  }

  public Short getKid6agd() {
    return kid6agd;
  }
  public void setKid6agd(Short kid6agd) {
    this.kid6agd=kid6agd;
  }

  public Short getKid6neu() {
    return kid6neu;
  }
  public void setKid6neu(Short kid6neu) {
    this.kid6neu=kid6neu;
  }

  public Short getKid6pdx() {
    return kid6pdx;
  }
  public void setKid6pdx(Short kid6pdx) {
    this.kid6pdx=kid6pdx;
  }

  public Short getKid6moe() {
    return kid6moe;
  }
  public void setKid6moe(Short kid6moe) {
    this.kid6moe=kid6moe;
  }

  public Short getKid6ago() {
    return kid6ago;
  }
  public void setKid6ago(Short kid6ago) {
    this.kid6ago=kid6ago;
  }

  public Short getKid7mob() {
    return kid7mob;
  }
  public void setKid7mob(Short kid7mob) {
    this.kid7mob=kid7mob;
  }

  public Short getKid7yob() {
    return kid7yob;
  }
  public void setKid7yob(Short kid7yob) {
    this.kid7yob=kid7yob;
  }

  public Short getKid7agd() {
    return kid7agd;
  }
  public void setKid7agd(Short kid7agd) {
    this.kid7agd=kid7agd;
  }

  public Short getKid7neu() {
    return kid7neu;
  }
  public void setKid7neu(Short kid7neu) {
    this.kid7neu=kid7neu;
  }

  public Short getKid7pdx() {
    return kid7pdx;
  }
  public void setKid7pdx(Short kid7pdx) {
    this.kid7pdx=kid7pdx;
  }

  public Short getKid7moe() {
    return kid7moe;
  }
  public void setKid7moe(Short kid7moe) {
    this.kid7moe=kid7moe;
  }

  public Short getKid7ago() {
    return kid7ago;
  }
  public void setKid7ago(Short kid7ago) {
    this.kid7ago=kid7ago;
  }

  public Short getKid8mob() {
    return kid8mob;
  }
  public void setKid8mob(Short kid8mob) {
    this.kid8mob=kid8mob;
  }

  public Short getKid8yob() {
    return kid8yob;
  }
  public void setKid8yob(Short kid8yob) {
    this.kid8yob=kid8yob;
  }

  public Short getKid8agd() {
    return kid8agd;
  }
  public void setKid8agd(Short kid8agd) {
    this.kid8agd=kid8agd;
  }

  public Short getKid8neu() {
    return kid8neu;
  }
  public void setKid8neu(Short kid8neu) {
    this.kid8neu=kid8neu;
  }

  public Short getKid8pdx() {
    return kid8pdx;
  }
  public void setKid8pdx(Short kid8pdx) {
    this.kid8pdx=kid8pdx;
  }

  public Short getKid8moe() {
    return kid8moe;
  }
  public void setKid8moe(Short kid8moe) {
    this.kid8moe=kid8moe;
  }

  public Short getKid8ago() {
    return kid8ago;
  }
  public void setKid8ago(Short kid8ago) {
    this.kid8ago=kid8ago;
  }

  public Short getKid9mob() {
    return kid9mob;
  }
  public void setKid9mob(Short kid9mob) {
    this.kid9mob=kid9mob;
  }

  public Short getKid9yob() {
    return kid9yob;
  }
  public void setKid9yob(Short kid9yob) {
    this.kid9yob=kid9yob;
  }

  public Short getKid9agd() {
    return kid9agd;
  }
  public void setKid9agd(Short kid9agd) {
    this.kid9agd=kid9agd;
  }

  public Short getKid9neu() {
    return kid9neu;
  }
  public void setKid9neu(Short kid9neu) {
    this.kid9neu=kid9neu;
  }

  public Short getKid9pdx() {
    return kid9pdx;
  }
  public void setKid9pdx(Short kid9pdx) {
    this.kid9pdx=kid9pdx;
  }

  public Short getKid9moe() {
    return kid9moe;
  }
  public void setKid9moe(Short kid9moe) {
    this.kid9moe=kid9moe;
  }

  public Short getKid9ago() {
    return kid9ago;
  }
  public void setKid9ago(Short kid9ago) {
    this.kid9ago=kid9ago;
  }

  public Short getKid10mob() {
    return kid10mob;
  }
  public void setKid10mob(Short kid10mob) {
    this.kid10mob=kid10mob;
  }

  public Short getKid10yob() {
    return kid10yob;
  }
  public void setKid10yob(Short kid10yob) {
    this.kid10yob=kid10yob;
  }

  public Short getKid10agd() {
    return kid10agd;
  }
  public void setKid10agd(Short kid10agd) {
    this.kid10agd=kid10agd;
  }

  public Short getKid10neu() {
    return kid10neu;
  }
  public void setKid10neu(Short kid10neu) {
    this.kid10neu=kid10neu;
  }

  public Short getKid10pdx() {
    return kid10pdx;
  }
  public void setKid10pdx(Short kid10pdx) {
    this.kid10pdx=kid10pdx;
  }

  public Short getKid10moe() {
    return kid10moe;
  }
  public void setKid10moe(Short kid10moe) {
    this.kid10moe=kid10moe;
  }

  public Short getKid10ago() {
    return kid10ago;
  }
  public void setKid10ago(Short kid10ago) {
    this.kid10ago=kid10ago;
  }

  public Short getKid11mob() {
    return kid11mob;
  }
  public void setKid11mob(Short kid11mob) {
    this.kid11mob=kid11mob;
  }

  public Short getKid11yob() {
    return kid11yob;
  }
  public void setKid11yob(Short kid11yob) {
    this.kid11yob=kid11yob;
  }

  public Short getKid11agd() {
    return kid11agd;
  }
  public void setKid11agd(Short kid11agd) {
    this.kid11agd=kid11agd;
  }

  public Short getKid11neu() {
    return kid11neu;
  }
  public void setKid11neu(Short kid11neu) {
    this.kid11neu=kid11neu;
  }

  public Short getKid11pdx() {
    return kid11pdx;
  }
  public void setKid11pdx(Short kid11pdx) {
    this.kid11pdx=kid11pdx;
  }

  public Short getKid11moe() {
    return kid11moe;
  }
  public void setKid11moe(Short kid11moe) {
    this.kid11moe=kid11moe;
  }

  public Short getKid11ago() {
    return kid11ago;
  }
  public void setKid11ago(Short kid11ago) {
    this.kid11ago=kid11ago;
  }

  public Short getKid12mob() {
    return kid12mob;
  }
  public void setKid12mob(Short kid12mob) {
    this.kid12mob=kid12mob;
  }

  public Short getKid12yob() {
    return kid12yob;
  }
  public void setKid12yob(Short kid12yob) {
    this.kid12yob=kid12yob;
  }

  public Short getKid12agd() {
    return kid12agd;
  }
  public void setKid12agd(Short kid12agd) {
    this.kid12agd=kid12agd;
  }

  public Short getKid12neu() {
    return kid12neu;
  }
  public void setKid12neu(Short kid12neu) {
    this.kid12neu=kid12neu;
  }

  public Short getKid12pdx() {
    return kid12pdx;
  }
  public void setKid12pdx(Short kid12pdx) {
    this.kid12pdx=kid12pdx;
  }

  public Short getKid12moe() {
    return kid12moe;
  }
  public void setKid12moe(Short kid12moe) {
    this.kid12moe=kid12moe;
  }

  public Short getKid12ago() {
    return kid12ago;
  }
  public void setKid12ago(Short kid12ago) {
    this.kid12ago=kid12ago;
  }

  public Short getKid13mob() {
    return kid13mob;
  }
  public void setKid13mob(Short kid13mob) {
    this.kid13mob=kid13mob;
  }

  public Short getKid13yob() {
    return kid13yob;
  }
  public void setKid13yob(Short kid13yob) {
    this.kid13yob=kid13yob;
  }

  public Short getKid13agd() {
    return kid13agd;
  }
  public void setKid13agd(Short kid13agd) {
    this.kid13agd=kid13agd;
  }

  public Short getKid13neu() {
    return kid13neu;
  }
  public void setKid13neu(Short kid13neu) {
    this.kid13neu=kid13neu;
  }

  public Short getKid13pdx() {
    return kid13pdx;
  }
  public void setKid13pdx(Short kid13pdx) {
    this.kid13pdx=kid13pdx;
  }

  public Short getKid13moe() {
    return kid13moe;
  }
  public void setKid13moe(Short kid13moe) {
    this.kid13moe=kid13moe;
  }

  public Short getKid13ago() {
    return kid13ago;
  }
  public void setKid13ago(Short kid13ago) {
    this.kid13ago=kid13ago;
  }

  public Short getKid14mob() {
    return kid14mob;
  }
  public void setKid14mob(Short kid14mob) {
    this.kid14mob=kid14mob;
  }

  public Short getKid14yob() {
    return kid14yob;
  }
  public void setKid14yob(Short kid14yob) {
    this.kid14yob=kid14yob;
  }

  public Short getKid14agd() {
    return kid14agd;
  }
  public void setKid14agd(Short kid14agd) {
    this.kid14agd=kid14agd;
  }

  public Short getKid14neu() {
    return kid14neu;
  }
  public void setKid14neu(Short kid14neu) {
    this.kid14neu=kid14neu;
  }

  public Short getKid14pdx() {
    return kid14pdx;
  }
  public void setKid14pdx(Short kid14pdx) {
    this.kid14pdx=kid14pdx;
  }

  public Short getKid14moe() {
    return kid14moe;
  }
  public void setKid14moe(Short kid14moe) {
    this.kid14moe=kid14moe;
  }

  public Short getKid14ago() {
    return kid14ago;
  }
  public void setKid14ago(Short kid14ago) {
    this.kid14ago=kid14ago;
  }

  public Short getKid15mob() {
    return kid15mob;
  }
  public void setKid15mob(Short kid15mob) {
    this.kid15mob=kid15mob;
  }

  public Short getKid15yob() {
    return kid15yob;
  }
  public void setKid15yob(Short kid15yob) {
    this.kid15yob=kid15yob;
  }

  public Short getKid15agd() {
    return kid15agd;
  }
  public void setKid15agd(Short kid15agd) {
    this.kid15agd=kid15agd;
  }

  public Short getKid15neu() {
    return kid15neu;
  }
  public void setKid15neu(Short kid15neu) {
    this.kid15neu=kid15neu;
  }

  public Short getKid15pdx() {
    return kid15pdx;
  }
  public void setKid15pdx(Short kid15pdx) {
    this.kid15pdx=kid15pdx;
  }

  public Short getKid15moe() {
    return kid15moe;
  }
  public void setKid15moe(Short kid15moe) {
    this.kid15moe=kid15moe;
  }

  public Short getKid15ago() {
    return kid15ago;
  }
  public void setKid15ago(Short kid15ago) {
    this.kid15ago=kid15ago;
  }
  
  	public Short getNwinfmut() {
  		return nwinfmut;
  	}
  
	public void setNwinfmut(Short nwinfmut) {
		this.nwinfmut = nwinfmut;
	}
	public Short getNwinfpar() {
		return nwinfpar;
	}
	public void setNwinfpar(Short nwinfpar) {
		this.nwinfpar = nwinfpar;
	}
	public Short getNwinfsib() {
		return nwinfsib;
	}
	public void setNwinfsib(Short nwinfsib) {
		this.nwinfsib = nwinfsib;
	}
	public Short getNwinfkid() {
		return nwinfkid;
	}
	public void setNwinfkid(Short nwinfkid) {
		this.nwinfkid = nwinfkid;
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
      "kid15ago"};
	if (this.getPacket().equals("F")){
		// add these to required
		required = StringUtils.concatenateStringArrays(required, new String[]{"nwinfmut","nwinfpar","nwinfsib","nwinfkid"});
		
	}
    
    return required;
  }
	
	
	
	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		
		if(getPacket().equals("I")){
			buffer.append(UdsUploadUtils.formatField(getAfffamm())).append(",");
		}
		if(getPacket().equals("F") || getPacket().equals("T")){
			buffer.append(UdsUploadUtils.formatField(getNwinfmut())).append(",");
		}
	
		buffer.append(UdsUploadUtils.formatField(getFadmut())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFadmutx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFadmuso())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFadmusox())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFftdmut())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFftdmutx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFftdmuso())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFftdmusx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFothmut())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFothmutx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFothmuso())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFothmusx())).append(",");
		
		if(getPacket().equals("F") || getPacket().equals("T")){
			buffer.append(UdsUploadUtils.formatField(getNwinfpar())).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getMommob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMomyob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMomdage())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMomneur())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMomprdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMommoe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMomageo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDadmob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDadyob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDaddage())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDadneur())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDadprdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDadmoe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDadageo())).append(",");

		buffer.append(UdsUploadUtils.formatField(getSibs())).append(",");
		if(getPacket().equals("F") || getPacket().equals("T")){
			buffer.append(UdsUploadUtils.formatField(getNwinfsib())).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getSib1mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib1yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib1agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib1neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib1pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib1moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib1ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib2ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib3ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib4ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib5ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib6ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib7ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib8ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib9ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib10ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib11ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib12ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib13ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib14ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib15ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib16ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib17ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib18ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib19ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getSib20ago())).append(",");

		buffer.append(UdsUploadUtils.formatField(getKids())).append(",");
		if(getPacket().equals("F") || getPacket().equals("T")){
			buffer.append(UdsUploadUtils.formatField(getNwinfkid())).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getKid1mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid1yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid1agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid1neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid1pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid1moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid1ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid2ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid3ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid4ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid5ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid6ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid7ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid8ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid9ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid10ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid11ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid12ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid13ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid14ago())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15mob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15yob())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15agd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15neu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15pdx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15moe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getKid15ago())).append(",");
		
		return buffer.toString();
	}
	
	
}
