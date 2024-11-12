#!/bin/bash

######################

# Author: Shahnawaz
# Date: 13/11/2024
#
# This script outputs the node health.
#
# Version: v1
#######################

set -x # debug mode

df -h

free -g

nproc