package edu.ucsf.lava.crms.assessment.model;

import java.util.List;

/**
 * Indicates that the object supports the UDS Upload methods.  
 * 
 * UDS records can be uploaded to the National Alzheimer's Coordinating Center (NACC) in
 * a number of formats.  Implementing classes should be capable for formatting their properties into 
 * an acceptable upload record. 
 * @author jhesse
 *
 */
public interface UdsUploadable {

	/**
	 * Return the contents of the class as an set of acceptable CSV formatted UDS upload records.
	 * Note: most model objects will return a single record. 
	 * @return
	 */
	public List<String> getUdsUploadCsvRecords();
		
}
