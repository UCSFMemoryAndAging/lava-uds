{% autoescape off %}insert into viewproperty 
set messageCode='*.{{ col.tname }}.{{ col.getLCName }}', locale='en', instance='lava', 
  scope='{{ col.project_name }}', entity='{{ col.tname }}', property='{{ col.getLCName }}',
  required='No', proporder='{{ colnum }}', attributes='', quickHelp='', 
  label="{{ col.label }}:", context="r"{% if col.listname %},
  list="{{ col.listname }}"{% endif %}{% if col.lavalist %},
  list="{{ col.lavalist.name }}"{% endif %}{% ifequal col.dtype "string" %}, maxLength="6"{% endifequal %}{% ifequal col.dtype "float" %}, maxLength="6", size="6"
{% endifequal %}, style="{{ col.vpstyle }}";{% endautoescape %}
