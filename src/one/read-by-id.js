const db = require('../../db');
const jwt = require('jsonwebtoken');
require('dotenv').config()
module.exports = function (socket, dataofClient) {
  if(dataofClient.action.join == false) {
    db.query("SELECT * FROM "+
              dataofClient.read.table+
              " WHERE "+
              dataofClient.read.tableId.name,
              dataofClient.read.tableId.data, function (err, result, fields) {
      let data = {
        response: 'success',
        data: result
      }
      socket.broadcast.emit(dataofClient.read.response, data);
      socket.emit(dataofClient.read.response, data);
    });
  } else {
    db.query("SELECT * FROM "+
              dataofClient.read.table+
              " "+
              dataofClient.read.joinTable+
              " "+
              " WHERE "+
              dataofClient.read.tableId.name,
              dataofClient.read.tableId.data, function (err, result, fields) {
      if(dataofClient.action.table == 'login'){
        const accessToken = jwt.sign(dataofClient, process.env.ACCESS_TOKEN_SECRET);
        let data = {
          response: 'success',
          data: result,
          accessToken: accessToken,
        }
        socket.broadcast.emit(dataofClient.read.response, data);
        socket.emit(dataofClient.read.response, data);
      } else {
        let data = {
          response: 'success',
          data: result
        }
        socket.broadcast.emit(dataofClient.read.response, data);
        socket.emit(dataofClient.read.response, data);
      }
    });
  }
  
};