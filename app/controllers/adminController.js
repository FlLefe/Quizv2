const dataMapper = require('../database/dataMapper');

const adminController = {
    mainAdmin (req, res) {
        res.render('admin');
    },

    async getThemes(req, res) {
        const themes = await dataMapper.getNbQuestionsByTheme();
        res.render('adminThemes', { themes });
    },

    async getQuestions (req, res) {
        const questions = await dataMapper.getAllQuestions();
        res.render('admin', { questions });
    },

    async addNewTheme (req, res) {
        const nameTheme = req.body.newThemeName;
        await dataMapper.postNewTheme(nameTheme);
        res.redirect('/admin/themes');
    },

    async deleteThemes (req,res) {
        const idToDelete = req.body.id;  
        await dataMapper.deleteThemes(idToDelete);
        res.redirect('/admin/themes');
    }
}

module.exports = adminController;