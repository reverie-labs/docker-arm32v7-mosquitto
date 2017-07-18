FROM hypriot/rpi-alpine-scratch
MAINTAINER Guto Andreollo <gutoandreollo@users.noreply.github.com>

RUN apk update && apk add mosquitto

RUN mkdir /config
VOLUME /config

EXPOSE 1883 9000

CMD ["/usr/sbin/mosquitto", "-c", "/config/mosquitto.conf"]

