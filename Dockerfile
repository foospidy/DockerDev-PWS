FROM debian:8

MAINTAINER foospidy

RUN apt-get update && apt-get -y install wget curl vim git software-properties-common apt-transport-https

# Install Cloud Foundry cli from https://github.com/cloudfoundry/cli/releases
#
# ...first add the Cloud Foundry Foundation public key and package repository to your system
# ...then, update your local package index, then finally install the cf CLI
RUN wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - && \
    echo "deb http://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list && \
    apt-get update && \
    apt-get install -y cf-cli

WORKDIR /PWS
