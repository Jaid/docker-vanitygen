#!/usr/bin/env bash
set -o errexit -o pipefail

cd /build/vanitygen
make all
