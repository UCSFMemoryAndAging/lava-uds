package edu.ucsf.lava.crms.assessment.model;

import java.util.Calendar;
import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class NaccPathology extends Instrument {
	public static EntityManager MANAGER = new EntityBase.Manager(NaccPathology.class);
	
	public NaccPathology() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public NaccPathology(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setInstrVer("9");
	}

	
	
	
	private String ptid;
	private Date npform;
	private Short npformmo;
	private Short npformdy;
	private Short npformyr;
	private String npid;
	private Short npsex;
	private Short npdage;
	private Date npdod;
	private Short npdodmo;
	private Short npdoddy;
	private Short npdodyr;
	private String submissionstatus;
	private String statnote;
	private String subdate;
	private Short npgross;
	private Short npnit;
	private Short npcerad;
	private Short npadrda;
	private Short npocrit;
	private Short npbraak;
	private Short npneur;
	private Short npdiff;
	private Short npvasc;
	private Short nplinf;
	private Short npmicro;
	private Short nplac;
	private Short nphem;
	private Short npart;
	private Short npnec;
	private Short npscl;
	private Short npavas;
	private Short nparter;
	private Short npamy;
	private Short npoang;
	private Short npvoth;
	private Short nplewy;
	private Short nplewycs;
	private Short nppick;
	private Short npcort;
	private Short npprog;
	private Short npfront;
	private Short nptau;
	private Short npftd;
	private Short npftdno;
	private Short npftdspc;
	private Short npcj;
	private Short npprion;
	private Short npmajor;
	private String npmpath1;
	private String npmpath2;
	private String npmpath3;
	private Short npgene;
	private String npfhspec;
	private Short npapoe;
	private Short nptauhap;
	private Short npprnp;
	private Short npchrom;
	private Short nppnorm;
	private Short npcnorm;
	private Short nppadp;
	private Short npcadp;
	private Short nppad;
	private Short npcad;
	private Short npplewy;
	private Short npclewy;
	private Short nppvasc;
	private Short npcvasc;
	private Short nppftld;
	private Short npcftld;
	private Short npphipp;
	private Short npchipp;
	private Short nppprion;
	private Short npcprion;
	private Short nppoth1;
	private Short npcoth1;
	private String npoth1x;
	private Short nppoth2;
	private Short npcoth2;
	private String npoth2x;
	private Short nppoth3;
	private Short npcoth3;
	private String npoth3x;
	private Short npbrfrzn;
	private Short npbrfrm;
	private Short npbrparf;
	private Short npcsfant;

	

	//update nacc pathology fields based on the data collection date
	public void setDcDate(Date dcDate) {
		super.setDcDate(dcDate);
		setNpform(dcDate);
	}

	//update nacc pathology fields based on the patient
	public void setPatient(Patient patient) {
		super.setPatient(patient);
			
		if(patient == null){
			setPtid(null);
			setNpdod(null);
			setNpsex(null);
			setNpdage(null);
			return;
		}
		setPtid((patient.getId()!= null)?patient.getId().toString():null);
		setNpdod(patient.getDeathDate());
		setNpsex(patient.getGender().shortValue());
		setNpdage(patient.getAge().shortValue());
	}

	public Short getNpadrda() {
		return npadrda;
	}

	public void setNpadrda(Short npadrda) {
		this.npadrda = npadrda;
	}

	public Short getNpamy() {
		return npamy;
	}

	public void setNpamy(Short npamy) {
		this.npamy = npamy;
	}

	public Short getNpapoe() {
		return npapoe;
	}

	public void setNpapoe(Short npapoe) {
		this.npapoe = npapoe;
	}

	public Short getNpart() {
		return npart;
	}

	public void setNpart(Short npart) {
		this.npart = npart;
	}

	public Short getNparter() {
		return nparter;
	}

	public void setNparter(Short nparter) {
		this.nparter = nparter;
	}

	public Short getNpavas() {
		return npavas;
	}

	public void setNpavas(Short npavas) {
		this.npavas = npavas;
	}

	public Short getNpbraak() {
		return npbraak;
	}

	public void setNpbraak(Short npbraak) {
		this.npbraak = npbraak;
	}

	public Short getNpbrfrm() {
		return npbrfrm;
	}

	public void setNpbrfrm(Short npbrfrm) {
		this.npbrfrm = npbrfrm;
	}

	public Short getNpbrfrzn() {
		return npbrfrzn;
	}

	public void setNpbrfrzn(Short npbrfrzn) {
		this.npbrfrzn = npbrfrzn;
	}

	public Short getNpbrparf() {
		return npbrparf;
	}

	public void setNpbrparf(Short npbrparf) {
		this.npbrparf = npbrparf;
	}

	public Short getNpcad() {
		return npcad;
	}

	public void setNpcad(Short npcad) {
		this.npcad = npcad;
	}

	public Short getNpcadp() {
		return npcadp;
	}

	public void setNpcadp(Short npcadp) {
		this.npcadp = npcadp;
	}

	public Short getNpcerad() {
		return npcerad;
	}

	public void setNpcerad(Short npcerad) {
		this.npcerad = npcerad;
	}

	public Short getNpcftld() {
		return npcftld;
	}

	public void setNpcftld(Short npcftld) {
		this.npcftld = npcftld;
	}

	public Short getNpchipp() {
		return npchipp;
	}

	public void setNpchipp(Short npchipp) {
		this.npchipp = npchipp;
	}

	public Short getNpchrom() {
		return npchrom;
	}

	public void setNpchrom(Short npchrom) {
		this.npchrom = npchrom;
	}

	public Short getNpcj() {
		return npcj;
	}

	public void setNpcj(Short npcj) {
		this.npcj = npcj;
	}

	public Short getNpclewy() {
		return npclewy;
	}

	public void setNpclewy(Short npclewy) {
		this.npclewy = npclewy;
	}

	public Short getNpcnorm() {
		return npcnorm;
	}

	public void setNpcnorm(Short npcnorm) {
		this.npcnorm = npcnorm;
	}

	public Short getNpcort() {
		return npcort;
	}

	public void setNpcort(Short npcort) {
		this.npcort = npcort;
	}

	public Short getNpcoth1() {
		return npcoth1;
	}

	public void setNpcoth1(Short npcoth1) {
		this.npcoth1 = npcoth1;
	}

	public Short getNpcoth2() {
		return npcoth2;
	}

	public void setNpcoth2(Short npcoth2) {
		this.npcoth2 = npcoth2;
	}

	public Short getNpcoth3() {
		return npcoth3;
	}

	public void setNpcoth3(Short npcoth3) {
		this.npcoth3 = npcoth3;
	}

	public Short getNpcprion() {
		return npcprion;
	}

	public void setNpcprion(Short npcprion) {
		this.npcprion = npcprion;
	}

	public Short getNpcsfant() {
		return npcsfant;
	}

	public void setNpcsfant(Short npcsfant) {
		this.npcsfant = npcsfant;
	}

	public Short getNpcvasc() {
		return npcvasc;
	}

	public void setNpcvasc(Short npcvasc) {
		this.npcvasc = npcvasc;
	}

	public Short getNpdage() {
		return npdage;
	}

	public void setNpdage(Short npdage) {
		this.npdage = npdage;
	}

	public Short getNpdiff() {
		return npdiff;
	}

	public void setNpdiff(Short npdiff) {
		this.npdiff = npdiff;
	}

	public Date getNpdod() {
		return npdod;
	}

	public void setNpdod(Date npdod) {
		this.npdod = npdod;
		if(this.npdod == null){
			npdoddy = npdodmo = npdodyr = null;
		}else{
			Calendar c = Calendar.getInstance();
			c.setTime(this.npdod);
			npdoddy = (short)c.get(c.DAY_OF_MONTH);
			npdodmo = (short)c.get(c.MONTH);
			npdodyr = (short)c.get(c.YEAR);
		}
	}

	public Short getNpdoddy() {
		return npdoddy;
	}

	public void setNpdoddy(Short npdoddy) {
		this.npdoddy = npdoddy;
	}

	public Short getNpdodmo() {
		return npdodmo;
	}

	public void setNpdodmo(Short npdodmo) {
		this.npdodmo = npdodmo;
	}

	public Short getNpdodyr() {
		return npdodyr;
	}

	public void setNpdodyr(Short npdodyr) {
		this.npdodyr = npdodyr;
	}

	public String getNpfhspec() {
		return npfhspec;
	}

	public void setNpfhspec(String npfhspec) {
		this.npfhspec = npfhspec;
	}

	public Date getNpform() {
		return npform;
	}

	public void setNpform(Date npform) {
		this.npform = npform;
		if(this.npform == null){
			npformdy = npformmo = npformyr = null;
		}else{
			Calendar c = Calendar.getInstance();
			c.setTime(this.npform);
			npformdy = (short)c.get(c.DAY_OF_MONTH);
			npformmo = (short)c.get(c.MONTH);
			npformyr = (short)c.get(c.YEAR);
		}
	}

	public Short getNpformdy() {
		return npformdy;
	}

	public void setNpformdy(Short npformdy) {
		this.npformdy = npformdy;
	}

	public Short getNpformmo() {
		return npformmo;
	}

	public void setNpformmo(Short npformmo) {
		this.npformmo = npformmo;
	}

	public Short getNpformyr() {
		return npformyr;
	}

	public void setNpformyr(Short npformyr) {
		this.npformyr = npformyr;
	}

	public Short getNpfront() {
		return npfront;
	}

	public void setNpfront(Short npfront) {
		this.npfront = npfront;
	}

	public Short getNpftd() {
		return npftd;
	}

	public void setNpftd(Short npftd) {
		this.npftd = npftd;
	}

	public Short getNpftdno() {
		return npftdno;
	}

	public void setNpftdno(Short npftdno) {
		this.npftdno = npftdno;
	}

	public Short getNpftdspc() {
		return npftdspc;
	}

	public void setNpftdspc(Short npftdspc) {
		this.npftdspc = npftdspc;
	}

	public Short getNpgene() {
		return npgene;
	}

	public void setNpgene(Short npgene) {
		this.npgene = npgene;
	}

	public Short getNpgross() {
		return npgross;
	}

	public void setNpgross(Short npgross) {
		this.npgross = npgross;
	}

	public Short getNphem() {
		return nphem;
	}

	public void setNphem(Short nphem) {
		this.nphem = nphem;
	}

	public String getNpid() {
		return npid;
	}

	public void setNpid(String npid) {
		this.npid = npid;
	}

	public Short getNplac() {
		return nplac;
	}

	public void setNplac(Short nplac) {
		this.nplac = nplac;
	}

	public Short getNplewy() {
		return nplewy;
	}

	public void setNplewy(Short nplewy) {
		this.nplewy = nplewy;
	}

	public Short getNplewycs() {
		return nplewycs;
	}

	public void setNplewycs(Short nplewycs) {
		this.nplewycs = nplewycs;
	}

	public Short getNplinf() {
		return nplinf;
	}

	public void setNplinf(Short nplinf) {
		this.nplinf = nplinf;
	}

	public Short getNpmajor() {
		return npmajor;
	}

	public void setNpmajor(Short npmajor) {
		this.npmajor = npmajor;
	}

	public Short getNpmicro() {
		return npmicro;
	}

	public void setNpmicro(Short npmicro) {
		this.npmicro = npmicro;
	}

	public String getNpmpath1() {
		return npmpath1;
	}

	public void setNpmpath1(String npmpath1) {
		this.npmpath1 = npmpath1;
	}

	public String getNpmpath2() {
		return npmpath2;
	}

	public void setNpmpath2(String npmpath2) {
		this.npmpath2 = npmpath2;
	}

	public String getNpmpath3() {
		return npmpath3;
	}

	public void setNpmpath3(String npmpath3) {
		this.npmpath3 = npmpath3;
	}

	public Short getNpnec() {
		return npnec;
	}

	public void setNpnec(Short npnec) {
		this.npnec = npnec;
	}

	public Short getNpneur() {
		return npneur;
	}

	public void setNpneur(Short npneur) {
		this.npneur = npneur;
	}

	public Short getNpnit() {
		return npnit;
	}

	public void setNpnit(Short npnit) {
		this.npnit = npnit;
	}

	public Short getNpoang() {
		return npoang;
	}

	public void setNpoang(Short npoang) {
		this.npoang = npoang;
	}

	public Short getNpocrit() {
		return npocrit;
	}

	public void setNpocrit(Short npocrit) {
		this.npocrit = npocrit;
	}

	public String getNpoth1x() {
		return npoth1x;
	}

	public void setNpoth1x(String npoth1x) {
		this.npoth1x = npoth1x;
	}

	public String getNpoth2x() {
		return npoth2x;
	}

	public void setNpoth2x(String npoth2x) {
		this.npoth2x = npoth2x;
	}

	public String getNpoth3x() {
		return npoth3x;
	}

	public void setNpoth3x(String npoth3x) {
		this.npoth3x = npoth3x;
	}

	public Short getNppad() {
		return nppad;
	}

	public void setNppad(Short nppad) {
		this.nppad = nppad;
	}

	public Short getNppadp() {
		return nppadp;
	}

	public void setNppadp(Short nppadp) {
		this.nppadp = nppadp;
	}

	public Short getNppftld() {
		return nppftld;
	}

	public void setNppftld(Short nppftld) {
		this.nppftld = nppftld;
	}

	public Short getNpphipp() {
		return npphipp;
	}

	public void setNpphipp(Short npphipp) {
		this.npphipp = npphipp;
	}

	public Short getNppick() {
		return nppick;
	}

	public void setNppick(Short nppick) {
		this.nppick = nppick;
	}

	public Short getNpplewy() {
		return npplewy;
	}

	public void setNpplewy(Short npplewy) {
		this.npplewy = npplewy;
	}

	public Short getNppnorm() {
		return nppnorm;
	}

	public void setNppnorm(Short nppnorm) {
		this.nppnorm = nppnorm;
	}

	public Short getNppoth1() {
		return nppoth1;
	}

	public void setNppoth1(Short nppoth1) {
		this.nppoth1 = nppoth1;
	}

	public Short getNppoth2() {
		return nppoth2;
	}

	public void setNppoth2(Short nppoth2) {
		this.nppoth2 = nppoth2;
	}

	public Short getNppoth3() {
		return nppoth3;
	}

	public void setNppoth3(Short nppoth3) {
		this.nppoth3 = nppoth3;
	}

	public Short getNppprion() {
		return nppprion;
	}

	public void setNppprion(Short nppprion) {
		this.nppprion = nppprion;
	}

	public Short getNpprion() {
		return npprion;
	}

	public void setNpprion(Short npprion) {
		this.npprion = npprion;
	}

	public Short getNpprnp() {
		return npprnp;
	}

	public void setNpprnp(Short npprnp) {
		this.npprnp = npprnp;
	}

	public Short getNpprog() {
		return npprog;
	}

	public void setNpprog(Short npprog) {
		this.npprog = npprog;
	}

	public Short getNppvasc() {
		return nppvasc;
	}

	public void setNppvasc(Short nppvasc) {
		this.nppvasc = nppvasc;
	}

	public Short getNpscl() {
		return npscl;
	}

	public void setNpscl(Short npscl) {
		this.npscl = npscl;
	}

	public Short getNpsex() {
		return npsex;
	}

	public void setNpsex(Short npsex) {
		this.npsex = npsex;
	}

	public Short getNptau() {
		return nptau;
	}

	public void setNptau(Short nptau) {
		this.nptau = nptau;
	}

	public Short getNptauhap() {
		return nptauhap;
	}

	public void setNptauhap(Short nptauhap) {
		this.nptauhap = nptauhap;
	}

	public Short getNpvasc() {
		return npvasc;
	}

	public void setNpvasc(Short npvasc) {
		this.npvasc = npvasc;
	}

	public Short getNpvoth() {
		return npvoth;
	}

	public void setNpvoth(Short npvoth) {
		this.npvoth = npvoth;
	}

	public String getPtid() {
		return ptid;
	}

	public void setPtid(String ptid) {
		this.ptid = ptid;
	}

	public String getStatnote() {
		return statnote;
	}

	public void setStatnote(String statnote) {
		this.statnote = statnote;
	}

	public String getSubdate() {
		return subdate;
	}

	public void setSubdate(String subdate) {
		this.subdate = subdate;
	}

	public String getSubmissionstatus() {
		return submissionstatus;
	}

	public void setSubmissionstatus(String submissionstatus) {
		this.submissionstatus = submissionstatus;
	}

	
	
	
	public String[] getRequiredResultFields(String instrVer) {
		String[] required = new String[] {
		           "npid",
		           "npgross",
		           "npnit",
		           "npcerad",
		           "npadrda",
		           "npocrit",
		           "npbraak",
		           "npneur",
		           "npdiff",
		           "npvasc",
		           "nplinf",
		           "npmicro",
		           "nplac",
		           "nphem",
		           "npart",
		           "npnec",
		           "npscl",
		           "npavas",
		           "nparter",
		           "npamy",
		           "npoang",
		           "npvoth",
		           "nplewy",
		           "nplewycs",
		           "nppick",
		           "npcort",
		           "npprog",
		           "npfront",
		           "nptau",
		           "npftd",
		           "npftdno",
		           "npftdspc",
		           "npcj",
		           "npprion",
		           "npmajor",
		           "npgene",
		           "npapoe",
		           "nptauhap",
		           "npprnp",
		           "npchrom",
		           "nppnorm",
		           "npcnorm",
		           "nppadp",
		           "npcadp",
		           "nppad",
		           "npcad",
		           "npplewy",
		           "npclewy",
		           "nppvasc",
		           "npcvasc",
		           "nppftld",
		           "npcftld",
		           "npphipp",
		           "npchipp",
		           "nppprion",
		           "npcprion",
		           "nppoth1",
		           "npcoth1",
		           "nppoth2",
		           "npcoth2",
		           "nppoth3",
		           "npcoth3",
		           "npbrfrzn",
		           "npbrfrm",
		           "npbrparf",
		           "npcsfant"};
		return required;
	}

}
