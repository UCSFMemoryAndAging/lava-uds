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
	public static final Short YES = Short.valueOf((short)1);
	public static final Short NO = Short.valueOf((short)0);
	//NACC's coding convention has CORRECT = 0
	public static final Short CORRECT = Short.valueOf((short)0);
	public static final Short INCORRECT = Short.valueOf((short)1);
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
		// per C2F Guidelines, if all questions 1-22 answered all yes or all no then enter a reason in FTDCPC2F
		// and leave all other questions blank
		if (this.getFtdcpc2f() != null && this.getFtdcpc2f() >= 95 &&  this.getFtdcpc2f() <= 98) {
			return new String[]{};
		}
		else {
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
		buffer.append(UdsUploadUtils.formatField(getFtdsnrat()));
		return buffer.toString();
	}
	
	public void beforeUpdate() {

		super.beforeUpdate();
		
		if (this.getFtdcpc2f() != null && this.getFtdcpc2f() >= 95 &&  this.getFtdcpc2f() <= 98) {
			this.ftdsntot = this.ftdsntbs = this.ftdsntos = -5;
			this.ftdsnrat = (float) -5.0;
			return;
		}
				
		//Fields to hold if the response was correct or incorrect
		Short ftdhairdC;
		Short ftdspitC;
		Short ftdnoseC;
		Short ftdcoageC;
		Short ftdcryC;
		Short ftdcutC;
		Short ftdytripC;
		Short ftdeatpC;
		Short ftdtellaC;
		Short ftdopinC;
		Short ftdlaughC;
		Short ftdshirtC;
		Short ftdkeepmC;
		Short ftdpicknC;
		Short ftdoverC;
		Short ftdeatrC;
		Short ftdhairlC;
		Short ftdshirwC;
		Short ftdmoveC;
		Short ftdhugsC;
		Short ftdloudC;
		Short ftdlostC;
		
		if (this.ftdhaird.equals(UdsFtldSnq.NO)) ftdhairdC=UdsFtldSnq.CORRECT;
		else if (this.ftdhaird.equals(UdsFtldSnq.YES)) ftdhairdC=UdsFtldSnq.INCORRECT;
		else ftdhairdC=this.ftdhaird;

		if (this.ftdspit.equals(UdsFtldSnq.NO)) ftdspitC=UdsFtldSnq.CORRECT;
		else if (this.ftdspit.equals(UdsFtldSnq.YES)) ftdspitC=UdsFtldSnq.INCORRECT;
		else ftdspitC=this.ftdspit;
		
		if (this.ftdnose.equals(UdsFtldSnq.YES)) ftdnoseC=UdsFtldSnq.CORRECT;
		else if (this.ftdnose.equals(UdsFtldSnq.NO)) ftdnoseC=UdsFtldSnq.INCORRECT;
		else ftdnoseC=this.ftdnose;
		
		if (this.ftdcoage.equals(UdsFtldSnq.NO)) ftdcoageC=UdsFtldSnq.CORRECT;
		else if (this.ftdcoage.equals(UdsFtldSnq.YES)) ftdcoageC=UdsFtldSnq.INCORRECT;
		else ftdcoageC=this.ftdcoage;
		
		if (this.ftdcry.equals(UdsFtldSnq.YES)) ftdcryC=UdsFtldSnq.CORRECT;
		else if (this.ftdcry.equals(UdsFtldSnq.NO)) ftdcryC=UdsFtldSnq.INCORRECT;
		else ftdcryC=this.ftdcry;
		
		if (this.ftdcut.equals(UdsFtldSnq.NO)) ftdcutC=UdsFtldSnq.CORRECT;
		else if (this.ftdcut.equals(UdsFtldSnq.YES)) ftdcutC=UdsFtldSnq.INCORRECT;
		else ftdcutC=this.ftdcut;
		
		if (this.ftdytrip.equals(UdsFtldSnq.YES)) ftdytripC=UdsFtldSnq.CORRECT;
		else if (this.ftdytrip.equals(UdsFtldSnq.NO)) ftdytripC=UdsFtldSnq.INCORRECT;
		else ftdytripC=this.ftdytrip;
		
		if (this.ftdeatp.equals(UdsFtldSnq.NO)) ftdeatpC=UdsFtldSnq.CORRECT;
		else if (this.ftdeatp.equals(UdsFtldSnq.YES)) ftdeatpC=UdsFtldSnq.INCORRECT;
		else ftdeatpC=this.ftdeatp;
		
		if (this.ftdtella.equals(UdsFtldSnq.YES)) ftdtellaC=UdsFtldSnq.CORRECT;
		else if (this.ftdtella.equals(UdsFtldSnq.NO)) ftdtellaC=UdsFtldSnq.INCORRECT;
		else ftdtellaC=this.ftdtella;
		
		if (this.ftdopin.equals(UdsFtldSnq.YES)) ftdopinC=UdsFtldSnq.CORRECT;
		else if (this.ftdopin.equals(UdsFtldSnq.NO)) ftdopinC=UdsFtldSnq.INCORRECT;
		else ftdopinC=this.ftdopin;
		
		if (this.ftdlaugh.equals(UdsFtldSnq.NO)) ftdlaughC=UdsFtldSnq.CORRECT;
		else if (this.ftdlaugh.equals(UdsFtldSnq.YES)) ftdlaughC=UdsFtldSnq.INCORRECT;
		else ftdlaughC=this.ftdlaugh;
		
		if (this.ftdshirt.equals(UdsFtldSnq.NO)) ftdshirtC=UdsFtldSnq.CORRECT;
		else if (this.ftdshirt.equals(UdsFtldSnq.YES)) ftdshirtC=UdsFtldSnq.INCORRECT;
		else ftdshirtC=this.ftdshirt;
		
		if (this.ftdkeepm.equals(UdsFtldSnq.YES)) ftdkeepmC=UdsFtldSnq.CORRECT;
		else if (this.ftdkeepm.equals(UdsFtldSnq.NO)) ftdkeepmC=UdsFtldSnq.INCORRECT;
		else ftdkeepmC=this.ftdkeepm;
		
		if (this.ftdpickn.equals(UdsFtldSnq.NO)) ftdpicknC=UdsFtldSnq.CORRECT;
		else if (this.ftdpickn.equals(UdsFtldSnq.YES)) ftdpicknC=UdsFtldSnq.INCORRECT;
		else ftdpicknC=this.ftdpickn;
		
		if (this.ftdover.equals(UdsFtldSnq.NO)) ftdoverC=UdsFtldSnq.CORRECT;
		else if (this.ftdover.equals(UdsFtldSnq.YES)) ftdoverC=UdsFtldSnq.INCORRECT;
		else ftdoverC=this.ftdover;
		
		if (this.ftdeatr.equals(UdsFtldSnq.YES)) ftdeatrC=UdsFtldSnq.CORRECT;
		else if (this.ftdeatr.equals(UdsFtldSnq.NO)) ftdeatrC=UdsFtldSnq.INCORRECT;
		else ftdeatrC=this.ftdeatr;
		
		if (this.ftdhairl.equals(UdsFtldSnq.YES)) ftdhairlC=UdsFtldSnq.CORRECT;
		else if (this.ftdhairl.equals(UdsFtldSnq.NO)) ftdhairlC=UdsFtldSnq.INCORRECT;
		else ftdhairlC=this.ftdhairl;
		
		if (this.ftdshirw.equals(UdsFtldSnq.YES)) ftdshirwC=UdsFtldSnq.CORRECT;
		else if (this.ftdshirw.equals(UdsFtldSnq.NO)) ftdshirwC=UdsFtldSnq.INCORRECT;
		else ftdshirwC=this.ftdshirw;
		
		if (this.ftdmove.equals(UdsFtldSnq.NO)) ftdmoveC=UdsFtldSnq.CORRECT;
		else if (this.ftdmove.equals(UdsFtldSnq.YES)) ftdmoveC=UdsFtldSnq.INCORRECT;
		else ftdmoveC=this.ftdmove;

		if (this.ftdhugs.equals(UdsFtldSnq.NO)) ftdhugsC=UdsFtldSnq.CORRECT;
		else if (this.ftdhugs.equals(UdsFtldSnq.YES)) ftdhugsC=UdsFtldSnq.INCORRECT;
		else ftdhugsC=this.ftdhugs;
		
		if (this.ftdloud.equals(UdsFtldSnq.NO)) ftdloudC=UdsFtldSnq.CORRECT;
		else if (this.ftdloud.equals(UdsFtldSnq.YES)) ftdloudC=UdsFtldSnq.INCORRECT;
		else ftdloudC=this.ftdloud;

		if (this.ftdlost.equals(UdsFtldSnq.YES)) ftdlostC=UdsFtldSnq.CORRECT;
		else if (this.ftdlost.equals(UdsFtldSnq.NO)) ftdlostC=UdsFtldSnq.INCORRECT;
		else ftdlostC=this.ftdlost;

		//Score calculation uses correct/incorrect values instead of responses
		this.ftdsntot = CalcUtils.add(new Short[] {ftdhairdC, ftdspitC, ftdnoseC, ftdcoageC, ftdcryC, ftdcutC, ftdytripC, ftdeatpC, ftdtellaC, ftdopinC, ftdlaughC, ftdshirtC, ftdkeepmC, ftdpicknC, ftdoverC, ftdeatrC, ftdhairlC, ftdshirwC, ftdmoveC, ftdhugsC, ftdloudC, ftdlostC}).shortValue();
		if (this.ftdsntot == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsntot = UDS_C2F_ERROR_CODE_CANNOT_CALCULATE;
		else this.ftdsntot = (short) (NUM_ITEMS - this.ftdsntot);
		
		this.ftdsntbs = CalcUtils.add(new Short[] {ftdhairdC, ftdspitC, ftdcoageC, ftdcutC, ftdeatpC, ftdlaughC, ftdshirtC, ftdpicknC, ftdoverC, ftdmoveC, ftdhugsC, ftdloudC}).shortValue();
		if (this.ftdsntbs == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsntbs = UDS_C2F_ERROR_CODE_CANNOT_CALCULATE;

		this.ftdsntos = CalcUtils.add(new Short[] {ftdnoseC, ftdcryC, ftdytripC, ftdtellaC, ftdopinC, ftdkeepmC, ftdeatrC, ftdhairlC, ftdshirwC, ftdlostC}).shortValue();
		if (this.ftdsntos == CalcUtils.ERROR_CODE_CANNOT_CALCULATE) this.ftdsntos = UDS_C2F_ERROR_CODE_CANNOT_CALCULATE;
		
		//Yes/No Ratio Score uses response values
		Short numTotal = CalcUtils.count(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost});
		Short numYes = CalcUtils.count(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost}, new Short[] {1});		
		Short numNo = CalcUtils.count(new Short[] {this.ftdhaird, this.ftdspit, this.ftdnose, this.ftdcoage, this.ftdcry, this.ftdcut, this.ftdytrip, this.ftdeatp, this.ftdtella, this.ftdopin, this.ftdlaugh, this.ftdshirt, this.ftdkeepm, this.ftdpickn, this.ftdover, this.ftdeatr, this.ftdhairl, this.ftdshirw, this.ftdmove, this.ftdhugs, this.ftdloud, this.ftdlost}, new Short[] {0});
		
		if (numTotal==NUM_ITEMS && numYes!=0 && numNo!=0) this.ftdsnrat = numYes.floatValue() / numNo.floatValue();
		else this.ftdsnrat = (float) UDS_C2F_ERROR_CODE_CANNOT_CALCULATE_DECIMAL;		
				
	}
	
}


