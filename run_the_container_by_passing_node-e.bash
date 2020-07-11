#! /bin/bash

[ ${#} -eq 1 ] || { echo "Usage ${0} <yourscript.js>" ; exit ;}

docker run -i --rm --cap-add=SYS_ADMIN \
   --name puppeteer-chrome puppeteer-chrome-linux \
   node -e "$(cat ${1})"

exit ${?}
