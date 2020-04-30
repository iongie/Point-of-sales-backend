const express = require('express');
const mysql = require('mysql');

// TODO: Database
const db = mysql.createConnection({
 host: "localhost",
 user: "root",
 password: "",
 database: "pos_gigih985042"
});

db.connect(function(err) {
 if (err) throw err;
    console.log("Connected Database");
});


module.exports = db;