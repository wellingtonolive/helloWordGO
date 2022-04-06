FROM golang:1.17 AS build

WORKDIR /app

COPY . ./

RUN go build -o /helloWord

FROM scratch

COPY --from=build /helloWord /helloWord

ENTRYPOINT [ "/helloWord" ]
