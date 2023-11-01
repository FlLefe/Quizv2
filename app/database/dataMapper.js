const client = require("./index");

const dataMapper = {
    async getAllThemes () {
        const query = `SELECT DISTINCT theme FROM questions;`;
        const result = await client.query(query);
        return result.rows;
    },

    async selectQuestions (theme, body) {  
        console.log('theme >>' + theme);
        console.log('body.nbQuestions >>' + body.nbQuestions);
         
        const query = `SELECT * FROM questions WHERE theme = '${theme}' LIMIT ${parseInt(body.nbQuestions)};`;
        const result = await client.query(query);
        return result.rows;
    }
}
    
module.exports = dataMapper;