FROM eclipse-temurin:17.0.5_8-jre

ENV GOSU_VERSION 1.16
RUN curl -sL https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture) -o /usr/local/bin/gosu && \
    chmod +x /usr/local/bin/gosu

EXPOSE 25565/tcp
WORKDIR /app
CMD []

ENTRYPOINT ["/run.sh", "/multipaper-1.18.2-11.jar"]

ADD --chown=nobody:nogroup run.sh https://multipaper.io/api/v2/projects/multipaper/versions/1.18.2/builds/11/downloads/multipaper-1.18.2-11.jar /

