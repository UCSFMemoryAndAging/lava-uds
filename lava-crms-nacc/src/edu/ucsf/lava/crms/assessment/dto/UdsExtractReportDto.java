package edu.ucsf.lava.crms.assessment.dto;

import java.io.Serializable;

/**
 * Data transfer object that backs the UDS Extract report.
 * @author jhesse
 *
 */
public class UdsExtractReportDto implements Serializable{

	protected String udsUploadCsvRecord;
	
	public UdsExtractReportDto(String record){
		udsUploadCsvRecord = record;
	}

	public String getUdsUploadCsvRecord() {
		return udsUploadCsvRecord;
	}

	public void setUdsUploadCsvRecord(String udsUploadCsvRecord) {
		this.udsUploadCsvRecord = udsUploadCsvRecord;
	}
	
	
}
