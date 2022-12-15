const express = require('express');
const app = express();
const sequelize = require('./database');
const pug = require('pug');
app.set('view engine', 'pug');
app.use(express.static('public'))
const bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());




app.get('/styles.css', (req, res) => {
    res.type('text/css')
    res.sendFile('styles.css', { root: __dirname })
})

app.get('/', async (req, res) => {
    try {
        const hotell = await sequelize.query('SELECT * FROM hotell', { type: sequelize.QueryTypes.SELECT });
        console.log(hotell)
        res.render('index', {hotell});

    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while trying to select * from hotellid' });
    }
});


app.get('/register', (req, res) => {
        res.render('register');
});

app.get('/clientregister', (req, res) => {
    res.render('clientregister');
});



app.get('/hotel/:id', async (req, res) => {
    try {
        const andmed = await sequelize.query('SELECT * FROM hotell', { type: sequelize.QueryTypes.SELECT });
        res.render('hotel', {andmed});

    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while trying to select * from hotellid' });
    }
});

app.post('/registering', (req, res) => {
    console.log("Tere")
    console.log(req.body)
});


app.listen(3000, () => {
    console.log('Server is listening on port 3000.');
});