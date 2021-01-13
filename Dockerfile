# Suricata para GNS3
# Suricata para GNS3

FROM jprietove/nuc:latest
MAINTAINER Javier Prieto <javier.prieto.edu@juntadeandalucia.es>

LABEL Title="Suricata para GNS3" \
      Description="Suricata para GNS3"

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:oisf/suricata-stable && apt install -y suricata


VOLUME [ "/etc/suricata/" ]
VOLUME [ "/var/log/suricata/" ]
VOLUME [ "/var/lib/suricata/" ]

ENTRYPOINT bash
