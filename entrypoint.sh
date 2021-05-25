#!/bin/sh -l

npm install
npm start
npx newman run docterTest.postman_collection.json
echo 'Enoka is cool'
