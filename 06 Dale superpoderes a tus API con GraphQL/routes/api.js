const express = require('express');

const router = express.Router();
const Velas = require('root/models/Velas');

router.get('/', (req, res) => {
  res.json({ success: true });
});

router.get('/history/:fechaInicial/:fechaFinal', async (req, res) => {
  const velas = await Velas.obtenerVelasPorRangoDeFechas(req.params.fechaInicial, req.params.fechaFinal);
  res.json(velas);
});

module.exports = router;
