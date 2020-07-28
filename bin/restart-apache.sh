#!/usr/bin/env bash

################################
#                              #
#  bash bin/restart-apache.sh  #
#                              #
################################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ${SCRIPT_DIR}/stop-apache.sh
bash ${SCRIPT_DIR}/start-apache.sh
