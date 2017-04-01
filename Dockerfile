FROM golang:1.8

ENV DOCKER_VERSION 17.03.0-ce

RUN curl -fSL -o /tmp/docker-${DOCKER_VERSION}.tgz https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz \
 && tar -xz -C /tmp -f /tmp/docker-${DOCKER_VERSION}.tgz \
 && mv /tmp/docker/* /usr/bin \
 && curl -fSL https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
 && chmod +x /usr/local/bin/docker-compose \
 && mkdir -p /usr/src/app

VOLUME ["/usr/src/app"]
