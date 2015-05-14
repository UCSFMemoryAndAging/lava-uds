package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsNeuropsychMoca extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsNeuropsychMoca.class);
	public static final String UDS_NEUROPSYCHMOCA_FORMID = "C2";
	public UdsNeuropsychMoca() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsNeuropsychMoca(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_NEUROPSYCHMOCA_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short mocacomp;
	protected Short mocareas;
	protected Short mocaloc;
	protected Short mocalan;
	protected String mocalanx;
	protected Short mocavis;
	protected Short mocahear;
	protected Short mocatots;
	protected Short mocatrai;
	protected Short mocacube;
	protected Short mocacloc;
	protected Short mocaclon;
	protected Short mocacloh;
	protected Short mocanami;
	protected Short mocaregi;
	protected Short mocadigi;
	protected Short mocalett;
	protected Short mocaser7;
	protected Short mocarepe;
	protected Short mocaflue;
	protected Short mocaabst;
	protected Short mocarecn;
	protected Short mocarecc;
	protected Short mocarecr;
	protected Short mocaordt;
	protected Short mocaormo;
	protected Short mocaoryr;
	protected Short mocaordy;
	protected Short mocaorpl;
	protected Short mocaorct;
	protected Short npsycloc;
	protected Short npsylan;
	protected String npsylanx;
	protected Short craftvrs;
	protected Short crafturs;
	protected Short udsbentc;
	protected Short digforct;
	protected Short digforsl;
	protected Short digbacct;
	protected Short digbacls;
	protected Short animals;
	protected Short veg;
	protected Short traila;
	protected Short trailarr;
	protected Short trailali;
	protected Short trailb;
	protected Short trailbrr;
	protected Short trailbli;
	protected Short craftdvr;
	protected Short craftdre;
	protected Short craftdti;
	protected Short craftcue;
	protected Short udsbentd;
	protected Short udsbenrs;
	protected Short minttots;
	protected Short minttotw;
	protected Short mintscng;
	protected Short mintscnc;
	protected Short mintpcng;
	protected Short mintpcnc;
	protected Short udsverfc;
	protected Short udsverfn;
	protected Short udsvernf;
	protected Short udsverlc;
	protected Short udsverlr;
	protected Short udsverln;
	protected Short udsvertn;
	protected Short udsverte;
	protected Short udsverti;
	protected Short cogstat;
	
	public Short getMocacomp() {
		return mocacomp;
	}

	public void setMocacomp(Short mocacomp) {
		this.mocacomp = mocacomp;
	}

	public Short getMocareas() {
		return mocareas;
	}

	public void setMocareas(Short mocareas) {
		this.mocareas = mocareas;
	}

	public Short getMocaloc() {
		return mocaloc;
	}

	public void setMocaloc(Short mocaloc) {
		this.mocaloc = mocaloc;
	}

	public Short getMocalan() {
		return mocalan;
	}

	public void setMocalan(Short mocalan) {
		this.mocalan = mocalan;
	}

	public String getMocalanx() {
		return mocalanx;
	}

	public void setMocalanx(String mocalanx) {
		this.mocalanx = mocalanx;
	}

	public Short getMocavis() {
		return mocavis;
	}

	public void setMocavis(Short mocavis) {
		this.mocavis = mocavis;
	}

	public Short getMocahear() {
		return mocahear;
	}

	public void setMocahear(Short mocahear) {
		this.mocahear = mocahear;
	}

	public Short getMocatots() {
		return mocatots;
	}

	public void setMocatots(Short mocatots) {
		this.mocatots = mocatots;
	}

	public Short getMocatrai() {
		return mocatrai;
	}

	public void setMocatrai(Short mocatrai) {
		this.mocatrai = mocatrai;
	}

	public Short getMocacube() {
		return mocacube;
	}

	public void setMocacube(Short mocacube) {
		this.mocacube = mocacube;
	}

	public Short getMocacloc() {
		return mocacloc;
	}

	public void setMocacloc(Short mocacloc) {
		this.mocacloc = mocacloc;
	}

	public Short getMocaclon() {
		return mocaclon;
	}

	public void setMocaclon(Short mocaclon) {
		this.mocaclon = mocaclon;
	}

	public Short getMocacloh() {
		return mocacloh;
	}

	public void setMocacloh(Short mocacloh) {
		this.mocacloh = mocacloh;
	}

	public Short getMocanami() {
		return mocanami;
	}

	public void setMocanami(Short mocanami) {
		this.mocanami = mocanami;
	}

	public Short getMocaregi() {
		return mocaregi;
	}

	public void setMocaregi(Short mocaregi) {
		this.mocaregi = mocaregi;
	}

	public Short getMocadigi() {
		return mocadigi;
	}

	public void setMocadigi(Short mocadigi) {
		this.mocadigi = mocadigi;
	}

	public Short getMocalett() {
		return mocalett;
	}

	public void setMocalett(Short mocalett) {
		this.mocalett = mocalett;
	}

	public Short getMocaser7() {
		return mocaser7;
	}

	public void setMocaser7(Short mocaser7) {
		this.mocaser7 = mocaser7;
	}

	public Short getMocarepe() {
		return mocarepe;
	}

	public void setMocarepe(Short mocarepe) {
		this.mocarepe = mocarepe;
	}

	public Short getMocaflue() {
		return mocaflue;
	}

	public void setMocaflue(Short mocaflue) {
		this.mocaflue = mocaflue;
	}

	public Short getMocaabst() {
		return mocaabst;
	}

	public void setMocaabst(Short mocaabst) {
		this.mocaabst = mocaabst;
	}

	public Short getMocarecn() {
		return mocarecn;
	}

	public void setMocarecn(Short mocarecn) {
		this.mocarecn = mocarecn;
	}

	public Short getMocarecc() {
		return mocarecc;
	}

	public void setMocarecc(Short mocarecc) {
		this.mocarecc = mocarecc;
	}

	public Short getMocarecr() {
		return mocarecr;
	}

	public void setMocarecr(Short mocarecr) {
		this.mocarecr = mocarecr;
	}

	public Short getMocaordt() {
		return mocaordt;
	}

	public void setMocaordt(Short mocaordt) {
		this.mocaordt = mocaordt;
	}

	public Short getMocaormo() {
		return mocaormo;
	}

	public void setMocaormo(Short mocaormo) {
		this.mocaormo = mocaormo;
	}

	public Short getMocaoryr() {
		return mocaoryr;
	}

	public void setMocaoryr(Short mocaoryr) {
		this.mocaoryr = mocaoryr;
	}

	public Short getMocaordy() {
		return mocaordy;
	}

	public void setMocaordy(Short mocaordy) {
		this.mocaordy = mocaordy;
	}

	public Short getMocaorpl() {
		return mocaorpl;
	}

	public void setMocaorpl(Short mocaorpl) {
		this.mocaorpl = mocaorpl;
	}

	public Short getMocaorct() {
		return mocaorct;
	}

	public void setMocaorct(Short mocaorct) {
		this.mocaorct = mocaorct;
	}

	public Short getNpsycloc() {
		return npsycloc;
	}

	public void setNpsycloc(Short npsycloc) {
		this.npsycloc = npsycloc;
	}

	public Short getNpsylan() {
		return npsylan;
	}

	public void setNpsylan(Short npsylan) {
		this.npsylan = npsylan;
	}

	public String getNpsylanx() {
		return npsylanx;
	}

	public void setNpsylanx(String npsylanx) {
		this.npsylanx = npsylanx;
	}

	public Short getCraftvrs() {
		return craftvrs;
	}

	public void setCraftvrs(Short craftvrs) {
		this.craftvrs = craftvrs;
	}

	public Short getCrafturs() {
		return crafturs;
	}

	public void setCrafturs(Short crafturs) {
		this.crafturs = crafturs;
	}

	public Short getUdsbentc() {
		return udsbentc;
	}

	public void setUdsbentc(Short udsbentc) {
		this.udsbentc = udsbentc;
	}

	public Short getDigforct() {
		return digforct;
	}

	public void setDigforct(Short digforct) {
		this.digforct = digforct;
	}

	public Short getDigforsl() {
		return digforsl;
	}

	public void setDigforsl(Short digforsl) {
		this.digforsl = digforsl;
	}

	public Short getDigbacct() {
		return digbacct;
	}

	public void setDigbacct(Short digbacct) {
		this.digbacct = digbacct;
	}

	public Short getDigbacls() {
		return digbacls;
	}

	public void setDigbacls(Short digbacls) {
		this.digbacls = digbacls;
	}

	public Short getAnimals() {
		return animals;
	}

	public void setAnimals(Short animals) {
		this.animals = animals;
	}

	public Short getVeg() {
		return veg;
	}

	public void setVeg(Short veg) {
		this.veg = veg;
	}

	public Short getTraila() {
		return traila;
	}

	public void setTraila(Short traila) {
		this.traila = traila;
	}

	public Short getTrailarr() {
		return trailarr;
	}

	public void setTrailarr(Short trailarr) {
		this.trailarr = trailarr;
	}

	public Short getTrailali() {
		return trailali;
	}

	public void setTrailali(Short trailali) {
		this.trailali = trailali;
	}

	public Short getTrailb() {
		return trailb;
	}

	public void setTrailb(Short trailb) {
		this.trailb = trailb;
	}

	public Short getTrailbrr() {
		return trailbrr;
	}

	public void setTrailbrr(Short trailbrr) {
		this.trailbrr = trailbrr;
	}

	public Short getTrailbli() {
		return trailbli;
	}

	public void setTrailbli(Short trailbli) {
		this.trailbli = trailbli;
	}

	public Short getCraftdvr() {
		return craftdvr;
	}

	public void setCraftdvr(Short craftdvr) {
		this.craftdvr = craftdvr;
	}

	public Short getCraftdre() {
		return craftdre;
	}

	public void setCraftdre(Short craftdre) {
		this.craftdre = craftdre;
	}

	public Short getCraftdti() {
		return craftdti;
	}

	public void setCraftdti(Short craftdti) {
		this.craftdti = craftdti;
	}

	public Short getCraftcue() {
		return craftcue;
	}

	public void setCraftcue(Short craftcue) {
		this.craftcue = craftcue;
	}

	public Short getUdsbentd() {
		return udsbentd;
	}

	public void setUdsbentd(Short udsbentd) {
		this.udsbentd = udsbentd;
	}

	public Short getUdsbenrs() {
		return udsbenrs;
	}

	public void setUdsbenrs(Short udsbenrs) {
		this.udsbenrs = udsbenrs;
	}

	public Short getMinttots() {
		return minttots;
	}

	public void setMinttots(Short minttots) {
		this.minttots = minttots;
	}

	public Short getMinttotw() {
		return minttotw;
	}

	public void setMinttotw(Short minttotw) {
		this.minttotw = minttotw;
	}

	public Short getMintscng() {
		return mintscng;
	}

	public void setMintscng(Short mintscng) {
		this.mintscng = mintscng;
	}

	public Short getMintscnc() {
		return mintscnc;
	}

	public void setMintscnc(Short mintscnc) {
		this.mintscnc = mintscnc;
	}

	public Short getMintpcng() {
		return mintpcng;
	}

	public void setMintpcng(Short mintpcng) {
		this.mintpcng = mintpcng;
	}

	public Short getMintpcnc() {
		return mintpcnc;
	}

	public void setMintpcnc(Short mintpcnc) {
		this.mintpcnc = mintpcnc;
	}

	public Short getUdsverfc() {
		return udsverfc;
	}

	public void setUdsverfc(Short udsverfc) {
		this.udsverfc = udsverfc;
	}

	public Short getUdsverfn() {
		return udsverfn;
	}

	public void setUdsverfn(Short udsverfn) {
		this.udsverfn = udsverfn;
	}

	public Short getUdsvernf() {
		return udsvernf;
	}

	public void setUdsvernf(Short udsvernf) {
		this.udsvernf = udsvernf;
	}

	public Short getUdsverlc() {
		return udsverlc;
	}

	public void setUdsverlc(Short udsverlc) {
		this.udsverlc = udsverlc;
	}

	public Short getUdsverlr() {
		return udsverlr;
	}

	public void setUdsverlr(Short udsverlr) {
		this.udsverlr = udsverlr;
	}

	public Short getUdsverln() {
		return udsverln;
	}

	public void setUdsverln(Short udsverln) {
		this.udsverln = udsverln;
	}

	public Short getUdsvertn() {
		return udsvertn;
	}

	public void setUdsvertn(Short udsvertn) {
		this.udsvertn = udsvertn;
	}

	public Short getUdsverte() {
		return udsverte;
	}

	public void setUdsverte(Short udsverte) {
		this.udsverte = udsverte;
	}

	public Short getUdsverti() {
		return udsverti;
	}

	public void setUdsverti(Short udsverti) {
		this.udsverti = udsverti;
	}

	public Short getCogstat() {
		return cogstat;
	}

	public void setCogstat(Short cogstat) {
		this.cogstat = cogstat;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
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
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getMocacomp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocareas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaloc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocalan())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocalanx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocavis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocahear())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocatots())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocatrai())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocacube())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocacloc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaclon())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocacloh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocanami())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaregi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocadigi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocalett())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaser7())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocarepe())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaflue())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaabst())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocarecn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocarecc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocarecr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaordt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaormo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaoryr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaordy())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaorpl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMocaorct())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNpsycloc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNpsylan())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNpsylanx())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCraftvrs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCrafturs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsbentc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDigforct())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDigforsl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDigbacct())).append(",");
		buffer.append(UdsUploadUtils.formatField(getDigbacls())).append(",");
		buffer.append(UdsUploadUtils.formatField(getAnimals())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVeg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTraila())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTrailarr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTrailali())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTrailb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTrailbrr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTrailbli())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCraftdvr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCraftdre())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCraftdti())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCraftcue())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsbentd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsbenrs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMinttots())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMinttotw())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMintscng())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMintscnc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMintpcng())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMintpcnc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverfc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverfn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsvernf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverlc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverlr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverln())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsvertn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverte())).append(",");
		buffer.append(UdsUploadUtils.formatField(getUdsverti())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCogstat()));
		return buffer.toString();
	}
	
}
