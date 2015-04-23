base:
  '*':
    - items.ntp.install
    - items.ntp.config
    - items.useradd
  'vm4*':
    - items.apache.install
  'vm3*':
    - items.salt-master.config
