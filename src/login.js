const express = require('express');
const router = express.Router();
const jwt = require('jsonwebtoken');
const db = require('../db');

module.exports = function (io) {
  const login = io.of('/login');
  login.on('connection', function (socket) {
    socket.on('login-data', function(dataofClient){
      if(dataofClient.action.join == false) {
        db.query("SELECT * FROM "+
                  dataofClient.readById.table+
                  " WHERE "+
                  dataofClient.readById.tableId.name,
                  dataofClient.readById.tableId.data, function (err, result, fields) {
          let data = {
            response: 'success',
            data: result
          }
          socket.broadcast.emit(dataofClient.readById.response, data);
          socket.emit(dataofClient.readById.response, data);
        });
      } else {
        db.query("SELECT * FROM "+
                  dataofClient.readById.table+
                  " "+
                  dataofClient.readById.joinTable+
                  " "+
                  " WHERE "+
                  dataofClient.readById.tableId.name,
                  dataofClient.readById.tableId.data, function (err, result, fields) {
          if(dataofClient.action.table == 'login'){
            const accessToken = jwt.sign(dataofClient, process.env.ACCESS_TOKEN_SECRET);
            let data = {
              response: 'success',
              data: result,
              accessToken: accessToken,
            }
            socket.broadcast.emit(dataofClient.readById.response, data);
            socket.emit(dataofClient.readById.response, data);
          } else {
            let data = {
              response: 'success',
              data: result
            }
            socket.broadcast.emit(dataofClient.readById.response, data);
            socket.emit(dataofClient.readById.response, data);
          }
        });
      }
    })
  });
  return router;
};