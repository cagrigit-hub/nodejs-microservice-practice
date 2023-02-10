const express = require('express');
const bodyParser = require('body-parser');
const axios = require('axios');

const app = express();
app.use(bodyParser.json());

const events = [];

app.get('/events', (req, res) => {
        res.send(events);
});

app.post('/events', (req, res) => {
        const event = req.body;
        events.push(event);
        axios.post('http://localhost:4000/events', event).catch((err) => {
            console.log(err.message);
          });; // Posts event to posts service
        axios.post('http://localhost:4001/events', event).catch((err) => {
            console.log(err.message);
          });; // Posts event to comments service
        axios.post('http://localhost:4002/events', event).catch((err) => {
            console.log(err.message);
          });; // Posts event to query service
        axios.post('http://localhost:4003/events', event).catch((err) => {
            console.log(err.message);
          });; // Posts event to moderation service
        res.send({ status: 'OK' });
});



app.listen(4005, () => {
        console.log('Listening on 4005');
});