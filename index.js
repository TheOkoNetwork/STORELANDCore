const express = require('express')
const app = express()
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('STORELAND Core is onlnie')
})

app.listen(port, () => {
  console.log(`STORELAND Core listening at http://localhost:${port}`)
})