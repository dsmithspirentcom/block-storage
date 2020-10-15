#!/usr/bin/env bash

# Wrapper for run-tests.sh with logging enabled

# Check script is running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#./run-tests.sh |& tee -a test_log.txt
./run-tests.sh |& tee test_log.txt
