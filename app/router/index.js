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

router.get('/admin', adminController.getQuestions);


module.exports = router;