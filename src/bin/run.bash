#!/usr/bin/env bash
set -o errexit

: "${amount:=1}"
: "${currency:=BTC}"
: "${prefix:=1Test}"

outputFolder=/results/$currency/$prefix
outputFile=$outputFolder/catches.csv
logFile=$outputFolder/vanitygen.log

if [[ -f $outputFile ]]; then
  printf '\n-------------------------------------------------------------------------------\n' >>$outputFile
else
  mkdir --parents $outputFolder
fi
./vanitygen++ -v -C "$currency" "$prefix" -o $outputFile |& tee --append $logFile
