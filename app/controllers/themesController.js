const client = require("../database");
const dataFiles = require("../../data/dataFiles.json");



const themesController = {
    async themes(req,res){
        try{
            const query = `SELECT DISTINCT theme FROM questions;`;
            const result = await client.query(query);

            res.render('themes', {
                dataFiles,
                themes: result.rows
            })
        } catch {
            console.trace("Erreur lors de la récupération des themes :", error);
            res.status(500).send("Erreur lors de la récupération des themes.");
        }
    },

    async theme(req,res) {
        const theme = req.params.theme;
        try {
            const query = `SELECT * FROM questions WHERE theme = '${theme}';`;
            const result = await client.query(query);


            res.render('theme', {
                dataFiles,
                themeQuestions: result.rows
            })
        } catch {
            console.trace("Erreur lors de la récupération des questions du theme :", error);
            res.status(500).send("Erreur lors de la récupération du theme.");
        }
    }
}

module.exports = themesController;
