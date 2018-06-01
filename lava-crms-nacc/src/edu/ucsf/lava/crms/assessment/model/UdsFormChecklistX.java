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

public class UdsFormChecklistX extends UdsInstrument{
  public static EntityManager MANAGER = new EntityBase.Manager(UdsFormChecklistX.class);
  public UdsFormChecklistX() {}
  /* constructor for adding new instruments. do instrument-specific initialization here. */
  public UdsFormChecklistX(Patient p, Visit v, String projName, String instrType, Date dcDate, String dcStatus) {
    super(p,v,projName,instrType,dcDate,dcStatus);
    this.setFormId("Z1X");
  }
  // note: id inherited from Instrument
  protected Integer langt1;
  protected Integer langa1;
  protected Integer langa2;
  protected Integer a2sub;
  protected Integer a2not;
  protected Integer langa3;
  protected Integer a3sub;
  protected Integer a3not;
  protected Integer langa4;
  protected Integer a4sub;
  protected Integer a4not;
  protected Integer langa5;
  protected Integer langb1;
  protected Integer b1sub;
  protected Integer b1not;
  protected Integer langb4;
  protected Integer langb5;
  protected Integer b5sub;
  protected Integer b5not;
  protected Integer langb6;
  protected Integer b6sub;
  protected Integer b6not;
  protected Integer langb7;
  protected Integer b7sub;
  protected Integer b7not;
  protected Integer langb8;
  protected Integer langb9;
  protected Integer langc1;
  protected Integer langc2;
  protected Integer langd1;
  protected Integer langd2;
  protected Integer langa3a;
  protected Integer ftda3afs;
  protected Integer ftda3afr;
  protected Integer langb3f;
  protected Integer langb9f;
  protected Integer langc1f;
  protected Integer langc2f;
  protected Integer langc3f;
  protected Integer langc4f;
  protected Integer ftdc4fs;
  protected Integer ftdc4fr;
  protected Integer langc5f;
  protected Integer ftdc5fs;
  protected Integer ftdc5fr;
  protected Integer langc6f;
  protected Integer ftdc6fs;
  protected Integer ftdc6fr;
  protected Integer lange2f;
  protected Integer lange3f;
  protected Integer langcls;
  protected Integer clssub;

  public void beforeCreate(){
    langt1=1;
    langa1=1;
    langa2=1;
    langa3=1;
    langa4=1;
    langa5=1;
    langb1=1;
    langb4=1;
    langb5=1;
    langb6=1;
    langb7=1;
    langb8=1;
    langb9=1;
    langc1=1;
    langc2=1;
    langd1=1;
    langd2=1;
    langa3a=1;
    langb3f=1;
    langb9f=1;
    langc1f=1;
    langc2f=1;
    langc3f=1;
    langc4f=1;
    langc5f=1;
    langc6f=1;
    lange2f=1;
    lange3f=1;
    langcls=1;
  }

  public Integer getLangt1() {
    return langt1;
  }
  public void setLangt1(Integer langt1) {
    this.langt1=langt1;
  }

  public Integer getLanga1() {
    return langa1;
  }
  public void setLanga1(Integer langa1) {
    this.langa1=langa1;
  }

  public Integer getLanga2() {
    return langa2;
  }
  public void setLanga2(Integer langa2) {
    this.langa2=langa2;
  }

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

