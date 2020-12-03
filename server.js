const express = require('express');
const app = express();
const port = 9002;

app.get('/', (req, res) => {
  console.log('VISIT', new Date().toLocaleString());
  res.send('Hello World 4. december');
});

app.get('/vigan', (req, res) => {
  console.log('VISIT /vigan', new Date().toLocaleString());
  res.send('Hej Vigan.');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
