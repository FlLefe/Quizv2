const router = require('express').Router();
const homeController = require('../controllers/homeController');
const themesController = require ('../controllers/themesController');

router.get('/', homeController.home);

router.get('/themes', themesController.themes);

router.get('/quiz/:theme', themesController.theme);

router.get('/quiz/:theme/getQuestion', themesController.getQuestion);

module.exports = router;