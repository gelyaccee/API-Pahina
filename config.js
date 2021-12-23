const env = process.env;  

const config = {
  db: { 
    host: env.DB_HOST || 'localhost',
    user: env.DB_USER || 'root',
    password: env.DB_PASSWORD || '',
    database: env.DB_NAME || 'pahinadb',
    port:3306
    // port:3306
  },
  listPerPage: env.LIST_PER_PAGE || 20,
  loginRequest: {
    username : "",
    password : "",
    name : "",
    email : "",
  }, 
  books:{
    query: '',  
    value:[],
  },
  favorites:{
    userid : "",
    isbn13 : "",
    author : "",
    title : "",
    image : "",
  },
  history:{
    userid : "",
    isbn13 : "",
    author : "",
    title : "",
    image : "",
  }
};

module.exports = config;