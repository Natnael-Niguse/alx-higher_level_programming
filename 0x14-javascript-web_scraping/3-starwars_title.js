#!/usr/bin/node
// SW movie id
const request = require('request');
request(`https://swapi-api.alx-tools.com/api/films/${process.argv[2]}`, function (error, response, body) {
  error && console.log(error);
  console.log(JSON.parse(body).title);
});
