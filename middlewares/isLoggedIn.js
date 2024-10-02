function isLoggedIn(req, res) {
    if (req.session.userid) {
        return res.locals.isLoggedIn = true;
    } 
    return res.locals.isLoggedIn = false;
}

module.exports = isLoggedIn