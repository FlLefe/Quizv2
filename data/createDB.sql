-- psql -U quiz -d quiz -f /data/createDB.sql

-- Supprimer les tables s'il y a lieu
DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS option;
DROP TABLE IF EXISTS theme;

-- Créer la table "themes"
CREATE TABLE theme (
    id SERIAL PRIMARY KEY,
    name VARCHAR (150)
);

-- Créer la table "options"
CREATE TABLE option (
    id SERIAL PRIMARY KEY,
    answer_1 VARCHAR (150),
    answer_2 VARCHAR (150),
    answer_3 VARCHAR (150),
    answer_4 VARCHAR (150)
);

-- Créer la table "questions" avec des contraintes de clé étrangère
CREATE TABLE question (
    id SERIAL PRIMARY KEY,
    question_text VARCHAR (256),
    correct_answer VARCHAR (150),
    theme_id INTEGER REFERENCES theme(id) ON DELETE CASCADE,
    option_id SERIAL REFERENCES option(id) ON DELETE CASCADE 
);

-- Insérer des données dans la table "themes"
INSERT INTO theme (name) VALUES 
    ('Anime'),
    ('Développement Web'),
    ('Film'),
    ('Géographie'),
    ('Musique');

INSERT INTO option 
    (answer_1, answer_2, answer_3, answer_4)
