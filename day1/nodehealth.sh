#!/bin/bash
#############
## Script to check the node health
## Author: Ragupathy
## date: 24th nov 2023
## Purpose: Outputs the node health
## version: 1
##############

set -x  # debug mode
set -e  # exit the script when there is an error
set -o pipefail # exit when pipe is used and there is an error

# disk usage
echo "Print the disk space"

df -h

# memory status
echo "Print the memory status"
free -g

# CPU status
echo "Print the CPU status"
nproc

# process and pipe

ps -ef | grep -i ubuntu | awk -F" " '{print $2}'
