package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFaq extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFaq.class);
	public static final String UDS_FAQ_FORMID = "B7";
	public UdsFaq() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFaq(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FAQ_FORMID);
	}
	
	private Short bills;
	private Short taxes;
	private Short shopping;
	private Short games;
	private Short stove;
	private Short mealPrep;
	private Short events;
	private Short payAttn;
	private Short remDates;
	private Short travel;

	public Short getBills() {
		return bills;
	}

	public void setBills(Short bills) {
		this.bills = bills;
	}

	public Short getEvents() {
		return events;
	}

	public void setEvents(Short events) {
		this.events = events;
	}

	public Short getGames() {
		return games;
	}

	public void setGames(Short games) {
		this.games = games;
	}

	public Short getMealPrep() {
		return mealPrep;
	}

	public void setMealPrep(Short mealPrep) {
		this.mealPrep = mealPrep;
	}

	public Short getPayAttn() {
		return payAttn;
	}

	public void setPayAttn(Short payAttn) {
		this.payAttn = payAttn;
	}

	public Short getRemDates() {
		return remDates;
	}

	public void setRemDates(Short remDates) {
		this.remDates = remDates;
	}

	public Short getShopping() {
		return shopping;
	}

	public void setShopping(Short shopping) {
		this.shopping = shopping;
	}

	public Short getStove() {
		return stove;
	}

	public void setStove(Short stove) {
		this.stove = stove;
	}

	public Short getTaxes() {
		return taxes;
	}

	public void setTaxes(Short taxes) {
		this.taxes = taxes;
	}

	public Short getTravel() {
		return travel;
	}

	public void setTravel(Short travel) {
		this.travel = travel;
	}

	
	public String[] getRequiredResultFields() {
		return new String[] {
				"bills",
				"taxes",
				"shopping",
				"games",
				"stove",
				"mealPrep",
				"events",
				"payAttn",
				"remDates",
				"travel"
		};
	}
	
	public String getUdsUploadCsvRecord() {
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getBills())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTaxes())).append(",");
		buffer.append(UdsUploadUtils.formatField(getShopping())).append(",");
		buffer.append(UdsUploadUtils.formatField(getGames())).append(",");
		buffer.append(UdsUploadUtils.formatField(getStove())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMealPrep())).append(",");
		buffer.append(UdsUploadUtils.formatField(getEvents())).append(",");
		buffer.append(UdsUploadUtils.formatField(getPayAttn())).append(",");
		buffer.append(UdsUploadUtils.formatField(getRemDates())).append(",");
		buffer.append(UdsUploadUtils.formatField(getTravel()));
		return buffer.toString();
	}
	

}


