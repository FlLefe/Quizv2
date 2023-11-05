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
    },

    async getNbQuestionsByTheme() {
        const query = `SELECT t.id, t.name, COUNT(q.id) AS count
        FROM theme AS t
        LEFT JOIN question AS q ON t.id = q.theme_id
        GROUP BY t.id, t.name
        ORDER BY id ASC;`;
        const result = await client.query(query);
        return result.rows;
    },

    async postNewTheme(name) {
        const query = {
            text:`INSERT INTO theme (name)
            VALUES ($1)
            RETURNING *;`,
            values:[name]
        }
        await client.query(query);
        return;
    },

    async deleteThemes(idArray){
        for (id of idArray){
            const query = {
                text:`DELETE FROM theme
                WHERE id = $1;`,
                values:[parseInt(id)]
            }
            client.query(query);
        };
        return;
    }
}
    
module.exports = dataMapper;