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

public class UDSFormChecklist3 extends Instrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UDSFormChecklist3.class);
  public UDSFormChecklist3() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UDSFormChecklist3(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
  }
  // note: id inherited from Instrument
  private Integer a2sub;
  private Integer a2not;
  private String a2comm;
  private Integer a3sub;
  private Integer a3not;
  private String a3comm;
  private Integer a4sub;
  private Integer a4not;
  private String a4comm;
  private Integer b1sub;
  private Integer b1not;
  private String b1comm;
  private Integer b5sub;
  private Integer b5not;
  private String b5comm;
  private Integer b6sub;
  private Integer b6not;
  private String b6comm;
  private Integer b7sub;
  private Integer b7not;
  private String b7comm;



  public Integer getA2sub() {
    return a2sub;
  }
  public void setA2sub(Integer a2sub) {
    this.a2sub=a2sub;
  }

  public Integer getA2not() {
    return a2not;
  }
  public void setA2not(Integer a2not) {
    this.a2not=a2not;
  }

  public String getA2comm() {
    return a2comm;
  }
  public void setA2comm(String a2comm) {
    this.a2comm=a2comm;
  }

  public Integer getA3sub() {
    return a3sub;
  }
  public void setA3sub(Integer a3sub) {
    this.a3sub=a3sub;
  }

  public Integer getA3not() {
    return a3not;
  }
  public void setA3not(Integer a3not) {
    this.a3not=a3not;
  }

  public String getA3comm() {
    return a3comm;
  }
  public void setA3comm(String a3comm) {
    this.a3comm=a3comm;
  }

  public Integer getA4sub() {
    return a4sub;
  }
  public void setA4sub(Integer a4sub) {
    this.a4sub=a4sub;
  }

  public Integer getA4not() {
    return a4not;
  }
  public void setA4not(Integer a4not) {
    this.a4not=a4not;
  }

  public String getA4comm() {
    return a4comm;
  }
  public void setA4comm(String a4comm) {
    this.a4comm=a4comm;
  }

  public Integer getB1sub() {
    return b1sub;
  }
  public void setB1sub(Integer b1sub) {
    this.b1sub=b1sub;
  }

  public Integer getB1not() {
    return b1not;
  }
  public void setB1not(Integer b1not) {
    this.b1not=b1not;
  }

  public String getB1comm() {
    return b1comm;
  }
  public void setB1comm(String b1comm) {
    this.b1comm=b1comm;
  }

  public Integer getB5sub() {
    return b5sub;
  }
  public void setB5sub(Integer b5sub) {
    this.b5sub=b5sub;
  }

  public Integer getB5not() {
    return b5not;
  }
  public void setB5not(Integer b5not) {
    this.b5not=b5not;
  }

  public String getB5comm() {
    return b5comm;
  }
  public void setB5comm(String b5comm) {
    this.b5comm=b5comm;
  }

  public Integer getB6sub() {
    return b6sub;
  }
  public void setB6sub(Integer b6sub) {
    this.b6sub=b6sub;
  }

  public Integer getB6not() {
    return b6not;
  }
  public void setB6not(Integer b6not) {
    this.b6not=b6not;
  }

  public String getB6comm() {
    return b6comm;
  }
  public void setB6comm(String b6comm) {
    this.b6comm=b6comm;
  }

  public Integer getB7sub() {
    return b7sub;
  }
  public void setB7sub(Integer b7sub) {
    this.b7sub=b7sub;
  }

  public Integer getB7not() {
    return b7not;
  }
  public void setB7not(Integer b7not) {
    this.b7not=b7not;
  }

  public String getB7comm() {
    return b7comm;
  }
  public void setB7comm(String b7comm) {
    this.b7comm=b7comm;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "a2sub",
      "a2not",
      "a2comm",
      "a3sub",
      "a3not",
      "a3comm",
      "a4sub",
      "a4not",
      "a4comm",
      "b1sub",
      "b1not",
      "b1comm",
      "b5sub",
      "b5not",
      "b5comm",
      "b6sub",
      "b6not",
      "b6comm",
      "b7sub",
      "b7not",
      "b7comm"
    };
    return required;
  }
}
