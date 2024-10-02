require('dotenv').config()

const express = require('express')
const app = express()
const port = 4567
const expressLayouts = require('express-ejs-layouts')
const methodOverride = require('method-override')
const session = require('express-session')

const pool = require('./db/index')

const setCurrentUser = require('./middlewares/setCurrentUser')
const ensureLoggedIn = require('./middlewares/ensureLoggedIn')


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


app.get('/', (req, res) => {  
    
    const sql = `
        SELECT *
        FROM collections
    `
    pool.query(sql, (err, result) =>{
        let collections = result.rows;
        console.log(result.rows)
        console.log(result.rows[0])
        res.render('home', {collections})
    })
})

app.get('/collections', (req, res) => {

    const sql = `
        SELECT *
        FROM collections
    `
    pool.query(sql, (err, result) =>{
        let collections = result.rows;

        res.render('collection', {collections})
    })
    
})

app.get('/cart', ensureLoggedIn, (req, res) => {
    res.render('cart')
})

app.get('/update', (req, res) => {
    res.send('updating stock') // take to home page with updated info cause admin
})

app.get('/login', (req, res) => {
    res.render('login')
})

app.post('/login', (req, res) => {
    const email = req.body.email;
    const password = req.body.password;

    const sql = `
        SELECT *
        FROM users
        WHERE email = '${email}';
    `
    pool.query(sql, (err, result) => {
        if (results.rows.length === 0) {
            console.log('user not found')
            return res.send('user not found')
        }

        const user = result.rows[0];

        bcrypt.compare(password, user.password_digest, (err, isCorrect) => {
            if (err) {
                console.log(err)
            }

            if (isCorrect) {
                console.log('password is correct')
            }

            req.session.userId = user.id;

            res.redirect('/')
        })
    })
})

app.delete('/logout', ensureLoggedIn, (req, res) => {
    req.session.destroy((err) => {
        if (err) {
            console.log(err)
        }
        res.redirect('/login')
    })
})


app.use(ensureLoggedIn)
app.listen(port, () => {
  console.log(`listening on port ${port}`);
})
