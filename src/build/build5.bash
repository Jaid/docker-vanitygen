#!/usr/bin/env bash
set -o errexit -o pipefail

cd /build/vanitygen
mkdir bin
while read -r -d $'\0' file; do
  cp --verbose --force "$file" bin
done < <(find . -maxdepth 1 -type f -executable -printf '%P\0')
ls -l --all --human-readable --color=always . bin
