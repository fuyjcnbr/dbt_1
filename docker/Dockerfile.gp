FROM ubuntu:22.04

RUN apt-get update
RUN apt-get -y install apt-utils gcc git

RUN git config --global http.version HTTP/1.1
RUN git clone https://github.com/arenadata/gpdb --depth 1
RUN cd gpdb
RUN git fetch --unshallow



