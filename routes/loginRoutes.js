const express = require('express')
const bcrypt = require('bcrypt')
const loginRouter = express.Router()

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

module.exports = loginRouter