## Dockerizing node.js web application ##
FROM node:14.9.0

## Adding package.json file that describes app and its dependencies ##
ADD ./package-lock.json /tmp/

## Installing dependencies ##
RUN cd /tmp/
RUN npm install
RUN npm install express
RUN npm install -g pm2

ADD ./ /code/

## Copying node modules to the work directory ##
RUN cp -r /tmp/node_modules/ /code/

EXPOSE 3000

## Defining work directory ##
WORKDIR /code

ENTRYPOINT [ "pm2-docker", "web_server.js"]
