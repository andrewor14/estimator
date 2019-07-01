#!/bin/bash

source build_flags.sh

./configure

echo "Done configuring. Now running bazel build."

bazel build --python_path="$PYTHON_BIN_PATH" //tensorflow_estimator/tools/pip_package:build_pip_package

