#!/usr/bin/env bash

userId=${userId:-1000}
groupId=${groupId:-1000}

installPackagesMinified libssl-dev libpcre3-dev

mkdir /results
chown "$userId:$groupId" /results
