# Suricata para GNS3
# Suricata para GNS3

FROM jprietove/nuc:latest
MAINTAINER Javier Prieto <javier.prieto.edu@juntadeandalucia.es>

LABEL Title="Suricata para GNS3" \
      Description="Suricata para GNS3"

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y suricata


VOLUME [ "/etc/suricata/" ]

ENTRYPOINT bash
