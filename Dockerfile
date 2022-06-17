ARG GO_VERSION=1.18

FROM golang:${GO_VERSION}-alpine

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download && go mod verify

EXPOSE 80
