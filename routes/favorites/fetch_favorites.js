const express = require('express');
const router = express.Router();
const route_service = require('../../services/favorites/fetch_favorites');
const config = require('../../config');

router.get('/', async function(req, res, next) {
  try { 

    config.favorites.userid = req.query.userid 

    res.json(await route_service.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting users data `, err.message);
    next(err);
  }
});

module.exports = router;