package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsMedications1 extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsMedications1.class);
	public final static String UDS_MEDICATIONS_FORMID = "A4";
	public UdsMedications1() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsMedications1(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_MEDICATIONS_FORMID);
	}
	public String getEntityName() {
		return "UdsMedications";
	}

	// note: id inherited from Instrument

	private Short pmeds;
	private String pma;
	private Long pmas;
	private Short pmasu;
	private Short pmaf;
	private Short pmafu;
	private Short pmap;
	private Short pmapf;
	private Short pmapfu;
	private String pmb;
	private Long pmbs;
	private Short pmbsu;
	private Short pmbf;
	private Short pmbfu;
	private Short pmbp;
	private Short pmbpf;
	private Short pmbpfu;
	private String pmc;
	private Long pmcs;
	private Short pmcsu;
	private Short pmcf;
	private Short pmcfu;
	private Short pmcp;
	private Short pmcpf;
	private Short pmcpfu;
	private String pmd;
	private Long pmds;
	private Short pmdsu;
	private Short pmdf;
	private Short pmdfu;
	private Short pmdp;
	private Short pmdpf;
	private Short pmdpfu;
	private String pme;
	private Long pmes;
	private Short pmesu;
	private Short pmef;
	private Short pmefu;
	private Short pmep;
	private Short pmepf;
	private Short pmepfu;
	private String pmf;
	private Long pmfs;
	private Short pmfsu;
	private Short pmff;
	private Short pmffu;
	private Short pmfp;
	private Short pmfpf;
	private Short pmfpfu;
	private String pmg;
	private Long pmgs;
	private Short pmgsu;
	private Short pmgf;
	private Short pmgfu;
	private Short pmgp;
	private Short pmgpf;
	private Short pmgpfu;
	private String pmh;
	private Long pmhs;
	private Short pmhsu;
	private Short pmhf;
	private Short pmhfu;
	private Short pmhp;
	private Short pmhpf;
	private Short pmhpfu;
	private String pmi;
	private Long pmis;
	private Short pmisu;
	private Short pmif;
	private Short pmifu;
	private Short pmip;
	private Short pmipf;
	private Short pmipfu;
	private String pmj;
	private Long pmjs;
	private Short pmjsu;
	private Short pmjf;
	private Short pmjfu;
	private Short pmjp;
	private Short pmjpf;
	private Short pmjpfu;
	private String pmk;
	private Long pmks;
	private Short pmksu;
	private Short pmkf;
	private Short pmkfu;
	private Short pmkp;
	private Short pmkpf;
	private Short pmkpfu;
	private String pml;
	private Long pmls;
	private Short pmlsu;
	private Short pmlf;
	private Short pmlfu;
	private Short pmlp;
	private Short pmlpf;
	private Short pmlpfu;
	private String pmm;
	private Long pmms;
	private Short pmmsu;
	private Short pmmf;
	private Short pmmfu;
	private Short pmmp;
	private Short pmmpf;
	private Short pmmpfu;
	private String pmn;
	private Long pmns;
	private Short pmnsu;
	private Short pmnf;
	private Short pmnfu;
	private Short pmnp;
	private Short pmnpf;
	private Short pmnpfu;
	private String pmo;
	private Long pmos;
	private Short pmosu;
	private Short pmof;
	private Short pmofu;
	private Short pmop;
	private Short pmopf;
	private Short pmopfu;
	private String pmp;
	private Long pmps;
	private Short pmpsu;
	private Short pmpf;
	private Short pmpfu;
	private Short pmpp;
	private Short pmppf;
	private Short pmppfu;
	private String pmq;
	private Long pmqs;
	private Short pmqsu;
	private Short pmqf;
	private Short pmqfu;
	private Short pmqp;
	private Short pmqpf;
	private Short pmqpfu;
	private String pmr;
	private Long pmrs;
	private Short pmrsu;
	private Short pmrf;
	private Short pmrfu;
	private Short pmrp;
	private Short pmrpf;
	private Short pmrpfu;
	private String pms;
	private Long pmss;
	private Short pmssu;
	private Short pmsf;
	private Short pmsfu;
	private Short pmsp;
	private Short pmspf;
	private Short pmspfu;
	private String pmt;
	private Long pmts;
	private Short pmtsu;
	private Short pmtf;
	private Short pmtfu;
	private Short pmtp;
	private Short pmtpf;
	private Short pmtpfu;

	private Short nmeds;
	private String nma;
	private Long nmas;
	private Short nmasu;
	private Short nmaf;
	private Short nmafu;
	private String nmb;
	private Long nmbs;
	private Short nmbsu;
	private Short nmbf;
	private Short nmbfu;
	private String nmc;
	private Long nmcs;
	private Short nmcsu;
	private Short nmcf;
	private Short nmcfu;
	private String nmd;
	private Long nmds;
	private Short nmdsu;
	private Short nmdf;
	private Short nmdfu;
	private String nme;
	private Long nmes;
	private Short nmesu;
	private Short nmef;
	private Short nmefu;
	private String nmf;
	private Long nmfs;
	private Short nmfsu;
	private Short nmff;
	private Short nmffu;
	private String nmg;
	private Long nmgs;
	private Short nmgsu;
	private Short nmgf;
	private Short nmgfu;
	private String nmh;
	private Long nmhs;
	private Short nmhsu;
	private Short nmhf;
	private Short nmhfu;
	private String nmi;
	private Long nmis;
	private Short nmisu;
	private Short nmif;
	private Short nmifu;
	private String nmj;
	private Long nmjs;
	private Short nmjsu;
	private Short nmjf;
	private Short nmjfu;
	private String nmk;
	private Long nmks;
	private Short nmksu;
	private Short nmkf;
	private Short nmkfu;
	private String nml;
	private Long nmls;
	private Short nmlsu;
	private Short nmlf;
	private Short nmlfu;
	private String nmm;
	private Long nmms;
	private Short nmmsu;
	private Short nmmf;
	private Short nmmfu;
	private String nmn;
	private Long nmns;
	private Short nmnsu;
	private Short nmnf;
	private Short nmnfu;
	private String nmo;
	private Long nmos;
	private Short nmosu;
	private Short nmof;
	private Short nmofu;
	private String nmp;
	private Long nmps;
	private Short nmpsu;
	private Short nmpf;
	private Short nmpfu;
	private String nmq;
	private Long nmqs;
	private Short nmqsu;
	private Short nmqf;
	private Short nmqfu;
	private String nmr;
	private Long nmrs;
	private Short nmrsu;
	private Short nmrf;
	private Short nmrfu;
	private String nms;
	private Long nmss;
	private Short nmssu;
	private Short nmsf;
	private Short nmsfu;
	private String nmt;
	private Long nmts;
	private Short nmtsu;
	private Short nmtf;
	private Short nmtfu;

	private Short vitasups;
	private String vsa;
	private Long vsas;
	private Short vsasu;
	private Short vsaf;
	private Short vsafu;
	private String vsb;
	private Long vsbs;
	private Short vsbsu;
	private Short vsbf;
	private Short vsbfu;
	private String vsc;
	private Long vscs;
	private Short vscsu;
	private Short vscf;
	private Short vscfu;
	private String vsd;
	private Long vsds;
	private Short vsdsu;
	private Short vsdf;
	private Short vsdfu;
	private String vse;
	private Long vses;
	private Short vsesu;
	private Short vsef;
	private Short vsefu;
	private String vsf;
	private Long vsfs;
	private Short vsfsu;
	private Short vsff;
	private Short vsffu;
	private String vsg;
	private Long vsgs;
	private Short vsgsu;
	private Short vsgf;
	private Short vsgfu;
	private String vsh;
	private Long vshs;
	private Short vshsu;
	private Short vshf;
	private Short vshfu;
	private String vsi;
	private Long vsis;
	private Short vsisu;
	private Short vsif;
	private Short vsifu;
	private String vsj;
	private Long vsjs;
	private Short vsjsu;
	private Short vsjf;
	private Short vsjfu;
	private String vsk;
	private Long vsks;
	private Short vsksu;
	private Short vskf;
	private Short vskfu;
	private String vsl;
	private Long vsls;
	private Short vslsu;
	private Short vslf;
	private Short vslfu;
	private String vsm;
	private Long vsms;
	private Short vsmsu;
	private Short vsmf;
	private Short vsmfu;
	private String vsn;
	private Long vsns;
	private Short vsnsu;
	private Short vsnf;
	private Short vsnfu;
	private String vso;
	private Long vsos;
	private Short vsosu;
	private Short vsof;
	private Short vsofu;
	private String vsp;
	private Long vsps;
	private Short vspsu;
	private Short vspf;
	private Short vspfu;
	private String vsq;
	private Long vsqs;
	private Short vsqsu;
	private Short vsqf;
	private Short vsqfu;
	private String vsr;
	private Long vsrs;
	private Short vsrsu;
	private Short vsrf;
	private Short vsrfu;
	private String vss;
	private Long vsss;
	private Short vsssu;
	private Short vssf;
	private Short vssfu;
	private String vst;
	private Long vsts;
	private Short vstsu;
	private Short vstf;
	private Short vstfu;

	

	
	public String getPma() {
		return pma;
	}

	public void setPma(String pma) {
		this.pma = pma;
	}

	public Short getPmaf() {
		return pmaf;
	}

	public void setPmaf(Short pmaf) {
		this.pmaf = pmaf;
	}

	public Short getPmafu() {
		return pmafu;
	}

	public void setPmafu(Short pmafu) {
		this.pmafu = pmafu;
	}

	public Short getPmap() {
		return pmap;
	}

	public void setPmap(Short pmap) {
		this.pmap = pmap;
	}

	public Short getPmapf() {
		return pmapf;
	}

	public void setPmapf(Short pmapf) {
		this.pmapf = pmapf;
	}

	public Short getPmapfu() {
		return pmapfu;
	}

	public void setPmapfu(Short pmapfu) {
		this.pmapfu = pmapfu;
	}

	public Long getPmas() {
		return pmas;
	}

	public void setPmas(Long pmas) {
		this.pmas = pmas;
	}

	public Short getPmasu() {
		return pmasu;
	}

	public void setPmasu(Short pmasu) {
		this.pmasu = pmasu;
	}

	public String getPmb() {
		return pmb;
	}

	public void setPmb(String pmb) {
		this.pmb = pmb;
	}

	public Short getPmbf() {
		return pmbf;
	}

	public void setPmbf(Short pmbf) {
		this.pmbf = pmbf;
	}

	public Short getPmbfu() {
		return pmbfu;
	}

	public void setPmbfu(Short pmbfu) {
		this.pmbfu = pmbfu;
	}

	public Short getPmbp() {
		return pmbp;
	}

	public void setPmbp(Short pmbp) {
		this.pmbp = pmbp;
	}

	public Short getPmbpf() {
		return pmbpf;
	}

	public void setPmbpf(Short pmbpf) {
		this.pmbpf = pmbpf;
	}

	public Short getPmbpfu() {
		return pmbpfu;
	}

	public void setPmbpfu(Short pmbpfu) {
		this.pmbpfu = pmbpfu;
	}

	public Long getPmbs() {
		return pmbs;
	}

	public void setPmbs(Long pmbs) {
		this.pmbs = pmbs;
	}

	public Short getPmbsu() {
		return pmbsu;
	}

	public void setPmbsu(Short pmbsu) {
		this.pmbsu = pmbsu;
	}

	public String getPmc() {
		return pmc;
	}

	public void setPmc(String pmc) {
		this.pmc = pmc;
	}

	public Short getPmcf() {
		return pmcf;
	}

	public void setPmcf(Short pmcf) {
		this.pmcf = pmcf;
	}

	public Short getPmcfu() {
		return pmcfu;
	}

	public void setPmcfu(Short pmcfu) {
		this.pmcfu = pmcfu;
	}

	public Short getPmcp() {
		return pmcp;
	}

	public void setPmcp(Short pmcp) {
		this.pmcp = pmcp;
	}

	public Short getPmcpf() {
		return pmcpf;
	}

	public void setPmcpf(Short pmcpf) {
		this.pmcpf = pmcpf;
	}

	public Short getPmcpfu() {
		return pmcpfu;
	}

	public void setPmcpfu(Short pmcpfu) {
		this.pmcpfu = pmcpfu;
	}

	public Long getPmcs() {
		return pmcs;
	}

	public void setPmcs(Long pmcs) {
		this.pmcs = pmcs;
	}

	public Short getPmcsu() {
		return pmcsu;
	}

	public void setPmcsu(Short pmcsu) {
		this.pmcsu = pmcsu;
	}

	public String getPmd() {
		return pmd;
	}

	public void setPmd(String pmd) {
		this.pmd = pmd;
	}

	public Short getPmdf() {
		return pmdf;
	}

	public void setPmdf(Short pmdf) {
		this.pmdf = pmdf;
	}

	public Short getPmdfu() {
		return pmdfu;
	}

	public void setPmdfu(Short pmdfu) {
		this.pmdfu = pmdfu;
	}

	public Short getPmdp() {
		return pmdp;
	}

	public void setPmdp(Short pmdp) {
		this.pmdp = pmdp;
	}

	public Short getPmdpf() {
		return pmdpf;
	}

	public void setPmdpf(Short pmdpf) {
		this.pmdpf = pmdpf;
	}

	public Short getPmdpfu() {
		return pmdpfu;
	}

	public void setPmdpfu(Short pmdpfu) {
		this.pmdpfu = pmdpfu;
	}

	public Long getPmds() {
		return pmds;
	}

	public void setPmds(Long pmds) {
		this.pmds = pmds;
	}

	public Short getPmdsu() {
		return pmdsu;
	}

	public void setPmdsu(Short pmdsu) {
		this.pmdsu = pmdsu;
	}

	public String getPme() {
		return pme;
	}

	public void setPme(String pme) {
		this.pme = pme;
	}

	public Short getPmeds() {
		return pmeds;
	}

	public void setPmeds(Short pmeds) {
		this.pmeds = pmeds;
	}

	public Short getPmef() {
		return pmef;
	}

	public void setPmef(Short pmef) {
		this.pmef = pmef;
	}

	public Short getPmefu() {
		return pmefu;
	}

	public void setPmefu(Short pmefu) {
		this.pmefu = pmefu;
	}

	public Short getPmep() {
		return pmep;
	}

	public void setPmep(Short pmep) {
		this.pmep = pmep;
	}

	public Short getPmepf() {
		return pmepf;
	}

	public void setPmepf(Short pmepf) {
		this.pmepf = pmepf;
	}

	public Short getPmepfu() {
		return pmepfu;
	}

	public void setPmepfu(Short pmepfu) {
		this.pmepfu = pmepfu;
	}

	public Long getPmes() {
		return pmes;
	}

	public void setPmes(Long pmes) {
		this.pmes = pmes;
	}

	public Short getPmesu() {
		return pmesu;
	}

	public void setPmesu(Short pmesu) {
		this.pmesu = pmesu;
	}

	public String getPmf() {
		return pmf;
	}

	public void setPmf(String pmf) {
		this.pmf = pmf;
	}

	public Short getPmff() {
		return pmff;
	}

	public void setPmff(Short pmff) {
		this.pmff = pmff;
	}

	public Short getPmffu() {
		return pmffu;
	}

	public void setPmffu(Short pmffu) {
		this.pmffu = pmffu;
	}

	public Short getPmfp() {
		return pmfp;
	}

	public void setPmfp(Short pmfp) {
		this.pmfp = pmfp;
	}

	public Short getPmfpf() {
		return pmfpf;
	}

	public void setPmfpf(Short pmfpf) {
		this.pmfpf = pmfpf;
	}

	public Short getPmfpfu() {
		return pmfpfu;
	}

	public void setPmfpfu(Short pmfpfu) {
		this.pmfpfu = pmfpfu;
	}

	public Long getPmfs() {
		return pmfs;
	}

	public void setPmfs(Long pmfs) {
		this.pmfs = pmfs;
	}

	public Short getPmfsu() {
		return pmfsu;
	}

	public void setPmfsu(Short pmfsu) {
		this.pmfsu = pmfsu;
	}

	public String getPmg() {
		return pmg;
	}

	public void setPmg(String pmg) {
		this.pmg = pmg;
	}

	public Short getPmgf() {
		return pmgf;
	}

	public void setPmgf(Short pmgf) {
		this.pmgf = pmgf;
	}

	public Short getPmgfu() {
		return pmgfu;
	}

	public void setPmgfu(Short pmgfu) {
		this.pmgfu = pmgfu;
	}

	public Short getPmgp() {
		return pmgp;
	}

	public void setPmgp(Short pmgp) {
		this.pmgp = pmgp;
	}

	public Short getPmgpf() {
		return pmgpf;
	}

	public void setPmgpf(Short pmgpf) {
		this.pmgpf = pmgpf;
	}

	public Short getPmgpfu() {
		return pmgpfu;
	}

	public void setPmgpfu(Short pmgpfu) {
		this.pmgpfu = pmgpfu;
	}

	public Long getPmgs() {
		return pmgs;
	}

	public void setPmgs(Long pmgs) {
		this.pmgs = pmgs;
	}

	public Short getPmgsu() {
		return pmgsu;
	}

	public void setPmgsu(Short pmgsu) {
		this.pmgsu = pmgsu;
	}

	public String getPmh() {
		return pmh;
	}

	public void setPmh(String pmh) {
		this.pmh = pmh;
	}

	public Short getPmhf() {
		return pmhf;
	}

	public void setPmhf(Short pmhf) {
		this.pmhf = pmhf;
	}

	public Short getPmhfu() {
		return pmhfu;
	}

	public void setPmhfu(Short pmhfu) {
		this.pmhfu = pmhfu;
	}

	public Short getPmhp() {
		return pmhp;
	}

	public void setPmhp(Short pmhp) {
		this.pmhp = pmhp;
	}

	public Short getPmhpf() {
		return pmhpf;
	}

	public void setPmhpf(Short pmhpf) {
		this.pmhpf = pmhpf;
	}

	public Short getPmhpfu() {
		return pmhpfu;
	}

	public void setPmhpfu(Short pmhpfu) {
		this.pmhpfu = pmhpfu;
	}

	public Long getPmhs() {
		return pmhs;
	}

	public void setPmhs(Long pmhs) {
		this.pmhs = pmhs;
	}

	public Short getPmhsu() {
		return pmhsu;
	}

	public void setPmhsu(Short pmhsu) {
		this.pmhsu = pmhsu;
	}

	public String getPmi() {
		return pmi;
	}

	public void setPmi(String pmi) {
		this.pmi = pmi;
	}

	public Short getPmif() {
		return pmif;
	}

	public void setPmif(Short pmif) {
		this.pmif = pmif;
	}

	public Short getPmifu() {
		return pmifu;
	}

	public void setPmifu(Short pmifu) {
		this.pmifu = pmifu;
	}

	public Short getPmip() {
		return pmip;
	}

	public void setPmip(Short pmip) {
		this.pmip = pmip;
	}

	public Short getPmipf() {
		return pmipf;
	}

	public void setPmipf(Short pmipf) {
		this.pmipf = pmipf;
	}

	public Short getPmipfu() {
		return pmipfu;
	}

	public void setPmipfu(Short pmipfu) {
		this.pmipfu = pmipfu;
	}

	public Long getPmis() {
		return pmis;
	}

	public void setPmis(Long pmis) {
		this.pmis = pmis;
	}

	public Short getPmisu() {
		return pmisu;
	}

	public void setPmisu(Short pmisu) {
		this.pmisu = pmisu;
	}

	public String getPmj() {
		return pmj;
	}

	public void setPmj(String pmj) {
		this.pmj = pmj;
	}

	public Short getPmjf() {
		return pmjf;
	}

	public void setPmjf(Short pmjf) {
		this.pmjf = pmjf;
	}

	public Short getPmjfu() {
		return pmjfu;
	}

	public void setPmjfu(Short pmjfu) {
		this.pmjfu = pmjfu;
	}

	public Short getPmjp() {
		return pmjp;
	}

	public void setPmjp(Short pmjp) {
		this.pmjp = pmjp;
	}

	public Short getPmjpf() {
		return pmjpf;
	}

	public void setPmjpf(Short pmjpf) {
		this.pmjpf = pmjpf;
	}

	public Short getPmjpfu() {
		return pmjpfu;
	}

	public void setPmjpfu(Short pmjpfu) {
		this.pmjpfu = pmjpfu;
	}

	public Long getPmjs() {
		return pmjs;
	}

	public void setPmjs(Long pmjs) {
		this.pmjs = pmjs;
	}

	public Short getPmjsu() {
		return pmjsu;
	}

	public void setPmjsu(Short pmjsu) {
		this.pmjsu = pmjsu;
	}

	public String getPmk() {
		return pmk;
	}

	public void setPmk(String pmk) {
		this.pmk = pmk;
	}

	public Short getPmkf() {
		return pmkf;
	}

	public void setPmkf(Short pmkf) {
		this.pmkf = pmkf;
	}

	public Short getPmkfu() {
		return pmkfu;
	}

	public void setPmkfu(Short pmkfu) {
		this.pmkfu = pmkfu;
	}

	public Short getPmkp() {
		return pmkp;
	}

	public void setPmkp(Short pmkp) {
		this.pmkp = pmkp;
	}

	public Short getPmkpf() {
		return pmkpf;
	}

	public void setPmkpf(Short pmkpf) {
		this.pmkpf = pmkpf;
	}

	public Short getPmkpfu() {
		return pmkpfu;
	}

	public void setPmkpfu(Short pmkpfu) {
		this.pmkpfu = pmkpfu;
	}

	public Long getPmks() {
		return pmks;
	}

	public void setPmks(Long pmks) {
		this.pmks = pmks;
	}

	public Short getPmksu() {
		return pmksu;
	}

	public void setPmksu(Short pmksu) {
		this.pmksu = pmksu;
	}

	public String getPml() {
		return pml;
	}

	public void setPml(String pml) {
		this.pml = pml;
	}

	public Short getPmlf() {
		return pmlf;
	}

	public void setPmlf(Short pmlf) {
		this.pmlf = pmlf;
	}

	public Short getPmlfu() {
		return pmlfu;
	}

	public void setPmlfu(Short pmlfu) {
		this.pmlfu = pmlfu;
	}

	public Short getPmlp() {
		return pmlp;
	}

	public void setPmlp(Short pmlp) {
		this.pmlp = pmlp;
	}

	public Short getPmlpf() {
		return pmlpf;
	}

	public void setPmlpf(Short pmlpf) {
		this.pmlpf = pmlpf;
	}

	public Short getPmlpfu() {
		return pmlpfu;
	}

	public void setPmlpfu(Short pmlpfu) {
		this.pmlpfu = pmlpfu;
	}

	public Long getPmls() {
		return pmls;
	}

	public void setPmls(Long pmls) {
		this.pmls = pmls;
	}

	public Short getPmlsu() {
		return pmlsu;
	}

	public void setPmlsu(Short pmlsu) {
		this.pmlsu = pmlsu;
	}

	public String getPmm() {
		return pmm;
	}

	public void setPmm(String pmm) {
		this.pmm = pmm;
	}

	public Short getPmmf() {
		return pmmf;
	}

	public void setPmmf(Short pmmf) {
		this.pmmf = pmmf;
	}

	public Short getPmmfu() {
		return pmmfu;
	}

	public void setPmmfu(Short pmmfu) {
		this.pmmfu = pmmfu;
	}

	public Short getPmmp() {
		return pmmp;
	}

	public void setPmmp(Short pmmp) {
		this.pmmp = pmmp;
	}

	public Short getPmmpf() {
		return pmmpf;
	}

	public void setPmmpf(Short pmmpf) {
		this.pmmpf = pmmpf;
	}

	public Short getPmmpfu() {
		return pmmpfu;
	}

	public void setPmmpfu(Short pmmpfu) {
		this.pmmpfu = pmmpfu;
	}

	public Long getPmms() {
		return pmms;
	}

	public void setPmms(Long pmms) {
		this.pmms = pmms;
	}

	public Short getPmmsu() {
		return pmmsu;
	}

	public void setPmmsu(Short pmmsu) {
		this.pmmsu = pmmsu;
	}

	public String getPmn() {
		return pmn;
	}

	public void setPmn(String pmn) {
		this.pmn = pmn;
	}

	public Short getPmnf() {
		return pmnf;
	}

	public void setPmnf(Short pmnf) {
		this.pmnf = pmnf;
	}

	public Short getPmnfu() {
		return pmnfu;
	}

	public void setPmnfu(Short pmnfu) {
		this.pmnfu = pmnfu;
	}

	public Short getPmnp() {
		return pmnp;
	}

	public void setPmnp(Short pmnp) {
		this.pmnp = pmnp;
	}

	public Short getPmnpf() {
		return pmnpf;
	}

	public void setPmnpf(Short pmnpf) {
		this.pmnpf = pmnpf;
	}

	public Short getPmnpfu() {
		return pmnpfu;
	}

	public void setPmnpfu(Short pmnpfu) {
		this.pmnpfu = pmnpfu;
	}

	public Long getPmns() {
		return pmns;
	}

	public void setPmns(Long pmns) {
		this.pmns = pmns;
	}

	public Short getPmnsu() {
		return pmnsu;
	}

	public void setPmnsu(Short pmnsu) {
		this.pmnsu = pmnsu;
	}

	public String getPmo() {
		return pmo;
	}

	public void setPmo(String pmo) {
		this.pmo = pmo;
	}

	public Short getPmof() {
		return pmof;
	}

	public void setPmof(Short pmof) {
		this.pmof = pmof;
	}

	public Short getPmofu() {
		return pmofu;
	}

	public void setPmofu(Short pmofu) {
		this.pmofu = pmofu;
	}

	public Short getPmop() {
		return pmop;
	}

	public void setPmop(Short pmop) {
		this.pmop = pmop;
	}

	public Short getPmopf() {
		return pmopf;
	}

	public void setPmopf(Short pmopf) {
		this.pmopf = pmopf;
	}

	public Short getPmopfu() {
		return pmopfu;
	}

	public void setPmopfu(Short pmopfu) {
		this.pmopfu = pmopfu;
	}

	public Long getPmos() {
		return pmos;
	}

	public void setPmos(Long pmos) {
		this.pmos = pmos;
	}

	public Short getPmosu() {
		return pmosu;
	}

	public void setPmosu(Short pmosu) {
		this.pmosu = pmosu;
	}

	public String getPmp() {
		return pmp;
	}

	public void setPmp(String pmp) {
		this.pmp = pmp;
	}

	public Short getPmpf() {
		return pmpf;
	}

	public void setPmpf(Short pmpf) {
		this.pmpf = pmpf;
	}

	public Short getPmpfu() {
		return pmpfu;
	}

	public void setPmpfu(Short pmpfu) {
		this.pmpfu = pmpfu;
	}

	public Short getPmpp() {
		return pmpp;
	}

	public void setPmpp(Short pmpp) {
		this.pmpp = pmpp;
	}

	public Short getPmppf() {
		return pmppf;
	}

	public void setPmppf(Short pmppf) {
		this.pmppf = pmppf;
	}

	public Short getPmppfu() {
		return pmppfu;
	}

	public void setPmppfu(Short pmppfu) {
		this.pmppfu = pmppfu;
	}

	public Long getPmps() {
		return pmps;
	}

	public void setPmps(Long pmps) {
		this.pmps = pmps;
	}

	public Short getPmpsu() {
		return pmpsu;
	}

	public void setPmpsu(Short pmpsu) {
		this.pmpsu = pmpsu;
	}

	public String getPmq() {
		return pmq;
	}

	public void setPmq(String pmq) {
		this.pmq = pmq;
	}

	public Short getPmqf() {
		return pmqf;
	}

	public void setPmqf(Short pmqf) {
		this.pmqf = pmqf;
	}

	public Short getPmqfu() {
		return pmqfu;
	}

	public void setPmqfu(Short pmqfu) {
		this.pmqfu = pmqfu;
	}

	public Short getPmqp() {
		return pmqp;
	}

	public void setPmqp(Short pmqp) {
		this.pmqp = pmqp;
	}

	public Short getPmqpf() {
		return pmqpf;
	}

	public void setPmqpf(Short pmqpf) {
		this.pmqpf = pmqpf;
	}

	public Short getPmqpfu() {
		return pmqpfu;
	}

	public void setPmqpfu(Short pmqpfu) {
		this.pmqpfu = pmqpfu;
	}

	public Long getPmqs() {
		return pmqs;
	}

	public void setPmqs(Long pmqs) {
		this.pmqs = pmqs;
	}

	public Short getPmqsu() {
		return pmqsu;
	}

	public void setPmqsu(Short pmqsu) {
		this.pmqsu = pmqsu;
	}

	public String getPmr() {
		return pmr;
	}

	public void setPmr(String pmr) {
		this.pmr = pmr;
	}

	public Short getPmrf() {
		return pmrf;
	}

	public void setPmrf(Short pmrf) {
		this.pmrf = pmrf;
	}

	public Short getPmrfu() {
		return pmrfu;
	}

	public void setPmrfu(Short pmrfu) {
		this.pmrfu = pmrfu;
	}

	public Short getPmrp() {
		return pmrp;
	}

	public void setPmrp(Short pmrp) {
		this.pmrp = pmrp;
	}

	public Short getPmrpf() {
		return pmrpf;
	}

	public void setPmrpf(Short pmrpf) {
		this.pmrpf = pmrpf;
	}

	public Short getPmrpfu() {
		return pmrpfu;
	}

	public void setPmrpfu(Short pmrpfu) {
		this.pmrpfu = pmrpfu;
	}

	public Long getPmrs() {
		return pmrs;
	}

	public void setPmrs(Long pmrs) {
		this.pmrs = pmrs;
	}

	public Short getPmrsu() {
		return pmrsu;
	}

	public void setPmrsu(Short pmrsu) {
		this.pmrsu = pmrsu;
	}

	public String getPms() {
		return pms;
	}

	public void setPms(String pms) {
		this.pms = pms;
	}

	public Short getPmsf() {
		return pmsf;
	}

	public void setPmsf(Short pmsf) {
		this.pmsf = pmsf;
	}

	public Short getPmsfu() {
		return pmsfu;
	}

	public void setPmsfu(Short pmsfu) {
		this.pmsfu = pmsfu;
	}

	public Short getPmsp() {
		return pmsp;
	}

	public void setPmsp(Short pmsp) {
		this.pmsp = pmsp;
	}

	public Short getPmspf() {
		return pmspf;
	}

	public void setPmspf(Short pmspf) {
		this.pmspf = pmspf;
	}

	public Short getPmspfu() {
		return pmspfu;
	}

	public void setPmspfu(Short pmspfu) {
		this.pmspfu = pmspfu;
	}

	public Long getPmss() {
		return pmss;
	}

	public void setPmss(Long pmss) {
		this.pmss = pmss;
	}

	public Short getPmssu() {
		return pmssu;
	}

	public void setPmssu(Short pmssu) {
		this.pmssu = pmssu;
	}

	public String getPmt() {
		return pmt;
	}

	public void setPmt(String pmt) {
		this.pmt = pmt;
	}

	public Short getPmtf() {
		return pmtf;
	}

	public void setPmtf(Short pmtf) {
		this.pmtf = pmtf;
	}

	public Short getPmtfu() {
		return pmtfu;
	}

	public void setPmtfu(Short pmtfu) {
		this.pmtfu = pmtfu;
	}

	public Short getPmtp() {
		return pmtp;
	}

	public void setPmtp(Short pmtp) {
		this.pmtp = pmtp;
	}

	public Short getPmtpf() {
		return pmtpf;
	}

	public void setPmtpf(Short pmtpf) {
		this.pmtpf = pmtpf;
	}

	public Short getPmtpfu() {
		return pmtpfu;
	}

	public void setPmtpfu(Short pmtpfu) {
		this.pmtpfu = pmtpfu;
	}

	public Long getPmts() {
		return pmts;
	}

	public void setPmts(Long pmts) {
		this.pmts = pmts;
	}

	public Short getPmtsu() {
		return pmtsu;
	}

	public void setPmtsu(Short pmtsu) {
		this.pmtsu = pmtsu;
	}


	public String getNma() {
		return nma;
	}

	public void setNma(String nma) {
		this.nma = nma;
	}

	public Short getNmaf() {
		return nmaf;
	}

	public void setNmaf(Short nmaf) {
		this.nmaf = nmaf;
	}

	public Short getNmafu() {
		return nmafu;
	}

	public void setNmafu(Short nmafu) {
		this.nmafu = nmafu;
	}

	public Long getNmas() {
		return nmas;
	}

	public void setNmas(Long nmas) {
		this.nmas = nmas;
	}

	public Short getNmasu() {
		return nmasu;
	}

	public void setNmasu(Short nmasu) {
		this.nmasu = nmasu;
	}

	public String getNmb() {
		return nmb;
	}

	public void setNmb(String nmb) {
		this.nmb = nmb;
	}

	public Short getNmbf() {
		return nmbf;
	}

	public void setNmbf(Short nmbf) {
		this.nmbf = nmbf;
	}

	public Short getNmbfu() {
		return nmbfu;
	}

	public void setNmbfu(Short nmbfu) {
		this.nmbfu = nmbfu;
	}

	public Long getNmbs() {
		return nmbs;
	}

	public void setNmbs(Long nmbs) {
		this.nmbs = nmbs;
	}

	public Short getNmbsu() {
		return nmbsu;
	}

	public void setNmbsu(Short nmbsu) {
		this.nmbsu = nmbsu;
	}

	public String getNmc() {
		return nmc;
	}

	public void setNmc(String nmc) {
		this.nmc = nmc;
	}

	public Short getNmcf() {
		return nmcf;
	}

	public void setNmcf(Short nmcf) {
		this.nmcf = nmcf;
	}

	public Short getNmcfu() {
		return nmcfu;
	}

	public void setNmcfu(Short nmcfu) {
		this.nmcfu = nmcfu;
	}

	public Long getNmcs() {
		return nmcs;
	}

	public void setNmcs(Long nmcs) {
		this.nmcs = nmcs;
	}

	public Short getNmcsu() {
		return nmcsu;
	}

	public void setNmcsu(Short nmcsu) {
		this.nmcsu = nmcsu;
	}

	public String getNmd() {
		return nmd;
	}

	public void setNmd(String nmd) {
		this.nmd = nmd;
	}

	public Short getNmdf() {
		return nmdf;
	}

	public void setNmdf(Short nmdf) {
		this.nmdf = nmdf;
	}

	public Short getNmdfu() {
		return nmdfu;
	}

	public void setNmdfu(Short nmdfu) {
		this.nmdfu = nmdfu;
	}

	public Long getNmds() {
		return nmds;
	}

	public void setNmds(Long nmds) {
		this.nmds = nmds;
	}

	public Short getNmdsu() {
		return nmdsu;
	}

	public void setNmdsu(Short nmdsu) {
		this.nmdsu = nmdsu;
	}

	public String getNme() {
		return nme;
	}

	public void setNme(String nme) {
		this.nme = nme;
	}

	public Short getNmeds() {
		return nmeds;
	}

	public void setNmeds(Short nmeds) {
		this.nmeds = nmeds;
	}

	public Short getNmef() {
		return nmef;
	}

	public void setNmef(Short nmef) {
		this.nmef = nmef;
	}

	public Short getNmefu() {
		return nmefu;
	}

	public void setNmefu(Short nmefu) {
		this.nmefu = nmefu;
	}

	public Long getNmes() {
		return nmes;
	}

	public void setNmes(Long nmes) {
		this.nmes = nmes;
	}

	public Short getNmesu() {
		return nmesu;
	}

	public void setNmesu(Short nmesu) {
		this.nmesu = nmesu;
	}

	public String getNmf() {
		return nmf;
	}

	public void setNmf(String nmf) {
		this.nmf = nmf;
	}

	public Short getNmff() {
		return nmff;
	}

	public void setNmff(Short nmff) {
		this.nmff = nmff;
	}

	public Short getNmffu() {
		return nmffu;
	}

	public void setNmffu(Short nmffu) {
		this.nmffu = nmffu;
	}

	public Long getNmfs() {
		return nmfs;
	}

	public void setNmfs(Long nmfs) {
		this.nmfs = nmfs;
	}

	public Short getNmfsu() {
		return nmfsu;
	}

	public void setNmfsu(Short nmfsu) {
		this.nmfsu = nmfsu;
	}

	public String getNmg() {
		return nmg;
	}

	public void setNmg(String nmg) {
		this.nmg = nmg;
	}

	public Short getNmgf() {
		return nmgf;
	}

	public void setNmgf(Short nmgf) {
		this.nmgf = nmgf;
	}

	public Short getNmgfu() {
		return nmgfu;
	}

	public void setNmgfu(Short nmgfu) {
		this.nmgfu = nmgfu;
	}

	public Long getNmgs() {
		return nmgs;
	}

	public void setNmgs(Long nmgs) {
		this.nmgs = nmgs;
	}

	public Short getNmgsu() {
		return nmgsu;
	}

	public void setNmgsu(Short nmgsu) {
		this.nmgsu = nmgsu;
	}

	public String getNmh() {
		return nmh;
	}

	public void setNmh(String nmh) {
		this.nmh = nmh;
	}

	public Short getNmhf() {
		return nmhf;
	}

	public void setNmhf(Short nmhf) {
		this.nmhf = nmhf;
	}

	public Short getNmhfu() {
		return nmhfu;
	}

	public void setNmhfu(Short nmhfu) {
		this.nmhfu = nmhfu;
	}

	public Long getNmhs() {
		return nmhs;
	}

	public void setNmhs(Long nmhs) {
		this.nmhs = nmhs;
	}

	public Short getNmhsu() {
		return nmhsu;
	}

	public void setNmhsu(Short nmhsu) {
		this.nmhsu = nmhsu;
	}

	public String getNmi() {
		return nmi;
	}

	public void setNmi(String nmi) {
		this.nmi = nmi;
	}

	public Short getNmif() {
		return nmif;
	}

	public void setNmif(Short nmif) {
		this.nmif = nmif;
	}

	public Short getNmifu() {
		return nmifu;
	}

	public void setNmifu(Short nmifu) {
		this.nmifu = nmifu;
	}

	public Long getNmis() {
		return nmis;
	}

	public void setNmis(Long nmis) {
		this.nmis = nmis;
	}

	public Short getNmisu() {
		return nmisu;
	}

	public void setNmisu(Short nmisu) {
		this.nmisu = nmisu;
	}

	public String getNmj() {
		return nmj;
	}

	public void setNmj(String nmj) {
		this.nmj = nmj;
	}

	public Short getNmjf() {
		return nmjf;
	}

	public void setNmjf(Short nmjf) {
		this.nmjf = nmjf;
	}

	public Short getNmjfu() {
		return nmjfu;
	}

	public void setNmjfu(Short nmjfu) {
		this.nmjfu = nmjfu;
	}

	public Long getNmjs() {
		return nmjs;
	}

	public void setNmjs(Long nmjs) {
		this.nmjs = nmjs;
	}

	public Short getNmjsu() {
		return nmjsu;
	}

	public void setNmjsu(Short nmjsu) {
		this.nmjsu = nmjsu;
	}

	public String getNmk() {
		return nmk;
	}

	public void setNmk(String nmk) {
		this.nmk = nmk;
	}

	public Short getNmkf() {
		return nmkf;
	}

	public void setNmkf(Short nmkf) {
		this.nmkf = nmkf;
	}

	public Short getNmkfu() {
		return nmkfu;
	}

	public void setNmkfu(Short nmkfu) {
		this.nmkfu = nmkfu;
	}

	public Long getNmks() {
		return nmks;
	}

	public void setNmks(Long nmks) {
		this.nmks = nmks;
	}

	public Short getNmksu() {
		return nmksu;
	}

	public void setNmksu(Short nmksu) {
		this.nmksu = nmksu;
	}

	public String getNml() {
		return nml;
	}

	public void setNml(String nml) {
		this.nml = nml;
	}

	public Short getNmlf() {
		return nmlf;
	}

	public void setNmlf(Short nmlf) {
		this.nmlf = nmlf;
	}

	public Short getNmlfu() {
		return nmlfu;
	}

	public void setNmlfu(Short nmlfu) {
		this.nmlfu = nmlfu;
	}

	public Long getNmls() {
		return nmls;
	}

	public void setNmls(Long nmls) {
		this.nmls = nmls;
	}

	public Short getNmlsu() {
		return nmlsu;
	}

	public void setNmlsu(Short nmlsu) {
		this.nmlsu = nmlsu;
	}

	public String getNmm() {
		return nmm;
	}

	public void setNmm(String nmm) {
		this.nmm = nmm;
	}

	public Short getNmmf() {
		return nmmf;
	}

	public void setNmmf(Short nmmf) {
		this.nmmf = nmmf;
	}

	public Short getNmmfu() {
		return nmmfu;
	}

	public void setNmmfu(Short nmmfu) {
		this.nmmfu = nmmfu;
	}

	public Long getNmms() {
		return nmms;
	}

	public void setNmms(Long nmms) {
		this.nmms = nmms;
	}

	public Short getNmmsu() {
		return nmmsu;
	}

	public void setNmmsu(Short nmmsu) {
		this.nmmsu = nmmsu;
	}

	public String getNmn() {
		return nmn;
	}

	public void setNmn(String nmn) {
		this.nmn = nmn;
	}

	public Short getNmnf() {
		return nmnf;
	}

	public void setNmnf(Short nmnf) {
		this.nmnf = nmnf;
	}

	public Short getNmnfu() {
		return nmnfu;
	}

	public void setNmnfu(Short nmnfu) {
		this.nmnfu = nmnfu;
	}

	public Long getNmns() {
		return nmns;
	}

	public void setNmns(Long nmns) {
		this.nmns = nmns;
	}

	public Short getNmnsu() {
		return nmnsu;
	}

	public void setNmnsu(Short nmnsu) {
		this.nmnsu = nmnsu;
	}

	public String getNmo() {
		return nmo;
	}

	public void setNmo(String nmo) {
		this.nmo = nmo;
	}

	public Short getNmof() {
		return nmof;
	}

	public void setNmof(Short nmof) {
		this.nmof = nmof;
	}

	public Short getNmofu() {
		return nmofu;
	}

	public void setNmofu(Short nmofu) {
		this.nmofu = nmofu;
	}

	public Long getNmos() {
		return nmos;
	}

	public void setNmos(Long nmos) {
		this.nmos = nmos;
	}

	public Short getNmosu() {
		return nmosu;
	}

	public void setNmosu(Short nmosu) {
		this.nmosu = nmosu;
	}

	public String getNmp() {
		return nmp;
	}

	public void setNmp(String nmp) {
		this.nmp = nmp;
	}

	public Short getNmpf() {
		return nmpf;
	}

	public void setNmpf(Short nmpf) {
		this.nmpf = nmpf;
	}

	public Short getNmpfu() {
		return nmpfu;
	}

	public void setNmpfu(Short nmpfu) {
		this.nmpfu = nmpfu;
	}

	public Long getNmps() {
		return nmps;
	}

	public void setNmps(Long nmps) {
		this.nmps = nmps;
	}

	public Short getNmpsu() {
		return nmpsu;
	}

	public void setNmpsu(Short nmpsu) {
		this.nmpsu = nmpsu;
	}

	public String getNmq() {
		return nmq;
	}

	public void setNmq(String nmq) {
		this.nmq = nmq;
	}

	public Short getNmqf() {
		return nmqf;
	}

	public void setNmqf(Short nmqf) {
		this.nmqf = nmqf;
	}

	public Short getNmqfu() {
		return nmqfu;
	}

	public void setNmqfu(Short nmqfu) {
		this.nmqfu = nmqfu;
	}

	public Long getNmqs() {
		return nmqs;
	}

	public void setNmqs(Long nmqs) {
		this.nmqs = nmqs;
	}

	public Short getNmqsu() {
		return nmqsu;
	}

	public void setNmqsu(Short nmqsu) {
		this.nmqsu = nmqsu;
	}

	public String getNmr() {
		return nmr;
	}

	public void setNmr(String nmr) {
		this.nmr = nmr;
	}

	public Short getNmrf() {
		return nmrf;
	}

	public void setNmrf(Short nmrf) {
		this.nmrf = nmrf;
	}

	public Short getNmrfu() {
		return nmrfu;
	}

	public void setNmrfu(Short nmrfu) {
		this.nmrfu = nmrfu;
	}

	public Long getNmrs() {
		return nmrs;
	}

	public void setNmrs(Long nmrs) {
		this.nmrs = nmrs;
	}

	public Short getNmrsu() {
		return nmrsu;
	}

	public void setNmrsu(Short nmrsu) {
		this.nmrsu = nmrsu;
	}

	public String getNms() {
		return nms;
	}

	public void setNms(String nms) {
		this.nms = nms;
	}

	public Short getNmsf() {
		return nmsf;
	}

	public void setNmsf(Short nmsf) {
		this.nmsf = nmsf;
	}

	public Short getNmsfu() {
		return nmsfu;
	}

	public void setNmsfu(Short nmsfu) {
		this.nmsfu = nmsfu;
	}

	public Long getNmss() {
		return nmss;
	}

	public void setNmss(Long nmss) {
		this.nmss = nmss;
	}

	public Short getNmssu() {
		return nmssu;
	}

	public void setNmssu(Short nmssu) {
		this.nmssu = nmssu;
	}

	public String getNmt() {
		return nmt;
	}

	public void setNmt(String nmt) {
		this.nmt = nmt;
	}

	public Short getNmtf() {
		return nmtf;
	}

	public void setNmtf(Short nmtf) {
		this.nmtf = nmtf;
	}

	public Short getNmtfu() {
		return nmtfu;
	}

	public void setNmtfu(Short nmtfu) {
		this.nmtfu = nmtfu;
	}

	public Long getNmts() {
		return nmts;
	}

	public void setNmts(Long nmts) {
		this.nmts = nmts;
	}

	public Short getNmtsu() {
		return nmtsu;
	}

	public void setNmtsu(Short nmtsu) {
		this.nmtsu = nmtsu;
	}


	public Short getVitasups() {
		return vitasups;
	}

	public void setVitasups(Short vitasups) {
		this.vitasups = vitasups;
	}

	public String getVsa() {
		return vsa;
	}

	public void setVsa(String vsa) {
		this.vsa = vsa;
	}

	public Short getVsaf() {
		return vsaf;
	}

	public void setVsaf(Short vsaf) {
		this.vsaf = vsaf;
	}

	public Short getVsafu() {
		return vsafu;
	}

	public void setVsafu(Short vsafu) {
		this.vsafu = vsafu;
	}

	public Long getVsas() {
		return vsas;
	}

	public void setVsas(Long vsas) {
		this.vsas = vsas;
	}

	public Short getVsasu() {
		return vsasu;
	}

	public void setVsasu(Short vsasu) {
		this.vsasu = vsasu;
	}

	public String getVsb() {
		return vsb;
	}

	public void setVsb(String vsb) {
		this.vsb = vsb;
	}

	public Short getVsbf() {
		return vsbf;
	}

	public void setVsbf(Short vsbf) {
		this.vsbf = vsbf;
	}

	public Short getVsbfu() {
		return vsbfu;
	}

	public void setVsbfu(Short vsbfu) {
		this.vsbfu = vsbfu;
	}

	public Long getVsbs() {
		return vsbs;
	}

	public void setVsbs(Long vsbs) {
		this.vsbs = vsbs;
	}

	public Short getVsbsu() {
		return vsbsu;
	}

	public void setVsbsu(Short vsbsu) {
		this.vsbsu = vsbsu;
	}

	public String getVsc() {
		return vsc;
	}

	public void setVsc(String vsc) {
		this.vsc = vsc;
	}

	public Short getVscf() {
		return vscf;
	}

	public void setVscf(Short vscf) {
		this.vscf = vscf;
	}

	public Short getVscfu() {
		return vscfu;
	}

	public void setVscfu(Short vscfu) {
		this.vscfu = vscfu;
	}
	
	public Long getVscs() {
		return vscs;
	}

	public void setVscs(Long vscs) {
		this.vscs = vscs;
	}

	public Short getVscsu() {
		return vscsu;
	}

	public void setVscsu(Short vscsu) {
		this.vscsu = vscsu;
	}

	public String getVsd() {
		return vsd;
	}

	public void setVsd(String vsd) {
		this.vsd = vsd;
	}

	public Short getVsdf() {
		return vsdf;
	}

	public void setVsdf(Short vsdf) {
		this.vsdf = vsdf;
	}

	public Short getVsdfu() {
		return vsdfu;
	}

	public void setVsdfu(Short vsdfu) {
		this.vsdfu = vsdfu;
	}

	public Long getVsds() {
		return vsds;
	}

	public void setVsds(Long vsds) {
		this.vsds = vsds;
	}

	public Short getVsdsu() {
		return vsdsu;
	}

	public void setVsdsu(Short vsdsu) {
		this.vsdsu = vsdsu;
	}

	public String getVse() {
		return vse;
	}

	public void setVse(String vse) {
		this.vse = vse;
	}

	public Short getVsef() {
		return vsef;
	}

	public void setVsef(Short vsef) {
		this.vsef = vsef;
	}

	public Short getVsefu() {
		return vsefu;
	}

	public void setVsefu(Short vsefu) {
		this.vsefu = vsefu;
	}

	public Long getVses() {
		return vses;
	}

	public void setVses(Long vses) {
		this.vses = vses;
	}

	public Short getVsesu() {
		return vsesu;
	}

	public void setVsesu(Short vsesu) {
		this.vsesu = vsesu;
	}

	public String getVsf() {
		return vsf;
	}

	public void setVsf(String vsf) {
		this.vsf = vsf;
	}

	public Short getVsff() {
		return vsff;
	}

	public void setVsff(Short vsff) {
		this.vsff = vsff;
	}

	public Short getVsffu() {
		return vsffu;
	}

	public void setVsffu(Short vsffu) {
		this.vsffu = vsffu;
	}

	public Long getVsfs() {
		return vsfs;
	}

	public void setVsfs(Long vsfs) {
		this.vsfs = vsfs;
	}

	public Short getVsfsu() {
		return vsfsu;
	}

	public void setVsfsu(Short vsfsu) {
		this.vsfsu = vsfsu;
	}

	public String getVsg() {
		return vsg;
	}

	public void setVsg(String vsg) {
		this.vsg = vsg;
	}

	public Short getVsgf() {
		return vsgf;
	}

	public void setVsgf(Short vsgf) {
		this.vsgf = vsgf;
	}

	public Short getVsgfu() {
		return vsgfu;
	}

	public void setVsgfu(Short vsgfu) {
		this.vsgfu = vsgfu;
	}

	public Long getVsgs() {
		return vsgs;
	}

	public void setVsgs(Long vsgs) {
		this.vsgs = vsgs;
	}

	public Short getVsgsu() {
		return vsgsu;
	}

	public void setVsgsu(Short vsgsu) {
		this.vsgsu = vsgsu;
	}

	public String getVsh() {
		return vsh;
	}

	public void setVsh(String vsh) {
		this.vsh = vsh;
	}

	public Short getVshf() {
		return vshf;
	}

	public void setVshf(Short vshf) {
		this.vshf = vshf;
	}

	public Short getVshfu() {
		return vshfu;
	}

	public void setVshfu(Short vshfu) {
		this.vshfu = vshfu;
	}

	public Long getVshs() {
		return vshs;
	}

	public void setVshs(Long vshs) {
		this.vshs = vshs;
	}

	public Short getVshsu() {
		return vshsu;
	}

	public void setVshsu(Short vshsu) {
		this.vshsu = vshsu;
	}

	public String getVsi() {
		return vsi;
	}

	public void setVsi(String vsi) {
		this.vsi = vsi;
	}

	public Short getVsif() {
		return vsif;
	}

	public void setVsif(Short vsif) {
		this.vsif = vsif;
	}

	public Short getVsifu() {
		return vsifu;
	}

	public void setVsifu(Short vsifu) {
		this.vsifu = vsifu;
	}

	public Long getVsis() {
		return vsis;
	}

	public void setVsis(Long vsis) {
		this.vsis = vsis;
	}

	public Short getVsisu() {
		return vsisu;
	}

	public void setVsisu(Short vsisu) {
		this.vsisu = vsisu;
	}

	public String getVsj() {
		return vsj;
	}

	public void setVsj(String vsj) {
		this.vsj = vsj;
	}

	public Short getVsjf() {
		return vsjf;
	}

	public void setVsjf(Short vsjf) {
		this.vsjf = vsjf;
	}

	public Short getVsjfu() {
		return vsjfu;
	}

	public void setVsjfu(Short vsjfu) {
		this.vsjfu = vsjfu;
	}

	public Long getVsjs() {
		return vsjs;
	}

	public void setVsjs(Long vsjs) {
		this.vsjs = vsjs;
	}

	public Short getVsjsu() {
		return vsjsu;
	}

	public void setVsjsu(Short vsjsu) {
		this.vsjsu = vsjsu;
	}

	public String getVsk() {
		return vsk;
	}

	public void setVsk(String vsk) {
		this.vsk = vsk;
	}

	public Short getVskf() {
		return vskf;
	}

	public void setVskf(Short vskf) {
		this.vskf = vskf;
	}

	public Short getVskfu() {
		return vskfu;
	}

	public void setVskfu(Short vskfu) {
		this.vskfu = vskfu;
	}

	public Long getVsks() {
		return vsks;
	}

	public void setVsks(Long vsks) {
		this.vsks = vsks;
	}

	public Short getVsksu() {
		return vsksu;
	}

	public void setVsksu(Short vsksu) {
		this.vsksu = vsksu;
	}

	public String getVsl() {
		return vsl;
	}

	public void setVsl(String vsl) {
		this.vsl = vsl;
	}

	public Short getVslf() {
		return vslf;
	}

	public void setVslf(Short vslf) {
		this.vslf = vslf;
	}

	public Short getVslfu() {
		return vslfu;
	}

	public void setVslfu(Short vslfu) {
		this.vslfu = vslfu;
	}

	public Long getVsls() {
		return vsls;
	}

	public void setVsls(Long vsls) {
		this.vsls = vsls;
	}

	public Short getVslsu() {
		return vslsu;
	}

	public void setVslsu(Short vslsu) {
		this.vslsu = vslsu;
	}

	public String getVsm() {
		return vsm;
	}

	public void setVsm(String vsm) {
		this.vsm = vsm;
	}

	public Short getVsmf() {
		return vsmf;
	}

	public void setVsmf(Short vsmf) {
		this.vsmf = vsmf;
	}

	public Short getVsmfu() {
		return vsmfu;
	}

	public void setVsmfu(Short vsmfu) {
		this.vsmfu = vsmfu;
	}

	public Long getVsms() {
		return vsms;
	}

	public void setVsms(Long vsms) {
		this.vsms = vsms;
	}

	public Short getVsmsu() {
		return vsmsu;
	}

	public void setVsmsu(Short vsmsu) {
		this.vsmsu = vsmsu;
	}

	public String getVsn() {
		return vsn;
	}

	public void setVsn(String vsn) {
		this.vsn = vsn;
	}

	public Short getVsnf() {
		return vsnf;
	}

	public void setVsnf(Short vsnf) {
		this.vsnf = vsnf;
	}

	public Short getVsnfu() {
		return vsnfu;
	}

	public void setVsnfu(Short vsnfu) {
		this.vsnfu = vsnfu;
	}

	public Long getVsns() {
		return vsns;
	}

	public void setVsns(Long vsns) {
		this.vsns = vsns;
	}

	public Short getVsnsu() {
		return vsnsu;
	}

	public void setVsnsu(Short vsnsu) {
		this.vsnsu = vsnsu;
	}

	public String getVso() {
		return vso;
	}

	public void setVso(String vso) {
		this.vso = vso;
	}

	public Short getVsof() {
		return vsof;
	}

	public void setVsof(Short vsof) {
		this.vsof = vsof;
	}

	public Short getVsofu() {
		return vsofu;
	}

	public void setVsofu(Short vsofu) {
		this.vsofu = vsofu;
	}

	public Long getVsos() {
		return vsos;
	}

	public void setVsos(Long vsos) {
		this.vsos = vsos;
	}

	public Short getVsosu() {
		return vsosu;
	}

	public void setVsosu(Short vsosu) {
		this.vsosu = vsosu;
	}

	public String getVsp() {
		return vsp;
	}

	public void setVsp(String vsp) {
		this.vsp = vsp;
	}

	public Short getVspf() {
		return vspf;
	}

	public void setVspf(Short vspf) {
		this.vspf = vspf;
	}

	public Short getVspfu() {
		return vspfu;
	}

	public void setVspfu(Short vspfu) {
		this.vspfu = vspfu;
	}

	public Long getVsps() {
		return vsps;
	}

	public void setVsps(Long vsps) {
		this.vsps = vsps;
	}

	public Short getVspsu() {
		return vspsu;
	}

	public void setVspsu(Short vspsu) {
		this.vspsu = vspsu;
	}

	public String getVsq() {
		return vsq;
	}

	public void setVsq(String vsq) {
		this.vsq = vsq;
	}

	public Short getVsqf() {
		return vsqf;
	}

	public void setVsqf(Short vsqf) {
		this.vsqf = vsqf;
	}

	public Short getVsqfu() {
		return vsqfu;
	}

	public void setVsqfu(Short vsqfu) {
		this.vsqfu = vsqfu;
	}

	public Long getVsqs() {
		return vsqs;
	}

	public void setVsqs(Long vsqs) {
		this.vsqs = vsqs;
	}

	public Short getVsqsu() {
		return vsqsu;
	}

	public void setVsqsu(Short vsqsu) {
		this.vsqsu = vsqsu;
	}

	public String getVsr() {
		return vsr;
	}

	public void setVsr(String vsr) {
		this.vsr = vsr;
	}

	public Short getVsrf() {
		return vsrf;
	}

	public void setVsrf(Short vsrf) {
		this.vsrf = vsrf;
	}

	public Short getVsrfu() {
		return vsrfu;
	}

	public void setVsrfu(Short vsrfu) {
		this.vsrfu = vsrfu;
	}

	public Long getVsrs() {
		return vsrs;
	}

	public void setVsrs(Long vsrs) {
		this.vsrs = vsrs;
	}

	public Short getVsrsu() {
		return vsrsu;
	}

	public void setVsrsu(Short vsrsu) {
		this.vsrsu = vsrsu;
	}

	public String getVss() {
		return vss;
	}

	public void setVss(String vss) {
		this.vss = vss;
	}

	public Short getVssf() {
		return vssf;
	}

	public void setVssf(Short vssf) {
		this.vssf = vssf;
	}

	public Short getVssfu() {
		return vssfu;
	}

	public void setVssfu(Short vssfu) {
		this.vssfu = vssfu;
	}

	public Long getVsss() {
		return vsss;
	}

	public void setVsss(Long vsss) {
		this.vsss = vsss;
	}

	public Short getVsssu() {
		return vsssu;
	}

	public void setVsssu(Short vsssu) {
		this.vsssu = vsssu;
	}

	public String getVst() {
		return vst;
	}

	public void setVst(String vst) {
		this.vst = vst;
	}

	public Short getVstf() {
		return vstf;
	}

	public void setVstf(Short vstf) {
		this.vstf = vstf;
	}

	public Short getVstfu() {
		return vstfu;
	}

	public void setVstfu(Short vstfu) {
		this.vstfu = vstfu;
	}

	public Long getVsts() {
		return vsts;
	}

	public void setVsts(Long vsts) {
		this.vsts = vsts;
	}

	public Short getVstsu() {
		return vstsu;
	}

	public void setVstsu(Short vstsu) {
		this.vstsu = vstsu;
	}

	
	
	

	public String[] getRequiredResultFields() {
		return new String[] {
				"pmeds",
				"nmeds",
				"vitasups"
		};
	}
	
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getPmeds())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPma())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmasu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmaf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmafu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmap())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmapf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmapfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmbpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmcpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmds())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmdsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmdf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmdfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmdp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmdpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmdpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPme())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmes())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmesu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmef())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmefu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmep())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmepf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmepfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmfs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmfsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmff())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmffu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmfp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmfpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmfpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmgpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmhpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmisu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmif())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmifu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmip())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmipf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmipfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmj())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmjpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmk())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmks())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmksu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmkf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmkfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmkp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmkpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmkpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPml())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmls())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmlsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmlf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmlfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmlp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmlpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmlpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmms())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmmsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmmf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmmfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmmp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmmpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmmpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmns())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmnsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmnf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmnfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmnp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmnpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmnpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmosu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmof())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmofu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmop())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmopf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmopfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmps())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmpsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmpp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmppf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmppfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmq())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmqpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmrpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPms())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmss())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmssu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmsf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmsfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmsp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmspf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmspfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmts())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmtsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmtf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmtfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmtp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmtpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPmtpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmeds())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNma())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmasu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmaf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmafu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmbs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmbsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmbf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmbfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmcs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmcsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmcf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmcfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmds())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmdsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmdf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmdfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNme())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmes())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmesu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmef())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmefu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmfs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmfsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmff())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmffu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmgs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmgsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmgf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmgfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmhs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmhsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmhf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmhfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmisu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmif())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmifu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmj())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmjs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmjsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmjf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmjfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmk())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmks())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmksu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmkf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmkfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNml())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmls())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmlsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmlf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmlfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmms())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmmsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmmf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmmfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmns())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmnsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmnf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmnfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmosu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmof())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmofu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmps())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmpsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmpf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmpfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmq())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmqs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmqsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmqf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmqfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmrs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmrsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmrf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmrfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNms())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmss())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmssu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmsf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmsfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmts())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmtsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmtf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getNmtfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVitasups())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsasu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsaf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsafu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsbs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsbsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsbf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsbfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVscs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVscsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVscf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVscfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsds())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsdsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsdf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsdfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVse())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVses())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsesu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsef())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsefu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsfs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsfsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsff())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsffu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsgs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsgsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsgf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsgfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVshs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVshsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVshf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVshfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsisu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsif())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsifu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsj())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsjs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsjsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsjf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsjfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsk())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsks())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsksu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVskf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVskfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsls())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVslsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVslf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVslfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsms())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsmsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsmf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsmfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsns())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsnsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsnf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsnfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVso())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsosu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsof())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsofu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsps())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVspsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVspf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVspfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsq())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsqs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsqsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsqf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsqfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsrs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsrsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsrf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsrfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVss())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsss())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsssu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVssf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVssfu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVst())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVsts())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVstsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVstf())).append(",");
		buffer.append(UdsUploadUtils.formatField(getVstfu()));

		return buffer.toString();
	}
	

}


