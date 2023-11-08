--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-2.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: option; Type: TABLE; Schema: public; Owner: quiz
--

CREATE TABLE public.option (
    id integer NOT NULL,
    answer_1 character varying(150),
    answer_2 character varying(150),
    answer_3 character varying(150),
    answer_4 character varying(150)
);


ALTER TABLE public.option OWNER TO quiz;

--
-- Name: option_id_seq; Type: SEQUENCE; Schema: public; Owner: quiz
--

CREATE SEQUENCE public.option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.option_id_seq OWNER TO quiz;

--
-- Name: option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quiz
--

ALTER SEQUENCE public.option_id_seq OWNED BY public.option.id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: quiz
--

CREATE TABLE public.question (
    id integer NOT NULL,
    question_text character varying(256),
    correct_answer character varying(150),
    theme_id integer,
    option_id integer NOT NULL
);


ALTER TABLE public.question OWNER TO quiz;

--
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: quiz
--

CREATE SEQUENCE public.question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_id_seq OWNER TO quiz;

--
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quiz
--

ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;


--
-- Name: question_option_id_seq; Type: SEQUENCE; Schema: public; Owner: quiz
--

CREATE SEQUENCE public.question_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_option_id_seq OWNER TO quiz;

--
-- Name: question_option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quiz
--

ALTER SEQUENCE public.question_option_id_seq OWNED BY public.question.option_id;


--
-- Name: theme; Type: TABLE; Schema: public; Owner: quiz
--

CREATE TABLE public.theme (
    id integer NOT NULL,
    name character varying(150)
);


ALTER TABLE public.theme OWNER TO quiz;

--
-- Name: theme_id_seq; Type: SEQUENCE; Schema: public; Owner: quiz
--

CREATE SEQUENCE public.theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_id_seq OWNER TO quiz;

--
-- Name: theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: quiz
--

ALTER SEQUENCE public.theme_id_seq OWNED BY public.theme.id;


--
-- Name: option id; Type: DEFAULT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.option ALTER COLUMN id SET DEFAULT nextval('public.option_id_seq'::regclass);


--
-- Name: question id; Type: DEFAULT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);


--
-- Name: question option_id; Type: DEFAULT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.question ALTER COLUMN option_id SET DEFAULT nextval('public.question_option_id_seq'::regclass);


--
-- Name: theme id; Type: DEFAULT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.theme ALTER COLUMN id SET DEFAULT nextval('public.theme_id_seq'::regclass);


--
-- Data for Name: option; Type: TABLE DATA; Schema: public; Owner: quiz
--

