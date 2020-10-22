# BUILD ENV
FROM alpine:latest as build


# VARS
# Find out the latest version of the scoring system here:
#   https://github.com/FIRST-Tech-Challenge/scorekeeper/releases
ARG APP_VERSION=v2.0.0

# Download the scoring application and unpack it.
WORKDIR /tmp
RUN wget https://github.com/FIRST-Tech-Challenge/scorekeeper/releases/download/${APP_VERSION}/FIRST-Tech-Challenge-Live-${APP_VERSION}.zip \
    && unzip FIRST-Tech-Challenge-Live-${APP_VERSION}.zip \
    && rm FIRST-Tech-Challenge-Live-${APP_VERSION}.zip \
    && mv FIRST-Tech-Challenge-Live-${APP_VERSION}/ app


#FINAL IMAGE
FROM alpine:latest

# Specify your choice of JAVA
ARG JAVA=openjdk11-jre

LABEL version="1.1"
LABEL description="Docker Image of FIRST FTC Scoring System."
LABEL maintainer="mglennon@firstchesapeake.org"


RUN apk --update add ${JAVA}
WORKDIR /app
COPY --from=build /tmp/app/ .
WORKDIR /app/bin
EXPOSE 80/tcp
VOLUME ["/app/db", "/app/uploads", "/app/bin/logs"]
CMD ["./FTCLocal"]