const client = require("./index");

const dataMapper = {
    async getAllThemes () {
        const query = `SELECT DISTINCT theme FROM questions ORDER BY theme ASC;`;
        const result = await client.query(query);
        return result.rows;
    },

    async selectQuestions (theme, body) {     
        const query = {
            text:`SELECT * FROM questions WHERE theme = $1 LIMIT $2;`,
            values: [theme, parseInt(body.nbQuestions)]
        };
        const result = await client.query(query);
        return result.rows;
    }
}
    
module.exports = dataMapper;