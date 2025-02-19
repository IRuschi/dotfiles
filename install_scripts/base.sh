#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


${SCRIPT_DIR}/base/python.sh
${SCRIPT_DIR}/base/clang.sh
${SCRIPT_DIR}/base/c++.sh
${SCRIPT_DIR}/base/dotnet.sh
${SCRIPT_DIR}/base/rust.sh
${SCRIPT_DIR}/base/node.sh
${SCRIPT_DIR}/base/nvim.sh
