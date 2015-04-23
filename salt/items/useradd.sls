{% for user in salt['pillar.get']('user') %}
{{ user }}:
  user.present
{% endfor %}
