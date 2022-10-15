FROM jaidchen/ubuntu-builder:main AS build

FROM jaidchen/ubuntu:main
COPY --from=build /build/vanitygen-plusplus/vanitygen++ $userHome
COPY --from=build /build/vanitygen-plusplus/base58prefix.txt $userHome
