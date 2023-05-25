#!/usr/bin/env bash
set -o errexit -o pipefail

repoSha=303df78232765713bbb459ffb0d50a930e4a7304

downloadGithubArchive 10gic/vanitygen-plusplus /build/vanitygen sha $repoSha
