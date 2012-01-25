package edu.ucsf.lava.crms.assessment.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.dao.LavaTypedEqualityParamHandler;
import edu.ucsf.lava.core.list.ListManager;
import edu.ucsf.lava.core.manager.CoreManagerUtils;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsInstrument extends Instrument implements UdsUploadable {

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

	public UdsInstrument() {
	}

	/*
	 * constructor for adding new instruments. do instrument-specific
	 * initialization here.
	 */
	public UdsInstrument(Patient p, Visit v, String projName, String instrType,
			Date dcDate, String dcStatus) {
		super(p, v, projName, instrType, dcDate, dcStatus);
		setInstrVer(CURRENT_UDS_VERSION); // new instrument defaults to latest version
		this.setFormVer(CURRENT_UDS_VERSION);
	}

	// returns an alternate language string if the form is not an english form
	public String getAlternateLanguage() {
		if (this.formId != null && this.formId.endsWith("S")) {
			return new String("Spanish");
		}
		return new String();
	}

	public String getUdsTrackingBlock() {
		StringBuffer block = new StringBuffer();
		if (StringUtils.isNotEmpty(this.formId)) {
			block.append("Form ").append(this.formId).append(" (v.");
		}
		if (StringUtils.isNotEmpty(this.formVer)) {
			block.append(this.formVer).append(")\n");
		} else {
			block.append("?)\n");
		}
		if (StringUtils.isNotEmpty(this.packet)) {
			if (this.packet.equalsIgnoreCase("I")) {
				block.append("Initial Visit");
			} else if (this.packet.equalsIgnoreCase("F")) {
				block.append("Follow Up Visit");
			} else if (this.packet.equalsIgnoreCase("T")) {
				block.append("Telephone Visit");
			} else if (this.packet.equalsIgnoreCase("M")) {
				block.append("Milestone");
			}
		}
		if (this.visitNum != null
				&& !StringUtils.equalsIgnoreCase(this.packet, "M")) {
			block.append(" - ").append(this.visitNum.toString());
		}
		return new String(block);
	}

	public String getUdsVisitBlock() {
		StringBuffer block = new StringBuffer();
		if (StringUtils.isNotEmpty(this.packet)) {
			if (this.packet.equalsIgnoreCase("I")) {
				block.append("Initial Visit");
			} else if (this.packet.equalsIgnoreCase("F")) {
				block.append("Follow Up Visit");
			} else if (this.packet.equalsIgnoreCase("T")) {
				block.append("Telephone Visit");
			} else if (this.packet.equalsIgnoreCase("M")) {
				block.append("Milestone");
			}
		}
		if (this.visitNum != null
				&& !StringUtils.equalsIgnoreCase(this.packet, "M")) {
			block.append(" - ").append(this.visitNum.toString());
		}
		return new String(block);
	}

	public String getLogicCheckStatusBlock() {
		StringBuffer block = new StringBuffer();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String lcDateAsText = null;
		if (lcDate != null) {
			lcDateAsText = dateFormat.format(lcDate);
		}
		if (StringUtils.isNotEmpty(this.lcStatus)) {
			block.append(this.lcStatus).append("\n");
		}
		if (StringUtils.isNotEmpty(this.lcReason)) {
			block.append(this.lcReason).append("\n");
		}
		if (StringUtils.isNotEmpty(this.lcBy)) {
			block.append(this.lcBy).append("\n");
		}
		if (StringUtils.isNotEmpty(lcDateAsText)) {
			block.append(lcDateAsText);
		}

		return new String(block);
	}

	public String getSubmissionStatusBlock() {
		StringBuffer block = new StringBuffer();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String dsDateAsText = null;
		if (dsDate != null) {
			dsDateAsText = dateFormat.format(dsDate);
		}
		if (StringUtils.isNotEmpty(this.dsStatus)) {
			block.append(this.dsStatus).append("\n");
		}
		if (StringUtils.isNotEmpty(this.dsReason)) {
			block.append(this.dsReason).append("\n");
		}
		if (StringUtils.isNotEmpty(this.dsBy)) {
			block.append(this.dsBy).append("\n");
		}
		if (StringUtils.isNotEmpty(dsDateAsText)) {
			block.append(dsDateAsText);
		}

		return new String(block);
	}

	public String getPacketStatusBlock() {
		StringBuffer block = new StringBuffer();
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		String packetDateAsText = null;
		if (packetDate != null) {
			packetDateAsText = dateFormat.format(packetDate);
		}
		if (StringUtils.isNotEmpty(this.packetStatus)) {
			block.append(this.packetStatus).append("\n");
		}
		if (StringUtils.isNotEmpty(this.packetReason)) {
			block.append(this.packetReason).append("\n");
		}
		if (StringUtils.isNotEmpty(this.packetBy)) {
			block.append(this.packetBy).append("\n");
		}
		if (StringUtils.isNotEmpty(packetDateAsText)) {
			block.append(packetDateAsText);
		}

		return new String(block);
	}

	/**
	 * Override this method if the instrument returns just one record. The base
	 * implementation of getUdsUploadCsvRecords() will wrap the string returned
	 * by this method in a List.
	 * 
	 * @return
	 */
	public String getUdsUploadCsvRecord() {
		return new String();
	}

	/**
	 * Override in subclasses of UdsInstrument to return a list of comma
	 * separated value strings that conform to the UDS upload file format
	 * definition. Note: most uds instruments return a single record, you can
	 * override the convenience function getUdsUploadCsvRecord() in this case.
	 * 
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

	public static List<InstrumentTracking> findUdsInstruments(
			LavaDaoFilter filter) {
		filter.setAlias("visit", "visit");
		filter.addDefaultSort("dcDate", false);
		// don't need to do this because using UdsInstrumentTracking ensures
		// that all instruments returned will have a record in the UDsTracking table.
		// filter.addDaoParam(filter.daoLikeParam("instrType", "UDS"));
		return MANAGER.get(UdsInstrumentTracking.class, filter);
	}

	/**
	 * beforeUpdate
	 * 
	 * 1) look up the ADCID from the ListValues table for the listName =
	 * 'UDSCenterIDs'
	 * 
	 * 2) set the PTID, VisitMo, VisitDay, VisitYr
	 * 
	 * 3) update the packet status based on the packet status of the 
	 *    UDS Form Checklist for this patient and visit
	 */
	public void beforeUpdate() {
		super.beforeUpdate();

		ListManager listManager = CoreManagerUtils.getListManager();
		Map<String, String> adcCenters = listManager.getDefaultStaticList("uds.adcCenterIDs");
		if (adcCenters.containsKey(this.getProjName())) {
			String adcIDAsString = (String) adcCenters.get(this.getProjName());
			try {
				this.setAdcId(Short.valueOf(adcIDAsString));
			} catch (NumberFormatException ex) {
				logger.warn("UdsInstrument beforeUpdate NumberFormatException ADCID="+ adcIDAsString);
			}
		}

		// use strategy classes (possibly overridden) to determine PTID
		this.setPtid(CoreManagerUtils.getIdManager().getEntityPropId(this, "ptid"));

		Calendar calendar = Calendar.getInstance();
		if (this.getDcDate() != null) {
			calendar.setTime(this.getDcDate());
			this.setVisitMo((short) (calendar.get(Calendar.MONTH) + 1));
			this.setVisitDay((short) calendar.get(Calendar.DAY_OF_MONTH));
			this.setVisitYr((short) calendar.get(Calendar.YEAR));
		}
	}
	
	
	/**
	 * afterUpdate
	 * 
	 * Ensure that the packet status properties, which are set on the UDS Form Checklist instrument
	 * on the instrument Status page, are updated in the other UDS instruments for the same patient 
	 * and visit. 
	 * 
	 * This occurs both when the UDS Form Checklist is updated, and, when another UDS instrument is 
	 * updated. Because updating the other instruments when the UDS Form Checklist is updated results 
	 * in this method being called for each of those other UDS instruments, this must be done in 
	 * afterUpdate rather than beforeUpdate because the other UDS instruments obtain the UDS Form 
	 * Checklist values from the database so it must have been saved already.
	 */
	public boolean afterUpdate() {

		// update packet status
		if (this.getPtid() != null && this.getVisitNum() != null) {
			// if this is a UDS Form Checklist (form 'Z1') then update the packet status of all other
			// UDS instruments for the same patient and visit to be the same as the UDS Form Checklist
			if (this.getFormId().equals(UdsFormChecklist.UDS_FORMCHECKLIST_FORMID)) {
				LavaDaoFilter filter = newFilterInstance();
				filter.addDaoParam(filter.daoEqualityParam("ptid", this.getPtid()));
				filter.addParamHandler(new LavaTypedEqualityParamHandler("visitNum",Short.class));
				filter.addDaoParam(filter.daoEqualityParam("visitNum", this.getVisitNum()));
				filter.addDaoParam(filter.daoNot(filter.daoEqualityParam("formId", "Z1")));
				List<UdsInstrumentTracking> udsInstrs = UdsInstrumentTracking.MANAGER.get(filter);
				for (UdsInstrumentTracking udsInstr : udsInstrs) {
					udsInstr.setPacketDate(this.getPacketDate());
					udsInstr.setPacketBy(this.getPacketBy());
					udsInstr.setPacketStatus(this.getPacketStatus());
					udsInstr.setPacketReason(this.getPacketReason());
					udsInstr.setPacketNotes(this.getPacketNotes());
					udsInstr.save();
				}
			}
			else {
				// if this is NOT a UDS Form Checklist instrument, update the packet status of this 
				// instrument based on the UDS Form Checklist instrument for this patient and visit
				
				// obtain the UDS Form Checklist instrument for this patient and visit
				LavaDaoFilter filter = newFilterInstance();
				filter.addDaoParam(filter.daoEqualityParam("ptid", this.getPtid()));
				filter.addParamHandler(new LavaTypedEqualityParamHandler("visitNum",Short.class));
				filter.addDaoParam(filter.daoEqualityParam("visitNum", this.getVisitNum()));
				filter.addDaoParam(filter.daoEqualityParam("formId", "Z1"));
				UdsInstrumentTracking udsFormChecklist = (UdsInstrumentTracking) UdsInstrumentTracking.MANAGER.getOne(filter);
				// there is always a UDS Form Checklist instrument for this patient and visit, since
				// a patient will always get the complete UDS set of instruments at a visit. however,
				// in the case where the UDSVisit is edited the UDSVisit afterUpdate method propagates
				// any visitNum and packet changes down to all of the visit's instruments. as each of these
				// instruments is saved, this beforeUpdate method is invoked, and if a given instrument's
				// visitNum is modified before the UDS Form Checklist's visitNum, the UDS Form Checklist
				// will not be found
				// note that regardless of where the UDS Form Checklist is in the order that UDSVisit is
				// iterating over, all instruments will be involved in the packet status update, either
				// here in the else clause if the instrument is being updated after the UDS Form Checklist,
				// or above in the if clause if the instrument is being updated before the UDS Form Checklist
				if (udsFormChecklist != null) {
					this.setPacketDate(udsFormChecklist.getPacketDate());
					this.setPacketBy(udsFormChecklist.getPacketBy());
					this.setPacketStatus(udsFormChecklist.getPacketStatus());
					this.setPacketReason(udsFormChecklist.getPacketReason());
					this.setPacketNotes(udsFormChecklist.getPacketNotes());
					// do not have to explicitly call save here since this object is in the process of
					// being saved
				}
			}
		}
		
		return super.afterUpdate();
	}

}
