#!/bin/bash
set -eu

if [ -z $ZOOKEEPER_HOST ]; then
  echo "Missing ZOOKEEPER_HOST environment variable"
  exit
fi

if [ -z $ZOOKEEPER_PORT ]; then
  echo "Missing ZOOKEEPER_PORT environment variable"
  exit
fi

if [ -z $NIMBUS ]; then
  echo "Missing NIMBUS environment variable"
  exit
fi

envsubst < /opt/storm/conf/storm.yaml.template > /opt/storm/conf/storm.yaml
envsubst < /opt/storm/conf/storm_env.ini.template > /opt/storm/conf/storm_env.ini

#env | sed -e 's/=/:/g' >> /opt/storm/conf/storm.yaml
#env | sed -e 's/=/:/g' >> /opt/storm/conf/storm_env.ini
