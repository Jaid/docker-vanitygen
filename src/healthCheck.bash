#!/usr/bin/env bash

declare -i pid
declare -i cpuUsed
pid=$(pgrep --uid "$userId" '^vanitygen\+\+')
cpuUsed=$(ps --pid "$pid" -o pcpu h)
if [[ $cpuUsed -lt 10 ]]; then
  exit 1
fi
