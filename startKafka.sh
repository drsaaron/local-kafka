#! /bin/sh

# simple script to start kafka using docker-compose.  This is needed
# because the containers must be removed before starting, else some
# odd errors arise.

docker rm kafka-kafka-1
docker rm kafka-zookeeper-1

# now start
docker-compose up
