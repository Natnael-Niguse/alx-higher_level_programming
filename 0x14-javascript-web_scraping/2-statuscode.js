#!/usr/bin/node
//prints status code
const request = require('request');
request(process.argv[2], function (error, response, body) {
  error && console.log(error);
  response && console.log('code:', response.statusCode);
});
