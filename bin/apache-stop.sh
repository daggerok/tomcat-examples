#!/usr/bin/env bash

#############################
#                           #
#  bash bin/apache-stop.sh  #
#                           #
#############################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ./apache-tomcat-${TOMCAT_8_VERSION}/bin/catalina.sh stop || true
killall -9 java tail
