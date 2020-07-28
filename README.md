# [tomcat-examples](https://github.com/daggerok/tomcat-examples)
apache tomcat examples...

## simple

```bash
bash bin/recreate-apache.sh
bash bin/restart-apache.sh

./mvnw
source ./bin/.apache-env.sh
cp -Rf ./01-simple/target/*.war apache-tomcat-$TOMCAT_8_VERSION/webapps/ROOT.war

curl 0:8080/
```
