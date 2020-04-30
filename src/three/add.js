const db = require('../../db');
const addOne = require('./add-one');
const fs = require('fs');

module.exports = function (socket, dataofClient) {
  if(dataofClient.action.upload == true) {
    if (dataofClient.upload.selectedFile) {
      fs.writeFile('image/'+dataofClient.upload.filePath, dataofClient.upload.selectedFile, (res) => { 
        console.log(res);
      });
    }
  }
  dataofClient.create.map(x => {
    db.query("INSERT INTO "+
        x.table+
        " SET ?",x.data, function (err, result, fields) {
      if (result.affectedRows > 0) {
        dataofClient.create[0].result = result.insertId;
        addOne(socket,dataofClient);
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