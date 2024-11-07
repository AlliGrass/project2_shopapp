const express = require('express')
const updateRouter = express.Router()

app.delete('/update', (req, res) => {
    let itemId = req.body.item_id;

    const sql = `
        DELETE
        FROM items
        WHERE id = ${itemId};
    `

    db.query(sql, (err, result) => {
        if (err) {
            console.log(err)
        }
        
        res.redirect('/update')

    })
})

app.put('/update', (req, res) => {
    const itemId = req.body.itemId;
    const collectionId = req.body.collectionOption;
    const itemName = req.body.itemName;
    const imgUrl = req.body.img_url;
    const stock = req.body.stock;
    const price = req.body.price;
    const description = req.body.description;

    const sql = `
        UPDATE items
        SET collection_id = $2, item_name = $3, image_url = $4, description = $5, stock = $6, price = $7
        WHERE id = $1;
    `
    db.query(sql, [itemId, collectionId, itemName, imgUrl, description, stock, price], (err, result) => {
        if (err) {
            console.log(err)
        }

        res.redirect(`/update`)
    })
})

app.post('/addcollection', (req, res) => {
    const collectionName = req.body.collection_name;
    const imageUrl = req.body.img_url;

    const sql = `
        INSERT INTO
            collections
            (collection_name, image_url)
        VALUES
            ($1, $2)
    `

    db.query(sql, [collectionName, imageUrl], (err, result) => {
        if (err) {
            console.log(err)
        }

        res.redirect('/update')
    })
})

app.post('/additem', (req, res) => {
    const collectionId = req.body.collectionOption;
    const itemName = req.body.itemName;
    const imgUrl = req.body.img_url;
    const stock = req.body.stock;
    const price = req.body.price;
    const description = req.body.description;

    let sql = `
        INSERT INTO
            items
            (collection_id, item_name, image_url, description, stock, price)
        VALUES
            ($1, $2, $3, $4, $5, $6);
    `

    db.query(sql,  [collectionId, itemName, imgUrl, description, stock, price], (err, result) => {
        if (err) {
            console.log(err)
        }

        res.redirect('/update')
    })
})

app.get('/update', (req, res) => {

    const collectionSql = `
        SELECT *
        FROM collections;
    `
    db.query(collectionSql, (err, result) =>{
        if (err) {
            console.log(err)
        }

        let collectionList = result.rows;

        const itemsSql = `
            SELECT *
            FROM items;
        `
        db.query(itemsSql, (err, result) => {
            if (err) {
                console.log(err)
            }
            let itemList = result.rows;
            res.render('updateStock', {collectionList, itemList})
        })
    })
})

module.exports = updateRouter