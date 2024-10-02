const db = require('../db/index.js')

function setCurrentUser(req, res, next) {
    res.locals.currentUser = {}

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
        res.locals.currentUser = user
        res.locals.isLoggedIn = true;
        next()
    })

}

module.exports = setCurrentUser