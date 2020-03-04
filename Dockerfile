FROM node:13.2.0-slim
COPY /pkg /pkg
COPY /site /site
WORKDIR /site
CMD npm install && npm run serve
