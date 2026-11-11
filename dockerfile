FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/saltduck/bitcoinpurity/releases/download/v1.1.2/bitcoinpurity-1.1.2-x86_64-linux-gnu.tar.gz
RUN tar zxvf bitcoinpurity-1.1.2-x86_64-linux-gnu.tar.gz
RUN mv bitcoinpurity-1.1.2/bin/* /usr/bin/
RUN wget https://raw.githubusercontent.com/TheRetroMike/rmt-nomp/master/scripts/blocknotify.c
RUN gcc blocknotify.c -o /usr/bin/blocknotify
CMD /usr/bin/bitcoind -printtoconsole
