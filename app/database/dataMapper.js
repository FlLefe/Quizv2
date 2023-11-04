const client = require("./index");

const dataMapper = {
    async getAllThemes () {
        const query = `SELECT * FROM theme`;
        const result = await client.query(query);
        return result.rows;
    },

    async selectQuestions (idTheme, body) {     
        const query = {
            text:`SELECT * FROM question AS q
            JOIN option AS o ON q.option_id = o.id
            WHERE theme_id = $1
            ORDER BY RANDOM()
            LIMIT $2;`,
            values: [idTheme, parseInt(body.nbQuestions)]
        };
        const result = await client.query(query);
        return result.rows;
    },

    async getAllQuestions () {
        const query = `SELECT * FROM question ORDER BY id ASC;`;
        const result = await client.query(query);
        return result.rows;
    }
}
    
module.exports = dataMapper;

// SELECT *, 
//             (SELECT ARRAY_AGG(option ORDER BY RANDOM()) FROM UNNEST(options) AS option) AS randomized_options
//             FROM questions
//             WHERE theme = $1
//             ORDER BY RANDOM()
//             LIMIT $2;