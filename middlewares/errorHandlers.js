/*
 * @param {Function} controllerMethod une méthode de contrôleur que l'on passe en argument à cettte fonction
 */
function catchErrors(controllerMethod) {
    // Cette fonction anonyme va être exécuté automatiquement, elle va appeler la méthode du contrôleur
    return (req, res, next) => {
        // La méthode du contrôleur s'exécute et s'il y a une erreur
        // .catch sera appelé avec un message d'erreur, et next(err) qui provoque le middleware d'erreur handleError
        controllerMethod(req, res, next).catch(error => next(error));
    }
}

// 404 middleware
function notFound(req, res, next) {
    const error = new Error('Not found');
    error.status = 404;
    next(error);
}

// Un middleware d'erreur comprend 4 params : err, req, res, next
function handleError(err, req, res, next) {
    const statusCode = err.status || 500;
    // Version de développement
    res.status(statusCode).render('error', { error: err.message, stack: err.stack });
}

module.exports = { notFound, handleError, catchErrors }