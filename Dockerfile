FROM node:10-alpine

ARG DIR
ENV DIR $DIR
RUN echo 'DIR: '${DIR}
RUN cd ${DIR}

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

ARG FILE
ENV FILE $FILE
RUN echo 'FILE: '${FILE}'.js'

EXPOSE 8080
CMD [ "node", ${FILE}".js" ]