  public Integer getLanga3() {
    return langa3;
  }
  public void setLanga3(Integer langa3) {
    this.langa3=langa3;
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

  public Integer getLanga4() {
    return langa4;
  }
  public void setLanga4(Integer langa4) {
    this.langa4=langa4;
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

  public Integer getLanga5() {
    return langa5;
  }
  public void setLanga5(Integer langa5) {
    this.langa5=langa5;
  }

  public Integer getLangb1() {
    return langb1;
  }
  public void setLangb1(Integer langb1) {
    this.langb1=langb1;
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

  public Integer getLangb4() {
    return langb4;
  }
  public void setLangb4(Integer langb4) {
    this.langb4=langb4;
  }

  public Integer getLangb5() {
    return langb5;
  }
  public void setLangb5(Integer langb5) {
    this.langb5=langb5;
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

  public Integer getLangb6() {
    return langb6;
  }
  public void setLangb6(Integer langb6) {
    this.langb6=langb6;
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

  public Integer getLangb7() {
    return langb7;
  }
  public void setLangb7(Integer langb7) {
    this.langb7=langb7;
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

  public Integer getLangb8() {
    return langb8;
  }
  public void setLangb8(Integer langb8) {
    this.langb8=langb8;
  }

  public Integer getLangb9() {
    return langb9;
  }
  public void setLangb9(Integer langb9) {
    this.langb9=langb9;
  }

  public Integer getLangc1() {
    return langc1;
  }
  public void setLangc1(Integer langc1) {
    this.langc1=langc1;
  }

  public Integer getLangc2() {
    return langc2;
  }
  public void setLangc2(Integer langc2) {
    this.langc2=langc2;
  }

  public Integer getLangd1() {
    return langd1;
  }
  public void setLangd1(Integer langd1) {
    this.langd1=langd1;
  }

  public Integer getLangd2() {
    return langd2;
  }
  public void setLangd2(Integer langd2) {
    this.langd2=langd2;
  }

  public Integer getLanga3a() {
    return langa3a;
  }
  public void setLanga3a(Integer langa3a) {
    this.langa3a=langa3a;
  }

  public Integer getFtda3afs() {
    return ftda3afs;
  }
  public void setFtda3afs(Integer ftda3afs) {
    this.ftda3afs=ftda3afs;
  }

  public Integer getFtda3afr() {
    return ftda3afr;
  }
  public void setFtda3afr(Integer ftda3afr) {
    this.ftda3afr=ftda3afr;
  }

  public Integer getLangb3f() {
    return langb3f;
  }
  public void setLangb3f(Integer langb3f) {
    this.langb3f=langb3f;
  }

  public Integer getLangb9f() {
    return langb9f;
  }
  public void setLangb9f(Integer langb9f) {
    this.langb9f=langb9f;
  }

  public Integer getLangc1f() {
    return langc1f;
  }
  public void setLangc1f(Integer langc1f) {
    this.langc1f=langc1f;
  }

  public Integer getLangc2f() {
    return langc2f;
  }
  public void setLangc2f(Integer langc2f) {
    this.langc2f=langc2f;
  }

  public Integer getLangc3f() {
    return langc3f;
  }
  public void setLangc3f(Integer langc3f) {
    this.langc3f=langc3f;
  }

  public Integer getLangc4f() {
    return langc4f;
  }
  public void setLangc4f(Integer langc4f) {
    this.langc4f=langc4f;
  }

  public Integer getFtdc4fs() {
    return ftdc4fs;
  }
  public void setFtdc4fs(Integer ftdc4fs) {
    this.ftdc4fs=ftdc4fs;
  }

  public Integer getFtdc4fr() {
    return ftdc4fr;
  }
  public void setFtdc4fr(Integer ftdc4fr) {
    this.ftdc4fr=ftdc4fr;
  }

  public Integer getLangc5f() {
    return langc5f;
  }
  public void setLangc5f(Integer langc5f) {
    this.langc5f=langc5f;
  }

  public Integer getFtdc5fs() {
    return ftdc5fs;
  }
  public void setFtdc5fs(Integer ftdc5fs) {
    this.ftdc5fs=ftdc5fs;
  }

  public Integer getFtdc5fr() {
    return ftdc5fr;
  }
  public void setFtdc5fr(Integer ftdc5fr) {
    this.ftdc5fr=ftdc5fr;
  }

  public Integer getLangc6f() {
    return langc6f;
  }
  public void setLangc6f(Integer langc6f) {
    this.langc6f=langc6f;
  }

  public Integer getFtdc6fs() {
    return ftdc6fs;
  }
  public void setFtdc6fs(Integer ftdc6fs) {
    this.ftdc6fs=ftdc6fs;
  }

  public Integer getFtdc6fr() {
    return ftdc6fr;
  }
  public void setFtdc6fr(Integer ftdc6fr) {
    this.ftdc6fr=ftdc6fr;
  }

  public Integer getLange2f() {
    return lange2f;
  }
  public void setLange2f(Integer lange2f) {
    this.lange2f=lange2f;
  }

  public Integer getLange3f() {
    return lange3f;
  }
  public void setLange3f(Integer lange3f) {
    this.lange3f=lange3f;
  }

  public Integer getLangcls() {
    return langcls;
  }
  public void setLangcls(Integer langcls) {
    this.langcls=langcls;
  }

  public Integer getClssub() {
    return clssub;
  }
  public void setClssub(Integer clssub) {
    this.clssub=clssub;
  }


  public String[] getRequiredResultFields() {
    String[] required = new String[] {};
    
	if (this.getPacket() == null) {
		return new String[] {"packet"};
	}
	else if (this.getPacket().equals("I")){
		return new String[] {
			    "langa1",
			    "langa2",
			    "a2sub",
			    "a2not",
			    "langa3",
			    "a3sub",
			    "a3not",
			    "langa4",
			    "a4sub",
			    "a4not",
			    "langa5",
			    "langb1",
			    "b1sub",
			    "b1not",
			    "langb4",
			    "langb5",
			    "b5sub",
			    "b5not",
			    "langb6",
			    "b6sub",
			    "b6not",
			    "langb7",
			    "b7sub",
			    "b7not",
			    "langb8",
			    "langb9",
			    "langc2",
			    "langd1",
			    "langd2",
			    "langa3a",
			    "ftda3afs",
			    "ftda3afr",
			    "langb3f",
			    "langb9f",
			    "langc1f",
			    "langc2f",
			    "langc3f",
			    "langc4f",
			    "ftdc4fs",
			    "ftdc4fr",
			    "langc5f",
			    "ftdc5fs",
			    "ftdc5fr",
			    "langc6f",
			    "ftdc6fs",
			    "ftdc6fr",
			    "lange2f",
			    "lange3f",
			    "langcls",
			    "clssub" };
	}
	else if (this.getPacket().equals("F")){
		return new String[] {
			    "langa1",
			    "langa2",
			    "a2sub",
			    "a2not",
			    "langa3",
			    "a3sub",
			    "a3not",
			    "langa4",
			    "a4sub",
			    "a4not",
			    "langb1",
			    "b1sub",
			    "b1not",
			    "langb4",
			    "langb5",
			    "b5sub",
			    "b5not",
			    "langb6",
			    "b6sub",
			    "b6not",
			    "langb7",
			    "b7sub",
			    "b7not",
			    "langb8",
			    "langb9",
			    "langc1",
			    "langc2",
			    "langd1",
			    "langd2",
			    "langa3a",
			    "ftda3afs",
			    "ftda3afr",
			    "langb3f",
			    "langb9f",
			    "langc1f",
			    "langc2f",
			    "langc3f",
			    "langc4f",
			    "ftdc4fs",
			    "ftdc4fr",
			    "langc5f",
			    "ftdc5fs",
			    "ftdc5fr",
			    "langc6f",
			    "ftdc6fs",
			    "ftdc6fr",
			    "lange2f",
			    "lange3f",
			    "langcls",
			    "clssub" };
	}
	else if (this.getPacket().equals("T")){
		return new String[] {
				"langt1",
			    "langa1",
			    "langa2",
			    "langa3",
			    "a3sub",
			    "a3not",
			    "langa4",
			    "a4sub",
			    "a4not",
			    "langb4",
			    "langb5",
			    "b5sub",
			    "b5not",
			    "langb7",
			    "b7sub",
			    "b7not",
			    "langb9",
			    "langd1",
			    "langd2",
			    "langcls",
			    "clssub" };
    };
    
    return required;
  }
  

  public String getUdsUploadCsvRecord() {
    StringBuffer buffer = UdsUploadUtils.getCommonFields(this);
	if(getPacket().equals("I")){
	    buffer.append(UdsUploadUtils.formatField(getLanga1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA2sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA2not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga3())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA3sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA3not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga4())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA4sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA4not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga5())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB1sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB1not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb4())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb5())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB5sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB5not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb6())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB6sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB6not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb7())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB7sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB7not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb8())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb9())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangd1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangd2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga3a())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtda3afs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtda3afr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb3f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb9f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc1f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc2f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc3f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc4f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc4fs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc4fr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc5f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc5fs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc5fr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc6f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc6fs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc6fr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLange2f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLange3f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangcls())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getClssub())).append(",");
	}
	else if (getPacket().equals("F")) {
	    buffer.append(UdsUploadUtils.formatField(getLanga1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA2sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA2not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga3())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA3sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA3not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga4())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA4sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA4not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB1sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB1not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb4())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb5())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB5sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB5not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb6())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB6sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB6not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb7())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB7sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB7not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb8())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb9())).append(",");
		buffer.append(UdsUploadUtils.formatField(getLangc1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangd1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangd2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga3a())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtda3afs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtda3afr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb3f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb9f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc1f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc2f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc3f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc4f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc4fs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc4fr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc5f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc5fs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc5fr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangc6f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc6fs())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getFtdc6fr())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLange2f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLange3f())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangcls())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getClssub())).append(",");
	}
	else if (getPacket().equals("T")) {
	    buffer.append(UdsUploadUtils.formatField(getLangt1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga3())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA3sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA3not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLanga4())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA4sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getA4not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb4())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb5())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB5sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB5not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb7())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB7sub())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getB7not())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangb9())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangd1())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangd2())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getLangcls())).append(",");
	    buffer.append(UdsUploadUtils.formatField(getClssub())).append(",");
	}

    return buffer.toString();
  }



}
