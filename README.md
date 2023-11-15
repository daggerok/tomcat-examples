# tomcat-examples [![CI](https://github.com/daggerok/tomcat-examples/actions/workflows/ci.yml/badge.svg)](https://github.com/daggerok/tomcat-examples/actions/workflows/ci.yml)
Apache Tomcat examples

## Table of Content

* [simple app](#simple-app)
* [simple app in docker](#simple-app-in-docker)

## simple app

```bash
bash bin/apache-recreate.sh
bash bin/apache-restart.sh

./mvnw
source ./bin/.apache-env.sh
cp -Rf ./01-simple-app/target/*.war apache-tomcat-$TOMCAT_VERSION/webapps/ROOT.war

curl 0:8080/
```

## simple app in docker

```bash
./mvnw clean ; ./mvnw
docker rmi -f daggerok/02-simple-app-in-docker daggerok/apache-tomcat daggerok/apache-tomcat:9.0.37 daggerok/apache-tomcat:8
docker build -f ./02-simple-app-in-docker/Dockerfile -t daggerok/02-simple-app-in-docker ./01-simple-app
docker run --name 02-simple-app-in-docker --rm -it -p 8080:8080 daggerok/02-simple-app-in-docker
curl -v 0:8080/
docker stop 02-simple-app-in-docker
```
