const db = require('../../db');
const readofTableOne = require('./read');
const addJoin = require('./add-join');
const fs = require('fs');

module.exports = function (socket, dataofClient) {
  if(dataofClient.action.upload == true) {
    if (dataofClient.upload.selectedFile) {
      fs.writeFile('image/'+dataofClient.upload.filePath, dataofClient.upload.selectedFile, (res) => { 
      });
    }
  }
  dataofClient.create.map((x, i) => {
    const tes = db.query("INSERT INTO "+
      x.table+
      " SET ?",x.data, function (err, result, fields) {
      if (result.affectedRows > 0) {
        if(x.condition.read == true) {
          readofTableOne(socket,dataofClient);
        } 
        if(x.toast.type == 'add-non-join'){
          let data = {
            response: 'success',
            message: x.toast.messageToastSuccess,
            insertId: result.insertId,
            data: null
          }
          socket.emit(x.toast.name, data);
        }
        if(x.condition.insertId == true) {
            x.result = result.insertId;
            if(x.condition.processAddJoin == true){;
              addJoin(socket ,dataofClient, i);
            }
        }
      } else {
        if(x.toast.type == 'add-non-join'){
          let data = {
            response: 'error',
            message: x.toast.messageToastError,
            insertId: null,
            data: null
          }
          socket.emit(x.toast.name, data);
        }
      }
    });

    console.log(tes);
    
  });
};