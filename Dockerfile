FROM openjdk:8-jre-alpine

ARG SERVICENAME="unknown"
ARG VERSION="unknown"
ARG WORKDIR="/usr/lib/lucene/${SERVICENAME}"

COPY target/${SERVICENAME}-${VERSION}.jar ${WORKDIR}/app.jar

WORKDIR ${WORKDIR}

ENTRYPOINT java $JAVA_OPTIONS -jar app.jar

