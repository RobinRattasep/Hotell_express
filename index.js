const express = require('express');
const app = express();
const sequelize = require('./database');

app.get('/', (req, res) => {
    res.send('Hello, World!');
});


app.get('/users', async (req, res) => {
    try {
        const users = await sequelize.query('SELECT * FROM kasutaja', { type: sequelize.QueryTypes.SELECT });
        res.json(users);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'An error occurred' });
    }
});


app.listen(3000, () => {
    console.log('Server is listening on port 3000.');
});