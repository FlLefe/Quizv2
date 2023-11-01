const router = require('express').Router();
const mainController = require('../controllers/mainController');
const themesController = require ('../controllers/themesController');
const quizController = require ('../controllers/quizController');
const { catchErrors } = require('../../middlewares/errorHandlers');

router.get('/', mainController.home);

router.get('/themes', catchErrors(themesController.showThemes));

router.get('/themes/:theme', themesController.theme);
router.post('/themes/:theme', themesController.generateQuestions);

router.get('/quiz/:questionNb', quizController.getQuestion);
router.post('/quiz/:questionNb', quizController.postAnswer);

router.get('/score', quizController.displayResult);


module.exports = router;