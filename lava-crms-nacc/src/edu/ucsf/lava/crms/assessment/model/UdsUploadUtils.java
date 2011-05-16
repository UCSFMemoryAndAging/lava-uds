package edu.ucsf.lava.crms.assessment.model;

import java.util.Comparator;

import org.apache.commons.lang.StringUtils;

import edu.ucsf.lava.core.list.model.LabelValueBean;
import edu.ucsf.lava.crms.assessment.model.Instrument;

public class UdsUploadUtils {

	
	/**
	 * Returns the standard common elements of the UDS Upload record as
	 * a comma separated value string.
	 * @return
	 */
	// EMORY change: NACC requires A4 version 2 lines to be designated as forms A4G or A4D, so
	//   add ability to supply a suffix to formId
	static public  StringBuffer getCommonFields(UdsInstrument udsInstrument, String formIdSuffix){
		StringBuffer buffer = new StringBuffer();
		buffer.append(formatField(udsInstrument.getPacket())).append(",");
		buffer.append(formatField(udsInstrument.getFormId())).append(formIdSuffix).append(",");
		buffer.append(formatField(udsInstrument.getFormVer())).append(",");
		buffer.append(formatField(udsInstrument.getAdcId())).append(",");
		buffer.append(formatField(udsInstrument.getPtid())).append(",");
		buffer.append(formatField(udsInstrument.getVisitMo())).append(",");
		buffer.append(formatField(udsInstrument.getVisitDay())).append(",");
		buffer.append(formatField(udsInstrument.getVisitYr())).append(",");
		buffer.append(formatField(udsInstrument.getVisitNum())).append(",");
		buffer.append(formatField(udsInstrument.getInitials())).append(",");
		return buffer;
	}
	
	static public  StringBuffer getCommonFields(UdsInstrument udsInstrument){
		return getCommonFields(udsInstrument, "");
	}
	
	/**
	 * Returns the fieldvalue formatted correctly for the 
	 * UDS CSV file format.  
	 * @param fieldValue
	 * @return
	 */
	static public String formatField(String value){
		//check to make sure it is not a skip code or missing data value
		if(value!=null){
			try{
				Float numericValue = Float.valueOf(value);
				if(numericValue != null && numericValue < 0.0){
					return "";
				}
			}catch(NumberFormatException nfe){};
		}
		// Since inside a CSV file, any commas found within string values would be interpreted
		//   incorrectly.  A common way around this is to enclose any values with commas
		//   in double-quotes.  Any readers of the CSV would have to accept this, and
		//   NACC stated they do accept this.
		if (value!=null && value.contains(","))
			return new String("\""+value+"\"");
		else
			return StringUtils.defaultString(value,"");
	}
	

	/**
	 * Returns the fieldvalue formatted correctly for the 
	 * UDS CSV file format.  
	 * @param fieldValue
	 * @return
	 */
	static public String formatField(Short value){
		if(value == null || value < 0){return "";}
		return value.toString();
	}

