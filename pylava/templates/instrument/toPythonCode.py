# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='{{ instr.fullname }}'
jname='{{ instr.jname }}'
tname='{{ instr.tname }}'

{% for lavalist in instr.newlists %}
{{ lavalist.toPythonCode }}
{% endfor %} {% autoescape off %}
columns=[
{% for col in instr.columns %}  {{ col.toPythonCode }},
{% endfor %}]{% endautoescape %}

{{ instr.jname }}=Instrument(fullname,jname,tname,columns)
