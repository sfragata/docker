Node js with forever
==============================

This dockerfile installs Nodejs and Forever (https://github.com/foreverjs/forever)

To run you need to overwrite the default command and exposes a port

Usage:
```bash
docker run -d -t -p PORT:PORT -v [PATH_APP_HOST]:/opt/nodejs --entrypoint start.sh sfragata/nodejs [main script name without .js]
```
Ex:
```bash
docker run -d -t -p 3000:3000 -v /home/home/applications/weather-node.js:/opt/nodejs --name weather-node --entrypoint start.sh sfragata/nodejs weather.js
```
