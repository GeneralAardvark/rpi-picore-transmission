FROM generalaardvark/rpi-picore

MAINTAINER Pie <generalaardvark@piesweb.co.uk>

ADD https://github.com/GeneralAardvark/picore-transmisison-2.92/raw/master/transmission.tcz /tmp/
ADD https://github.com/GeneralAardvark/picore-transmisison-2.92/raw/master/transmission.tcz.dep /tmp/

RUN sudo chmod a+rw /tmp/transmission.tcz* \
	&& cat /tmp/transmission.tcz.dep | xargs tce-load -wic \
	&& tce-load -ic /tmp/transmission.tcz \
	&& sudo rm -f /tmp/transmission.tcz* /tmp/tce/optional/*

CMD transmission-daemon -f -g /mnt/nfs2/config

