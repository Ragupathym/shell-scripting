#!/bin/bash
#############
## Script to check the node health
## Author: Ragupathy
## date: 24th nov 2023
## Purpose: Outputs the node health
## version: 1
##############

set -x  # debug mode

# disk usage
echo "Print the disk space"
df -h
echo "Print the memory status"
free -g
echo "Print the CPU status"
nproc 
