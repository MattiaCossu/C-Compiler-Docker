FROM gcc:13.2.0

WORKDIR /usr/src/app

COPY /app/main.c .

RUN gcc main.c -o main

CMD ["./main"]
