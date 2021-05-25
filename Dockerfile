FROM node:10
USER root

# Create app directory
WORKDIR /src/api

#Copying all of the app files over
# COPY ../package*.json ./
# COPY ../ .
COPY . .

#Running npm install now that we have package.json and package-lock.json copied over
RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 3000

ENV DB_HOST=$DB_HOST

CMD [ "npm", "start" ]
