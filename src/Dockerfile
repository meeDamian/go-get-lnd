ARG GOVER

FROM golang:${GOVER}-alpine

RUN apk add --no-cache git

RUN mkdir -p /src/
COPY ./ /src/
WORKDIR /src/

RUN sed -i "s/GOVER/${GOVER}/g" go.mod \
    && sed -i "s/LNDVER/${LNDVER}/g" go.mod \
    && cat go.mod

RUN GO111MODULE=on go build .
