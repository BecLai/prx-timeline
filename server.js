// Reguire modules
var express = require('express');
var http_auth = require('express-http-auth');

// Create app
var app = express();

// Serve static files as default
app.get('/*', express.static(__dirname + '/Timeline_Expand_Collapse.framer'));

// Listen for both Heroku and local. Access locally as http://localhost:3333
app.listen(process.env.PORT || 3333);
