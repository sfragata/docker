Node js with forever
==============================

This dockerfile installs Nodejs and Forever (https://github.com/foreverjs/forever)

To run you need to overwrite the default command and exposes a port

Ex:

docker run -d -t -p PORT:PORT -v [PATH_APP_HOST]:/opt/nodejs --entrypoint start.sh sfragata/nodejs [main script name without .js]