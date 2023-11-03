const dataMapper = require("../database/dataMapper");

const themesController = {

    async showThemes(req,res){
        res.render('themes', { themes:await dataMapper.getAllThemes() });
    },

    theme (req,res) {
        res.render('theme', { selectedTheme:req.params.theme });
    },

    async generateQuestions(req,res){
        const theme = req.params.theme;
        const body = req.body;        
        req.session.questionsArray = await dataMapper.selectQuestions(theme, body);
        req.session.answers = [];

        res.redirect("/quiz/1");
    }    
}

module.exports = themesController;
