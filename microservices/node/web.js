const express = require('express');
const app = express();

app.get('/', function (req, res) {
  console.log(req.body);
  res.send("Hello world from node");
});

app.listen(process.env.PORT || 8080);
