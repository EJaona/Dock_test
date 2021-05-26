const express = require('express');
const server = express()

server.get('/home', (req, res) => res.send('Hello docker'))

server.listen(3000, () => console.log('running on port 3k'))
