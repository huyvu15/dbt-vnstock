-- macros/get_current_env.sql
{% macro get_current_env() %}
  {% if target.name == 'prod' %}
    {{ var('prod_env') }}
  {% else %}
    {{ var('dev_env') }}
  {% endif %}
{% endmacro %}