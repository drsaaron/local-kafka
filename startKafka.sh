#! /bin/sh

# simple script to start kafka using docker-compose.  This is needed
# because the containers must be removed before starting, else some
# odd errors arise.

podman rm kafka_kafka_1
podman rm kafka_zookeeper_1

# now start
podman compose up
