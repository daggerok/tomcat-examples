# [tomcat-examples](https://github.com/daggerok/tomcat-examples)
apache tomcat examples...

## Table of Content

* [simple app](#simple-app)
* [simple app in docker](#simple-app-in-docker)

## simple app

```bash
bash bin/recreate-apache.sh
bash bin/restart-apache.sh

./mvnw
source ./bin/.apache-env.sh
cp -Rf ./01-simple-app/target/*.war apache-tomcat-$TOMCAT_8_VERSION/webapps/ROOT.war

curl 0:8080/
```

## simple app in docker

```bash
docker build -f ./02-simple-app-in-docker/Dockerfile -t daggerok/02-simple-app-in-docker ./01-simple-app
docker run --name 02-simple-app-in-docker --rm -it -p 8080:8080 daggerok/02-simple-app-in-docker
curl 0:8080/
docker stop 02-simple-app-in-docker
```
