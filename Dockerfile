FROM alpine:3.7
LABEL version="1.0"
LABEL description="Docker Image of FIRST FTC Scoring System."
LABEL maintainer="mglennon@firstchesapeake.org"
RUN apk --update add openjdk8-jre
WORKDIR /app
COPY app/ .
COPY start.sh .
EXPOSE 8080/tcp
VOLUME ["/app/db", "/app/uploads", "/app/logs"]
CMD ["./start.sh"]