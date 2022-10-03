FROM jaidchen/ubuntu:main

ARG repoSha=303df78232765713bbb459ffb0d50a930e4a7304
ENV repoSha=${repoSha}

RUN mkdir /results
RUN chown $userId:$groupId /results
RUN apt-get --option Acquire::Retries=60 --option Acquire::http::Timeout=180 --yes update
RUN apt-get --option Acquire::Retries=60 --option Acquire::http::Timeout=180 --yes install curl build-essential libssl-dev libpcre3-dev libcurl4-openssl-dev
USER $userId:$groupId
RUN curl --location --fail --show-error https://github.com/10gic/vanitygen-plusplus/archive/$repoSha.tar.gz --output vanitygen-plusplus.tar.gz
RUN tar -x -z -f vanitygen-plusplus.tar.gz
RUN mv vanitygen-plusplus-$repoSha vanitygen-plusplus
RUN rm vanitygen-plusplus.tar.gz
RUN make --directory vanitygen-plusplus
RUN mv vanitygen-plusplus/vanitygen++ .
RUN mv vanitygen-plusplus/base58prefix.txt .
RUN rm -rf vanitygen-plusplus
USER 0:0
RUN apt-get --option Acquire::Retries=60 --option Acquire::http::Timeout=180 --yes remove curl build-essential libssl-dev libpcre3-dev libcurl4-openssl-dev
USER $userId:$groupId
ADD ./bin/run.bash ./run

VOLUME /results
ENTRYPOINT bash run