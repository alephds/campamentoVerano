const express = require('express');
const { getBaseUrl } = require('root/library/BaseUrl');

const router = express.Router();

router.get('/', (req, res) => {
  res.render('layout', { title: 'USDMXN', baseUrl: getBaseUrl() });
});

module.exports = router;
