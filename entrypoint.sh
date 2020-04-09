#!/bin/bash
set -e

env | grep "$PWD"
env | grep "$MAYA_LOCATION"
#export MAYA_LOCATION="/usr/autodesk/maya/"
#mayapy -m unittest discover -s workdir/tests -p "test_*.py" -v
