FROM debian:latest
MAINTAINER Merwan
RUN apt-get update && apt-get install -y wget
RUN echo "deb http://files.freeswitch.org/repo/deb/debian/ jessie main" > /etc/apt/sources.list.d/freeswitch.list
RUN wget -O - http://files.freeswitch.org/repo/deb/debian/key.gpg | apt-key add -
RUN apt-get update && apt-get install git autoconf -y

