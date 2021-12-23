const express = require('express');
const router = express.Router();
const route_service = require('../../services/favorites/save_favorites');
const config = require('../../config');

router.get('/', async function(req, res, next) {
  try { 

    config.favorites.userid = req.query.userid
    config.favorites.isbn13 = req.query.isbn13
    config.favorites.author = req.query.author
    config.favorites.title = req.query.title
    config.favorites.image = req.query.image 

    res.json(await route_service.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting users data `, err.message);
    next(err);
  }
});

module.exports = router;