require('dotenv').config();
const express = require("express");
const app = express();
const session = require("express-session")

app.use(express.static("public"));

app.set("views", "./app/views");
app.set("view engine", "ejs");

app.use(session({
    secret: process.env.APP_SECRET,
    resave: true, // sauvegarde automatique de la session en fin de requête
    saveUninitialized: true, // sauvegarde de la session même si elle est vide.
    cookie: {
        secure: false // true c'est uniquement si on a un certificat ssl pour avoir https
    }
}));

app.use(express.urlencoded({ extended: true }));

const { notFound, handleError } = require('./middlewares/errorHandlers');

const router = require('./app/router');

app.locals.dataFiles = require("./data/dataFiles.json");

app.use(router);

app.use(notFound);
app.use(handleError);

app.set('PORT', process.env.PORT || 3000);
app.set('URL', process.env.BASE_URL || 'http://localhost');

app.listen(process.env.PORT, () => {
    console.log(`Listening at ${process.env.BASE_URL}:${process.env.PORT}`);
});
