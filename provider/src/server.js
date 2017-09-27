const express = require('express')
const app = express()

app.get('/payments/:id', function (req, res) {
  const payment = {
    id: 1234,
    valor: 224.25,
    direccionFactura: "Estadio Rodrigo Paz Delgado",
    nombreFactura: "Hernán Barcos"
  }

  res.send(payment)
})

app.listen(4000, function () {
  console.log('Ejecutando APIPago en el puerto 4000!')
})
