#!/usr/bin/env bash

################################
#                              #
#  bash bin/apache-restart.sh  #
#                              #
################################

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source ${SCRIPT_DIR}/.apache-env.sh

bash ${SCRIPT_DIR}/apache-stop.sh
bash ${SCRIPT_DIR}/apache-start.sh
