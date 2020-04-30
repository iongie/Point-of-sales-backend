const db = require('../../db');
const readofTableOne = require('../one/read');

module.exports = function (socket, dataofClient) {
  const res =  dataofClient.create[0].resultId;
  const resOne =  dataofClient.createOne[0].resultId;
  dataofClient.createLast[0].data[res] = dataofClient.create[0].result;
  dataofClient.createLast[0].data[resOne] = dataofClient.createOne[0].result;
  console.log( dataofClient.createLast);
  dataofClient.createLast.map(x => {
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
};