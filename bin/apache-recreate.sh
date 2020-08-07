#!/usr/bin/env bash

#################################
#                               #
#  bash bin/apache-recreate.sh  #
#                               #
#################################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ${SCRIPT_DIR}/apache-stop.sh
[[ -d "./apache-tomcat-${TOMCAT_8_VERSION}" ]] && rm -rf ./apache-tomcat-${TOMCAT_8_VERSION}

[[ ! -f "./apache-tomcat-${TOMCAT_8_VERSION}.zip" ]] && wget ${TOMCAT_8_BASE_URL}v${TOMCAT_8_VERSION}/bin/apache-tomcat-${TOMCAT_8_VERSION}.zip
unzip ./apache-tomcat-${TOMCAT_8_VERSION}.zip
rm -rf ./apache-tomcat-${TOMCAT_8_VERSION}/webapps/{ROOT*,docs,examples,host-manager,manager}
