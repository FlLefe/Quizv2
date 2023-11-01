const dataMapper = require("../database/dataMapper");

const themesController = {
    async showThemes(req,res){
        const themes = await dataMapper.getAllThemes();
        res.render('themes', { themes });
    },

    theme (req,res) {
        const selectedTheme = req.params.theme;
        res.render('theme', { selectedTheme });
    },

    async generateQuestions(req,res){
        const theme = req.params.theme;
        const body = req.body;
        
        const questionsArray = await dataMapper.selectQuestions(theme, body);
        
        res.render("quiz", {questionsArray, index:0});
    }    
}

module.exports = themesController;
