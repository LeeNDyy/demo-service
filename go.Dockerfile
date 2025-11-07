# Stage 1

FROM golang:1.24.2 as builder

WORKDIR /myapp

COPY ./gateway/main.go .
COPY ./go.mod .

RUN go mod tidy

RUN go build -o gateway /myapp/main.go

# Stage 2

FROM alpine:3.22

WORKDIR /myapp

COPY --from=builder /myapp/goservice .

CMD [ "/myapp/goservice" ]


