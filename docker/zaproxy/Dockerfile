# aparsons/zaproxy
# version 1.0.0

FROM ubuntu:14.04
MAINTAINER Adam Parsons "adam@aparsons.net"

ENV DEBIAN_FRONTEND=noninteractive

# Install Updates & Packages
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  #apt-get install -y build-essential && \
  apt-get install -y software-properties-common wget

# Install Oracle Java 8
RUN \
  add-apt-repository ppa:webupd8team/java && \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y oracle-java8-installer oracle-java8-set-default && \
  rm -rf /var/lib/apt/lists/*

#COPY ./entrypoint.sh /
COPY ZAP_2.4.2 zap/

EXPOSE 8080

ENTRYPOINT ["sh", "/zap/zap.sh", "-daemon"]
CMD ["sh", "/zap/zap.sh", "-daemon"]
