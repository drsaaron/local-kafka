#! /bin/sh

# from https://www.tutorialspoint.com/apache_kafka/apache_kafka_basic_operations.htm

kafkaDir=/opt/kafka_2.11-0.10.1.0/bin
topic=firstTopic

export PATH=$kafkaDir:$PATH

# create a topic
echo "create topic"
kafka-topics.sh --create --bootstrap-server localhost:9092   --replication-factor 1   --partitions 1 --topic $topic

# list topics
echo "\nlisting topics"
kafka-topics.sh --list --bootstrap-server localhost:9092 

# send message
echo "\nsending message"
kafka-console-producer.sh --broker-list localhost:9092 --topic $topic <<EOF
Hello
This is my test message, $(date)
EOF

# read messages
echo "\nlisting messages"
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $topic --from-beginning

