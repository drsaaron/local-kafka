#! /bin/sh

grep image docker-compose.yml | awk '{ print $2 }' | xargs -n1 -I {}  sh -c '{ echo "pulling {}"; docker pull {}; }'
