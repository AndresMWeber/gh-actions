#!/bin/bash
set -e

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo ">>>>> MAYAPY"
mayapy -m unittest discover -s /repo -p "test_*.py" -v
