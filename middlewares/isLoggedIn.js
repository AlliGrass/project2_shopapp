function isLoggedIn(req, res) {
    if (req.session.userid) {
        return true;
    } 
    return false;
}

module.exports = isLoggedIn