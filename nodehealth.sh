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
set -e # exit the script when an error occurs
set -o pipefail

df -h

free -g

nproc

ps -ef | grep amazon

ps -ef | grep amazon | awk -F" " '{print $2}'