package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import org.springframework.util.StringUtils;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.controller.CalcUtils;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldNeuropsych extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldNeuropsych.class);
	public static final String UDS_FTLD_NEUROPSYCH_FORMID = "C1F";
	public UdsFtldNeuropsych() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldNeuropsych(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_NEUROPSYCH_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdbentc; // delete in FTLD Module v. 3
	protected Short ftdverfc; // delete in FTLD Module v. 3
	protected Short ftdverfn; // delete in FTLD Module v. 3
	protected Short ftdvernf; // delete in FTLD Module v. 3
	protected Short ftdverlc; // delete in FTLD Module v. 3
	protected Short ftdverlr; // delete in FTLD Module v. 3
	protected Short ftdverln; // delete in FTLD Module v. 3
	protected Short ftdvertn; // delete in FTLD Module v. 3
	protected Short ftdverte; // delete in FTLD Module v. 3
	protected Short ftdverti; // delete in FTLD Module v. 3
	protected Short ftdworrc;
	protected Short ftdworrs;
	protected Short ftdworrr;
	protected Short ftdworic;
	protected Short ftdworis;
	protected Short ftdworir;
	protected Short ftdworip;
	protected Short ftdbentd; // delete in FTLD Module v. 3
	protected Short ftdbenrs; // delete in FTLD Module v. 3
	protected Short ftdsemmt;
	protected Short ftdsemaa;
	protected Short ftdsemta;
	protected Short ftdsemsu;
	protected Short ftdanasw;
	protected Short ftdanaow;
	protected Short ftdanats;
	protected Short ftdsenas;
	protected Short ftdsenos;
	protected Short ftdsensr;
	protected Short ftdsenpr;
	protected Short ftdnounc;
	protected Short ftdverbc;
	protected Float ftdratio;
	protected Short ftdreaas;
	protected Short ftdreaos;
	protected Short ftdreasr;
	protected Short ftdreapr;

	public Short getFtdbentc() {
		return ftdbentc;
	}

	public void setFtdbentc(Short ftdbentc) {
		this.ftdbentc = ftdbentc;
	}

	public Short getFtdverfc() {
		return ftdverfc;
	}

	public void setFtdverfc(Short ftdverfc) {
		this.ftdverfc = ftdverfc;
	}

	public Short getFtdverfn() {
		return ftdverfn;
	}

	public void setFtdverfn(Short ftdverfn) {
		this.ftdverfn = ftdverfn;
	}

	public Short getFtdvernf() {
		return ftdvernf;
	}

	public void setFtdvernf(Short ftdvernf) {
		this.ftdvernf = ftdvernf;
	}

	public Short getFtdverlc() {
		return ftdverlc;
	}

	public void setFtdverlc(Short ftdverlc) {
		this.ftdverlc = ftdverlc;
	}

	public Short getFtdverlr() {
		return ftdverlr;
	}

	public void setFtdverlr(Short ftdverlr) {
		this.ftdverlr = ftdverlr;
	}

	public Short getFtdverln() {
		return ftdverln;
	}

	public void setFtdverln(Short ftdverln) {
		this.ftdverln = ftdverln;
	}

	public Short getFtdvertn() {
		return ftdvertn;
	}

	public void setFtdvertn(Short ftdvertn) {
		this.ftdvertn = ftdvertn;
	}

	public Short getFtdverte() {
		return ftdverte;
	}

	public void setFtdverte(Short ftdverte) {
		this.ftdverte = ftdverte;
	}

	public Short getFtdverti() {
		return ftdverti;
	}

	public void setFtdverti(Short ftdverti) {
		this.ftdverti = ftdverti;
	}

	public Short getFtdworrc() {
		return ftdworrc;
	}

	public void setFtdworrc(Short ftdworrc) {
		this.ftdworrc = ftdworrc;
	}

	public Short getFtdworrs() {
		return ftdworrs;
	}

	public void setFtdworrs(Short ftdworrs) {
		this.ftdworrs = ftdworrs;
	}

	public Short getFtdworrr() {
		return ftdworrr;
	}

	public void setFtdworrr(Short ftdworrr) {
		this.ftdworrr = ftdworrr;
	}

	public Short getFtdworic() {
		return ftdworic;
	}

	public void setFtdworic(Short ftdworic) {
		this.ftdworic = ftdworic;
	}

	public Short getFtdworis() {
		return ftdworis;
	}

	public void setFtdworis(Short ftdworis) {
		this.ftdworis = ftdworis;
	}

	public Short getFtdworir() {
		return ftdworir;
	}

	public void setFtdworir(Short ftdworir) {
		this.ftdworir = ftdworir;
	}

	public Short getFtdworip() {
		return ftdworip;
	}

	public void setFtdworip(Short ftdworip) {
		this.ftdworip = ftdworip;
	}

	public Short getFtdbentd() {
		return ftdbentd;
	}

	public void setFtdbentd(Short ftdbentd) {
		this.ftdbentd = ftdbentd;
	}

	public Short getFtdbenrs() {
		return ftdbenrs;
	}

	public void setFtdbenrs(Short ftdbenrs) {
		this.ftdbenrs = ftdbenrs;
	}

	public Short getFtdsemmt() {
		return ftdsemmt;
	}

	public void setFtdsemmt(Short ftdsemmt) {
		this.ftdsemmt = ftdsemmt;
	}

	public Short getFtdsemaa() {
		return ftdsemaa;
	}

	public void setFtdsemaa(Short ftdsemaa) {
		this.ftdsemaa = ftdsemaa;
	}

	public Short getFtdsemta() {
		return ftdsemta;
	}

	public void setFtdsemta(Short ftdsemta) {
		this.ftdsemta = ftdsemta;
	}

	public Short getFtdsemsu() {
		return ftdsemsu;
	}

	public void setFtdsemsu(Short ftdsemsu) {
		this.ftdsemsu = ftdsemsu;
	}

	public Short getFtdanasw() {
		return ftdanasw;
	}

	public void setFtdanasw(Short ftdanasw) {
		this.ftdanasw = ftdanasw;
	}

	public Short getFtdanaow() {
		return ftdanaow;
	}

	public void setFtdanaow(Short ftdanaow) {
		this.ftdanaow = ftdanaow;
	}

	public Short getFtdanats() {
		return ftdanats;
	}

	public void setFtdanats(Short ftdanats) {
		this.ftdanats = ftdanats;
	}

	public Short getFtdsenas() {
		return ftdsenas;
	}

	public void setFtdsenas(Short ftdsenas) {
		this.ftdsenas = ftdsenas;
	}

	public Short getFtdsenos() {
		return ftdsenos;
	}

	public void setFtdsenos(Short ftdsenos) {
		this.ftdsenos = ftdsenos;
	}

	public Short getFtdsensr() {
		return ftdsensr;
	}

	public void setFtdsensr(Short ftdsensr) {
		this.ftdsensr = ftdsensr;
	}

	public Short getFtdsenpr() {
		return ftdsenpr;
	}

	public void setFtdsenpr(Short ftdsenpr) {
		this.ftdsenpr = ftdsenpr;
	}

	public Short getFtdnounc() {
		return ftdnounc;
	}

	public void setFtdnounc(Short ftdnounc) {
		this.ftdnounc = ftdnounc;
	}

	public Short getFtdverbc() {
		return ftdverbc;
	}

	public void setFtdverbc(Short ftdverbc) {
		this.ftdverbc = ftdverbc;
	}

	public Float getFtdratio() {
		return ftdratio;
	}

	public void setFtdratio(Float ftdratio) {
		this.ftdratio = ftdratio;
	}

	public Short getFtdreaas() {
		return ftdreaas;
	}

	public void setFtdreaas(Short ftdreaas) {
		this.ftdreaas = ftdreaas;
	}

	public Short getFtdreaos() {
		return ftdreaos;
	}

	public void setFtdreaos(Short ftdreaos) {
		this.ftdreaos = ftdreaos;
	}

	public Short getFtdreasr() {
		return ftdreasr;
	}

	public void setFtdreasr(Short ftdreasr) {
		this.ftdreasr = ftdreasr;
	}

	public Short getFtdreapr() {
		return ftdreapr;
	}

	public void setFtdreapr(Short ftdreapr) {
		this.ftdreapr = ftdreapr;
	}

	public String[] getRequiredResultFields(String version) {
		String[] required;
		required = new String[] {
				"ftdworrc",
				"ftdworrs",
				"ftdworrr",
				"ftdworic",
				"ftdworis",
				"ftdworir",
				"ftdworip",
				"ftdsemmt",
				"ftdsemaa",
				"ftdsemta",
				"ftdanasw",
				"ftdanaow",
				"ftdsenas",
				"ftdsenos",
				"ftdsensr",
				"ftdsenpr",
				"ftdnounc",
				"ftdverbc",
				"ftdreaas",
				"ftdreaos",
				"ftdreasr",
				"ftdreapr"
		};
		if (version.equals("2")){
			// fields deleted in FTLD Module 3
			required = StringUtils.concatenateStringArrays(required, new String[]{
					"ftdbentc",
					"ftdverfc",
					"ftdverfn",
					"ftdvernf",
					"ftdverlc",
					"ftdverlr",
					"ftdverln",
					"ftdvertn",
					"ftdverte",
					"ftdverti",
					"ftdbentd",
					"ftdbenrs"});
		}
		return required;
	}
	
	
	public void markUnusedFields(String version) {
		if(version.equals("3")) {
			this.ftdbentc = this.ftdverfc = this.ftdverfn = this.ftdvernf = this.ftdverlc = this.ftdverlr = this.ftdverln 
					= this.ftdvertn = this.ftdverte = this.ftdverti = this.ftdbentd = this.ftdbenrs = (short)-8;
		}
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if (getInstrVer().equals("2")) {
			buffer.append(UdsUploadUtils.formatField(getFtdbentc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverfc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverfn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdvernf())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverlc())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverlr())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverln())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdvertn())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverte())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdverti())).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getFtdworrc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworrs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworrr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworic())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworis())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworir())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdworip())).append(",");
		if (getInstrVer().equals("2")) {
			buffer.append(UdsUploadUtils.formatField(getFtdbentd())).append(",");
			buffer.append(UdsUploadUtils.formatField(getFtdbenrs())).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getFtdsemmt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsemaa())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsemta())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsemsu())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdanasw())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdanaow())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdanats())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsenas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsenos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsensr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsenpr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdnounc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdverbc())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdratio())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdreaas())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdreaos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdreasr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdreapr()));
		return buffer.toString();
	}
	
	@Override
	public void updateCalculatedFields() {
		super.updateCalculatedFields();

		this.ftdsemsu = CalcUtils.add(new Short[] {
				this.ftdsemaa, this.ftdsemta
		}).shortValue();

		this.ftdanats = CalcUtils.add(new Short[] {
				this.ftdanasw, this.ftdanaow
		}).shortValue();
		
		if (this.ftdnounc!=null && this.ftdverbc!=null) {
			if (this.ftdnounc>0 && this.ftdnounc<=16 && this.ftdverbc>0 && this.ftdverbc<=16) {
				this.ftdratio = this.ftdnounc.floatValue() / this.ftdverbc.floatValue();
			}
			else if (this.ftdnounc.equals(0) && this.ftdverbc.equals(0)) {
				this.ftdratio = (float) 88.88;
			}
			else {
				// if either or both noun and verb are NACC (95-98) or MAC (-6 to -9) error codes
				// set it to Cannot Calculate code
				this.ftdratio = (float) -5.0;
			}
		}
		else {
			this.ftdratio = (float) -5.0;
		}
		
	}	
	
}


