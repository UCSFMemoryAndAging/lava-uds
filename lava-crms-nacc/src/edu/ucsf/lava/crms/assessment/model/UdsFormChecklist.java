package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsFormChecklist extends UdsInstrument {
	public static EntityManager MANAGER = new EntityBase.Manager(UdsFormChecklist.class);
	public static final String UDS_FORMCHECKLIST_FORMID = "Z1";
	public UdsFormChecklist() {}
	
	/* constructor for adding new instruments. do instrument-specific initialization here. */
	public UdsFormChecklist(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p,v,projName,instrType,dcDate,dcStatus);
		this.setFormId(UDS_FORMCHECKLIST_FORMID);
	}
	
	// note: id inherited from Instrument
	private Short a2Sub;
	private Short a2Not;
	private String a2Comm;
	private Short a3Sub;
	private Short a3Not;
	private String a3Comm;
	private Short a4Sub;
	private Short a4Not;
	private String a4Comm;
	private Short b1Sub;
	private Short b1Not;
	private String b1Comm;
	private Short b2Sub;
	private Short b2Not;
	private String b2Comm;
	private Short b3Sub;
	private Short b3Not;
	private String b3Comm;
	private Short b5Sub;
	private Short b5Not;
	private String b5Comm;
	private Short b6Sub;
	private Short b6Not;
	private String b6Comm;
	private Short b7Sub;
	private Short b7Not;
	private String b7Comm;
	private Short b8Sub;
	private Short b8Not;
	private String b8Comm;
	
	public String getA2Comm() {
		return a2Comm;
	}

	public void setA2Comm(String comm) {
		a2Comm = comm;
	}

	public Short getA2Not() {
		return a2Not;
	}

	public void setA2Not(Short not) {
		a2Not = not;
	}

	public Short getA2Sub() {
		return a2Sub;
	}

	public void setA2Sub(Short sub) {
		a2Sub = sub;
	}

	public String getA3Comm() {
		return a3Comm;
	}

	public void setA3Comm(String comm) {
		a3Comm = comm;
	}

	public Short getA3Not() {
		return a3Not;
	}

	public void setA3Not(Short not) {
		a3Not = not;
	}

	public Short getA3Sub() {
		return a3Sub;
	}

	public void setA3Sub(Short sub) {
		a3Sub = sub;
	}

	public String getA4Comm() {
		return a4Comm;
	}

	public void setA4Comm(String comm) {
		a4Comm = comm;
	}

	public Short getA4Not() {
		return a4Not;
	}

	public void setA4Not(Short not) {
		a4Not = not;
	}

	public Short getA4Sub() {
		return a4Sub;
	}

	public void setA4Sub(Short sub) {
		a4Sub = sub;
	}

	public String getB1Comm() {
		return b1Comm;
	}

	public void setB1Comm(String comm) {
		b1Comm = comm;
	}

	public Short getB1Not() {
		return b1Not;
	}

	public void setB1Not(Short not) {
		b1Not = not;
	}

	public Short getB1Sub() {
		return b1Sub;
	}

	public void setB1Sub(Short sub) {
		b1Sub = sub;
	}

	public String getB2Comm() {
		return b2Comm;
	}

	public void setB2Comm(String comm) {
		b2Comm = comm;
	}

	public Short getB2Not() {
		return b2Not;
	}

	public void setB2Not(Short not) {
		b2Not = not;
	}

	public Short getB2Sub() {
		return b2Sub;
	}

	public void setB2Sub(Short sub) {
		b2Sub = sub;
	}

	public String getB3Comm() {
		return b3Comm;
	}

	public void setB3Comm(String comm) {
		b3Comm = comm;
	}

	public Short getB3Not() {
		return b3Not;
	}

	public void setB3Not(Short not) {
		b3Not = not;
	}

	public Short getB3Sub() {
		return b3Sub;
	}

	public void setB3Sub(Short sub) {
		b3Sub = sub;
	}

	public String getB5Comm() {
		return b5Comm;
	}

	public void setB5Comm(String comm) {
		b5Comm = comm;
	}

	public Short getB5Not() {
		return b5Not;
	}

	public void setB5Not(Short not) {
		b5Not = not;
	}

	public Short getB5Sub() {
		return b5Sub;
	}

	public void setB5Sub(Short sub) {
		b5Sub = sub;
	}

	public String getB6Comm() {
		return b6Comm;
	}

	public void setB6Comm(String comm) {
		b6Comm = comm;
	}

	public Short getB6Not() {
		return b6Not;
	}

	public void setB6Not(Short not) {
		b6Not = not;
	}

	public Short getB6Sub() {
		return b6Sub;
	}

	public void setB6Sub(Short sub) {
		b6Sub = sub;
	}

	public String getB7Comm() {
		return b7Comm;
	}

	public void setB7Comm(String comm) {
		b7Comm = comm;
	}

	public Short getB7Not() {
		return b7Not;
	}

	public void setB7Not(Short not) {
		b7Not = not;
	}

	public Short getB7Sub() {
		return b7Sub;
	}

	public void setB7Sub(Short sub) {
		b7Sub = sub;
	}

	public Short getB8Not() {
		return b8Not;
	}

	public void setB8Not(Short not) {
		b8Not = not;
	}

	public Short getB8Sub() {
		return b8Sub;
	}

	public void setB8Sub(Short sub) {
		b8Sub = sub;
	}

	public String getB8Comm() {
		return b8Comm;
	}

	public void setB8Comm(String comm) {
		b8Comm = comm;
	}

	
	public String[] getRequiredResultFields() {
		return new String[] {
			"a2Sub",
			"a2Not",
			"a3Sub",
			"a3Not",
			"a4Sub",
			"a4Not",
			"b1Sub",
			"b1Not",
			"b2Sub",
			"b2Not",
			"b3Sub",
			"b3Not",
			"b5Sub",
			"b5Not",
			"b6Sub",
			"b6Not",
			"b7Sub",
			"b7Not",
			"b8Sub",
			"b8Not"
		};
	}

	
	

	public String getUdsUploadCsvRecord() {
		if(getPacket()==null){return "";}
		
		StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
		if(getPacket().equals("T")){
			
			buffer.append(UdsUploadUtils.formatField(getA3Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA3Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA3Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA4Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA4Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA4Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB5Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB5Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB5Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB7Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB7Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB7Comm()));
		}
		else if(getPacket().equals("I") || getPacket().equals("F")){
			buffer.append(UdsUploadUtils.formatField(getA2Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA2Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA2Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA3Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA3Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA3Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA4Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA4Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getA4Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB1Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB1Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB1Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB2Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB2Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB2Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB3Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB3Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB3Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB5Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB5Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB5Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB6Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB6Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB6Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB7Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB7Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB7Comm())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB8Sub())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB8Not())).append(",");
			buffer.append(UdsUploadUtils.formatField(getB8Comm()));
		}
	return buffer.toString();
	}
	
	
	
}


