#!/bin/bash

envsubst < /opt/storm/conf/storm.yaml.template > /opt/storm/conf/storm.yaml
envsubst < /opt/storm/conf/storm_env.ini.template > /opt/storm/conf/storm_env.ini

env >> /opt/storm/conf/storm.yaml
env >> /opt/storm/conf/storm_env.ini
