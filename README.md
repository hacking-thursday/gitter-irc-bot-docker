# Dockerized Gitter/Irc forwarder bot.

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/chihchun/gitter-irc-bot/)
[![](https://badge.imagelayers.io/chihchun/hubot-slack:latest.svg)](https://imagelayers.io/?images=chihchun/gitter-irc-bot:latest 'Get your own badge on imagelayers.io')
[![Join the chat at https://gitter.im/chihchun/gitter-irc-bot-docker](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/chihchun/hubot-slack-docker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

```
docker pull chihchun/gitter-irc-bot-docker
docker run --rm \
    -e GITTERBOT_APIKEY=[API] \
    -e GITTERBOT_GITTER_ROOM=hacking-thursday  \
    -e GITTERBOT_IRC_CHANNEL=#h4 \
    -e GITTERBOT_IRC_NICK=h4bot \
    -e GITTERBOT_IRC_SERVER=irc.freenode.net \
    gitter-irc-proxy  \
    node_modules/gitter-irc-bot/bin.js
```

* `GITTERBOT_APIKEY`  Log in with your github/gitter bot [here](https://developer.gitter.im/apps) and take the `personal access token`. **Important:** This shouldn't be your personal GitHub account, but a designated bot account.
* `GITTERBOT_GITTER_ROOM` The Gitter Room, e.g. `datproject/discussions`
* `GITTERBOT_IRC_CHANNEL` IRC Channel name, e.g. `#dat`
* `GITTERBOT_IRC_NICK` The IRC user nick of the bot

The following options are optional:
* `GITTERBOT_IRC_SERVER` IRC Server name, e.g. `irc.freenode.net`
* `GITTERBOT_IRC_OPTS` JSON string with options passed to [node-irc](https://node-irc.readthedocs.org/en/latest/API.html)

Upstream: https://github.com/finnp/gitter-irc-bot/
