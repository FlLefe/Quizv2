const dataMapper = require('../database/dataMapper');

const adminController = {
    mainAdmin (req, res) {
        res.render('admin');
    },

    async getThemes(req, res) {
        const themes = await dataMapper.getNbQuestionsByTheme();
        res.render('adminThemes', { themes });
    },

    async addNewTheme (req, res) {
        const nameTheme = req.body.newThemeName;
        await dataMapper.postNewTheme(nameTheme);
        res.redirect('/admin/themes');
    },

    async deleteThemes (req,res) {
        const idToDelete = req.body.idTheme;  
        await dataMapper.deleteThemes(idToDelete);
        res.redirect('/admin/themes');
    },

    async getAllQuestionsAndThemes (req, res) {
        const questions = await dataMapper.getAllQuestionsAndThemes();
        const themes = await dataMapper.getAllThemes();
        res.render('adminQuestions', { questions, themes });
    },

    adminRedirect (req,res) {
        const theme = parseInt(req.body.theme);
        res.redirect(`/admin/questions/${theme}`);
    },

    async getAllQuestionsByTheme (req,res) {
        const idTheme = parseInt(req.params.theme);
        const questionsByTheme = await dataMapper.getQuestionsForOneTheme(idTheme);
        const themes = await dataMapper.getAllThemes();
        const nameTheme = await dataMapper.getNameTheme(idTheme);
        res.render('adminQuestionsByTheme', { questions:questionsByTheme, themes, nameTheme});   
    },

    async deleteQuestion (req, res) {
        const idToDelete = req.body.idQuestion;
        await dataMapper.deleteQuestion(idToDelete);
        res.redirect('/admin/questions');
    }
}

module.exports = adminController;