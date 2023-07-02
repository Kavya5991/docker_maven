#!/bin/bash
#exit immediately if any command exits with a non-zero status" option.
set -e
./bin/linux-x86-64/sonar.sh start
# Keep the container running
tail -f /dev/null
