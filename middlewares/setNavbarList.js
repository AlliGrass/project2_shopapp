const db = require('../db')

function getNavbarCollections(req, res, next) {

    const sql = `
    SELECT collection_name
    FROM collections
`
    db.query(sql, (err, result) =>{
        if (err) {
            console.log(err)
        }

        res.locals.collectionNames = result.rows;
        next()
    })

}

module.exports = getNavbarCollections