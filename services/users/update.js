const db = require('../db');
const helper = require('../../helper');
const config = require('../../config');
const serverLogs = require('../../serverLogs');
const sqlBuilder = require('../../sqlBuilder/sql');

async function getMultiple(page = 1){
  const offset = helper.getOffset(page, config.listPerPage);  
  
  const rows = await db.query(sqlBuilder.updateUser(config.loginRequest.name,config.loginRequest.email,config.loginRequest.username,config.loginRequest.password));
  const data = helper.emptyOrRows(rows); 
   
  return {
    data
  } 
}

module.exports = {
  getMultiple
}