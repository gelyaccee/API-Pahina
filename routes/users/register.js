const express = require('express');
const router = express.Router();
const route_service = require('../../services/users/register');
const config = require('../../config');

router.get('/', async function(req, res, next) {
  try { 

    config.loginRequest.username = req.query.user_id;
    config.loginRequest.password = req.query.user_password;
    config.loginRequest.name = req.query.user_name;
    config.loginRequest.email = req.query.user_email;    

    res.json(await route_service.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting users data `, err.message);
    next(err);
  }
});

module.exports = router;