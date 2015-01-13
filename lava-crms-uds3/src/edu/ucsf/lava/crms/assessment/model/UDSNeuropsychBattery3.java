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

public class UDSNeuropsychBattery3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSNeuropsychBattery3.class);
  public UDSNeuropsychBattery3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSNeuropsychBattery3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer mocacomp;
  private Integer mocareas;
  private Integer mocaloc;
  private Integer mocalan;
  private String mocalanx;
  private Integer mocavis;
  private Integer mocahear;
  private Integer mocatots;
  private Integer mocatrai;
  private Integer mocacube;
  private Integer mocacloc;
  private Integer mocaclon;
  private Integer mocacloh;
  private Integer mocanami;
  private Integer mocaregi;
  private Integer mocadigi;
  private Integer mocalett;
  private Integer mocaser7;
  private Integer mocarepe;
  private Integer mocaflue;
  private Integer mocaabst;
  private Integer mocarecn;
  private Integer mocarecc;
  private Integer mocarecr;
  private Integer mocaordt;
  private Integer mocaormo;
  private Integer mocaoryr;
  private Integer mocaordy;
  private Integer mocaorpl;
  private Integer mocaorct;
  private Integer npsycloc;
  private Integer npsylan;
  private String npsylanx;
  private Integer craftvrs;
  private Integer crafturs;
  private Integer udsbentc;
  private Integer digforct;
  private Integer digforsl;
  private Integer digbacct;
  private Integer digbacls;
  private Integer animals;
  private Integer veg;
  private Integer traila;
  private Integer trailarr;
  private Integer trailali;
  private Integer trailb;
  private Integer trailbrr;
  private Integer trailbli;
  private Integer craftdvr;
  private Integer craftdre;
  private Integer craftdti;
  private Integer craftcue;
  private Integer udsbentd;
  private Integer udsbenrs;
  private Integer minttots;
  private Integer minttotw;
  private Integer mintscng;
  private Integer mintscnc;
  private Integer mintpcng;
  private Integer mintpcnc;
  private Integer udsverfc;
  private Integer udsverfn;
  private Integer udsvernf;
  private Integer udsverlc;
  private Integer udsverlr;
  private Integer udsverln;
  private Integer udsvertn;
  private Integer udsverte;
  private Integer udsverti;
  private Integer cogstat;



  public Integer getMocacomp() {
    return mocacomp;
  }
  public void setMocacomp(Integer mocacomp) {
    this.mocacomp=mocacomp;
  }

  public Integer getMocareas() {
    return mocareas;
  }
  public void setMocareas(Integer mocareas) {
    this.mocareas=mocareas;
  }

  public Integer getMocaloc() {
    return mocaloc;
  }
  public void setMocaloc(Integer mocaloc) {
    this.mocaloc=mocaloc;
  }

  public Integer getMocalan() {
    return mocalan;
  }
  public void setMocalan(Integer mocalan) {
    this.mocalan=mocalan;
  }

  public String getMocalanx() {
    return mocalanx;
  }
  public void setMocalanx(String mocalanx) {
    this.mocalanx=mocalanx;
  }

  public Integer getMocavis() {
    return mocavis;
  }
  public void setMocavis(Integer mocavis) {
    this.mocavis=mocavis;
  }

  public Integer getMocahear() {
    return mocahear;
  }
  public void setMocahear(Integer mocahear) {
    this.mocahear=mocahear;
  }

  public Integer getMocatots() {
    return mocatots;
  }
  public void setMocatots(Integer mocatots) {
    this.mocatots=mocatots;
  }

  public Integer getMocatrai() {
    return mocatrai;
  }
  public void setMocatrai(Integer mocatrai) {
    this.mocatrai=mocatrai;
  }

  public Integer getMocacube() {
    return mocacube;
  }
  public void setMocacube(Integer mocacube) {
    this.mocacube=mocacube;
  }

  public Integer getMocacloc() {
    return mocacloc;
  }
  public void setMocacloc(Integer mocacloc) {
    this.mocacloc=mocacloc;
  }

  public Integer getMocaclon() {
    return mocaclon;
  }
  public void setMocaclon(Integer mocaclon) {
    this.mocaclon=mocaclon;
  }

  public Integer getMocacloh() {
    return mocacloh;
  }
  public void setMocacloh(Integer mocacloh) {
    this.mocacloh=mocacloh;
  }

  public Integer getMocanami() {
    return mocanami;
  }
  public void setMocanami(Integer mocanami) {
    this.mocanami=mocanami;
  }

  public Integer getMocaregi() {
    return mocaregi;
  }
  public void setMocaregi(Integer mocaregi) {
    this.mocaregi=mocaregi;
  }

  public Integer getMocadigi() {
    return mocadigi;
  }
  public void setMocadigi(Integer mocadigi) {
    this.mocadigi=mocadigi;
  }

  public Integer getMocalett() {
    return mocalett;
  }
  public void setMocalett(Integer mocalett) {
    this.mocalett=mocalett;
  }

  public Integer getMocaser7() {
    return mocaser7;
  }
  public void setMocaser7(Integer mocaser7) {
    this.mocaser7=mocaser7;
  }

  public Integer getMocarepe() {
    return mocarepe;
  }
  public void setMocarepe(Integer mocarepe) {
    this.mocarepe=mocarepe;
  }

  public Integer getMocaflue() {
    return mocaflue;
  }
  public void setMocaflue(Integer mocaflue) {
    this.mocaflue=mocaflue;
  }

  public Integer getMocaabst() {
    return mocaabst;
  }
  public void setMocaabst(Integer mocaabst) {
    this.mocaabst=mocaabst;
  }

  public Integer getMocarecn() {
    return mocarecn;
  }
  public void setMocarecn(Integer mocarecn) {
    this.mocarecn=mocarecn;
  }

  public Integer getMocarecc() {
    return mocarecc;
  }
  public void setMocarecc(Integer mocarecc) {
    this.mocarecc=mocarecc;
  }

  public Integer getMocarecr() {
    return mocarecr;
  }
  public void setMocarecr(Integer mocarecr) {
    this.mocarecr=mocarecr;
  }

  public Integer getMocaordt() {
    return mocaordt;
  }
  public void setMocaordt(Integer mocaordt) {
    this.mocaordt=mocaordt;
  }

  public Integer getMocaormo() {
    return mocaormo;
  }
  public void setMocaormo(Integer mocaormo) {
    this.mocaormo=mocaormo;
  }

  public Integer getMocaoryr() {
    return mocaoryr;
  }
  public void setMocaoryr(Integer mocaoryr) {
    this.mocaoryr=mocaoryr;
  }

  public Integer getMocaordy() {
    return mocaordy;
  }
  public void setMocaordy(Integer mocaordy) {
    this.mocaordy=mocaordy;
  }

  public Integer getMocaorpl() {
    return mocaorpl;
  }
  public void setMocaorpl(Integer mocaorpl) {
    this.mocaorpl=mocaorpl;
  }

  public Integer getMocaorct() {
    return mocaorct;
  }
  public void setMocaorct(Integer mocaorct) {
    this.mocaorct=mocaorct;
  }

  public Integer getNpsycloc() {
    return npsycloc;
  }
  public void setNpsycloc(Integer npsycloc) {
    this.npsycloc=npsycloc;
  }

  public Integer getNpsylan() {
    return npsylan;
  }
  public void setNpsylan(Integer npsylan) {
    this.npsylan=npsylan;
  }

  public String getNpsylanx() {
    return npsylanx;
  }
  public void setNpsylanx(String npsylanx) {
    this.npsylanx=npsylanx;
  }

  public Integer getCraftvrs() {
    return craftvrs;
  }
  public void setCraftvrs(Integer craftvrs) {
    this.craftvrs=craftvrs;
  }

  public Integer getCrafturs() {
    return crafturs;
  }
  public void setCrafturs(Integer crafturs) {
    this.crafturs=crafturs;
  }

  public Integer getUdsbentc() {
    return udsbentc;
  }
  public void setUdsbentc(Integer udsbentc) {
    this.udsbentc=udsbentc;
  }

  public Integer getDigforct() {
    return digforct;
  }
  public void setDigforct(Integer digforct) {
    this.digforct=digforct;
  }

  public Integer getDigforsl() {
    return digforsl;
  }
  public void setDigforsl(Integer digforsl) {
    this.digforsl=digforsl;
  }

  public Integer getDigbacct() {
    return digbacct;
  }
  public void setDigbacct(Integer digbacct) {
    this.digbacct=digbacct;
  }

  public Integer getDigbacls() {
    return digbacls;
  }
  public void setDigbacls(Integer digbacls) {
    this.digbacls=digbacls;
  }

  public Integer getAnimals() {
    return animals;
  }
  public void setAnimals(Integer animals) {
    this.animals=animals;
  }

  public Integer getVeg() {
    return veg;
  }
  public void setVeg(Integer veg) {
    this.veg=veg;
  }

  public Integer getTraila() {
    return traila;
  }
  public void setTraila(Integer traila) {
    this.traila=traila;
  }

  public Integer getTrailarr() {
    return trailarr;
  }
  public void setTrailarr(Integer trailarr) {
    this.trailarr=trailarr;
  }

  public Integer getTrailali() {
    return trailali;
  }
  public void setTrailali(Integer trailali) {
    this.trailali=trailali;
  }

  public Integer getTrailb() {
    return trailb;
  }
  public void setTrailb(Integer trailb) {
    this.trailb=trailb;
  }

  public Integer getTrailbrr() {
    return trailbrr;
  }
  public void setTrailbrr(Integer trailbrr) {
    this.trailbrr=trailbrr;
  }

  public Integer getTrailbli() {
    return trailbli;
  }
  public void setTrailbli(Integer trailbli) {
    this.trailbli=trailbli;
  }

  public Integer getCraftdvr() {
    return craftdvr;
  }
  public void setCraftdvr(Integer craftdvr) {
    this.craftdvr=craftdvr;
  }

  public Integer getCraftdre() {
    return craftdre;
  }
  public void setCraftdre(Integer craftdre) {
    this.craftdre=craftdre;
  }

  public Integer getCraftdti() {
    return craftdti;
  }
  public void setCraftdti(Integer craftdti) {
    this.craftdti=craftdti;
  }

  public Integer getCraftcue() {
    return craftcue;
  }
  public void setCraftcue(Integer craftcue) {
    this.craftcue=craftcue;
  }

  public Integer getUdsbentd() {
    return udsbentd;
  }
  public void setUdsbentd(Integer udsbentd) {
    this.udsbentd=udsbentd;
  }

  public Integer getUdsbenrs() {
    return udsbenrs;
  }
  public void setUdsbenrs(Integer udsbenrs) {
    this.udsbenrs=udsbenrs;
  }

  public Integer getMinttots() {
    return minttots;
  }
  public void setMinttots(Integer minttots) {
    this.minttots=minttots;
  }

  public Integer getMinttotw() {
    return minttotw;
  }
  public void setMinttotw(Integer minttotw) {
    this.minttotw=minttotw;
  }

  public Integer getMintscng() {
    return mintscng;
  }
  public void setMintscng(Integer mintscng) {
    this.mintscng=mintscng;
  }

  public Integer getMintscnc() {
    return mintscnc;
  }
  public void setMintscnc(Integer mintscnc) {
    this.mintscnc=mintscnc;
  }

  public Integer getMintpcng() {
    return mintpcng;
  }
  public void setMintpcng(Integer mintpcng) {
    this.mintpcng=mintpcng;
  }

  public Integer getMintpcnc() {
    return mintpcnc;
  }
  public void setMintpcnc(Integer mintpcnc) {
    this.mintpcnc=mintpcnc;
  }

  public Integer getUdsverfc() {
    return udsverfc;
  }
  public void setUdsverfc(Integer udsverfc) {
    this.udsverfc=udsverfc;
  }

  public Integer getUdsverfn() {
    return udsverfn;
  }
  public void setUdsverfn(Integer udsverfn) {
    this.udsverfn=udsverfn;
  }

  public Integer getUdsvernf() {
    return udsvernf;
  }
  public void setUdsvernf(Integer udsvernf) {
    this.udsvernf=udsvernf;
  }

  public Integer getUdsverlc() {
    return udsverlc;
  }
  public void setUdsverlc(Integer udsverlc) {
    this.udsverlc=udsverlc;
  }

  public Integer getUdsverlr() {
    return udsverlr;
  }
  public void setUdsverlr(Integer udsverlr) {
    this.udsverlr=udsverlr;
  }

  public Integer getUdsverln() {
    return udsverln;
  }
  public void setUdsverln(Integer udsverln) {
    this.udsverln=udsverln;
  }

  public Integer getUdsvertn() {
    return udsvertn;
  }
  public void setUdsvertn(Integer udsvertn) {
    this.udsvertn=udsvertn;
  }

  public Integer getUdsverte() {
    return udsverte;
  }
  public void setUdsverte(Integer udsverte) {
    this.udsverte=udsverte;
  }

  public Integer getUdsverti() {
    return udsverti;
  }
  public void setUdsverti(Integer udsverti) {
    this.udsverti=udsverti;
  }

  public Integer getCogstat() {
    return cogstat;
  }
  public void setCogstat(Integer cogstat) {
    this.cogstat=cogstat;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "mocacomp",
      "mocareas",
      "mocaloc",
      "mocalan",
      "mocalanx",
      "mocavis",
      "mocahear",
      "mocatots",
      "mocatrai",
      "mocacube",
      "mocacloc",
      "mocaclon",
      "mocacloh",
      "mocanami",
      "mocaregi",
      "mocadigi",
      "mocalett",
      "mocaser7",
      "mocarepe",
      "mocaflue",
      "mocaabst",
      "mocarecn",
      "mocarecc",
      "mocarecr",
      "mocaordt",
      "mocaormo",
      "mocaoryr",
      "mocaordy",
      "mocaorpl",
      "mocaorct",
      "npsycloc",
      "npsylan",
      "npsylanx",
      "craftvrs",
      "crafturs",
      "udsbentc",
      "digforct",
      "digforsl",
      "digbacct",
      "digbacls",
      "animals",
      "veg",
      "traila",
      "trailarr",
      "trailali",
      "trailb",
      "trailbrr",
      "trailbli",
      "craftdvr",
      "craftdre",
      "craftdti",
      "craftcue",
      "udsbentd",
      "udsbenrs",
      "minttots",
      "minttotw",
      "mintscng",
      "mintscnc",
      "mintpcng",
      "mintpcnc",
      "udsverfc",
      "udsverfn",
      "udsvernf",
      "udsverlc",
      "udsverlr",
      "udsverln",
      "udsvertn",
      "udsverte",
      "udsverti",
      "cogstat"
    };
    return required;
  }
}
