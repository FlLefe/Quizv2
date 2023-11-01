const router = require('express').Router();
const mainController = require('../controllers/mainController');
const themesController = require ('../controllers/themesController');
const { catchErrors } = require('../../middlewares/errorHandlers');

router.get('/', mainController.home);

router.get('/themes', catchErrors(themesController.themes));

router.get('/quiz/:theme', catchErrors(themesController.theme));

router.get('/quiz/:theme/getQuestion', catchErrors(themesController.getQuestion));

module.exports = router;