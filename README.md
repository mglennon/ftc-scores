# ftc-scores
Docker Image for ftc-scores

## Introduction
This is a Docker Image for the [FIRST](https://firstinspires.org) FTC Competition Scoring System.
Created to facilitate Semi-Remote Play.

Currently Running the 2020-2021 Season (See Changes below for current version).
The Docker Build will download the given version from the official FTC Github and build.

In Order to function, you'll need to launch the software locally, create a new user and a test event, and then copy your local db/ directory files
to the volume path you've configured for the db files.

To download the software itself, visit their github.
https://github.com/FIRST-Tech-Challenge/scorekeeper/

## VOLUMES
Description | Container Path
---- | ----
DB Files | /app/db
Logs | /app/bin/logs
Uploads | /app/uploads

## EXPOSE PORTS
Description | Port
---- | ----
HTTP Server | 80/tcp

## CHANGES
Date | Description
---- | ----
2020-11-08 | Updated to version 2.1.0
2020-10-22 | Switched the base image to Debian to solve Alpine incompatibility with MatchMaker. (Compiler mismatch.)