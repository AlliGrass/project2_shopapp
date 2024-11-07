require('dotenv').config()

const express = require('express')
const app = express()
const port = 4567
const expressLayouts = require('express-ejs-layouts')
const methodOverride = require('method-override')
const session = require('express-session')

const db = require('./db')

const setCurrentUser = require('./middlewares/setCurrentUser')
const ensureLoggedIn = require('./middlewares/ensureLoggedIn')
const getNavbarCollections = require('./middlewares/setNavbarList')

const collectionRouter = require('./routes/collectionRoutes')
const cartRouter = require('./routes/cartRoutes')
const loginRouter = require('./routes/loginRoutes')
const updateRouter = require('./routes/updateRoutes')

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

app.use(collectionRouter)

app.use(cartRouter)

app.use(updateRouter)

app.user(loginRouter)

app.use(ensureLoggedIn)

app.listen(port, () => {
  console.log(`listening on port ${port}`);
})
