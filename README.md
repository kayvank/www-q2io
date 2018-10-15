www-q2io
==============
An in progress framework for publishing Website as an [nginx](https://www.nginx.com/) [docker ](https://www.docker.com) image <br>

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
Make sure you have the following installed:
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [gnue make](https://www.gnu.org/software/make/)
- [direnv](https://direnv.net/)

### Installing

``` 
npm install -g gulp
git clone git@github.com:kayvank/www-q2io.git
```

To build and publish the docker image make sure the following environment variables are set

```
export DOCKER_USER=*******
export DOCKER_PASS=*******
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
 
