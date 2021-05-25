FROM node:10
USER root


COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "start", "newman", "run"]
