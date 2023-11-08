const router = require('express').Router();
const mainController = require('../controllers/mainController');
const themesController = require ('../controllers/themesController');
const quizController = require ('../controllers/quizController');
const adminController = require ('../controllers/adminController');
const { catchErrors } = require('../../middlewares/errorHandlers');

router.get('/', mainController.home);

router.get('/themes', catchErrors(themesController.showThemes));

router.get('/themes/:idTheme', themesController.theme);
router.post('/themes/:idTheme', themesController.generateQuestions);

router.get('/quiz/:questionNb', quizController.getQuestion);
router.post('/quiz/:questionNb', quizController.postAnswer);

router.get('/score', quizController.displayResult);

router.get('/admin', adminController.mainAdmin);

router.get('/admin/database/save', adminController.saveDatabase);

router.get('/admin/themes', adminController.getThemes);
router.post('/admin/themes/add', adminController.addNewTheme);
router.post('/admin/themes/delete', adminController.deleteThemes);

router.get('/admin/questions', adminController.getAllQuestionsAndThemes);
router.post('/admin/questions', adminController.adminRedirect);
router.post('/admin/questions/delete', adminController.deleteQuestion);

router.get('/admin/questions/:theme', adminController.getAllQuestionsByTheme);


module.exports = router;