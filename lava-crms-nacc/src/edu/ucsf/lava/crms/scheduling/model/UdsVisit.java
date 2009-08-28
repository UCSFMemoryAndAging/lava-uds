package edu.ucsf.lava.crms.scheduling.model;

import java.util.List;

import edu.ucsf.lava.core.dao.LavaDaoFilter;
import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;
import edu.ucsf.lava.crms.assessment.model.UdsInstrumentTracking;
import edu.ucsf.lava.crms.scheduling.model.Visit;

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
	
	
	
	
	
	
	
}