	/**
	 * Returns the fieldvalue formatted correctly for the 
	 * UDS CSV file format.  
	 * @param fieldValue
	 * @return
	 */
	static public String formatField(Long value){
		if(value == null || value < 0){return "";}
		return value.toString();
	}
	/**
	 * Returns the fieldvalue formatted correctly for the 
	 * UDS CSV file format.  
	 * @param fieldValue
	 * @return
	 */
	static public String formatField(Float value){
		if(value == null || value < 0){return "";}
		return value.toString();
	}
	/**
	 * Returns the fieldvalue formatted correctly for the 
	 * UDS CSV file format.  
	 * @param fieldValue
	 * @return
	 */
	static public String formatField(int value){
		if( value < 0){return "";}
		return new Integer(value).toString();
	}
	
	
	/**
	 * 
	 * Compares based on the "patient,VisitNum, and formNum" fields for the uds upload extraction
	 *
	 * 
	 */ 
	public static Comparator<Instrument> udsExtractComparator = new Comparator<Instrument>() {
	    public int compare(Instrument instrument1, Instrument instrument2) {
	    	int result = comparePatient(instrument1,instrument2);
	    	if(result == 0){
	    		if(UdsInstrument.class.isAssignableFrom(instrument1.getClass())){
	    			if(UdsInstrument.class.isAssignableFrom(instrument2.getClass())){
	    				//both are subclassses of Uds Instrument so compare visit num and form num
	    				result = compareVisitNum((UdsInstrument)instrument1,(UdsInstrument)instrument2);
	    				if(result == 0){
	    					result = compareFormId((UdsInstrument)instrument1,(UdsInstrument)instrument2);
	    				}
	    			}else{
	    	//sort uds instruments above non uds instruments.
	    				return -1;
	    			}
	    		}else if(UdsInstrument.class.isAssignableFrom(instrument2.getClass())){
	    			return 1;
	    		}else{
	    			//if we get here we have two non uds instruments, so sort based on instrTypeEncoded and then dcdate
	    			result = compareInstrTypeEncoded(instrument1,instrument2);
	    			if(result == 0){
	    				result = compareDcDate(instrument1,instrument2);
	    			}
	    		}
	    		
	    	}
	    	return result;
	    }
	  
	    	
	  
	    protected int comparePatient(Instrument instrument1, Instrument instrument2){
	    	if(instrument1==null || instrument1.getPatient()==null || instrument1.getPatient().getId()==null){
	    		if(instrument2==null || instrument2.getPatient()==null || instrument2.getPatient().getId()==null){
	    	    		return 0;
	    		}else{
	    			return 1;
	    		}
	    	}else if (instrument2==null || instrument2.getPatient()==null || instrument2.getPatient().getId()==null){
	    		return -1;
	    	}else{
	    		return instrument1.getPatient().getId().compareTo(instrument2.getPatient().getId());
	    	}
	    	
	    }
	    protected int compareInstrTypeEncoded(Instrument instrument1, Instrument instrument2){
	    	if(instrument1==null || instrument1.getInstrTypeEncoded()==null){
	    		if(instrument2==null || instrument2.getInstrTypeEncoded()==null){
	    	    		return 0;
	    		}else{
	    			return 1;
	    		}
	    	}else if (instrument2==null || instrument2.getInstrTypeEncoded()==null){
	    		return -1;
	    	}else{
	    		return instrument1.getInstrTypeEncoded().compareTo(instrument2.getInstrTypeEncoded());
	    	}
	    	
	    }
	    protected int compareDcDate(Instrument instrument1, Instrument instrument2){
	    	if(instrument1==null || instrument1.getDcDate()==null){
	    		if(instrument2==null || instrument2.getDcDate()==null){
	    	    		return 0;
	    		}else{
	    			return 1;
	    		}
	    	}else if (instrument2==null || instrument2.getDcDate()==null){
	    		return -1;
	    	}else{
	    		return instrument1.getDcDate().compareTo(instrument2.getDcDate());
	    	}
	    	
	    }
	    protected int compareVisitNum(UdsInstrument instrument1, UdsInstrument instrument2){
	    	if(instrument1==null || instrument1.getVisitNum()==null){
	    		if(instrument2==null || instrument2.getVisitNum()==null){
	    	    		return 0;
	    		}else{
	    			return 1;
	    		}
	    	}else if (instrument2==null || instrument2.getVisitNum()==null){
	    		return -1;
	    	}else{
	    		//handle case where visit num may be less than zero because it is a -8 for things like Milestone
	    		if(instrument1.getVisitNum()<0){
	    			if(instrument2.getVisitNum()<0){
	    				return 0;
	    			}else{
	    				return 1;
	    			}
	    		}else if(instrument2.getVisitNum()<0){
	    			return -1;
	    		}
	    		
	    		return instrument1.getVisitNum().compareTo(instrument2.getVisitNum());
	    	}
	    	
	    }
	    protected int compareFormId(UdsInstrument instrument1, UdsInstrument instrument2){
	    	if(instrument1==null || instrument1.getFormId()==null){
	    		if(instrument2==null || instrument2.getFormId()==null){
	    	    		return 0;
	    		}else{
	    			return 1;
	    		}
	    	}else if (instrument2==null || instrument2.getFormId()==null){
	    		return -1;
	    	}else{
	    		return instrument1.getFormId().compareTo(instrument2.getFormId());
	    	}
	    	
	    }
	};
		
	
	/**
	 * returns whether a uds instrument was explicitly assigned NOT to be included in the submission packet
	 *   based on the Z1 form.  If Z1 has not been completed yet, it is still assumed to be included.
	 */
	static public boolean includeInstrBasedOnZ1(UdsInstrument i, UdsFormChecklist z1){
		if (i == null) return false;  // don't include nothing
		if (z1 == null) return true;  // i.e. no filtering is done
		
		// always include these
		if (i.getFormId().equals("A1")) return true;
		if (i.getFormId().equals("A5")) return true;
		if (i.getFormId().equals("B4")) return true;
		if (i.getFormId().equals("B9")) return true;
		if (i.getFormId().equals("C1")) return true;
		if (i.getFormId().equals("D1")) return true;
		if (i.getFormId().equals("E1")) return true;
		if (i.getFormId().equals("Z1")) return true;
		
		// the following are only acceptable if Z1 has *explicitly* said not to submit it
		//   (if Z1 hadn't been filled out yet, then for now, assume it to be submitted)
		if (i.getFormId().equals("A3") && (z1.getA3Sub()==null || z1.getA3Sub().equals((short)1))) return true;
		if (i.getFormId().equals("A4") && (z1.getA4Sub()==null || z1.getA4Sub().equals((short)1))) return true;
		if (i.getFormId().equals("B5") && (z1.getB5Sub()==null || z1.getB5Sub().equals((short)1))) return true;
		if (i.getFormId().equals("B7") && (z1.getB7Sub()==null || z1.getB7Sub().equals((short)1))) return true;

		// just in case, somehow, a wrong instrument was added to a telephone packet
		if (!z1.getVisit().getVisitType().equals("Telephone Follow Up")) {
			if (i.getFormId().equals("T1")) return true;
			
			if (i.getFormId().equals("A2") && (z1.getA2Sub()==null || z1.getA2Sub().equals((short)1))) return true;
			if (i.getFormId().equals("B1") && (z1.getB1Sub()==null || z1.getB1Sub().equals((short)1))) return true;
			if (i.getFormId().equals("B2") && (z1.getB2Sub()==null || z1.getB2Sub().equals((short)1))) return true;
			if (i.getFormId().equals("B3") && (z1.getB3Sub()==null || z1.getB3Sub().equals((short)1))) return true;
			if (i.getFormId().equals("B6") && (z1.getB6Sub()==null || z1.getB6Sub().equals((short)1))) return true;				
			if (i.getFormId().equals("B8") && (z1.getB8Sub()==null || z1.getB8Sub().equals((short)1))) return true;
		}
		
		// if made it through, then this instrument is not to be included
		return false;
	}
}
