#!/bin/bash
set -e
echo ">>>>> MAYAPY"
mayapy -m unittest discover -s /repo -p "test_*.py" -v
