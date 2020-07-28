#!/usr/bin/env bash

##############################
#                            #
#  bash bin/start-apache.sh  #
#                            #
##############################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ./apache-tomcat-${TOMCAT_8_VERSION}/bin/catalina.sh start
nohup tail -f ./apache-tomcat-${TOMCAT_8_VERSION}/logs/catalina.out &
