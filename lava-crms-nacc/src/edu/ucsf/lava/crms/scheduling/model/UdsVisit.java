package edu.ucsf.lava.crms.scheduling.model;

import java.util.List;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.core.model.EntityManagerBase;
import edu.ucsf.lava.crms.assessment.model.UdsFormChecklist;
import edu.ucsf.lava.crms.assessment.model.UdsFtldFormChecklist;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;
import edu.ucsf.lava.crms.assessment.model.UdsInstrumentTracking;
import edu.ucsf.lava.crms.people.model.Patient;

public class UdsVisit extends Visit {

	public static String UDS_PACKET_TYPE_NA = "NA";
	public static EntityManager MANAGER = new EntityBase.Manager(UdsVisit.class);

	
	protected String packet;
	protected Short visitNum;
	
	public UdsVisit() {
		super();
	}

	public String getPacket() {
		return packet;
	}

	public void setPacket(String packet) {
		this.trackDirty("packet",packet);
		this.packet = packet;
	}

	public Short getVisitNum() {
		return visitNum;
	}

	public void setVisitNum(Short visitNum) {
		this.trackDirty("visitNum", visitNum);
		this.visitNum = visitNum;
	}

	@Override
	public boolean afterUpdate() {
		//if Packet type not set, then no settings propagate to uds instruments associated with the visit
		if(this.getPacket() == null || this.getPacket().equals(this.UDS_PACKET_TYPE_NA)){
			return super.afterUpdate();
		}
		
		if(isDirty("visitNum") || isDirty("packet")){
		
			
			//update the packet and visitNum of all UDS instruments associated with this visit
			LavaDaoFilter filter = UdsInstrument.MANAGER.newFilterInstance();
			filter.addDaoParam(filter.daoEqualityParam("visit.id",this.getId()));
			filter.setAlias("visit","visit");
			List<UdsInstrumentTracking> instruments = UdsInstrumentTracking.MANAGER.get(filter);
			for(UdsInstrumentTracking i : instruments){
				i.setVisitNum(visitNum);
				i.setPacket(packet);
				i.save();
			}
			return true;
		}else{
			return super.afterUpdate();
		}
	}
	
	public void flushPacketStatus(UdsInstrument instrUpdated) {
		// instrUpdated is the instrument that was just updated
		
		// if this is a UDS Form Checklist (form 'Z1' or 'Z1F') then update the packet status of all other
		// UDS instruments for the same patient and visit to be the same as the UDS Form Checklist
		if (instrUpdated.getFormId().equals(UdsFormChecklist.UDS_FORMCHECKLIST_FORMID)
		    || instrUpdated.getFormId().equals(UdsFtldFormChecklist.UDS_FTLD_FORMCHECKLIST_FORMID)) {
			LavaDaoFilter filter = newFilterInstance();
			filter.setAlias("visit","visit");
			filter.addDaoParam(filter.daoEqualityParam("visit.id", this.getId()));
			filter.addDaoParam(filter.daoNot(filter.daoEqualityParam("formId", this.getVisitType().equals("FTLD Assessment") ? UdsFtldFormChecklist.UDS_FTLD_FORMCHECKLIST_FORMID : UdsFormChecklist.UDS_FORMCHECKLIST_FORMID)));
			List<UdsInstrumentTracking> udsInstrs = UdsInstrumentTracking.MANAGER.get(filter);
			for (UdsInstrumentTracking udsInstr : udsInstrs) {
				// at this point the Patient property of udsInstr is a hibernateProxy so materialize the Patient 
				// in case Patient properties are needed (e.g. the instrument save could set the UdsInstrument ptid
				// to an IdManager value derived from the Patient (or subclass)
				// trick is that if the DAO materialize method is called on the HibernateProxy, even though the
				// Patient is materialized upon return will still be a HibernateProxy, so have to call the DAO 
				// directly
				// i.e. this does not work: Patient p = (Patient) udsInstr.getPatient().materializeProxy();
				EntityManagerBase entityManager = new EntityManagerBase();
				Patient p = (Patient) entityManager.materializeProxy(udsInstr.getPatient());
				udsInstr.setPatient(p);
				
				udsInstr.setPacketDate(instrUpdated.getPacketDate());
				udsInstr.setPacketBy(instrUpdated.getPacketBy());
				udsInstr.setPacketStatus(instrUpdated.getPacketStatus());
				udsInstr.setPacketReason(instrUpdated.getPacketReason());
				udsInstr.setPacketNotes(instrUpdated.getPacketNotes());
				udsInstr.save();
			}
		}
		else {
			// if this is NOT a UDS Form Checklist instrument, update the packet status of this 
			// instrument based on the UDS Form Checklist instrument for this patient and visit
			
			// obtain the UDS Form Checklist instrument for this patient and visit
			LavaDaoFilter filter = newFilterInstance();
			filter.addDaoParam(filter.daoEqualityParam("id", this.getId()));
			filter.addDaoParam(filter.daoEqualityParam("formId", (this.getVisitType().equals("FTLD Assessment") ? UdsFtldFormChecklist.UDS_FTLD_FORMCHECKLIST_FORMID : UdsFormChecklist.UDS_FORMCHECKLIST_FORMID)));
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
				instrUpdated.setPacketDate(udsFormChecklist.getPacketDate());
				instrUpdated.setPacketBy(udsFormChecklist.getPacketBy());
				instrUpdated.setPacketStatus(udsFormChecklist.getPacketStatus());
				instrUpdated.setPacketReason(udsFormChecklist.getPacketReason());
				instrUpdated.setPacketNotes(udsFormChecklist.getPacketNotes());
				// do not have to explicitly call save here since this object is in the process of
				// being saved
			}
		}
	}
	
	
	
	
	
}
