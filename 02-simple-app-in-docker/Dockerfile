# docker build -f ./02-simple-app-in-docker/Dockerfile -t daggerok/02-simple-app-in-docker ./01-simple-app
# docker run --name 02-simple-app-in-docker --rm -it -p 8080:8080 daggerok/02-simple-app-in-docker
# curl 0:8080/
# docker stop 02-simple-app-in-docker

FROM daggerok/apache-tomcat:8
LABEL MAINTAINER='Maksim Kostromin <daggerok@gmail.com>'
HEALTHCHECK --start-period=1s                                 \
            --interval=1s                                     \
            --timeout=5s                                      \
            --retries=33                                      \
        CMD wget -q --spider http://127.0.0.1:8080/ || exit 1
USER tomcat
##NOTE: this will work in bash, but not in ash...
#RUN rm -rf ${TOMCAT_HOME}/webapps/{ROOT*,docs,examples,host-manager,manager}
RUN rm -rf ${TOMCAT_HOME}/webapps/ROOT          \
 && rm -rf ${TOMCAT_HOME}/webapps/docs          \
 && rm -rf ${TOMCAT_HOME}/webapps/examples      \
 && rm -rf ${TOMCAT_HOME}/webapps/host-manager  \
 && rm -rf ${TOMCAT_HOME}/webapps/manager
COPY --chown=tomcat ./target/*.war ${TOMCAT_HOME}/webapps/ROOT.war
