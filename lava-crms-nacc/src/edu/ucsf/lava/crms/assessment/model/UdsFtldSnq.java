package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.controller.CalcUtils;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFtldSnq extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFtldSnq.class);
	public static final int UDS_C2F_ERROR_CODE_CANNOT_CALCULATE = 88;
	public static final int NUM_ITEMS = 22;
	public static final double UDS_C2F_ERROR_CODE_CANNOT_CALCULATE_DECIMAL = 88.88;

	public static final String UDS_FTLD_SNQ_FORMID = "C2F";
	public UdsFtldSnq() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFtldSnq(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FTLD_SNQ_FORMID);
	}
	
	// note: id inherited from Instrument
	protected Short ftdcpc2f;
	protected Short ftdhaird;
	protected Short ftdspit;
	protected Short ftdnose;
	protected Short ftdcoage;
	protected Short ftdcry;
	protected Short ftdcut;
	protected Short ftdytrip;
	protected Short ftdeatp;
	protected Short ftdtella;
	protected Short ftdopin;
	protected Short ftdlaugh;
	protected Short ftdshirt;
	protected Short ftdkeepm;
	protected Short ftdpickn;
	protected Short ftdover;
	protected Short ftdeatr;
	protected Short ftdhairl;
	protected Short ftdshirw;
	protected Short ftdmove;
	protected Short ftdhugs;
	protected Short ftdloud;
	protected Short ftdlost;
	protected Short ftdsntot;
	protected Short ftdsntbs;
	protected Short ftdsntos;
	protected Float ftdsnrat;
	
	public Short getFtdcpc2f() {
		return ftdcpc2f;
	}

	public void setFtdcpc2f(Short ftdcpc2f) {
		this.ftdcpc2f = ftdcpc2f;
	}

	public Short getFtdhaird() {
		return ftdhaird;
	}

	public void setFtdhaird(Short ftdhaird) {
		this.ftdhaird = ftdhaird;
	}

	public Short getFtdspit() {
		return ftdspit;
	}

	public void setFtdspit(Short ftdspit) {
		this.ftdspit = ftdspit;
	}

	public Short getFtdnose() {
		return ftdnose;
	}

	public void setFtdnose(Short ftdnose) {
		this.ftdnose = ftdnose;
	}

	public Short getFtdcoage() {
		return ftdcoage;
	}

	public void setFtdcoage(Short ftdcoage) {
		this.ftdcoage = ftdcoage;
	}

	public Short getFtdcry() {
		return ftdcry;
	}

	public void setFtdcry(Short ftdcry) {
		this.ftdcry = ftdcry;
	}

	public Short getFtdcut() {
		return ftdcut;
	}

	public void setFtdcut(Short ftdcut) {
		this.ftdcut = ftdcut;
	}

	public Short getFtdytrip() {
		return ftdytrip;
	}

	public void setFtdytrip(Short ftdytrip) {
		this.ftdytrip = ftdytrip;
	}

	public Short getFtdeatp() {
		return ftdeatp;
	}

	public void setFtdeatp(Short ftdeatp) {
		this.ftdeatp = ftdeatp;
	}

	public Short getFtdtella() {
		return ftdtella;
	}

	public void setFtdtella(Short ftdtella) {
		this.ftdtella = ftdtella;
	}

	public Short getFtdopin() {
		return ftdopin;
	}

	public void setFtdopin(Short ftdopin) {
		this.ftdopin = ftdopin;
	}

	public Short getFtdlaugh() {
		return ftdlaugh;
	}

	public void setFtdlaugh(Short ftdlaugh) {
		this.ftdlaugh = ftdlaugh;
	}

	public Short getFtdshirt() {
		return ftdshirt;
	}

	public void setFtdshirt(Short ftdshirt) {
		this.ftdshirt = ftdshirt;
	}

	public Short getFtdkeepm() {
		return ftdkeepm;
	}

	public void setFtdkeepm(Short ftdkeepm) {
		this.ftdkeepm = ftdkeepm;
	}

	public Short getFtdpickn() {
		return ftdpickn;
	}

	public void setFtdpickn(Short ftdpickn) {
		this.ftdpickn = ftdpickn;
	}

	public Short getFtdover() {
		return ftdover;
	}

	public void setFtdover(Short ftdover) {
		this.ftdover = ftdover;
	}

	public Short getFtdeatr() {
		return ftdeatr;
	}

	public void setFtdeatr(Short ftdeatr) {
		this.ftdeatr = ftdeatr;
	}

	public Short getFtdhairl() {
		return ftdhairl;
	}

	public void setFtdhairl(Short ftdhairl) {
		this.ftdhairl = ftdhairl;
	}

	public Short getFtdshirw() {
		return ftdshirw;
	}

	public void setFtdshirw(Short ftdshirw) {
		this.ftdshirw = ftdshirw;
	}

	public Short getFtdmove() {
		return ftdmove;
	}

	public void setFtdmove(Short ftdmove) {
		this.ftdmove = ftdmove;
	}

	public Short getFtdhugs() {
		return ftdhugs;
	}

	public void setFtdhugs(Short ftdhugs) {
		this.ftdhugs = ftdhugs;
	}

	public Short getFtdloud() {
		return ftdloud;
	}

	public void setFtdloud(Short ftdloud) {
		this.ftdloud = ftdloud;
	}

	public Short getFtdlost() {
		return ftdlost;
	}

	public void setFtdlost(Short ftdlost) {
		this.ftdlost = ftdlost;
	}

	public Short getFtdsntot() {
		return ftdsntot;
	}

	public void setFtdsntot(Short ftdsntot) {
		this.ftdsntot = ftdsntot;
	}

	public Short getFtdsntbs() {
		return ftdsntbs;
	}

	public void setFtdsntbs(Short ftdsntbs) {
		this.ftdsntbs = ftdsntbs;
	}

	public Short getFtdsntos() {
		return ftdsntos;
	}

	public void setFtdsntos(Short ftdsntos) {
		this.ftdsntos = ftdsntos;
	}

	public Float getFtdsnrat() {
		return ftdsnrat;
	}

	public void setFtdsnrat(Float ftdsnrat) {
		this.ftdsnrat = ftdsnrat;
	}

	public String[] getRequiredResultFields() {
		return new String[] {
				"ftdcpc2f",
				"ftdhaird",
				"ftdspit",
				"ftdnose",
				"ftdcoage",
				"ftdcry",
				"ftdcut",
				"ftdytrip",
				"ftdeatp",
				"ftdtella",
				"ftdopin",
				"ftdlaugh",
				"ftdshirt",
				"ftdkeepm",
				"ftdpickn",
				"ftdover",
				"ftdeatr",
				"ftdhairl",
				"ftdshirw",
				"ftdmove",
				"ftdhugs",
				"ftdloud",
				"ftdlost"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getFtdcpc2f())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdhaird())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdspit())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdnose())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcoage())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcry())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdcut())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdytrip())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdeatp())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdtella())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdopin())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlaugh())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdshirt())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdkeepm())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdpickn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdover())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdeatr())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdhairl())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdshirw())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdmove())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdhugs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdloud())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdlost())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsntot())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsntbs())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsntos())).append(",");
		buffer.append(UdsUploadUtils.formatField(getFtdsnrat())).append(",");
		return buffer.toString();
	}
	
	public void beforeUpdate() {

		super.beforeUpdate();
				
		this.ftdsntot = CalcUtils.add(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost}).shortValue();
		if (this.ftdsntot == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsntot = UDS_C2F_ERROR_CODE_CANNOT_CALCULATE;
		else this.ftdsntot = (short) (NUM_ITEMS - this.ftdsntot);
		
		this.ftdsntbs = CalcUtils.add(new Short[] {this.ftdhaird, this.ftdspit, this.ftdcoage, this.ftdcut, this.ftdeatp, this.ftdlaugh, this.ftdshirt, this.ftdpickn, this.ftdover, this.ftdmove, this.ftdhugs, this.ftdloud}).shortValue();
		if (this.ftdsntbs == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsntbs = UDS_C2F_ERROR_CODE_CANNOT_CALCULATE;

		this.ftdsntos = CalcUtils.add(new Short[] {this.ftdnose, this.ftdcry, this.ftdytrip, this.ftdtella, this.ftdopin, this.ftdkeepm, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdlost}).shortValue();
		if (this.ftdsntos == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsntos = UDS_C2F_ERROR_CODE_CANNOT_CALCULATE;
		
		Short numTotal = CalcUtils.count(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost});
		Short numYes = CalcUtils.count(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost}, new Short[] {1});		
		Short numNo = CalcUtils.count(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost}, new Short[] {0});
		
		if (numTotal==NUM_ITEMS && numYes!=0 && numNo!=0) this.ftdsnrat = numYes.floatValue() / numNo.floatValue();
		else this.ftdsnrat = (float) UDS_C2F_ERROR_CODE_CANNOT_CALCULATE_DECIMAL;		
		
	}
	
}


