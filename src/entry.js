const express = require('express');
const router = express.Router();
const jwt = require('jsonwebtoken');
const addofTableOne = require('./one/add');
const readofTableOne = require('./one/read');
const readByIdofTableOne = require('./one/read-by-id');
const updateTableOne = require('./one/update');
const deleteTableOne = require('./one/delete');
const addofTableThree = require('./three/add');

module.exports = function (io) {
  const entry = io.of('/entry');
  entry.use((socket, next) => {
    const authHeader = socket.handshake.query.token;
    const token = authHeader && authHeader.split(' ')[1]
    if(token == null) return next(new Error('authentication error'));
    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, function(err, res) {
      if (err) {
        return next(new Error('authentication error'));
      }
      next();
    })
  });
  entry.on('connection', function (socket) {
    socket.on('entry-data', function(dataofClient){
      if(dataofClient.numberOfTable == 1) {
        if(dataofClient.action.table == 'read'){
          readofTableOne(socket, dataofClient)
        } else if(dataofClient.action.table == 'read-by-id'){
          readByIdofTableOne(socket, dataofClient)
        } else if(dataofClient.action.table == 'add'){
          addofTableOne(socket, dataofClient)
        } else if(dataofClient.action.table == 'update'){
          updateTableOne(socket, dataofClient)
        } else if(dataofClient.action.table == 'delete'){
          deleteTableOne(socket, dataofClient)
        } else if(dataofClient.action.table == 'login'){
          readByIdofTableOne(socket, dataofClient)
        }
      } else if(dataofClient.numberOfTable == 3) {
        if(dataofClient.action.table == 'add'){
          addofTableThree(socket, dataofClient)
        }
      }
    })
  });
  return router;
};