require('dotenv').config();
const express = require("express");
const app = express();
const session = require('./middlewares/initSession');
const { notFound, handleError } = require('./middlewares/errorHandlers');

app.use(express.static("public"));

app.set("views", "./app/views");
app.set("view engine", "ejs");

app.use(session);
app.use(express.urlencoded({ extended: true }));

app.locals.dataFiles = require("./data/dataFiles.json");

const router = require('./app/router');
app.use(router);

app.use(notFound);
app.use(handleError);

app.set('PORT', process.env.PORT || 3000);
app.set('URL', process.env.BASE_URL || 'http://localhost');
app.listen(process.env.PORT, () => {
    console.log(`Listening at ${process.env.BASE_URL}:${process.env.PORT}`);
});
