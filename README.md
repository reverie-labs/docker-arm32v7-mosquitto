# docker-armhf-mosquitto
Docker image for running the mosquitto MQTT broker in an `armhf` device (such as a Raspberry Pi 2 or 3, etc)

To run with the default configurations:

```
docker run -d -p 1883:1883 -p 9000:9000 reverie/armhf-mosquitto:latest
```

To create a persistent service, with your configuration in a persistent docker volume:

```
docker volume create mosquitto-etc_mosquitto
docker service create --name mosquitto \
    -p 1883:1883 && \
    -p 9000:9000 && \
    --mount type=volume,source=mosquitto-etc_mosquitto,destination=/etc/mosquitto && \
    --replicas 1 && \
    reverie/armhf-mosquitto:latest
```

**Important**: do not set `replicas` to anything above 1. This image is not prepared for any kind of clustering!
