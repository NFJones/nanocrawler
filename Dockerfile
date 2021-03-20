FROM node:latest

COPY . /nanocrawler
WORKDIR /nanocrawler
RUN yarn install --ignore-engines
RUN mkdir /opt/nanocrawler
# ENTRYPOINT /bin/bash /nanocrawler/entrypoint.sh
