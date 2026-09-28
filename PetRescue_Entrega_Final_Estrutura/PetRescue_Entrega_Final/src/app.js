const express = require('express');
const path = require('path');
const session = require('express-session');

const app = express();

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, '..', 'views'));

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static(path.join(__dirname, '..', 'public')));

app.use(session({
  secret: process.env.SESSION_SECRET || 'pet-rescue-dev',
  resave: false,
  saveUninitialized: false
}));

app.get('/saude', (req, res) => {
  res.json({ status: 'ok', projeto: 'Pet Rescue' });
});

// As rotas públicas e administrativas serão adicionadas nas próximas etapas.

module.exports = app;
