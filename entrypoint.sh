#!/bin/bash
set -e

echo ">>>>> ENVIRONMENT VARIABLES"
env

echo ">>>>> MAYAPY"
mayapy -m unittest discover -s workdir/tests -p "test_*.py" -v
