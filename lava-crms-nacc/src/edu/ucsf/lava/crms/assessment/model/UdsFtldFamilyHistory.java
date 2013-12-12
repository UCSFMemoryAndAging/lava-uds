package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldFamilyHistory extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldFamilyHistory.class);
	public static final String UDS_FTLD_FAMILYHISTORY_FORMID = "A3F";
	public UdsFtldFamilyHistory() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldFamilyHistory(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_FAMILYHISTORY_FORMID);
	}
	
	// note: id inherited from Instrument
	
	protected Short ftdfa3f1;
	protected Short ftdaff;
	protected Short ftdmutat;
	protected Short ftdpmut;
	protected String ftdpmutx;
	protected Short ftdmclab;
	protected Short ftdmrlab;
	protected Short ftdmfamr;
	protected Short ftdmoth;
	protected String ftdmothx;
	protected Short ftdfa3f2;
	protected Short ftdmomn;
	protected Short ftdmomp;
	protected Short ftdmome;
	protected Short ftdmoma;
	protected Short ftddadn;
	protected Short ftddadp;
	protected Short ftddade;
	protected Short ftddada;
	protected Short ftdfa3f3;
	protected Short ftdbsam;
	protected Short ftdbsa;
	protected Short ftdnsa;
	protected Short ftdpsa;
	protected Short ftdmsa;
	protected Short ftdasa;
	protected Short ftdbsbm;
	protected Short ftdbsb;
	protected Short ftdnsb;
	protected Short ftdpsb;
	protected Short ftdmsb;
	protected Short ftdasb;
	protected Short ftdbscm;
	protected Short ftdbsc;
	protected Short ftdnsc;
	protected Short ftdpsc;
	protected Short ftdmsc;
	protected Short ftdasc;
	protected Short ftdbsdm;
	protected Short ftdbsd;
	protected Short ftdnsd;
	protected Short ftdpsd;
	protected Short ftdmsd;
	protected Short ftdasd;
	protected Short ftdbsem;
	protected Short ftdbse;
	protected Short ftdnse;
	protected Short ftdpse;
	protected Short ftdmse;
	protected Short ftdase;
	protected Short ftdbsfm;
	protected Short ftdbsf;
	protected Short ftdnsf;
	protected Short ftdpsf;
	protected Short ftdmsf;
	protected Short ftdasf;
	protected Short ftdbsgm;
	protected Short ftdbsg;
	protected Short ftdnsg;
	protected Short ftdpsg;
	protected Short ftdmsg;
	protected Short ftdasg;
	protected Short ftdbshm;
	protected Short ftdbsh;
	protected Short ftdnsh;
	protected Short ftdpsh;
	protected Short ftdmsh;
	protected Short ftdash;
	protected Short ftdbsim;
	protected Short ftdbsi;
	protected Short ftdnsi;
	protected Short ftdpsi;
	protected Short ftdmsi;
	protected Short ftdasi;
	protected Short ftdbsjm;
	protected Short ftdbsj;
	protected Short ftdnsj;
	protected Short ftdpsj;
	protected Short ftdmsj;
	protected Short ftdasj;
	protected Short ftdbskm;
	protected Short ftdbsk;
	protected Short ftdnsk;
	protected Short ftdpsk;
	protected Short ftdmsk;
	protected Short ftdask;
	protected Short ftdbslm;
	protected Short ftdbsl;
	protected Short ftdnsl;
	protected Short ftdpsl;
	protected Short ftdmsl;
	protected Short ftdasl;
	protected Short ftdbsmm;
	protected Short ftdbsm;
	protected Short ftdnsm;
	protected Short ftdpsm;
	protected Short ftdmsm;
	protected Short ftdasm;
	protected Short ftdfa3f4;
	protected Short ftdbcam;
	protected Short ftdbca;
	protected Short ftdnca;
	protected Short ftdpca;
	protected Short ftdmca;
	protected Short ftdaca;
	protected Short ftdbcbm;
	protected Short ftdbcb;
	protected Short ftdncb;
	protected Short ftdpcb;
	protected Short ftdmcb;
	protected Short ftdacb;
	protected Short ftdbccm;
	protected Short ftdbcc;
	protected Short ftdncc;
	protected Short ftdpcc;
	protected Short ftdmcc;
	protected Short ftdacc;
	protected Short ftdbcdm;
	protected Short ftdbcd;
	protected Short ftdncd;
	protected Short ftdpcd;
	protected Short ftdmcd;
	protected Short ftdacd;
	protected Short ftdbcem;
	protected Short ftdbce;
	protected Short ftdnce;
	protected Short ftdpce;
	protected Short ftdmce;
	protected Short ftdace;
	protected Short ftdbcfm;
	protected Short ftdbcf;
	protected Short ftdncf;
	protected Short ftdpcf;
	protected Short ftdmcf;
	protected Short ftdacf;
	protected Short ftdbcgm;
	protected Short ftdbcg;
	protected Short ftdncg;
	protected Short ftdpcg;
	protected Short ftdmcg;
	protected Short ftdacg;
	protected Short ftdbchm;
	protected Short ftdbch;
	protected Short ftdnch;
	protected Short ftdpch;
	protected Short ftdmch;
	protected Short ftdach;
	protected Short ftdbcim;
	protected Short ftdbci;
	protected Short ftdnci;
	protected Short ftdpci;
	protected Short ftdmci;
	protected Short ftdaci;
	protected Short ftdbcjm;
	protected Short ftdbcj;
	protected Short ftdncj;
	protected Short ftdpcj;
	protected Short ftdmcj;
	protected Short ftdacj;
	protected Short ftdbckm;
	protected Short ftdbck;
	protected Short ftdnck;
	protected Short ftdpck;
	protected Short ftdmck;
	protected Short ftdack;
	protected Short ftdbclm;
	protected Short ftdbcl;
	protected Short ftdncl;
	protected Short ftdpcl;
	protected Short ftdmcl;
	protected Short ftdacl;
	protected Short ftdbcmm;
	protected Short ftdbcm;
	protected Short ftdncm;
	protected Short ftdpcm;
	protected Short ftdmcm;
	protected Short ftdacm;	
	
	public Short getFtdfa3f1() {
		return ftdfa3f1;
	}

	public void setFtdfa3f1(Short ftdfa3f1) {
		this.ftdfa3f1 = ftdfa3f1;
	}

	public Short getFtdfa3f2() {
		return ftdfa3f2;
	}

	public void setFtdfa3f2(Short ftdfa3f2) {
		this.ftdfa3f2 = ftdfa3f2;
	}

	public Short getFtdfa3f3() {
		return ftdfa3f3;
	}

	public void setFtdfa3f3(Short ftdfa3f3) {
		this.ftdfa3f3 = ftdfa3f3;
	}

	public Short getFtdfa3f4() {
		return ftdfa3f4;
	}

	public void setFtdfa3f4(Short ftdfa3f4) {
		this.ftdfa3f4 = ftdfa3f4;
	}

	public Short getFtdaff() {
		return ftdaff;
	}

	public void setFtdaff(Short ftdaff) {
		this.ftdaff = ftdaff;
	}

	public Short getFtdmutat() {
		return ftdmutat;
	}

	public void setFtdmutat(Short ftdmutat) {
		this.ftdmutat = ftdmutat;
	}

	public Short getFtdpmut() {
		return ftdpmut;
	}

	public void setFtdpmut(Short ftdpmut) {
		this.ftdpmut = ftdpmut;
	}

	public String getFtdpmutx() {
		return ftdpmutx;
	}

	public void setFtdpmutx(String ftdpmutx) {
		this.ftdpmutx = ftdpmutx;
	}

	public Short getFtdmclab() {
		return ftdmclab;
	}

	public void setFtdmclab(Short ftdmclab) {
		this.ftdmclab = ftdmclab;
	}

	public Short getFtdmrlab() {
		return ftdmrlab;
	}

	public void setFtdmrlab(Short ftdmrlab) {
		this.ftdmrlab = ftdmrlab;
	}

	public Short getFtdmfamr() {
		return ftdmfamr;
	}

	public void setFtdmfamr(Short ftdmfamr) {
		this.ftdmfamr = ftdmfamr;
	}

	public Short getFtdmoth() {
		return ftdmoth;
	}

	public void setFtdmoth(Short ftdmoth) {
		this.ftdmoth = ftdmoth;
	}

	public String getFtdmothx() {
		return ftdmothx;
	}

	public void setFtdmothx(String ftdmothx) {
		this.ftdmothx = ftdmothx;
	}

	public Short getFtdmomn() {
		return ftdmomn;
	}

	public void setFtdmomn(Short ftdmomn) {
		this.ftdmomn = ftdmomn;
	}

	public Short getFtdmomp() {
		return ftdmomp;
	}

	public void setFtdmomp(Short ftdmomp) {
		this.ftdmomp = ftdmomp;
	}

	public Short getFtdmome() {
		return ftdmome;
	}

	public void setFtdmome(Short ftdmome) {
		this.ftdmome = ftdmome;
	}

	public Short getFtdmoma() {
		return ftdmoma;
	}

	public void setFtdmoma(Short ftdmoma) {
		this.ftdmoma = ftdmoma;
	}

	public Short getFtddadn() {
		return ftddadn;
	}

	public void setFtddadn(Short ftddadn) {
		this.ftddadn = ftddadn;
	}

	public Short getFtddadp() {
		return ftddadp;
	}

	public void setFtddadp(Short ftddadp) {
		this.ftddadp = ftddadp;
	}

	public Short getFtddade() {
		return ftddade;
	}

	public void setFtddade(Short ftddade) {
		this.ftddade = ftddade;
	}

	public Short getFtddada() {
		return ftddada;
	}

	public void setFtddada(Short ftddada) {
		this.ftddada = ftddada;
	}

	public Short getFtdbsam() {
		return ftdbsam;
	}

	public void setFtdbsam(Short ftdbsam) {
		this.ftdbsam = ftdbsam;
	}

	public Short getFtdbsa() {
		return ftdbsa;
	}

	public void setFtdbsa(Short ftdbsa) {
		this.ftdbsa = ftdbsa;
	}

	public Short getFtdnsa() {
		return ftdnsa;
	}

	public void setFtdnsa(Short ftdnsa) {
		this.ftdnsa = ftdnsa;
	}

	public Short getFtdpsa() {
		return ftdpsa;
	}

	public void setFtdpsa(Short ftdpsa) {
		this.ftdpsa = ftdpsa;
	}

	public Short getFtdmsa() {
		return ftdmsa;
	}

	public void setFtdmsa(Short ftdmsa) {
		this.ftdmsa = ftdmsa;
	}

	public Short getFtdasa() {
		return ftdasa;
	}

	public void setFtdasa(Short ftdasa) {
		this.ftdasa = ftdasa;
	}

	public Short getFtdbsbm() {
		return ftdbsbm;
	}

	public void setFtdbsbm(Short ftdbsbm) {
		this.ftdbsbm = ftdbsbm;
	}

	public Short getFtdbsb() {
		return ftdbsb;
	}

	public void setFtdbsb(Short ftdbsb) {
		this.ftdbsb = ftdbsb;
	}

	public Short getFtdnsb() {
		return ftdnsb;
	}

	public void setFtdnsb(Short ftdnsb) {
		this.ftdnsb = ftdnsb;
	}

	public Short getFtdpsb() {
		return ftdpsb;
	}

	public void setFtdpsb(Short ftdpsb) {
		this.ftdpsb = ftdpsb;
	}

	public Short getFtdmsb() {
		return ftdmsb;
	}

	public void setFtdmsb(Short ftdmsb) {
		this.ftdmsb = ftdmsb;
	}

	public Short getFtdasb() {
		return ftdasb;
	}

	public void setFtdasb(Short ftdasb) {
		this.ftdasb = ftdasb;
	}

	public Short getFtdbscm() {
		return ftdbscm;
	}

	public void setFtdbscm(Short ftdbscm) {
		this.ftdbscm = ftdbscm;
	}

	public Short getFtdbsc() {
		return ftdbsc;
	}

	public void setFtdbsc(Short ftdbsc) {
		this.ftdbsc = ftdbsc;
	}

	public Short getFtdnsc() {
		return ftdnsc;
	}

	public void setFtdnsc(Short ftdnsc) {
		this.ftdnsc = ftdnsc;
	}

	public Short getFtdpsc() {
		return ftdpsc;
	}

	public void setFtdpsc(Short ftdpsc) {
		this.ftdpsc = ftdpsc;
	}

	public Short getFtdmsc() {
		return ftdmsc;
	}

	public void setFtdmsc(Short ftdmsc) {
		this.ftdmsc = ftdmsc;
	}

	public Short getFtdasc() {
		return ftdasc;
	}

	public void setFtdasc(Short ftdasc) {
		this.ftdasc = ftdasc;
	}

	public Short getFtdbsdm() {
		return ftdbsdm;
	}

	public void setFtdbsdm(Short ftdbsdm) {
		this.ftdbsdm = ftdbsdm;
	}

	public Short getFtdbsd() {
		return ftdbsd;
	}

	public void setFtdbsd(Short ftdbsd) {
		this.ftdbsd = ftdbsd;
	}

	public Short getFtdnsd() {
		return ftdnsd;
	}

	public void setFtdnsd(Short ftdnsd) {
		this.ftdnsd = ftdnsd;
	}

	public Short getFtdpsd() {
		return ftdpsd;
	}

	public void setFtdpsd(Short ftdpsd) {
		this.ftdpsd = ftdpsd;
	}

	public Short getFtdmsd() {
		return ftdmsd;
	}

	public void setFtdmsd(Short ftdmsd) {
		this.ftdmsd = ftdmsd;
	}

	public Short getFtdasd() {
		return ftdasd;
	}

	public void setFtdasd(Short ftdasd) {
		this.ftdasd = ftdasd;
	}

	public Short getFtdbsem() {
		return ftdbsem;
	}

	public void setFtdbsem(Short ftdbsem) {
		this.ftdbsem = ftdbsem;
	}

	public Short getFtdbse() {
		return ftdbse;
	}

	public void setFtdbse(Short ftdbse) {
		this.ftdbse = ftdbse;
	}

	public Short getFtdnse() {
		return ftdnse;
	}

	public void setFtdnse(Short ftdnse) {
		this.ftdnse = ftdnse;
	}

	public Short getFtdpse() {
		return ftdpse;
	}

	public void setFtdpse(Short ftdpse) {
		this.ftdpse = ftdpse;
	}

	public Short getFtdmse() {
		return ftdmse;
	}

	public void setFtdmse(Short ftdmse) {
		this.ftdmse = ftdmse;
	}

	public Short getFtdase() {
		return ftdase;
	}

	public void setFtdase(Short ftdase) {
		this.ftdase = ftdase;
	}

	public Short getFtdbsfm() {
		return ftdbsfm;
	}

	public void setFtdbsfm(Short ftdbsfm) {
		this.ftdbsfm = ftdbsfm;
	}

	public Short getFtdbsf() {
		return ftdbsf;
	}

	public void setFtdbsf(Short ftdbsf) {
		this.ftdbsf = ftdbsf;
	}

	public Short getFtdnsf() {
		return ftdnsf;
	}

	public void setFtdnsf(Short ftdnsf) {
		this.ftdnsf = ftdnsf;
	}

	public Short getFtdpsf() {
		return ftdpsf;
	}

	public void setFtdpsf(Short ftdpsf) {
		this.ftdpsf = ftdpsf;
	}

	public Short getFtdmsf() {
		return ftdmsf;
	}

	public void setFtdmsf(Short ftdmsf) {
		this.ftdmsf = ftdmsf;
	}

	public Short getFtdasf() {
		return ftdasf;
	}

	public void setFtdasf(Short ftdasf) {
		this.ftdasf = ftdasf;
	}

	public Short getFtdbsgm() {
		return ftdbsgm;
	}

	public void setFtdbsgm(Short ftdbsgm) {
		this.ftdbsgm = ftdbsgm;
	}

	public Short getFtdbsg() {
		return ftdbsg;
	}

	public void setFtdbsg(Short ftdbsg) {
		this.ftdbsg = ftdbsg;
	}

	public Short getFtdnsg() {
		return ftdnsg;
	}

	public void setFtdnsg(Short ftdnsg) {
		this.ftdnsg = ftdnsg;
	}

	public Short getFtdpsg() {
		return ftdpsg;
	}

	public void setFtdpsg(Short ftdpsg) {
		this.ftdpsg = ftdpsg;
	}

	public Short getFtdmsg() {
		return ftdmsg;
	}

	public void setFtdmsg(Short ftdmsg) {
		this.ftdmsg = ftdmsg;
	}

	public Short getFtdasg() {
		return ftdasg;
	}

	public void setFtdasg(Short ftdasg) {
		this.ftdasg = ftdasg;
	}

	public Short getFtdbshm() {
		return ftdbshm;
	}

	public void setFtdbshm(Short ftdbshm) {
		this.ftdbshm = ftdbshm;
	}

	public Short getFtdbsh() {
		return ftdbsh;
	}

	public void setFtdbsh(Short ftdbsh) {
		this.ftdbsh = ftdbsh;
	}

	public Short getFtdnsh() {
		return ftdnsh;
	}

	public void setFtdnsh(Short ftdnsh) {
		this.ftdnsh = ftdnsh;
	}

	public Short getFtdpsh() {
		return ftdpsh;
	}

	public void setFtdpsh(Short ftdpsh) {
		this.ftdpsh = ftdpsh;
	}

	public Short getFtdmsh() {
		return ftdmsh;
	}

	public void setFtdmsh(Short ftdmsh) {
		this.ftdmsh = ftdmsh;
	}

	public Short getFtdash() {
		return ftdash;
	}

	public void setFtdash(Short ftdash) {
		this.ftdash = ftdash;
	}

	public Short getFtdbsim() {
		return ftdbsim;
	}

	public void setFtdbsim(Short ftdbsim) {
		this.ftdbsim = ftdbsim;
	}

	public Short getFtdbsi() {
		return ftdbsi;
	}

	public void setFtdbsi(Short ftdbsi) {
		this.ftdbsi = ftdbsi;
	}

	public Short getFtdnsi() {
		return ftdnsi;
	}

	public void setFtdnsi(Short ftdnsi) {
		this.ftdnsi = ftdnsi;
	}

	public Short getFtdpsi() {
		return ftdpsi;
	}

	public void setFtdpsi(Short ftdpsi) {
		this.ftdpsi = ftdpsi;
	}

	public Short getFtdmsi() {
		return ftdmsi;
	}

	public void setFtdmsi(Short ftdmsi) {
		this.ftdmsi = ftdmsi;
	}

	public Short getFtdasi() {
		return ftdasi;
	}

	public void setFtdasi(Short ftdasi) {
		this.ftdasi = ftdasi;
	}

	public Short getFtdbsjm() {
		return ftdbsjm;
	}

	public void setFtdbsjm(Short ftdbsjm) {
		this.ftdbsjm = ftdbsjm;
	}

	public Short getFtdbsj() {
		return ftdbsj;
	}

	public void setFtdbsj(Short ftdbsj) {
		this.ftdbsj = ftdbsj;
	}

	public Short getFtdnsj() {
		return ftdnsj;
	}

	public void setFtdnsj(Short ftdnsj) {
		this.ftdnsj = ftdnsj;
	}

	public Short getFtdpsj() {
		return ftdpsj;
	}

	public void setFtdpsj(Short ftdpsj) {
		this.ftdpsj = ftdpsj;
	}

	public Short getFtdmsj() {
		return ftdmsj;
	}

	public void setFtdmsj(Short ftdmsj) {
		this.ftdmsj = ftdmsj;
	}

	public Short getFtdasj() {
		return ftdasj;
	}

	public void setFtdasj(Short ftdasj) {
		this.ftdasj = ftdasj;
	}

	public Short getFtdbskm() {
		return ftdbskm;
	}

	public void setFtdbskm(Short ftdbskm) {
		this.ftdbskm = ftdbskm;
	}

	public Short getFtdbsk() {
		return ftdbsk;
	}

	public void setFtdbsk(Short ftdbsk) {
		this.ftdbsk = ftdbsk;
	}

	public Short getFtdnsk() {
		return ftdnsk;
	}

	public void setFtdnsk(Short ftdnsk) {
		this.ftdnsk = ftdnsk;
	}

	public Short getFtdpsk() {
		return ftdpsk;
	}

	public void setFtdpsk(Short ftdpsk) {
		this.ftdpsk = ftdpsk;
	}

	public Short getFtdmsk() {
		return ftdmsk;
	}

	public void setFtdmsk(Short ftdmsk) {
		this.ftdmsk = ftdmsk;
	}

	public Short getFtdask() {
		return ftdask;
	}

	public void setFtdask(Short ftdask) {
		this.ftdask = ftdask;
	}

	public Short getFtdbslm() {
		return ftdbslm;
	}

	public void setFtdbslm(Short ftdbslm) {
		this.ftdbslm = ftdbslm;
	}

	public Short getFtdbsl() {
		return ftdbsl;
	}

	public void setFtdbsl(Short ftdbsl) {
		this.ftdbsl = ftdbsl;
	}

	public Short getFtdnsl() {
		return ftdnsl;
	}

	public void setFtdnsl(Short ftdnsl) {
		this.ftdnsl = ftdnsl;
	}

	public Short getFtdpsl() {
		return ftdpsl;
	}

	public void setFtdpsl(Short ftdpsl) {
		this.ftdpsl = ftdpsl;
	}

	public Short getFtdmsl() {
		return ftdmsl;
	}

	public void setFtdmsl(Short ftdmsl) {
		this.ftdmsl = ftdmsl;
	}

	public Short getFtdasl() {
		return ftdasl;
	}

	public void setFtdasl(Short ftdasl) {
		this.ftdasl = ftdasl;
	}

	public Short getFtdbsmm() {
		return ftdbsmm;
	}

	public void setFtdbsmm(Short ftdbsmm) {
		this.ftdbsmm = ftdbsmm;
	}

	public Short getFtdbsm() {
		return ftdbsm;
	}

	public void setFtdbsm(Short ftdbsm) {
		this.ftdbsm = ftdbsm;
	}

	public Short getFtdnsm() {
		return ftdnsm;
	}

	public void setFtdnsm(Short ftdnsm) {
		this.ftdnsm = ftdnsm;
	}

	public Short getFtdpsm() {
		return ftdpsm;
	}

	public void setFtdpsm(Short ftdpsm) {
		this.ftdpsm = ftdpsm;
	}

	public Short getFtdmsm() {
		return ftdmsm;
	}

	public void setFtdmsm(Short ftdmsm) {
		this.ftdmsm = ftdmsm;
	}

	public Short getFtdasm() {
		return ftdasm;
	}

	public void setFtdasm(Short ftdasm) {
		this.ftdasm = ftdasm;
	}

	public Short getFtdbcam() {
		return ftdbcam;
	}

	public void setFtdbcam(Short ftdbcam) {
		this.ftdbcam = ftdbcam;
	}

	public Short getFtdbca() {
		return ftdbca;
	}

	public void setFtdbca(Short ftdbca) {
		this.ftdbca = ftdbca;
	}

	public Short getFtdnca() {
		return ftdnca;
	}

	public void setFtdnca(Short ftdnca) {
		this.ftdnca = ftdnca;
	}

	public Short getFtdpca() {
		return ftdpca;
	}

	public void setFtdpca(Short ftdpca) {
		this.ftdpca = ftdpca;
	}

	public Short getFtdmca() {
		return ftdmca;
	}

	public void setFtdmca(Short ftdmca) {
		this.ftdmca = ftdmca;
	}

	public Short getFtdaca() {
		return ftdaca;
	}

	public void setFtdaca(Short ftdaca) {
		this.ftdaca = ftdaca;
	}

	public Short getFtdbcbm() {
		return ftdbcbm;
	}

	public void setFtdbcbm(Short ftdbcbm) {
		this.ftdbcbm = ftdbcbm;
	}

	public Short getFtdbcb() {
		return ftdbcb;
	}

	public void setFtdbcb(Short ftdbcb) {
		this.ftdbcb = ftdbcb;
	}

	public Short getFtdncb() {
		return ftdncb;
	}

	public void setFtdncb(Short ftdncb) {
		this.ftdncb = ftdncb;
	}

	public Short getFtdpcb() {
		return ftdpcb;
	}

	public void setFtdpcb(Short ftdpcb) {
		this.ftdpcb = ftdpcb;
	}

	public Short getFtdmcb() {
		return ftdmcb;
	}

	public void setFtdmcb(Short ftdmcb) {
		this.ftdmcb = ftdmcb;
	}

	public Short getFtdacb() {
		return ftdacb;
	}

	public void setFtdacb(Short ftdacb) {
		this.ftdacb = ftdacb;
	}

	public Short getFtdbccm() {
		return ftdbccm;
	}

	public void setFtdbccm(Short ftdbccm) {
		this.ftdbccm = ftdbccm;
	}

	public Short getFtdbcc() {
		return ftdbcc;
	}

	public void setFtdbcc(Short ftdbcc) {
		this.ftdbcc = ftdbcc;
	}

	public Short getFtdncc() {
		return ftdncc;
	}

	public void setFtdncc(Short ftdncc) {
		this.ftdncc = ftdncc;
	}

	public Short getFtdpcc() {
		return ftdpcc;
	}

	public void setFtdpcc(Short ftdpcc) {
		this.ftdpcc = ftdpcc;
	}

	public Short getFtdmcc() {
		return ftdmcc;
	}

	public void setFtdmcc(Short ftdmcc) {
		this.ftdmcc = ftdmcc;
	}

	public Short getFtdacc() {
		return ftdacc;
	}

	public void setFtdacc(Short ftdacc) {
		this.ftdacc = ftdacc;
	}

	public Short getFtdbcdm() {
		return ftdbcdm;
	}

	public void setFtdbcdm(Short ftdbcdm) {
		this.ftdbcdm = ftdbcdm;
	}

	public Short getFtdbcd() {
		return ftdbcd;
	}

	public void setFtdbcd(Short ftdbcd) {
		this.ftdbcd = ftdbcd;
	}

	public Short getFtdncd() {
		return ftdncd;
	}

	public void setFtdncd(Short ftdncd) {
		this.ftdncd = ftdncd;
	}

	public Short getFtdpcd() {
		return ftdpcd;
	}

	public void setFtdpcd(Short ftdpcd) {
		this.ftdpcd = ftdpcd;
	}

	public Short getFtdmcd() {
		return ftdmcd;
	}

	public void setFtdmcd(Short ftdmcd) {
		this.ftdmcd = ftdmcd;
	}

	public Short getFtdacd() {
		return ftdacd;
	}

	public void setFtdacd(Short ftdacd) {
		this.ftdacd = ftdacd;
	}

	public Short getFtdbcem() {
		return ftdbcem;
	}

	public void setFtdbcem(Short ftdbcem) {
		this.ftdbcem = ftdbcem;
	}

	public Short getFtdbce() {
		return ftdbce;
	}

	public void setFtdbce(Short ftdbce) {
		this.ftdbce = ftdbce;
	}

	public Short getFtdnce() {
		return ftdnce;
	}

	public void setFtdnce(Short ftdnce) {
		this.ftdnce = ftdnce;
	}

	public Short getFtdpce() {
		return ftdpce;
	}

	public void setFtdpce(Short ftdpce) {
		this.ftdpce = ftdpce;
	}

	public Short getFtdmce() {
		return ftdmce;
	}

	public void setFtdmce(Short ftdmce) {
		this.ftdmce = ftdmce;
	}

	public Short getFtdace() {
		return ftdace;
	}

	public void setFtdace(Short ftdace) {
		this.ftdace = ftdace;
	}

	public Short getFtdbcfm() {
		return ftdbcfm;
	}

	public void setFtdbcfm(Short ftdbcfm) {
		this.ftdbcfm = ftdbcfm;
	}

	public Short getFtdbcf() {
		return ftdbcf;
	}

	public void setFtdbcf(Short ftdbcf) {
		this.ftdbcf = ftdbcf;
	}

	public Short getFtdncf() {
		return ftdncf;
	}

	public void setFtdncf(Short ftdncf) {
		this.ftdncf = ftdncf;
	}

	public Short getFtdpcf() {
		return ftdpcf;
	}

	public void setFtdpcf(Short ftdpcf) {
		this.ftdpcf = ftdpcf;
	}

	public Short getFtdmcf() {
		return ftdmcf;
	}

	public void setFtdmcf(Short ftdmcf) {
		this.ftdmcf = ftdmcf;
	}

	public Short getFtdacf() {
		return ftdacf;
	}

	public void setFtdacf(Short ftdacf) {
		this.ftdacf = ftdacf;
	}

	public Short getFtdbcgm() {
		return ftdbcgm;
	}

	public void setFtdbcgm(Short ftdbcgm) {
		this.ftdbcgm = ftdbcgm;
	}

	public Short getFtdbcg() {
		return ftdbcg;
	}

	public void setFtdbcg(Short ftdbcg) {
		this.ftdbcg = ftdbcg;
	}

	public Short getFtdncg() {
		return ftdncg;
	}

	public void setFtdncg(Short ftdncg) {
		this.ftdncg = ftdncg;
	}

	public Short getFtdpcg() {
		return ftdpcg;
	}

	public void setFtdpcg(Short ftdpcg) {
		this.ftdpcg = ftdpcg;
	}

	public Short getFtdmcg() {
		return ftdmcg;
	}

	public void setFtdmcg(Short ftdmcg) {
		this.ftdmcg = ftdmcg;
	}

	public Short getFtdacg() {
		return ftdacg;
	}

	public void setFtdacg(Short ftdacg) {
		this.ftdacg = ftdacg;
	}

	public Short getFtdbchm() {
		return ftdbchm;
	}

	public void setFtdbchm(Short ftdbchm) {
		this.ftdbchm = ftdbchm;
	}

	public Short getFtdbch() {
		return ftdbch;
	}

	public void setFtdbch(Short ftdbch) {
		this.ftdbch = ftdbch;
	}

	public Short getFtdnch() {
		return ftdnch;
	}

	public void setFtdnch(Short ftdnch) {
		this.ftdnch = ftdnch;
	}

	public Short getFtdpch() {
		return ftdpch;
	}

	public void setFtdpch(Short ftdpch) {
		this.ftdpch = ftdpch;
	}

	public Short getFtdmch() {
		return ftdmch;
	}

	public void setFtdmch(Short ftdmch) {
		this.ftdmch = ftdmch;
	}

	public Short getFtdach() {
		return ftdach;
	}

	public void setFtdach(Short ftdach) {
		this.ftdach = ftdach;
	}

	public Short getFtdbcim() {
		return ftdbcim;
	}

	public void setFtdbcim(Short ftdbcim) {
		this.ftdbcim = ftdbcim;
	}

	public Short getFtdbci() {
		return ftdbci;
	}

	public void setFtdbci(Short ftdbci) {
		this.ftdbci = ftdbci;
	}

	public Short getFtdnci() {
		return ftdnci;
	}

	public void setFtdnci(Short ftdnci) {
		this.ftdnci = ftdnci;
	}

	public Short getFtdpci() {
		return ftdpci;
	}

	public void setFtdpci(Short ftdpci) {
		this.ftdpci = ftdpci;
	}

	public Short getFtdmci() {
		return ftdmci;
	}

	public void setFtdmci(Short ftdmci) {
		this.ftdmci = ftdmci;
	}

	public Short getFtdaci() {
		return ftdaci;
	}

	public void setFtdaci(Short ftdaci) {
		this.ftdaci = ftdaci;
	}

	public Short getFtdbcjm() {
		return ftdbcjm;
	}

	public void setFtdbcjm(Short ftdbcjm) {
		this.ftdbcjm = ftdbcjm;
	}

	public Short getFtdbcj() {
		return ftdbcj;
	}

	public void setFtdbcj(Short ftdbcj) {
		this.ftdbcj = ftdbcj;
	}

	public Short getFtdncj() {
		return ftdncj;
	}

	public void setFtdncj(Short ftdncj) {
		this.ftdncj = ftdncj;
	}

	public Short getFtdpcj() {
		return ftdpcj;
	}

	public void setFtdpcj(Short ftdpcj) {
		this.ftdpcj = ftdpcj;
	}

	public Short getFtdmcj() {
		return ftdmcj;
	}

	public void setFtdmcj(Short ftdmcj) {
		this.ftdmcj = ftdmcj;
	}

	public Short getFtdacj() {
		return ftdacj;
	}

	public void setFtdacj(Short ftdacj) {
		this.ftdacj = ftdacj;
	}

	public Short getFtdbckm() {
		return ftdbckm;
	}

	public void setFtdbckm(Short ftdbckm) {
		this.ftdbckm = ftdbckm;
	}

	public Short getFtdbck() {
		return ftdbck;
	}

	public void setFtdbck(Short ftdbck) {
		this.ftdbck = ftdbck;
	}

	public Short getFtdnck() {
		return ftdnck;
	}

	public void setFtdnck(Short ftdnck) {
		this.ftdnck = ftdnck;
	}

	public Short getFtdpck() {
		return ftdpck;
	}

	public void setFtdpck(Short ftdpck) {
		this.ftdpck = ftdpck;
	}

	public Short getFtdmck() {
		return ftdmck;
	}

	public void setFtdmck(Short ftdmck) {
		this.ftdmck = ftdmck;
	}

	public Short getFtdack() {
		return ftdack;
	}

	public void setFtdack(Short ftdack) {
		this.ftdack = ftdack;
	}

	public Short getFtdbclm() {
		return ftdbclm;
	}

	public void setFtdbclm(Short ftdbclm) {
		this.ftdbclm = ftdbclm;
	}

	public Short getFtdbcl() {
		return ftdbcl;
	}

	public void setFtdbcl(Short ftdbcl) {
		this.ftdbcl = ftdbcl;
	}

	public Short getFtdncl() {
		return ftdncl;
	}

	public void setFtdncl(Short ftdncl) {
		this.ftdncl = ftdncl;
	}

	public Short getFtdpcl() {
		return ftdpcl;
	}

	public void setFtdpcl(Short ftdpcl) {
		this.ftdpcl = ftdpcl;
	}

	public Short getFtdmcl() {
		return ftdmcl;
	}

	public void setFtdmcl(Short ftdmcl) {
		this.ftdmcl = ftdmcl;
	}

	public Short getFtdacl() {
		return ftdacl;
	}

	public void setFtdacl(Short ftdacl) {
		this.ftdacl = ftdacl;
	}

	public Short getFtdbcmm() {
		return ftdbcmm;
	}

	public void setFtdbcmm(Short ftdbcmm) {
		this.ftdbcmm = ftdbcmm;
	}

	public Short getFtdbcm() {
		return ftdbcm;
	}

	public void setFtdbcm(Short ftdbcm) {
		this.ftdbcm = ftdbcm;
	}

	public Short getFtdncm() {
		return ftdncm;
	}

	public void setFtdncm(Short ftdncm) {
		this.ftdncm = ftdncm;
	}

	public Short getFtdpcm() {
		return ftdpcm;
	}

	public void setFtdpcm(Short ftdpcm) {
		this.ftdpcm = ftdpcm;
	}

	public Short getFtdmcm() {
		return ftdmcm;
	}

	public void setFtdmcm(Short ftdmcm) {
		this.ftdmcm = ftdmcm;
	}

	public Short getFtdacm() {
		return ftdacm;
	}

	public void setFtdacm(Short ftdacm) {
		this.ftdacm = ftdacm;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
			"ftdaff",
			"ftdmutat",
			"ftdpmut",
			"ftdmclab",
			"ftdmrlab",
			"ftdmfamr",
			"ftdmoth",
			"ftdmomn",
			"ftdmomp",
			"ftdmome",
			"ftdmoma",
			"ftddadn",
			"ftddadp",
			"ftddade",
			"ftddada",
			"ftdbsam",
			"ftdbsa",
			"ftdnsa",
			"ftdpsa",
			"ftdmsa",
			"ftdasa",
			"ftdbsbm",
			"ftdbsb",
			"ftdnsb",
			"ftdpsb",
			"ftdmsb",
			"ftdasb",
			"ftdbscm",
			"ftdbsc",
			"ftdnsc",
			"ftdpsc",
			"ftdmsc",
			"ftdasc",
			"ftdbsdm",
			"ftdbsd",
			"ftdnsd",
			"ftdpsd",
			"ftdmsd",
			"ftdasd",
			"ftdbsem",
			"ftdbse",
			"ftdnse",
			"ftdpse",
			"ftdmse",
			"ftdase",
			"ftdbsfm",
			"ftdbsf",
			"ftdnsf",
			"ftdpsf",
			"ftdmsf",
			"ftdasf",
			"ftdbsgm",
			"ftdbsg",
			"ftdnsg",
			"ftdpsg",
			"ftdmsg",
			"ftdasg",
			"ftdbshm",
			"ftdbsh",
			"ftdnsh",
			"ftdpsh",
			"ftdmsh",
			"ftdash",
			"ftdbsim",
			"ftdbsi",
			"ftdnsi",
			"ftdpsi",
			"ftdmsi",
			"ftdasi",
			"ftdbsjm",
			"ftdbsj",
			"ftdnsj",
			"ftdpsj",
			"ftdmsj",
			"ftdasj",
			"ftdbskm",
			"ftdbsk",
			"ftdnsk",
			"ftdpsk",
			"ftdmsk",
			"ftdask",
			"ftdbslm",
			"ftdbsl",
			"ftdnsl",
			"ftdpsl",
			"ftdmsl",
			"ftdasl",
			"ftdbsmm",
			"ftdbsm",
			"ftdnsm",
			"ftdpsm",
			"ftdmsm",
			"ftdasm",
			"ftdbcam",
			"ftdbca",
			"ftdnca",
			"ftdpca",
			"ftdmca",
			"ftdaca",
			"ftdbcbm",
			"ftdbcb",
			"ftdncb",
			"ftdpcb",
			"ftdmcb",
			"ftdacb",
			"ftdbccm",
			"ftdbcc",
			"ftdncc",
			"ftdpcc",
			"ftdmcc",
			"ftdacc",
			"ftdbcdm",
			"ftdbcd",
			"ftdncd",
			"ftdpcd",
			"ftdmcd",
			"ftdacd",
			"ftdbcem",
			"ftdbce",
			"ftdnce",
			"ftdpce",
			"ftdmce",
			"ftdace",
			"ftdbcfm",
			"ftdbcf",
			"ftdncf",
			"ftdpcf",
			"ftdmcf",
			"ftdacf",
			"ftdbcgm",
			"ftdbcg",
			"ftdncg",
			"ftdpcg",
			"ftdmcg",
			"ftdacg",
			"ftdbchm",
			"ftdbch",
			"ftdnch",
			"ftdpch",
			"ftdmch",
			"ftdach",
			"ftdbcim",
			"ftdbci",
			"ftdnci",
			"ftdpci",
			"ftdmci",
			"ftdaci",
			"ftdbcjm",
			"ftdbcj",
			"ftdncj",
			"ftdpcj",
			"ftdmcj",
			"ftdacj",
			"ftdbckm",
			"ftdbck",
			"ftdnck",
			"ftdpck",
			"ftdmck",
			"ftdack",
			"ftdbclm",
			"ftdbcl",
			"ftdncl",
			"ftdpcl",
			"ftdmcl",
			"ftdacl",
			"ftdbcmm",
			"ftdbcm",
			"ftdncm",
			"ftdpcm",
			"ftdmcm",
			"ftdacm"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		
		if(getPacket().equals("I")){
			buffer.append(UdsUploadUtils.formatField(getFtdaff())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmutat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpmut())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpmutx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmclab())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmrlab())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmfamr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmoth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmothx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmomn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmomp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmome())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmoma())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddadn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddadp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddade())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddada())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsam())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsbm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbscm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsdm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdase())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsfm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsgm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbshm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdash())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsim())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsjm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbskm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdask())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbslm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsmm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcam())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdaca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcbm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbccm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcdm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdace())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcfm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcgm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbchm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdach())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcim())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdaci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcjm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbckm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdack())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbclm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcmm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacm()));
		}
		else if(getPacket().equals("F")) {
			buffer.append(UdsUploadUtils.formatField(getFtdfa3f1())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdaff())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmutat())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpmut())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpmutx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmclab())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmrlab())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmfamr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmoth())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmothx())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdfa3f2())).append(",");			
			buffer.append(UdsUploadUtils.formatField(getFtdmomn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmomp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmome())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmoma())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddadn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddadp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddade())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtddada())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdfa3f3())).append(",");			
			buffer.append(UdsUploadUtils.formatField(getFtdbsam())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasa())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsbm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbscm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsdm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmse())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdase())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsfm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsgm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbshm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsh())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdash())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsim())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasi())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsjm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbskm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsk())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdask())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbslm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsmm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmsm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdasm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdfa3f4())).append(",");			
			buffer.append(UdsUploadUtils.formatField(getFtdbcam())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdaca())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcbm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacb())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbccm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcdm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcem())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmce())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdace())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcfm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcgm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacg())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbchm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmch())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdach())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcim())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdaci())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcjm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacj())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbckm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdnck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmck())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdack())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbclm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacl())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcmm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbcm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdncm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdpcm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdmcm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdacm()));			
		}

		return buffer.toString();
	}
	
}


