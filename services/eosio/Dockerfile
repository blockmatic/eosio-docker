FROM ubuntu:18.04
# Install utilities
RUN apt-get update && apt-get install -y wget jq sudo curl git
# Install EOSIO
RUN wget https://github.com/eosio/eos/releases/download/v1.8.1/eosio_1.8.1-1-ubuntu-18.04_amd64.deb
RUN sudo apt install -y ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb
# Install EOSIO.CDT
RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.6.2/eosio.cdt_1.6.2-1-ubuntu-18.04_amd64.deb
RUN sudo apt install -y ./eosio.cdt_1.6.2-1-ubuntu-18.04_amd64.deb
# Define working directory
WORKDIR /opt/application
# Copy application code
COPY ./ /opt/application
# Define Environment params used by scripts/start.sh
ENV DATA_DIR /root/data-dir
ENV CONFIG_DIR /opt/application/config
# Start nodeos
CMD /opt/application/scripts/start.sh
