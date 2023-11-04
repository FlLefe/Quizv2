const client = require("./index");

const dataMapper = {
    async getAllThemes () {
        const query = `SELECT DISTINCT theme FROM questions ORDER BY theme ASC;`;
        const result = await client.query(query);
        return result.rows;
    },

    async selectQuestions (theme, body) {     
        const query = {
            text:`SELECT *, 
            (SELECT ARRAY_AGG(option ORDER BY RANDOM()) FROM UNNEST(options) AS option) AS randomized_options
            FROM questions
            WHERE theme = $1
            ORDER BY RANDOM()
            LIMIT $2;`,
            values: [theme, parseInt(body.nbQuestions)]
        };
        const result = await client.query(query);
        return result.rows;
    },

    async getAllQuestions () {
        const query = `SELECT * FROM questions ORDER BY id ASC;`;
        const result = await client.query(query);
        return result.rows;
    }
}
    
module.exports = dataMapper;