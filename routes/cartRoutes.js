const express = require('express')
const ensureLoggedIn = require('./middlewares/ensureLoggedIn')
const cartRouter = express.Router()

app.delete('/cart', (req, res) => {
    let itemId = req.body.item_id;
    let userId = req.body.user_id;

    const sql = `
        DELETE
        FROM cart
        WHERE item_id = ${itemId}
        AND user_id = ${userId};
    `
    db.query(sql, (err, result) => {
        if (err) {
            console.log(err)
        }

        res.redirect('/cart')
    })
})

app.post('/cart', ensureLoggedIn, (req, res) => {
    
    let userId = req.session.userId;
    let itemId = req.body.id;

    const sql = `
        INSERT INTO
            cart
            (user_id, item_id)
        VALUES
            ($1, $2);
    `

    db.query(sql, [userId, itemId], (err, result) => {
        if (err) {
            console.log(err)
        }

        res.redirect('/cart')
    })
})

app.get('/cart', ensureLoggedIn, (req, res) => {

    const sql = `
        SELECT *
        FROM cart 
        JOIN items
        ON cart.item_id = items.id
        WHERE cart.user_id = '${req.session.userId}';
    `

    db.query(sql, (err, result) => {
        if (err) {
            console.log(err)
        }
        let cartList = result.rows;
        res.render('cart', {cartList})
    })

})

module.exports = cartRouter