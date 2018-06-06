FROM node:carbon

# Set versions and folders used
ENV  \
# TINI_VERSION='v0.13.0' \
# NPM_VERSION='v3.10' \
  USER_NAME='node' \
  APP_FOLDER='/usr/src/app'

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./usr/src/app/package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY ./usr/src/app .

EXPOSE 8080

USER node

CMD [ "npm", "start" ]