require('dotenv').config()

const express = require('express')
const app = express()
const port = 4567
const expressLayouts = require('express-ejs-layouts')
const methodOverride = require('method-override')
const session = require('express-session')
const pg = require('pg')

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
    res.render('home')
})

app.get('/collections', (req, res) => {
    res.render('collection')
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

app.use(ensureLoggedIn)
app.listen(port, () => {
  console.log(`listening on port ${port}`);
})
