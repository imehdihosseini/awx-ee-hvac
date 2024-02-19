FROM quay.io/ansible/awx-ee:latest
User root
RUN pip3 install --no-cache-dir hvac
RUN pip install --no-cache-dir \
  -i https://artifactory.esss.lu.se/artifactory/api/pypi/pypi-virtual/simple \
  proxmoxer \
  cerberus==1.3.2 \
  jxmlease \
  netaddr \
  ncclient \
  jmespath \
  csentry-api==1.0.1 \
  csentry-inventory==1.0.0 \
  hvac

USER 1000
