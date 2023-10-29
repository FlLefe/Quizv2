const dataFiles = require("../../data/dataFiles.json");

const homeController = {
    home(req,res,next){
        res.render('home', {dataFiles})
    }
}

module.exports = homeController;
