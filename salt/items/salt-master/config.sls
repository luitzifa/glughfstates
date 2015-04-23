/etc/salt/master.d/99-pillar.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 0644
    - source: salt://items/salt-master/files/99-pillar.conf
    - watch_in:
      - service: salt-master
    - require:
      - file: /etc/salt/master.d

/etc/salt/master.d:
  file.directory:
    - user: root
    - group: root
    - mode: 755

salt-master:
  service:
    - running
    - enable: True
