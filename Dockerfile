FROM debian:jessie
MAINTAINER Merwan
RUN apt-get update && apt-get install -y wget
RUN echo "deb http://files.freeswitch.org/repo/deb/debian/ jessie main" > /etc/apt/sources.list.d/freeswitch.list
RUN wget -O - http://files.freeswitch.org/repo/deb/debian/key.gpg | apt-key add -
RUN apt-get update && apt-get install git build-essential autoconf libtool libtool-bin zlib1g-dev libjpeg-dev pkg-config libsqlite3-dev libcurl4-openssl-dev libspeex-dev libspeexdsp-dev libldns-dev libedit-dev libyuv-dev libvpx2-dev liblua5.2-dev libopus-dev libsndfile-dev libpng16-16 libsoundtouch0 libsilk1 libcodec21 libvlc5 vlc-nox libmonoboehm-2.0-1 libperl5.20 libpq5 librabbitmq1 libmp3lame0 libmpg123-0 libshout3 libsnmp30 libodbc1 yasm libbroadvoice1 libavcodec-extra-56 libavformat56 libavresample2 libavutil54 libswscale3 libmemcached11 libmemcachedutil2 libhiredis0.10 erlang libmagickcore-6.q16-2 libpython2.7 libopencv-calib3d2.4 libopencv-contrib2.4 libopencv-core2.4 libopencv-features2d2.4 libopencv-flann2.4 libopencv-gpu2.4 libopencv-highgui2.4 libopencv-imgproc2.4 libasound2 libportaudio2 libperl5.20 debhelper dh-systemd libpcre3-dev unixodbc-dev libncurses5-dev python-all-dev doxygen uuid-dev libgdbm-dev libdb-dev bison libavformat-dev libswscale-dev libopencv-dev libhiredis-dev ladspa-sdk libmemcached-dev libsoundtouch-dev libflite-dev libbroadvoice-dev libcodec2-dev libsngtc-dev libsilk-dev libasound2-dev portaudio19-dev libx11-dev libperl-dev librabbitmq-dev libsnmp-dev libmagickcore-dev libmp3lame-dev libmpg123-dev libshout3-dev libvlc-dev default-jdk gcj-jdk libmono-2.0-dev mono-mcs libyaml-dev libpq-dev libopencore-amrnb-dev devscripts -y
