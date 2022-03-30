//! ========================================================================

// Importando os packages
const express = require('express')
const ewelink = require('ewelink-api');

const port = 3000

// Configurando o express
const app = express();
app.use(express.json());
app.listen(port, () =>
    console.log('Servidor iniciado na porta http://localhost/' + port)
);

// Configuradno o ewelink
const connection = new ewelink({
    email: '',
    password: '',
    region: 'us',
});

app.get('/devices', async function(req, res) {
    try {
        const devices = await connection.getDevices();
        console.log(devices);
        return res.json(devices);
    } catch (e) {
        res.status(500).send(`${e}`);
    }
});

app.get('/device_state', async function(req, res) {
    try {
        const status = await connection.getDevicePowerState('100118053a');
        console.log(status);
        return res.json(status);
    } catch (e) {
        res.status(500).send(`${e}`);
    }
});

app.get('/device/:status', async function(req, res) {
    try {
        const { status } = req.params;
        // Possible states: on, off, toggle.
        const set = await connection.setDevicePowerState('100118053a', status);
        console.log(set);
        return res.json(set);
    } catch (e) {
        res.status(500).send(`${e}`);
    }
});