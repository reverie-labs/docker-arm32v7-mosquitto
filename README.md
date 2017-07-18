# docker-rpi-mosquitto
Docker Raspberry Pi image for running the mosquitto MQTT broker

```
docker run -d -p 1883:1883 -p 9000:9000 reverie/rpi-mosquitto:latest
```

```
docker volume create mqtt-config
docker service create --name mqtt \
    -p 1883:1883 && \
    -p 9000:9000 && \
    --mount type=volume,source=mqtt-config,destination=/config && \
    --replicas 1 && \
    reverie/rpi-mosquitto:latest
```
