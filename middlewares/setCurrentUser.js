const db = require('../db')

function setCurrentUser(req, res, next) {
    res.locals.isLoggedIn = false;
    res.locals.currentUser = {};
    res.locals.isAdmin = false;
    

    if (!req.session.userId) {
        return next();
    }

    const sql = `
        SELECT * 
        FROM users
        WHERE id = ${req.session.userId}
    `

    db.query(sql, (err, result) => {
        if (err) {
            console.log(err);
        }

        let user = result.rows[0]
        res.locals.currentUser = user;
        res.locals.isAdmin = user.isadmin;
        res.locals.isLoggedIn = true;
        next()
    })

}

module.exports = setCurrentUser