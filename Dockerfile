FROM node:10-alpine

WORKDIR /usr/src/app

ARG DIR
ENV DIR $DIR

COPY ${DIR}/package*.json ./
RUN ls -l

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY ./${DIR} .
RUN ls -l

ARG FILE
ENV FILE $FILE

EXPOSE 8080
CMD [ "node", ${FILE}".js" ]
