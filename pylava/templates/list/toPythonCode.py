{{ lavalist.shortName }}_list = NumericRangeUds('{{ lavalist.name}}'{% if lavalist.values %},
                        odict([
{% for k,v in lavalist.values.items %}                           ({{ k }},'{{ v }}'),
{% endfor %}                        ]){% endif %}{% if lavalist.minimum %},
                    minimum={{ lavalist.minimum }} {% endif %}{% if lavalist.maximum %},
                    maximum={{ lavalist.maximum }} {% endif %}
    )
