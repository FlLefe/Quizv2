const express = require('express');
const routerAccueil = express.Router();
const dataFiles = require("../dataFiles.json");


routerAccueil.get("/", (req,res) => {
    res.redirect("accueil");
  })
  
routerAccueil.get("/:navChose", (req, res, next) => {
const navChose = req.params.navChose;
const dataNav = dataFiles.find((section) => section.name === navChose );
      
if (dataNav) {
    res.render(dataNav.name, {
    style: `/css/${dataNav.cssFile}`,
    script: `/js/${dataNav.jsFile}`
    })
} else {
    next();
}
});

  module.exports = routerAccueil;