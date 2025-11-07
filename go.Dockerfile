FROM golang1.24.2-alpine3.22 as builder

WORKDIR /myapp

COPY ./gateway/main.go ./
COPY ./go.mod ./

RUN go mod tidy

RUN go build -o gateway /myapp/main.go

FROM alpine3.22.2

WORKDIR /myapp

COPY --from=builder ./myapp/goservice ./

CMD [ "/myapp/goservice" ]


