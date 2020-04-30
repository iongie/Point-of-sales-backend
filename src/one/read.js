const db = require('../../db');
const fs = require('fs');

module.exports = function (socket, dataofClient) {
  if(dataofClient.action.join == false) {
    db.query("SELECT * FROM "+
              dataofClient.read.table, function (err, result, fields) {
      if(dataofClient.action.createDataOffline == true){
        let dataOffline = JSON.stringify(result);
        fs.writeFile('data-offline/'+dataofClient.uploadOffline.filePath, dataOffline, (res) => { 
          // console.log(res);
        });
      }
      
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
              dataofClient.read.joinTable, function (err, result, fields) {
      if(dataofClient.action.createDataOffline == true){
        let dataOffline = JSON.stringify(result);
        fs.writeFile('data-offline/'+dataofClient.uploadOffline.filePath, dataOffline, (res) => { 
          console.log(res);
        });
      }
      
      let data = {
        response: 'success',
        data: result
      }
      socket.broadcast.emit(dataofClient.read.response, data);
      socket.emit(dataofClient.read.response, data);
    });
  }
  
};