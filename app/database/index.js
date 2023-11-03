const pg = require('pg');

const client = new pg.Client();

client.connect();

module.exports = client;

// INSERT INTO questions (question, options, answer, theme) VALUES
//     ('Quel est le protagoniste principal de l''anime "Naruto" ?', '{"Naruto Uzumaki", "Sasuke Uchiha", "Itachi Uchiha", "Kakashi Hatake"}', 'Naruto Uzumaki', 'Anime'),
//     ('Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?', '{"Fruit Gomu Gomu", "Fruit Mera Mera", "Fruit Hie Hie", "Fruit Yami Yami"}', 'Fruit Gomu Gomu', 'Anime'),
//     ('Quel studio d''animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?', '{"Studio Ghibli", "Madhouse", "Toei Animation", "Bones"}', 'Studio Ghibli', 'Anime'),
//     ('Quel langage de programmation est principalement utilisé pour le développement web côté client ?', '{"JavaScript", "Python", "Ruby", "Java"}', 'JavaScript', 'Développement-Web'),
//     ('Quelle technologie est utilisée pour le style des pages web ?', '{"CSS", "HTML", "PHP", "SQL"}', 'CSS', 'Développement-Web'),
//     ('Quel framework JavaScript est souvent utilisé pour la construction d''applications web modernes ?', '{"React", "Angular", "Vue.js", "Ember.js"}', 'React', 'Développement-Web'),
//     ('Qui a réalisé le film "Inception" en 2010 ?', '{"Christopher Nolan", "Steven Spielberg", "Martin Scorsese", "Quentin Tarantino"}', 'Christopher Nolan', 'Film'),
//     ('Quel film a remporté l''Oscar du meilleur film en 2020 ?', '{"Parasite", "1917", "Joker", "Once Upon a Time in Hollywood"}', 'Parasite', 'Film'),
//     ('Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?', '{"Robert Downey Jr.", "Chris Evans", "Chris Hemsworth", "Mark Ruffalo"}', 'Robert Downey Jr.', 'Film'),
//     ('Quel est le plus grand continent de la Terre ?', '{"Asie", "Afrique", "Amérique du Nord", "Europe"}', 'Asie', 'Géographie'),
//     ('Quelle est la capitale du Japon ?', '{"Tokyo", "Kyoto", "Osaka", "Seoul"}', 'Tokyo', 'Géographie'),
//     ('Dans quel pays trouve-t-on le désert du Sahara ?', '{"Algérie", "Maroc", "Égypte", "Tunisie"}', 'Algérie', 'Géographie'),
//     ('Quel groupe musical est surnommé les "Quatre de Liverpool" ?', '{"The Beatles", "The Rolling Stones", "Led Zeppelin", "Queen"}', 'The Beatles', 'Musique'),
//     ('Quel instrument de musique est associé au musicien virtuose Jimi Hendrix ?', '{"Guitare électrique", "Piano", "Batterie", "Violon"}', 'Guitare électrique', 'Musique'),
//     ('Quel chanteur est connu pour sa chanson "Thriller" ?', '{"Michael Jackson", "Elvis Presley", "Prince", "David Bowie"}', 'Michael Jackson', 'Musique');
