const client = require("../database");
const dataFiles = require("../../data/dataFiles.json");



const themesController = {
    async themes(req,res){
        try{
            const query = `SELECT * FROM questions;`;
            const result = await client.query(query);
            console.table(result.rows);
            res.render('themes', {
                dataFiles,
                themes: result.rows
            })
        } catch {
            console.trace("Erreur lors de la récupération des themes :", error);
            res.status(500).send("Erreur lors de la récupération des promos.");
        }
    }
}

module.exports = themesController;
