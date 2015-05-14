package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldSboc extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldSboc.class);
	public static final String UDS_FTLD_SBOC_FORMID = "C3F";
	public UdsFtldSboc() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldSboc(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_SBOC_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdself;
	protected Short ftdbadly;
	protected Short ftddepr;
	protected Short ftdemotd;
	protected Short ftdlself;
	protected Short ftddisr;
	protected Short ftdbelch;
	protected Short ftdgigg;
	protected Short ftdpriv;
	protected Short ftdnegat;
	protected Short ftdecomm;
	protected Short ftdinapj;
	protected Short ftdfaila;
	protected Short ftdresis;
	protected Short ftdinter;
	protected Short ftdverba;
	protected Short ftdphysi;
	protected Short ftdtopic;
	protected Short ftdproto;
	protected Short ftdpreo;
	protected Short ftdfini;
	protected Short ftdacted;
	protected Short ftdabs;
	protected Short ftdfeedb;
	protected Short ftdfrust;
	protected Short ftdanxi;
	protected Short ftdnervo;
	protected Short ftdndiag;
	protected Short ftdstimb;
	protected Short ftdstime;
	protected Short ftdobjec;
	protected Short ftdcircu;
	protected Short ftdperse;
	protected Short ftdrepea;
	protected Short ftdanecd;
	protected Short ftddinit;
	protected Short ftddelay;
	protected Short ftdaddve;
	protected Short ftdfluct;
	protected Short ftdlostt;
	protected Short ftdrepru;
	protected Short ftdtrain;
	protected Short ftddiscl;
	protected Short ftdspont;
	protected Short ftdsponr;
	protected Short ftdstood;
	protected Short ftdtouch;
	protected Short ftddsoci;
	protected Short ftdexagg;
	protected Short ftdsbtot;
	protected Short ftdsbcto;
	protected Short ftdlengt;

	public Short getFtdself() {
		return ftdself;
	}

	public void setFtdself(Short ftdself) {
		this.ftdself = ftdself;
	}

	public Short getFtdbadly() {
		return ftdbadly;
	}

	public void setFtdbadly(Short ftdbadly) {
		this.ftdbadly = ftdbadly;
	}

	public Short getFtddepr() {
		return ftddepr;
	}

	public void setFtddepr(Short ftddepr) {
		this.ftddepr = ftddepr;
	}

	public Short getFtdemotd() {
		return ftdemotd;
	}

	public void setFtdemotd(Short ftdemotd) {
		this.ftdemotd = ftdemotd;
	}

	public Short getFtdlself() {
		return ftdlself;
	}

	public void setFtdlself(Short ftdlself) {
		this.ftdlself = ftdlself;
	}

	public Short getFtddisr() {
		return ftddisr;
	}

	public void setFtddisr(Short ftddisr) {
		this.ftddisr = ftddisr;
	}

	public Short getFtdbelch() {
		return ftdbelch;
	}

	public void setFtdbelch(Short ftdbelch) {
		this.ftdbelch = ftdbelch;
	}

	public Short getFtdgigg() {
		return ftdgigg;
	}

	public void setFtdgigg(Short ftdgigg) {
		this.ftdgigg = ftdgigg;
	}

	public Short getFtdpriv() {
		return ftdpriv;
	}

	public void setFtdpriv(Short ftdpriv) {
		this.ftdpriv = ftdpriv;
	}

	public Short getFtdnegat() {
		return ftdnegat;
	}

	public void setFtdnegat(Short ftdnegat) {
		this.ftdnegat = ftdnegat;
	}

	public Short getFtdecomm() {
		return ftdecomm;
	}

	public void setFtdecomm(Short ftdecomm) {
		this.ftdecomm = ftdecomm;
	}

	public Short getFtdinapj() {
		return ftdinapj;
	}

	public void setFtdinapj(Short ftdinapj) {
		this.ftdinapj = ftdinapj;
	}

	public Short getFtdfaila() {
		return ftdfaila;
	}

	public void setFtdfaila(Short ftdfaila) {
		this.ftdfaila = ftdfaila;
	}

	public Short getFtdresis() {
		return ftdresis;
	}

	public void setFtdresis(Short ftdresis) {
		this.ftdresis = ftdresis;
	}

	public Short getFtdinter() {
		return ftdinter;
	}

	public void setFtdinter(Short ftdinter) {
		this.ftdinter = ftdinter;
	}

	public Short getFtdverba() {
		return ftdverba;
	}

	public void setFtdverba(Short ftdverba) {
		this.ftdverba = ftdverba;
	}

	public Short getFtdphysi() {
		return ftdphysi;
	}

	public void setFtdphysi(Short ftdphysi) {
		this.ftdphysi = ftdphysi;
	}

	public Short getFtdtopic() {
		return ftdtopic;
	}

	public void setFtdtopic(Short ftdtopic) {
		this.ftdtopic = ftdtopic;
	}

	public Short getFtdproto() {
		return ftdproto;
	}

	public void setFtdproto(Short ftdproto) {
		this.ftdproto = ftdproto;
	}

	public Short getFtdpreo() {
		return ftdpreo;
	}

	public void setFtdpreo(Short ftdpreo) {
		this.ftdpreo = ftdpreo;
	}

	public Short getFtdfini() {
		return ftdfini;
	}

	public void setFtdfini(Short ftdfini) {
		this.ftdfini = ftdfini;
	}

	public Short getFtdacted() {
		return ftdacted;
	}

	public void setFtdacted(Short ftdacted) {
		this.ftdacted = ftdacted;
	}

	public Short getFtdabs() {
		return ftdabs;
	}

	public void setFtdabs(Short ftdabs) {
		this.ftdabs = ftdabs;
	}

	public Short getFtdfeedb() {
		return ftdfeedb;
	}

	public void setFtdfeedb(Short ftdfeedb) {
		this.ftdfeedb = ftdfeedb;
	}

	public Short getFtdfrust() {
		return ftdfrust;
	}

	public void setFtdfrust(Short ftdfrust) {
		this.ftdfrust = ftdfrust;
	}

	public Short getFtdanxi() {
		return ftdanxi;
	}

	public void setFtdanxi(Short ftdanxi) {
		this.ftdanxi = ftdanxi;
	}

	public Short getFtdnervo() {
		return ftdnervo;
	}

	public void setFtdnervo(Short ftdnervo) {
		this.ftdnervo = ftdnervo;
	}

	public Short getFtdndiag() {
		return ftdndiag;
	}

	public void setFtdndiag(Short ftdndiag) {
		this.ftdndiag = ftdndiag;
	}

	public Short getFtdstimb() {
		return ftdstimb;
	}

	public void setFtdstimb(Short ftdstimb) {
		this.ftdstimb = ftdstimb;
	}

	public Short getFtdstime() {
		return ftdstime;
	}

	public void setFtdstime(Short ftdstime) {
		this.ftdstime = ftdstime;
	}

	public Short getFtdobjec() {
		return ftdobjec;
	}

	public void setFtdobjec(Short ftdobjec) {
		this.ftdobjec = ftdobjec;
	}

	public Short getFtdcircu() {
		return ftdcircu;
	}

	public void setFtdcircu(Short ftdcircu) {
		this.ftdcircu = ftdcircu;
	}

	public Short getFtdperse() {
		return ftdperse;
	}

	public void setFtdperse(Short ftdperse) {
		this.ftdperse = ftdperse;
	}

	public Short getFtdrepea() {
		return ftdrepea;
	}

	public void setFtdrepea(Short ftdrepea) {
		this.ftdrepea = ftdrepea;
	}

	public Short getFtdanecd() {
		return ftdanecd;
	}

	public void setFtdanecd(Short ftdanecd) {
		this.ftdanecd = ftdanecd;
	}

	public Short getFtddinit() {
		return ftddinit;
	}

	public void setFtddinit(Short ftddinit) {
		this.ftddinit = ftddinit;
	}

	public Short getFtddelay() {
		return ftddelay;
	}

	public void setFtddelay(Short ftddelay) {
		this.ftddelay = ftddelay;
	}

	public Short getFtdaddve() {
		return ftdaddve;
	}

	public void setFtdaddve(Short ftdaddve) {
		this.ftdaddve = ftdaddve;
	}

	public Short getFtdfluct() {
		return ftdfluct;
	}

	public void setFtdfluct(Short ftdfluct) {
		this.ftdfluct = ftdfluct;
	}

	public Short getFtdlostt() {
		return ftdlostt;
	}

	public void setFtdlostt(Short ftdlostt) {
		this.ftdlostt = ftdlostt;
	}

	public Short getFtdrepru() {
		return ftdrepru;
	}

	public void setFtdrepru(Short ftdrepru) {
		this.ftdrepru = ftdrepru;
	}

	public Short getFtdtrain() {
		return ftdtrain;
	}

	public void setFtdtrain(Short ftdtrain) {
		this.ftdtrain = ftdtrain;
	}

	public Short getFtddiscl() {
		return ftddiscl;
	}

	public void setFtddiscl(Short ftddiscl) {
		this.ftddiscl = ftddiscl;
	}

	public Short getFtdspont() {
		return ftdspont;
	}

	public void setFtdspont(Short ftdspont) {
		this.ftdspont = ftdspont;
	}

	public Short getFtdsponr() {
		return ftdsponr;
	}

	public void setFtdsponr(Short ftdsponr) {
		this.ftdsponr = ftdsponr;
	}

	public Short getFtdstood() {
		return ftdstood;
	}

	public void setFtdstood(Short ftdstood) {
		this.ftdstood = ftdstood;
	}

	public Short getFtdtouch() {
		return ftdtouch;
	}

	public void setFtdtouch(Short ftdtouch) {
		this.ftdtouch = ftdtouch;
	}

	public Short getFtddsoci() {
		return ftddsoci;
	}

	public void setFtddsoci(Short ftddsoci) {
		this.ftddsoci = ftddsoci;
	}

	public Short getFtdexagg() {
		return ftdexagg;
	}

	public void setFtdexagg(Short ftdexagg) {
		this.ftdexagg = ftdexagg;
	}

	public Short getFtdsbtot() {
		return ftdsbtot;
	}

	public void setFtdsbtot(Short ftdsbtot) {
		this.ftdsbtot = ftdsbtot;
	}

	public Short getFtdsbcto() {
		return ftdsbcto;
	}

	public void setFtdsbcto(Short ftdsbcto) {
		this.ftdsbcto = ftdsbcto;
	}

	public Short getFtdlengt() {
		return ftdlengt;
	}

	public void setFtdlengt(Short ftdlengt) {
		this.ftdlengt = ftdlengt;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdself",
				"ftdbadly",
				"ftddepr",
				"ftdemotd",
				"ftdlself",
				"ftddisr",
				"ftdbelch",
				"ftdgigg",
				"ftdpriv",
				"ftdnegat",
				"ftdecomm",
				"ftdinapj",
				"ftdfaila",
				"ftdresis",
				"ftdinter",
				"ftdverba",
				"ftdphysi",
				"ftdtopic",
				"ftdproto",
				"ftdpreo",
				"ftdfini",
				"ftdacted",
				"ftdabs",
				"ftdfeedb",
				"ftdfrust",
				"ftdanxi",
				"ftdnervo",
				"ftdndiag",
				"ftdstimb",
				"ftdstime",
				"ftdobjec",
				"ftdcircu",
				"ftdperse",
				"ftdrepea",
				"ftdanecd",
				"ftddinit",
				"ftddelay",
				"ftdaddve",
				"ftdfluct",
				"ftdlostt",
				"ftdrepru",
				"ftdtrain",
				"ftddiscl",
				"ftdspont",
				"ftdsponr",
				"ftdstood",
				"ftdtouch",
				"ftddsoci",
				"ftdexagg",
				"ftdsbtot",
				"ftdsbcto",
				"ftdlengt"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdself())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbadly())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddepr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdemotd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlself())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddisr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdbelch())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdgigg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdpriv())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdnegat())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdecomm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinapj())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfaila())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdresis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdinter())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdverba())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdphysi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdtopic())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdproto())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdpreo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfini())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdacted())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdabs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfeedb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfrust())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdanxi())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdnervo())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdndiag())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdstimb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdstime())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdobjec())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcircu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdperse())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdrepea())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdanecd())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddinit())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddelay())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdaddve())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdfluct())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlostt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdrepru())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdtrain())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddiscl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdspont())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsponr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdstood())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdtouch())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtddsoci())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdexagg())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsbtot())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsbcto())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlengt()));
		return buffer.toString();
	}
	
}


