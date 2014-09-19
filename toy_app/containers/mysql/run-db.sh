#!/bin/sh

VOLUME1="/home/umut/projects/toy_app/shared/mysql:/var/lib/mysql"
VOLUME2="/home/umut/projects/toy_app/shared/mysql-backup:/mysql-backup"

sudo docker run -d -i -t -p 3306:3306 --name db -v $VOLUME1 -v $VOLUME2 meksz/mysql:toy_app

#################################################################################
# If you want to connect from run-client.sh, use the following
#sudo docker run -d -P --name db -v $VOLUME1 -v $VOLUME2 meksz/mysql:toy_app
