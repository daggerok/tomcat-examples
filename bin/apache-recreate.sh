#!/usr/bin/env bash

#################################
#                               #
#  bash bin/apache-recreate.sh  #
#                               #
#################################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ${SCRIPT_DIR}/apache-stop.sh
if [[ -d "./apache-tomcat-${TOMCAT_VERSION}" ]] ; then
  rm -rf ./apache-tomcat-${TOMCAT_VERSION}
fi

if [[ ! -f "./apache-tomcat-${TOMCAT_VERSION}.zip" ]] ; then
  wget ${TOMCAT_URL}
fi

unzip ./apache-tomcat-${TOMCAT_VERSION}.zip
rm -rf ./apache-tomcat-${TOMCAT_VERSION}/webapps/{ROOT*,docs,examples,host-manager,manager}
