ARG GOVER

FROM golang:${GOVER}-alpine

RUN apk add --no-cache git

ARG LNDVER

RUN GO111MODULE=on go get github.com/lightningnetwork/lnd@${LNDVER}
