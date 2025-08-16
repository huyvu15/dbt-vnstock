{% macro get_schema() %}
  {% set model_path = model.path %}
  {% if 'raw' in model_path %}
    {{ return('vnstock-raw') }}
  {% elif 'silver' in model_path %}
    {{ return('vnstock-silver') }}
  {% else %}
    {{ return('vnstock') }}
  {% endif %}
{% endmacro %}
