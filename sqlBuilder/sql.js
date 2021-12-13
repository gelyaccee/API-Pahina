/*
    Search for function 
    -> Login                                        = getLoginAuthentication 
    */

    module.exports = { 
        getLoginAuthentication, signup
    }
    
    function signup(name,email,username,password){
        const sql = `
        INSERT INTO user (id, name, email, username, password) VALUES (NULL, '`+name+`', '`+email+`', '`+username+`', '`+password+`');
        `;
        return sql;
    }

    function getLoginAuthentication(username,password){
        const sql = ` 
        SELECT * FROM user WHERE username = '`+username+`' and password = '`+password+`';
        `; 
        return sql;
    }
