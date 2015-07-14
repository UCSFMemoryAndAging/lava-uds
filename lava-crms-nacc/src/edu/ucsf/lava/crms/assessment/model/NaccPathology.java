package edu.ucsf.lava.crms.assessment.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import edu.ucsf.lava.core.list.ListManager;
import edu.ucsf.lava.core.manager.CoreManagerUtils;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class NaccPathology extends Instrument implements UdsUploadable {
	public static EntityManager MANAGER = new EntityBase.Manager(NaccPathology.class);
	
	public NaccPathology() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public NaccPathology(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setInstrVer("10");
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
	private Short npbparf;
	private Short npcsfant;

	//Version 10
	private Float nppmih;
	private Short npfix;
	private String npfixx;
	private Short npwbrwt;
	private Short npwbrf;
	private Short npgrcca;
	private Short npgrla;
	private Short npgrha;
	private Short npgrsnh;
	private Short npgrlch;
	private Short nptan;
	private String nptanx;
	private Short npaban;
	private String npabanx;
	private Short npasan;
	private String npasanx;
	private Short nptdpan;
	private String nptdpanx;
	private Short nphismb;
	private Short nphisg;
	private Short nphisss;
	private Short nphist;
	private Short nphiso;
	private String nphisox;
	private Short npthal;
	private Short npadnc;
	private Short npinf;
	private Short npinf1a;
	private Float npinf1b;
	private Float npinf1d;
	private Float npinf1f;
	private Short npinf2a;
	private Float npinf2b;
	private Float npinf2d;
	private Float npinf2f;
	private Short npinf3a;
	private Float npinf3b;
	private Float npinf3d;
	private Float npinf3f;
	private Short npinf4a;
	private Float npinf4b;
	private Float npinf4d;
	private Float npinf4f;
	private Short nphemo;
	private Short nphemo1;
	private Short nphemo2;
	private Short nphemo3;
	private Short npold;
	private Short npold1;
	private Short npold2;
	private Short npold3;
	private Short npold4;
	private Short npoldd;
	private Short npoldd1;
	private Short npoldd2;
	private Short npoldd3;
	private Short npoldd4;
	private Short npwmr;
	private Short nppath;
	private Short nppath2;
	private Short nppath3;
	private Short nppath4;
	private Short nppath5;
	private Short nppath6;
	private Short nppath7;
	private Short nppath8;
	private Short nppath9;
	private Short nppath10;
	private Short nppath11;
	private Short nppatho;
	private String nppathox;
	private Short nplbod;
	private Short npnloss;
	private Short nphipscl;
	private Short nptdpa;
	private Short nptdpb;
	private Short nptdpc;
	private Short nptdpd;
	private Short nptdpe;
	private Short npftdtau;
	private Short npftdt2;
	private Short npftdt5;
	private Short npftdt6;
	private Short npftdt7;
	private Short npftdt8;
	private Short npftdt9;
	private Short npftdt10;
	private Short npftdtdp;
	private Short npalsmnd;
	private Short npoftd;
	private Short npoftd1;
	private Short npoftd2;
	private Short npoftd3;
	private Short npoftd4;
	private Short npoftd5;
	private Short nppdxa;
	private Short nppdxb;
	private Short nppdxc;
	private Short nppdxd;
	private Short nppdxe;
	private Short nppdxf;
	private Short nppdxg;
	private Short nppdxh;
	private Short nppdxi;
	private Short nppdxj;
	private Short nppdxk;
	private Short nppdxl;
	private Short nppdxm;
	private Short nppdxn;
	private Short nppdxo;
	private Short nppdxp;
	private Short nppdxq;
	private Short nppdxr;
	private String nppdxrx;
	private Short nppdxs;
	private String nppdxsx;
	private Short nppdxt;
	private String nppdxtx;
	private Short npbnka;
	private Short npbnkb;
	private Short npbnkc;
	private Short npbnkd;
	private Short npbnke;
	private Short npbnkf;
	private Short npbnkg;
	private Short npfaut;
	private String npfaut1;
	private String npfaut2;
	private String npfaut3;
	private String npfaut4;

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
		// use strategy classes (possibly overridden) to determine PTID
		this.setPtid(CoreManagerUtils.getIdManager().getEntityPropId(this, "ptid"));
		//TODO: we really should not have a NpDOD field since one part may be unknown.  In meantime, set DOD first, then set the parts individually to possibly override
		setNpdod(patient.getDeathDate());
		setNpdodmo(patient.getDeathMonth());
		setNpdoddy(patient.getDeathDay());
		setNpdodyr(patient.getDeathYear());
		setNpsex(patient.getGender() == null ? null : patient.getGender().shortValue());
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

	public Short getNpbparf() {
		return npbparf;
	}

	public void setNpbparf(Short npbparf) {
		this.npbparf = npbparf;
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
		String[] required = null;
		if (instrVer.equalsIgnoreCase("9")){
			required = new String[]{ 
			 "npid","npgross","npnit","npcerad","npadrda","npocrit","npbraak","npneur",
			 "npdiff","npvasc","nplinf","npmicro","nplac","nphem","npart","npnec","npscl",
			 "npavas","nparter","npamy","npoang","npvoth","nplewy","nplewycs","nppick",
			 "npcort","npprog","npfront","nptau","npftd","npftdno","npftdspc","npcj",
			 "npprion","npmajor","npgene","npapoe","nptauhap","npprnp","npchrom","nppnorm",
			 "npcnorm","nppadp","npcadp","nppad","npcad","npplewy","npclewy","nppvasc",
			 "npcvasc","nppftld","npcftld","npphipp","npchipp","nppprion","npcprion",
			 "nppoth1","npcoth1","nppoth2","npcoth2","nppoth3","npcoth3","npbrfrzn",
			 "npbrfrm","npbparf","npcsfant"};
		}
	else if (instrVer.equalsIgnoreCase("10")){
		required = new String[] {
			"npid","npavas","npbraak","npneur","npdiff","npamy","nparter","npnec","nppick","npcort","npprog",
			 "nppmih","npfix","npfixx","npwbrwt","npwbrf","npgrcca","npgrla","npgrha",
			 "npgrsnh","npgrlch","npavas","nptan","nptanx","npaban","npabanx","npasan",
			 "npasanx","nptdpan","nptdpanx","nphismb","nphisg","nphisss","nphist",
			 "nphiso","nphisox","npthal","npbraak","npneur","npadnc","npdiff","npamy",
			 "npinf","npinf1a","npinf1b","npinf1d","npinf1f","npinf2a","npinf2b",
			 "npinf2d","npinf2f","npinf3a","npinf3b","npinf3d","npinf3f","npinf4a",
			 "npinf4b","npinf4d","npinf4f","nphemo","nphemo1","nphemo2","nphemo3",
			 "npold","npold1","npold2","npold3","npold4","npoldd","npoldd1","npoldd2",
			 "npoldd3","npoldd4","nparter","npwmr","nppath","npnec","nppath2","nppath3",
			 "nppath4","nppath5","nppath6","nppath7","nppath8","nppath9","nppath10",
			 "nppath11","nppatho","nppathox","nplbod","npnloss","nphipscl","nptdpa",
			 "nptdpb","nptdpc","nptdpd","nptdpe","npftdtau","nppick","npftdt2","npcort",
			 "npprog","npftdt5","npftdt6","npftdt7","npftdt8","npftdt9","npftdt10",
			 "npftdtdp","npalsmnd","npoftd","npoftd1","npoftd2","npoftd3","npoftd4",
			 "npoftd5","nppdxa","nppdxb","nppdxc","nppdxd","nppdxe","nppdxf","nppdxg",
			 "nppdxh","nppdxi","nppdxj","nppdxk","nppdxl","nppdxm","nppdxn","nppdxo",
			 "nppdxp","nppdxq","nppdxr","nppdxrx","nppdxs","nppdxsx","nppdxt","nppdxtx",
			 "npbnka","npbnkb","npbnkc","npbnkd","npbnke","npbnkf","npbnkg","npfaut",
			 "npfaut1","npfaut2","npfaut3","npfaut4"};
		}
		return required;
	}

	//Version 10
	public Float getNppmih() {
		return nppmih;
	}

	public void setNppmih(Float nppmih) {
		this.nppmih = nppmih;
	}

	public Short getNpfix() {
		return npfix;
	}

	public void setNpfix(Short npfix) {
		this.npfix = npfix;
	}

	public String getNpfixx() {
		return npfixx;
	}

	public void setNpfixx(String npfixx) {
		this.npfixx = npfixx;
	}

	public Short getNpwbrwt() {
		return npwbrwt;
	}

	public void setNpwbrwt(Short npwbrwt) {
		this.npwbrwt = npwbrwt;
	}

	public Short getNpwbrf() {
		return npwbrf;
	}

	public void setNpwbrf(Short npwbrf) {
		this.npwbrf = npwbrf;
	}

	public Short getNpgrcca() {
		return npgrcca;
	}

	public void setNpgrcca(Short npgrcca) {
		this.npgrcca = npgrcca;
	}

	public Short getNpgrla() {
		return npgrla;
	}

	public void setNpgrla(Short npgrla) {
		this.npgrla = npgrla;
	}

	public Short getNpgrha() {
		return npgrha;
	}

	public void setNpgrha(Short npgrha) {
		this.npgrha = npgrha;
	}

	public Short getNpgrsnh() {
		return npgrsnh;
	}

	public void setNpgrsnh(Short npgrsnh) {
		this.npgrsnh = npgrsnh;
	}

	public Short getNpgrlch() {
		return npgrlch;
	}

	public void setNpgrlch(Short npgrlch) {
		this.npgrlch = npgrlch;
	}

	public Short getNptan() {
		return nptan;
	}

	public void setNptan(Short nptan) {
		this.nptan = nptan;
	}

	public String getNptanx() {
		return nptanx;
	}

	public void setNptanx(String nptanx) {
		this.nptanx = nptanx;
	}

	public Short getNpaban() {
		return npaban;
	}

	public void setNpaban(Short npaban) {
		this.npaban = npaban;
	}

	public String getNpabanx() {
		return npabanx;
	}

	public void setNpabanx(String npabanx) {
		this.npabanx = npabanx;
	}

	public Short getNpasan() {
		return npasan;
	}

	public void setNpasan(Short npasan) {
		this.npasan = npasan;
	}

	public String getNpasanx() {
		return npasanx;
	}

	public void setNpasanx(String npasanx) {
		this.npasanx = npasanx;
	}

	public Short getNptdpan() {
		return nptdpan;
	}

	public void setNptdpan(Short nptdpan) {
		this.nptdpan = nptdpan;
	}

	public String getNptdpanx() {
		return nptdpanx;
	}

	public void setNptdpanx(String nptdpanx) {
		this.nptdpanx = nptdpanx;
	}

	public Short getNphismb() {
		return nphismb;
	}

	public void setNphismb(Short nphismb) {
		this.nphismb = nphismb;
	}

	public Short getNphisg() {
		return nphisg;
	}

	public void setNphisg(Short nphisg) {
		this.nphisg = nphisg;
	}

	public Short getNphisss() {
		return nphisss;
	}

	public void setNphisss(Short nphisss) {
		this.nphisss = nphisss;
	}

	public Short getNphist() {
		return nphist;
	}

	public void setNphist(Short nphist) {
		this.nphist = nphist;
	}

	public Short getNphiso() {
		return nphiso;
	}

	public void setNphiso(Short nphiso) {
		this.nphiso = nphiso;
	}

	public String getNphisox() {
		return nphisox;
	}

	public void setNphisox(String nphisox) {
		this.nphisox = nphisox;
	}

	public Short getNpthal() {
		return npthal;
	}

	public void setNpthal(Short npthal) {
		this.npthal = npthal;
	}

	public Short getNpadnc() {
		return npadnc;
	}

	public void setNpadnc(Short npadnc) {
		this.npadnc = npadnc;
	}

	public Short getNpinf() {
		return npinf;
	}

	public void setNpinf(Short npinf) {
		this.npinf = npinf;
	}

	public Short getNpinf1a() {
		return npinf1a;
	}

	public void setNpinf1a(Short npinf1a) {
		this.npinf1a = npinf1a;
	}

	public Float getNpinf1b() {
		return npinf1b;
	}

	public void setNpinf1b(Float npinf1b) {
		this.npinf1b = npinf1b;
	}

	public Float getNpinf1d() {
		return npinf1d;
	}

	public void setNpinf1d(Float npinf1d) {
		this.npinf1d = npinf1d;
	}

	public Float getNpinf1f() {
		return npinf1f;
	}

	public void setNpinf1f(Float npinf1f) {
		this.npinf1f = npinf1f;
	}

	public Short getNpinf2a() {
		return npinf2a;
	}

	public void setNpinf2a(Short npinf2a) {
		this.npinf2a = npinf2a;
	}

	public Float getNpinf2b() {
		return npinf2b;
	}

	public void setNpinf2b(Float npinf2b) {
		this.npinf2b = npinf2b;
	}

	public Float getNpinf2d() {
		return npinf2d;
	}

	public void setNpinf2d(Float npinf2d) {
		this.npinf2d = npinf2d;
	}

	public Float getNpinf2f() {
		return npinf2f;
	}

	public void setNpinf2f(Float npinf2f) {
		this.npinf2f = npinf2f;
	}

	public Short getNpinf3a() {
		return npinf3a;
	}

	public void setNpinf3a(Short npinf3a) {
		this.npinf3a = npinf3a;
	}

	public Float getNpinf3b() {
		return npinf3b;
	}

	public void setNpinf3b(Float npinf3b) {
		this.npinf3b = npinf3b;
	}

	public Float getNpinf3d() {
		return npinf3d;
	}

	public void setNpinf3d(Float npinf3d) {
		this.npinf3d = npinf3d;
	}

	public Float getNpinf3f() {
		return npinf3f;
	}

	public void setNpinf3f(Float npinf3f) {
		this.npinf3f = npinf3f;
	}

	public Short getNpinf4a() {
		return npinf4a;
	}

	public void setNpinf4a(Short npinf4a) {
		this.npinf4a = npinf4a;
	}

	public Float getNpinf4b() {
		return npinf4b;
	}

	public void setNpinf4b(Float npinf4b) {
		this.npinf4b = npinf4b;
	}

	public Float getNpinf4d() {
		return npinf4d;
	}

	public void setNpinf4d(Float npinf4d) {
		this.npinf4d = npinf4d;
	}

	public Float getNpinf4f() {
		return npinf4f;
	}

	public void setNpinf4f(Float npinf4f) {
		this.npinf4f = npinf4f;
	}

	public Short getNphemo() {
		return nphemo;
	}

	public void setNphemo(Short nphemo) {
		this.nphemo = nphemo;
	}

	public Short getNphemo1() {
		return nphemo1;
	}

	public void setNphemo1(Short nphemo1) {
		this.nphemo1 = nphemo1;
	}

	public Short getNphemo2() {
		return nphemo2;
	}

	public void setNphemo2(Short nphemo2) {
		this.nphemo2 = nphemo2;
	}

	public Short getNphemo3() {
		return nphemo3;
	}

	public void setNphemo3(Short nphemo3) {
		this.nphemo3 = nphemo3;
	}

	public Short getNpold() {
		return npold;
	}

	public void setNpold(Short npold) {
		this.npold = npold;
	}

	public Short getNpold1() {
		return npold1;
	}

	public void setNpold1(Short npold1) {
		this.npold1 = npold1;
	}

	public Short getNpold2() {
		return npold2;
	}

	public void setNpold2(Short npold2) {
		this.npold2 = npold2;
	}

	public Short getNpold3() {
		return npold3;
	}

	public void setNpold3(Short npold3) {
		this.npold3 = npold3;
	}

	public Short getNpold4() {
		return npold4;
	}

	public void setNpold4(Short npold4) {
		this.npold4 = npold4;
	}

	public Short getNpoldd() {
		return npoldd;
	}

	public void setNpoldd(Short npoldd) {
		this.npoldd = npoldd;
	}

	public Short getNpoldd1() {
		return npoldd1;
	}

	public void setNpoldd1(Short npoldd1) {
		this.npoldd1 = npoldd1;
	}

	public Short getNpoldd2() {
		return npoldd2;
	}

	public void setNpoldd2(Short npoldd2) {
		this.npoldd2 = npoldd2;
	}

	public Short getNpoldd3() {
		return npoldd3;
	}

	public void setNpoldd3(Short npoldd3) {
		this.npoldd3 = npoldd3;
	}

	public Short getNpoldd4() {
		return npoldd4;
	}

	public void setNpoldd4(Short npoldd4) {
		this.npoldd4 = npoldd4;
	}

	public Short getNpwmr() {
		return npwmr;
	}

	public void setNpwmr(Short npwmr) {
		this.npwmr = npwmr;
	}

	public Short getNppath() {
		return nppath;
	}

	public void setNppath(Short nppath) {
		this.nppath = nppath;
	}

	public Short getNppath2() {
		return nppath2;
	}

	public void setNppath2(Short nppath2) {
		this.nppath2 = nppath2;
	}

	public Short getNppath3() {
		return nppath3;
	}

	public void setNppath3(Short nppath3) {
		this.nppath3 = nppath3;
	}

	public Short getNppath4() {
		return nppath4;
	}

	public void setNppath4(Short nppath4) {
		this.nppath4 = nppath4;
	}

	public Short getNppath5() {
		return nppath5;
	}

	public void setNppath5(Short nppath5) {
		this.nppath5 = nppath5;
	}

	public Short getNppath6() {
		return nppath6;
	}

	public void setNppath6(Short nppath6) {
		this.nppath6 = nppath6;
	}

	public Short getNppath7() {
		return nppath7;
	}

	public void setNppath7(Short nppath7) {
		this.nppath7 = nppath7;
	}

	public Short getNppath8() {
		return nppath8;
	}

	public void setNppath8(Short nppath8) {
		this.nppath8 = nppath8;
	}

	public Short getNppath9() {
		return nppath9;
	}

	public void setNppath9(Short nppath9) {
		this.nppath9 = nppath9;
	}

	public Short getNppath10() {
		return nppath10;
	}

	public void setNppath10(Short nppath10) {
		this.nppath10 = nppath10;
	}

	public Short getNppath11() {
		return nppath11;
	}

	public void setNppath11(Short nppath11) {
		this.nppath11 = nppath11;
	}

	public Short getNppatho() {
		return nppatho;
	}

	public void setNppatho(Short nppatho) {
		this.nppatho = nppatho;
	}

	public String getNppathox() {
		return nppathox;
	}

	public void setNppathox(String nppathox) {
		this.nppathox = nppathox;
	}

	public Short getNplbod() {
		return nplbod;
	}

	public void setNplbod(Short nplbod) {
		this.nplbod = nplbod;
	}

	public Short getNpnloss() {
		return npnloss;
	}

	public void setNpnloss(Short npnloss) {
		this.npnloss = npnloss;
	}

	public Short getNphipscl() {
		return nphipscl;
	}

	public void setNphipscl(Short nphipscl) {
		this.nphipscl = nphipscl;
	}

	public Short getNptdpa() {
		return nptdpa;
	}

	public void setNptdpa(Short nptdpa) {
		this.nptdpa = nptdpa;
	}

	public Short getNptdpb() {
		return nptdpb;
	}

	public void setNptdpb(Short nptdpb) {
		this.nptdpb = nptdpb;
	}

	public Short getNptdpc() {
		return nptdpc;
	}

	public void setNptdpc(Short nptdpc) {
		this.nptdpc = nptdpc;
	}

	public Short getNptdpd() {
		return nptdpd;
	}

	public void setNptdpd(Short nptdpd) {
		this.nptdpd = nptdpd;
	}

	public Short getNptdpe() {
		return nptdpe;
	}

	public void setNptdpe(Short nptdpe) {
		this.nptdpe = nptdpe;
	}

	public Short getNpftdtau() {
		return npftdtau;
	}

	public void setNpftdtau(Short npftdtau) {
		this.npftdtau = npftdtau;
	}

	public Short getNpftdt2() {
		return npftdt2;
	}

	public void setNpftdt2(Short npftdt2) {
		this.npftdt2 = npftdt2;
	}

	public Short getNpftdt5() {
		return npftdt5;
	}

	public void setNpftdt5(Short npftdt5) {
		this.npftdt5 = npftdt5;
	}

	public Short getNpftdt6() {
		return npftdt6;
	}

	public void setNpftdt6(Short npftdt6) {
		this.npftdt6 = npftdt6;
	}

	public Short getNpftdt7() {
		return npftdt7;
	}

	public void setNpftdt7(Short npftdt7) {
		this.npftdt7 = npftdt7;
	}

	public Short getNpftdt8() {
		return npftdt8;
	}

	public void setNpftdt8(Short npftdt8) {
		this.npftdt8 = npftdt8;
	}

	public Short getNpftdt9() {
		return npftdt9;
	}

	public void setNpftdt9(Short npftdt9) {
		this.npftdt9 = npftdt9;
	}

	public Short getNpftdt10() {
		return npftdt10;
	}

	public void setNpftdt10(Short npftdt10) {
		this.npftdt10 = npftdt10;
	}

	public Short getNpftdtdp() {
		return npftdtdp;
	}

	public void setNpftdtdp(Short npftdtdp) {
		this.npftdtdp = npftdtdp;
	}

	public Short getNpalsmnd() {
		return npalsmnd;
	}

	public void setNpalsmnd(Short npalsmnd) {
		this.npalsmnd = npalsmnd;
	}

	public Short getNpoftd() {
		return npoftd;
	}

	public void setNpoftd(Short npoftd) {
		this.npoftd = npoftd;
	}

	public Short getNpoftd1() {
		return npoftd1;
	}

	public void setNpoftd1(Short npoftd1) {
		this.npoftd1 = npoftd1;
	}

	public Short getNpoftd2() {
		return npoftd2;
	}

	public void setNpoftd2(Short npoftd2) {
		this.npoftd2 = npoftd2;
	}

	public Short getNpoftd3() {
		return npoftd3;
	}

	public void setNpoftd3(Short npoftd3) {
		this.npoftd3 = npoftd3;
	}

	public Short getNpoftd4() {
		return npoftd4;
	}

	public void setNpoftd4(Short npoftd4) {
		this.npoftd4 = npoftd4;
	}

	public Short getNpoftd5() {
		return npoftd5;
	}

	public void setNpoftd5(Short npoftd5) {
		this.npoftd5 = npoftd5;
	}

	public Short getNppdxa() {
		return nppdxa;
	}

	public void setNppdxa(Short nppdxa) {
		this.nppdxa = nppdxa;
	}

	public Short getNppdxb() {
		return nppdxb;
	}

	public void setNppdxb(Short nppdxb) {
		this.nppdxb = nppdxb;
	}

	public Short getNppdxc() {
		return nppdxc;
	}

	public void setNppdxc(Short nppdxc) {
		this.nppdxc = nppdxc;
	}

	public Short getNppdxd() {
		return nppdxd;
	}

	public void setNppdxd(Short nppdxd) {
		this.nppdxd = nppdxd;
	}

	public Short getNppdxe() {
		return nppdxe;
	}

	public void setNppdxe(Short nppdxe) {
		this.nppdxe = nppdxe;
	}

	public Short getNppdxf() {
		return nppdxf;
	}

	public void setNppdxf(Short nppdxf) {
		this.nppdxf = nppdxf;
	}

	public Short getNppdxg() {
		return nppdxg;
	}

	public void setNppdxg(Short nppdxg) {
		this.nppdxg = nppdxg;
	}

	public Short getNppdxh() {
		return nppdxh;
	}

	public void setNppdxh(Short nppdxh) {
		this.nppdxh = nppdxh;
	}

	public Short getNppdxi() {
		return nppdxi;
	}

	public void setNppdxi(Short nppdxi) {
		this.nppdxi = nppdxi;
	}

	public Short getNppdxj() {
		return nppdxj;
	}

	public void setNppdxj(Short nppdxj) {
		this.nppdxj = nppdxj;
	}

	public Short getNppdxk() {
		return nppdxk;
	}

	public void setNppdxk(Short nppdxk) {
		this.nppdxk = nppdxk;
	}

	public Short getNppdxl() {
		return nppdxl;
	}

	public void setNppdxl(Short nppdxl) {
		this.nppdxl = nppdxl;
	}

	public Short getNppdxm() {
		return nppdxm;
	}

	public void setNppdxm(Short nppdxm) {
		this.nppdxm = nppdxm;
	}

	public Short getNppdxn() {
		return nppdxn;
	}

	public void setNppdxn(Short nppdxn) {
		this.nppdxn = nppdxn;
	}

	public Short getNppdxo() {
		return nppdxo;
	}

	public void setNppdxo(Short nppdxo) {
		this.nppdxo = nppdxo;
	}

	public Short getNppdxp() {
		return nppdxp;
	}

	public void setNppdxp(Short nppdxp) {
		this.nppdxp = nppdxp;
	}

	public Short getNppdxq() {
		return nppdxq;
	}

	public void setNppdxq(Short nppdxq) {
		this.nppdxq = nppdxq;
	}

	public Short getNppdxr() {
		return nppdxr;
	}

	public void setNppdxr(Short nppdxr) {
		this.nppdxr = nppdxr;
	}

	public String getNppdxrx() {
		return nppdxrx;
	}

	public void setNppdxrx(String nppdxrx) {
		this.nppdxrx = nppdxrx;
	}

	public Short getNppdxs() {
		return nppdxs;
	}

	public void setNppdxs(Short nppdxs) {
		this.nppdxs = nppdxs;
	}

	public String getNppdxsx() {
		return nppdxsx;
	}

	public void setNppdxsx(String nppdxsx) {
		this.nppdxsx = nppdxsx;
	}

	public Short getNppdxt() {
		return nppdxt;
	}

	public void setNppdxt(Short nppdxt) {
		this.nppdxt = nppdxt;
	}

	public String getNppdxtx() {
		return nppdxtx;
	}

	public void setNppdxtx(String nppdxtx) {
		this.nppdxtx = nppdxtx;
	}

	public Short getNpbnka() {
		return npbnka;
	}

	public void setNpbnka(Short npbnka) {
		this.npbnka = npbnka;
	}

	public Short getNpbnkb() {
		return npbnkb;
	}

	public void setNpbnkb(Short npbnkb) {
		this.npbnkb = npbnkb;
	}

	public Short getNpbnkc() {
		return npbnkc;
	}

	public void setNpbnkc(Short npbnkc) {
		this.npbnkc = npbnkc;
	}

	public Short getNpbnkd() {
		return npbnkd;
	}

	public void setNpbnkd(Short npbnkd) {
		this.npbnkd = npbnkd;
	}

	public Short getNpbnke() {
		return npbnke;
	}

	public void setNpbnke(Short npbnke) {
		this.npbnke = npbnke;
	}

	public Short getNpbnkf() {
		return npbnkf;
	}

	public void setNpbnkf(Short npbnkf) {
		this.npbnkf = npbnkf;
	}

	public Short getNpbnkg() {
		return npbnkg;
	}

	public void setNpbnkg(Short npbnkg) {
		this.npbnkg = npbnkg;
	}

	public Short getNpfaut() {
		return npfaut;
	}

	public void setNpfaut(Short npfaut) {
		this.npfaut = npfaut;
	}

	public String getNpfaut1() {
		return npfaut1;
	}

	public void setNpfaut1(String npfaut1) {
		this.npfaut1 = npfaut1;
	}

	public String getNpfaut2() {
		return npfaut2;
	}

	public void setNpfaut2(String npfaut2) {
		this.npfaut2 = npfaut2;
	}

	public String getNpfaut3() {
		return npfaut3;
	}

	public void setNpfaut3(String npfaut3) {
		this.npfaut3 = npfaut3;
	}

	public String getNpfaut4() {
		return npfaut4;
	}

	public void setNpfaut4(String npfaut4) {
		this.npfaut4 = npfaut4;
	}

	// technically NaccPathology is an NP packet, not a UDS packet, but all the functionality is the same
	// TODO: we could rename the UdsUploadable interface to NaccUploadable
	public List<String> getUdsUploadCsvRecords() {
		List<String> records = new ArrayList<String>();
		records.add(getUdsUploadCsvRecord());
		return records;
	}
	

	
	public String getUdsUploadCsvRecord() {
		Short adcID = null;
		ListManager listManager = CoreManagerUtils.getListManager();
		Map<String, String> adcCenters = listManager.getDefaultStaticList("uds.adcCenterIDs");
		if (adcCenters.containsKey(this.getProjName())) {
			String adcIDAsString = (String) adcCenters.get(this.getProjName());
			try {
				adcID = Short.valueOf(adcIDAsString);
			} catch (NumberFormatException ex) {
				logger.warn("NaccPathology getUdsUploadCsvRecord NumberFormatException ADCID="+ adcIDAsString);
			}
		}
		if(getInstrVer()==null){return "";}
		
		StringBuffer buffer = new StringBuffer("");
		buffer.append(adcID==null ? "" : adcID.toString());
		buffer.append(",").append(UdsUploadUtils.formatField(getPtid()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpformmo()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpformdy()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpformyr()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpid()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpsex()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpdage()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpdodmo()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpdoddy()));
		buffer.append(",").append(UdsUploadUtils.formatField(getNpdodyr()));
		if (getInstrVer().equals("9")){
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgross()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpnit()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcerad()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpadrda()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpocrit()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbraak()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpneur()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpdiff()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpvasc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNplinf()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpmicro()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNplac()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphem()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpart()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpnec()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpscl()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpavas()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNparter()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpamy()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoang()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpvoth()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNplewy()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNplewycs()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppick()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcort()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpprog()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfront()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptau()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdno()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdspc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcj()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpprion()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpmajor()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpmpath1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpmpath2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpmpath3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgene()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfhspec()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpapoe()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptauhap()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpprnp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpchrom()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppnorm()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcnorm()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppadp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcadp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppad()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcad()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpplewy()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpclewy()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppvasc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcvasc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppftld()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcftld()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpphipp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpchipp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppprion()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcprion()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppoth1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcoth1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoth1x()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppoth2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcoth2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoth2x()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppoth3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcoth3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoth3x()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbrfrzn()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbrfrm()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbparf()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcsfant()));
		}
		else if (getInstrVer().equals("10")){
			buffer.append(",").append(UdsUploadUtils.formatField(getNppmih()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfix()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfixx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpwbrwt()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpwbrf()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgrcca()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgrla()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgrha()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgrsnh()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpgrlch()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpavas()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptan()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptanx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpaban()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpabanx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpasan()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpasanx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpan()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpanx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphismb()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphisg()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphisss()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphist()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphiso()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphisox()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpthal()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbraak()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpneur()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpadnc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpdiff()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpamy()));			
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf1a()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf1b()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf1d()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf1f()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf2a()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf2b()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf2d()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf2f()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf3a()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf3b()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf3d()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf3f()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf4a()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf4b()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf4d()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpinf4f()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphemo()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphemo1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphemo2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphemo3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpold()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpold1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpold2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpold3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpold4()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoldd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoldd1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoldd2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoldd3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoldd4()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNparter()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpwmr()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpnec()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath4()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath5()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath6()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath7()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath8()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath9()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath10()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppath11()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppatho()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppathox()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNplbod()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpnloss()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNphipscl()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpa()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpb()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNptdpe()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdtau()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppick()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpcort()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpprog()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt5()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt6()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt7()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt8()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt9()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdt10()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpftdtdp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpalsmnd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoftd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoftd1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoftd2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoftd3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoftd4()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpoftd5()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxa()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxb()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxe()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxf()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxg()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxh()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxi()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxj()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxk()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxl()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxm()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxn()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxo()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxp()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxq()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxr()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxrx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxs()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxsx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxt()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNppdxtx()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnka()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnkb()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnkc()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnkd()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnke()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnkf()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpbnkg()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfaut()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfaut1()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfaut2()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfaut3()));
			buffer.append(",").append(UdsUploadUtils.formatField(getNpfaut4()));
		}
		buffer.append(",").append(UdsUploadUtils.formatField(getInstrVer()));
		return buffer.toString();
	}
	
	@Override
	public void beforeUpdate() {
		super.beforeUpdate();
		this.setPtid(CoreManagerUtils.getIdManager().getEntityPropId(this, "ptid"));
	}
	
}
