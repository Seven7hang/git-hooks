FROM node:10-alpine

ARG DIR
ENV DIR ${DIR}

WORKDIR /usr/src/app/${DIR}

COPY ${DIR}/package*.json ./

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY ./${DIR} .

ARG FILE
ENV FILE ${FILE}

EXPOSE 8080
CMD [ "node", "server.js" ]
