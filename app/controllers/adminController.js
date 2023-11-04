const dataMapper = require('../database/dataMapper');

const adminController = {
    async getQuestions (req, res) {
        const questions = await dataMapper.getAllQuestions();
        res.render('admin', { questions });
    }
}

module.exports = adminController;