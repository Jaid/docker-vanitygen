#!/usr/bin/env bash

pid=$(pgrep --uid "$userId" --exact vanitygen++)
cpuUsed=$(ps --pid "$pid" -o pcpu h)
if [[ $cpuUsed -lt 10 ]]; then
  exit 1
fi
