const db = require('../../db');
const addLast = require('./add-last');
const fs = require('fs');

module.exports = function (socket, dataofClient) {
  if(dataofClient.action.upload == true) {
    if (dataofClient.upload.selectedFile) {
      fs.writeFile('image/'+dataofClient.upload.filePath, dataofClient.upload.selectedFile, (res) => { 
        console.log(res);
      });
    }
  }
  dataofClient.createOne.map(x => {
    db.query("INSERT INTO "+
        x.table+
        " SET ?",x.data, function (err, result, fields) {
      if (result.affectedRows > 0) {
        dataofClient.createOne[0].result = result.insertId;
        addLast(socket,dataofClient);
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