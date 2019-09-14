ARG GOVER

FROM golang:${GOVER}-alpine

RUN apk add --no-cache git

RUN GO111MODULE=on go get github.com/lightningnetwork/lnd@v0.7.1-beta
