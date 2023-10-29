const pg = require('pg');

const client = new pg.Client(process.env.PG_URL);

client.connect();

module.exports = client;

// INSERT INTO questions (question, options, answer, theme) VALUES
//     ('Quel est le plus grand continent de la Terre ?', '{"Asie", "Afrique", "Amérique du Nord", "Europe"}', 'Asie', 'geographie'),
//     ('Quelle est la capitale du Japon ?', '{"Tokyo", "Kyoto", "Osaka", "Seoul"}', 'Tokyo', 'geographie'),
//     ('Dans quel pays trouve-t-on le désert du Sahara ?', '{"Algérie", "Maroc", "Égypte", "Tunisie"}', 'Algérie', 'geographie'),
//     ('Quel est le plus long fleuve du monde ?', '{"Le Nil", "Le Mississippi", "L Amazone", "Le Yangtsé"}', 'Le Nil', 'geographie'),
//     ('Quel pays est situé à la pointe sud de l Afrique ?', '{"Afrique du Sud", "Namibie", "Botswana", "Zimbabwe"}', 'Afrique du Sud', 'geographie'),
//     ('Quelle chaîne de montagnes se trouve en Europe et s étend sur plusieurs pays ?', '{"Les Alpes", "Les Andes", "Les Rocheuses", "Les Himalayas"}', 'Les Alpes', 'geographie'),
//     ('Quel pays est situé au nord des États-Unis et partage une longue frontière terrestre avec eux ?', '{"Canada", "Mexique", "Royaume-Uni", "Russie"}', 'Canada', 'geographie'),
//     ('Quel océan se trouve à l est de l Afrique ?', '{"Océan Indien", "Océan Atlantique", "Océan Pacifique", "Océan Arctique"}', 'Océan Indien', 'geographie'),
//     ('Quel est le point le plus haut de la Terre, situé dans l Himalaya ?', '{"Mont Everest", "Mont Kilimandjaro", "Mont McKinley", "Mont Fuji"}', 'Mont Everest', 'geographie'),
//     ('Dans quel pays se trouve la ville de Marrakech ?', '{"Maroc", "Algérie", "Tunisie", "Égypte"}', 'Maroc', 'geographie');