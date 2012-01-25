package edu.ucsf.lava.crms.id;

import org.apache.commons.lang.StringUtils;

import edu.ucsf.lava.core.id.AbstractIdMappingStrategy;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;

public class UdsInstrumentPtidStrategy extends AbstractIdMappingStrategy {

	@Override
	public String getEntityPropId(EntityBase entity, String idPropName) {
		UdsInstrument instr = (UdsInstrument)entity;
		
		if (instr.getPatient().getLastName().equals("DE-IDENTIFIED")) {
			if (StringUtils.isNumeric(instr.getPatient().getFirstName())) {
				return instr.getPatient().getFirstName();
			} else {
				return instr.getPatient().getId().toString();
			}
		}
		
		return instr.getPatient().getId().toString();
	}

	@Override
	public boolean handlesEntityProperty(EntityBase entity, String idPropName) {
		if (!(entity instanceof UdsInstrument)) return false;
		if (!idPropName.equals("ptid")) return false;
		return true;
	}

}
