## Node + SASS + Compass + Grunt + Gulp
This repository contains all the necessary packages to compile a frontend project.
It includes an adjusted locales setting to support UTF-8 encoding.

### Base Docker Image

* [node](https://registry.hub.docker.com/_/node/)

### Usage

    docker run -it --rm -v /your/input:/data tleguijt/frontend gulp
    
    or 

    docker run -it --rm -v /your/input:/data tleguijt/frontend grunt
    