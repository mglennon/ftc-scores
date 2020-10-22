# ftc-scores
Docker Image for ftc-scores

## Introduction
This is a Docker Image for the [FIRST](https://firstinspires.org) FTC Competition Scoring System.
Created to facilitate Semi-Remote Play.

Currently Running the 2020-2021 Season BETA (Version 2.0.0).
The version will be updated to the latest official version once it's released.
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
