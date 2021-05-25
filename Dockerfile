# Container image that runs your code
FROM node:10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . .

RUN npm install

CMD [ "npm", "start" ]