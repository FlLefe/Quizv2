const router = require('express').Router();
const homeController = require('../controllers/homeController');
const themesController = require ('../controllers/themesController');

router.get('/', homeController.home);

router.get('/themes', themesController.themes);

router.get('/themes/:theme', themesController.theme);

module.exports = router;