# syntax=docker/dockerfile:1

ARG builderTag=4.5.0
ARG runnerTag=4.1.1

FROM jaidchen/builder:$builderTag AS build

FROM jaidchen/runner:$runnerTag

COPY --from=build /build/vanitygen/bin $userHome/bin
COPY --from=build /build/vanitygen/base58prefix.txt $userHome
