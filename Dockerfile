FROM node:10
USER root


COPY . .

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
RUN echo ${{ npx newman run docterTest.postman_collecton.json }}

