#!/bin/bash
set -e

echo ">>>>> MAYAPY"
mayapy -m unittest discover -s workdir/tests -p "test_*.py" -v
