require('dotenv').config();
require('module-alias/register');
const express = require('express');
const path = require('path');

const app = express();

// Recursos públicos
app.use(express.static(path.join(__dirname, 'public')));

// Ruta principal
app.get('/', (req, res) => {
    res.render('layout');
});

// Modelo para la tabla "velas"
const Velas = require('root/models/Velas');

// Ruta de la API
app.get('/api/history/:fechaInicial/:fechaFinal', async (req, res) => {
    const velas = await Velas.obtenerVelasPorRangoDeFechas(req.params.fechaInicial, req.params.fechaFinal);
    res.json(velas);
});

module.exports = app;
