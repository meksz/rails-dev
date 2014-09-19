#!/bin/bash

# docker run --name toy_app -p 3000:3000 -d toy_app /bin/bash 
VOLUME="/home/umut/projects/toy_app/shared/rails-src:/src"

#sudo docker run -d -p 127.0.0.1:3000:3000 -v $VOLUME --name web --link db:db meksz/rails:toy_app /bin/bash
sudo docker run -d -t -i -p 3000:3000 -v $VOLUME --name web --link db:db meksz/rails:toy_app /bin/bash
