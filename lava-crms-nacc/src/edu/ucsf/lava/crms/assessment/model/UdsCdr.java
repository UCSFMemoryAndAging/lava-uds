package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
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

	// EMORY change: add cdrSumSupp calculation (we display this on form as well)
	public Float getCdrSumSupp() {
		if (this.comport == null || this.comport < 0
			|| this.cdrLang == null || this.cdrLang < 0)
			return null;  // always use null (instead of -5) since this will be the initial value when first entering this form
		else
			return this.getComport() + this.getCdrLang();
	}
	
	// EMORY change: add cdrSumSuppAndStd calculation (we display this on form as well)
	public Float getCdrSumSuppAndStd() {
		if (this.cdrSum == null
			|| this.getCdrSumSupp() == null
			|| this.cdrSum.equals((float)-5.f))
			return null;  // always use null (instead of -5) since this will be the initial value when first entering this form
		else
			return this.getCdrSum() + this.getCdrSumSupp();
	}
	
	public void markUnusedFields(String version) {
        if (version.equalsIgnoreCase("1")) {
 			this.comport = this.cdrLang = (float)-8.0;    
		}
	}
	public String[] getRequiredResultFields(String version) {
		String[] required = new String[]{};
		
		if (version.equals("1")) {
			required = new String[] {
				"memory",
				"orient",
				"judgement",
				"commun",
				"homeHobb",
				"persCare"};
		}
		else if (version.equals("2")) {
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
		else if (version.equals("3")) {
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
		
		if(this.getInstrVer().equals("2") || this.getInstrVer().equals("3")){
			buffer.append(",");
			buffer.append(UdsUploadUtils.formatField(getComport())).append(",");
			// EMORY change: see below
			//buffer.append(UdsUploadUtils.formatField(getCdrLang()));
			buffer.append(UdsUploadUtils.formatField(getCdrLang())).append(",");
			
			// EMORY change: NACC expects these two (undocumented) entries here, both cdrSumSupp and cdrSumSuppAndStd, even if blank
			//if(getComport() == null || getComport() < 0 || 
			//	getCdrLang() == null || getCdrLang() < 0 || 
			//	getCdrSum() == null || getCdrSum() < 0){
			//	buffer.append("");
			//}else{
			//	buffer.append(UdsUploadUtils.formatField(getComport()+getCdrLang()+getCdrSum()));
			//}
			buffer.append(UdsUploadUtils.formatField(getCdrSumSupp())).append(",");
			buffer.append(UdsUploadUtils.formatField(getCdrSumSuppAndStd()));

		}
		return buffer.toString();
	}
	

	public boolean afterUpdate(){
		super.afterUpdate();
		
		// at this point, the entity modifications have been persisted but the summary values
		// which are looked up when the entity is retrieved have not been updated, so now
		// retrieve the lookup values only (since the entity itself is already part of the
		// Hibernate session) and update their persistent counterparts, and return true
		// from this method so the entity will be re-saved
		LavaDaoFilter filter = newFilterInstance();
		filter.addDaoParam(filter.daoNamedParam("id", this.getId()));
		List list = MANAGER.findByNamedQuery("udsCdr.retrieveLookupValues",filter);
		if (list != null) {
			Object[] row = (Object[]) list.iterator().next();
			this.setCdrSumLookup((Float)row[0]);
			if (this.getCdrSumLookup() != null) {
				this.setCdrSum(this.getCdrSumLookup());
			}
			else {
				this.setCdrSum((float)DATA_CODES_CANNOT_TOTAL);
			}
			
			this.setCdrGlobLookup((Float)row[1]);
			if (this.getCdrGlobLookup() != null) {
				this.setCdrGlob(this.getCdrGlobLookup());
			}
			else {
				this.setCdrGlob((float)DATA_CODES_CANNOT_TOTAL);
			}
		}
		else {
			this.setCdrSum((float)DATA_CODES_CANNOT_TOTAL);
			this.setCdrGlob((float)DATA_CODES_CANNOT_TOTAL);
		}
		
		
		this.setSummary(new StringBuffer("Sum of Boxes: " ).append(this.getCdrSum())
				.append("\nGlobal: ").append(this.getCdrGlob()).toString());
		
		return true;
	}
	
		
}


