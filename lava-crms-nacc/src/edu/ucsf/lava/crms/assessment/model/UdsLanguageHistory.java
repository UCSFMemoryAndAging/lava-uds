////package edu.ucsf.lava.local.ucdlava.crms.assessment.model;
package edu.ucsf.lava.crms.assessment.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import edu.ucsf.lava.core.model.EntityBase;
import edu.ucsf.lava.core.model.EntityManager;
import edu.ucsf.lava.crms.assessment.model.UdsInstrument;
import edu.ucsf.lava.crms.assessment.model.UdsUploadUtils;
import edu.ucsf.lava.crms.people.model.Patient;
import edu.ucsf.lava.crms.scheduling.model.Visit;

public class UdsLanguageHistory extends UdsInstrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UdsLanguageHistory.class);
  public UdsLanguageHistory() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UdsLanguageHistory(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
    this.setFormId("CLS");
  }
  // note: id inherited from Instrument
  private Integer APREFLAN;
  private Integer AYRSPAN;
  private Integer AYRENGL;
  private Integer APCSPAN;
  private Integer APCENGL;
  private Integer ASPKSPAN;
  private Integer AREASPAN;
  private Integer AWRISPAN;
  private Integer AUNDSPAN;
  private Integer ASPKENGL;
  private Integer AREAENGL;
  private Integer AWRIENGL;
  private Integer AUNDENGL;



  public Integer getAPREFLAN() {
    return APREFLAN;
  }
  public void setAPREFLAN(Integer APREFLAN) {
    this.APREFLAN=APREFLAN;
  }

  public Integer getAYRSPAN() {
    return AYRSPAN;
  }
  public void setAYRSPAN(Integer AYRSPAN) {
    this.AYRSPAN=AYRSPAN;
  }

  public Integer getAYRENGL() {
    return AYRENGL;
  }
  public void setAYRENGL(Integer AYRENGL) {
    this.AYRENGL=AYRENGL;
  }

  public Integer getAPCSPAN() {
    return APCSPAN;
  }
  public void setAPCSPAN(Integer APCSPAN) {
    this.APCSPAN=APCSPAN;
  }

  public Integer getAPCENGL() {
    return APCENGL;
  }
  public void setAPCENGL(Integer APCENGL) {
    this.APCENGL=APCENGL;
  }

  public Integer getASPKSPAN() {
    return ASPKSPAN;
  }
  public void setASPKSPAN(Integer ASPKSPAN) {
    this.ASPKSPAN=ASPKSPAN;
  }

  public Integer getAREASPAN() {
    return AREASPAN;
  }
  public void setAREASPAN(Integer AREASPAN) {
    this.AREASPAN=AREASPAN;
  }

  public Integer getAWRISPAN() {
    return AWRISPAN;
  }
  public void setAWRISPAN(Integer AWRISPAN) {
    this.AWRISPAN=AWRISPAN;
  }

  public Integer getAUNDSPAN() {
    return AUNDSPAN;
  }
  public void setAUNDSPAN(Integer AUNDSPAN) {
    this.AUNDSPAN=AUNDSPAN;
  }

  public Integer getASPKENGL() {
    return ASPKENGL;
  }
  public void setASPKENGL(Integer ASPKENGL) {
    this.ASPKENGL=ASPKENGL;
  }

  public Integer getAREAENGL() {
    return AREAENGL;
  }
  public void setAREAENGL(Integer AREAENGL) {
    this.AREAENGL=AREAENGL;
  }

  public Integer getAWRIENGL() {
    return AWRIENGL;
  }
  public void setAWRIENGL(Integer AWRIENGL) {
    this.AWRIENGL=AWRIENGL;
  }

  public Integer getAUNDENGL() {
    return AUNDENGL;
  }
  public void setAUNDENGL(Integer AUNDENGL) {
    this.AUNDENGL=AUNDENGL;
  }


  public String[] getRequiredResultFields() {
    String[] required;
    required = new String[] {
      "APREFLAN",
      "AYRSPAN",
      "AYRENGL",
      "APCSPAN",
      "APCENGL",
      "ASPKSPAN",
      "AREASPAN",
      "AWRISPAN",
      "AUNDSPAN",
      "ASPKENGL",
      "AREAENGL",
      "AWRIENGL",
      "AUNDENGL"
    };
    return required;
  }

  public String getUdsUploadCsvRecord() {
    StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
    buffer.append(UdsUploadUtils.formatField(getAPREFLAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAYRSPAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAYRENGL())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAPCSPAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAPCENGL())).append(",");
    buffer.append(UdsUploadUtils.formatField(getASPKSPAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAREASPAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAWRISPAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAUNDSPAN())).append(",");
    buffer.append(UdsUploadUtils.formatField(getASPKENGL())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAREAENGL())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAWRIENGL())).append(",");
    buffer.append(UdsUploadUtils.formatField(getAUNDENGL())).append(",");
    return buffer.toString();
  }

}
