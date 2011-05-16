package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFamilyHistory2 extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFamilyHistory2.class);
	public static final String UDS_FAMILY_HISTORY_FORMID = "A3";
	
	public UdsFamilyHistory2() {}
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFamilyHistory2(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FAMILY_HISTORY_FORMID);		
	}
	
	// note: id inherited from Instrument

	private Short a3Chg;
	private Short parChg;
	private Short momYob;
	private Short momLiv;
	private Short momYod;
	private Short momDem;
	private Short momOnset;
	private Short dadYob;
	private Short dadLiv;
	private Short dadYod;
	private Short dadDem;
	private Short dadOnset;
	private Short twin;
	private Short twinType;
	private Short sibChg;
	private Short sibs;
	private Short sib1Yob;
	private Short sib1Liv;
	private Short sib1Yod;
	private Short sib1Dem;
	private Short sib1Ons;
	private Short sib2Yob;
	private Short sib2Liv;
	private Short sib2Yod;
	private Short sib2Dem;
	private Short sib2Ons;
	private Short sib3Yob;
	private Short sib3Liv;
	private Short sib3Yod;
	private Short sib3Dem;
	private Short sib3Ons;
	private Short sib4Yob;
	private Short sib4Liv;
	private Short sib4Yod;
	private Short sib4Dem;
	private Short sib4Ons;
	private Short sib5Yob;
	private Short sib5Liv;
	private Short sib5Yod;
	private Short sib5Dem;
	private Short sib5Ons;
	private Short sib6Yob;
	private Short sib6Liv;
	private Short sib6Yod;
	private Short sib6Dem;
	private Short sib6Ons;
	private Short sib7Yob;
	private Short sib7Liv;
	private Short sib7Yod;
	private Short sib7Dem;
	private Short sib7Ons;
	private Short sib8Yob;
	private Short sib8Liv;
	private Short sib8Yod;
	private Short sib8Dem;
	private Short sib8Ons;
	private Short sib9Yob;
	private Short sib9Liv;
	private Short sib9Yod;
	private Short sib9Dem;
	private Short sib9Ons;
	private Short sib10Yob;
	private Short sib10Liv;
	private Short sib10Yod;
	private Short sib10Dem;
	private Short sib10Ons;
	private Short sib11Yob;
	private Short sib11Liv;
	private Short sib11Yod;
	private Short sib11Dem;
	private Short sib11Ons;
	private Short sib12Yob;
	private Short sib12Liv;
	private Short sib12Yod;
	private Short sib12Dem;
	private Short sib12Ons;
	private Short sib13Yob;
	private Short sib13Liv;
	private Short sib13Yod;
	private Short sib13Dem;
	private Short sib13Ons;
	private Short sib14Yob;
	private Short sib14Liv;
	private Short sib14Yod;
	private Short sib14Dem;
	private Short sib14Ons;
	private Short sib15Yob;
	private Short sib15Liv;
	private Short sib15Yod;
	private Short sib15Dem;
	private Short sib15Ons;
	private Short sib16Yob;
	private Short sib16Liv;
	private Short sib16Yod;
	private Short sib16Dem;
	private Short sib16Ons;
	private Short sib17Yob;
	private Short sib17Liv;
	private Short sib17Yod;
	private Short sib17Dem;
	private Short sib17Ons;
	private Short sib18Yob;
	private Short sib18Liv;
	private Short sib18Yod;
	private Short sib18Dem;
	private Short sib18Ons;
	private Short sib19Yob;
	private Short sib19Liv;
	private Short sib19Yod;
	private Short sib19Dem;
	private Short sib19Ons;
	private Short sib20Yob;
	private Short sib20Liv;
	private Short sib20Yod;
	private Short sib20Dem;
	private Short sib20Ons;
	private Short kidChg;
	private Short kids;
	private Short kid1Yob;
	private Short kid1Liv;
	private Short kid1Yod;
	private Short kid1Dem;
	private Short kid1Ons;
	private Short kid2Yob;
	private Short kid2Liv;
	private Short kid2Yod;
	private Short kid2Dem;
	private Short kid2Ons;
	private Short kid3Yob;
	private Short kid3Liv;
	private Short kid3Yod;
	private Short kid3Dem;
	private Short kid3Ons;
	private Short kid4Yob;
	private Short kid4Liv;
	private Short kid4Yod;
	private Short kid4Dem;
	private Short kid4Ons;
	private Short kid5Yob;
	private Short kid5Liv;
	private Short kid5Yod;
	private Short kid5Dem;
	private Short kid5Ons;
	private Short kid6Yob;
	private Short kid6Liv;
	private Short kid6Yod;
	private Short kid6Dem;
	private Short kid6Ons;
	private Short kid7Yob;
	private Short kid7Liv;
	private Short kid7Yod;
	private Short kid7Dem;
	private Short kid7Ons;
	private Short kid8Yob;
	private Short kid8Liv;
	private Short kid8Yod;
	private Short kid8Dem;
	private Short kid8Ons;
	private Short kid9Yob;
	private Short kid9Liv;
	private Short kid9Yod;
	private Short kid9Dem;
	private Short kid9Ons;
	private Short kid10Yob;
	private Short kid10Liv;
	private Short kid10Yod;
	private Short kid10Dem;
	private Short kid10Ons;
	private Short kid11Yob;
	private Short kid11Liv;
	private Short kid11Yod;
	private Short kid11Dem;
	private Short kid11Ons;
	private Short kid12Yob;
	private Short kid12Liv;
	private Short kid12Yod;
	private Short kid12Dem;
	private Short kid12Ons;
	private Short kid13Yob;
	private Short kid13Liv;
	private Short kid13Yod;
	private Short kid13Dem;
	private Short kid13Ons;
	private Short kid14Yob;
	private Short kid14Liv;
	private Short kid14Yod;
	private Short kid14Dem;
	private Short kid14Ons;
	private Short kid15Yob;
	private Short kid15Liv;
	private Short kid15Yod;
	private Short kid15Dem;
	private Short kid15Ons;
	private Short relChg;
	private Short relsDem;
	private Short rel1Yob;
	private Short rel1Liv;
	private Short rel1Yod;
	private Short rel1Ons;
	private Short rel2Yob;
	private Short rel2Liv;
	private Short rel2Yod;
	private Short rel2Ons;
	private Short rel3Yob;
	private Short rel3Liv;
	private Short rel3Yod;
	private Short rel3Ons;
	private Short rel4Yob;
	private Short rel4Liv;
	private Short rel4Yod;
	private Short rel4Ons;
	private Short rel5Yob;
	private Short rel5Liv;
	private Short rel5Yod;
	private Short rel5Ons;
	private Short rel6Yob;
	private Short rel6Liv;
	private Short rel6Yod;
	private Short rel6Ons;
	private Short rel7Yob;
	private Short rel7Liv;
	private Short rel7Yod;
	private Short rel7Ons;
	private Short rel8Yob;
	private Short rel8Liv;
	private Short rel8Yod;
	private Short rel8Ons;
	private Short rel9Yob;
	private Short rel9Liv;
	private Short rel9Yod;
	private Short rel9Ons;
	private Short rel10Yob;
	private Short rel10Liv;
	private Short rel10Yod;
	private Short rel10Ons;
	private Short rel11Yob;
	private Short rel11Liv;
	private Short rel11Yod;
	private Short rel11Ons;
	private Short rel12Yob;
	private Short rel12Liv;
	private Short rel12Yod;
	private Short rel12Ons;
	private Short rel13Yob;
	private Short rel13Liv;
	private Short rel13Yod;
	private Short rel13Ons;
	private Short rel14Yob;
	private Short rel14Liv;
	private Short rel14Yod;
	private Short rel14Ons;
	private Short rel15Yob;
	private Short rel15Liv;
	private Short rel15Yod;
	private Short rel15Ons;

	
	
	
	//Entity Name should not have version, based on class name
	public String getEntityName() {
		
		return "UDSFamilyHistory";
	}




	public Short getA3Chg() {
		return a3Chg;
	}
	public void setA3Chg(Short chg) {
		a3Chg = chg;
	}
	public Short getKidChg() {
		return kidChg;
	}
	public void setKidChg(Short kidChg) {
		this.kidChg = kidChg;
	}
	public Short getParChg() {
		return parChg;
	}
	public void setParChg(Short parChg) {
		this.parChg = parChg;
	}
	public Short getRelChg() {
		return relChg;
	}
	public void setRelChg(Short relChg) {
		this.relChg = relChg;
	}
	public Short getSibChg() {
		return sibChg;
	}
	public void setSibChg(Short sibChg) {
		this.sibChg = sibChg;
	}
	public Short getDadDem() {
		return dadDem;
	}
	public void setDadDem(Short dadDem) {
		this.dadDem = dadDem;
	}
	public Short getDadLiv() {
		return dadLiv;
	}
	public void setDadLiv(Short dadLiv) {
		this.dadLiv = dadLiv;
	}
	public Short getDadOnset() {
		return dadOnset;
	}
	public void setDadOnset(Short dadOnset) {
		this.dadOnset = dadOnset;
	}
	public Short getDadYob() {
		return dadYob;
	}
	public void setDadYob(Short dadYob) {
		this.dadYob = dadYob;
	}
	public Short getDadYod() {
		return dadYod;
	}
	public void setDadYod(Short dadYod) {
		this.dadYod = dadYod;
	}
	public Short getKid10Dem() {
		return kid10Dem;
	}
	public void setKid10Dem(Short kid10Dem) {
		this.kid10Dem = kid10Dem;
	}
	public Short getKid10Liv() {
		return kid10Liv;
	}
	public void setKid10Liv(Short kid10Liv) {
		this.kid10Liv = kid10Liv;
	}
	public Short getKid10Ons() {
		return kid10Ons;
	}
	public void setKid10Ons(Short kid10Ons) {
		this.kid10Ons = kid10Ons;
	}
	public Short getKid10Yob() {
		return kid10Yob;
	}
	public void setKid10Yob(Short kid10Yob) {
		this.kid10Yob = kid10Yob;
	}
	public Short getKid10Yod() {
		return kid10Yod;
	}
	public void setKid10Yod(Short kid10Yod) {
		this.kid10Yod = kid10Yod;
	}
	public Short getKid11Dem() {
		return kid11Dem;
	}
	public void setKid11Dem(Short kid11Dem) {
		this.kid11Dem = kid11Dem;
	}
	public Short getKid11Liv() {
		return kid11Liv;
	}
	public void setKid11Liv(Short kid11Liv) {
		this.kid11Liv = kid11Liv;
	}
	public Short getKid11Ons() {
		return kid11Ons;
	}
	public void setKid11Ons(Short kid11Ons) {
		this.kid11Ons = kid11Ons;
	}
	public Short getKid11Yob() {
		return kid11Yob;
	}
	public void setKid11Yob(Short kid11Yob) {
		this.kid11Yob = kid11Yob;
	}
	public Short getKid11Yod() {
		return kid11Yod;
	}
	public void setKid11Yod(Short kid11Yod) {
		this.kid11Yod = kid11Yod;
	}
	public Short getKid12Dem() {
		return kid12Dem;
	}
	public void setKid12Dem(Short kid12Dem) {
		this.kid12Dem = kid12Dem;
	}
	public Short getKid12Liv() {
		return kid12Liv;
	}
	public void setKid12Liv(Short kid12Liv) {
		this.kid12Liv = kid12Liv;
	}
	public Short getKid12Ons() {
		return kid12Ons;
	}
	public void setKid12Ons(Short kid12Ons) {
		this.kid12Ons = kid12Ons;
	}
	public Short getKid12Yob() {
		return kid12Yob;
	}
	public void setKid12Yob(Short kid12Yob) {
		this.kid12Yob = kid12Yob;
	}
	public Short getKid12Yod() {
		return kid12Yod;
	}
	public void setKid12Yod(Short kid12Yod) {
		this.kid12Yod = kid12Yod;
	}
	public Short getKid13Dem() {
		return kid13Dem;
	}
	public void setKid13Dem(Short kid13Dem) {
		this.kid13Dem = kid13Dem;
	}
	public Short getKid13Liv() {
		return kid13Liv;
	}
	public void setKid13Liv(Short kid13Liv) {
		this.kid13Liv = kid13Liv;
	}
	public Short getKid13Ons() {
		return kid13Ons;
	}
	public void setKid13Ons(Short kid13Ons) {
		this.kid13Ons = kid13Ons;
	}
	public Short getKid13Yob() {
		return kid13Yob;
	}
	public void setKid13Yob(Short kid13Yob) {
		this.kid13Yob = kid13Yob;
	}
	public Short getKid13Yod() {
		return kid13Yod;
	}
	public void setKid13Yod(Short kid13Yod) {
		this.kid13Yod = kid13Yod;
	}
	public Short getKid14Dem() {
		return kid14Dem;
	}
	public void setKid14Dem(Short kid14Dem) {
		this.kid14Dem = kid14Dem;
	}
	public Short getKid14Liv() {
		return kid14Liv;
	}
	public void setKid14Liv(Short kid14Liv) {
		this.kid14Liv = kid14Liv;
	}
	public Short getKid14Ons() {
		return kid14Ons;
	}
	public void setKid14Ons(Short kid14Ons) {
		this.kid14Ons = kid14Ons;
	}
	public Short getKid14Yob() {
		return kid14Yob;
	}
	public void setKid14Yob(Short kid14Yob) {
		this.kid14Yob = kid14Yob;
	}
	public Short getKid14Yod() {
		return kid14Yod;
	}
	public void setKid14Yod(Short kid14Yod) {
		this.kid14Yod = kid14Yod;
	}
	public Short getKid15Dem() {
		return kid15Dem;
	}
	public void setKid15Dem(Short kid15Dem) {
		this.kid15Dem = kid15Dem;
	}
	public Short getKid15Liv() {
		return kid15Liv;
	}
	public void setKid15Liv(Short kid15Liv) {
		this.kid15Liv = kid15Liv;
	}
	public Short getKid15Ons() {
		return kid15Ons;
	}
	public void setKid15Ons(Short kid15Ons) {
		this.kid15Ons = kid15Ons;
	}
	public Short getKid15Yob() {
		return kid15Yob;
	}
	public void setKid15Yob(Short kid15Yob) {
		this.kid15Yob = kid15Yob;
	}
	public Short getKid15Yod() {
		return kid15Yod;
	}
	public void setKid15Yod(Short kid15Yod) {
		this.kid15Yod = kid15Yod;
	}
	public Short getKid1Dem() {
		return kid1Dem;
	}
	public void setKid1Dem(Short kid1Dem) {
		this.kid1Dem = kid1Dem;
	}
	public Short getKid1Liv() {
		return kid1Liv;
	}
	public void setKid1Liv(Short kid1Liv) {
		this.kid1Liv = kid1Liv;
	}
	public Short getKid1Ons() {
		return kid1Ons;
	}
	public void setKid1Ons(Short kid1Ons) {
		this.kid1Ons = kid1Ons;
	}
	public Short getKid1Yob() {
		return kid1Yob;
	}
	public void setKid1Yob(Short kid1Yob) {
		this.kid1Yob = kid1Yob;
	}
	public Short getKid1Yod() {
		return kid1Yod;
	}
	public void setKid1Yod(Short kid1Yod) {
		this.kid1Yod = kid1Yod;
	}
	public Short getKid2Dem() {
		return kid2Dem;
	}
	public void setKid2Dem(Short kid2Dem) {
		this.kid2Dem = kid2Dem;
	}
	public Short getKid2Liv() {
		return kid2Liv;
	}
	public void setKid2Liv(Short kid2Liv) {
		this.kid2Liv = kid2Liv;
	}
	public Short getKid2Ons() {
		return kid2Ons;
	}
	public void setKid2Ons(Short kid2Ons) {
		this.kid2Ons = kid2Ons;
	}
	public Short getKid2Yob() {
		return kid2Yob;
	}
	public void setKid2Yob(Short kid2Yob) {
		this.kid2Yob = kid2Yob;
	}
	public Short getKid2Yod() {
		return kid2Yod;
	}
	public void setKid2Yod(Short kid2Yod) {
		this.kid2Yod = kid2Yod;
	}
	public Short getKid3Dem() {
		return kid3Dem;
	}
	public void setKid3Dem(Short kid3Dem) {
		this.kid3Dem = kid3Dem;
	}
	public Short getKid3Liv() {
		return kid3Liv;
	}
	public void setKid3Liv(Short kid3Liv) {
		this.kid3Liv = kid3Liv;
	}
	public Short getKid3Ons() {
		return kid3Ons;
	}
	public void setKid3Ons(Short kid3Ons) {
		this.kid3Ons = kid3Ons;
	}
	public Short getKid3Yob() {
		return kid3Yob;
	}
	public void setKid3Yob(Short kid3Yob) {
		this.kid3Yob = kid3Yob;
	}
	public Short getKid3Yod() {
		return kid3Yod;
	}
	public void setKid3Yod(Short kid3Yod) {
		this.kid3Yod = kid3Yod;
	}
	public Short getKid4Dem() {
		return kid4Dem;
	}
	public void setKid4Dem(Short kid4Dem) {
		this.kid4Dem = kid4Dem;
	}
	public Short getKid4Liv() {
		return kid4Liv;
	}
	public void setKid4Liv(Short kid4Liv) {
		this.kid4Liv = kid4Liv;
	}
	public Short getKid4Ons() {
		return kid4Ons;
	}
	public void setKid4Ons(Short kid4Ons) {
		this.kid4Ons = kid4Ons;
	}
	public Short getKid4Yob() {
		return kid4Yob;
	}
	public void setKid4Yob(Short kid4Yob) {
		this.kid4Yob = kid4Yob;
	}
	public Short getKid4Yod() {
		return kid4Yod;
	}
	public void setKid4Yod(Short kid4Yod) {
		this.kid4Yod = kid4Yod;
	}
	public Short getKid5Dem() {
		return kid5Dem;
	}
	public void setKid5Dem(Short kid5Dem) {
		this.kid5Dem = kid5Dem;
	}
	public Short getKid5Liv() {
		return kid5Liv;
	}
	public void setKid5Liv(Short kid5Liv) {
		this.kid5Liv = kid5Liv;
	}
	public Short getKid5Ons() {
		return kid5Ons;
	}
	public void setKid5Ons(Short kid5Ons) {
		this.kid5Ons = kid5Ons;
	}
	public Short getKid5Yob() {
		return kid5Yob;
	}
	public void setKid5Yob(Short kid5Yob) {
		this.kid5Yob = kid5Yob;
	}
	public Short getKid5Yod() {
		return kid5Yod;
	}
	public void setKid5Yod(Short kid5Yod) {
		this.kid5Yod = kid5Yod;
	}
	public Short getKid6Dem() {
		return kid6Dem;
	}
	public void setKid6Dem(Short kid6Dem) {
		this.kid6Dem = kid6Dem;
	}
	public Short getKid6Liv() {
		return kid6Liv;
	}
	public void setKid6Liv(Short kid6Liv) {
		this.kid6Liv = kid6Liv;
	}
	public Short getKid6Ons() {
		return kid6Ons;
	}
	public void setKid6Ons(Short kid6Ons) {
		this.kid6Ons = kid6Ons;
	}
	public Short getKid6Yob() {
		return kid6Yob;
	}
	public void setKid6Yob(Short kid6Yob) {
		this.kid6Yob = kid6Yob;
	}
	public Short getKid6Yod() {
		return kid6Yod;
	}
	public void setKid6Yod(Short kid6Yod) {
		this.kid6Yod = kid6Yod;
	}
	public Short getKid7Dem() {
		return kid7Dem;
	}
	public void setKid7Dem(Short kid7Dem) {
		this.kid7Dem = kid7Dem;
	}
	public Short getKid7Liv() {
		return kid7Liv;
	}
	public void setKid7Liv(Short kid7Liv) {
		this.kid7Liv = kid7Liv;
	}
	public Short getKid7Ons() {
		return kid7Ons;
	}
	public void setKid7Ons(Short kid7Ons) {
		this.kid7Ons = kid7Ons;
	}
	public Short getKid7Yob() {
		return kid7Yob;
	}
	public void setKid7Yob(Short kid7Yob) {
		this.kid7Yob = kid7Yob;
	}
	public Short getKid7Yod() {
		return kid7Yod;
	}
	public void setKid7Yod(Short kid7Yod) {
		this.kid7Yod = kid7Yod;
	}
	public Short getKid8Dem() {
		return kid8Dem;
	}
	public void setKid8Dem(Short kid8Dem) {
		this.kid8Dem = kid8Dem;
	}
	public Short getKid8Liv() {
		return kid8Liv;
	}
	public void setKid8Liv(Short kid8Liv) {
		this.kid8Liv = kid8Liv;
	}
	public Short getKid8Ons() {
		return kid8Ons;
	}
	public void setKid8Ons(Short kid8Ons) {
		this.kid8Ons = kid8Ons;
	}
	public Short getKid8Yob() {
		return kid8Yob;
	}
	public void setKid8Yob(Short kid8Yob) {
		this.kid8Yob = kid8Yob;
	}
	public Short getKid8Yod() {
		return kid8Yod;
	}
	public void setKid8Yod(Short kid8Yod) {
		this.kid8Yod = kid8Yod;
	}
	public Short getKid9Dem() {
		return kid9Dem;
	}
	public void setKid9Dem(Short kid9Dem) {
		this.kid9Dem = kid9Dem;
	}
	public Short getKid9Liv() {
		return kid9Liv;
	}
	public void setKid9Liv(Short kid9Liv) {
		this.kid9Liv = kid9Liv;
	}
	public Short getKid9Ons() {
		return kid9Ons;
	}
	public void setKid9Ons(Short kid9Ons) {
		this.kid9Ons = kid9Ons;
	}
	public Short getKid9Yob() {
		return kid9Yob;
	}
	public void setKid9Yob(Short kid9Yob) {
		this.kid9Yob = kid9Yob;
	}
	public Short getKid9Yod() {
		return kid9Yod;
	}
	public void setKid9Yod(Short kid9Yod) {
		this.kid9Yod = kid9Yod;
	}
	public Short getKids() {
		return kids;
	}
	public void setKids(Short kids) {
		this.kids = kids;
	}
	public Short getMomDem() {
		return momDem;
	}
	public void setMomDem(Short momDem) {
		this.momDem = momDem;
	}
	public Short getMomLiv() {
		return momLiv;
	}
	public void setMomLiv(Short momLiv) {
		this.momLiv = momLiv;
	}
	public Short getMomOnset() {
		return momOnset;
	}
	public void setMomOnset(Short momOnset) {
		this.momOnset = momOnset;
	}
	public Short getMomYob() {
		return momYob;
	}
	public void setMomYob(Short momYob) {
		this.momYob = momYob;
	}
	public Short getMomYod() {
		return momYod;
	}
	public void setMomYod(Short momYod) {
		this.momYod = momYod;
	}
	public Short getRel10Liv() {
		return rel10Liv;
	}
	public void setRel10Liv(Short rel10Liv) {
		this.rel10Liv = rel10Liv;
	}
	public Short getRel10Ons() {
		return rel10Ons;
	}
	public void setRel10Ons(Short rel10Ons) {
		this.rel10Ons = rel10Ons;
	}
	public Short getRel10Yob() {
		return rel10Yob;
	}
	public void setRel10Yob(Short rel10Yob) {
		this.rel10Yob = rel10Yob;
	}
	public Short getRel10Yod() {
		return rel10Yod;
	}
	public void setRel10Yod(Short rel10Yod) {
		this.rel10Yod = rel10Yod;
	}
	public Short getRel11Liv() {
		return rel11Liv;
	}
	public void setRel11Liv(Short rel11Liv) {
		this.rel11Liv = rel11Liv;
	}
	public Short getRel11Ons() {
		return rel11Ons;
	}
	public void setRel11Ons(Short rel11Ons) {
		this.rel11Ons = rel11Ons;
	}
	public Short getRel11Yob() {
		return rel11Yob;
	}
	public void setRel11Yob(Short rel11Yob) {
		this.rel11Yob = rel11Yob;
	}
	public Short getRel11Yod() {
		return rel11Yod;
	}
	public void setRel11Yod(Short rel11Yod) {
		this.rel11Yod = rel11Yod;
	}
	public Short getRel12Liv() {
		return rel12Liv;
	}
	public void setRel12Liv(Short rel12Liv) {
		this.rel12Liv = rel12Liv;
	}
	public Short getRel12Ons() {
		return rel12Ons;
	}
	public void setRel12Ons(Short rel12Ons) {
		this.rel12Ons = rel12Ons;
	}
	public Short getRel12Yob() {
		return rel12Yob;
	}
	public void setRel12Yob(Short rel12Yob) {
		this.rel12Yob = rel12Yob;
	}
	public Short getRel12Yod() {
		return rel12Yod;
	}
	public void setRel12Yod(Short rel12Yod) {
		this.rel12Yod = rel12Yod;
	}
	public Short getRel13Liv() {
		return rel13Liv;
	}
	public void setRel13Liv(Short rel13Liv) {
		this.rel13Liv = rel13Liv;
	}
	public Short getRel13Ons() {
		return rel13Ons;
	}
	public void setRel13Ons(Short rel13Ons) {
		this.rel13Ons = rel13Ons;
	}
	public Short getRel13Yob() {
		return rel13Yob;
	}
	public void setRel13Yob(Short rel13Yob) {
		this.rel13Yob = rel13Yob;
	}
	public Short getRel13Yod() {
		return rel13Yod;
	}
	public void setRel13Yod(Short rel13Yod) {
		this.rel13Yod = rel13Yod;
	}
	public Short getRel14Liv() {
		return rel14Liv;
	}
	public void setRel14Liv(Short rel14Liv) {
		this.rel14Liv = rel14Liv;
	}
	public Short getRel14Ons() {
		return rel14Ons;
	}
	public void setRel14Ons(Short rel14Ons) {
		this.rel14Ons = rel14Ons;
	}
	public Short getRel14Yob() {
		return rel14Yob;
	}
	public void setRel14Yob(Short rel14Yob) {
		this.rel14Yob = rel14Yob;
	}
	public Short getRel14Yod() {
		return rel14Yod;
	}
	public void setRel14Yod(Short rel14Yod) {
		this.rel14Yod = rel14Yod;
	}
	public Short getRel15Liv() {
		return rel15Liv;
	}
	public void setRel15Liv(Short rel15Liv) {
		this.rel15Liv = rel15Liv;
	}
	public Short getRel15Ons() {
		return rel15Ons;
	}
	public void setRel15Ons(Short rel15Ons) {
		this.rel15Ons = rel15Ons;
	}
	public Short getRel15Yob() {
		return rel15Yob;
	}
	public void setRel15Yob(Short rel15Yob) {
		this.rel15Yob = rel15Yob;
	}
	public Short getRel15Yod() {
		return rel15Yod;
	}
	public void setRel15Yod(Short rel15Yod) {
		this.rel15Yod = rel15Yod;
	}
	public Short getRel1Liv() {
		return rel1Liv;
	}
	public void setRel1Liv(Short rel1Liv) {
		this.rel1Liv = rel1Liv;
	}
	public Short getRel1Ons() {
		return rel1Ons;
	}
	public void setRel1Ons(Short rel1Ons) {
		this.rel1Ons = rel1Ons;
	}
	public Short getRel1Yob() {
		return rel1Yob;
	}
	public void setRel1Yob(Short rel1Yob) {
		this.rel1Yob = rel1Yob;
	}
	public Short getRel1Yod() {
		return rel1Yod;
	}
	public void setRel1Yod(Short rel1Yod) {
		this.rel1Yod = rel1Yod;
	}
	public Short getRel2Liv() {
		return rel2Liv;
	}
	public void setRel2Liv(Short rel2Liv) {
		this.rel2Liv = rel2Liv;
	}
	public Short getRel2Ons() {
		return rel2Ons;
	}
	public void setRel2Ons(Short rel2Ons) {
		this.rel2Ons = rel2Ons;
	}
	public Short getRel2Yob() {
		return rel2Yob;
	}
	public void setRel2Yob(Short rel2Yob) {
		this.rel2Yob = rel2Yob;
	}
	public Short getRel2Yod() {
		return rel2Yod;
	}
	public void setRel2Yod(Short rel2Yod) {
		this.rel2Yod = rel2Yod;
	}
	public Short getRel3Liv() {
		return rel3Liv;
	}
	public void setRel3Liv(Short rel3Liv) {
		this.rel3Liv = rel3Liv;
	}
	public Short getRel3Ons() {
		return rel3Ons;
	}
	public void setRel3Ons(Short rel3Ons) {
		this.rel3Ons = rel3Ons;
	}
	public Short getRel3Yob() {
		return rel3Yob;
	}
	public void setRel3Yob(Short rel3Yob) {
		this.rel3Yob = rel3Yob;
	}
	public Short getRel3Yod() {
		return rel3Yod;
	}
	public void setRel3Yod(Short rel3Yod) {
		this.rel3Yod = rel3Yod;
	}
	public Short getRel4Liv() {
		return rel4Liv;
	}
	public void setRel4Liv(Short rel4Liv) {
		this.rel4Liv = rel4Liv;
	}
	public Short getRel4Ons() {
		return rel4Ons;
	}
	public void setRel4Ons(Short rel4Ons) {
		this.rel4Ons = rel4Ons;
	}
	public Short getRel4Yob() {
		return rel4Yob;
	}
	public void setRel4Yob(Short rel4Yob) {
		this.rel4Yob = rel4Yob;
	}
	public Short getRel4Yod() {
		return rel4Yod;
	}
	public void setRel4Yod(Short rel4Yod) {
		this.rel4Yod = rel4Yod;
	}
	public Short getRel5Liv() {
		return rel5Liv;
	}
	public void setRel5Liv(Short rel5Liv) {
		this.rel5Liv = rel5Liv;
	}
	public Short getRel5Ons() {
		return rel5Ons;
	}
	public void setRel5Ons(Short rel5Ons) {
		this.rel5Ons = rel5Ons;
	}
	public Short getRel5Yob() {
		return rel5Yob;
	}
	public void setRel5Yob(Short rel5Yob) {
		this.rel5Yob = rel5Yob;
	}
	public Short getRel5Yod() {
		return rel5Yod;
	}
	public void setRel5Yod(Short rel5Yod) {
		this.rel5Yod = rel5Yod;
	}
	public Short getRel6Liv() {
		return rel6Liv;
	}
	public void setRel6Liv(Short rel6Liv) {
		this.rel6Liv = rel6Liv;
	}
	public Short getRel6Ons() {
		return rel6Ons;
	}
	public void setRel6Ons(Short rel6Ons) {
		this.rel6Ons = rel6Ons;
	}
	public Short getRel6Yob() {
		return rel6Yob;
	}
	public void setRel6Yob(Short rel6Yob) {
		this.rel6Yob = rel6Yob;
	}
	public Short getRel6Yod() {
		return rel6Yod;
	}
	public void setRel6Yod(Short rel6Yod) {
		this.rel6Yod = rel6Yod;
	}
	public Short getRel7Liv() {
		return rel7Liv;
	}
	public void setRel7Liv(Short rel7Liv) {
		this.rel7Liv = rel7Liv;
	}
	public Short getRel7Ons() {
		return rel7Ons;
	}
	public void setRel7Ons(Short rel7Ons) {
		this.rel7Ons = rel7Ons;
	}
	public Short getRel7Yob() {
		return rel7Yob;
	}
	public void setRel7Yob(Short rel7Yob) {
		this.rel7Yob = rel7Yob;
	}
	public Short getRel7Yod() {
		return rel7Yod;
	}
	public void setRel7Yod(Short rel7Yod) {
		this.rel7Yod = rel7Yod;
	}
	public Short getRel8Liv() {
		return rel8Liv;
	}
	public void setRel8Liv(Short rel8Liv) {
		this.rel8Liv = rel8Liv;
	}
	public Short getRel8Ons() {
		return rel8Ons;
	}
	public void setRel8Ons(Short rel8Ons) {
		this.rel8Ons = rel8Ons;
	}
	public Short getRel8Yob() {
		return rel8Yob;
	}
	public void setRel8Yob(Short rel8Yob) {
		this.rel8Yob = rel8Yob;
	}
	public Short getRel8Yod() {
		return rel8Yod;
	}
	public void setRel8Yod(Short rel8Yod) {
		this.rel8Yod = rel8Yod;
	}
	public Short getRel9Liv() {
		return rel9Liv;
	}
	public void setRel9Liv(Short rel9Liv) {
		this.rel9Liv = rel9Liv;
	}
	public Short getRel9Ons() {
		return rel9Ons;
	}
	public void setRel9Ons(Short rel9Ons) {
		this.rel9Ons = rel9Ons;
	}
	public Short getRel9Yob() {
		return rel9Yob;
	}
	public void setRel9Yob(Short rel9Yob) {
		this.rel9Yob = rel9Yob;
	}
	public Short getRel9Yod() {
		return rel9Yod;
	}
	public void setRel9Yod(Short rel9Yod) {
		this.rel9Yod = rel9Yod;
	}
	public Short getRelsDem() {
		return relsDem;
	}
	public void setRelsDem(Short relsDem) {
		this.relsDem = relsDem;
	}
	public Short getSib10Dem() {
		return sib10Dem;
	}
	public void setSib10Dem(Short sib10Dem) {
		this.sib10Dem = sib10Dem;
	}
	public Short getSib10Liv() {
		return sib10Liv;
	}
	public void setSib10Liv(Short sib10Liv) {
		this.sib10Liv = sib10Liv;
	}
	public Short getSib10Ons() {
		return sib10Ons;
	}
	public void setSib10Ons(Short sib10Ons) {
		this.sib10Ons = sib10Ons;
	}
	public Short getSib10Yob() {
		return sib10Yob;
	}
	public void setSib10Yob(Short sib10Yob) {
		this.sib10Yob = sib10Yob;
	}
	public Short getSib10Yod() {
		return sib10Yod;
	}
	public void setSib10Yod(Short sib10Yod) {
		this.sib10Yod = sib10Yod;
	}
	public Short getSib11Dem() {
		return sib11Dem;
	}
	public void setSib11Dem(Short sib11Dem) {
		this.sib11Dem = sib11Dem;
	}
	public Short getSib11Liv() {
		return sib11Liv;
	}
	public void setSib11Liv(Short sib11Liv) {
		this.sib11Liv = sib11Liv;
	}
	public Short getSib11Ons() {
		return sib11Ons;
	}
	public void setSib11Ons(Short sib11Ons) {
		this.sib11Ons = sib11Ons;
	}
	public Short getSib11Yob() {
		return sib11Yob;
	}
	public void setSib11Yob(Short sib11Yob) {
		this.sib11Yob = sib11Yob;
	}
	public Short getSib11Yod() {
		return sib11Yod;
	}
	public void setSib11Yod(Short sib11Yod) {
		this.sib11Yod = sib11Yod;
	}
	public Short getSib12Dem() {
		return sib12Dem;
	}
	public void setSib12Dem(Short sib12Dem) {
		this.sib12Dem = sib12Dem;
	}
	public Short getSib12Liv() {
		return sib12Liv;
	}
	public void setSib12Liv(Short sib12Liv) {
		this.sib12Liv = sib12Liv;
	}
	public Short getSib12Ons() {
		return sib12Ons;
	}
	public void setSib12Ons(Short sib12Ons) {
		this.sib12Ons = sib12Ons;
	}
	public Short getSib12Yob() {
		return sib12Yob;
	}
	public void setSib12Yob(Short sib12Yob) {
		this.sib12Yob = sib12Yob;
	}
	public Short getSib12Yod() {
		return sib12Yod;
	}
	public void setSib12Yod(Short sib12Yod) {
		this.sib12Yod = sib12Yod;
	}
	public Short getSib13Dem() {
		return sib13Dem;
	}
	public void setSib13Dem(Short sib13Dem) {
		this.sib13Dem = sib13Dem;
	}
	public Short getSib13Liv() {
		return sib13Liv;
	}
	public void setSib13Liv(Short sib13Liv) {
		this.sib13Liv = sib13Liv;
	}
	public Short getSib13Ons() {
		return sib13Ons;
	}
	public void setSib13Ons(Short sib13Ons) {
		this.sib13Ons = sib13Ons;
	}
	public Short getSib13Yob() {
		return sib13Yob;
	}
	public void setSib13Yob(Short sib13Yob) {
		this.sib13Yob = sib13Yob;
	}
	public Short getSib13Yod() {
		return sib13Yod;
	}
	public void setSib13Yod(Short sib13Yod) {
		this.sib13Yod = sib13Yod;
	}
	public Short getSib14Dem() {
		return sib14Dem;
	}
	public void setSib14Dem(Short sib14Dem) {
		this.sib14Dem = sib14Dem;
	}
	public Short getSib14Liv() {
		return sib14Liv;
	}
	public void setSib14Liv(Short sib14Liv) {
		this.sib14Liv = sib14Liv;
	}
	public Short getSib14Ons() {
		return sib14Ons;
	}
	public void setSib14Ons(Short sib14Ons) {
		this.sib14Ons = sib14Ons;
	}
	public Short getSib14Yob() {
		return sib14Yob;
	}
	public void setSib14Yob(Short sib14Yob) {
		this.sib14Yob = sib14Yob;
	}
	public Short getSib14Yod() {
		return sib14Yod;
	}
	public void setSib14Yod(Short sib14Yod) {
		this.sib14Yod = sib14Yod;
	}
	public Short getSib15Dem() {
		return sib15Dem;
	}
	public void setSib15Dem(Short sib15Dem) {
		this.sib15Dem = sib15Dem;
	}
	public Short getSib15Liv() {
		return sib15Liv;
	}
	public void setSib15Liv(Short sib15Liv) {
		this.sib15Liv = sib15Liv;
	}
	public Short getSib15Ons() {
		return sib15Ons;
	}
	public void setSib15Ons(Short sib15Ons) {
		this.sib15Ons = sib15Ons;
	}
	public Short getSib15Yob() {
		return sib15Yob;
	}
	public void setSib15Yob(Short sib15Yob) {
		this.sib15Yob = sib15Yob;
	}
	public Short getSib15Yod() {
		return sib15Yod;
	}
	public void setSib15Yod(Short sib15Yod) {
		this.sib15Yod = sib15Yod;
	}
	public Short getSib16Dem() {
		return sib16Dem;
	}
	public void setSib16Dem(Short sib16Dem) {
		this.sib16Dem = sib16Dem;
	}
	public Short getSib16Liv() {
		return sib16Liv;
	}
	public void setSib16Liv(Short sib16Liv) {
		this.sib16Liv = sib16Liv;
	}
	public Short getSib16Ons() {
		return sib16Ons;
	}
	public void setSib16Ons(Short sib16Ons) {
		this.sib16Ons = sib16Ons;
	}
	public Short getSib16Yob() {
		return sib16Yob;
	}
	public void setSib16Yob(Short sib16Yob) {
		this.sib16Yob = sib16Yob;
	}
	public Short getSib16Yod() {
		return sib16Yod;
	}
	public void setSib16Yod(Short sib16Yod) {
		this.sib16Yod = sib16Yod;
	}
	public Short getSib17Dem() {
		return sib17Dem;
	}
	public void setSib17Dem(Short sib17Dem) {
		this.sib17Dem = sib17Dem;
	}
	public Short getSib17Liv() {
		return sib17Liv;
	}
	public void setSib17Liv(Short sib17Liv) {
		this.sib17Liv = sib17Liv;
	}
	public Short getSib17Ons() {
		return sib17Ons;
	}
	public void setSib17Ons(Short sib17Ons) {
		this.sib17Ons = sib17Ons;
	}
	public Short getSib17Yob() {
		return sib17Yob;
	}
	public void setSib17Yob(Short sib17Yob) {
		this.sib17Yob = sib17Yob;
	}
	public Short getSib17Yod() {
		return sib17Yod;
	}
	public void setSib17Yod(Short sib17Yod) {
		this.sib17Yod = sib17Yod;
	}
	public Short getSib18Dem() {
		return sib18Dem;
	}
	public void setSib18Dem(Short sib18Dem) {
		this.sib18Dem = sib18Dem;
	}
	public Short getSib18Liv() {
		return sib18Liv;
	}
	public void setSib18Liv(Short sib18Liv) {
		this.sib18Liv = sib18Liv;
	}
	public Short getSib18Ons() {
		return sib18Ons;
	}
	public void setSib18Ons(Short sib18Ons) {
		this.sib18Ons = sib18Ons;
	}
	public Short getSib18Yob() {
		return sib18Yob;
	}
	public void setSib18Yob(Short sib18Yob) {
		this.sib18Yob = sib18Yob;
	}
	public Short getSib18Yod() {
		return sib18Yod;
	}
	public void setSib18Yod(Short sib18Yod) {
		this.sib18Yod = sib18Yod;
	}
	public Short getSib19Dem() {
		return sib19Dem;
	}
	public void setSib19Dem(Short sib19Dem) {
		this.sib19Dem = sib19Dem;
	}
	public Short getSib19Liv() {
		return sib19Liv;
	}
	public void setSib19Liv(Short sib19Liv) {
		this.sib19Liv = sib19Liv;
	}
	public Short getSib19Ons() {
		return sib19Ons;
	}
	public void setSib19Ons(Short sib19Ons) {
		this.sib19Ons = sib19Ons;
	}
	public Short getSib19Yob() {
		return sib19Yob;
	}
	public void setSib19Yob(Short sib19Yob) {
		this.sib19Yob = sib19Yob;
	}
	public Short getSib19Yod() {
		return sib19Yod;
	}
	public void setSib19Yod(Short sib19Yod) {
		this.sib19Yod = sib19Yod;
	}
	public Short getSib1Dem() {
		return sib1Dem;
	}
	public void setSib1Dem(Short sib1Dem) {
		this.sib1Dem = sib1Dem;
	}
	public Short getSib1Liv() {
		return sib1Liv;
	}
	public void setSib1Liv(Short sib1Liv) {
		this.sib1Liv = sib1Liv;
	}
	public Short getSib1Ons() {
		return sib1Ons;
	}
	public void setSib1Ons(Short sib1Ons) {
		this.sib1Ons = sib1Ons;
	}
	public Short getSib1Yob() {
		return sib1Yob;
	}
	public void setSib1Yob(Short sib1Yob) {
		this.sib1Yob = sib1Yob;
	}
	public Short getSib1Yod() {
		return sib1Yod;
	}
	public void setSib1Yod(Short sib1Yod) {
		this.sib1Yod = sib1Yod;
	}
	public Short getSib20Dem() {
		return sib20Dem;
	}
	public void setSib20Dem(Short sib20Dem) {
		this.sib20Dem = sib20Dem;
	}
	public Short getSib20Liv() {
		return sib20Liv;
	}
	public void setSib20Liv(Short sib20Liv) {
		this.sib20Liv = sib20Liv;
	}
	public Short getSib20Ons() {
		return sib20Ons;
	}
	public void setSib20Ons(Short sib20Ons) {
		this.sib20Ons = sib20Ons;
	}
	public Short getSib20Yob() {
		return sib20Yob;
	}
	public void setSib20Yob(Short sib20Yob) {
		this.sib20Yob = sib20Yob;
	}
	public Short getSib20Yod() {
		return sib20Yod;
	}
	public void setSib20Yod(Short sib20Yod) {
		this.sib20Yod = sib20Yod;
	}
	public Short getSib2Dem() {
		return sib2Dem;
	}
	public void setSib2Dem(Short sib2Dem) {
		this.sib2Dem = sib2Dem;
	}
	public Short getSib2Liv() {
		return sib2Liv;
	}
	public void setSib2Liv(Short sib2Liv) {
		this.sib2Liv = sib2Liv;
	}
	public Short getSib2Ons() {
		return sib2Ons;
	}
	public void setSib2Ons(Short sib2Ons) {
		this.sib2Ons = sib2Ons;
	}
	public Short getSib2Yob() {
		return sib2Yob;
	}
	public void setSib2Yob(Short sib2Yob) {
		this.sib2Yob = sib2Yob;
	}
	public Short getSib2Yod() {
		return sib2Yod;
	}
	public void setSib2Yod(Short sib2Yod) {
		this.sib2Yod = sib2Yod;
	}
	public Short getSib3Dem() {
		return sib3Dem;
	}
	public void setSib3Dem(Short sib3Dem) {
		this.sib3Dem = sib3Dem;
	}
	public Short getSib3Liv() {
		return sib3Liv;
	}
	public void setSib3Liv(Short sib3Liv) {
		this.sib3Liv = sib3Liv;
	}
	public Short getSib3Ons() {
		return sib3Ons;
	}
	public void setSib3Ons(Short sib3Ons) {
		this.sib3Ons = sib3Ons;
	}
	public Short getSib3Yob() {
		return sib3Yob;
	}
	public void setSib3Yob(Short sib3Yob) {
		this.sib3Yob = sib3Yob;
	}
	public Short getSib3Yod() {
		return sib3Yod;
	}
	public void setSib3Yod(Short sib3Yod) {
		this.sib3Yod = sib3Yod;
	}
	public Short getSib4Dem() {
		return sib4Dem;
	}
	public void setSib4Dem(Short sib4Dem) {
		this.sib4Dem = sib4Dem;
	}
	public Short getSib4Liv() {
		return sib4Liv;
	}
	public void setSib4Liv(Short sib4Liv) {
		this.sib4Liv = sib4Liv;
	}
	public Short getSib4Ons() {
		return sib4Ons;
	}
	public void setSib4Ons(Short sib4Ons) {
		this.sib4Ons = sib4Ons;
	}
	public Short getSib4Yob() {
		return sib4Yob;
	}
	public void setSib4Yob(Short sib4Yob) {
		this.sib4Yob = sib4Yob;
	}
	public Short getSib4Yod() {
		return sib4Yod;
	}
	public void setSib4Yod(Short sib4Yod) {
		this.sib4Yod = sib4Yod;
	}
	public Short getSib5Dem() {
		return sib5Dem;
	}
	public void setSib5Dem(Short sib5Dem) {
		this.sib5Dem = sib5Dem;
	}
	public Short getSib5Liv() {
		return sib5Liv;
	}
	public void setSib5Liv(Short sib5Liv) {
		this.sib5Liv = sib5Liv;
	}
	public Short getSib5Ons() {
		return sib5Ons;
	}
	public void setSib5Ons(Short sib5Ons) {
		this.sib5Ons = sib5Ons;
	}
	public Short getSib5Yob() {
		return sib5Yob;
	}
	public void setSib5Yob(Short sib5Yob) {
		this.sib5Yob = sib5Yob;
	}
	public Short getSib5Yod() {
		return sib5Yod;
	}
	public void setSib5Yod(Short sib5Yod) {
		this.sib5Yod = sib5Yod;
	}
	public Short getSib6Dem() {
		return sib6Dem;
	}
	public void setSib6Dem(Short sib6Dem) {
		this.sib6Dem = sib6Dem;
	}
	public Short getSib6Liv() {
		return sib6Liv;
	}
	public void setSib6Liv(Short sib6Liv) {
		this.sib6Liv = sib6Liv;
	}
	public Short getSib6Ons() {
		return sib6Ons;
	}
	public void setSib6Ons(Short sib6Ons) {
		this.sib6Ons = sib6Ons;
	}
	public Short getSib6Yob() {
		return sib6Yob;
	}
	public void setSib6Yob(Short sib6Yob) {
		this.sib6Yob = sib6Yob;
	}
	public Short getSib6Yod() {
		return sib6Yod;
	}
	public void setSib6Yod(Short sib6Yod) {
		this.sib6Yod = sib6Yod;
	}
	public Short getSib7Dem() {
		return sib7Dem;
	}
	public void setSib7Dem(Short sib7Dem) {
		this.sib7Dem = sib7Dem;
	}
	public Short getSib7Liv() {
		return sib7Liv;
	}
	public void setSib7Liv(Short sib7Liv) {
		this.sib7Liv = sib7Liv;
	}
	public Short getSib7Ons() {
		return sib7Ons;
	}
	public void setSib7Ons(Short sib7Ons) {
		this.sib7Ons = sib7Ons;
	}
	public Short getSib7Yob() {
		return sib7Yob;
	}
	public void setSib7Yob(Short sib7Yob) {
		this.sib7Yob = sib7Yob;
	}
	public Short getSib7Yod() {
		return sib7Yod;
	}
	public void setSib7Yod(Short sib7Yod) {
		this.sib7Yod = sib7Yod;
	}
	public Short getSib8Dem() {
		return sib8Dem;
	}
	public void setSib8Dem(Short sib8Dem) {
		this.sib8Dem = sib8Dem;
	}
	public Short getSib8Liv() {
		return sib8Liv;
	}
	public void setSib8Liv(Short sib8Liv) {
		this.sib8Liv = sib8Liv;
	}
	public Short getSib8Ons() {
		return sib8Ons;
	}
	public void setSib8Ons(Short sib8Ons) {
		this.sib8Ons = sib8Ons;
	}
	public Short getSib8Yob() {
		return sib8Yob;
	}
	public void setSib8Yob(Short sib8Yob) {
		this.sib8Yob = sib8Yob;
	}
	public Short getSib8Yod() {
		return sib8Yod;
	}
	public void setSib8Yod(Short sib8Yod) {
		this.sib8Yod = sib8Yod;
	}
	public Short getSib9Dem() {
		return sib9Dem;
	}
	public void setSib9Dem(Short sib9Dem) {
		this.sib9Dem = sib9Dem;
	}
	public Short getSib9Liv() {
		return sib9Liv;
	}
	public void setSib9Liv(Short sib9Liv) {
		this.sib9Liv = sib9Liv;
	}
	public Short getSib9Ons() {
		return sib9Ons;
	}
	public void setSib9Ons(Short sib9Ons) {
		this.sib9Ons = sib9Ons;
	}
	public Short getSib9Yob() {
		return sib9Yob;
	}
	public void setSib9Yob(Short sib9Yob) {
		this.sib9Yob = sib9Yob;
	}
	public Short getSib9Yod() {
		return sib9Yod;
	}
	public void setSib9Yod(Short sib9Yod) {
		this.sib9Yod = sib9Yod;
	}
	public Short getSibs() {
		return sibs;
	}
	public void setSibs(Short sibs) {
		this.sibs = sibs;
	}
	public Short getTwin() {
		return twin;
	}
	public void setTwin(Short twin) {
		this.twin = twin;
	}
	public Short getTwinType() {
		return twinType;
	}
	public void setTwinType(Short twinType) {
		this.twinType = twinType;
	}
	
	public String[] getRequiredResultFields() {
		return new String[] {
				   "momYob",
		           "momLiv",
		           "momYod",
		           "momDem",
		           "momOnset",
		           "dadYob",
		           "dadLiv",
		           "dadYod",
		           "dadDem",
		           "dadOnset",
		           "twin",
		           "twinType",
		           "sibs",
		           "sib1Liv",
		           "sib1Yod",
		           "sib1Dem",
		           "sib1Ons",
		           "sib2Liv",
		           "sib2Yod",
		           "sib2Dem",
		           "sib2Ons",
		           "sib3Liv",
		           "sib3Yod",
		           "sib3Dem",
		           "sib3Ons",
		           "sib4Liv",
		           "sib4Yod",
		           "sib4Dem",
		           "sib4Ons",
		           "sib5Liv",
		           "sib5Yod",
		           "sib5Dem",
		           "sib5Ons",
		           "sib6Liv",
		           "sib6Yod",
		           "sib6Dem",
		           "sib6Ons",
		           "sib7Liv",
		           "sib7Yod",
		           "sib7Dem",
		           "sib7Ons",
		           "sib8Liv",
		           "sib8Yod",
		           "sib8Dem",
		           "sib8Ons",
		           "sib9Liv",
		           "sib9Yod",
		           "sib9Dem",
		           "sib9Ons",
		           "sib10Liv",
		           "sib10Yod",
		           "sib10Dem",
		           "sib10Ons",
		           "sib11Liv",
		           "sib11Yod",
		           "sib11Dem",
		           "sib11Ons",
		           "sib12Liv",
		           "sib12Yod",
		           "sib12Dem",
		           "sib12Ons",
		           "sib13Liv",
		           "sib13Yod",
		           "sib13Dem",
		           "sib13Ons",
		           "sib14Liv",
		           "sib14Yod",
		           "sib14Dem",
		           "sib14Ons",
		           "sib15Liv",
		           "sib15Yod",
		           "sib15Dem",
		           "sib15Ons",
		           "sib16Liv",
		           "sib16Yod",
		           "sib16Dem",
		           "sib16Ons",
		           "sib17Liv",
		           "sib17Yod",
		           "sib17Dem",
		           "sib17Ons",
		           "sib18Liv",
		           "sib18Yod",
		           "sib18Dem",
		           "sib18Ons",
		           "sib19Liv",
		           "sib19Yod",
		           "sib19Dem",
		           "sib19Ons",
		           "sib20Liv",
		           "sib20Yod",
		           "sib20Dem",
		           "sib20Ons",
		           "kids",
		           "kid1Liv",
		           "kid1Yod",
		           "kid1Dem",
		           "kid1Ons",
		           "kid2Liv",
		           "kid2Yod",
		           "kid2Dem",
		           "kid2Ons",
		           "kid3Liv",
		           "kid3Yod",
		           "kid3Dem",
		           "kid3Ons",
		           "kid4Liv",
		           "kid4Yod",
		           "kid4Dem",
		           "kid4Ons",
		           "kid5Liv",
		           "kid5Yod",
		           "kid5Dem",
		           "kid5Ons",
		           "kid6Liv",
		           "kid6Yod",
		           "kid6Dem",
		           "kid6Ons",
		           "kid7Liv",
		           "kid7Yod",
		           "kid7Dem",
		           "kid7Ons",
		           "kid8Liv",
		           "kid8Yod",
		           "kid8Dem",
		           "kid8Ons",
		           "kid9Liv",
		           "kid9Yod",
		           "kid9Dem",
		           "kid9Ons",
		           "kid10Liv",
		           "kid10Yod",
		           "kid10Dem",
		           "kid10Ons",
		           "kid11Liv",
		           "kid11Yod",
		           "kid11Dem",
		           "kid11Ons",
		           "kid12Liv",
		           "kid12Yod",
		           "kid12Dem",
		           "kid12Ons",
		           "kid13Liv",
		           "kid13Yod",
		           "kid13Dem",
		           "kid13Ons",
		           "kid14Liv",
		           "kid14Yod",
		           "kid14Dem",
		           "kid14Ons",
		           "kid15Liv",
		           "kid15Yod",
		           "kid15Dem",
		           "kid15Ons",
		           "relsDem",
		           "rel1Liv",
		           "rel1Yod",
		           "rel1Ons",
		           "rel2Liv",
		           "rel2Yod",
		           "rel2Ons",
		           "rel3Liv",
		           "rel3Yod",
		           "rel3Ons",
		           "rel4Liv",
		           "rel4Yod",
		           "rel4Ons",
		           "rel5Liv",
		           "rel5Yod",
		           "rel5Ons",
		           "rel6Liv",
		           "rel6Yod",
		           "rel6Ons",
		           "rel7Liv",
		           "rel7Yod",
		           "rel7Ons",
		           "rel8Liv",
		           "rel8Yod",
		           "rel8Ons",
		           "rel9Liv",
		           "rel9Yod",
		           "rel9Ons",
		           "rel10Liv",
		           "rel10Yod",
		           "rel10Ons",
		           "rel11Liv",
		           "rel11Yod",
		           "rel11Ons",
		           "rel12Liv",
		           "rel12Yod",
		           "rel12Ons",
		           "rel13Liv",
		           "rel13Yod",
		           "rel13Ons",
		           "rel14Liv",
		           "rel14Yod",
		           "rel14Ons",
		           "rel15Liv",
		           "rel15Yod",
		           "rel15Ons"};
	}
	
	
	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getPacket().equals("I")){
			buffer.append(UdsUploadUtils.formatField(getMomYob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomLiv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomYod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadYob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadLiv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadYod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTwin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTwinType())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRelsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Ons()));

		}
		else if(getPacket().equals("T") || getPacket().equals("F")){
			buffer.append(UdsUploadUtils.formatField(getA3Chg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomYob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomLiv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomYod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadYob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadLiv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadYod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadOnset())).append(",");
			//EMORY change: follow-up visits will not submit these two Twin fields
			//buffer.append(UdsUploadUtils.formatField(getTwin())).append(",");
			//buffer.append(UdsUploadUtils.formatField(getTwinType())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib7Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib8Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib9Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib10Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib11Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib12Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib13Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib14Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib15Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib16Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib17Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib18Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib19Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib20Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKidChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid7Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid8Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid9Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid10Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid11Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid12Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid13Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid14Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Dem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKid15Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRelChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRelsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel7Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel8Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel9Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel10Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel11Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel12Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel13Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel14Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Yob())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Liv())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Yod())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel15Ons()));

		}
	return buffer.toString();
	}
}


