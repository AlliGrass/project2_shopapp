const express = require('express')
const collectionRouter = express.Router()

collectionRouter.get('/collections/:collection_name/:itemid', (req, res) => {
    let itemId = req.params.itemid;

    console.log(itemId)

    const sql = `
        SELECT * 
        FROM items
        WHERE id = '${itemId}';
    `
    db.query(sql, (err, result) => {
        if (err) {
            console.log(err)
        }
        let itemDetails = result.rows[0];

        const commentsSql = `
            SELECT comments.*, users.email
            FROM comments
            JOIN users
            ON comments.user_id = users.id
            WHERE item_id = '${itemDetails.id}';
        `

        db.query(commentsSql, (err, result) => {
            if (err) {
                console.log(err)
            }

            let itemComments = result.rows;
            console.log(itemComments)
            console.log(itemDetails)
            res.render('item', {itemDetails, itemComments})
        })
    })
})

collectionRouter.get('/collections/:collection_name', (req, res) => {

    let collectionPage = req.params.collection_name;

    const collectionIdSql = `
        SELECT *
        FROM collections
        WHERE collections.collection_name = '${collectionPage}';
    `
    db.query(collectionIdSql, (err, result) => {
        if (err) {
            console.log(err)
        }
        
        if (result.rows.length !== 0) {
            const collection = result.rows[0]
            const collectionId = collection.id;

            const sql = `
                SELECT *
                FROM items 
                WHERE items.collection_id = '${collectionId}';
            `
            db.query(sql, (err, result) =>{

                let items = result.rows;

                res.render('collection', {items, collectionPage})
            })  
        }
    })
})

module.exports = collectionRouter