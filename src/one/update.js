const db = require('../../db');
const readofTableOne = require('./read');
const fs = require('fs');
const addJoin = require('./add-join');
const path = require('path');

module.exports = function (socket, dataofClient) {
  if(dataofClient.action.upload == true) {
    if (dataofClient.upload.selectedFile) {
      fs.writeFile('image/'+dataofClient.upload.filePath, dataofClient.upload.selectedFile, (res) => { 
        console.log(res);
      });
    }

    if(dataofClient.upload.beforeImage !== dataofClient.upload.filePath && dataofClient.upload.beforeImage !== 'placeholder.jpg'){
      let file = path.join('image/'+dataofClient.upload.beforeImage);
      fs.unlink(file, (err) => {
        console.log('File deleted!');
      })
    }
  }
 
  dataofClient.create.map((x, i) => {
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
  dataofClient.update.map(x => {
    db.query("UPDATE "+
        x.table+
        " SET "+
        x.data+
        " WHERE "+
        x.tableId.name+
        "= "+
        x.tableId.data, function (err, result, fields) {
      if (result.affectedRows > 0) {
        console.log(result.affectedRows);
        if(x.condition.read == true) {
          readofTableOne(socket,dataofClient);
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
};