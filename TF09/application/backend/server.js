const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('ROTA PRINCIPAL OK');
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

app.listen(3000, () => {
  console.log('SERVIDOR CERTO RODANDO NA 3000');
});