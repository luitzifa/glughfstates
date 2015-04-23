ntp:
  pkg:
    - installed
  service:
    - name: ntpd
    - running
    - require:
      - pkg: ntp
