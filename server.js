const express = require('express');
const app = express();
const port = 9002;

app.get('/', (req, res) => {
  res.send('Hello World - woop woop!');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
