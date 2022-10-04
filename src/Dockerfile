FROM jaidchen/ubuntu:main AS build

ARG repoSha=303df78232765713bbb459ffb0d50a930e4a7304
ENV repoSha=$repoSha

RUN apt-get --option Acquire::Retries=60 --option Acquire::http::Timeout=180 --yes update
RUN apt-get --option Acquire::Retries=60 --option Acquire::http::Timeout=180 --yes install curl
RUN apt-get --option Acquire::Retries=60 --option Acquire::http::Timeout=180 --yes install build-essential libssl-dev libpcre3-dev libcurl4-openssl-dev
RUN curl --location --fail --show-error https://github.com/10gic/vanitygen-plusplus/archive/$repoSha.tar.gz --output vanitygen-plusplus.tar.gz
RUN tar -x -z -f vanitygen-plusplus.tar.gz
RUN mv vanitygen-plusplus-$repoSha vanitygen-plusplus
RUN make --directory vanitygen-plusplus
RUN mv vanitygen-plusplus/vanitygen++ .
RUN mv vanitygen-plusplus/base58prefix.txt .
RUN rm -rf vanitygen-plusplus
RUN rm vanitygen-plusplus.tar.gz
ADD --chown=$userId:$groupId content .

FROM jaidchen/ubuntu:main

RUN mkdir /results
RUN chown $userId:$groupId /results
COPY --chown=$userId:$groupId --from=build /$userName /$userName
VOLUME /results