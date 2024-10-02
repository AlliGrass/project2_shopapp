function isLoggedIn(req, res) {
    if (req.session.userid) {
        res.locals.isLoggedIn = true;
    } 
}

module.exports = isLoggedIn