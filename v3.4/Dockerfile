FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y make \
                    g++ \
                    libncurses5-dev \
                    libssl-dev \
                    openssl \
                    libnet1-dev \
                    libpcap0.8-dev \
                    libsctp-dev \
                    wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://sourceforge.net/projects/sipp/files/sipp/3.4/sipp-3.3.990.tar.gz/download && \
    tar -xvzf download && \
    cd sipp-3.3.990 && \
    ./configure --with-sctp --with-pcap --with-openssl && \
    make

    
