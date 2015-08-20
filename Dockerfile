FROM node:latest
MAINTAINER Rex Tsai <rex.cc.tsai@gmail.com>

WORKDIR /tmp
RUN npm install gitter-irc-bot && npm cache clear
CMD [ "node_modules/gitter-irc-bot/bin.js" ]
