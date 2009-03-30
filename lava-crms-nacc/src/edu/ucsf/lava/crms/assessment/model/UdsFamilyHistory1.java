package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFamilyHistory1 extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFamilyHistory1.class);
	public static final String UDS_FAMILY_HISTORY_FORMID = "A3";
	
	public UdsFamilyHistory1() {}
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFamilyHistory1(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FAMILY_HISTORY_FORMID);		
	}
	
	// note: id inherited from Instrument

	private Short a3Chg;
	private Short parChg;
	private Short momDem;
	private Short momOnset;
	private Short momAge;
	private Short momDAge;
	private Short dadDem;
	private Short dadOnset;
	private Short dadAge;
	private Short dadDAge;
	private Short sibChg;
	private Short twin;
	private Short twinType;
	private Short sibs;
	private Short sibsDem;
	private Short sib1Ons;
	private Short sib1Age;
	private Short sib2Ons;
	private Short sib2Age;
	private Short sib3Ons;
	private Short sib3Age;
	private Short sib4Ons;
	private Short sib4Age;
	private Short sib5Ons;
	private Short sib5Age;
	private Short sib6Ons;
	private Short sib6Age;
	private Short kidChg;
	private Short kids;
	private Short kidsDem;
	private Short kids1Ons;
	private Short kids1Age;
	private Short kids2Ons;
	private Short kids2Age;
	private Short kids3Ons;
	private Short kids3Age;
	private Short kids4Ons;
	private Short kids4Age;
	private Short kids5Ons;
	private Short kids5Age;
	private Short kids6Ons;
	private Short kids6Age;
	private Short relChg;
	private Short relsDem;
	private Short rel1Ons;
	private Short rel1Age;
	private Short rel2Ons;
	private Short rel2Age;
	private Short rel3Ons;
	private Short rel3Age;
	private Short rel4Ons;
	private Short rel4Age;
	private Short rel5Ons;
	private Short rel5Age;
	private Short rel6Ons;
	private Short rel6Age;
		
	
	
	//Entity Name should not have version, based on class name
	public String getEntityName() {
		
		return "UDSFamilyHistory";
	}

	public Short getA3Chg() {
		return a3Chg;
	}

	public void setA3Chg(Short a3Chg) {
		this.a3Chg = a3Chg;
	}

	public Short getDadAge() {
		return dadAge;
	}

	public void setDadAge(Short dadAge) {
		this.dadAge = dadAge;
	}

	public Short getDadDAge() {
		return dadDAge;
	}

	public void setDadDAge(Short dadDAge) {
		this.dadDAge = dadDAge;
	}

	public Short getDadDem() {
		return dadDem;
	}

	public void setDadDem(Short dadDem) {
		this.dadDem = dadDem;
	}

	public Short getDadOnset() {
		return dadOnset;
	}

	public void setDadOnset(Short dadOnset) {
		this.dadOnset = dadOnset;
	}

	

	public Short getKidChg() {
		return kidChg;
	}

	public void setKidChg(Short kidChg) {
		this.kidChg = kidChg;
	}

	public Short getKids() {
		return kids;
	}

	public void setKids(Short kids) {
		this.kids = kids;
	}

	public Short getKids1Age() {
		return kids1Age;
	}

	public void setKids1Age(Short kids1Age) {
		this.kids1Age = kids1Age;
	}

	public Short getKids1Ons() {
		return kids1Ons;
	}

	public void setKids1Ons(Short kids1Ons) {
		this.kids1Ons = kids1Ons;
	}

	public Short getKids2Age() {
		return kids2Age;
	}

	public void setKids2Age(Short kids2Age) {
		this.kids2Age = kids2Age;
	}

	public Short getKids2Ons() {
		return kids2Ons;
	}

	public void setKids2Ons(Short kids2Ons) {
		this.kids2Ons = kids2Ons;
	}

	public Short getKids3Age() {
		return kids3Age;
	}

	public void setKids3Age(Short kids3Age) {
		this.kids3Age = kids3Age;
	}

	public Short getKids3Ons() {
		return kids3Ons;
	}

	public void setKids3Ons(Short kids3Ons) {
		this.kids3Ons = kids3Ons;
	}

	public Short getKids4Age() {
		return kids4Age;
	}

	public void setKids4Age(Short kids4Age) {
		this.kids4Age = kids4Age;
	}

	public Short getKids4Ons() {
		return kids4Ons;
	}

	public void setKids4Ons(Short kids4Ons) {
		this.kids4Ons = kids4Ons;
	}

	public Short getKids5Age() {
		return kids5Age;
	}

	public void setKids5Age(Short kids5Age) {
		this.kids5Age = kids5Age;
	}

	public Short getKids5Ons() {
		return kids5Ons;
	}

	public void setKids5Ons(Short kids5Ons) {
		this.kids5Ons = kids5Ons;
	}

	public Short getKids6Age() {
		return kids6Age;
	}

	public void setKids6Age(Short kids6Age) {
		this.kids6Age = kids6Age;
	}

	public Short getKids6Ons() {
		return kids6Ons;
	}

	public void setKids6Ons(Short kids6Ons) {
		this.kids6Ons = kids6Ons;
	}

	public Short getKidsDem() {
		return kidsDem;
	}

	public void setKidsDem(Short kidsDem) {
		this.kidsDem = kidsDem;
	}

	public Short getMomAge() {
		return momAge;
	}

	public void setMomAge(Short momAge) {
		this.momAge = momAge;
	}

	public Short getMomDAge() {
		return momDAge;
	}

	public void setMomDAge(Short momDAge) {
		this.momDAge = momDAge;
	}

	public Short getMomDem() {
		return momDem;
	}

	public void setMomDem(Short momDem) {
		this.momDem = momDem;
	}

	public Short getMomOnset() {
		return momOnset;
	}

	public void setMomOnset(Short momOnset) {
		this.momOnset = momOnset;
	}

	public Short getParChg() {
		return parChg;
	}

	public void setParChg(Short parChg) {
		this.parChg = parChg;
	}

	public Short getRel1Age() {
		return rel1Age;
	}

	public void setRel1Age(Short rel1Age) {
		this.rel1Age = rel1Age;
	}

	public Short getRel1Ons() {
		return rel1Ons;
	}

	public void setRel1Ons(Short rel1Ons) {
		this.rel1Ons = rel1Ons;
	}

	public Short getRel2Age() {
		return rel2Age;
	}

	public void setRel2Age(Short rel2Age) {
		this.rel2Age = rel2Age;
	}

	public Short getRel2Ons() {
		return rel2Ons;
	}

	public void setRel2Ons(Short rel2Ons) {
		this.rel2Ons = rel2Ons;
	}

	public Short getRel3Age() {
		return rel3Age;
	}

	public void setRel3Age(Short rel3Age) {
		this.rel3Age = rel3Age;
	}

	public Short getRel3Ons() {
		return rel3Ons;
	}

	public void setRel3Ons(Short rel3Ons) {
		this.rel3Ons = rel3Ons;
	}

	public Short getRel4Age() {
		return rel4Age;
	}

	public void setRel4Age(Short rel4Age) {
		this.rel4Age = rel4Age;
	}

	public Short getRel4Ons() {
		return rel4Ons;
	}

	public void setRel4Ons(Short rel4Ons) {
		this.rel4Ons = rel4Ons;
	}

	public Short getRel5Age() {
		return rel5Age;
	}

	public void setRel5Age(Short rel5Age) {
		this.rel5Age = rel5Age;
	}

	public Short getRel5Ons() {
		return rel5Ons;
	}

	public void setRel5Ons(Short rel5Ons) {
		this.rel5Ons = rel5Ons;
	}

	public Short getRel6Age() {
		return rel6Age;
	}

	public void setRel6Age(Short rel6Age) {
		this.rel6Age = rel6Age;
	}

	public Short getRel6Ons() {
		return rel6Ons;
	}

	public void setRel6Ons(Short rel6Ons) {
		this.rel6Ons = rel6Ons;
	}

	public Short getRelChg() {
		return relChg;
	}

	public void setRelChg(Short relChg) {
		this.relChg = relChg;
	}

	public Short getRelsDem() {
		return relsDem;
	}

	public void setRelsDem(Short relsDem) {
		this.relsDem = relsDem;
	}

	public Short getSib1Age() {
		return sib1Age;
	}

	public void setSib1Age(Short sib1Age) {
		this.sib1Age = sib1Age;
	}

	public Short getSib1Ons() {
		return sib1Ons;
	}

	public void setSib1Ons(Short sib1Ons) {
		this.sib1Ons = sib1Ons;
	}

	public Short getSib2Age() {
		return sib2Age;
	}

	public void setSib2Age(Short sib2Age) {
		this.sib2Age = sib2Age;
	}

	public Short getSib2Ons() {
		return sib2Ons;
	}

	public void setSib2Ons(Short sib2Ons) {
		this.sib2Ons = sib2Ons;
	}

	public Short getSib3Age() {
		return sib3Age;
	}

	public void setSib3Age(Short sib3Age) {
		this.sib3Age = sib3Age;
	}

	public Short getSib3Ons() {
		return sib3Ons;
	}

	public void setSib3Ons(Short sib3Ons) {
		this.sib3Ons = sib3Ons;
	}

	public Short getSib4Age() {
		return sib4Age;
	}

	public void setSib4Age(Short sib4Age) {
		this.sib4Age = sib4Age;
	}

	public Short getSib4Ons() {
		return sib4Ons;
	}

	public void setSib4Ons(Short sib4Ons) {
		this.sib4Ons = sib4Ons;
	}

	public Short getSib5Age() {
		return sib5Age;
	}

	public void setSib5Age(Short sib5Age) {
		this.sib5Age = sib5Age;
	}

	public Short getSib5Ons() {
		return sib5Ons;
	}

	public void setSib5Ons(Short sib5Ons) {
		this.sib5Ons = sib5Ons;
	}

	public Short getSib6Age() {
		return sib6Age;
	}

	public void setSib6Age(Short sib6Age) {
		this.sib6Age = sib6Age;
	}

	public Short getSib6Ons() {
		return sib6Ons;
	}

	public void setSib6Ons(Short sib6Ons) {
		this.sib6Ons = sib6Ons;
	}

	public Short getSibChg() {
		return sibChg;
	}

	public void setSibChg(Short sibChg) {
		this.sibChg = sibChg;
	}

	public Short getSibs() {
		return sibs;
	}

	public void setSibs(Short sibs) {
		this.sibs = sibs;
	}

	public Short getSibsDem() {
		return sibsDem;
	}

	public void setSibsDem(Short sibsDem) {
		this.sibsDem = sibsDem;
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
				"a3Chg",
				"parChg",
				"momDem",
				"momOnset",
				"momAge",
				"momDAge",
				"dadDem",
				"dadOnset",
				"dadAge",
				"dadDAge",
				"sibChg",
				"twin",
				"twinType",
				"sibs",
				"sibsDem",
				"sib1Ons",
				"sib1Age",
				"sib2Ons",
				"sib2Age",
				"sib3Ons",
				"sib3Age",
				"sib4Ons",
				"sib4Age",
				"sib5Ons",
				"sib5Age",
				"sib6Ons",
				"sib6Age",
				"kidChg",
				"kids",
				"kidsDem",
				"kids1Ons",
				"kids1Age",
				"kids2Ons",
				"kids2Age",
				"kids3Ons",
				"kids3Age",
				"kids4Ons",
				"kids4Age",
				"kids5Ons",
				"kids5Age",
				"kids6Ons",
				"kids6Age",
				"relChg",
				"relsDem",
				"rel1Ons",
				"rel1Age",
				"rel2Ons",
				"rel2Age",
				"rel3Ons",
				"rel3Age",
				"rel4Ons",
				"rel4Age",
				"rel5Ons",
				"rel5Age",
				"rel6Ons",
				"rel6Age"
		};
	}

	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getPacket().equals("I")){
			buffer.append(UdsUploadUtils.formatField(getMomDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomDAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadDAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTwin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTwinType())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKidsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids1Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids2Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids3Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids4Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids5Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids6Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRelsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Age()));
		}
		else if(getPacket().equals("T") || getPacket().equals("F")){
			buffer.append(UdsUploadUtils.formatField(getA3Chg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getParChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getMomDAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadOnset())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getDadDAge())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTwin())).append(",");
			buffer.append(UdsUploadUtils.formatField(getTwinType())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibs())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSibsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib1Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib2Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib3Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib4Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib5Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getSib6Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKidChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKidsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids1Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids2Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids3Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids4Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids5Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getKids6Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRelChg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRelsDem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel1Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel2Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel3Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel4Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel5Age())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Ons())).append(",");
			buffer.append(UdsUploadUtils.formatField(getRel6Age()));

		}
	return buffer.toString();
	}
	
}


