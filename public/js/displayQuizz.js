const fs = require('fs');

const displayQuizz = {
    data : "",

    fetchData: () => {
        fs.readFile('/var/www/html/Projet-perso/Quizz-v2/public/datas/dataCultG.json', 'utf8', (err, data) => {
            if (err) {
                console.error('Une erreur s\'est produite lors de la récupération des données :', err);
                return;
            }

        displayQuizz.data = jsonData = JSON.parse(data);
        })      
    },

init: () => {
        displayQuizz.fetchData();
    }

}

displayQuizz.init();
