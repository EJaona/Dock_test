FROM node:10
USER root


COPY . .

RUN npm install

EXPOSE 3000
RUN npm start
RUN echo ${npm run newman}



