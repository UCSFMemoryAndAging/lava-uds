{% autoescape off %}
{% load instrument_tags %}

-- Initialize table
CREATE TABLE {{ instr.tname }} (
  InstrID int(10) NOT NULL,
{% autoescape off %}{% for col in instr.columns %}  {{ col.sqlCreateLine }}
{% endfor %}{% endautoescape %}
  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="{{ instr.fullname }}", TableName="{{ instr.tname }}", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
{% for col in instr.columns %}{{ col|colViewPropLine:forloop.counter }}
{% endfor %}{% endautoescape %}
