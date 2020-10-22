FROM alpine:3.7
LABEL version="1.0"
LABEL description="Docker Image of FIRST FTC Scoring System."
LABEL maintainer="mglennon@firstchesapeake.org"
RUN apk --update add openjdk7-jre
WORKDIR /app
COPY app/ .
EXPOSE 80/tcp
VOLUME ["/app/db", "/app/uploads"]
CMD ["/app/FIRST-Tech-Challenge-Live-UNIX"]