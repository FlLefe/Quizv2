const dataFiles = require("../dataFiles.json");

exports.getNav = (req, res, next) => {
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
};