const dataMapper = require("../database/dataMapper");

const themesController = {

    async showThemes(req,res){
        res.render('themes', { themes:await dataMapper.getAllThemes() });
    },

    theme (req,res) {
        res.render('theme', { selectedTheme:parseInt(req.params.idTheme) });
    },

    async generateQuestions(req,res){
        const theme = parseInt(req.params.idTheme);
        const body = req.body;        
        req.session.questionsArray = await dataMapper.selectQuestions(theme, body);
        req.session.answers = [];

        res.redirect("/quiz/1");
    }    
}

module.exports = themesController;
