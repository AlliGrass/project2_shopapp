require('dotenv').config()

const express = require('express')
const app = express()
const port = 4567
const expressLayouts = require('express-ejs-layouts')
const methodOverride = require('method-override')
const session = require('express-session')
const bcrypt = require('bcrypt')

const db = require('./db')

const setCurrentUser = require('./middlewares/setCurrentUser')
const ensureLoggedIn = require('./middlewares/ensureLoggedIn')
const getNavbarCollections = require('./middlewares/setNavbarList')



app.set('view engine', 'ejs')

app.use(express.static('public'))
app.use(express.urlencoded({ extended: false }))
app.use(methodOverride("_method"));
app.use(session({
  cookie: { maxAge: 1000 * 60 * 60 * 24 * 3 }, // 3 days
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true
}))

app.use(expressLayouts) 

app.use(setCurrentUser)
app.use(getNavbarCollections)

app.get('/', (req, res) => {  
    
    const sql = `
        SELECT *
        FROM collections
    `
    db.query(sql, (err, result) =>{
        if (err) {
            console.log(err)
        }

        let collections = result.rows;
        res.render('home', {collections})
    })
})

app.get('/collections/:collection_name/:itemid', (req, res) => {
    let collectionPage = req.params.collection_name;
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

app.get('/collections/:collection_name', (req, res) => {

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

app.get('/login', (req, res) => {

})

app.post('/login', (req, res) => {
    const email = req.body.email;
    const password = req.body.password;

    const sql = `
        SELECT *
        FROM users
        WHERE email = $1;
    `
    db.query(sql, [email], (err, result) => {
        if (err) {
            console.log(err)
        }

        if (result.rows.length === 0) {
            console.log('user not found')
            return res.send('user not found')
        }

        const user = result.rows[0];

        bcrypt.compare(password, user.password_digest, (err, isCorrect) => {
            if (err) {
                console.log(err)
            }

            if (isCorrect) {
                console.log(`${user.email} has logged in.`)
                req.session.userId = user.id;
                console.log(req.session.userId)
            }
            res.redirect('/')
        })
    })
})


app.delete('/logout', (req, res) => {

    req.session.destroy((err) => {
        if (err) {
            console.log(err)
        }
        res.redirect('/')
    })
})

app.post('/signup', (req, res) => {

    let email = req.body.email
    let plainTextPass = req.body.password
    let saltRounds = 10

    bcrypt.genSalt(saltRounds, (err, salt) => {
        bcrypt.hash(plainTextPass, salt, (err, hash) => {
            const sql = `
                INSERT INTO users
                (email, password_digest)
                VALUES
                ($1, $2)
                RETURNING *;
            `

            db.query(sql, [email, hash], (err, result) => {
                if (err) {
                    console.log(err)
                }
    
                const user = result.rows[0]
                console.log(user)

                res.redirect('/')
            })
        })
    })
})

app.use(ensureLoggedIn)
app.listen(port, () => {
  console.log(`listening on port ${port}`);
})
