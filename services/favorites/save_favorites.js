const db = require('../db');
const helper = require('../../helper');
const config = require('../../config');
const serverLogs = require('../../serverLogs');
const sqlBuilder = require('../../sqlBuilder/sql');

async function getMultiple(page = 1){
  const offset = helper.getOffset(page, config.listPerPage);  
  
  const rows = await db.query(sqlBuilder.addFavorites(
      config.favorites.userid,
      config.favorites.isbn13,
      config.favorites.image,
      config.favorites.title,
      config.favorites.author
  ));
  const data = helper.emptyOrRows(rows); 
   
  return {
    data
  } 
}

module.exports = {
  getMultiple
}
 