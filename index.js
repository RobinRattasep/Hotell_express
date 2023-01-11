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



app.get('/', async (req, res) => {
    try {
        const hotell = await sequelize.query('SELECT * FROM hotell', { type: sequelize.QueryTypes.SELECT });
        res.render('index', {hotell});

    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while trying to select * from hotellid' });
    }
});


app.get('/register', (req, res) => {
        res.render('register');
});

app.get('/faq', (req, res) => {
    res.render('faq');
});

app.get('/clientregister', (req, res) => {
    res.render('clientregister');
});



app.get('/hotel/:id', async (req, res) => {
    try {
        const andmed = await sequelize.query('SELECT * FROM hotell where hotell_id = :id', { replacements: {id: req.params.id},type: sequelize.QueryTypes.SELECT });
        const sendable = andmed[0]
        res.render('hotel', {sendable});

    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while trying to select * from hotellid' });
    }
});

app.post('/registering', async (req, res) => {
    try {
        const andmed = await sequelize.query('INSERT * INTO *', { type: sequelize.QueryTypes.INSERT });
        res.status(200).send('Successfuly registered')
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred while trying to register' });
    }
});


app.listen(3000, () => {
    console.log('Server is listening on port 3000.');
});