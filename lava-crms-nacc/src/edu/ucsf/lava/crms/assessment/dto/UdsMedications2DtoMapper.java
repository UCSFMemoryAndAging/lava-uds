package edu.ucsf.lava.crms.assessment.dto;

import edu.ucsf.lava.core.dto.BaseDtoMapper;
import edu.ucsf.lava.crms.assessment.model.UdsMedications2;
import edu.ucsf.lava.crms.assessment.model.UdsMedications2.UdsMedicationsDetails2;


public class UdsMedications2DtoMapper extends BaseDtoMapper {

	public static void mapDtoFromModel(UdsMedications2 dto, UdsMedications2 m){
		// not calling BaseDtoMapper.mapDtoFromModel(dto, m); because the details properties have to
		// be mapped in a custom way as done below
		
		// note: in the case of followup medications where data entry has not taken place yet, the prior
		// medication values are used to populate the DTO. for this reason the DTO serves as the data source
		// for the medications reports, as opposed to the model object itself, and since the report 
		// displays the instrument status values, they must be mapped into the DTO
		// note: the status values need not be mapped back from the DTO to the model, because they
		// are not modified. they are just needed because they are displayed on the report
		
		// this is pretty ugly stuff. better overall plan is to have an action button to give the user
		// the option of copying prior meds over, and upon handling this action after copying prior values
		// over, call save (which will do a refresh) to prevent the StaleObjectStateException. then there
		// will not be a need for a DTO at all.
		dto.setId(m.getId());
		dto.setInstrType(m.getInstrType());
		dto.setInstrVer(m.getInstrVer());
		dto.setLatestFlag(m.getLatestFlag());
		dto.setProjName(m.getProjName());
		dto.setPatient(m.getPatient());
		dto.setVisit(m.getVisit());
		dto.setDcBy(m.getDcBy());
		dto.setDcDate(m.getDcDate());
		dto.setDcStatus(m.getDcStatus());
		dto.setDcNotes(m.getDcNotes());
		dto.setDeBy(m.getDeBy());
		dto.setDeDate(m.getDeDate());
		dto.setDeStatus(m.getDeStatus());
		dto.setDeNotes(m.getDeNotes());
		dto.setDvBy(m.getDvBy());
		dto.setDvDate(m.getDvDate());
		dto.setDvStatus(m.getDvStatus());
		dto.setDvNotes(m.getDvNotes());
		dto.setQualityIssue(m.getQualityIssue());
		dto.setQualityIssue2(m.getQualityIssue2());
		dto.setQualityIssue3(m.getQualityIssue3());
		dto.setQualityNotes(m.getQualityNotes());
		dto.setResearchStatus(m.getResearchStatus());
		dto.setNotes(m.getNotes());
		
		//uds tracking fields 
		 dto.setPacket(m.getPacket());
	      dto.setFormId(m.getFormId());
	      dto.setFormVer(m.getFormVer());
	      dto.setAdcId(m.getAdcId());
	      dto.setPtid(m.getPtid());
	      dto.setVisitMo(m.getVisitMo());
	      dto.setVisitDay(m.getVisitDay());
	      dto.setVisitYr(m.getVisitYr());
	      dto.setVisitNum(m.getVisitNum());
	      dto.setInitials(m.getInitials());
	      dto.setPacketDate(m.getPacketDate());
	      dto.setPacketBy(m.getPacketBy());
	      dto.setPacketStatus(m.getPacketStatus());
	      dto.setPacketReason(m.getPacketReason());
	      dto.setPacketNotes(m.getPacketNotes());
	      dto.setDsDate(m.getDsDate());
	      dto.setDsBy(m.getDsBy());
	      dto.setDsStatus(m.getDsStatus());
	      dto.setDsReason(m.getDsReason());
	      dto.setDsNotes(m.getDsNotes());
	      dto.setLcDate(m.getLcDate());
	      dto.setLcBy(m.getLcBy());
	      dto.setLcStatus(m.getLcStatus());
	      dto.setLcReason(m.getLcReason());
	      dto.setLcNotes(m.getLcNotes());
	
	    //medications fields
	     dto.setAnyMeds(m.getAnyMeds());
		
		// the DTO details lists have already been initialized to N items, where N is determined
		// by the handler. this is why using BaseDtoMapper.mapDtoFromModel can not be used, because
		// it could change the number of elements in the DTO details properties
		for(int i=0;i < m.getDetails().size();i++){
			BaseDtoMapper.mapDtoFromModel(dto.getDetails().get(i), m.getDetails().get(i));
		}
		
	}
	
	public static void mapModelFromDto(UdsMedications2 m, UdsMedications2 dto){
		// not calling BaseDtoMapper.mapModelFromDto because the details properties have to be
		// mapped in a custom way as done below
		// only have to map the properties which are editable in the collect flow back to the model
		m.setPacket(dto.getPacket());
		m.setFormId(dto.getFormId());
		m.setVisitNum(dto.getVisitNum());
		m.setInitials(dto.getInitials());
		m.setAnyMeds(dto.getAnyMeds());
		
		// even though mapping is done, redo the mapping of the details, because it is a custom thing:
		// during the mapping process, effectively collapse the blank rows in the DTO so they
		// are not in the model when it is persisted 
		// it is important that this collapsing takes place during mapping the DTO to the model, 
		// not to the DTO itself, because if user returned to input view due to error or revise, 
		// do not want the DTO to have been collapsed		
		
		m.getDetails().clear();
		int i = 0;
		for(UdsMedicationsDetails2 dtoDetail : dto.getDetails()){
			if (dtoDetail != null && dtoDetail.getDrugId() != null) {
				if(m.getDetails().size() <= i || m.getDetails().get(i)==null){
					m.getDetails().add(i,new UdsMedicationsDetails2());
				}
				BaseDtoMapper.mapModelFromDto(m.getDetails().get(i), dtoDetail);
				i++;
			}
		}
		
	}
	
		
}
