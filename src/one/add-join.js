const db = require('../../db');
const readofTableOne = require('./read');

module.exports = function (socket, dataofClient, i) {
  const key = dataofClient.create[i].sendCreateJoinId.key;
  const name = dataofClient.create[i].sendCreateJoinId.name;
  dataofClient.createJoinId[key].data[name] =  dataofClient.create[i].result;
  socket.emit('contoh', dataofClient);
  if(dataofClient.create[i].condition.addMultiJoin == true){
    dataofClient.createJoinId.map(x => {
      db.query("INSERT INTO "+
        x.table+
        " SET ?",x.data, function (err, result, fields) {
        if (result.affectedRows > 0) {
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
  }
};