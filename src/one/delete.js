const db = require('../../db');
const readofTableOne = require('./read');
const addJoin = require('./add-join');
const fs = require('fs');
const path = require('path');

module.exports = function (socket, dataofClient) {
  if(dataofClient.action.upload == true) {
    db.query("SELECT * FROM "+
              dataofClient.checkImage.table+
              " WHERE "+
              dataofClient.checkImage.tableId.name,
              dataofClient.checkImage.tableId.data, function (err, result, fields) {
      if(result.length < 1){
        if(dataofClient.upload.beforeImage && dataofClient.upload.beforeImage !== 'placeholder.jpg'){
          let file = path.join('image/'+dataofClient.upload.beforeImage);
          fs.unlink(file, (err) => {
          })
        }
      }
    })
  }
 
  dataofClient.create.map((x,i) => {
    db.query("INSERT INTO "+
        x.table+
        " SET ?",x.data, function (err, result, fields) {
      if (result.affectedRows > 0) {
        if(x.condition.read == true) {
          readofTableOne(socket,dataofClient);
        }
        if(x.condition.insertId == true) {
          x.result = result.insertId;
          if(x.condition.processAddJoin == true){
            addJoin(socket ,dataofClient, i);
          }
        }
      } else {
        let data = {
          response: 'error',
          data: null
        }
        socket.emit(x.response, data);
      }
    });
  });
  dataofClient.delete.map(x => {
    db.query("DELETE FROM "+
        x.table+
        " WHERE "+
        x.tableId.name+
        "= "+
        x.tableId.data, function (err, result, fields) {
      if (result.affectedRows > 0) {
        if(x.toast.type == 'delete'){
          let data = {
            response: 'error',
            message: x.toast.messageToastSuccess,
            data: null
          }
          socket.emit(x.toast.name, data);
        }
        if(x.condition.read == true) {
          readofTableOne(socket,dataofClient);
        }
      } else {
        if(x.toast.type == 'delete'){
          let data = {
            response: 'error',
            message: x.toast.messageToastError,
            data: null
          }
          socket.emit(x.toast.name, data);
        }
      }
    });
  });
};