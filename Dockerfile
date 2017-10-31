FROM ubuntu:16.04

RUN apt-get update && \
	apt-get -y install sip-tester
	
WORKDIR /

# Instant Messging SIPp Scripts 
COPY uac_im.xml /
COPY uas_im.xml /
