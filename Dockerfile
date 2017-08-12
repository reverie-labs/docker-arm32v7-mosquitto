FROM resin/armhf-alpine
MAINTAINER Guto Andreollo <gutoandreollo@users.noreply.github.com>

RUN apk --no-cache add mosquitto

VOLUME /etc/mosquitto

EXPOSE 1883 9000

ENTRYPOINT ["mosquitto"]

