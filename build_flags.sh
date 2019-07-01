#!/bin/bash

export ENVIRONMENT="$(hostname | awk -F '[.-]' '{print $1}' | sed 's/[0-9]//g')"

if [[ "$ENVIRONMENT" == "tigergpu" ]]; then
  export PYTHON_BIN_PATH="/usr/licensed/anaconda3/5.2.0/bin/python"
  export PIP_COMMAND="pip"
  export TF_PKG_DIR="/home/andrewor/tensorflow_estimator_pkg"
elif [[ "$ENVIRONMENT" == "visiongpu" ]]; then
  export PYTHON_BIN_PATH="/usr/bin/python3"
  export PIP_COMMAND="pip"
  export TF_PKG_DIR="/home/andrewor/workspace/tensorflow_estimator_pkg"
elif [[ "$ENVIRONMENT" == "ns" ]]; then
  export PYTHON_BIN_PATH="/usr/licensed/anaconda3/5.2.0/bin/python3.6"
  export PIP_COMMAND="/usr/licensed/anaconda3/5.2.0/bin/pip"
  export TF_PKG_DIR="/home/andrewor/tensorflow_estimator_pkg"
elif [[ "$ENVIRONMENT" == "snsgpu" ]]; then
  export PYTHON_BIN_PATH="/usr/bin/python3"
  export PIP_COMMAND="pip3"
  export TF_PKG_DIR="/home/andrew/Documents/dev/tensorflow_estimator_pkg"
else
  echo "ERROR: Unknown environment '$ENVIRONMENT'"
  exit 1
fi

