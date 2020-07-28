#!/usr/bin/env bash

#################################
#                               #
#  bash bin/recreate-apache.sh  #
#                               #
#################################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ${SCRIPT_DIR}/stop-apache.sh
rm -rf ./apache-tomcat-${TOMCAT_8_VERSION}*

wget ${TOMCAT_8_BASE_URL}v${TOMCAT_8_VERSION}/bin/apache-tomcat-${TOMCAT_8_VERSION}.zip
unzip ./apache-tomcat-${TOMCAT_8_VERSION}.zip
