package edu.ucsf.lava.crms.assessment.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class MdsStatus extends Instrument implements UdsUploadable{
	public static EntityManager MANAGER = new EntityBase.Manager(MdsStatus.class);

	public MdsStatus() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public MdsStatus(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
	
	}

	// note: id inherited from Instrument

	private Short mdsdec;
	private Date mdsdecdt;
	private Short mdsdecaut;
	private Short mdsdisc;
	private Date mdsdiscdt;
	private Short mdsdiscrea;
	private String mdsdiscreao;
	private Short mdsstat;

	

	public Short getMdsdec() {
		return mdsdec;
	}

	public void setMdsdec(Short mdsdec) {
		this.mdsdec = mdsdec;
	}

	public Short getMdsdecaut() {
		return mdsdecaut;
	}

	public void setMdsdecaut(Short mdsdecaut) {
		this.mdsdecaut = mdsdecaut;
	}

	public Date getMdsdecdt() {
		return mdsdecdt;
	}

	public void setMdsdecdt(Date mdsdecdt) {
		this.mdsdecdt = mdsdecdt;
	}

	public Short getMdsdisc() {
		return mdsdisc;
	}

	public void setMdsdisc(Short mdsdisc) {
		this.mdsdisc = mdsdisc;
	}

	public Date getMdsdiscdt() {
		return mdsdiscdt;
	}

	public void setMdsdiscdt(Date mdsdiscdt) {
		this.mdsdiscdt = mdsdiscdt;
	}

	public Short getMdsdiscrea() {
		return mdsdiscrea;
	}

	public void setMdsdiscrea(Short mdsdiscrea) {
		this.mdsdiscrea = mdsdiscrea;
	}

	public String getMdsdiscreao() {
		return mdsdiscreao;
	}

	public void setMdsdiscreao(String mdsdiscreao) {
		this.mdsdiscreao = mdsdiscreao;
	}

	public Short getMdsstat() {
		return mdsstat;
	}

	public void setMdsstat(Short mdsstat) {
		this.mdsstat = mdsstat;
	}

	
	public String[] getRequiredResultFields() {
		String[] required;
		required = new String[] {  
		           "mdsdec",
		           "mdsdecaut",
		           "mdsdisc",
		           "mdsdiscrea",
		           "mdsdiscreao",
		           "mdsstat"};
		return required;
	}
	
	public List<String> getUdsUploadCsvRecords() {
		List<String> records = new ArrayList<String>();
		records.add(getUdsUploadCsvRecord());
		return records;
	}
	
	public String getUdsUploadCsvRecord(){
		//TODO: need to get the correct ADCID in here somehow? 
		StringBuffer buffer = new StringBuffer("S,S1,1,[ADCID],");
		buffer.append(getPatient()==null ? 
				"" : UdsUploadUtils.formatField(getPatient().getId())).append(",");
		if(getDcDate()==null){
			buffer.append(",,,");
		}else{
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(getDcDate());
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.MONTH))).append(",");
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.DAY_OF_MONTH))).append(",");
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.YEAR))).append(",");
		}
		buffer.append(",,"); //null visitnum and initials fields
		buffer.append(UdsUploadUtils.formatField(getMdsdec())).append(",");
		if(getMdsdecdt()==null){
			buffer.append(",,,");
		}else{
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(getMdsdecdt());
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.MONTH))).append(",");
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.DAY_OF_MONTH))).append(",");
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.YEAR))).append(",");
		}
		buffer.append(UdsUploadUtils.formatField(getMdsdecaut())).append(",");
		buffer.append(UdsUploadUtils.formatField(getMdsdisc())).append(",");
		if(getMdsdiscdt()==null){
			buffer.append(",,,");
		}else{
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(getMdsdiscdt());
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.MONTH))).append(",");
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.DAY_OF_MONTH))).append(",");
			buffer.append(UdsUploadUtils.formatField(calendar.get(Calendar.YEAR))).append(",");
		}	
		buffer.append(UdsUploadUtils.formatField(this.getMdsdiscrea())).append(",");
		buffer.append(UdsUploadUtils.formatField(this.getMdsdiscreao())).append(",");
		buffer.append(UdsUploadUtils.formatField(this.getMdsstat()));
		return buffer.toString();
	}
}
