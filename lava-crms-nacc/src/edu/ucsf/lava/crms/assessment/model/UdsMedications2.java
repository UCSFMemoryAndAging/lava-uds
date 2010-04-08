package edu.ucsf.lava.crms.assessment.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsMedications2 extends UdsInstrument {
	
	public static EntityManager MANAGER = new EntityBase.Manager(UdsMedications2.class);
	
	public final static String UDS_MEDICATIONS_FORMID = "A4";
	
	public UdsMedications2() {
		this.initDetailsList();
	}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsMedications2(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_MEDICATIONS_FORMID);
		this.initDetailsList();
		
	}
	
	
	
	
	
	public String getEntityName() {
		return "UdsMedications";
	}

	public int getDetailsLength(){
		if (details == null){
			return 0;
		}else{
			return details.size();
		}
	}
	
	private void initDetailsList(){
		if(this.details == null){
			this.details = new ArrayList<UdsMedicationsDetails2>();
		}
	}
	
	// initialize methods are used when using this class as a DTO to size the DTO
	// appropriately for the view
	public void initialize(int size){
		for (int i = 0; i < size; i++){
			this.details.add(i,new UdsMedicationsDetails2());
		}
		
	}
	
	
	// note: id inherited from Instrument
	private Short anyMeds;
	
	private List<UdsMedicationsDetails2> details;


	
	
	
	


	public Short getAnyMeds() {
		return anyMeds;
	}

	public void setAnyMeds(Short anyMeds) {
		this.anyMeds = anyMeds;
	}

	public List<UdsMedicationsDetails2> getDetails() {
		return details;
	}

	public void setDetails(List<UdsMedicationsDetails2> details) {
		this.details = details;
	}


	public String[] getRequiredResultFields() {
		// EMORY change: DTO objects are supported through getBindingComponentString()
		return new String[] {
			"anyMeds"
				
			// the detail required fields are conditional, so should be part of a secondary validation Validator
			// class
		};
	}
	
	
	public static class UdsMedicationsDetails2 implements Serializable {
		protected Long medDetailId;
		protected Long drugId;
		protected Long lineNum;
		protected String generic;
		protected String brand;
		protected String notListed;
		
	

		
		
		
		
		public Long getDrugLookup() {
			return null;
		}		

		public void setDrugLookup(Long drugLookup) {
			//do nothing
		}
	

			
		
		public String getBrand() {
			return brand;
		}
		public void setBrand(String brand) {
			this.brand = brand;
		}


	

		public Long getDrugId() {
			return drugId;
		}


		public void setDrugId(Long drugId) {
			this.drugId = drugId;
		}



		public String getGeneric() {
			return generic;
		}


		public void setGeneric(String generic) {
			this.generic = generic;
		}


		public Long getLineNum() {
			return lineNum;
		}


		public void setLineNum(Long lineNum) {
			this.lineNum = lineNum;
		}


		public Long getMedDetailId() {
			return medDetailId;
		}


		public void setMedDetailId(Long medDetailId) {
			this.medDetailId = medDetailId;
		}


		public String getNotListed() {
			return notListed;
		}


		public void setNotListed(String notListed) {
			this.notListed = notListed;
		}



	
	}

	

	public List<String> getUdsUploadCsvRecords() {
		List<String> records = new ArrayList<String>();
		//summary record
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		buffer.append(UdsUploadUtils.formatField(getAnyMeds()));
		records.add(buffer.toString());
		
		//for each detail with a reportable drug id, add a record with the drug id formatted 'd[00000]'
		for(UdsMedicationsDetails2 detail : getDetails()){
			if(detail!=null && detail.getDrugId() != null && 
					detail.getDrugId() > 0 && 
					!detail.getDrugId().equals(99999)){
				String drugId = UdsUploadUtils.formatField(detail.getDrugId());
				buffer = UdsUploadUtils.getCommonFields(this);
				buffer.append("d").append("00000", 0, 5-drugId.length()).append(drugId);
				records.add(buffer.toString());
			}
				
		}
		return records;
	}
		


	


}



	