COPY public.option (id, answer_1, answer_2, answer_3, answer_4) FROM stdin;
1	Hypertext Markup Language	Hyper Transfer Markup Language	Hyper Text Makeup Language	High Text Markup Language
2	PHP	CSS	HTML	JavaScript
3	Cascading Style Sheet	Computer Style Sheet	Creative Style Sheet	Colorful Style Sheet
4	JavaScript	Java	Python	C++
5	Visual Studio Code	Photoshop	Eclipse	Notepad
6	FTP	HTTP	SMTP	POP3
7	<ul>	<ol>	<li>	<dl>
8	JavaScript	PHP	Python	Java
9	color	background-color	font-size	margin
10	<a>	<link>	<href>	<url>
11	Robert Downey Jr.	Chris Evans	Chris Hemsworth	Mark Ruffalo
12	Avatar	Aliens	Terminator	Titanic
13	Peter Jackson	Steven Spielberg	James Cameron	George Lucas
14	Parasite	1917	Joker	Once Upon a Time in Hollywood
15	The Revenant	Titanic	Inception	The Departed
16	Jennifer Lawrence	Emma Stone	Natalie Portman	Scarlett Johansson
17	Le Discours dun Roi	Le Dernier Samouraï	Le Loup de Wall Street	Le Prestige
18	Titanic	Inception	Shutter Island	The Departed
19	Matrix	Inception	Interstellar	Blade Runner
20	The Dark Knight	Spider-Man: Homecoming	Wonder Woman	Black Panther
21	One Piece	Naruto	Bleach	Dragon Ball
22	Naruto Uzumaki	Ichigo Kurosaki	Goku	Luffy
23	Death Note	Attack on Titan	Fullmetal Alchemist	My Hero Academia
24	Fullmetal Alchemist	One Piece	Dragon Ball Z	Naruto
25	Attack on Titan	Naruto	Bleach	One Piece
26	Hunter x Hunter	Fairy Tail	Bleach	Naruto
27	Dragon Ball Z	Naruto	One Piece	Bleach
28	Fullmetal Alchemist	Naruto	One Piece	Attack on Titan
29	Neon Genesis Evangelion	Cowboy Bebop	Sword Art Online	Death Note
30	Naruto	One Piece	Bleach	Dragon Ball
31	Queen	The Beatles	Led Zeppelin	The Rolling Stones
32	Madonna	Beyoncé	Taylor Swift	Adele
33	Jimi Hendrix	Eric Clapton	Jimmy Page	Eddie Van Halen
34	Sgt. Peppers Lonely Hearts Club Band	Abbey Road	The White Album	Revolver
35	Michael Jackson	Prince	Elvis Presley	David Bowie
36	Led Zeppelin	The Rolling Stones	The Who	Pink Floyd
37	ABBA	The Bee Gees	The Supremes	The Carpenters
38	John Lennon	Elton John	Bob Dylan	David Bowie
39	Pink Floyd	The Doors	The Who	Led Zeppelin
40	Aretha Franklin	Whitney Houston	Tina Turner	Diana Ross
41	Asie	Afrique	Amérique du Nord	Europe
42	Tokyo	Kyoto	Osaka	Seoul
43	Algérie	Maroc	Égypte	Tunisie
44	Le Nil	Le Mississippi	L Amazone	Le Yangtsé
45	Afrique du Sud	Namibie	Botswana	Zimbabwe
46	Les Alpes	Les Andes	Les Rocheuses	Les Himalayas
47	Canada	Mexique	Royaume-Uni	Russie
48	Océan Indien	Océan Atlantique	Océan Pacifique	Océan Arctique
49	Mont Everest	Mont Kilimandjaro	Mont McKinley	Mont Fuji
50	Maroc	Algérie	Tunisie	Égypte
51	Naruto Uzumaki	Sasuke Uchiha	Itachi Uchiha	Kakashi Hatake
52	Fruit Gomu Gomu	Fruit Mera Mera	Fruit Hie Hie	Fruit Yami Yami
53	Studio Ghibli	Madhouse	Toei Animation	Bones
54	JavaScript	Python	Ruby	Java
55	CSS	HTML	PHP	SQL
56	React	Angular	Vue.js	Ember.js
57	Christopher Nolan	Steven Spielberg	Martin Scorsese	Quentin Tarantino
58	Parasite	1917	Joker	Once Upon a Time in Hollywood
59	Robert Downey Jr.	Chris Evans	Chris Hemsworth	Mark Ruffalo
60	Asie	Afrique	Amérique du Nord	Europe
61	Tokyo	Kyoto	Osaka	Seoul
62	Algérie	Maroc	Égypte	Tunisie
63	The Beatles	The Rolling Stones	Led Zeppelin	Queen
64	Guitare électrique	Piano	Batterie	Violon
65	Michael Jackson	Elvis Presley	Prince	David Bowie
66	Naruto Uzumaki	Sasuke Uchiha	Itachi Uchiha	Kakashi Hatake
67	Fruit Gomu Gomu	Fruit Mera Mera	Fruit Hie Hie	Fruit Yami Yami
68	Studio Ghibli	Madhouse	Toei Animation	Bones
69	Asie	Afrique	Amérique du Nord	Europe
70	Tokyo	Kyoto	Osaka	Seoul
71	Algérie	Maroc	Égypte	Tunisie
72	CSS	HTML	PHP	SQL
73	React	Angular	Vue.js	Ember.js
74	Christopher Nolan	Steven Spielberg	Martin Scorsese	Quentin Tarantino
75	Parasite	1917	Joker	Once Upon a Time in Hollywood
76	Robert Downey Jr.	Chris Evans	Chris Hemsworth	Mark Ruffalo
77	Naruto Uzumaki	Sasuke Uchiha	Itachi Uchiha	Kakashi Hatake
78	Fruit Gomu Gomu	Fruit Mera Mera	Fruit Hie Hie	Fruit Yami Yami
79	Studio Ghibli	Madhouse	Toei Animation	Bones
80	Naruto Uzumaki	Sasuke Uchiha	Itachi Uchiha	Kakashi Hatake
81	Fruit Gomu Gomu	Fruit Mera Mera	Fruit Hie Hie	Fruit Yami Yami
82	Studio Ghibli	Madhouse	Toei Animation	Bones
83	JavaScript	Python	Ruby	Java
84	En écrivant leur nom dans un cahier	En leur tirant dessus	En les étranglant	En les empoisonnant
85	Naruto	One Punch Man	One Piece	Dragon Ball
86	EVA-01	Mazinger Z	Gundam	Tetsujin 28-go
87	Sublime Text	Visual Studio Code	Atom	Eclipse
88	Node.js	Ruby on Rails	Django	ASP.NET
89	JavaScript	Python	HTML	CSS
90	Martin Scorsese	Christopher Nolan	Quentin Tarantino	Frank Darabont
91	Titanic	The Revenant	Inception	The Departed
92	Sean Connery	Pierce Brosnan	Roger Moore	Daniel Craig
93	Mont Everest	Mont Kilimandjaro	Mont McKinley	Mont Fuji
94	Rome	Venise	Milan	Naples
95	Lac Victoria	Lac Tanganyika	Lac Malawi	Lac Turkana
96	The Beatles	Pink Floyd	The Rolling Stones	Led Zeppelin
97	Adele	Beyoncé	Rihanna	Taylor Swift
98	Candle in the Wind	Rocket Man	Your Song	Crocodile Rock
99	Naruto Uzumaki	Sasuke Uchiha	Kakashi Hatake	Minato Namikaze
100	Gol D. Roger	Monkey D. Luffy	Barbe Noire	Shanks le Roux
101	Onde de l'Ame	Kamehameha Originel	Kamehameha X10	Kamehameha Final
102	JavaScript	Python	Ruby	PHP
103	<ul>	<li>	<ol>	<dl>
104	GET	POST	PUT	DELETE
105	Martin Scorsese	Quentin Tarantino	Steven Spielberg	Christopher Nolan
106	Avatar	Titanic	Aliens	The Terminator
107	Sean Connery	Pierce Brosnan	Roger Moore	Daniel Craig
108	Le Nil	L'Amazone	Le Mississippi	Le Danube
109	Australie	Canada	Afrique du Sud	Nouvelle-Zélande
110	Océan Atlantique	Océan Pacifique	Océan Indien	Océan Arctique
111	The Beatles	Pink Floyd	The Rolling Stones	Led Zeppelin
112	Adele	Beyoncé	Rihanna	Taylor Swift
113	Candle in the Wind	Rocket Man	Your Song	Crocodile Rock
114	Naruto Uzumaki	Sasuke Uchiha	Itachi Uchiha	Kakashi Hatake
115	Fruit Gomu Gomu	Fruit Mera Mera	Fruit Hie Hie	Fruit Yami Yami
116	Studio Ghibli	Madhouse	Toei Animation	Bones
117	JavaScript	Python	Ruby	Java
118	CSS	HTML	PHP	SQL
119	React	Angular	Vue.js	Ember.js
120	Christopher Nolan	Steven Spielberg	Martin Scorsese	Quentin Tarantino
121	Parasite	1917	Joker	Once Upon a Time in Hollywood
122	Robert Downey Jr.	Chris Evans	Chris Hemsworth	Mark Ruffalo
123	Asie	Afrique	Amérique du Nord	Europe
124	Tokyo	Kyoto	Osaka	Seoul
125	Algérie	Maroc	Égypte	Tunisie
126	The Beatles	The Rolling Stones	Led Zeppelin	Queen
127	Guitare électrique	Piano	Batterie	Violon
128	Michael Jackson	Elvis Presley	Prince	David Bowie
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: quiz
--

