FROM golang:alpine

RUN apk update && apk add make git build-base curl autoconf automake libtool

RUN git clone https://github.com/google/protobuf -b v3.4.1 --depth 1

RUN cd protobuf && ./autogen.sh && ./configure && make && make install && cd .. && rm -rf protobuf
