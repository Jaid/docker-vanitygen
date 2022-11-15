#!/usr/bin/env bash

declare -i pid
pid=$(pgrep vanitygen++)
declare -i cpuUsed
cpuUsed=$(ps --pid "$pid" -o pcpu h)
if [[ $cpuUsed -lt 10 ]]; then
  exit 1
fi
