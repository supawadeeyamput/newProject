const express = require('express')
const app = express()
app.use(express.urlencoded());
app.use(express.json());
var mysql = require('mysql');
var jwt = require('jsonwebtoken');
const jwtKey = 'iwughasepvjwpqq03uM(ofj9e'
const bcrypt = require('bcrypt');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'samannachan'
});

app.get('/', function (req, res) {
    connection.query('SELECT * FROM user', function (error, results, fields) {
        if (error) throw error;
        res.send(results)
    });
})

app.post('/register', async (req, res) => {
    // console.log(req)

    const user = {
        username: req.body['username'],
        password: req.body['password'],
        name: req.body['name'],
        email: req.body['email'],
        tel: req.body['tel'],
        type: 'user',
    }
    user.password = await bcrypt.hash(user.password, 10)
    connection.query(`SELECT * FROM user WHERE username = ?`, user.username, (error, results) => {
        if (results.length !== 0) {
            return res.status(401).send('มีคนใช้ชื่อแล้วไอ้ห่า')
        }
        connection.query('INSERT INTO user SET ?', user, (error, results) => { })
        return res.send(true)
    })
})

app.post('/login', (req, res) => {
    // console.log(req.body['username'])
    const user = {
        username: req.body['username'],
        password: req.body['password'],
    }
    console.log(user.username)
    connection.query(`SELECT * FROM user WHERE username = ?`, user.username, async (error, results) => {
        const userDB = results[0]
        const password = userDB.password
        const isMath = await bcrypt.compare(user.password, password)
        if(isMath){
            const accessToken = jwt.sign({
                userId: userDB.id_user
            }, jwtKey, { expiresIn: 60 * 60 })
            return res.send(accessToken)
        }
        return res.send('รหัสผิด ไอ้ห่า')
    })
})

app.post('/check', (req, res) => {
    const accessToken = req.body['accessToken']
    const jwtData = jwt.verify(accessToken, jwtKey)
    res.send(jwtData)
})

app.listen(3000)
