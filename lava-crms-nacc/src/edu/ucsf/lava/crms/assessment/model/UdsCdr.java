package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsCdr extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsCdr.class);
	
	public final static String UDS_CDR_FORMID = "B4";
	public UdsCdr() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsCdr(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_CDR_FORMID);
	}
	
	// note: id inherited from Instrument
	
	private Float memory;
	private Float orient;
	private Float judgement;
	private Float commun;
	private Float homeHobb;
	private Float persCare;
	private Float cdrSumLookup;
	private Float cdrSum;
	private Float cdrGlobLookup;
	private Float cdrGlob;
	private Float comport;
	private Float cdrLang;
	
	public Float getCdrLang() {
		return cdrLang;
	}

	public void setCdrLang(Float cdrLang) {
		this.cdrLang = cdrLang;
	}

	public Float getComport() {
		return comport;
	}

	public void setComport(Float comport) {
		this.comport = comport;
	}

	public Float getCdrGlob() {
		return cdrGlob;
	}

	public void setCdrGlob(Float cdrGlob) {
		this.cdrGlob = cdrGlob;
	}

	public Float getCdrSum() {
		return cdrSum;
	}

	public void setCdrSum(Float cdrSum) {
		this.cdrSum = cdrSum;
	}

	public Float getCommun() {
		return commun;
	}

	public void setCommun(Float commun) {
		this.commun = commun;
	}

	public Float getHomeHobb() {
		return homeHobb;
	}

	public void setHomeHobb(Float homeHobb) {
		this.homeHobb = homeHobb;
	}

	public Float getJudgement() {
		return judgement;
	}

	public void setJudgement(Float judgement) {
		this.judgement = judgement;
	}

	public Float getMemory() {
		return memory;
	}

	public void setMemory(Float memory) {
		this.memory = memory;
	}

	public Float getOrient() {
		return orient;
	}

	public void setOrient(Float orient) {
		this.orient = orient;
	}

	public Float getPersCare() {
		return persCare;
	}

	public void setPersCare(Float persCare) {
		this.persCare = persCare;
	}
	
	public Float getCdrSumLookup() {
		return cdrSumLookup;
	}

	public void setCdrSumLookup(Float cdrSumLookup) {
		this.cdrSumLookup = cdrSumLookup;
	}

	public Float getCdrGlobLookup() {
		return cdrGlobLookup;
	}

	public void setCdrGlobLookup(Float cdrGlobLookup) {
		this.cdrGlobLookup = cdrGlobLookup;
	}

	public void markUnusedFields(String version) {
        if (version.equalsIgnoreCase("1")) {
       
 			this.comport = this.cdrLang = (float)-8.0;    
   			}
	}
	public String[] getRequiredResultFields(String version) {
		String[] required = new String[]{};
		
		if (version.equalsIgnoreCase("1")) {
			required = new String[] {
				"memory",
				"orient",
				"judgement",
				"commun",
				"homeHobb",
				"persCare"};
		}
		else if (version.equalsIgnoreCase("2")) {
			required = new String[] {
				"memory",
				"orient",
				"judgement",
				"commun",
				"homeHobb",
				"persCare",
				"comport",
				"cdrLang"};
		}
		return required;
	}


	public String getUdsUploadCsvRecord() {
		if(getInstrVer()==null){return "";}
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getMemory())).append(",");
		buffer.append(UdsUploadUtils.formatField(getOrient())).append(",");
		buffer.append(UdsUploadUtils.formatField(getJudgement())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCommun())).append(",");
		buffer.append(UdsUploadUtils.formatField(getHomeHobb())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPersCare())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCdrSum())).append(",");
		buffer.append(UdsUploadUtils.formatField(getCdrGlob()));
		
		if(this.getInstrVer().equals("2")){
			buffer.append(",");
			buffer.append(UdsUploadUtils.formatField(getComport())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCdrLang()));
			
			if(getComport() == null || getComport() < 0 || 
				getCdrLang() == null || getCdrLang() < 0 || 
				getCdrSum() == null || getCdrSum() < 0){
				buffer.append("");
			}else{
				buffer.append(UdsUploadUtils.formatField(getComport()+getCdrLang()+getCdrSum()));
			}
		}
		return buffer.toString();
	}
	

	public void beforeUpdate(){
		super.beforeUpdate();
		
		if (this.getCdrGlobLookup() != null) {
			this.setCdrGlob(this.getCdrGlobLookup());
		}
		else {
			this.setCdrGlob((float)DATA_CODES_CANNOT_TOTAL);
		}
		
		if (this.getCdrSumLookup() != null) {
			this.setCdrSum(this.getCdrSumLookup());
		}
		else {
			this.setCdrSum((float)DATA_CODES_CANNOT_TOTAL);
		}
		
		this.setSummary(new StringBuffer("Sum of Boxes: " ).append(this.getCdrSum())
				.append("\nGlobal: ").append(this.getCdrGlob()).toString());
	}
		
}


