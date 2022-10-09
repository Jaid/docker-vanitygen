FROM ubuntu-builder-dev AS build
# FROM jaidchen/ubuntu-builder:main AS build

FROM ubuntu-dev
# FROM jaidchen/ubuntu:main
COPY --from=build $userHome $userHome
