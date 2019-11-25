FROM ubuntu:18.04
LABEL Maintainer='Matthias Löffel <matthias.loeffel@gmail.com'
RUN apt-get update && apt-get install wget lib32gcc1 -y
WORKDIR /opt/steamcmd
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz && \
    tar xvzf steamcmd_linux.tar.gz && \
    rm steamcmd_linux.tar.gz && \
    mkdir -p /opt/7dtd && \
    ./steamcmd.sh "+login anonymous" "+force_install_dir /opt/7dtd" "+app_update 294420" "+quit"

EXPOSE 26900