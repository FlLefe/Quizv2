const express = require('express');
const routerCategories = express.Router();

routerCategories.get("/categories", (req, res) => {
    res.render('categories');
});

routerCategories.get("/categories/:categoryName", routerCategories.getCategory);

module.exports = routerCategories;