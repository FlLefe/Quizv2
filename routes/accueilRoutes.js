const express = require('express');
const routerAccueil = express.Router();
const accueilController = require("../controllers/accueilController");

routerAccueil.get("/", (req,res) => {
    res.redirect("accueil");
})
  
routerAccueil.get("/:navChose", accueilController.getNav);


module.exports = routerAccueil;