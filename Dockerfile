FROM maven:3-jdk-8

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node


ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 7.5.0

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash
RUN apt-get install nodejs
