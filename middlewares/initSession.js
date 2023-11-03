const expressSession = require('express-session');

const session = expressSession({
    resave: true,// sauvegarde automatique de la session en fin de requête
    saveUninitialized: true,// sauvegarde de la session même si elle est vide.
    secret: process.env.APP_SECRET,
    cookie: {
      secure: false,// true c'est uniquement si on a un certificat ssl pour avoir https
      maxAge: (1000*60*60) // ça fait une heure
    },
});

module.exports = session;