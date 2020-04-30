const express = require('express');
// TODO: Node.js express
const app = express();

const bodyParser = require('body-parser');
const cors = require('cors');
const socket = require('socket.io');
const fs = require('fs');
const path = require('path');
const https = require('https');

// TODO: Setup Port
// const port = 443; //! for production;
const port = 3000; //! for development;

// const server = https.createServer({
//   key: fs.readFileSync('/etc/letsencrypt/live/jayapradhagunawan.online/privkey.pem', 'utf8'),
//   cert: fs.readFileSync('/etc/letsencrypt/live/jayapradhagunawan.online/cert.pem', 'utf8'),
//   ca: fs.readFileSync('/etc/letsencrypt/live/jayapradhagunawan.online/chain.pem', 'utf8')
// }, app)
// .listen(port, function () {
//   console.log('Example app listening on port 3000! Go to https://localhost:3000/')
// })

// TODO: Setup Server
const server = app.listen(port, () => console.log(`Hello world app listening on port ${port}!`));

// TODO: Automatically allow cross-origin requests
app.use(cors());

// TODO: for parsing application/json
app.use(bodyParser.json()); 

// TODO: for parsing application/xwww-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// TODO: for parse an HTML body into a string
app.use(bodyParser.text({ type: 'text/html' }))

// TODO: for parsing buffer raw
app.use(bodyParser.raw());

// TODO: Static file for HTML
app.use(express.static('public'));
app.use('/image', express.static('image'));
app.use('/data-offline', express.static('data-offline'));

require('dotenv').config()
// TODO: Socket Setup
app.io = socket(server);

// TODO: Require for setup socket route
// TODO: Routes Socket
// !PRIVILEGE
let entryData = require('./src/entry')(app.io);
app.use('/entry-data', entryData);

let login = require('./src/login')(app.io);
app.use('/login', login);
