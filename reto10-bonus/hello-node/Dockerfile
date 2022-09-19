# load node version
FROM node:erbium-alpine

# create app dir
WORKDIR /opt/hello-node

# install dependencies
COPY package*.json ./
RUN npm install

# install mysql-client to validate db status
RUN apk update && \
apk add mysql-client && \
rm -f /var/cache/apk/*

# copy wait-fo 
COPY ./scripts ./scripts

#bundle only the app
COPY ./app.js .

EXPOSE 9443
CMD ["npm", "start"]