VALUES
    ('Hypertext Markup Language','Hyper Transfer Markup Language','Hyper Text Makeup Language','High Text Markup Language'),
    ('PHP','CSS','HTML','JavaScript'),
    ('Cascading Style Sheet','Computer Style Sheet','Creative Style Sheet','Colorful Style Sheet'),
    ('JavaScript','Java','Python','C++'),
    ('Visual Studio Code','Photoshop','Eclipse','Notepad'),
    ('FTP','HTTP','SMTP','POP3'),
    ('<ul>','<ol>','<li>','<dl>'),
    ('JavaScript','PHP','Python','Java'),
    ('color','background-color','font-size','margin'),
    ('<a>','<link>','<href>','<url>'),
    ('Robert Downey Jr.','Chris Evans','Chris Hemsworth','Mark Ruffalo'),
    ('Avatar','Aliens','Terminator','Titanic'),
    ('Peter Jackson','Steven Spielberg','James Cameron','George Lucas'),
    ('Parasite','1917','Joker','Once Upon a Time in Hollywood'),
    ('The Revenant','Titanic','Inception','The Departed'),
    ('Jennifer Lawrence','Emma Stone','Natalie Portman','Scarlett Johansson'),
    ('Le Discours dun Roi','Le Dernier Samouraï','Le Loup de Wall Street','Le Prestige'),
    ('Titanic','Inception','Shutter Island','The Departed'),
    ('Matrix','Inception','Interstellar','Blade Runner'),
    ('The Dark Knight','Spider-Man: Homecoming','Wonder Woman','Black Panther'),
    ('One Piece','Naruto','Bleach','Dragon Ball'),
    ('Naruto Uzumaki','Ichigo Kurosaki','Goku','Luffy'),
    ('Death Note','Attack on Titan','Fullmetal Alchemist','My Hero Academia'),
    ('Fullmetal Alchemist','One Piece','Dragon Ball Z','Naruto'),
    ('Attack on Titan','Naruto','Bleach','One Piece'),
    ('Hunter x Hunter','Fairy Tail','Bleach','Naruto'),
    ('Dragon Ball Z','Naruto','One Piece','Bleach'),
    ('Fullmetal Alchemist','Naruto','One Piece','Attack on Titan'),
    ('Neon Genesis Evangelion','Cowboy Bebop','Sword Art Online','Death Note'),
    ('Naruto','One Piece','Bleach','Dragon Ball'),
    ('Queen','The Beatles','Led Zeppelin','The Rolling Stones'),
    ('Madonna','Beyoncé','Taylor Swift','Adele'),
    ('Jimi Hendrix','Eric Clapton','Jimmy Page','Eddie Van Halen'),
    ('Sgt. Peppers Lonely Hearts Club Band','Abbey Road','The White Album','Revolver'),
    ('Michael Jackson','Prince','Elvis Presley','David Bowie'),
    ('Led Zeppelin','The Rolling Stones','The Who','Pink Floyd'),
    ('ABBA','The Bee Gees','The Supremes','The Carpenters'),
    ('John Lennon','Elton John','Bob Dylan','David Bowie'),
    ('Pink Floyd','The Doors','The Who','Led Zeppelin'),
    ('Aretha Franklin','Whitney Houston','Tina Turner','Diana Ross'),
    ('Asie','Afrique','Amérique du Nord','Europe'),
    ('Tokyo','Kyoto','Osaka','Seoul'),
    ('Algérie','Maroc','Égypte','Tunisie'),
    ('Le Nil','Le Mississippi','L Amazone','Le Yangtsé'),
    ('Afrique du Sud','Namibie','Botswana','Zimbabwe'),
    ('Les Alpes','Les Andes','Les Rocheuses','Les Himalayas'),
    ('Canada','Mexique','Royaume-Uni','Russie'),
    ('Océan Indien','Océan Atlantique','Océan Pacifique','Océan Arctique'),
    ('Mont Everest','Mont Kilimandjaro','Mont McKinley','Mont Fuji'),
    ('Maroc','Algérie','Tunisie','Égypte'),
    ('Naruto Uzumaki','Sasuke Uchiha','Itachi Uchiha','Kakashi Hatake'),
    ('Fruit Gomu Gomu','Fruit Mera Mera','Fruit Hie Hie','Fruit Yami Yami'),
    ('Studio Ghibli','Madhouse','Toei Animation','Bones'),
    ('JavaScript','Python','Ruby','Java'),
    ('CSS','HTML','PHP','SQL'),
    ('React','Angular','Vue.js','Ember.js'),
    ('Christopher Nolan','Steven Spielberg','Martin Scorsese','Quentin Tarantino'),
    ('Parasite','1917','Joker','Once Upon a Time in Hollywood'),
    ('Robert Downey Jr.','Chris Evans','Chris Hemsworth','Mark Ruffalo'),
    ('Asie','Afrique','Amérique du Nord','Europe'),
    ('Tokyo','Kyoto','Osaka','Seoul'),
    ('Algérie','Maroc','Égypte','Tunisie'),
    ('The Beatles','The Rolling Stones','Led Zeppelin','Queen'),
    ('Guitare électrique','Piano','Batterie','Violon'),
    ('Michael Jackson','Elvis Presley','Prince','David Bowie'),
    ('Naruto Uzumaki','Sasuke Uchiha','Itachi Uchiha','Kakashi Hatake'),
    ('Fruit Gomu Gomu','Fruit Mera Mera','Fruit Hie Hie','Fruit Yami Yami'),
    ('Studio Ghibli','Madhouse','Toei Animation','Bones'),
    ('Asie','Afrique','Amérique du Nord','Europe'),
    ('Tokyo','Kyoto','Osaka','Seoul'),
    ('Algérie','Maroc','Égypte','Tunisie'),
    ('CSS','HTML','PHP','SQL'),
    ('React','Angular','Vue.js','Ember.js'),
    ('Christopher Nolan','Steven Spielberg','Martin Scorsese','Quentin Tarantino'),
    ('Parasite','1917','Joker','Once Upon a Time in Hollywood'),
    ('Robert Downey Jr.','Chris Evans','Chris Hemsworth','Mark Ruffalo'),
    ('Naruto Uzumaki','Sasuke Uchiha','Itachi Uchiha','Kakashi Hatake'),
    ('Fruit Gomu Gomu','Fruit Mera Mera','Fruit Hie Hie','Fruit Yami Yami'),
    ('Studio Ghibli','Madhouse','Toei Animation','Bones'),
    ('Naruto Uzumaki','Sasuke Uchiha','Itachi Uchiha','Kakashi Hatake'),
    ('Fruit Gomu Gomu','Fruit Mera Mera','Fruit Hie Hie','Fruit Yami Yami'),
    ('Studio Ghibli','Madhouse','Toei Animation','Bones'),
    ('JavaScript','Python','Ruby','Java'),
    ('En écrivant leur nom dans un cahier','En leur tirant dessus','En les étranglant','En les empoisonnant'),
    ('Naruto','One Punch Man','One Piece','Dragon Ball'),
    ('EVA-01','Mazinger Z','Gundam','Tetsujin 28-go'),
    ('Sublime Text','Visual Studio Code','Atom','Eclipse'),
    ('Node.js','Ruby on Rails','Django','ASP.NET'),
    ('JavaScript','Python','HTML','CSS'),
    ('Martin Scorsese','Christopher Nolan','Quentin Tarantino','Frank Darabont'),
    ('Titanic','The Revenant','Inception','The Departed'),
    ('Sean Connery','Pierce Brosnan','Roger Moore','Daniel Craig'),
    ('Mont Everest','Mont Kilimandjaro','Mont McKinley','Mont Fuji'),
    ('Rome','Venise','Milan','Naples'),
    ('Lac Victoria','Lac Tanganyika','Lac Malawi','Lac Turkana'),
    ('The Beatles','Pink Floyd','The Rolling Stones','Led Zeppelin'),
    ('Adele','Beyoncé','Rihanna','Taylor Swift'),
    ('Candle in the Wind','Rocket Man','Your Song','Crocodile Rock'),
    ('Naruto Uzumaki','Sasuke Uchiha','Kakashi Hatake','Minato Namikaze'),
    ('Gol D. Roger','Monkey D. Luffy','Barbe Noire','Shanks le Roux'),
    ('Onde de l''Ame','Kamehameha Originel','Kamehameha X10','Kamehameha Final'),
    ('JavaScript','Python','Ruby','PHP'),
    ('<ul>','<li>','<ol>','<dl>'),
    ('GET','POST','PUT','DELETE'),
    ('Martin Scorsese','Quentin Tarantino','Steven Spielberg','Christopher Nolan'),
    ('Avatar','Titanic','Aliens','The Terminator'),
    ('Sean Connery','Pierce Brosnan','Roger Moore','Daniel Craig'),
    ('Le Nil','L''Amazone','Le Mississippi','Le Danube'),
    ('Australie','Canada','Afrique du Sud','Nouvelle-Zélande'),
    ('Océan Atlantique','Océan Pacifique','Océan Indien','Océan Arctique'),
    ('The Beatles','Pink Floyd','The Rolling Stones','Led Zeppelin'),
    ('Adele','Beyoncé','Rihanna','Taylor Swift'),
    ('Candle in the Wind','Rocket Man','Your Song','Crocodile Rock'),
    ('Naruto Uzumaki','Sasuke Uchiha','Itachi Uchiha','Kakashi Hatake'),
    ('Fruit Gomu Gomu','Fruit Mera Mera','Fruit Hie Hie','Fruit Yami Yami'),
    ('Studio Ghibli','Madhouse','Toei Animation','Bones'),
    ('JavaScript','Python','Ruby','Java'),
    ('CSS','HTML','PHP','SQL'),
    ('React','Angular','Vue.js','Ember.js'),
    ('Christopher Nolan','Steven Spielberg','Martin Scorsese','Quentin Tarantino'),
    ('Parasite','1917','Joker','Once Upon a Time in Hollywood'),
    ('Robert Downey Jr.','Chris Evans','Chris Hemsworth','Mark Ruffalo'),
    ('Asie','Afrique','Amérique du Nord','Europe'),
    ('Tokyo','Kyoto','Osaka','Seoul'),
    ('Algérie','Maroc','Égypte','Tunisie'),
    ('The Beatles','The Rolling Stones','Led Zeppelin','Queen'),
    ('Guitare électrique','Piano','Batterie','Violon'),
    ('Michael Jackson','Elvis Presley','Prince','David Bowie')
