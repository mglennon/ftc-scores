FROM alpine:3.7
LABEL version="1.0"
LABEL description="Docker Image of FIRST FTC Scoring System."
LABEL maintainer="mglennon@firstchesapeake.org"
RUN apk --update add openjdk8-jre
WORKDIR /app
COPY app/ .
WORKDIR /app/bin
EXPOSE 80/tcp
VOLUME ["/app/db", "/app/uploads", "/app/bin/logs"]
CMD ["./FTCLocal"]