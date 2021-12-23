/*
    Search for function 
    -> Login                                        = getLoginAuthentication 
    */

    module.exports = { 
        getLoginAuthentication, signup, updateUser,addFavorites,fetchFavorites,fetchHistory,addHistory
    }

    function fetchHistory(id){
        sql = `SELECT * FROM history where user_id = `+id+` GROUP by isbn13;`;
        return sql;
    }
    
    function addHistory(user_id, isbn13, image, title, author){
        const sql = `
            INSERT IGNORE INTO history (id, user_id, isbn13, image, title, author) 
            VALUES (NULL, '`+user_id+`', '`+isbn13+`', '`+image+`', '`+title+`', '`+author+`');`;
        return sql;
    }
    function fetchFavorites(id){
        sql = `SELECT * FROM favorites where user_id = `+id+` GROUP by isbn13;`;
        return sql;
    }
    
    function addFavorites(user_id, isbn13, image, title, author){
        const sql = `
            INSERT IGNORE INTO favorites (id, user_id, isbn13, image, title, author) 
            VALUES (NULL, '`+user_id+`', '`+isbn13+`', '`+image+`', '`+title+`', '`+author+`');`;
        return sql;
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

    function updateUser(name,email,username,password){
        const sql = ` 
        UPDATE user SET name = '`+name+`', email = '`+email+`', username = '`+username+`', password = '`+password+`' WHERE username = '`+username+`';
        `; 
        return sql;
    }
    
