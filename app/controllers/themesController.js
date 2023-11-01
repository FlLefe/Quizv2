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
        console.log('req.session >>' + req.session);
        
        const questionsArray = await dataMapper.selectQuestions(theme, body);
        req.session.questionsArray = questionsArray;

        res.redirect("/quiz/1");
    }    
}

module.exports = themesController;
