function isAdmin(req, res) {
    if (req.session.userid) {
        res.locals.isAdmin = true;
    } 
}

