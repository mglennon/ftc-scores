#!/usr/bin/sh
git pull github master
docker build -t ftc-scores .