package edu.ucsf.lava.crms.assessment.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.list.ListManager;
import edu.ucsf.lava.core.list.model.LabelValueBean;
import edu.ucsf.lava.core.manager.CoreManagerUtils;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.assessment.model.InstrumentTracking;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsInstrument extends Instrument implements UdsUploadable{
	
	public static EntityManager MANAGER = new EntityBase.Manager(UdsInstrument.class);
	
	public static final String CURRENT_UDS_VERSION = "2";
	private String packet;
	private String formId;
	private String formVer;
	private Short adcId;
	private String ptid;
	private Short visitMo;
	private Short visitDay;
	private Short visitYr;
	private Short visitNum;
	private String initials;
	private Date packetDate;
	private String packetBy;
	private String packetStatus;
	private String packetReason;
	private String packetNotes;
	private Date dsDate;
	private String dsBy;
	private String dsStatus;
	private String dsReason;
	private String dsNotes;
	private Date lcDate;
	private String lcBy;
	private String lcStatus;
	private String lcReason;
	private String lcNotes;
	
	
	

	
	public UdsInstrument(){
	}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsInstrument(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		setInstrVer(CURRENT_UDS_VERSION); // new instrument defaults to latest version 
		this.setFormVer(CURRENT_UDS_VERSION);
		}
	
	//returns an alternate language string if the form is not an english form
	public String getAlternateLanguage(){
		if(this.formId!=null && this.formId.endsWith("S")){
			return new String("Spanish");
		}
		return new String();
	}
	
	public String getUdsTrackingBlock(){
		StringBuffer block = new StringBuffer();
		if(StringUtils.isNotEmpty(this.formId)) { block.append("Form ").append(this.formId).append(" (v.");}
		if(StringUtils.isNotEmpty(this.formVer)) { 
			block.append(this.formVer).append(")\n");
		}else{
			block.append("?)\n");
		}
		if(StringUtils.isNotEmpty(this.packet)) { 
			if(this.packet.equalsIgnoreCase("I")){
				block.append("Initial Visit");
			}else if(this.packet.equalsIgnoreCase("F")){
				block.append("Follow Up Visit");
			}else if(this.packet.equalsIgnoreCase("T")){
				block.append("Telephone Visit");
			}else if(this.packet.equalsIgnoreCase("M")){
				block.append("Milestone");
			}
		}
		if(this.visitNum != null && !StringUtils.equalsIgnoreCase(this.packet, "M")){
			block.append(" - ").append(this.visitNum.toString());
			}
		return new String(block);
	}
	public String getUdsVisitBlock(){
		StringBuffer block = new StringBuffer();
		if(StringUtils.isNotEmpty(this.packet)) { 
			if(this.packet.equalsIgnoreCase("I")){
				block.append("Initial Visit");
			}else if(this.packet.equalsIgnoreCase("F")){
				block.append("Follow Up Visit");
			}else if(this.packet.equalsIgnoreCase("T")){
				block.append("Telephone Visit");
			}else if(this.packet.equalsIgnoreCase("M")){
				block.append("Milestone");
			}
		}
		if(this.visitNum != null && !StringUtils.equalsIgnoreCase(this.packet, "M")){
			block.append(" - ").append(this.visitNum.toString());
			}
		return new String(block);
	}
	
	public String getLogicCheckStatusBlock(){
		StringBuffer block = new StringBuffer();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String lcDateAsText = null;
		if (lcDate != null) {
			lcDateAsText = dateFormat.format(lcDate);
		}
		if(StringUtils.isNotEmpty(this.lcStatus)) { block.append(this.lcStatus).append("\n");}
		if(StringUtils.isNotEmpty(this.lcReason)) { block.append(this.lcReason).append("\n");}
		if(StringUtils.isNotEmpty(this.lcBy)) { block.append(this.lcBy).append("\n");}
		if(StringUtils.isNotEmpty(lcDateAsText)) { block.append(lcDateAsText);}
		
		
		return new String(block);
	}
	public String getSubmissionStatusBlock(){
		StringBuffer block = new StringBuffer();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String dsDateAsText = null;
		if (dsDate != null) {
			dsDateAsText = dateFormat.format(dsDate);
		}
		if(StringUtils.isNotEmpty(this.dsStatus)) { block.append(this.dsStatus).append("\n");}
		if(StringUtils.isNotEmpty(this.dsReason)) { block.append(this.dsReason).append("\n");}
		if(StringUtils.isNotEmpty(this.dsBy)) { block.append(this.dsBy).append("\n");}
		if(StringUtils.isNotEmpty(dsDateAsText)) { block.append(dsDateAsText);}
		
		
		return new String(block);
	}
	public String getPacketStatusBlock(){
		StringBuffer block = new StringBuffer();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String packetDateAsText = null;
		if (packetDate != null) {
			packetDateAsText = dateFormat.format(packetDate);
		}
		if(StringUtils.isNotEmpty(this.packetStatus)) { block.append(this.packetStatus).append("\n");}
		if(StringUtils.isNotEmpty(this.packetReason)) { block.append(this.packetReason).append("\n");}
		if(StringUtils.isNotEmpty(this.packetBy)) { block.append(this.packetBy).append("\n");}
		if(StringUtils.isNotEmpty(packetDateAsText)) { block.append(packetDateAsText);}
		
		
		return new String(block);
	}
	
	
	/**
	 * Override this method if the instrument returns just one record.  The 
	 * base implementation of getUdsUploadCsvRecords() will wrap the string returned
	 * by this method in a List.
	 * @return
	 */
	public String getUdsUploadCsvRecord(){
		return new String();
	}
	


	/**
	 * Override in subclasses of UdsInstrument to return a list of comma separated value strings
	 * that conform to the UDS upload file format definition.
	 * Note: most uds instruments return a single record, you can override the 
	 * convenience function getUdsUploadCsvRecord() in this case.
	 * @return
	 */
	public List<String> getUdsUploadCsvRecords() {
		List<String> records = new ArrayList<String>();
		records.add(getUdsUploadCsvRecord());
		return records;
	}
	
	
	
	
	public Short getAdcId() {
		return adcId;
	}
	public void setAdcId(Short adcId) {
		this.adcId = adcId;
	}
	public String getDsBy() {
		return dsBy;
	}
	public void setDsBy(String dsBy) {
		this.dsBy = dsBy;
	}
	public Date getDsDate() {
		return dsDate;
	}
	public void setDsDate(Date dsDate) {
		this.dsDate = dsDate;
	}
	public String getDsNotes() {
		return dsNotes;
	}
	public void setDsNotes(String dsNotes) {
		this.dsNotes = dsNotes;
	}
	public String getDsReason() {
		return dsReason;
	}
	public void setDsReason(String dsReason) {
		this.dsReason = dsReason;
	}
	public String getDsStatus() {
		return dsStatus;
	}
	public void setDsStatus(String dsStatus) {
		this.dsStatus = dsStatus;
	}
	public String getFormId() {
		return formId;
	}
	public void setFormId(String formId) {
		this.formId = formId;
	}
	public String getFormVer() {
		return formVer;
	}
	public void setFormVer(String formVer) {
		this.formVer = formVer;
	}
	public String getInitials() {
		return initials;
	}
	public void setInitials(String initials) {
		this.initials = initials;
	}
	public String getLcBy() {
		return lcBy;
	}
	public void setLcBy(String lcBy) {
		this.lcBy = lcBy;
	}
	public Date getLcDate() {
		return lcDate;
	}
	public void setLcDate(Date lcDate) {
		this.lcDate = lcDate;
	}
	public String getLcNotes() {
		return lcNotes;
	}
	public void setLcNotes(String lcNotes) {
		this.lcNotes = lcNotes;
	}
	public String getLcReason() {
		return lcReason;
	}
	public void setLcReason(String lcReason) {
		this.lcReason = lcReason;
	}
	public String getLcStatus() {
		return lcStatus;
	}
	public void setLcStatus(String lcStatus) {
		this.lcStatus = lcStatus;
	}
	public String getPacket() {
		return packet;
	}
	public void setPacket(String packet) {
		this.packet = packet;
	}
	public String getPacketBy() {
		return packetBy;
	}
	public void setPacketBy(String packetBy) {
		this.packetBy = packetBy;
	}
	public Date getPacketDate() {
		return packetDate;
	}
	public void setPacketDate(Date packetDate) {
		this.packetDate = packetDate;
	}
	public String getPacketNotes() {
		return packetNotes;
	}
	public void setPacketNotes(String packetNotes) {
		this.packetNotes = packetNotes;
	}
	public String getPacketReason() {
		return packetReason;
	}
	public void setPacketReason(String packetReason) {
		this.packetReason = packetReason;
	}
	public String getPacketStatus() {
		return packetStatus;
	}
	public void setPacketStatus(String packetStatus) {
		this.packetStatus = packetStatus;
	}
	public String getPtid() {
		return ptid;
	}
	public void setPtid(String ptid) {
		this.ptid = ptid;
	}
	public Short getVisitDay() {
		return visitDay;
	}
	public void setVisitDay(Short visitDay) {
		this.visitDay = visitDay;
	}
	public Short getVisitMo() {
		return visitMo;
	}
	public void setVisitMo(Short visitMo) {
		this.visitMo = visitMo;
	}
	public Short getVisitNum() {
		return visitNum;
	}
	public void setVisitNum(Short visitNum) {
		this.visitNum = visitNum;
	}
	public Short getVisitYr() {
		return visitYr;
	}
	public void setVisitYr(Short visitYr) {
		this.visitYr = visitYr;
	}
		
	
	public static List<InstrumentTracking> findUdsInstruments(LavaDaoFilter filter){
		filter.setAlias("visit","visit");
		filter.addDefaultSort("dcDate",false);
		//don't need to do this because using UdsInstrumentTracking ensures that all 
		//instruments returned will have a record in the UDsTracking table. 
		//filter.addDaoParam(filter.daoLikeParam("instrType", "UDS"));
		return MANAGER.get(UdsInstrumentTracking.class,filter);
	}
	
	public void beforeUpdate() {
		super.beforeUpdate();
		/*
		1) look up the ADCID from the ListValues table for the listName = 'UDSCenterIDs'
		
		2) set the PTID, VisitMo, VisitDay, VisitYr
		*/

		ListManager listManager = CoreManagerUtils.getListManager();
		Map<String,String> adcCenters = listManager.getDefaultStaticList("uds.adcCenterIDs");
		if (adcCenters.containsKey(this.getProjName())) {
			String adcIDAsString = (String) adcCenters.get(this.getProjName());
			try {
				this.setAdcId(Short.valueOf(adcIDAsString));
			}
			catch (NumberFormatException ex) {
				logger.warn("UdsInstrument beforeUpdate NumberFormatException ADCID=" + adcIDAsString);
			}
		}
		
		if (this.getPatient().getLastName().equals("DE-IDENTIFIED")) {
			if (StringUtils.isNumeric(this.getPatient().getFirstName())) {
				this.setPtid(this.getPatient().getFirstName());
			}
			else {
				this.setPtid(null);
			}
		}
		else {
			this.setPtid(this.getPatient().getId().toString());
		}
		
		Calendar calendar = Calendar.getInstance();
		if (this.getDcDate() != null) {
			calendar.setTime(this.getDcDate());
			this.setVisitMo((short)(calendar.get(Calendar.MONTH)+1));
			this.setVisitDay((short)calendar.get(Calendar.DAY_OF_MONTH));
			this.setVisitYr((short)calendar.get(Calendar.YEAR));
		}
		
	}
	
	

	
}
