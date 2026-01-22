const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Hello dari AWS ECS Fargate! Projek 1 Berjaya! Kod saya kini automatik! 🎊"</h1>');
});

app.listen(port, () => {
  console.log(`App sedang berjalan di http://localhost:${port}`);
});