ntp_tinker:
  file.prepend:
    - name: /etc/ntp.conf
    - text: "tinker panic 0"
    - require:
      - pkg: ntp
    - watch_in:
      - service: ntp
  
