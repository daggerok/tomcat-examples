# docker build -f ./02-simple-app-in-docker/Dockerfile -t daggerok/02-simple-app-in-docker ./01-simple-app
# docker run --name 02-simple-app-in-docker --rm -it -p 8080:8080 daggerok/02-simple-app-in-docker
# curl 0:8080/
# docker stop 02-simple-app-in-docker

FROM daggerok/apache-tomcat:8.5.57
#USER tomcat
RUN rm -rf ${TOMCAT_HOME}/webapps/ROOT
#RUN rm -rf ${TOMCAT_HOME}/webapps/ROOT*
COPY --chown=tomcat ./target/*.war ${TOMCAT_HOME}/webapps/ROOT.war
