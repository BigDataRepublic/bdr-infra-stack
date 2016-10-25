#!/bin/bash
source {{ zookeeper_conf_dir }}/zookeeper-env.sh ; env CLASSPATH=$CLASSPATH {{ zookeeper_home_dir }}/bin/zkServer.sh "$@"
