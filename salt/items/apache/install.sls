{% set myos = salt['grains.get']('os', 'Unknown') %}
{% if myos == 'CentOS' %}
{% set apachename = "httpd" %}
{% elif myos == 'Debian' %}
{% set apachename = "apache2" %}
{% endif %}

apache:
  pkg.installed:
    - name: {{ apachename }}
