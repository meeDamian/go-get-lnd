ARG GOVER

FROM golang:${GOVER}-alpine

RUN apk add --no-cache git

RUN mkdir -p /src/
COPY ./ /src/
WORKDIR /src/

ARG GOVER
ARG LNDVER
RUN sed -i  -e "s/GOVER/${GOVER}/g"  -e "s/LNDVER/${LNDVER}/g"  go.mod \
    && cat go.mod

RUN GO111MODULE=on go build .
