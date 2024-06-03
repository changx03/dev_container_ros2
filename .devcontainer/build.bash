#!/bin/bash

# This script simplfies the build command
if [[ $# -gt 0 ]]; then
    echo "Build the following: $@"
    colcon build --symlink-install --packages-select $@
else
    echo "Build all packages..."
    colcon build --symlink-install
fi

echo "Source packages"
source ./install/setup.bash
