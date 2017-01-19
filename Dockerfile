FROM golang:1.6
MAINTAINER Octoblu, Inc. <docker@octoblu.com>

WORKDIR /go/src/github.com/octoblu/brute-dns
COPY . /go/src/github.com/octoblu/brute-dns

RUN env CGO_ENABLED=0 go build -o brute-dns -a -ldflags '-s' .

CMD ["./brute-dns"]
