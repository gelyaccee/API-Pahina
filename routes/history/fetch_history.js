const express = require('express');
const router = express.Router();
const route_service = require('../../services/history/fetch_history');
const config = require('../../config');

router.get('/', async function(req, res, next) {
  try { 

    config.history.userid = req.query.userid
    config.history.isbn13 = req.query.isbn13
    config.history.author = req.query.author
    config.history.title = req.query.title
    config.history.image = req.query.image

    res.json(await route_service.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting users data `, err.message);
    next(err);
  }
});

module.exports = router;