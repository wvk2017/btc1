FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/saltduck/bitcoinpurity/releases/download/v1.1.2/bitcoinpurity-1.1.2-x86_64-linux-gnu.tar.gz
RUN tar zxvf bitcoinpurity-1.1.2-x86_64-linux-gnu.tar.gz
RUN mv bitcoinpurity-1.1.2/bin/* /usr/bin/
CMD /usr/bin/bitcoind -printtoconsole
