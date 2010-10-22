package edu.ucsf.lava.crms.assessment.model;

import java.util.Date;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsInstrumentTracking extends UdsInstrument {
	/**
	 * UdsInstrumentTracking
	 * 
	 * This class is used for lightweight uds instrument instances, i.e. those containing only
	 * the core instrument tracking portion of an instrument table. It is used for instances
	 * of uds instruments in listing, where each element could be a different type of uds instrument,
	 * and for setting the uds instrument in the session context, and for retrieving an unimplemented
	 * instrument for the purpose of deleting it. 
	 * 
	 * The reason it is used instead of UdsInstrument is so that polymorphic queries are avoided,
	 * because there are no subclasses of UdsInstrumentTracking. In contrast, UdsInstrument is the 
	 * superclass of the instrument hierarchy, so mapping Instrument and querying on it would
	 * result in a polymorphic query, joining to every subclass, e.g. in the case of a list
	 * of instruments, returning instances of all the instrument specific classes in the list. 
	 * Given the number of instruments in the Instrument class hierarchy, the number of joins
	 * involved would be prohibitive.
	 */
	
public UdsInstrumentTracking() {}
	public static EntityManager MANAGER = new EntityBase.Manager(UdsInstrumentTracking.class);

	public UdsInstrumentTracking(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
		super(p, v, projName, instrType, dcDate, dcStatus);
	}
	

}
