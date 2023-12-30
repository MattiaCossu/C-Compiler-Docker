
FROM alpine:3.18.4 as builder

RUN apk update && apk add gcc

WORKDIR /usr/src/app

COPY /app/main.c .

RUN gcc main.c -o main

FROM alpine:3.18.4

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/main /usr/src/app/main

CMD ["/usr/src/app/main"]
