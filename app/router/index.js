const router = require('express').Router();
const homeController = require('../controllers/homeController');
const themesController = require ('../controllers/themesController');

router.get('/', homeController.home);

router.get('/themes', themesController.themes);

module.exports = router;