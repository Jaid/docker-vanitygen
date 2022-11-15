#!/usr/bin/env bash
set -o errexit -o pipefail

declare -i pid
pid=$(pgrep vanitygen++)
declare -i cpuUsed
cpuUsed=$(ps --pid "$pid" -o pcpu h)
if [[ $cpuUsed -gt 0 ]]; then
  exit 0
else
  exit 1
fi
