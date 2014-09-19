#!/bin/sh

docker run -d -p 3306:3306 --name db -v /home/umut/test/toy_app/shared/mysql:/var/lib/mysql meksz/mysql
