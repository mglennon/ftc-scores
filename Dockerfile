FROM alpine:3.7
RUN apk --update add openjdk7-jre
WORKDIR /app
COPY app/ .
VOLUME ["/app/db", "/app/uploads"]
EXPOSE 80/tcp
ENTRYPOINT ["app/FIRST-Tech-Challenge-Live-UNIX"]