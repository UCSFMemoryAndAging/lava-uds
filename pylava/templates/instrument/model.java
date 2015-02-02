package edu.ucsf.lava.crms.assessment.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.Instrument;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class {{ instr.jname }} extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager({{ instr.jname }}.class);
  public {{ instr.jname }}() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public {{ instr.jname }}(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
{% for col in instr.columns %}  private {{ col.jtype }} {{ col.getLCName }};
{% endfor %}

{% for col in instr.columns %}
  public {{ col.jtype }} get{{ col.getUName }}() {
    return {{ col.getLCName }};
  }
  public void set{{ col.getUName }}({{ col.jtype }} {{ col.getLCName }}) {
    this.{{ col.getLCName }}={{ col.getLCName }};
  }
{% endfor %}

  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
{% for col in instr.columns %}      "{{ col.getLCName }}"{% if not forloop.last %},{% endif %}
{% endfor %}    };
    return required;
  }
}
