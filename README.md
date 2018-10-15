www-q2io
==============
A website publishing CI/CD solution.

## Description
This projects wraps [nginx](https://www.nginx.com/) configurations, website related code in a [docker ](https://www.docker.com) image.  The docker image by be run from any platform supporting docker.<br>

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites
Make sure you have the following installed:
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [gnu make](https://www.gnu.org/software/make/)
- [direnv](https://direnv.net/)

### Installing

``` 
npm install -g gulp
git clone git@github.com:kayvank/www-q2io.git
```

To build and publish the docker image make sure the following environment variables are set

```
##
## Project required environment variables
##

## required for docker
export DOCKER_USER=******
export DOCKER_PASS=******

## required for local build
export CIRCLE_JOB='www-q2io' ## this is the project name
export CIRCLE_BUILD_NUM=dev-build-`date +%s`
```

You might consider using [direnv](https://direnv.net/) for managing environment variables across projects.
To publish the image to dockerhub:

```
make  ## publishes the docker image to dockerhub
```

### Running the project

 ```
docker run -p80:80 kayvank/www-q2io:latest
```

### Build
CI/CD is with [circleci](https://circleci.com/gh/kayvank/www-q2io/2)

## License
This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details

### References
- [gulpjs](https://gulpjs.com/)
- [docker](www.docker.com)
- [gnue make](https://www.gnu.org/software/make/)
- [direnv](https://direnv.net/)
 
