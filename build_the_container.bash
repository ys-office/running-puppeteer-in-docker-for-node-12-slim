#! /bin/bash -x

docker build --no-cache -t puppeteer-chrome-linux .

exit ${?}