;

INSERT INTO question
    (question_text, correct_answer, theme_id)
VALUES 
('Quest-ce que HTML ?','Hypertext Markup Language',2),
('Quelle technologie est utilisée pour le côté serveur dans le développement Web ?','PHP',2),
('Quelle est la signification de CSS ?','Cascading Style Sheet',2),
('Quel langage de programmation est principalement utilisé pour le développement Web ?','JavaScript',2),
('Quel éditeur de texte est populaire parmi les développeurs Web ?','Visual Studio Code',2),
('Quel protocole est utilisé pour transférer des fichiers sur le Web ?','FTP',2),
('Quelle balise HTML est utilisée pour créer une liste non ordonnée ?','<ul>',2),
('Quelle technologie permet de créer des pages Web dynamiques côté client ?','JavaScript',2),
('Quelle propriété CSS permet de définir la couleur du texte ?','color',2),
('Quelle balise HTML est utilisée pour créer un lien hypertexte ?','<a>',2),
('Quel acteur a joué le rôle de Tony Stark dans Iron Man ?','Robert Downey Jr.',3),
('Dans quel film James Cameron a-t-il dirigé des créatures extraterrestres sur Pandora ?','Avatar',3),
('Quel réalisateur est célèbre pour sa trilogie du Seigneur des Anneaux ?','Peter Jackson',3),
('Quel film a remporté lOscar du meilleur film en 2020 ?','Parasite',3),
('Dans quel film Leonardo DiCaprio a-t-il remporté son premier Oscar ?','The Revenant',3),
('Quelle actrice a joué le rôle de Katniss Everdeen dans la série Hunger Games ?','Jennifer Lawrence',3),
('Quel film raconte lhistoire dun roi bègue dAngleterre ?','Le Discours dun Roi',3),
('Dans quel film trouve-t-on le personnage Jack Dawson ?','Titanic',3),
('Quel film de science-fiction met en vedette Keanu Reeves comme Néo ?','Matrix',3),
('Quel film de super-héros présente Bruce Wayne alias Batman ?','The Dark Knight',3),
('Quel anime suit les aventures de Monkey D. Luffy à la recherche du One Piece ?','One Piece',1),
('Qui est le personnage principal de lanime "Naruto" ?','Naruto Uzumaki',1),
('Dans quel anime un shinigami nommé Ryuk fait équipe avec un lycéen nommé Light Yagami ?','Death Note',1),
('Quel anime suit les aventures de deux frères alchimistes à la recherche de la Pierre Philosophale ?','Fullmetal Alchemist',1),
('Quel anime se déroule dans un monde où les humains doivent combattre des titans mangeurs dhommes ?','Attack on Titan',1),
('Quel anime suit les aventures de Gon Freecss à la recherche de son père ?','Hunter x Hunter',1),
('Dans quel anime des guerriers appelés Saiyans se transforment-ils pour devenir plus puissants ?','Dragon Ball Z',1),
('Quelle série anime suit les aventures de deux frères qui ont échangé leurs corps ?','Fullmetal Alchemist',1),
('Quel est lanime de science-fiction qui se déroule dans un univers où les humains sont en guerre contre les extraterrestres ?','Neon Genesis Evangelion',1),
('Quel anime suit les aventures de Naruto Uzumaki, un jeune ninja en quête de reconnaissance ?','Naruto',1),
('Quel groupe britannique est célèbre pour ses chansons "Bohemian Rhapsody" et "We Will Rock You" ?','Queen',5),
('Quelle artiste pop est surnommée "Queen of Pop" ?','Madonna',5),
('Quel musicien a interprété la chanson "Purple Haze" ?','Jimi Hendrix',5),
('Quel album des Beatles est souvent considéré comme lun des plus grands albums de tous les temps ?','Sgt. Peppers Lonely Hearts Club Band',5),
('Quel artiste est connu pour ses chansons "Billie Jean" et "Thriller" ?','Michael Jackson',5),
('Quel groupe de rock est célèbre pour sa chanson "Stairway to Heaven" ?','Led Zeppelin',5),
('Quel groupe de musique pop suédois a sorti des tubes comme "Dancing Queen" et "Mamma Mia" ?','ABBA',5),
('Quel artiste a chanté la chanson "Imagine" ?','John Lennon',5),
('Quel groupe de rock est connu pour des albums tels que "The Dark Side of the Moon" et "The Wall" ?','Pink Floyd',5),
('Quelle chanteuse de soul est surnommée la "Reine de la Soul" ?','Aretha Franklin',5),
('Quel est le plus grand continent de la Terre ?','Asie',4),
('Quelle est la capitale du Japon ?','Tokyo',4),
('Dans quel pays trouve-t-on le désert du Sahara ?','Algérie',4),
('Quel est le plus long fleuve du monde ?','Le Nil',4),
('Quel pays est situé à la pointe sud de l Afrique ?','Afrique du Sud',4),
('Quelle chaîne de montagnes se trouve en Europe et s étend sur plusieurs pays ?','Les Alpes',4),
('Quel pays est situé au nord des États-Unis et partage une longue frontière terrestre avec eux ?','Canada',4),
('Quel océan se trouve à l est de l Afrique ?','Océan Indien',4),
('Quel est le point le plus haut de la Terre, situé dans l Himalaya ?','Mont Everest',4),
('Dans quel pays se trouve la ville de Marrakech ?','Maroc',4),
('Quel est le protagoniste principal de l''anime "Naruto" ?','Naruto Uzumaki',1),
('Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?','Fruit Gomu Gomu',1),
('Quel studio d''animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?','Studio Ghibli',1),
('Quel langage de programmation est principalement utilisé pour le développement web côté client ?','JavaScript',2),
('Quelle technologie est utilisée pour le style des pages web ?','CSS',2),
('Quel framework JavaScript est souvent utilisé pour la construction d''applications web modernes ?','React',2),
('Qui a réalisé le film "Inception" en 2010 ?','Christopher Nolan',3),
('Quel film a remporté l''Oscar du meilleur film en 2020 ?','Parasite',3),
('Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?','Robert Downey Jr.',3),
('Quel est le plus grand continent de la Terre ?','Asie',4),
('Quelle est la capitale du Japon ?','Tokyo',4),
('Dans quel pays trouve-t-on le désert du Sahara ?','Algérie',4),
('Quel groupe musical est surnommé les "Quatre de Liverpool" ?','The Beatles',5),
('Quel instrument de musique est associé au musicien virtuose Jimi Hendrix ?','Guitare électrique',5),
('Quel chanteur est connu pour sa chanson "Thriller" ?','Michael Jackson',5),
('Quel est le protagoniste principal de l''anime "Naruto" ?','Naruto Uzumaki',1),
('Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?','Fruit Gomu Gomu',1),
('Quel studio d''animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?','Studio Ghibli',1),
('Quel est le plus grand continent de la Terre ?','Asie',4),
('Quelle est la capitale du Japon ?','Tokyo',4),
('Dans quel pays trouve-t-on le désert du Sahara ?','Algérie',4),
('Quelle technologie est utilisée pour le style des pages web ?','CSS',2),
('Quel framework JavaScript est souvent utilisé pour la construction d''applications web modernes ?','React',2),
('Qui a réalisé le film "Inception" en 2010 ?','Christopher Nolan',3),
('Quel film a remporté l''Oscar du meilleur film en 2020 ?','Parasite',3),
('Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?','Robert Downey Jr.',3),
('Quel est le protagoniste principal de l''anime "Naruto" ?','Naruto Uzumaki',1),
('Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?','Fruit Gomu Gomu',1),
('Quel studio d''animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?','Studio Ghibli',1),
('Quel est le protagoniste principal de l''anime "Naruto" ?','Naruto Uzumaki',1),
('Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?','Fruit Gomu Gomu',1),
('Quel studio d''animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?','Studio Ghibli',1),
('Quel langage de programmation est principalement utilisé pour le développement web côté client ?','JavaScript',2),
('Dans "Death Note", comment le protagoniste Light Yagami tue-t-il ses victimes ?','En écrivant leur nom dans un cahier',1),
('Quel anime suit les aventures de Monkey D. Luffy à la recherche du One Piece ?','One Piece',1),
('Quel est le nom du robot géant piloté par Shinji dans "Neon Genesis Evangelion" ?','EVA-01',1),
('Quel éditeur de code est développé par Microsoft et est largement utilisé pour le développement web ?','Visual Studio Code',2),
('Quelle technologie de serveur est souvent utilisée pour la création d''applications web en temps réel ?','Node.js',2),
('Quel langage de programmation est utilisé pour définir la structure d''une page web ?','HTML',2),
('Quel réalisateur est connu pour les films "The Shawshank Redemption" et "The Green Mile" ?','Frank Darabont',3),
('Quel film met en scène Leonardo DiCaprio et Kate Winslet en tant que personnages principaux ?','Titanic',3),
('Quel acteur a incarné James Bond dans le film "GoldenEye" ?','Pierce Brosnan',3),
('Quelle est la plus haute montagne du monde ?','Mont Everest',4),
('Quelle est la capitale de l''Italie ?','Rome',4),
('Quel est le plus grand lac d''Afrique ?','Lac Victoria',4),
('Quel groupe de rock est connu pour les albums "Dark Side of the Moon" et "The Wall" ?','Pink Floyd',5),
('Quelle artiste a sorti l''album "Lemonade" en 2016 ?','Beyoncé',5),
('Quelle chanson d''Elton John est souvent utilisée lors de célébrations sportives ?','Crocodile Rock',5),
('Quel personnage est surnommé "Le Hokage de la Feuille" dans "Naruto" ?','Kakashi Hatake',1),
('Qui est le pirate légendaire dans "One Piece" dont la tête vaut 1 500 000 000 de Berry ?','Gol D. Roger',1),
('Quelle est la première attaque de "Kamehameha" dans "Dragon Ball" ?','Kamehameha Originel',1),
('Quel langage de programmation est utilisé pour le développement web côté serveur ?','PHP',2),
('Quelle balise HTML est utilisée pour créer une liste numérotée ?','<ol>',2),
('Quelle méthode HTTP est utilisée pour soumettre des données depuis un formulaire HTML ?','POST',2),
('Quel réalisateur est connu pour les films "Pulp Fiction" et "Kill Bill" ?','Quentin Tarantino',3),
('Quel film a été réalisé par James Cameron en 2009 et a battu des records au box-office ?','Avatar',3),
('Quel acteur a incarné James Bond dans le film "GoldenEye" ?','Pierce Brosnan',3),
('Quelle est la plus grande rivière du monde en termes de débit d''eau ?','L''Amazone',4),
('Dans quel pays se trouve la ville de Sydney ?','Australie',4),
('Quel océan est le plus grand et le plus profond du monde ?','Océan Pacifique',4),
('Quel groupe de rock est connu pour les albums "Dark Side of the Moon" et "The Wall" ?','Pink Floyd',5),
('Quelle artiste a sorti l''album "Lemonade" en 2016 ?','Beyoncé',5),
('Quelle chanson d''Elton John est souvent utilisée lors de célébrations sportives ?','Crocodile Rock',5),
('Quel est le protagoniste principal de l''anime "Naruto" ?','Naruto Uzumaki',1),
('Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?','Fruit Gomu Gomu',1),
('Quel studio d''animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?','Studio Ghibli',1),
('Quel langage de programmation est principalement utilisé pour le développement web côté client ?','JavaScript',2),
('Quelle technologie est utilisée pour le style des pages web ?','CSS',2),
('Quel framework JavaScript est souvent utilisé pour la construction d''applications web modernes ?','React',2),
('Qui a réalisé le film "Inception" en 2010 ?','Christopher Nolan',3),
('Quel film a remporté l''Oscar du meilleur film en 2020 ?','Parasite',3),
('Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?','Robert Downey Jr.',3),
('Quel est le plus grand continent de la Terre ?','Asie',4),
('Quelle est la capitale du Japon ?','Tokyo',4),
('Dans quel pays trouve-t-on le désert du Sahara ?','Algérie',4),
('Quel groupe musical est surnommé les "Quatre de Liverpool" ?','The Beatles',5),
('Quel instrument de musique est associé au musicien virtuose Jimi Hendrix ?','Guitare électrique',5),
('Quel chanteur est connu pour sa chanson "Thriller" ?','Michael Jackson',5)
;

