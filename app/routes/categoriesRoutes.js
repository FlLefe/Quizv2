const express = require('express');
const routerCategories = express.Router();
const categoryController = require("../controllers/categoryController");


routerCategories.get("/categories", (req, res) => {
    res.render('categories');
});

routerCategories.get("/categories/:categoryName", categoryController.getCategory);

module.exports = routerCategories;