COPY public.question (id, question_text, correct_answer, theme_id, option_id) FROM stdin;
1	Quest-ce que HTML ?	Hypertext Markup Language	2	1
3	Quelle est la signification de CSS ?	Cascading Style Sheet	2	3
4	Quel langage de programmation est principalement utilisé pour le développement Web ?	JavaScript	2	4
5	Quel éditeur de texte est populaire parmi les développeurs Web ?	Visual Studio Code	2	5
6	Quel protocole est utilisé pour transférer des fichiers sur le Web ?	FTP	2	6
7	Quelle balise HTML est utilisée pour créer une liste non ordonnée ?	<ul>	2	7
8	Quelle technologie permet de créer des pages Web dynamiques côté client ?	JavaScript	2	8
9	Quelle propriété CSS permet de définir la couleur du texte ?	color	2	9
10	Quelle balise HTML est utilisée pour créer un lien hypertexte ?	<a>	2	10
11	Quel acteur a joué le rôle de Tony Stark dans Iron Man ?	Robert Downey Jr.	3	11
12	Dans quel film James Cameron a-t-il dirigé des créatures extraterrestres sur Pandora ?	Avatar	3	12
13	Quel réalisateur est célèbre pour sa trilogie du Seigneur des Anneaux ?	Peter Jackson	3	13
14	Quel film a remporté lOscar du meilleur film en 2020 ?	Parasite	3	14
15	Dans quel film Leonardo DiCaprio a-t-il remporté son premier Oscar ?	The Revenant	3	15
16	Quelle actrice a joué le rôle de Katniss Everdeen dans la série Hunger Games ?	Jennifer Lawrence	3	16
17	Quel film raconte lhistoire dun roi bègue dAngleterre ?	Le Discours dun Roi	3	17
18	Dans quel film trouve-t-on le personnage Jack Dawson ?	Titanic	3	18
19	Quel film de science-fiction met en vedette Keanu Reeves comme Néo ?	Matrix	3	19
20	Quel film de super-héros présente Bruce Wayne alias Batman ?	The Dark Knight	3	20
21	Quel anime suit les aventures de Monkey D. Luffy à la recherche du One Piece ?	One Piece	1	21
23	Dans quel anime un shinigami nommé Ryuk fait équipe avec un lycéen nommé Light Yagami ?	Death Note	1	23
24	Quel anime suit les aventures de deux frères alchimistes à la recherche de la Pierre Philosophale ?	Fullmetal Alchemist	1	24
25	Quel anime se déroule dans un monde où les humains doivent combattre des titans mangeurs dhommes ?	Attack on Titan	1	25
26	Quel anime suit les aventures de Gon Freecss à la recherche de son père ?	Hunter x Hunter	1	26
27	Dans quel anime des guerriers appelés Saiyans se transforment-ils pour devenir plus puissants ?	Dragon Ball Z	1	27
28	Quelle série anime suit les aventures de deux frères qui ont échangé leurs corps ?	Fullmetal Alchemist	1	28
29	Quel est lanime de science-fiction qui se déroule dans un univers où les humains sont en guerre contre les extraterrestres ?	Neon Genesis Evangelion	1	29
31	Quel groupe britannique est célèbre pour ses chansons "Bohemian Rhapsody" et "We Will Rock You" ?	Queen	5	31
32	Quelle artiste pop est surnommée "Queen of Pop" ?	Madonna	5	32
33	Quel musicien a interprété la chanson "Purple Haze" ?	Jimi Hendrix	5	33
34	Quel album des Beatles est souvent considéré comme lun des plus grands albums de tous les temps ?	Sgt. Peppers Lonely Hearts Club Band	5	34
35	Quel artiste est connu pour ses chansons "Billie Jean" et "Thriller" ?	Michael Jackson	5	35
36	Quel groupe de rock est célèbre pour sa chanson "Stairway to Heaven" ?	Led Zeppelin	5	36
37	Quel groupe de musique pop suédois a sorti des tubes comme "Dancing Queen" et "Mamma Mia" ?	ABBA	5	37
38	Quel artiste a chanté la chanson "Imagine" ?	John Lennon	5	38
39	Quel groupe de rock est connu pour des albums tels que "The Dark Side of the Moon" et "The Wall" ?	Pink Floyd	5	39
40	Quelle chanteuse de soul est surnommée la "Reine de la Soul" ?	Aretha Franklin	5	40
41	Quel est le plus grand continent de la Terre ?	Asie	4	41
42	Quelle est la capitale du Japon ?	Tokyo	4	42
43	Dans quel pays trouve-t-on le désert du Sahara ?	Algérie	4	43
44	Quel est le plus long fleuve du monde ?	Le Nil	4	44
45	Quel pays est situé à la pointe sud de l Afrique ?	Afrique du Sud	4	45
46	Quelle chaîne de montagnes se trouve en Europe et s étend sur plusieurs pays ?	Les Alpes	4	46
47	Quel pays est situé au nord des États-Unis et partage une longue frontière terrestre avec eux ?	Canada	4	47
48	Quel océan se trouve à l est de l Afrique ?	Océan Indien	4	48
49	Quel est le point le plus haut de la Terre, situé dans l Himalaya ?	Mont Everest	4	49
50	Dans quel pays se trouve la ville de Marrakech ?	Maroc	4	50
51	Quel est le protagoniste principal de l'anime "Naruto" ?	Naruto Uzumaki	1	51
52	Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?	Fruit Gomu Gomu	1	52
53	Quel studio d'animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?	Studio Ghibli	1	53
54	Quel langage de programmation est principalement utilisé pour le développement web côté client ?	JavaScript	2	54
55	Quelle technologie est utilisée pour le style des pages web ?	CSS	2	55
56	Quel framework JavaScript est souvent utilisé pour la construction d'applications web modernes ?	React	2	56
57	Qui a réalisé le film "Inception" en 2010 ?	Christopher Nolan	3	57
58	Quel film a remporté l'Oscar du meilleur film en 2020 ?	Parasite	3	58
59	Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?	Robert Downey Jr.	3	59
60	Quel est le plus grand continent de la Terre ?	Asie	4	60
61	Quelle est la capitale du Japon ?	Tokyo	4	61
62	Dans quel pays trouve-t-on le désert du Sahara ?	Algérie	4	62
63	Quel groupe musical est surnommé les "Quatre de Liverpool" ?	The Beatles	5	63
64	Quel instrument de musique est associé au musicien virtuose Jimi Hendrix ?	Guitare électrique	5	64
65	Quel chanteur est connu pour sa chanson "Thriller" ?	Michael Jackson	5	65
66	Quel est le protagoniste principal de l'anime "Naruto" ?	Naruto Uzumaki	1	66
67	Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?	Fruit Gomu Gomu	1	67
68	Quel studio d'animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?	Studio Ghibli	1	68
69	Quel est le plus grand continent de la Terre ?	Asie	4	69
70	Quelle est la capitale du Japon ?	Tokyo	4	70
71	Dans quel pays trouve-t-on le désert du Sahara ?	Algérie	4	71
72	Quelle technologie est utilisée pour le style des pages web ?	CSS	2	72
73	Quel framework JavaScript est souvent utilisé pour la construction d'applications web modernes ?	React	2	73
74	Qui a réalisé le film "Inception" en 2010 ?	Christopher Nolan	3	74
75	Quel film a remporté l'Oscar du meilleur film en 2020 ?	Parasite	3	75
76	Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?	Robert Downey Jr.	3	76
77	Quel est le protagoniste principal de l'anime "Naruto" ?	Naruto Uzumaki	1	77
78	Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?	Fruit Gomu Gomu	1	78
79	Quel studio d'animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?	Studio Ghibli	1	79
80	Quel est le protagoniste principal de l'anime "Naruto" ?	Naruto Uzumaki	1	80
81	Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?	Fruit Gomu Gomu	1	81
82	Quel studio d'animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?	Studio Ghibli	1	82
83	Quel langage de programmation est principalement utilisé pour le développement web côté client ?	JavaScript	2	83
84	Dans "Death Note", comment le protagoniste Light Yagami tue-t-il ses victimes ?	En écrivant leur nom dans un cahier	1	84
85	Quel anime suit les aventures de Monkey D. Luffy à la recherche du One Piece ?	One Piece	1	85
86	Quel est le nom du robot géant piloté par Shinji dans "Neon Genesis Evangelion" ?	EVA-01	1	86
87	Quel éditeur de code est développé par Microsoft et est largement utilisé pour le développement web ?	Visual Studio Code	2	87
88	Quelle technologie de serveur est souvent utilisée pour la création d'applications web en temps réel ?	Node.js	2	88
89	Quel langage de programmation est utilisé pour définir la structure d'une page web ?	HTML	2	89
90	Quel réalisateur est connu pour les films "The Shawshank Redemption" et "The Green Mile" ?	Frank Darabont	3	90
91	Quel film met en scène Leonardo DiCaprio et Kate Winslet en tant que personnages principaux ?	Titanic	3	91
92	Quel acteur a incarné James Bond dans le film "GoldenEye" ?	Pierce Brosnan	3	92
93	Quelle est la plus haute montagne du monde ?	Mont Everest	4	93
94	Quelle est la capitale de l'Italie ?	Rome	4	94
95	Quel est le plus grand lac d'Afrique ?	Lac Victoria	4	95
96	Quel groupe de rock est connu pour les albums "Dark Side of the Moon" et "The Wall" ?	Pink Floyd	5	96
97	Quelle artiste a sorti l'album "Lemonade" en 2016 ?	Beyoncé	5	97
98	Quelle chanson d'Elton John est souvent utilisée lors de célébrations sportives ?	Crocodile Rock	5	98
99	Quel personnage est surnommé "Le Hokage de la Feuille" dans "Naruto" ?	Kakashi Hatake	1	99
100	Qui est le pirate légendaire dans "One Piece" dont la tête vaut 1 500 000 000 de Berry ?	Gol D. Roger	1	100
101	Quelle est la première attaque de "Kamehameha" dans "Dragon Ball" ?	Kamehameha Originel	1	101
102	Quel langage de programmation est utilisé pour le développement web côté serveur ?	PHP	2	102
103	Quelle balise HTML est utilisée pour créer une liste numérotée ?	<ol>	2	103
104	Quelle méthode HTTP est utilisée pour soumettre des données depuis un formulaire HTML ?	POST	2	104
105	Quel réalisateur est connu pour les films "Pulp Fiction" et "Kill Bill" ?	Quentin Tarantino	3	105
106	Quel film a été réalisé par James Cameron en 2009 et a battu des records au box-office ?	Avatar	3	106
107	Quel acteur a incarné James Bond dans le film "GoldenEye" ?	Pierce Brosnan	3	107
108	Quelle est la plus grande rivière du monde en termes de débit d'eau ?	L'Amazone	4	108
109	Dans quel pays se trouve la ville de Sydney ?	Australie	4	109
110	Quel océan est le plus grand et le plus profond du monde ?	Océan Pacifique	4	110
111	Quel groupe de rock est connu pour les albums "Dark Side of the Moon" et "The Wall" ?	Pink Floyd	5	111
112	Quelle artiste a sorti l'album "Lemonade" en 2016 ?	Beyoncé	5	112
113	Quelle chanson d'Elton John est souvent utilisée lors de célébrations sportives ?	Crocodile Rock	5	113
114	Quel est le protagoniste principal de l'anime "Naruto" ?	Naruto Uzumaki	1	114
115	Dans "One Piece", quel fruit du démon donne à son utilisateur la capacité de devenir élastique ?	Fruit Gomu Gomu	1	115
116	Quel studio d'animation japonais est connu pour "My Neighbor Totoro" et "Spirited Away" ?	Studio Ghibli	1	116
117	Quel langage de programmation est principalement utilisé pour le développement web côté client ?	JavaScript	2	117
118	Quelle technologie est utilisée pour le style des pages web ?	CSS	2	118
119	Quel framework JavaScript est souvent utilisé pour la construction d'applications web modernes ?	React	2	119
120	Qui a réalisé le film "Inception" en 2010 ?	Christopher Nolan	3	120
121	Quel film a remporté l'Oscar du meilleur film en 2020 ?	Parasite	3	121
122	Quel acteur a incarné Tony Stark dans la série de films "Iron Man" ?	Robert Downey Jr.	3	122
123	Quel est le plus grand continent de la Terre ?	Asie	4	123
124	Quelle est la capitale du Japon ?	Tokyo	4	124
125	Dans quel pays trouve-t-on le désert du Sahara ?	Algérie	4	125
126	Quel groupe musical est surnommé les "Quatre de Liverpool" ?	The Beatles	5	126
127	Quel instrument de musique est associé au musicien virtuose Jimi Hendrix ?	Guitare électrique	5	127
128	Quel chanteur est connu pour sa chanson "Thriller" ?	Michael Jackson	5	128
\.


--
-- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: quiz
--

COPY public.theme (id, name) FROM stdin;
1	Anime
2	Développement Web
3	Film
4	Géographie
5	Musique
\.


--
-- Name: option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quiz
--

SELECT pg_catalog.setval('public.option_id_seq', 128, true);


--
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quiz
--

SELECT pg_catalog.setval('public.question_id_seq', 128, true);


--
-- Name: question_option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quiz
--

SELECT pg_catalog.setval('public.question_option_id_seq', 128, true);


--
-- Name: theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: quiz
--

SELECT pg_catalog.setval('public.theme_id_seq', 10, true);


--
-- Name: option option_pkey; Type: CONSTRAINT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.option
    ADD CONSTRAINT option_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: theme theme_pkey; Type: CONSTRAINT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.theme
    ADD CONSTRAINT theme_pkey PRIMARY KEY (id);


--
-- Name: question question_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_option_id_fkey FOREIGN KEY (option_id) REFERENCES public.option(id) ON DELETE CASCADE;


--
-- Name: question question_theme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: quiz
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_theme_id_fkey FOREIGN KEY (theme_id) REFERENCES public.theme(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

