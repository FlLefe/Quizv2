const pg = require('pg');

const client = new pg.Client();

client.connect();

module.exports = client;

// INSERT INTO questions (question, options, answer, theme) VALUES
//     ('Quel est le plus grand continent de la Terre ?', '{"Asie", "Afrique", "Amérique du Nord", "Europe"}', 'Asie', 'geographie'),
//     ('Quelle est la capitale du Japon ?', '{"Tokyo", "Kyoto", "Osaka", "Seoul"}', 'Tokyo', 'geographie'),
//     ('Dans quel pays trouve-t-on le désert du Sahara ?', '{"Algérie", "Maroc", "Égypte", "Tunisie"}', 'Algérie', 'geographie'),
