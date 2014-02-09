--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: lebowski; Tablespace: 
--

CREATE TABLE actors (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    character_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.actors OWNER TO lebowski;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: lebowski
--

CREATE SEQUENCE actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO lebowski;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lebowski
--

ALTER SEQUENCE actors_id_seq OWNED BY actors.id;


--
-- Name: characters; Type: TABLE; Schema: public; Owner: lebowski; Tablespace: 
--

CREATE TABLE characters (
    id integer NOT NULL,
    name character varying(255),
    actor_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.characters OWNER TO lebowski;

--
-- Name: characters_id_seq; Type: SEQUENCE; Schema: public; Owner: lebowski
--

CREATE SEQUENCE characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.characters_id_seq OWNER TO lebowski;

--
-- Name: characters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lebowski
--

ALTER SEQUENCE characters_id_seq OWNED BY characters.id;


--
-- Name: lines; Type: TABLE; Schema: public; Owner: lebowski; Tablespace: 
--

CREATE TABLE lines (
    id integer NOT NULL,
    text text,
    character_id integer,
    quote_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lines OWNER TO lebowski;

--
-- Name: lines_id_seq; Type: SEQUENCE; Schema: public; Owner: lebowski
--

CREATE SEQUENCE lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lines_id_seq OWNER TO lebowski;

--
-- Name: lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lebowski
--

ALTER SEQUENCE lines_id_seq OWNED BY lines.id;


--
-- Name: quotes; Type: TABLE; Schema: public; Owner: lebowski; Tablespace: 
--

CREATE TABLE quotes (
    id integer NOT NULL,
    image character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.quotes OWNER TO lebowski;

--
-- Name: quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: lebowski
--

CREATE SEQUENCE quotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotes_id_seq OWNER TO lebowski;

--
-- Name: quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lebowski
--

ALTER SEQUENCE quotes_id_seq OWNED BY quotes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: lebowski; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO lebowski;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lebowski
--

ALTER TABLE ONLY actors ALTER COLUMN id SET DEFAULT nextval('actors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lebowski
--

ALTER TABLE ONLY characters ALTER COLUMN id SET DEFAULT nextval('characters_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lebowski
--

ALTER TABLE ONLY lines ALTER COLUMN id SET DEFAULT nextval('lines_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: lebowski
--

ALTER TABLE ONLY quotes ALTER COLUMN id SET DEFAULT nextval('quotes_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: lebowski
--

COPY actors (id, first_name, last_name, character_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lebowski
--

SELECT pg_catalog.setval('actors_id_seq', 1, false);


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: lebowski
--

COPY characters (id, name, actor_id, created_at, updated_at) FROM stdin;
33	The Stranger	\N	2013-07-20 01:22:21.038872	2013-07-20 01:22:21.038872
34	George Bush	\N	2013-07-20 01:22:21.044774	2013-07-20 01:22:21.044774
35	Blonde Thug	\N	2013-07-20 01:22:21.046357	2013-07-20 01:22:21.046357
36	The Dude	\N	2013-07-20 01:22:21.047533	2013-07-20 01:22:21.047533
37	Woo	\N	2013-07-20 01:22:21.048807	2013-07-20 01:22:21.048807
38	Donny	\N	2013-07-20 01:22:21.049973	2013-07-20 01:22:21.049973
39	Walter	\N	2013-07-20 01:22:21.051156	2013-07-20 01:22:21.051156
40	Brandt	\N	2013-07-20 01:22:21.052299	2013-07-20 01:22:21.052299
41	Lebowski	\N	2013-07-20 01:22:21.053481	2013-07-20 01:22:21.053481
42	Bunny	\N	2013-07-20 01:22:21.054601	2013-07-20 01:22:21.054601
43	Smokey	\N	2013-07-20 01:22:21.055719	2013-07-20 01:22:21.055719
44	Fred Dynarski	\N	2013-07-20 01:22:21.056819	2013-07-20 01:22:21.056819
45	Marty	\N	2013-07-20 01:22:21.057911	2013-07-20 01:22:21.057911
46	The Jesus	\N	2013-07-20 01:22:21.059004	2013-07-20 01:22:21.059004
47	Uli Kunkel	\N	2013-07-20 01:22:21.060102	2013-07-20 01:22:21.060102
48	Younger Cop	\N	2013-07-20 01:22:21.061196	2013-07-20 01:22:21.061196
49	Older Cop	\N	2013-07-20 01:22:21.062298	2013-07-20 01:22:21.062298
50	Maude Lebowski	\N	2013-07-20 01:22:21.063407	2013-07-20 01:22:21.063407
51	Tony	\N	2013-07-20 01:22:21.064527	2013-07-20 01:22:21.064527
52	Waitress	\N	2013-07-20 01:22:21.065631	2013-07-20 01:22:21.065631
53	Policeman	\N	2013-07-20 01:22:21.066718	2013-07-20 01:22:21.066718
54	Kieffer	\N	2013-07-20 01:22:21.067807	2013-07-20 01:22:21.067807
55	Franz	\N	2013-07-20 01:22:21.0689	2013-07-20 01:22:21.0689
56	Gary	\N	2013-07-20 01:22:21.06999	2013-07-20 01:22:21.06999
57	Doctor	\N	2013-07-20 01:22:21.071079	2013-07-20 01:22:21.071079
58	Pilar	\N	2013-07-20 01:22:21.072164	2013-07-20 01:22:21.072164
59	Corvette Owner	\N	2013-07-20 01:22:21.073722	2013-07-20 01:22:21.073722
60	Jackie Treehorn	\N	2013-07-20 01:22:21.074859	2013-07-20 01:22:21.074859
61	Police Chief of Malibu	\N	2013-07-20 01:22:21.075982	2013-07-20 01:22:21.075982
62	Cab Driver	\N	2013-07-20 01:22:21.077108	2013-07-20 01:22:21.077108
63	Da Fino	\N	2013-07-20 01:22:21.078221	2013-07-20 01:22:21.078221
64	Donnelly	\N	2013-07-20 01:22:21.07931	2013-07-20 01:22:21.07931
\.


--
-- Name: characters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lebowski
--

SELECT pg_catalog.setval('characters_id_seq', 64, true);


--
-- Data for Name: lines; Type: TABLE DATA; Schema: public; Owner: lebowski
--

COPY lines (id, text, character_id, quote_id, created_at, updated_at) FROM stdin;
766	That guy treats objects like women, man.	36	115	2013-07-20 01:22:23.192488	2013-07-20 01:22:23.192488
52	This Chinaman who peed on my rug, I can't go give him a bill so what the fuck are you talking about?	36	10	2013-07-20 01:22:21.222408	2013-07-20 01:22:21.222408
1	A way out west there was a fella, fella I want to tell you about, fella by the name of Jeff Lebowski.  At least, that was the handle his lovin' parents gave him, but he never had much use for it himself.  This Lebowski, he called himself the Dude. Now, Dude, that's a name no one would self-apply where I come from.  But then, there was a lot about the Dude that didn't make a whole lot of sense to me.  And a lot about where he lived, like- wise.  But then again, maybe that's why I found the place s'durned innarestin'.	33	1	2013-07-20 01:22:21.100689	2013-07-20 01:22:21.100689
2	They call Los Angeles the City of Angels. I didn't find it to be that exactly, but I'll allow as there are some nice folks there. 'Course, I can't say I seen London, and I never been to France, and I ain't never seen no queen in her damn undies as the fella says. But I'll tell you what, after seeing Los Angeles and thisahere story I'm about to unfold-- wal, I guess I seen somethin' ever' bit as stupefyin' as ya'd see in any a those other places, and in English too, so I can die with a smile on my face without feelin' like the good Lord gypped me.	33	1	2013-07-20 01:22:21.105436	2013-07-20 01:22:21.105436
3	Now this story I'm about to unfold took place back in the early nineties-- just about the time of our conflict with Sad'm and the Eye-rackies. I only mention it 'cause some- times there's a man--I won't say a hee-ro, 'cause what's a hee-ro?--but sometimes there's a man.	33	1	2013-07-20 01:22:21.107606	2013-07-20 01:22:21.107606
4	And I'm talkin' about the Dude here-- sometimes there's a man who, wal, he's the man for his time'n place, he fits right in there--and that's the Dude, in Los Angeles.	33	1	2013-07-20 01:22:21.109376	2013-07-20 01:22:21.109376
5	This aggression will not stand. . . This will not stand!	34	\N	2013-07-20 01:22:21.111087	2013-07-20 01:22:21.111087
6	...and even if he's a lazy man, and the Dude was certainly that--quite possibly the laziest in Los Angeles County.	33	2	2013-07-20 01:22:21.112865	2013-07-20 01:22:21.112865
7	...which would place him high in the runnin' for laziest worldwide--but sometimes there's a man. . . sometimes there's a man.	33	2	2013-07-20 01:22:21.114622	2013-07-20 01:22:21.114622
8	Wal, I lost m'train of thought here. But--aw hell, I done innerduced him enough.	33	2	2013-07-20 01:22:21.116303	2013-07-20 01:22:21.116303
9	We want that money, Lebowski. Bunny said you were good for it.	35	3	2013-07-20 01:22:21.118144	2013-07-20 01:22:21.118144
10	Where's the money, Lebowski!	35	3	2013-07-20 01:22:21.120218	2013-07-20 01:22:21.120218
11	Where's the money, Lebowski!	35	3	2013-07-20 01:22:21.122154	2013-07-20 01:22:21.122154
12	WHERE'S THE FUCKING MONEY, SHITHEAD!	35	3	2013-07-20 01:22:21.123917	2013-07-20 01:22:21.123917
13	It's uh, it's down there somewhere. Lemme take another look.	36	3	2013-07-20 01:22:21.125643	2013-07-20 01:22:21.125643
14	Don't fuck with us. If your wife owes money to Jackie Treehorn, that means you owe money to Jackie Treehorn.	35	4	2013-07-20 01:22:21.127383	2013-07-20 01:22:21.127383
15	Ever thus to deadbeats, Lebowski.	37	4	2013-07-20 01:22:21.129136	2013-07-20 01:22:21.129136
16	Oh, man.  Don't do--	36	4	2013-07-20 01:22:21.131042	2013-07-20 01:22:21.131042
17	You see what happens? You see what happens, Lebowski?	35	4	2013-07-20 01:22:21.132791	2013-07-20 01:22:21.132791
18	Look, nobody calls me Lebowski. You got the wrong guy. I'm the Dude, man.	36	4	2013-07-20 01:22:21.152157	2013-07-20 01:22:21.152157
19	Your name is Lebowski. Your wife is Bunny.	35	5	2013-07-20 01:22:21.155077	2013-07-20 01:22:21.155077
20	Bunny? Look, moron.	36	5	2013-07-20 01:22:21.157635	2013-07-20 01:22:21.157635
21	You see a wedding ring? Does this place look like I'm fucking married? The toilet seat's up!	36	5	2013-07-20 01:22:21.1601	2013-07-20 01:22:21.1601
22	The fuck is this?	35	6	2013-07-20 01:22:21.162412	2013-07-20 01:22:21.162412
23	Obviously you're not a golfer.	36	6	2013-07-20 01:22:21.164709	2013-07-20 01:22:21.164709
24	Woo?	35	7	2013-07-20 01:22:21.166924	2013-07-20 01:22:21.166924
25	Yeah?	37	7	2013-07-20 01:22:21.169243	2013-07-20 01:22:21.169243
26	Wasn't this guy supposed to be a millionaire?	35	7	2013-07-20 01:22:21.171574	2013-07-20 01:22:21.171574
27	Uh? Fuck.	37	7	2013-07-20 01:22:21.17374	2013-07-20 01:22:21.17374
28	What do you think?	35	7	2013-07-20 01:22:21.175992	2013-07-20 01:22:21.175992
29	He looks like a fuckin' loser.	37	7	2013-07-20 01:22:21.178285	2013-07-20 01:22:21.178285
30	Hey.  At least I'm housebroken.	36	7	2013-07-20 01:22:21.18046	2013-07-20 01:22:21.18046
31	Fuckin' waste of time.	37	\N	2013-07-20 01:22:21.182727	2013-07-20 01:22:21.182727
32	Thanks a lot, asshole.	35	\N	2013-07-20 01:22:21.184956	2013-07-20 01:22:21.184956
33	Hot damn, I'm throwin' rocks tonight. Mark it, Dude.	38	\N	2013-07-20 01:22:21.187248	2013-07-20 01:22:21.187248
34	This was a valued rug. This was, uh--	39	8	2013-07-20 01:22:21.189341	2013-07-20 01:22:21.189341
35	Yeah man, it really tied the room together--	36	8	2013-07-20 01:22:21.191883	2013-07-20 01:22:21.191883
36	This was a valued, uh.	39	8	2013-07-20 01:22:21.194088	2013-07-20 01:22:21.194088
37	What tied the room together, Dude?	38	8	2013-07-20 01:22:21.19592	2013-07-20 01:22:21.19592
38	Were you listening to the story, Donny?	39	8	2013-07-20 01:22:21.197749	2013-07-20 01:22:21.197749
39	What--	38	8	2013-07-20 01:22:21.199566	2013-07-20 01:22:21.199566
40	Were you listening to the Dude's story?	39	8	2013-07-20 01:22:21.20137	2013-07-20 01:22:21.20137
41	I was bowling--	38	8	2013-07-20 01:22:21.203248	2013-07-20 01:22:21.203248
42	So you have no frame of reference, Donny. You're like a child who wanders in in the middle of a movie and wants to know--	39	8	2013-07-20 01:22:21.205102	2013-07-20 01:22:21.205102
43	What's your point, Walter?	36	9	2013-07-20 01:22:21.206912	2013-07-20 01:22:21.206912
44	There's no fucking reason--here's my point, Dude--there's no fucking reason--	39	9	2013-07-20 01:22:21.208702	2013-07-20 01:22:21.208702
45	Yeah Walter, what's your point?	38	9	2013-07-20 01:22:21.210418	2013-07-20 01:22:21.210418
46	Huh?	39	9	2013-07-20 01:22:21.212107	2013-07-20 01:22:21.212107
47	What's the point of--we all know who was at fault, so what the fuck are you talking about?	36	9	2013-07-20 01:22:21.213843	2013-07-20 01:22:21.213843
48	Huh? No! What the fuck are you talking--I'm not--we're talking about unchecked aggression here--	39	9	2013-07-20 01:22:21.215543	2013-07-20 01:22:21.215543
49	What the fuck is he talking about?	38	10	2013-07-20 01:22:21.217243	2013-07-20 01:22:21.217243
50	My rug.	36	10	2013-07-20 01:22:21.218946	2013-07-20 01:22:21.218946
51	Forget it, Donny. You're out of your element.	39	10	2013-07-20 01:22:21.220699	2013-07-20 01:22:21.220699
330	Yeah.	36	60	2013-07-20 01:22:21.987822	2013-07-20 01:22:21.987822
53	What the fuck are you talking about?! This Chinaman is not the issue! I'm talking about drawing a line in the sand, Dude.  Across this line you do not, uh--and also, Dude, Chinaman is not the preferred, uh. . . Asian- American.  Please.	39	11	2013-07-20 01:22:21.224104	2013-07-20 01:22:21.224104
54	Walter, this is not a guy who built the rail- roads, here, this is a guy who peed on my--	36	11	2013-07-20 01:22:21.225797	2013-07-20 01:22:21.225797
55	What the fuck are you--	39	\N	2013-07-20 01:22:21.227505	2013-07-20 01:22:21.227505
56	Walter, he peed on my rug--	36	\N	2013-07-20 01:22:21.229189	2013-07-20 01:22:21.229189
57	He peed on the Dude's rug--	38	\N	2013-07-20 01:22:21.230881	2013-07-20 01:22:21.230881
58	YOU'RE OUT OF YOUR ELEMENT! This Chinaman is not the issue, Dude.	39	12	2013-07-20 01:22:21.232633	2013-07-20 01:22:21.232633
59	So who--	36	12	2013-07-20 01:22:21.234386	2013-07-20 01:22:21.234386
60	Jeff Lebowski. Come on. This other Jeffrey Lebowski. The millionaire. He's gonna be easier to find anyway than these two, uh. these two. . . And he has the wealth, uh, the resources obviously, and there is no reason, no FUCKING reason, why his wife should go out and owe money and they pee on your rug. Am I wrong?	39	12	2013-07-20 01:22:21.236099	2013-07-20 01:22:21.236099
61	No, but--	36	12	2013-07-20 01:22:21.237804	2013-07-20 01:22:21.237804
62	Am I wrong!	39	12	2013-07-20 01:22:21.239494	2013-07-20 01:22:21.239494
63	Yeah, but--	36	12	2013-07-20 01:22:21.241217	2013-07-20 01:22:21.241217
64	Okay. That, uh. That rug really tied the room together, did it not?	39	12	2013-07-20 01:22:21.242949	2013-07-20 01:22:21.242949
65	Fuckin' A.	36	13	2013-07-20 01:22:21.245229	2013-07-20 01:22:21.245229
66	And this guy peed on it.	38	14	2013-07-20 01:22:21.247105	2013-07-20 01:22:21.247105
67	Donny! Please!	39	14	2013-07-20 01:22:21.248919	2013-07-20 01:22:21.248919
68	Yeah, I could find this Lebowski guy--	36	14	2013-07-20 01:22:21.250741	2013-07-20 01:22:21.250741
69	His name is Lebowski? That's your name, Dude!	38	15	2013-07-20 01:22:21.270294	2013-07-20 01:22:21.270294
70	Yeah, this is the guy, this guy should compensate me for the fucking rug. I mean his wife goes out and owes money and they pee on my rug.	36	16	2013-07-20 01:22:21.273048	2013-07-20 01:22:21.273048
71	Thaaat's right Dude; they pee on your fucking Rug.	39	16	2013-07-20 01:22:21.27526	2013-07-20 01:22:21.27526
72	And this is the study. You can see the various commendations, honorary degrees, et cetera.	40	\N	2013-07-20 01:22:21.277349	2013-07-20 01:22:21.277349
73	Yes, uh, very impressive.	36	\N	2013-07-20 01:22:21.279689	2013-07-20 01:22:21.279689
74	Please, feel free to inspect them.	40	\N	2013-07-20 01:22:21.282066	2013-07-20 01:22:21.282066
75	I'm not really, uh.	36	\N	2013-07-20 01:22:21.284247	2013-07-20 01:22:21.284247
76	Please! Please!	40	\N	2013-07-20 01:22:21.286641	2013-07-20 01:22:21.286641
77	Uh-huh.	36	\N	2013-07-20 01:22:21.289201	2013-07-20 01:22:21.289201
78	That's the key to the city of Pasadena, which Mr. Lebowski was given two years ago in recognition of his various civic, uh.	40	\N	2013-07-20 01:22:21.291494	2013-07-20 01:22:21.291494
79	Uh-huh.	36	\N	2013-07-20 01:22:21.293594	2013-07-20 01:22:21.293594
80	That's a Los Angeles Chamber of Commerce Business Achiever award, which is given--not necessarily given every year!  Given only when there's a worthy, somebody especially--	40	\N	2013-07-20 01:22:21.295933	2013-07-20 01:22:21.295933
81	Hey, is this him with Nancy?	36	\N	2013-07-20 01:22:21.298204	2013-07-20 01:22:21.298204
82	That is indeed Mr. Lebowski with the first lady, yes, taken when--	40	\N	2013-07-20 01:22:21.300492	2013-07-20 01:22:21.300492
83	Lebowski on the right?	36	\N	2013-07-20 01:22:21.302654	2013-07-20 01:22:21.302654
84	Of course, Mr. Lebowski on the right, Mrs.  Reagan on the left, taken when--	40	\N	2013-07-20 01:22:21.30498	2013-07-20 01:22:21.30498
85	He's handicapped, huh?	36	\N	2013-07-20 01:22:21.307348	2013-07-20 01:22:21.307348
86	Mr. Lebowski is disabled, yes. And this picture was taken when Mrs. Reagan was first lady of the nation, yes, yes? Not of California.	40	\N	2013-07-20 01:22:21.31016	2013-07-20 01:22:21.31016
87	And in fact he met privately with the President, though unfortunately there wasn't time for a photo opportunity.	40	\N	2013-07-20 01:22:21.312687	2013-07-20 01:22:21.312687
88	Nancy's pretty good.	36	\N	2013-07-20 01:22:21.3151	2013-07-20 01:22:21.3151
89	Wonderful woman.  We were very--	40	\N	2013-07-20 01:22:21.317326	2013-07-20 01:22:21.317326
90	Are these.	36	\N	2013-07-20 01:22:21.319505	2013-07-20 01:22:21.319505
91	These are Mr. Lebowski's children, so to speak--	40	17	2013-07-20 01:22:21.32221	2013-07-20 01:22:21.32221
92	Different mothers, huh?	36	17	2013-07-20 01:22:21.324716	2013-07-20 01:22:21.324716
93	No, they--	40	17	2013-07-20 01:22:21.327333	2013-07-20 01:22:21.327333
94	I guess he's pretty, uh, racially pretty cool--	36	17	2013-07-20 01:22:21.329658	2013-07-20 01:22:21.329658
95	They're not his, heh-heh, they're not literally his children; they're the Little Lebowski Urban Achievers, inner-city children of promise but without the--	40	\N	2013-07-20 01:22:21.332187	2013-07-20 01:22:21.332187
96	I see.	36	\N	2013-07-20 01:22:21.334639	2013-07-20 01:22:21.334639
97	--without  the means  for higher education, so Mr. Lebowski  has committed  to sending  all of them to college.	40	\N	2013-07-20 01:22:21.337152	2013-07-20 01:22:21.337152
98	Jeez. Think he's got room for one more?	36	\N	2013-07-20 01:22:21.339566	2013-07-20 01:22:21.339566
99	One--oh!  Heh-heh. You never went to college?	40	\N	2013-07-20 01:22:21.342384	2013-07-20 01:22:21.342384
100	Well, yeah I did, but I spent most of my time occupying various, um, administration buildings--	36	\N	2013-07-20 01:22:21.344806	2013-07-20 01:22:21.344806
101	Heh-heh--	40	\N	2013-07-20 01:22:21.347018	2013-07-20 01:22:21.347018
102	--smoking thai-stick, breaking into the ROTC--	36	\N	2013-07-20 01:22:21.34938	2013-07-20 01:22:21.34938
103	Yes, heh--	40	\N	2013-07-20 01:22:21.351739	2013-07-20 01:22:21.351739
104	--and bowling. I'll tell you the truth, Brandt, I don't remember most of it.--Jeez! Fuck me!	36	\N	2013-07-20 01:22:21.354044	2013-07-20 01:22:21.354044
105	Okay sir, you're a Lebowski, I'm a Lebowski, that's terrific, I'm very busy so what can I do for you?	41	18	2013-07-20 01:22:21.356278	2013-07-20 01:22:21.356278
106	Well sir, it's this rug I have, really tied the room together-	36	18	2013-07-20 01:22:21.3586	2013-07-20 01:22:21.3586
107	You told Brandt on the phone, he told me. So where do I fit in?	41	18	2013-07-20 01:22:21.360915	2013-07-20 01:22:21.360915
108	Well they were looking for you, these two guys, they were trying to--	36	19	2013-07-20 01:22:21.363238	2013-07-20 01:22:21.363238
109	I'll say it again, all right? You told Brandt. He told me. I know what happened. Yes? Yes?	41	19	2013-07-20 01:22:21.365554	2013-07-20 01:22:21.365554
110	So you know they were trying to piss on your rug--	36	19	2013-07-20 01:22:21.36793	2013-07-20 01:22:21.36793
111	Did I urinate on your rug?	41	20	2013-07-20 01:22:21.370341	2013-07-20 01:22:21.370341
112	You mean, did you personally come and pee on my--	36	\N	2013-07-20 01:22:21.372845	2013-07-20 01:22:21.372845
113	Hello! Do you speak English? Parla usted Inglese? I'll say it again. Did I urinate on your rug?	41	21	2013-07-20 01:22:21.375121	2013-07-20 01:22:21.375121
114	Well no, like I said, Woo peed on the rug--	36	21	2013-07-20 01:22:21.377383	2013-07-20 01:22:21.377383
115	Hello! Hello! So every time--I just want to understand this, sir-- every time a rug is micturated upon in this fair city, I have to compensate the--	41	21	2013-07-20 01:22:21.379854	2013-07-20 01:22:21.379854
116	Come on, man, I'm not trying to scam anybody here, I'm just--	36	22	2013-07-20 01:22:21.382242	2013-07-20 01:22:21.382242
117	You're just looking for a handout like every other--are you employed, Mr. Lebowski?	41	22	2013-07-20 01:22:21.384692	2013-07-20 01:22:21.384692
118	Look, let me explain something. I'm not Mr. Lebowski; you're Mr. Lebowski. I'm the Dude. So that's what you call me. That, or Duder. His Dudeness. Or El Duderino, if, you know, you're not into the whole brevity thing--	36	23	2013-07-20 01:22:21.387208	2013-07-20 01:22:21.387208
119	Are you employed, sir?	41	24	2013-07-20 01:22:21.38968	2013-07-20 01:22:21.38968
120	Employed?	36	24	2013-07-20 01:22:21.409519	2013-07-20 01:22:21.409519
121	You don't go out and make a living dressed like that in the middle of a weekday.	41	25	2013-07-20 01:22:21.41323	2013-07-20 01:22:21.41323
122	Is this a--what day is this?	36	25	2013-07-20 01:22:21.416047	2013-07-20 01:22:21.416047
123	But I do work, so if you don't mind--	41	26	2013-07-20 01:22:21.418774	2013-07-20 01:22:21.418774
124	No, look. I do mind. The Dude minds. This will not stand, ya know, this will not stand, man. I mean, if your wife owes--	36	26	2013-07-20 01:22:21.421527	2013-07-20 01:22:21.421527
125	My wife is not the issue here. I hope that my wife will someday learn to live on her allowance, which is ample, but if she doesn't, sir, that will be her problem, not mine, just as your rug is your problem, just as every bum's lot in life is his own responsibility regardless of whom he chooses to blame.  I didn't blame anyone for the loss of my legs, some chinaman in Korea took them from me but I went out and achieved anyway. I can't solve your problems, sir, only you can.	41	26	2013-07-20 01:22:21.424065	2013-07-20 01:22:21.424065
126	Ah fuck it.	36	27	2013-07-20 01:22:21.426656	2013-07-20 01:22:21.426656
127	Sure! Fuck it! That's your answer! Tattoo it on your forehead! Your answer to everything! Your revolution is over, Mr. Lebowski! Condolences! The bums lost! ...My advice is, do what your parents did! Get a job, sir! The bums will always lose-- do you hear me, Lebowski? THE BUMS WILL ALWAYS--	41	28	2013-07-20 01:22:21.429209	2013-07-20 01:22:21.429209
128	How was your meeting, Mr. Lebowski?	40	29	2013-07-20 01:22:21.431403	2013-07-20 01:22:21.431403
129	Okay. The old man told me to take any rug in the house.	36	29	2013-07-20 01:22:21.433486	2013-07-20 01:22:21.433486
130	Well, enjoy, and perhaps we'll see you again some time, Dude.	40	\N	2013-07-20 01:22:21.435852	2013-07-20 01:22:21.435852
131	Yeah sure, if I'm ever in the neighborhood, need to use the john.	36	\N	2013-07-20 01:22:21.438129	2013-07-20 01:22:21.438129
132	Blow on them.	42	30	2013-07-20 01:22:21.44019	2013-07-20 01:22:21.44019
133	Huh?	36	\N	2013-07-20 01:22:21.442538	2013-07-20 01:22:21.442538
134	G'ahead. Blow.	42	\N	2013-07-20 01:22:21.44482	2013-07-20 01:22:21.44482
135	You want me to blow on your toes?	36	30	2013-07-20 01:22:21.447198	2013-07-20 01:22:21.447198
136	Uh-huh. . . I can't blow that far.	42	30	2013-07-20 01:22:21.4493	2013-07-20 01:22:21.4493
137	You sure he won't mind?	36	30	2013-07-20 01:22:21.451674	2013-07-20 01:22:21.451674
138	He doesn't care about anything. He's a nihilist.	42	30	2013-07-20 01:22:21.454023	2013-07-20 01:22:21.454023
139	That must be tiring	36	30	2013-07-20 01:22:21.456576	2013-07-20 01:22:21.456576
140	You're not blowing.	42	\N	2013-07-20 01:22:21.459198	2013-07-20 01:22:21.459198
141	Our guest has to be getting along, Mrs. Lebowski.	40	31	2013-07-20 01:22:21.461575	2013-07-20 01:22:21.461575
142	Oh, you're Bunny?	36	31	2013-07-20 01:22:21.46408	2013-07-20 01:22:21.46408
143	I'll suck your cock for a thousand dollars.	42	31	2013-07-20 01:22:21.466287	2013-07-20 01:22:21.466287
144	Ha-ha-ha-ha! Wonderful woman. Very free-spirited. We're all very fond of her.	40	31	2013-07-20 01:22:21.468641	2013-07-20 01:22:21.468641
145	Brandt can't watch though. Or he has to pay a hundred.	42	31	2013-07-20 01:22:21.471017	2013-07-20 01:22:21.471017
146	Ha-ha-ha-ha-ha! That's marvelous.	40	31	2013-07-20 01:22:21.473172	2013-07-20 01:22:21.473172
147	I'm just gonna find a cash machine.	36	31	2013-07-20 01:22:21.475412	2013-07-20 01:22:21.475412
148	Way to go, Dude. If you will it, it is no dream.	39	32	2013-07-20 01:22:21.477904	2013-07-20 01:22:21.477904
149	You're fucking twenty minutes late. What the fuck is that?	36	32	2013-07-20 01:22:21.480727	2013-07-20 01:22:21.480727
150	Theodore Herzel.	39	32	2013-07-20 01:22:21.483474	2013-07-20 01:22:21.483474
151	Huh?	36	32	2013-07-20 01:22:21.486115	2013-07-20 01:22:21.486115
152	State of Israel.  If you will it, Dude, it is no--	39	32	2013-07-20 01:22:21.488621	2013-07-20 01:22:21.488621
153	What the fuck're you talking about? The carrier. What's in the fucking carrier?	36	33	2013-07-20 01:22:21.491084	2013-07-20 01:22:21.491084
154	Huh? Oh--Cynthia's Pomeranian. Can't leave him home alone or he eats the furniture.	39	33	2013-07-20 01:22:21.493672	2013-07-20 01:22:21.493672
155	What the fuck are you--	36	\N	2013-07-20 01:22:21.496108	2013-07-20 01:22:21.496108
156	I'm saying, Cynthia's Pomeranian. I'm looking after it while Cynthia and Marty Ackerman are in Hawaii.	39	\N	2013-07-20 01:22:21.498795	2013-07-20 01:22:21.498795
157	You brought a fucking Pomeranian bowling?	36	34	2013-07-20 01:22:21.501112	2013-07-20 01:22:21.501112
158	What do you mean 'brought it bowling'? I didn't rent it shoes. I'm not buying it a fucking beer. He's not gonna take your fucking turn, Dude.	39	34	2013-07-20 01:22:21.503421	2013-07-20 01:22:21.503421
159	Hey, man, if my fucking ex-wife asked me to take care of her fucking dog while she and her boyfriend went to Honolulu, I'd tell her to go fuck herself.  Why can't she board it?	36	35	2013-07-20 01:22:21.505769	2013-07-20 01:22:21.505769
160	First of all, Dude, you don't have an ex, secondly, it's a fucking show dog with fucking papers. You can't board it. It gets upset, its hair falls out.	39	35	2013-07-20 01:22:21.508239	2013-07-20 01:22:21.508239
161	Hey man--	36	\N	2013-07-20 01:22:21.510568	2013-07-20 01:22:21.510568
162	Fucking dog has papers, Dude.--Over the line! Smokey Huh? Over the line, Smokey! I'm sorry. That's a foul.	39	36	2013-07-20 01:22:21.512837	2013-07-20 01:22:21.512837
163	Bullshit. Eight, Dude.	43	\N	2013-07-20 01:22:21.515234	2013-07-20 01:22:21.515234
164	Excuse me! Mark it zero. Next frame.	39	37	2013-07-20 01:22:21.517557	2013-07-20 01:22:21.517557
165	Bullshit. Walter!	43	37	2013-07-20 01:22:21.519946	2013-07-20 01:22:21.519946
166	This is not Nam. This is bowling. There are rules.	39	37	2013-07-20 01:22:21.522358	2013-07-20 01:22:21.522358
167	Come on Walter, it's just--it's Smokey. So his toe slipped over a little, it's just a game.	36	38	2013-07-20 01:22:21.524836	2013-07-20 01:22:21.524836
168	This is a league game. This determines who enters the next round- robin, am I wrong?	39	38	2013-07-20 01:22:21.527316	2013-07-20 01:22:21.527316
169	Yeah, but--	43	38	2013-07-20 01:22:21.529711	2013-07-20 01:22:21.529711
170	Am I wrong!?	39	38	2013-07-20 01:22:21.532372	2013-07-20 01:22:21.532372
171	Yeah, but I wasn't over. Gimme the marker, Dude, I'm marking it an eight.	43	39	2013-07-20 01:22:21.534927	2013-07-20 01:22:21.534927
172	Smokey my friend, you're entering a world of pain.	39	39	2013-07-20 01:22:21.556301	2013-07-20 01:22:21.556301
173	Hey Walter--	36	\N	2013-07-20 01:22:21.558978	2013-07-20 01:22:21.558978
174	Mark that frame an eight, you're entering a world of pain.	39	39	2013-07-20 01:22:21.561422	2013-07-20 01:22:21.561422
175	I'm not--	43	\N	2013-07-20 01:22:21.563644	2013-07-20 01:22:21.563644
176	A world of pain.	39	39	2013-07-20 01:22:21.56597	2013-07-20 01:22:21.56597
177	Look Dude, I don't hold with this. This guy is your partner, you should--	43	39	2013-07-20 01:22:21.568388	2013-07-20 01:22:21.568388
178	HAS THE WHOLE WORLD GONE CRAZY? AM I THE ONLY ONE HERE WHO GIVES A SHIT ABOUT THE RULES? MARK IT ZERO!	39	40	2013-07-20 01:22:21.570806	2013-07-20 01:22:21.570806
179	Walter, they're calling the cops, put the piece away.	36	\N	2013-07-20 01:22:21.573143	2013-07-20 01:22:21.573143
180	MARK IT ZERO!	39	40	2013-07-20 01:22:21.575588	2013-07-20 01:22:21.575588
181	Walter--	43	\N	2013-07-20 01:22:21.577879	2013-07-20 01:22:21.577879
182	YOU THINK I'M FUCKING AROUND HERE? MARK IT ZERO!!	39	40	2013-07-20 01:22:21.579979	2013-07-20 01:22:21.579979
183	All right! There it is! It's fucking zero! You happy, you crazy fuck?	43	40	2013-07-20 01:22:21.582311	2013-07-20 01:22:21.582311
184	This is a league game, Smokey!	39	40	2013-07-20 01:22:21.584636	2013-07-20 01:22:21.584636
185	Walter, you can't do that. These guys're like me, they're pacificists. Smokey was a conscientious objector.	36	41	2013-07-20 01:22:21.587012	2013-07-20 01:22:21.587012
186	You know Dude, I myself dabbled with pacifism at one point.  Not in Nam, of course--	39	41	2013-07-20 01:22:21.589293	2013-07-20 01:22:21.589293
187	And you know Smokey has emotional problems!	36	41	2013-07-20 01:22:21.591618	2013-07-20 01:22:21.591618
188	You mean--beyond pacifism?	39	41	2013-07-20 01:22:21.594097	2013-07-20 01:22:21.594097
606	Far from it.	33	\N	2013-07-20 01:22:22.746765	2013-07-20 01:22:22.746765
189	He's fragile, man!  He's very fragile!	36	42	2013-07-20 01:22:21.596505	2013-07-20 01:22:21.596505
190	Huh. I did not know that. Well, it's water under the bridge. And we do enter the next round-robin, am I wrong?	39	42	2013-07-20 01:22:21.598882	2013-07-20 01:22:21.598882
191	No, you're not wrong--	36	42	2013-07-20 01:22:21.601232	2013-07-20 01:22:21.601232
192	Am I wrong!	39	42	2013-07-20 01:22:21.603511	2013-07-20 01:22:21.603511
193	You're not wrong, Walter, you're just an asshole.	36	42	2013-07-20 01:22:21.60577	2013-07-20 01:22:21.60577
194	Okay then. We play Quintana and O'Brien next week. They'll be pushovers.	39	43	2013-07-20 01:22:21.60818	2013-07-20 01:22:21.60818
195	Just, just take it easy, Walter.	36	\N	2013-07-20 01:22:21.61048	2013-07-20 01:22:21.61048
196	That's your answer to everything, Dude. And let me point out--pacifism is not--look at our current situation with that camelfucker in Iraq-- pacifism is not something to hide behind.	39	\N	2013-07-20 01:22:21.612775	2013-07-20 01:22:21.612775
197	Well, just take 't easy, man.	36	44	2013-07-20 01:22:21.615015	2013-07-20 01:22:21.615015
198	I'm perfectly calm, Dude.	39	44	2013-07-20 01:22:21.617222	2013-07-20 01:22:21.617222
199	Yeah?  Wavin' a gun around?!	36	44	2013-07-20 01:22:21.619523	2013-07-20 01:22:21.619523
200	Calmer than you are.	39	44	2013-07-20 01:22:21.621759	2013-07-20 01:22:21.621759
201	Just take it easy, man!	36	44	2013-07-20 01:22:21.624212	2013-07-20 01:22:21.624212
202	Calmer than you are.	39	44	2013-07-20 01:22:21.626495	2013-07-20 01:22:21.626495
203	Dude, this is Smokey. Look, I don't wanna be a hard-on about this, and I know it wasn't your fault, but I just thought it was fair to tell you that Gene and I will be submitting this to the League and asking them to set aside the round.  Or maybe forfeit it to us--	43	\N	2013-07-20 01:22:21.628834	2013-07-20 01:22:21.628834
204	Shit!	36	\N	2013-07-20 01:22:21.631096	2013-07-20 01:22:21.631096
205	--so, like I say, just thought, you know, fair warning.  Tell Walter.	43	\N	2013-07-20 01:22:21.633269	2013-07-20 01:22:21.633269
206	Mr. Lebowski, this is Brandt at, uh, well--at Mr. Lebowski's office. Please call us as soon as is convenient.	40	\N	2013-07-20 01:22:21.635644	2013-07-20 01:22:21.635644
207	Mr. Lebowski, this is with the Southern Cal Bowling League. I just got a, an informal report, uh, that a uh, a member of your team, uh, Walter Sobchak, drew a loaded weapon during league play--	44	\N	2013-07-20 01:22:21.638199	2013-07-20 01:22:21.638199
208	Hiya Marty.	36	\N	2013-07-20 01:22:21.640908	2013-07-20 01:22:21.640908
209	Dude, I finally got the venue I wanted.  I'm Performing my dance quintet--you know, my cycle--at Crane Jackson's Fountain Street Theatre on Tuesday night, and I'd love it if you came and gave me notes.	45	\N	2013-07-20 01:22:21.643606	2013-07-20 01:22:21.643606
210	Sure Marty, I'll be there.	36	\N	2013-07-20 01:22:21.646357	2013-07-20 01:22:21.646357
211	Dude, uh, tomorrow is already the tenth.	45	\N	2013-07-20 01:22:21.649081	2013-07-20 01:22:21.649081
212	Yeah, yeah I know. Okay.	36	\N	2013-07-20 01:22:21.651555	2013-07-20 01:22:21.651555
213	Just, uh, just slip the rent under my door.	45	\N	2013-07-20 01:22:21.654062	2013-07-20 01:22:21.654062
214	Yeah, okay.	36	\N	2013-07-20 01:22:21.656543	2013-07-20 01:22:21.656543
215	Mr. Lebowski, Brandt again.  Please do call us when you get in and I'll send the limo.  Let me assure you--I hope you're not avoiding this call because of the rug, which, I assure you, is not a problem.  We need your help and, uh--well we would very much like to see you.  Thank you. It's Brandt.	40	\N	2013-07-20 01:22:21.659013	2013-07-20 01:22:21.659013
216	We've had some terrible news. Mr. Lebowski is in seclusion in the West Wing. Mr. Lebowski.	40	\N	2013-07-20 01:22:21.661365	2013-07-20 01:22:21.661365
217	It's funny.  I can look back on a life of achievement, on challenges met, competitors bested, obstacles overcome.  I've accomplished more than most men, and without the use of my legs.  What. . . What makes a man, Mr. Lebowski?	41	\N	2013-07-20 01:22:21.66386	2013-07-20 01:22:21.66386
218	Dude.	36	\N	2013-07-20 01:22:21.6663	2013-07-20 01:22:21.6663
219	Huh?	41	\N	2013-07-20 01:22:21.66877	2013-07-20 01:22:21.66877
220	I don't know, sir.	36	\N	2013-07-20 01:22:21.671168	2013-07-20 01:22:21.671168
221	Is it. . . is it, being prepared to do the right thing? Whatever the price? Isn't that what makes a man?	41	\N	2013-07-20 01:22:21.673585	2013-07-20 01:22:21.673585
222	Sure. That and a pair of testicles.	36	\N	2013-07-20 01:22:21.676101	2013-07-20 01:22:21.676101
223	You're joking. But perhaps you're right.	41	\N	2013-07-20 01:22:21.695307	2013-07-20 01:22:21.695307
224	Mind if I smoke a jay?	36	\N	2013-07-20 01:22:21.698202	2013-07-20 01:22:21.698202
225	Bunny Lebowski. . . She is the light of my life. Are you surprised at my tears, sir?	41	\N	2013-07-20 01:22:21.700897	2013-07-20 01:22:21.700897
226	Fuckin' A.	36	\N	2013-07-20 01:22:21.703703	2013-07-20 01:22:21.703703
227	Strong men also cry. . . Strong men also cry. I received this fax this morning. As you can see, it is a ransom note. Sent by cowards.  Men who are unable to achieve on a level field of play. Men who will not sign their names. Weaklings. Bums.	41	\N	2013-07-20 01:22:21.706465	2013-07-20 01:22:21.706465
228	Bummer.	36	\N	2013-07-20 01:22:21.709158	2013-07-20 01:22:21.709158
229	Brandt will fill you in on the details.	41	\N	2013-07-20 01:22:21.711737	2013-07-20 01:22:21.711737
230		36	\N	2013-07-20 01:22:21.714182	2013-07-20 01:22:21.714182
231	Mr. Lebowski is prepared to make a generous offer to you to act as courier once we get instructions for the money.	40	\N	2013-07-20 01:22:21.716374	2013-07-20 01:22:21.716374
232	Why me, man?	36	45	2013-07-20 01:22:21.719074	2013-07-20 01:22:21.719074
233	He suspects that the culprits might be the very people who, uh, soiled your rug, and you're in a unique position to confirm or, uh, disconfirm that suspicion.	40	45	2013-07-20 01:22:21.721574	2013-07-20 01:22:21.721574
234	So he thinks it's the carpet-pissers, huh?	36	45	2013-07-20 01:22:21.723909	2013-07-20 01:22:21.723909
235	Well Dude, we just don't know.	40	45	2013-07-20 01:22:21.726191	2013-07-20 01:22:21.726191
236	Fucking Quintana--that creep can roll, man--	36	46	2013-07-20 01:22:21.728455	2013-07-20 01:22:21.728455
237	Yeah, but he's a fucking pervert, Dude.	39	46	2013-07-20 01:22:21.730799	2013-07-20 01:22:21.730799
238	Huh?	36	46	2013-07-20 01:22:21.733117	2013-07-20 01:22:21.733117
239	The man is a sex offender. With a record. Spent six months in Chino for exposing himself to an eight-year-old.	39	46	2013-07-20 01:22:21.735387	2013-07-20 01:22:21.735387
240	Huh.	36	46	2013-07-20 01:22:21.737671	2013-07-20 01:22:21.737671
241	When he moved down to Venice he had to go door-to-door to tell everyone he's a pederast.	39	46	2013-07-20 01:22:21.740186	2013-07-20 01:22:21.740186
242	What's a pederast, Walter?	38	46	2013-07-20 01:22:21.742712	2013-07-20 01:22:21.742712
243	Shut the fuck up, Donny.	39	46	2013-07-20 01:22:21.745093	2013-07-20 01:22:21.745093
244	Anyway. How much they offer you?	39	\N	2013-07-20 01:22:21.74736	2013-07-20 01:22:21.74736
245	Twenty grand. And of course I still keep the rug.	36	\N	2013-07-20 01:22:21.74977	2013-07-20 01:22:21.74977
246	Just for making the hand-off?	39	\N	2013-07-20 01:22:21.752108	2013-07-20 01:22:21.752108
247	Yeah.	36	\N	2013-07-20 01:22:21.754509	2013-07-20 01:22:21.754509
248	...They gave Dude a beeper, so whenever these guys call--	36	47	2013-07-20 01:22:21.757258	2013-07-20 01:22:21.757258
249	What if it's during a game?	39	47	2013-07-20 01:22:21.760055	2013-07-20 01:22:21.760055
250	I told him if it was during league play--	36	47	2013-07-20 01:22:21.762346	2013-07-20 01:22:21.762346
251	If what's during league play?	38	47	2013-07-20 01:22:21.764633	2013-07-20 01:22:21.764633
252	Life does not stop and start at your convenience, you miserable piece of shit.	39	47	2013-07-20 01:22:21.766922	2013-07-20 01:22:21.766922
253	What's wrong with Walter, Dude?	38	\N	2013-07-20 01:22:21.769208	2013-07-20 01:22:21.769208
254	I figure it's easy money, it's all pretty harmless. I mean she probably kidnapped herself.	36	48	2013-07-20 01:22:21.771595	2013-07-20 01:22:21.771595
255	Huh?	39	48	2013-07-20 01:22:21.774002	2013-07-20 01:22:21.774002
256	What do you mean, Dude?	38	48	2013-07-20 01:22:21.776152	2013-07-20 01:22:21.776152
607	Mm.	36	\N	2013-07-20 01:22:22.749756	2013-07-20 01:22:22.749756
257	Rug-peers did not do this. I mean look at it. Young trophy wife. Marries a guy for money but figures he isn't giving her enough. She owes money all over town--	36	48	2013-07-20 01:22:21.778541	2013-07-20 01:22:21.778541
258	That...fucking...bitch!	39	48	2013-07-20 01:22:21.780838	2013-07-20 01:22:21.780838
259	It's all a goddamn fake. Like Lenin said, look for the person who will benefit. And you will, uh, you know, you'll, uh, you know what I'm trying to say--	36	49	2013-07-20 01:22:21.783139	2013-07-20 01:22:21.783139
260	I am the Walrus.	38	49	2013-07-20 01:22:21.785371	2013-07-20 01:22:21.785371
261	That fucking bitch!	39	49	2013-07-20 01:22:21.787817	2013-07-20 01:22:21.787817
262	Yeah.	36	49	2013-07-20 01:22:21.790225	2013-07-20 01:22:21.790225
263	I am the Walrus.	38	49	2013-07-20 01:22:21.792663	2013-07-20 01:22:21.792663
264	Shut the fuck up, Donny! V.I. Lenin! Vladimir Ilyich Ulyanov!	39	49	2013-07-20 01:22:21.795045	2013-07-20 01:22:21.795045
265	What the fuck is he talking about?	38	\N	2013-07-20 01:22:21.797405	2013-07-20 01:22:21.797405
266	That's fucking exactly what happened, Dude! That makes me fucking SICK!	39	\N	2013-07-20 01:22:21.79975	2013-07-20 01:22:21.79975
267	Yeah, well, what do you care, Walter?	36	50	2013-07-20 01:22:21.802097	2013-07-20 01:22:21.802097
268	Yeah Dude, why is Walter so pissed off?	38	50	2013-07-20 01:22:21.804529	2013-07-20 01:22:21.804529
269	Those rich fucks! This whole fucking thing-- I did not watch my buddies die face down in the muck so that this fucking strumpet--	39	50	2013-07-20 01:22:21.806941	2013-07-20 01:22:21.806941
270	I don't see any connection to Vietnam, Walter.	36	51	2013-07-20 01:22:21.809429	2013-07-20 01:22:21.809429
271	Well, there isn't a literal connection, Dude.	39	51	2013-07-20 01:22:21.812099	2013-07-20 01:22:21.812099
272	Walter, face it, there isn't any connection. It's your roll.	36	51	2013-07-20 01:22:21.814656	2013-07-20 01:22:21.814656
273	Have it your way. The point is--	39	51	2013-07-20 01:22:21.817258	2013-07-20 01:22:21.817258
274	It's your roll--	36	51	2013-07-20 01:22:21.836469	2013-07-20 01:22:21.836469
275	The fucking point is--	39	51	2013-07-20 01:22:21.839327	2013-07-20 01:22:21.839327
276	It's your roll.	36	51	2013-07-20 01:22:21.841892	2013-07-20 01:22:21.841892
277	Are you ready to be fucked, man?	46	52	2013-07-20 01:22:21.844341	2013-07-20 01:22:21.844341
278	I see you rolled your way into the semis. Deos mio, man. Liam and me, we're gonna fuck you up.	46	52	2013-07-20 01:22:21.846614	2013-07-20 01:22:21.846614
279	Yeah well, that's just, ya know, like, your opinion, man.	36	52	2013-07-20 01:22:21.848807	2013-07-20 01:22:21.848807
280	Let me tell you something, bendeco. You pull any your crazy shit with us, you flash a piece out on the lanes, I'll take it away from you and stick it up your ass and pull the fucking trigger til it goes 'click'.	46	52	2013-07-20 01:22:21.851253	2013-07-20 01:22:21.851253
281	Jesus.	36	52	2013-07-20 01:22:21.853336	2013-07-20 01:22:21.853336
282	You said it, man. Nobody fucks with the Jesus.	46	52	2013-07-20 01:22:21.855621	2013-07-20 01:22:21.855621
283	Eight-year-olds, Dude.	39	\N	2013-07-20 01:22:21.858107	2013-07-20 01:22:21.858107
284	They called about eighty minutes ago. They want you to take the money and drive north on the 4 5. They'll call you on the portable phone with instructions in about forty minutes. One person only or I'd go with you. They were very clear on that: one person only.  What happened to your jaw?	40	\N	2013-07-20 01:22:21.860237	2013-07-20 01:22:21.860237
285	Oh, nothin', you know.	36	\N	2013-07-20 01:22:21.862649	2013-07-20 01:22:21.862649
286	Here's the money, and the phone. Please, Dude, follow whatever instructions they give.	40	\N	2013-07-20 01:22:21.865182	2013-07-20 01:22:21.865182
287	Uh-huh.	36	\N	2013-07-20 01:22:21.867566	2013-07-20 01:22:21.867566
288	Her life is in your hands.	40	53	2013-07-20 01:22:21.869817	2013-07-20 01:22:21.869817
289	Oh, man, don't say that..	36	53	2013-07-20 01:22:21.871939	2013-07-20 01:22:21.871939
290	Mr. Lebowski asked me to repeat that: Her life is in your hands.	40	53	2013-07-20 01:22:21.874239	2013-07-20 01:22:21.874239
291	Shit.	36	53	2013-07-20 01:22:21.876543	2013-07-20 01:22:21.876543
292	Her life is in your hands, Dude. And report back to us as soon as it's done.	40	53	2013-07-20 01:22:21.878893	2013-07-20 01:22:21.878893
293	Take the ringer.  I'll drive.	39	\N	2013-07-20 01:22:21.881254	2013-07-20 01:22:21.881254
294	The what?	36	\N	2013-07-20 01:22:21.883605	2013-07-20 01:22:21.883605
295	The ringer!  The ringer, Dude!  Have they called yet?	39	\N	2013-07-20 01:22:21.885855	2013-07-20 01:22:21.885855
296	What the hell is this?	36	54	2013-07-20 01:22:21.888157	2013-07-20 01:22:21.888157
297	My dirty undies. Laundry, Dude. The whites.	39	54	2013-07-20 01:22:21.890471	2013-07-20 01:22:21.890471
298	Agh--	36	\N	2013-07-20 01:22:21.892754	2013-07-20 01:22:21.892754
299	Walter, I'm sure there's a reason you brought your dirty undies--	36	55	2013-07-20 01:22:21.895089	2013-07-20 01:22:21.895089
300	Thaaaat's right, Dude. The weight. The ringer cannot look empty.	39	55	2013-07-20 01:22:21.897313	2013-07-20 01:22:21.897313
301	Walter--what the fuck are you thinking?	36	\N	2013-07-20 01:22:21.899613	2013-07-20 01:22:21.899613
302	Well you're right, Dude, I got to thinking. I got to thinking why should we settle for a measly fucking twenty grand--	39	56	2013-07-20 01:22:21.901904	2013-07-20 01:22:21.901904
303	We? What the fuck we? You said you just wanted to come along--	36	56	2013-07-20 01:22:21.904426	2013-07-20 01:22:21.904426
304	My point, Dude, is why should we settle for twenty grand when we can keep the entire million. Am I wrong?	39	56	2013-07-20 01:22:21.906698	2013-07-20 01:22:21.906698
305	Yes you're wrong. This isn't a fucking game, Walter--	36	56	2013-07-20 01:22:21.909166	2013-07-20 01:22:21.909166
306	It is a fucking game. You said so yourself, Dude--she kidnapped herself--	39	56	2013-07-20 01:22:21.911594	2013-07-20 01:22:21.911594
307	Yeah, but--	36	\N	2013-07-20 01:22:21.913783	2013-07-20 01:22:21.913783
308	Dude here.	36	\N	2013-07-20 01:22:21.916082	2013-07-20 01:22:21.916082
309	Who is this?	47	57	2013-07-20 01:22:21.91841	2013-07-20 01:22:21.91841
310	Dude the Bagman. Where do you want us to go?	36	57	2013-07-20 01:22:21.920766	2013-07-20 01:22:21.920766
311	...Us?	47	57	2013-07-20 01:22:21.92318	2013-07-20 01:22:21.92318
312	Shit. . . Uh, yeah, you know, me and the driver. I'm not handling the money and driving the car and talking on the phone all by my fucking--	36	57	2013-07-20 01:22:21.92568	2013-07-20 01:22:21.92568
313	Shut the fuck up. Hello?	47	57	2013-07-20 01:22:21.928105	2013-07-20 01:22:21.928105
314	Yeah?	36	57	2013-07-20 01:22:21.930514	2013-07-20 01:22:21.930514
315	Okay, listen--	47	\N	2013-07-20 01:22:21.932825	2013-07-20 01:22:21.932825
316	Dude, are you fucking this up?	39	58	2013-07-20 01:22:21.935145	2013-07-20 01:22:21.935145
317	Who is that?	47	58	2013-07-20 01:22:21.937504	2013-07-20 01:22:21.937504
318	The driver man, I told you--	36	58	2013-07-20 01:22:21.939927	2013-07-20 01:22:21.939927
319	Oh shit.  Walter.	36	\N	2013-07-20 01:22:21.942729	2013-07-20 01:22:21.942729
320	What the fuck is going on there?	39	58	2013-07-20 01:22:21.945185	2013-07-20 01:22:21.945185
321	They hung up, Walter! You fucked it up! You fucked it up! Her life was in our hands!	36	58	2013-07-20 01:22:21.947627	2013-07-20 01:22:21.947627
322	Easy, Dude.	39	\N	2013-07-20 01:22:21.950139	2013-07-20 01:22:21.950139
323	We're screwed now! We don't get shit and they're gonna kill her! We're fucked, Walter!	36	59	2013-07-20 01:22:21.952605	2013-07-20 01:22:21.952605
324	Dude, nothing is fucked. Come on. You're being very unDude. They'll call back. Look, she kidnapped her--	39	59	2013-07-20 01:22:21.95503	2013-07-20 01:22:21.95503
325	Ya see? Nothing is fucked up here, Dude. Nothing is fucked. These guys are fucking amateurs--	39	59	2013-07-20 01:22:21.974776	2013-07-20 01:22:21.974776
326	Shutup, Walter! Don't say peep when I'm doing business here.	36	59	2013-07-20 01:22:21.978132	2013-07-20 01:22:21.978132
327	Okay Dude. Have it your way. But they're amateurs.	39	59	2013-07-20 01:22:21.980598	2013-07-20 01:22:21.980598
328	Dude here.	36	\N	2013-07-20 01:22:21.983125	2013-07-20 01:22:21.983125
329	Okay, vee proceed. But only if there is no funny stuff.	47	60	2013-07-20 01:22:21.98546	2013-07-20 01:22:21.98546
331	So no funny stuff. Okay?	47	60	2013-07-20 01:22:21.990009	2013-07-20 01:22:21.990009
332	Hey, just tell me where the fuck you want us to go.	36	\N	2013-07-20 01:22:21.992103	2013-07-20 01:22:21.992103
333	That was the sign.	36	\N	2013-07-20 01:22:21.994492	2013-07-20 01:22:21.994492
334	Yeah. So as long as we get her back, nobody's in a position to complain. And we keep the baksheesh.	39	\N	2013-07-20 01:22:21.996786	2013-07-20 01:22:21.996786
335	Terrific, Walter. But you haven't told me how we get her back. Where is she?	36	\N	2013-07-20 01:22:21.999032	2013-07-20 01:22:21.999032
336	That's the simple part, Dude. When we make the handoff, I grab the guy and beat it out of him.	39	61	2013-07-20 01:22:22.001338	2013-07-20 01:22:22.001338
337	...Huh?	39	61	2013-07-20 01:22:22.003537	2013-07-20 01:22:22.003537
338	Yeah. That's a great plan, Walter. That's fucking ingenious, if I understand it correctly. That's a Swiss fucking watch.	36	61	2013-07-20 01:22:22.005908	2013-07-20 01:22:22.005908
339	Thaaat's right, Dude. The beauty of this is its simplicity. If the plan gets too complex something always goes wrong.  If there's one thing I learned in Nam--	39	\N	2013-07-20 01:22:22.008061	2013-07-20 01:22:22.008061
340	Dude.	36	\N	2013-07-20 01:22:22.010408	2013-07-20 01:22:22.010408
341	You are approaching a vooden britch. When you cross it you srow ze bag from ze left vindow of ze moving kar.  Do not slow down.  Vee vatch you.	47	\N	2013-07-20 01:22:22.012664	2013-07-20 01:22:22.012664
342	FUCK.	36	\N	2013-07-20 01:22:22.014999	2013-07-20 01:22:22.014999
343	What'd he say? Where's the hand- off?	39	\N	2013-07-20 01:22:22.017321	2013-07-20 01:22:22.017321
344	There is no fucking hand-off, Walter! At a Wooden bridge we throw the money out  of the car!	36	\N	2013-07-20 01:22:22.019675	2013-07-20 01:22:22.019675
345	Huh?	39	\N	2013-07-20 01:22:22.02197	2013-07-20 01:22:22.02197
346	We throw the money out of the moving car!	36	62	2013-07-20 01:22:22.024154	2013-07-20 01:22:22.024154
347	We can't do that, Dude.  That fucks up our plan.	39	62	2013-07-20 01:22:22.026454	2013-07-20 01:22:22.026454
348	Well call them up and explain it to 'em, Walter!  Your plan is so fucking simple, I'm sure they'd fucking understand it!  That's the beauty of it Walter!	36	62	2013-07-20 01:22:22.028817	2013-07-20 01:22:22.028817
349	Wooden bridge, huh?	39	62	2013-07-20 01:22:22.031149	2013-07-20 01:22:22.031149
350	I'm throwing the money, Walter! We're not fucking around!	36	62	2013-07-20 01:22:22.033442	2013-07-20 01:22:22.033442
351	The bridge is coming up!  Gimme the ringer, Dude!  Chop-chop!	39	\N	2013-07-20 01:22:22.035714	2013-07-20 01:22:22.035714
352	Fuck that!  I love you, Walter, but sooner or later you're gonna have to face the fact that you're a goddamn moron.	36	63	2013-07-20 01:22:22.038177	2013-07-20 01:22:22.038177
353	Okay, Dude.  No time to argue.  Here's the bridge--	39	\N	2013-07-20 01:22:22.040408	2013-07-20 01:22:22.040408
354	Walter!	36	\N	2013-07-20 01:22:22.042775	2013-07-20 01:22:22.042775
355	Your wheel, Dude!  I'm rolling out!	39	\N	2013-07-20 01:22:22.045182	2013-07-20 01:22:22.045182
356	What the fuck?	36	\N	2013-07-20 01:22:22.047623	2013-07-20 01:22:22.047623
357	Your wheel!  At fifteen em-pee-aitch I roll out!  I double back, grab one of 'em and beat it out of him!  The uzi!	39	64	2013-07-20 01:22:22.050021	2013-07-20 01:22:22.050021
358	Uzi?	36	64	2013-07-20 01:22:22.052476	2013-07-20 01:22:22.052476
359	You didn't think I was rolling out of here naked!	39	64	2013-07-20 01:22:22.054892	2013-07-20 01:22:22.054892
360	Walter, please--	36	\N	2013-07-20 01:22:22.057264	2013-07-20 01:22:22.057264
361	Fifteen!  This is it, Dude!  Let's take that hill!	39	\N	2013-07-20 01:22:22.059564	2013-07-20 01:22:22.059564
362	WE HAVE IT!  WE HAVE IT!!	36	\N	2013-07-20 01:22:22.06178	2013-07-20 01:22:22.06178
363	WE HAVE IT!!. . . We have it!	36	\N	2013-07-20 01:22:22.064108	2013-07-20 01:22:22.064108
364	Ahh fuck it, let's go bowling.	39	65	2013-07-20 01:22:22.066474	2013-07-20 01:22:22.066474
365	Aitz chaim he, Dude.  As the ex used to say.	39	\N	2013-07-20 01:22:22.06877	2013-07-20 01:22:22.06877
366	What the fuck is that supposed to mean?  What the fuck're we gonna tell Lebowski?	36	66	2013-07-20 01:22:22.07112	2013-07-20 01:22:22.07112
367	Huh?  Oh, him, yeah.  Well I don't see, um-- what exactly is the problem?	39	66	2013-07-20 01:22:22.07336	2013-07-20 01:22:22.07336
368	Huh?  The problem is--what do you mean what's the--there's no--we didn't-- they're gonna kill that poor woman--	36	66	2013-07-20 01:22:22.075661	2013-07-20 01:22:22.075661
369	What the fuck're you talking about? That poor woman--that poor slut-- kidnapped herself, Dude.  You said so yourself--	39	66	2013-07-20 01:22:22.077893	2013-07-20 01:22:22.077893
370	No, Walter!  I said I thought she kidnapped herself!  You're the one who's so fucking certain--	36	66	2013-07-20 01:22:22.080208	2013-07-20 01:22:22.080208
371	That's right, Dude, 100% certain--	39	66	2013-07-20 01:22:22.082592	2013-07-20 01:22:22.082592
372	They posted the next round of the tournament--	38	67	2013-07-20 01:22:22.084928	2013-07-20 01:22:22.084928
373	Donny, shut the f--when do we play?	39	67	2013-07-20 01:22:22.087297	2013-07-20 01:22:22.087297
374	This Saturday.  Quintana and--	38	67	2013-07-20 01:22:22.089689	2013-07-20 01:22:22.089689
375	Saturday!  Well they'll have to reschedule.	39	67	2013-07-20 01:22:22.092084	2013-07-20 01:22:22.092084
376	Walter, what'm I gonna tell Lebowski?	36	\N	2013-07-20 01:22:22.094443	2013-07-20 01:22:22.094443
377	I told that fuck down at the league office-- who's in charge of scheduling?	39	68	2013-07-20 01:22:22.114979	2013-07-20 01:22:22.114979
378	Walter--	36	\N	2013-07-20 01:22:22.117395	2013-07-20 01:22:22.117395
379	Burkhalter.	38	68	2013-07-20 01:22:22.119884	2013-07-20 01:22:22.119884
380	I told that kraut a fucking thousand times I don't roll on shabbas.	39	68	2013-07-20 01:22:22.122191	2013-07-20 01:22:22.122191
381	It's already posted.	38	68	2013-07-20 01:22:22.124179	2013-07-20 01:22:22.124179
382	WELL THEY CAN FUCKING UN-POST IT!	39	68	2013-07-20 01:22:22.126442	2013-07-20 01:22:22.126442
383	Who gives a shit, Walter?  What about that poor woman?  What do we tell--	36	\N	2013-07-20 01:22:22.128975	2013-07-20 01:22:22.128975
384	C'mon Dude, eventually she'll get sick of her little game and, you know, wander back--	39	\N	2013-07-20 01:22:22.131686	2013-07-20 01:22:22.131686
385	How come you don't roll on Saturday, Walter?	38	69	2013-07-20 01:22:22.134102	2013-07-20 01:22:22.134102
386	I'm shomer shabbas.	39	69	2013-07-20 01:22:22.136606	2013-07-20 01:22:22.136606
387	What's that, Walter?	38	69	2013-07-20 01:22:22.139292	2013-07-20 01:22:22.139292
388	Yeah, and in the meantime what do I tell Lebowski?	36	\N	2013-07-20 01:22:22.141671	2013-07-20 01:22:22.141671
389	Saturday is shabbas.  Jewish day of rest.  Means I don't work, I don't drive a car, I don't fucking ride in a car, I don't handle money, I don't turn on the oven, and I sure as shit don't fucking roll!	39	69	2013-07-20 01:22:22.144095	2013-07-20 01:22:22.144095
390	Sheesh.	38	69	2013-07-20 01:22:22.146521	2013-07-20 01:22:22.146521
391	Walter, how--	36	\N	2013-07-20 01:22:22.1489	2013-07-20 01:22:22.1489
392	Shomer shabbas.	39	69	2013-07-20 01:22:22.151028	2013-07-20 01:22:22.151028
393	That's it.  I'm out of here.	36	\N	2013-07-20 01:22:22.153402	2013-07-20 01:22:22.153402
394	For Christ's sake, Dude. Hell, you just tell him--well, you tell him, uh, we made the hand-off, everything went, uh, you know--	39	70	2013-07-20 01:22:22.155801	2013-07-20 01:22:22.155801
395	Oh yeah, how'd it go?	38	70	2013-07-20 01:22:22.158317	2013-07-20 01:22:22.158317
396	Went alright.  Dude's car got a little dinged up--	39	70	2013-07-20 01:22:22.160399	2013-07-20 01:22:22.160399
397	But Walter, we didn't make the fucking hand- off!  They didn't get, the fucking money and they're gonna-- they're gonna--	36	70	2013-07-20 01:22:22.162703	2013-07-20 01:22:22.162703
398	Yeah yeah, 'kill that poor woman.'	39	70	2013-07-20 01:22:22.165181	2013-07-20 01:22:22.165181
399	Kill that poor woman.	39	70	2013-07-20 01:22:22.16752	2013-07-20 01:22:22.16752
400	Walter, if you can't ride in a car, how d'you get around on Shammas--	38	71	2013-07-20 01:22:22.16974	2013-07-20 01:22:22.16974
524	Could you please keep your voices down--this is a family restaurant.	52	\N	2013-07-20 01:22:22.524581	2013-07-20 01:22:22.524581
526	Walter, this isn't a First Amendment thing.	36	\N	2013-07-20 01:22:22.528021	2013-07-20 01:22:22.528021
401	Really, Dude, you surprise me. They're not gonna kill shit.  They're not gonna do shit.  What can they do?  Fuckin' amateurs.  And meanwhile, look at the bottom line.  Who's sitting on a million fucking dollars? Am I wrong?	39	71	2013-07-20 01:22:22.172054	2013-07-20 01:22:22.172054
402	Walter--	36	\N	2013-07-20 01:22:22.174303	2013-07-20 01:22:22.174303
403	Who's got a fucking million fucking dollars parked in the trunk of our car out here?	39	72	2013-07-20 01:22:22.17666	2013-07-20 01:22:22.17666
404	'Our' car, Walter?	36	72	2013-07-20 01:22:22.178933	2013-07-20 01:22:22.178933
405	And what do they got, Dude?  My dirty undies.  My fucking whites--Say, where is  the car?	39	72	2013-07-20 01:22:22.181326	2013-07-20 01:22:22.181326
406	Who has your undies, Walter?	38	\N	2013-07-20 01:22:22.183646	2013-07-20 01:22:22.183646
407	Where's your car, Dude?	39	72	2013-07-20 01:22:22.185993	2013-07-20 01:22:22.185993
408	You don't know, Walter?  You seem to know the answer to everything else!	36	72	2013-07-20 01:22:22.188333	2013-07-20 01:22:22.188333
409	Hmm.  Well, we were in a handicapped spot.  It, uh, it was probably towed.	39	72	2013-07-20 01:22:22.190931	2013-07-20 01:22:22.190931
410	It's been stolen, Walter!  You fucking know it's been stolen!	36	72	2013-07-20 01:22:22.193483	2013-07-20 01:22:22.193483
411	Well, certainly that's a possibility, Dude--	39	72	2013-07-20 01:22:22.196078	2013-07-20 01:22:22.196078
412	Aw, fuck it.	36	73	2013-07-20 01:22:22.198562	2013-07-20 01:22:22.198562
413	Where you going, Dude?	38	73	2013-07-20 01:22:22.200919	2013-07-20 01:22:22.200919
414	I'm going home, Donny.	36	73	2013-07-20 01:22:22.203407	2013-07-20 01:22:22.203407
415	Your phone's ringing, Dude.	38	73	2013-07-20 01:22:22.205871	2013-07-20 01:22:22.205871
416	Thank you, Donny.	36	73	2013-07-20 01:22:22.208272	2013-07-20 01:22:22.208272
417	1972 Pontiac LeBaron.	36	74	2013-07-20 01:22:22.210704	2013-07-20 01:22:22.210704
418	Color?	48	74	2013-07-20 01:22:22.213177	2013-07-20 01:22:22.213177
419	Green.  Some brown, or, uh, rust, coloration.	36	74	2013-07-20 01:22:22.215529	2013-07-20 01:22:22.215529
420	And was there anything of value in the car?	48	74	2013-07-20 01:22:22.217867	2013-07-20 01:22:22.217867
421	Huh?  Oh.  Yeah.  Tape deck.  Couple of Creedence tapes.  And there was a, uh. . . my briefcase.	36	74	2013-07-20 01:22:22.220094	2013-07-20 01:22:22.220094
422	In the briefcase?	48	75	2013-07-20 01:22:22.222856	2013-07-20 01:22:22.222856
423	Papers.  Just papers.  You know, my papers.  Business papers.	36	75	2013-07-20 01:22:22.225437	2013-07-20 01:22:22.225437
424	And what do you do, sir?	48	75	2013-07-20 01:22:22.22815	2013-07-20 01:22:22.22815
425	I'm unemployed.	36	75	2013-07-20 01:22:22.230969	2013-07-20 01:22:22.230969
426	...Most people, we're working nights, they offer us coffee.	49	76	2013-07-20 01:22:22.233608	2013-07-20 01:22:22.233608
427	...Me, I don't drink coffee. But it's nice when they offer. ...Also, my rug was stolen.	36	76	2013-07-20 01:22:22.236042	2013-07-20 01:22:22.236042
428	Your rug was in the car.	48	76	2013-07-20 01:22:22.256105	2013-07-20 01:22:22.256105
429	No.  Here.	36	76	2013-07-20 01:22:22.258918	2013-07-20 01:22:22.258918
430	Separate incidents?	48	76	2013-07-20 01:22:22.261207	2013-07-20 01:22:22.261207
431	Snap out of it, son.	49	\N	2013-07-20 01:22:22.263654	2013-07-20 01:22:22.263654
432	You find them much?  Stolen cars?	36	77	2013-07-20 01:22:22.266419	2013-07-20 01:22:22.266419
433	Sometimes.  I wouldn't hold out much hope for the tape deck though.  Or the Creedence tapes.	48	77	2013-07-20 01:22:22.269313	2013-07-20 01:22:22.269313
434	And the, uh, the briefcase?	36	\N	2013-07-20 01:22:22.272242	2013-07-20 01:22:22.272242
435	Mr. Lebowski, I'd like to see you. Call when you get home and I'll send a car for you.  My name is Maude Lebowski.  I'm the woman who took the rug.	50	\N	2013-07-20 01:22:22.275127	2013-07-20 01:22:22.275127
436	Well, I guess we can close the file on that one.	49	\N	2013-07-20 01:22:22.277719	2013-07-20 01:22:22.277719
437	I'll be with you in a minute, Mr. Lebowski. Does the female form make you uncomfor- table, Mr. Lebowski?	50	\N	2013-07-20 01:22:22.280233	2013-07-20 01:22:22.280233
438	Is that what that's a picture of?	36	\N	2013-07-20 01:22:22.282837	2013-07-20 01:22:22.282837
439	In a sense, yes.  Elfranco, my robe. My art has been commended as being strongly vaginal.  Which bothers some men.  The word itself makes some men uncomfortable.  Vagina.	50	\N	2013-07-20 01:22:22.285352	2013-07-20 01:22:22.285352
440	Oh yeah?	36	\N	2013-07-20 01:22:22.287674	2013-07-20 01:22:22.287674
441	Yes, they don't like hearing it and find it difficult to say.  Whereas without batting an eye a man will refer to his 'dick' or his 'rod' or his 'Johnson'.	50	\N	2013-07-20 01:22:22.290161	2013-07-20 01:22:22.290161
442	'Johnson'?	36	\N	2013-07-20 01:22:22.29265	2013-07-20 01:22:22.29265
443	Thank you. All right, Mr. Lebowski, let's get down to cases.  My father told me he's agreed to let you have the rug, but it was a gift from me to my late mother, and so was not his to give. Now.  As for this. . . 'kidnapping'--	50	\N	2013-07-20 01:22:22.295177	2013-07-20 01:22:22.295177
444	Huh?	36	\N	2013-07-20 01:22:22.297429	2013-07-20 01:22:22.297429
445	Yes, I know about it. And I know that you acted as courier. And let me tell you something: the whole thing stinks to high heaven.	50	\N	2013-07-20 01:22:22.300136	2013-07-20 01:22:22.300136
446	Right, but let me explain something about that rug--	36	\N	2013-07-20 01:22:22.302829	2013-07-20 01:22:22.302829
447	Do you like sex, Mr. Lebowski?	50	78	2013-07-20 01:22:22.305459	2013-07-20 01:22:22.305459
448	Excuse me?	36	78	2013-07-20 01:22:22.307966	2013-07-20 01:22:22.307966
449	Sex. The physical act of love. Coitus. Do you like it?	50	78	2013-07-20 01:22:22.310515	2013-07-20 01:22:22.310515
450	I was talking about my rug.	36	78	2013-07-20 01:22:22.312926	2013-07-20 01:22:22.312926
451	You're not interested in sex?	50	78	2013-07-20 01:22:22.315635	2013-07-20 01:22:22.315635
452	You mean coitus?	36	78	2013-07-20 01:22:22.317966	2013-07-20 01:22:22.317966
453	I like it too. It's a male myth about feminists that we hate sex. It can be a natural, zesty enterprise. But unfortunately there are some people--it is called satyriasis in men, nymphomania in women--who engage in it compulsively and without joy.	50	\N	2013-07-20 01:22:22.320481	2013-07-20 01:22:22.320481
454	Oh, no.	36	\N	2013-07-20 01:22:22.323139	2013-07-20 01:22:22.323139
455	Yes Mr. Lebowski, these unfortunate souls cannot love in the true sense of the word. Our mutual acquaintance Bunny is one of these.	50	\N	2013-07-20 01:22:22.325394	2013-07-20 01:22:22.325394
456	Listen, Maude, I'm sorry if your stepmother is a nympho, but I don't see what it has to do with--do you have any kalhua?	36	\N	2013-07-20 01:22:22.32768	2013-07-20 01:22:22.32768
457	Take a look at this, sir.	50	\N	2013-07-20 01:22:22.330133	2013-07-20 01:22:22.330133
458	Hello. Nein dizbatcher says zere iss problem mit deine kable.	47	79	2013-07-20 01:22:22.332423	2013-07-20 01:22:22.332423
459	Shit, I know that guy. He's a nihilist.	36	79	2013-07-20 01:22:22.334811	2013-07-20 01:22:22.334811
460	And you recognize her, of course.	50	79	2013-07-20 01:22:22.337475	2013-07-20 01:22:22.337475
461	Za, okay, I bring mein toolz.	47	79	2013-07-20 01:22:22.339979	2013-07-20 01:22:22.339979
462	The story is ludicrous.	50	79	2013-07-20 01:22:22.34247	2013-07-20 01:22:22.34247
463	Mein nommen iss Karl.  Is hard to verk in zese clozes--	47	79	2013-07-20 01:22:22.345678	2013-07-20 01:22:22.345678
464	Lord. You can imagine where it goes from here.	50	79	2013-07-20 01:22:22.348407	2013-07-20 01:22:22.348407
465	He fixes the cable?	36	79	2013-07-20 01:22:22.350908	2013-07-20 01:22:22.350908
466	Don't be fatuous, Jeffrey.  Little matter to me that this woman chose to pursue a career in pornography, nor that she has been 'banging' Jackie Treehorn, to use the parlance of our times.  However.  I am one of two trustees of the Lebowski Foundation, the other being my father.  The Foundation takes youngsters from Watts and--	50	\N	2013-07-20 01:22:22.353438	2013-07-20 01:22:22.353438
467	Shit yeah, the achievers.	36	80	2013-07-20 01:22:22.356512	2013-07-20 01:22:22.356512
525	Oh, please dear!  I've got news for you: the Supreme Court has roundly rejected prior restraint!	39	\N	2013-07-20 01:22:22.526305	2013-07-20 01:22:22.526305
468	Little Lebowski Urban Achievers, yes, and proud we are of all of them. I asked my father about his withdrawal of a million dollars from the Foundation account and he told me about this 'abduction', but I tell you it is preposterous.  This compulsive fornicator is taking my father for the proverbial ride.	50	80	2013-07-20 01:22:22.359092	2013-07-20 01:22:22.359092
469	Yeah, but my-	36	\N	2013-07-20 01:22:22.361414	2013-07-20 01:22:22.361414
470	I'm getting to your rug. My father and I don't get along; he doesn't approve of my lifestyle and, needless to say, I don't approve of his. Still, I hardly wish to make my father's embezzlement a police matter, so I'm proposing that you try to recover the money from the people you delivered it to.	50	\N	2013-07-20 01:22:22.363931	2013-07-20 01:22:22.363931
471	Well--sure, I could do that--	36	\N	2013-07-20 01:22:22.366383	2013-07-20 01:22:22.366383
472	If you successfully do so, I will compensate you to the tune of 10% of the recovered sum.	50	\N	2013-07-20 01:22:22.368791	2013-07-20 01:22:22.368791
473	A hundred.	36	\N	2013-07-20 01:22:22.371435	2013-07-20 01:22:22.371435
474	Thousand, yes, bones or clams or whatever you call them.	50	\N	2013-07-20 01:22:22.374259	2013-07-20 01:22:22.374259
475	Yeah, but what about--	36	\N	2013-07-20 01:22:22.377082	2013-07-20 01:22:22.377082
476	--your rug, yes, well with that money you can buy any number of rugs that don't have sentimental value for me. And I am sorry about that crack on the jaw.	50	\N	2013-07-20 01:22:22.379753	2013-07-20 01:22:22.379753
477	Oh that's okay, I hardly even--	36	\N	2013-07-20 01:22:22.38244	2013-07-20 01:22:22.38244
478	Here's the name and number of a doctor who will look at it for you. You will receive no bill. He's a good man, and thorough.	50	\N	2013-07-20 01:22:22.385074	2013-07-20 01:22:22.385074
479	That's really thoughtful but I--	36	\N	2013-07-20 01:22:22.404605	2013-07-20 01:22:22.404605
480	Please see him, Jeffrey. He's a good man, and thorough.	50	\N	2013-07-20 01:22:22.407604	2013-07-20 01:22:22.407604
481	Fuckin' A, man. I got a rash. Fuckin' A, man. I gotta tell ya Tony. I was feeling really shitty earlier in the day, I'd lost  a little  money, I  was down in the dumps.	36	\N	2013-07-20 01:22:22.410194	2013-07-20 01:22:22.410194
482	Aw, forget about it.	51	\N	2013-07-20 01:22:22.412814	2013-07-20 01:22:22.412814
483	Yeah, man! Fuck it! I can't be worrying about that shit. Life goes on!	36	\N	2013-07-20 01:22:22.415163	2013-07-20 01:22:22.415163
484	Home sweet home, Mr. L. Who's your friend in the Volkswagon?	51	\N	2013-07-20 01:22:22.417417	2013-07-20 01:22:22.417417
485	Huh?	36	\N	2013-07-20 01:22:22.42007	2013-07-20 01:22:22.42007
486	When did he-	36	\N	2013-07-20 01:22:22.422472	2013-07-20 01:22:22.422472
487	Fuck, man!  There's a beverage here!	36	81	2013-07-20 01:22:22.424701	2013-07-20 01:22:22.424701
488	Start talking and talk fast you lousy bum!	41	82	2013-07-20 01:22:22.427111	2013-07-20 01:22:22.427111
489	We've been frantically trying to reach you, Dude.	40	82	2013-07-20 01:22:22.429424	2013-07-20 01:22:22.429424
490	Where's my goddamn money, you bum?!	41	82	2013-07-20 01:22:22.431573	2013-07-20 01:22:22.431573
491	Well we--I don't--	36	\N	2013-07-20 01:22:22.43395	2013-07-20 01:22:22.43395
492	They did not receive the money, you nitwit! They did not receive the goddamn money. HER LIFE WAS IN YOUR HANDS!	41	83	2013-07-20 01:22:22.436459	2013-07-20 01:22:22.436459
493	This is our concern, Dude.	40	83	2013-07-20 01:22:22.438894	2013-07-20 01:22:22.438894
494	No, man, nothing is fucked here--	36	84	2013-07-20 01:22:22.441029	2013-07-20 01:22:22.441029
495	NOTHING IS FUCKED! THE GODDAMN PLANE HAS CRASHED INTO THE MOUNTAIN!	41	84	2013-07-20 01:22:22.443602	2013-07-20 01:22:22.443602
496	C'mon man, who're you gonna believe? Those guys are--we dropped off the damn money--	36	85	2013-07-20 01:22:22.446237	2013-07-20 01:22:22.446237
497	WHAT?!	41	85	2013-07-20 01:22:22.448836	2013-07-20 01:22:22.448836
498	I--the royal we, you know, the editorial--I dropped off the money, exactly as per--Look, I've got certain information, certain things have come to light, and uh, has it ever occurred to you, man, that given the nature of all this new shit, that, uh, instead of running around blaming me, that this whole thing might just be, not, you know, not just such a simple, but uh--you know?	36	85	2013-07-20 01:22:22.451392	2013-07-20 01:22:22.451392
499	What in God's holy name are you blathering about?	41	85	2013-07-20 01:22:22.454127	2013-07-20 01:22:22.454127
500	I'll tell you what I'm blathering about! I got information--new shit has come to light and--shit, man! She kidnapped herself!	36	85	2013-07-20 01:22:22.456548	2013-07-20 01:22:22.456548
501	Well sure, look at it! Young trophy wife, I mean, in the parlance of our times, owes money all over town, including to known pornographers-- and that's cool, that's cool-- but I'm saying, she needs money, and of course they're gonna say they didn't get it 'cause she wants more, man, she's gotta feed the monkey, I mean-- hasn't that ever occurred to you...? Sir?	36	85	2013-07-20 01:22:22.458973	2013-07-20 01:22:22.458973
502	No.  No Mr. Lebowski, that had not occurred to me.	41	86	2013-07-20 01:22:22.482053	2013-07-20 01:22:22.482053
503	That had not occurred to us, Dude.	40	86	2013-07-20 01:22:22.485089	2013-07-20 01:22:22.485089
504	Well, okay, you're not privy to all the new shit, so uh, you know, but that's what you pay me for.  Speaking of which, would it be possible for me to get my twenty grand in cash? I gotta check this with my accountant of course, but my concern is that, you know, it could bump me into a higher tax--	36	86	2013-07-20 01:22:22.487246	2013-07-20 01:22:22.487246
505	Brandt, give him the envelope.	41	87	2013-07-20 01:22:22.489228	2013-07-20 01:22:22.489228
506	Well, okay, if you've already made out the check.  Brandt is handing him a letter-sized envelope which is distended by something inside.	36	87	2013-07-20 01:22:22.491498	2013-07-20 01:22:22.491498
507	We received it this morning.	40	87	2013-07-20 01:22:22.49361	2013-07-20 01:22:22.49361
508	Since you have failed to achieve, even in the modest task that was your charge, since you have stolen my money, and since you have unrepentantly betrayed my trust.	41	87	2013-07-20 01:22:22.495372	2013-07-20 01:22:22.495372
509	I have no choice but to tell these bums that they should do whatever is necessary to recover their money from you, Jeffrey Lebowski. And with Brandt as my witness, tell you this: Any further harm visited upon Bunny, shall be visited tenfold upon your head.	41	87	2013-07-20 01:22:22.497097	2013-07-20 01:22:22.497097
510	...By God sir. I will not abide another toe.	41	87	2013-07-20 01:22:22.499002	2013-07-20 01:22:22.499002
511	That wasn't her toe.	39	88	2013-07-20 01:22:22.500921	2013-07-20 01:22:22.500921
512	Whose toe was it, Walter?	36	88	2013-07-20 01:22:22.502778	2013-07-20 01:22:22.502778
513	How the fuck should I know? I do know that nothing about it indicates--	39	88	2013-07-20 01:22:22.504816	2013-07-20 01:22:22.504816
514	The nail polish, Walter.	36	88	2013-07-20 01:22:22.506626	2013-07-20 01:22:22.506626
515	Fine, Dude. As if it's impossible to get some nail polish, apply it to someone else's toe--	39	88	2013-07-20 01:22:22.508417	2013-07-20 01:22:22.508417
516	Someone else's--where the fuck are they gonna--	36	88	2013-07-20 01:22:22.510157	2013-07-20 01:22:22.510157
517	You want a toe? I can get you a toe, believe me. There are ways, Dude. You don't wanna know about it, believe me.	39	88	2013-07-20 01:22:22.51188	2013-07-20 01:22:22.51188
518	But Walter--	36	\N	2013-07-20 01:22:22.513581	2013-07-20 01:22:22.513581
519	I'll get you a toe by this afternoon--with nail polish. These fucking amateurs. They send us a toe, we're supposed to shit our-selves with fear. Jesus Christ. My point is--	39	89	2013-07-20 01:22:22.515344	2013-07-20 01:22:22.515344
520	They're gonna kill her, Walter, and then they're gonna kill me--	36	89	2013-07-20 01:22:22.517109	2013-07-20 01:22:22.517109
521	Well that's just, that's the stress talking, Dude.  So far we have what looks to me like a series of victimless crimes--	39	89	2013-07-20 01:22:22.518933	2013-07-20 01:22:22.518933
522	What about the toe?	36	89	2013-07-20 01:22:22.520894	2013-07-20 01:22:22.520894
523	FORGET ABOUT THE FUCKING TOE!	39	89	2013-07-20 01:22:22.522739	2013-07-20 01:22:22.522739
527	Sir, if you don't calm down I'm going to have to ask you to leave.	52	\N	2013-07-20 01:22:22.529699	2013-07-20 01:22:22.529699
528	Lady, I got buddies who died face- down in the muck so you and I could enjoy this family restaurant!	39	\N	2013-07-20 01:22:22.531665	2013-07-20 01:22:22.531665
529	All right, I'm leaving.  I'm sorry ma'am.	36	\N	2013-07-20 01:22:22.534022	2013-07-20 01:22:22.534022
530	Don't run away from this, Dude! Goddamnit, this affects all of us!	39	\N	2013-07-20 01:22:22.535913	2013-07-20 01:22:22.535913
531	Our basic freedoms!	39	\N	2013-07-20 01:22:22.537831	2013-07-20 01:22:22.537831
532	I'm staying.  Finishing my coffee. Finishing my coffee.	39	\N	2013-07-20 01:22:22.539619	2013-07-20 01:22:22.539619
533	Mr. Lebowski, this is Duty Officer Rolvaag of the L.A.P.D.	53	\N	2013-07-20 01:22:22.541339	2013-07-20 01:22:22.541339
534	We've recovered your vehicle.  It can be claimed at the North HollyWood Auto Circus there on Victory.	53	\N	2013-07-20 01:22:22.543018	2013-07-20 01:22:22.543018
535	Far out.  Far fuckin' out.	36	\N	2013-07-20 01:22:22.544716	2013-07-20 01:22:22.544716
536	Hunh?	36	\N	2013-07-20 01:22:22.54655	2013-07-20 01:22:22.54655
537	Hey!  This is a private residence, man!	36	\N	2013-07-20 01:22:22.548493	2013-07-20 01:22:22.548493
538	Nice marmot.	36	\N	2013-07-20 01:22:22.550293	2013-07-20 01:22:22.550293
539	Vee vant zat money, Lebowski.	47	\N	2013-07-20 01:22:22.5521	2013-07-20 01:22:22.5521
540	You think veer kidding und making mit de funny stuff?	54	90	2013-07-20 01:22:22.553944	2013-07-20 01:22:22.553944
541	Vee could do things you only dreamed of, Lebowski.	55	90	2013-07-20 01:22:22.555686	2013-07-20 01:22:22.555686
542	Ja, vee could really do it, Lebowski. Vee belief in nossing.	54	90	2013-07-20 01:22:22.557471	2013-07-20 01:22:22.557471
543	Jesus!	36	\N	2013-07-20 01:22:22.55927	2013-07-20 01:22:22.55927
544	Vee belief in nossing, Lebowski! NOSSING!!	47	91	2013-07-20 01:22:22.561068	2013-07-20 01:22:22.561068
545	Jesus Christ!	36	91	2013-07-20 01:22:22.562795	2013-07-20 01:22:22.562795
546	Tomorrow vee come back und cut off your chonson.	47	91	2013-07-20 01:22:22.564527	2013-07-20 01:22:22.564527
547	Excuse me?	36	91	2013-07-20 01:22:22.566407	2013-07-20 01:22:22.566407
548	I SAY VEE CUT OFF YOUR CHONSON!	47	91	2013-07-20 01:22:22.568129	2013-07-20 01:22:22.568129
549	Just sink about zat, Lebowski.	54	91	2013-07-20 01:22:22.570019	2013-07-20 01:22:22.570019
550	Ja, your viggly penis, Lebowski.	47	91	2013-07-20 01:22:22.571893	2013-07-20 01:22:22.571893
551	Ja, und maybe vee stamp on it und skvush it, Lebowski!	54	91	2013-07-20 01:22:22.573631	2013-07-20 01:22:22.573631
552	You're lucky she wasn't chopped, Mr. Lebowski. Must've been a joyride situation; they abandoned the car once they hit the retaining wall.	53	\N	2013-07-20 01:22:22.575446	2013-07-20 01:22:22.575446
553	These were on the road next to the car.  You'll have to get in on the other side.	53	\N	2013-07-20 01:22:22.577235	2013-07-20 01:22:22.577235
554	My fucking briefcase!  It's not here!	36	92	2013-07-20 01:22:22.597209	2013-07-20 01:22:22.597209
555	Yeah, sorry, I saw that on the report. You're lucky they left the tape deck though.	53	92	2013-07-20 01:22:22.599865	2013-07-20 01:22:22.599865
556	My fucking briefcase!  Jesus--what's that smell?	36	\N	2013-07-20 01:22:22.602316	2013-07-20 01:22:22.602316
557	Uh, yeah.  Probably a vagrant, slept in the car.  Or perhaps just used it as a toilet, and moved on.	53	93	2013-07-20 01:22:22.605036	2013-07-20 01:22:22.605036
558	When will you find these guys?  I mean, do you have any promising leads?	36	94	2013-07-20 01:22:22.607352	2013-07-20 01:22:22.607352
559	Leads, yeah.  I'll just check with the boys down at the Crime Lab. They've assigned four more detectives to the case, got us working in shifts.	53	94	2013-07-20 01:22:22.609723	2013-07-20 01:22:22.609723
560	And then they're gonna stamp on it?!	38	\N	2013-07-20 01:22:22.612054	2013-07-20 01:22:22.612054
561	Oh for Christ--will you shut the fuck up, Donny.	39	\N	2013-07-20 01:22:22.614268	2013-07-20 01:22:22.614268
562	I figure my only hope is that the big Lebowski kills me before the Germans can cut my dick off.	36	95	2013-07-20 01:22:22.61672	2013-07-20 01:22:22.61672
563	Now that is ridiculous, Dude.  No one is going to cut your dick off.	39	95	2013-07-20 01:22:22.61923	2013-07-20 01:22:22.61923
564	Thanks Walter.	36	95	2013-07-20 01:22:22.621673	2013-07-20 01:22:22.621673
565	Not if I have anything to say about it.	39	95	2013-07-20 01:22:22.62428	2013-07-20 01:22:22.62428
566	Yeah, thanks Walter.  That gives me a very secure feeling.	36	95	2013-07-20 01:22:22.626775	2013-07-20 01:22:22.626775
567	Dude--	39	95	2013-07-20 01:22:22.629212	2013-07-20 01:22:22.629212
568	That makes me feel all warm inside.	36	95	2013-07-20 01:22:22.631431	2013-07-20 01:22:22.631431
569	Now Dude--	39	\N	2013-07-20 01:22:22.633958	2013-07-20 01:22:22.633958
570	This whole fucking thing--I  could be sitting here with just pee-stains on my rug.	36	96	2013-07-20 01:22:22.636426	2013-07-20 01:22:22.636426
571	Fucking Germans.  Nothing changes. Fucking Nazis.	39	96	2013-07-20 01:22:22.639067	2013-07-20 01:22:22.639067
572	They were Nazis, Dude?	38	96	2013-07-20 01:22:22.641581	2013-07-20 01:22:22.641581
573	Come on, Donny, they were threatening castration!	39	96	2013-07-20 01:22:22.644202	2013-07-20 01:22:22.644202
574	Uh-huh.	38	\N	2013-07-20 01:22:22.646445	2013-07-20 01:22:22.646445
575	Are you gonna split hairs?	39	96	2013-07-20 01:22:22.648693	2013-07-20 01:22:22.648693
576	No--	38	96	2013-07-20 01:22:22.650907	2013-07-20 01:22:22.650907
577	Am I wrong?	39	96	2013-07-20 01:22:22.653394	2013-07-20 01:22:22.653394
578	Well--	38	\N	2013-07-20 01:22:22.655766	2013-07-20 01:22:22.655766
579	They're nihilists.	36	96	2013-07-20 01:22:22.658064	2013-07-20 01:22:22.658064
580	Huh?	39	96	2013-07-20 01:22:22.660235	2013-07-20 01:22:22.660235
581	They kept saying they believe in nothing.	36	96	2013-07-20 01:22:22.662961	2013-07-20 01:22:22.662961
582	Nihilists!  Jesus.	39	96	2013-07-20 01:22:22.665969	2013-07-20 01:22:22.665969
583	Yeah.	36	\N	2013-07-20 01:22:22.668218	2013-07-20 01:22:22.668218
584	And let's also not forget--let's not forget, Dude--that keeping wildlife, an amphibious rodent, for uh, domestic, you know, within the city-- that isn't legal either.	39	97	2013-07-20 01:22:22.670781	2013-07-20 01:22:22.670781
585	What're you, a fucking park ranger now?	36	97	2013-07-20 01:22:22.673162	2013-07-20 01:22:22.673162
586	No, I'm--	39	97	2013-07-20 01:22:22.675661	2013-07-20 01:22:22.675661
587	Who gives a shit about the fucking marmot!	36	97	2013-07-20 01:22:22.678281	2013-07-20 01:22:22.678281
588	--We're sympathizing here, Dude--	39	97	2013-07-20 01:22:22.681317	2013-07-20 01:22:22.681317
589	Fuck your sympathy!  I don't need your sympathy, man, I need my fucking Johnson!	36	97	2013-07-20 01:22:22.683747	2013-07-20 01:22:22.683747
590	What do you need that for, Dude?	38	\N	2013-07-20 01:22:22.686258	2013-07-20 01:22:22.686258
591	You gotta buck up, man, you can't go into the tournament with this negative attitude--	39	98	2013-07-20 01:22:22.688722	2013-07-20 01:22:22.688722
592	Fuck the tournament!  Fuck you, Walter!	36	98	2013-07-20 01:22:22.691227	2013-07-20 01:22:22.691227
593	Fuck the tournament?!	39	98	2013-07-20 01:22:22.693573	2013-07-20 01:22:22.693573
594	Okay Dude.  I can see you don't want to be cheered up.  C'mon Donny, let's go get a lane.	39	98	2013-07-20 01:22:22.696095	2013-07-20 01:22:22.696095
595	Another Caucasian, Gary.	36	\N	2013-07-20 01:22:22.698816	2013-07-20 01:22:22.698816
596	Right, Dude.	56	\N	2013-07-20 01:22:22.701473	2013-07-20 01:22:22.701473
597	Friends like these, huh Gary.	36	\N	2013-07-20 01:22:22.704089	2013-07-20 01:22:22.704089
598	That's right, Dude.	56	\N	2013-07-20 01:22:22.706831	2013-07-20 01:22:22.706831
599	D'ya have a good sarsaparilla?	33	\N	2013-07-20 01:22:22.709445	2013-07-20 01:22:22.709445
600	Sioux City Sarsaparilla.	56	\N	2013-07-20 01:22:22.712061	2013-07-20 01:22:22.712061
601	That's a good one.	33	\N	2013-07-20 01:22:22.714771	2013-07-20 01:22:22.714771
602	How ya doin' there, Dude?	33	\N	2013-07-20 01:22:22.717434	2013-07-20 01:22:22.717434
603	Ahh, not so good, man.	36	\N	2013-07-20 01:22:22.720097	2013-07-20 01:22:22.720097
604	One a those days, huh.  Wal, a wiser fella than m'self once said, sometimes you eat the bar and sometimes the bar, wal, he eats you.	33	99	2013-07-20 01:22:22.722768	2013-07-20 01:22:22.722768
605	Uh-huh.  That some kind of Eastern thing?	36	\N	2013-07-20 01:22:22.743678	2013-07-20 01:22:22.743678
608	Much obliged.	33	\N	2013-07-20 01:22:22.752245	2013-07-20 01:22:22.752245
609	I like your style, Dude.	33	100	2013-07-20 01:22:22.754842	2013-07-20 01:22:22.754842
610	Well I like your style too, man. Got a whole cowboy thing goin'.	36	100	2013-07-20 01:22:22.757617	2013-07-20 01:22:22.757617
611	Thankie. . . Just one thing, Dude. D'ya have to use s'many cuss words?	33	100	2013-07-20 01:22:22.760255	2013-07-20 01:22:22.760255
612	The fuck are you talking about?	36	100	2013-07-20 01:22:22.762879	2013-07-20 01:22:22.762879
613	Okay, have it your way.	33	\N	2013-07-20 01:22:22.765165	2013-07-20 01:22:22.765165
614	Take it easy, Dude.	33	\N	2013-07-20 01:22:22.767813	2013-07-20 01:22:22.767813
615	Yeah. Thanks man.	36	\N	2013-07-20 01:22:22.770469	2013-07-20 01:22:22.770469
616	Jeffrey, you haven't gone to the doctor.	50	\N	2013-07-20 01:22:22.773057	2013-07-20 01:22:22.773057
617	No it's fine, really, uh--	36	\N	2013-07-20 01:22:22.775479	2013-07-20 01:22:22.775479
618	Do you have any news regarding my father's money?	50	\N	2013-07-20 01:22:22.777867	2013-07-20 01:22:22.777867
619	I, uh... money, yeah, I gotta respecfully, 69 you know, tender my resignation on that matter, 'cause it looks like your mother really was kidnapped after all.	36	101	2013-07-20 01:22:22.780279	2013-07-20 01:22:22.780279
620	She most certainly was not!	50	101	2013-07-20 01:22:22.782641	2013-07-20 01:22:22.782641
621	Hey man, why don't you fucking listen occasionally?  You might learn something.  Now I got--	36	101	2013-07-20 01:22:22.784814	2013-07-20 01:22:22.784814
622	And please don't call her my mother.	50	101	2013-07-20 01:22:22.787318	2013-07-20 01:22:22.787318
623	Now I got--	36	\N	2013-07-20 01:22:22.789924	2013-07-20 01:22:22.789924
624	She is most definitely the perpetrator and not the victim.	50	\N	2013-07-20 01:22:22.792378	2013-07-20 01:22:22.792378
625	I'm telling you, I got definitive evidence--	36	\N	2013-07-20 01:22:22.79485	2013-07-20 01:22:22.79485
626	From who?	50	\N	2013-07-20 01:22:22.797315	2013-07-20 01:22:22.797315
627	The main guy, Uli Kunkel--	36	\N	2013-07-20 01:22:22.799829	2013-07-20 01:22:22.799829
628	Uli Kunkel Hauff?	50	\N	2013-07-20 01:22:22.802201	2013-07-20 01:22:22.802201
629	Well--yeah, I guess--	36	\N	2013-07-20 01:22:22.804525	2013-07-20 01:22:22.804525
630	Her 'co-star' in the beaver picture?	50	102	2013-07-20 01:22:22.807042	2013-07-20 01:22:22.807042
631	Beaver?  You mean vagina?--I mean, you know him?	36	102	2013-07-20 01:22:22.809571	2013-07-20 01:22:22.809571
632	Uli Kunkel has been on the fringes of-- well, of everything in L.A., for about twenty years.  Look at my LP's. Under 'Autobahn.'	50	\N	2013-07-20 01:22:22.812155	2013-07-20 01:22:22.812155
633	That was his group--they released one album in the mid-seventies.	50	\N	2013-07-20 01:22:22.814729	2013-07-20 01:22:22.814729
634	Roy Orbison. . . Pink Floyd.	36	\N	2013-07-20 01:22:22.817362	2013-07-20 01:22:22.817362
635	Huh?  Autobahn.  A-u-t-o.  Their music is a sort of--ugh--techno-pop.	50	\N	2013-07-20 01:22:22.820094	2013-07-20 01:22:22.820094
636	Jeez.  I miss vinyl.	36	\N	2013-07-20 01:22:22.822519	2013-07-20 01:22:22.822519
637	Is he pretending to be the abductor?	50	\N	2013-07-20 01:22:22.824985	2013-07-20 01:22:22.824985
638	Well...yeah--	36	\N	2013-07-20 01:22:22.827398	2013-07-20 01:22:22.827398
639	Look, Jeffrey, you don't really kidnap someone that you're acquainted with.  You can't get away with it if the hostage knows who you are.	50	\N	2013-07-20 01:22:22.829667	2013-07-20 01:22:22.829667
640	Well yeah...I know that.	36	\N	2013-07-20 01:22:22.831995	2013-07-20 01:22:22.831995
641	So Uli Kunkel has the money?	50	\N	2013-07-20 01:22:22.8343	2013-07-20 01:22:22.8343
642	Well, no, not exactly.  It's a complicated case, Maude.  Lotta ins. Lotta outs.  And a lotta strands to keep in my head, man.  Lotta strands in old Duder's--	36	103	2013-07-20 01:22:22.836558	2013-07-20 01:22:22.836558
643	Do you still have that doctor's number?	50	\N	2013-07-20 01:22:22.838934	2013-07-20 01:22:22.838934
644	Huh?  No, really, I don't even have the bruise any more, I--	36	\N	2013-07-20 01:22:22.841269	2013-07-20 01:22:22.841269
645	Please Jeffrey.  I don't want to be responsible for any delayed after- effects.	50	\N	2013-07-20 01:22:22.84368	2013-07-20 01:22:22.84368
646	Delayed after-eff--	36	\N	2013-07-20 01:22:22.845951	2013-07-20 01:22:22.845951
647	I want you to see him immediately.	50	\N	2013-07-20 01:22:22.848149	2013-07-20 01:22:22.848149
648	I'll see if he's available.  He's a good man, and thorough.	50	\N	2013-07-20 01:22:22.850632	2013-07-20 01:22:22.850632
649	Could you slide your shorts down please, Mr.  Lebowski?	57	104	2013-07-20 01:22:22.853456	2013-07-20 01:22:22.853456
650	Huh?  No, she, she hit me right here.	36	104	2013-07-20 01:22:22.855855	2013-07-20 01:22:22.855855
651	I understand sir.  Could you slide your shorts down please?	57	104	2013-07-20 01:22:22.858392	2013-07-20 01:22:22.858392
652	Fuck Me.	36	\N	2013-07-20 01:22:22.861072	2013-07-20 01:22:22.861072
653	Fuckola, man.	36	\N	2013-07-20 01:22:22.86363	2013-07-20 01:22:22.86363
654	He lives in North HollyWood on Radford, near the In-and-Out Burger--	39	105	2013-07-20 01:22:22.866188	2013-07-20 01:22:22.866188
655	The In-and-Out Burger is on Camrose.	36	105	2013-07-20 01:22:22.868998	2013-07-20 01:22:22.868998
656	Near the In-and-Out Burger--	39	105	2013-07-20 01:22:22.888494	2013-07-20 01:22:22.888494
657	Those are good burgers, Walter.	38	105	2013-07-20 01:22:22.891956	2013-07-20 01:22:22.891956
658	Shut the fuck up, Donny. This kid is in the ninth grade, Dude, and his father is--are you ready for this?-- Arthur Digby Sellers.	39	106	2013-07-20 01:22:22.894728	2013-07-20 01:22:22.894728
659	Who the fuck is that?	36	106	2013-07-20 01:22:22.896923	2013-07-20 01:22:22.896923
660	Huh?	39	\N	2013-07-20 01:22:22.899121	2013-07-20 01:22:22.899121
661	Who the fuck is Arthur Digby Sellers?	36	107	2013-07-20 01:22:22.901539	2013-07-20 01:22:22.901539
662	Who the f--have you ever heard of a little show called Branded, Dude?	39	107	2013-07-20 01:22:22.903878	2013-07-20 01:22:22.903878
663	Yeah.	36	\N	2013-07-20 01:22:22.90586	2013-07-20 01:22:22.90586
664	All but one man died? There at Bitter Creek?	39	107	2013-07-20 01:22:22.908161	2013-07-20 01:22:22.908161
665	Yeah yeah, I know the fucking show Walter, so what?	36	107	2013-07-20 01:22:22.910343	2013-07-20 01:22:22.910343
666	Fucking Arthur Digby Sellers wrote 156 episodes, Dude.	39	107	2013-07-20 01:22:22.91261	2013-07-20 01:22:22.91261
667	Uh-huh.	36	\N	2013-07-20 01:22:22.91507	2013-07-20 01:22:22.91507
668	The bulk of the series.	39	107	2013-07-20 01:22:22.917523	2013-07-20 01:22:22.917523
669	Uh-huh.	36	\N	2013-07-20 01:22:22.919991	2013-07-20 01:22:22.919991
670	Not exactly a lightweight.	39	107	2013-07-20 01:22:22.922254	2013-07-20 01:22:22.922254
671	No.	36	\N	2013-07-20 01:22:22.924523	2013-07-20 01:22:22.924523
672	And yet his son is a fucking dunce.	39	107	2013-07-20 01:22:22.926902	2013-07-20 01:22:22.926902
673	Uh.	36	\N	2013-07-20 01:22:22.929255	2013-07-20 01:22:22.929255
674	Yeah, go figure.  Well we'll go out there after the, uh, the.	39	108	2013-07-20 01:22:22.931611	2013-07-20 01:22:22.931611
675	What have you.  We'll, uh--	39	108	2013-07-20 01:22:22.934022	2013-07-20 01:22:22.934022
676	We'll be near the In-and-Out Burger.	38	108	2013-07-20 01:22:22.936424	2013-07-20 01:22:22.936424
677	Shut the fuck up, Donny. We'll, uh, brace the kid--he'll be a pushover. We'll get that fucking money, if he hasn't spent it already.  Million fucking clams. And yes, we'll be near the, uh--some burgers, some beers, a few laughs.  Our fucking troubles are over, Dude.	39	108	2013-07-20 01:22:22.938914	2013-07-20 01:22:22.938914
678	Fuck me, man!  That kid's already spent all the money!	36	\N	2013-07-20 01:22:22.941461	2013-07-20 01:22:22.941461
679	Hardly Dude, a new 'vette?  The kid's still got, oh, 96 to 97 thousand, depending on the options.  Wait in the car, Donny.	39	\N	2013-07-20 01:22:22.944012	2013-07-20 01:22:22.944012
680	Jace?	58	\N	2013-07-20 01:22:22.946286	2013-07-20 01:22:22.946286
681	Hello, Pilar?  My name is Walter Sobchak, we spoke on the phone, this is my associate Jeffrey Lebowski.	39	\N	2013-07-20 01:22:22.949153	2013-07-20 01:22:22.949153
682	Jace.	58	\N	2013-07-20 01:22:22.951929	2013-07-20 01:22:22.951929
683	May we uh, we wanted to talk about little Larry.  May we come in?	39	\N	2013-07-20 01:22:22.954584	2013-07-20 01:22:22.954584
684	Jace.	58	\N	2013-07-20 01:22:22.957243	2013-07-20 01:22:22.957243
685	Larry! Sweetie! Dat mang is here!	58	\N	2013-07-20 01:22:22.959888	2013-07-20 01:22:22.959888
686	That's him, Dude. And a good day to you, sir.	39	\N	2013-07-20 01:22:22.962265	2013-07-20 01:22:22.962265
687	See down, please.	58	\N	2013-07-20 01:22:22.9649	2013-07-20 01:22:22.9649
688	Thank you, ma'am.	39	\N	2013-07-20 01:22:22.967667	2013-07-20 01:22:22.967667
689	Does he, uh. . . Is he still writing?	39	\N	2013-07-20 01:22:22.970055	2013-07-20 01:22:22.970055
690	No, no.  He has healt' problems.	58	\N	2013-07-20 01:22:22.972376	2013-07-20 01:22:22.972376
691	Uh-huh.	39	\N	2013-07-20 01:22:22.974761	2013-07-20 01:22:22.974761
692	I just want to say, sir, that we're both enormous--on a personal level, Branded, especially the early episodes, has been a source of, uh, inspir---	39	\N	2013-07-20 01:22:22.976995	2013-07-20 01:22:22.976995
693	See down, Sweetie.  These are the policeman--	58	\N	2013-07-20 01:22:22.979386	2013-07-20 01:22:22.979386
694	No ma'am, I didn't mean to give the impression that we're police exactly. We're hoping that it will not be necessary to call the police.	39	\N	2013-07-20 01:22:22.981723	2013-07-20 01:22:22.981723
695	But that is up to little Larry here. Isn't it, Larry?	39	\N	2013-07-20 01:22:22.984274	2013-07-20 01:22:22.984274
696	Is this your homework, Larry? Is this your homework, Larry?	39	109	2013-07-20 01:22:22.986653	2013-07-20 01:22:22.986653
697	Look, man, did you--	36	109	2013-07-20 01:22:22.9891	2013-07-20 01:22:22.9891
698	Dude, please!. . .  Is this your homework, Larry?	39	109	2013-07-20 01:22:22.991537	2013-07-20 01:22:22.991537
699	Just ask him if he--ask him about the car, man!	36	109	2013-07-20 01:22:22.993928	2013-07-20 01:22:22.993928
700	Is this yours, Larry?  Is this your homework, Larry?	39	109	2013-07-20 01:22:22.996401	2013-07-20 01:22:22.996401
701	Is the car out front yours?	36	109	2013-07-20 01:22:22.998884	2013-07-20 01:22:22.998884
702	Is this your homework, Larry?	39	109	2013-07-20 01:22:23.001365	2013-07-20 01:22:23.001365
703	We know it's his fucking homework, Walter!  Where's the fucking money, you little brat?	36	109	2013-07-20 01:22:23.0037	2013-07-20 01:22:23.0037
704	Look, Larry. . . Have you ever heard of Vietnam?	39	110	2013-07-20 01:22:23.006093	2013-07-20 01:22:23.006093
705	Oh, for Christ's sake, Walter!	36	110	2013-07-20 01:22:23.008506	2013-07-20 01:22:23.008506
706	You're going to enter a world of pain, son.  We know that this is your homework.  We know you stole a car--	39	110	2013-07-20 01:22:23.01096	2013-07-20 01:22:23.01096
707	And the fucking money!	36	110	2013-07-20 01:22:23.030804	2013-07-20 01:22:23.030804
708	And the fucking money.  And we know that this is your homework, Larry.	39	110	2013-07-20 01:22:23.034303	2013-07-20 01:22:23.034303
709	You're gonna KILL your FATHER, Larry!.	39	110	2013-07-20 01:22:23.036861	2013-07-20 01:22:23.036861
710	Ah, this is pointless.	39	\N	2013-07-20 01:22:23.03989	2013-07-20 01:22:23.03989
711	All right, Plan B.  You might want to watch out the front window there, Larry.	39	\N	2013-07-20 01:22:23.042477	2013-07-20 01:22:23.042477
712	This is what happens when you FUCK a STRANGER in the ASS, Larry.	39	111	2013-07-20 01:22:23.04485	2013-07-20 01:22:23.04485
713	Fucking language problem, Dude.	39	\N	2013-07-20 01:22:23.047179	2013-07-20 01:22:23.047179
714	Maybe he'll understand this.	39	\N	2013-07-20 01:22:23.0497	2013-07-20 01:22:23.0497
715	YOU SEE WHAT HAPPENS, LARRY!	39	111	2013-07-20 01:22:23.052098	2013-07-20 01:22:23.052098
716	YOU SEE WHAT HAPPENS?!	39	111	2013-07-20 01:22:23.054354	2013-07-20 01:22:23.054354
717	THIS IS WHAT HAPPENS WHEN YOU FUCK A STRANGER IN THE ASS!	39	111	2013-07-20 01:22:23.0568	2013-07-20 01:22:23.0568
718	HERE'S WHAT HAPPENS, LARRY!	39	111	2013-07-20 01:22:23.059156	2013-07-20 01:22:23.059156
719	HERE'S WHAT HAPPENS! FUCK A STRANGER IN THE ASS!	39	\N	2013-07-20 01:22:23.061256	2013-07-20 01:22:23.061256
720	WHAT THE FUCK JOO DOING, MANG?!	59	\N	2013-07-20 01:22:23.06358	2013-07-20 01:22:23.06358
721	I JUS' BAWDEEZ FUCKEEN CAR LASS WEEK!	59	\N	2013-07-20 01:22:23.065976	2013-07-20 01:22:23.065976
722	Hunh?	39	\N	2013-07-20 01:22:23.068898	2013-07-20 01:22:23.068898
723	I KILL JOO, MANG! I--I KILL JOR FUCKEEN CAR!	59	\N	2013-07-20 01:22:23.07126	2013-07-20 01:22:23.07126
724	No!  No!  NO!  THAT'S NOT--	36	\N	2013-07-20 01:22:23.073692	2013-07-20 01:22:23.073692
725	I FUCKEEN KILL JOR FUCKEEN CAR! I KILL JOR FUCKEEN CAR! I KILL JOR FUCKEEN CAR!	59	\N	2013-07-20 01:22:23.076064	2013-07-20 01:22:23.076064
726	I accept your apology. . . No I, I just want to handle it myself from now on. . . No.  That has nothing to do with it. . . .Yes, it made it home, I'm calling from home.  No, Walter, it didn't look like Larry was about to crack.	36	\N	2013-07-20 01:22:23.078475	2013-07-20 01:22:23.078475
727	Well that's your perception. . . Well you're right, Walter, and the unspoken Message is FUCK YOU AND LEAVE ME THE FUCK ALONE. . . Yeah, I'll be at practice.	36	\N	2013-07-20 01:22:23.081042	2013-07-20 01:22:23.081042
728	Huh?	36	\N	2013-07-20 01:22:23.083423	2013-07-20 01:22:23.083423
729	Pin your diapers on, Lebowski.  Jackie Treehorn wants to see you.	37	112	2013-07-20 01:22:23.085666	2013-07-20 01:22:23.085666
730	And we know which Lebowski you are, Lebowski.	35	112	2013-07-20 01:22:23.08802	2013-07-20 01:22:23.08802
731	Yeah.  Jackie Treehorn wants to talk to the deadbeat Lebowski.	37	112	2013-07-20 01:22:23.090565	2013-07-20 01:22:23.090565
732	You're not dealing with morons here.	35	112	2013-07-20 01:22:23.093054	2013-07-20 01:22:23.093054
733	Hello Dude, thanks for coming.  I'm Jackie Treehorn.	60	\N	2013-07-20 01:22:23.095444	2013-07-20 01:22:23.095444
734	This is quite a pad you got here, man.  Completely unspoiled.	36	\N	2013-07-20 01:22:23.097659	2013-07-20 01:22:23.097659
735	What's your drink, Dude?	60	\N	2013-07-20 01:22:23.100014	2013-07-20 01:22:23.100014
736	White Russian, thanks. How's the smut business, Jackie?	36	113	2013-07-20 01:22:23.102192	2013-07-20 01:22:23.102192
737	I wouldn't know, Dude. I deal in publishing, entertainment, political advocacy, and--	60	113	2013-07-20 01:22:23.104571	2013-07-20 01:22:23.104571
738	Which one was Logjammin'?	36	113	2013-07-20 01:22:23.106879	2013-07-20 01:22:23.106879
739	Regrettably, it's true, standards have fallen in adult entertainment. It's video, Dude.  Now that we're competing with the amateurs, we can't afford to invest that little extra in story, production value, feeling.	60	\N	2013-07-20 01:22:23.10925	2013-07-20 01:22:23.10925
740	People forget that the brain is the biggest erogenous zone--	60	114	2013-07-20 01:22:23.111597	2013-07-20 01:22:23.111597
741	On you, maybe.	36	114	2013-07-20 01:22:23.113972	2013-07-20 01:22:23.113972
742	Of course, you do get the good with the bad.  The new technology permits us to do exciting things with interactive erotic software.  Wave of the future, Dude. 100% electronic.	60	114	2013-07-20 01:22:23.116296	2013-07-20 01:22:23.116296
743	Uh-huh.  Well, I still jerk off manually.	36	114	2013-07-20 01:22:23.118817	2013-07-20 01:22:23.118817
744	Of course you do.  I can see you're anxious for me to get to the point. Well Dude, here it is.  Where's Bunny?	60	\N	2013-07-20 01:22:23.121189	2013-07-20 01:22:23.121189
745	I thought you might know, man.	36	\N	2013-07-20 01:22:23.123606	2013-07-20 01:22:23.123606
746	Me?  How would I know?  The only reason she ran off was to get away from her rather sizable debt to me.	60	\N	2013-07-20 01:22:23.12594	2013-07-20 01:22:23.12594
747	But she hasn't run off, she's been--	36	\N	2013-07-20 01:22:23.128339	2013-07-20 01:22:23.128339
748	I've heard the kidnapping story, so save it.  I know you're mixed up in all this, Dude, and I don't care what you're trying to take off her husband.  That's your business.  All I'm saying is, I want mine.	60	\N	2013-07-20 01:22:23.130714	2013-07-20 01:22:23.130714
749	Yeah, well, right man, there are many facets to this, uh, you know, many interested parties.  If I can find your money, man-- what's in it for the Dude?	36	\N	2013-07-20 01:22:23.133193	2013-07-20 01:22:23.133193
750	Of course, there's that to discuss. Refill?	60	\N	2013-07-20 01:22:23.135872	2013-07-20 01:22:23.135872
751	Does the Pope shit in the Woods?	36	\N	2013-07-20 01:22:23.138816	2013-07-20 01:22:23.138816
752	Let's say a 10% finder's fee?	60	\N	2013-07-20 01:22:23.141415	2013-07-20 01:22:23.141415
821	Exactly.  What happened to your face? Did Jackie Treehorn do that as well?	50	119	2013-07-20 01:22:23.339029	2013-07-20 01:22:23.339029
892	He can't see you, Dude.	40	\N	2013-07-20 01:22:23.529311	2013-07-20 01:22:23.529311
753	Okay, Jackie, done. I like the way you do business.  Your money is being held by a kid named Larry Sellers. He lives in North HollyWood, on Radford, near the In-and-Out Burger. A real fuckin' brat, but I'm sure your goons'll be able to get it off him, mean he's only fifteen and he's flunking social studies.  So if you'll just write me a check for my ten per cent. . . of half a million. . . fifty grand.	36	\N	2013-07-20 01:22:23.144011	2013-07-20 01:22:23.144011
754	I'll go out and mingle.--Jesus, you mix a hell of a Caucasian, Jackie.	36	\N	2013-07-20 01:22:23.14654	2013-07-20 01:22:23.14654
755	A fifteen-year-old? Is this your idea of a joke?	60	\N	2013-07-20 01:22:23.149048	2013-07-20 01:22:23.149048
756	No funny stuff, Jackie. . . the kid's got it.  Hiya, fellas. . . kid just wanted a car.  All the Dude ever wanted. . . was his rug back. . . not greedy. . . it really.	36	\N	2013-07-20 01:22:23.151324	2013-07-20 01:22:23.151324
757	Darkness warshed over the Dude-- darker'n a black steer's tookus on a moonless prairie night.  There was no bottom.	33	\N	2013-07-20 01:22:23.153676	2013-07-20 01:22:23.153676
758	He was innocent. Not a charge was true. And they say he ran awaaaaaay.	36	\N	2013-07-20 01:22:23.156187	2013-07-20 01:22:23.156187
759	This is your only I.D.?	61	115	2013-07-20 01:22:23.17635	2013-07-20 01:22:23.17635
760	I know my rights.	36	115	2013-07-20 01:22:23.178744	2013-07-20 01:22:23.178744
761	You don't know shit, Lebowski.	61	115	2013-07-20 01:22:23.18112	2013-07-20 01:22:23.18112
762	I want a fucking lawyer, man.  I want Bill Kunstler.	36	\N	2013-07-20 01:22:23.183256	2013-07-20 01:22:23.183256
763	What are you, some kind of sad-assed refugee from the fucking sixties?	61	115	2013-07-20 01:22:23.185534	2013-07-20 01:22:23.185534
764	Uh-huh.	36	115	2013-07-20 01:22:23.18798	2013-07-20 01:22:23.18798
765	Mr. Treehorn tells us that he had to eject you from his garden party, that you were drunk and abusive.	61	115	2013-07-20 01:22:23.190217	2013-07-20 01:22:23.190217
767	Mr. Treehorn draws a lot of water in this town, Lebowski.  You don't draw shit.  We got a nice quiet beach community here, and I aim to keep it nice and quiet.  So let me make something plain.  I don't like you sucking around bothering our citizens, Lebowski.  I don't like your jerk- off name, I don't like your jerk-off face, I don't like your jerk- off behavior, and I don't like you, jerk- off --do I make myself clear?	61	115	2013-07-20 01:22:23.194917	2013-07-20 01:22:23.194917
768	I'm sorry, I wasn't listening.	36	115	2013-07-20 01:22:23.197091	2013-07-20 01:22:23.197091
769	--Ow!  Fucking fascist!	36	115	2013-07-20 01:22:23.199154	2013-07-20 01:22:23.199154
770	Stay out of Malibu, Lebowski!	61	116	2013-07-20 01:22:23.201443	2013-07-20 01:22:23.201443
771	Stay out of Malibu, deadbeat!  Keep your ugly fucking goldbricking ass out of my beach community!	61	116	2013-07-20 01:22:23.203708	2013-07-20 01:22:23.203708
772	Jesus, man, can you change the station?	36	\N	2013-07-20 01:22:23.206129	2013-07-20 01:22:23.206129
773	Fuck you man!  You don't like my fucking music, get your own fucking cab!	62	\N	2013-07-20 01:22:23.208597	2013-07-20 01:22:23.208597
774	I've had a--	36	\N	2013-07-20 01:22:23.211123	2013-07-20 01:22:23.211123
775	I pull over and kick your ass out, man!	62	\N	2013-07-20 01:22:23.213641	2013-07-20 01:22:23.213641
776	--had a rough night, and I hate the fucking Eagles, man--	36	\N	2013-07-20 01:22:23.216051	2013-07-20 01:22:23.216051
777	That's it!  Outta this fucking cab!	62	\N	2013-07-20 01:22:23.218361	2013-07-20 01:22:23.218361
778	Jesus.	36	\N	2013-07-20 01:22:23.220995	2013-07-20 01:22:23.220995
779	Jeffrey.	50	\N	2013-07-20 01:22:23.223134	2013-07-20 01:22:23.223134
780	Maude?	36	\N	2013-07-20 01:22:23.225346	2013-07-20 01:22:23.225346
781	Love me.	50	\N	2013-07-20 01:22:23.227624	2013-07-20 01:22:23.227624
782	That's my robe.	36	\N	2013-07-20 01:22:23.229988	2013-07-20 01:22:23.229988
783	Tell me a little about yourself, Jeffrey.	50	\N	2013-07-20 01:22:23.232329	2013-07-20 01:22:23.232329
784	Well, uh. . . Not much to tell.	36	\N	2013-07-20 01:22:23.234513	2013-07-20 01:22:23.234513
785	I was, uh, one of the authors of the Port Huron Statement.--The original Port Huron Statement.	36	\N	2013-07-20 01:22:23.23668	2013-07-20 01:22:23.23668
786	Uh-huh.	50	\N	2013-07-20 01:22:23.239064	2013-07-20 01:22:23.239064
787	Not the compromised second draft. And then I, uh. . . Ever hear of the Seattle Seven?	36	\N	2013-07-20 01:22:23.241433	2013-07-20 01:22:23.241433
788	Mmnun.	50	\N	2013-07-20 01:22:23.243745	2013-07-20 01:22:23.243745
789	And then. . . let's see, I uh--music business briefly.	36	\N	2013-07-20 01:22:23.246032	2013-07-20 01:22:23.246032
790	Oh?	50	\N	2013-07-20 01:22:23.248378	2013-07-20 01:22:23.248378
791	Yeah.  Roadie for Metallica.  Speed of Sound Tour.	36	\N	2013-07-20 01:22:23.250736	2013-07-20 01:22:23.250736
792	Uh-huh.	50	\N	2013-07-20 01:22:23.253064	2013-07-20 01:22:23.253064
793	Bunch of assholes.  And then, you know, little of this, little of that. My career's, uh, slowed down a bit lately.	36	\N	2013-07-20 01:22:23.255335	2013-07-20 01:22:23.255335
794	What do you do for fun?	50	117	2013-07-20 01:22:23.257649	2013-07-20 01:22:23.257649
795	Oh, you know, the usual.  Bowl. Drive around.  The occasional acid flashback.	36	117	2013-07-20 01:22:23.259911	2013-07-20 01:22:23.259911
796	What happened to your house?	50	\N	2013-07-20 01:22:23.262218	2013-07-20 01:22:23.262218
797	Jackie Treehorn trashed the place. Wanted to save the finder's fee.	36	\N	2013-07-20 01:22:23.264527	2013-07-20 01:22:23.264527
798	Finder's fee?	50	\N	2013-07-20 01:22:23.266714	2013-07-20 01:22:23.266714
799	He thought I had your father's money, so he got me out of the way while he looked for it.	36	\N	2013-07-20 01:22:23.269213	2013-07-20 01:22:23.269213
800	It's not my father's money, it's the Foundation's.  Why did he think you had it?  And who does?	50	118	2013-07-20 01:22:23.27167	2013-07-20 01:22:23.27167
801	Larry Sellers, a high-school kid. Real fucking brat.	36	\N	2013-07-20 01:22:23.274153	2013-07-20 01:22:23.274153
802	Jeffrey--	50	\N	2013-07-20 01:22:23.276585	2013-07-20 01:22:23.276585
803	It's a complicated case, Maude. Lotta ins, lotta outs.  Fortunately I've been adhering to a pretty strict, uh, drug regimen to keep my mind, you know, limber.  I'm real fucking close to your father's money, real fucking close.  It's just--	36	118	2013-07-20 01:22:23.279091	2013-07-20 01:22:23.279091
804	I keep telling you, it's the Foundation's money.  Father doesn't have any.	50	\N	2013-07-20 01:22:23.2815	2013-07-20 01:22:23.2815
805	Huh?  He's fucking loaded.	36	\N	2013-07-20 01:22:23.283996	2013-07-20 01:22:23.283996
806	No no, the wealth was all Mother's.	50	\N	2013-07-20 01:22:23.286304	2013-07-20 01:22:23.286304
807	But your father--he runs stuff, he--	36	\N	2013-07-20 01:22:23.288748	2013-07-20 01:22:23.288748
808	We did let Father run one of the companies, briefly, but he didn't do very well at it.	50	\N	2013-07-20 01:22:23.291171	2013-07-20 01:22:23.291171
809	But he's--	36	\N	2013-07-20 01:22:23.29357	2013-07-20 01:22:23.29357
810	He helps administer the charities now, and I give him a reasonable allowance.  He has no money of his own.  I know how he likes to present himself; Father's weakness is vanity. Hence the slut.	50	\N	2013-07-20 01:22:23.31344	2013-07-20 01:22:23.31344
811	Huh.  Jeez.  Well, so, did he--is that yoga?	36	\N	2013-07-20 01:22:23.315782	2013-07-20 01:22:23.315782
812	It increases the chances of conception.	50	\N	2013-07-20 01:22:23.318103	2013-07-20 01:22:23.318103
813	Increases?	36	\N	2013-07-20 01:22:23.320566	2013-07-20 01:22:23.320566
814	Well yes, what did you think this was all about?  Fun and games?	50	\N	2013-07-20 01:22:23.323019	2013-07-20 01:22:23.323019
815	Well...no, of course not--	36	\N	2013-07-20 01:22:23.325107	2013-07-20 01:22:23.325107
816	I want a child.	50	\N	2013-07-20 01:22:23.327365	2013-07-20 01:22:23.327365
817	Yeah, okay, but see, the Dude--	36	\N	2013-07-20 01:22:23.329786	2013-07-20 01:22:23.329786
818	Look, Jeffrey, I don't want a partner. In fact I don't want the father to be someone I have to see socially, or who'll have any interest in rearing the child himself.	50	\N	2013-07-20 01:22:23.33216	2013-07-20 01:22:23.33216
819	Huh...	36	\N	2013-07-20 01:22:23.334385	2013-07-20 01:22:23.334385
820	So...that doctor.	36	\N	2013-07-20 01:22:23.336785	2013-07-20 01:22:23.336785
891	Jesus Christ.	39	\N	2013-07-20 01:22:23.526949	2013-07-20 01:22:23.526949
822	No, the, uh, police chief of Malibu. A real reactionary. . . So your father. . . Oh man, I get it!	36	119	2013-07-20 01:22:23.34154	2013-07-20 01:22:23.34154
823	What?	50	\N	2013-07-20 01:22:23.343744	2013-07-20 01:22:23.343744
824	Yeah, my thinking about the case, man, it had become uptight.  Yeah. Your father--	36	\N	2013-07-20 01:22:23.346092	2013-07-20 01:22:23.346092
825	This is Walter Sobchak.  I'm not in; leave a message after the beep.	39	\N	2013-07-20 01:22:23.348399	2013-07-20 01:22:23.348399
826	What're you talking about?	50	\N	2013-07-20 01:22:23.350522	2013-07-20 01:22:23.350522
827	Walter, if you're there, pick up the fucking phone.  Pick it up, Walter, this is an emergency.  I'm not--	36	\N	2013-07-20 01:22:23.35274	2013-07-20 01:22:23.35274
828	Dude?	39	\N	2013-07-20 01:22:23.354937	2013-07-20 01:22:23.354937
829	Walter, listen, I'm at my place, I need you to come pick me up--	36	\N	2013-07-20 01:22:23.357252	2013-07-20 01:22:23.357252
830	I can't drive, Dude, it's erev shabbas.	39	\N	2013-07-20 01:22:23.359628	2013-07-20 01:22:23.359628
831	Huh?	36	\N	2013-07-20 01:22:23.361833	2013-07-20 01:22:23.361833
832	Erev shabbas. I can't drive. I'm not even supposed to pick up the phone, unless it's an emergency.	39	\N	2013-07-20 01:22:23.364119	2013-07-20 01:22:23.364119
833	It is a fucking emergency.	36	\N	2013-07-20 01:22:23.367771	2013-07-20 01:22:23.367771
834	I understand.  That's why I picked up the phone.	39	\N	2013-07-20 01:22:23.370558	2013-07-20 01:22:23.370558
835	THEN WHY CAN'T YOU--fuck, never mind, just call Donny then, and ask him to--	36	\N	2013-07-20 01:22:23.373063	2013-07-20 01:22:23.373063
836	Dude, I'm not supposed to make calls--	39	\N	2013-07-20 01:22:23.37567	2013-07-20 01:22:23.37567
837	WALTER, YOU FUCKING ASSHOLE, WE GOTTA GO TO PASADENA!  COME  PICK ME UP OR I'M OFF THE FUCKING BOWLING TEAM!	36	120	2013-07-20 01:22:23.378242	2013-07-20 01:22:23.378242
838	Jeffrey?	50	\N	2013-07-20 01:22:23.380771	2013-07-20 01:22:23.380771
839	Get out of that fucking car, man!	36	\N	2013-07-20 01:22:23.383325	2013-07-20 01:22:23.383325
840	Who the fuck are you, man! Come on, man!	36	\N	2013-07-20 01:22:23.385814	2013-07-20 01:22:23.385814
841	Relax, man! No physical harm intended!	63	\N	2013-07-20 01:22:23.388293	2013-07-20 01:22:23.388293
842	Who the fuck are you?  Why've you been following me?  Come on, fuckhead!	36	121	2013-07-20 01:22:23.390782	2013-07-20 01:22:23.390782
843	Hey, relax man, I'm a brother shamus.	63	121	2013-07-20 01:22:23.393144	2013-07-20 01:22:23.393144
844	Brother Shamus?  Like an Irish monk?	36	121	2013-07-20 01:22:23.395615	2013-07-20 01:22:23.395615
845	Irish m--What the fuck are you talking about?  My name's Da Fino!  I'm a private snoop!  Like you, man!	63	121	2013-07-20 01:22:23.397922	2013-07-20 01:22:23.397922
846	Huh?	36	\N	2013-07-20 01:22:23.400278	2013-07-20 01:22:23.400278
847	A dick, man!  And let me tell you something: I dig your work. Playing one side against the other--in bed with everybody--fabulous stuff, man.	63	121	2013-07-20 01:22:23.402671	2013-07-20 01:22:23.402671
848	I'm not a--ah, fuck it, just stay away from my fucking lady friend, man.	36	122	2013-07-20 01:22:23.405484	2013-07-20 01:22:23.405484
849	Hey hey, I'm not messing with your special lady--	63	122	2013-07-20 01:22:23.408087	2013-07-20 01:22:23.408087
850	She's not my special lady, she's my fucking lady friend.  I'm just helping her conceive, man!	36	122	2013-07-20 01:22:23.410522	2013-07-20 01:22:23.410522
851	Hey, man, I'm not--	63	\N	2013-07-20 01:22:23.412931	2013-07-20 01:22:23.412931
852	Who're you working for?  Lebowski? Jackie Treehorn?	36	123	2013-07-20 01:22:23.415454	2013-07-20 01:22:23.415454
853	The Knutsons.	63	123	2013-07-20 01:22:23.417929	2013-07-20 01:22:23.417929
854	The?  Who the fuck are the Knutsons?	36	123	2013-07-20 01:22:23.420397	2013-07-20 01:22:23.420397
855	The Knutsons.  It's a wandering daughter job.  Bunny Lebowski, man. Her real name is Fawn Knutson. Her parents want her back.	63	\N	2013-07-20 01:22:23.422856	2013-07-20 01:22:23.422856
856	See?	63	\N	2013-07-20 01:22:23.425409	2013-07-20 01:22:23.425409
857	Jesus fucking Christ.	36	\N	2013-07-20 01:22:23.428304	2013-07-20 01:22:23.428304
858	Crazy, huh?  Ran away a year ago.	63	\N	2013-07-20 01:22:23.431052	2013-07-20 01:22:23.431052
859	Boy.  How ya gonna keep 'em down on the farm once they seen Karl Hungus.	36	124	2013-07-20 01:22:23.433623	2013-07-20 01:22:23.433623
860	Fuck, man!  That's terrible!	63	\N	2013-07-20 01:22:23.436148	2013-07-20 01:22:23.436148
861	Yeah, it sucks.	36	\N	2013-07-20 01:22:23.456162	2013-07-20 01:22:23.456162
862	Well maybe you and me could pool our resources--trade information-- professional courtesy--compeers, you know--	63	\N	2013-07-20 01:22:23.459007	2013-07-20 01:22:23.459007
863	Yeah, I get it.  Fuck off, Da Fino. And stay away from my special la-- from my fucking lady friend.	36	\N	2013-07-20 01:22:23.461493	2013-07-20 01:22:23.461493
864	You folks ready?	52	\N	2013-07-20 01:22:23.463681	2013-07-20 01:22:23.463681
865	I haff lingenberry pancakes.	47	\N	2013-07-20 01:22:23.46596	2013-07-20 01:22:23.46596
866	Lingenberry pancakes.	54	\N	2013-07-20 01:22:23.468431	2013-07-20 01:22:23.468431
867	Sree picks in blanket.	55	\N	2013-07-20 01:22:23.470793	2013-07-20 01:22:23.470793
868	Lingenberry pancakes.	47	\N	2013-07-20 01:22:23.472909	2013-07-20 01:22:23.472909
869	I mean we totally fucked it up, man. We fucked up his pay-off.  And got the kidnappers all pissed off, and the big Lebowski yelled at me a lot, but he didn't do anything.  Huh?	36	\N	2013-07-20 01:22:23.475486	2013-07-20 01:22:23.475486
870	Well it's, sometimes the cathartic, uh.	39	\N	2013-07-20 01:22:23.478325	2013-07-20 01:22:23.478325
871	I'm saying if he knows I'm a fuck- up, then why does he still leave me in charge of getting back his wife? Because he fucking doesn't want her back, man!  He's had enough!  He no longer digs her!  It's all a show! But then, why didn't he give a shit about his million bucks?  I mean, he knew we didn't hand off his briefcase, but he never asked for it back.	36	\N	2013-07-20 01:22:23.480682	2013-07-20 01:22:23.480682
872	What's your point, Dude?	39	\N	2013-07-20 01:22:23.483155	2013-07-20 01:22:23.483155
873	His million bucks was never in it, man!  There was no money in that briefcase!  He was hoping they'd kill her!  You throw out a ringer for a ringer!	36	\N	2013-07-20 01:22:23.485756	2013-07-20 01:22:23.485756
874	Yeah?	39	\N	2013-07-20 01:22:23.488246	2013-07-20 01:22:23.488246
875	Shit yeah!	36	\N	2013-07-20 01:22:23.490347	2013-07-20 01:22:23.490347
876	Okay, but how does all this add up to an emergency?	39	\N	2013-07-20 01:22:23.492621	2013-07-20 01:22:23.492621
877	Huh?	36	\N	2013-07-20 01:22:23.495033	2013-07-20 01:22:23.495033
878	I'm saying, I see what you're getting at, Dude, he kept the money, but my point is, here we are, it's shabbas, the sabbath, which I'm allowed to break only if it's a matter of life and death--	39	125	2013-07-20 01:22:23.497308	2013-07-20 01:22:23.497308
879	Walter, come off it.  You're not even fucking Jewish, you're--	36	125	2013-07-20 01:22:23.499619	2013-07-20 01:22:23.499619
880	What the fuck are you talking about?	39	125	2013-07-20 01:22:23.50197	2013-07-20 01:22:23.50197
881	You're fucking Polish Catholic--	36	125	2013-07-20 01:22:23.504223	2013-07-20 01:22:23.504223
882	What the fuck are you talking about? I converted when I married Cynthia! Come on, Dude!	39	125	2013-07-20 01:22:23.506525	2013-07-20 01:22:23.506525
883	Yeah, and you were--	36	125	2013-07-20 01:22:23.508781	2013-07-20 01:22:23.508781
884	You know this!	39	125	2013-07-20 01:22:23.511079	2013-07-20 01:22:23.511079
885	And you were divorced five fucking years ago.	36	125	2013-07-20 01:22:23.513248	2013-07-20 01:22:23.513248
886	Yeah?  What do you think happens when you get divorced?  You turn in your library card?  Get a new driver's license?  Stop being Jewish?	39	125	2013-07-20 01:22:23.515467	2013-07-20 01:22:23.515467
887	This driveway.	36	\N	2013-07-20 01:22:23.517806	2013-07-20 01:22:23.517806
888	I'm as Jewish as fucking Tevye	39	\N	2013-07-20 01:22:23.520083	2013-07-20 01:22:23.520083
889	It's just part of your whole sick Cynthia thing.  Taking care of her fucking dog.  Going to her fucking synagogue.  You're living in the fucking past.	36	\N	2013-07-20 01:22:23.522371	2013-07-20 01:22:23.522371
890	Three thousand years of beautiful tradition, from Moses to Sandy Koufax-- YOU'RE GODDAMN RIGHT I LIVE IN THE PAST! I--Jesus. What the hell happened?	39	\N	2013-07-20 01:22:23.524681	2013-07-20 01:22:23.524681
893	Where'd she been?	36	\N	2013-07-20 01:22:23.531602	2013-07-20 01:22:23.531602
894	Visiting friends of hers in Palm Springs. Just picked up and left, never bothered to tell us.	40	\N	2013-07-20 01:22:23.533866	2013-07-20 01:22:23.533866
895	But I guess she told Uli Kunkel.	36	\N	2013-07-20 01:22:23.536248	2013-07-20 01:22:23.536248
896	Jesus, Dude! He never even kidnapped her.	39	\N	2013-07-20 01:22:23.538498	2013-07-20 01:22:23.538498
897	Who's this gentleman, Dude?	40	126	2013-07-20 01:22:23.540791	2013-07-20 01:22:23.540791
898	Who'm I?  I'm a fucking VETERAN!	39	126	2013-07-20 01:22:23.543669	2013-07-20 01:22:23.543669
899	You shouldn't go in there, Dude! He's very angry!	40	\N	2013-07-20 01:22:23.546456	2013-07-20 01:22:23.546456
900	Well, she's back.  No thanks to you.	41	\N	2013-07-20 01:22:23.549166	2013-07-20 01:22:23.549166
901	Where's the money, Lebowski?	36	127	2013-07-20 01:22:23.55191	2013-07-20 01:22:23.55191
902	A MILLION BUCKS FROM FUCKING NEEDY LITTLE URBAN ACHIEVERS!  YOU ARE SCUM, MAN!	39	127	2013-07-20 01:22:23.55438	2013-07-20 01:22:23.55438
903	Who the hell is he?	41	\N	2013-07-20 01:22:23.556696	2013-07-20 01:22:23.556696
904	I'll tell you who I am!  I'm the guy who's gonna KICK YOUR PHONY GOLDBRICKING ASS!	39	\N	2013-07-20 01:22:23.55904	2013-07-20 01:22:23.55904
905	We know the briefcase was empty, man. We know you kept the million bucks yourself.	36	\N	2013-07-20 01:22:23.561295	2013-07-20 01:22:23.561295
906	Well, you have your story, I have mine. I say I entrusted the money to you, and you stole it.	41	\N	2013-07-20 01:22:23.56365	2013-07-20 01:22:23.56365
907	AS IF WE WOULD EVER DREAM OF TAKING YOUR BULLSHIT MONEY!	39	\N	2013-07-20 01:22:23.566045	2013-07-20 01:22:23.566045
908	You thought Bunny'd been kidnapped and you could use it as a pretext to make some money disappear.  All you needed was a sap to pin it on, and you'd just met me.  You thought, hey, a deadbeat, a loser, someone the square community won't give a shit about.	36	128	2013-07-20 01:22:23.56844	2013-07-20 01:22:23.56844
909	Well?  Aren't you?	41	128	2013-07-20 01:22:23.570876	2013-07-20 01:22:23.570876
910	Well. . . yeah.	36	128	2013-07-20 01:22:23.573316	2013-07-20 01:22:23.573316
911	All right, get out.  Both of you.	41	\N	2013-07-20 01:22:23.575881	2013-07-20 01:22:23.575881
912	Look at that fucking phony, Dude! Pretending to be a fucking millionaire!	39	\N	2013-07-20 01:22:23.595688	2013-07-20 01:22:23.595688
913	I said out.  Now.	41	\N	2013-07-20 01:22:23.59862	2013-07-20 01:22:23.59862
914	Let me tell you something else. I've seen a lot of spinals, Dude, and this guy is a fake. A fucking goldbricker.	39	\N	2013-07-20 01:22:23.601157	2013-07-20 01:22:23.601157
915	This guy fucking walks. I've never been more certain of anything in my life!	39	\N	2013-07-20 01:22:23.603523	2013-07-20 01:22:23.603523
916	Stay away from me, mister!	41	\N	2013-07-20 01:22:23.605909	2013-07-20 01:22:23.605909
917	Walk, you fucking phony!	39	\N	2013-07-20 01:22:23.608167	2013-07-20 01:22:23.608167
918	Put me down, you son of a bitch!	41	\N	2013-07-20 01:22:23.610304	2013-07-20 01:22:23.610304
919	Walter!	36	\N	2013-07-20 01:22:23.612673	2013-07-20 01:22:23.612673
920	It's all over, man! We call your fucking bluff!	39	129	2013-07-20 01:22:23.615009	2013-07-20 01:22:23.615009
921	WALTER, FOR CHRIST'S SAKE! HE'S CRIPPLED! PUT HIM DOWN!	36	129	2013-07-20 01:22:23.617104	2013-07-20 01:22:23.617104
922	Sure, I'll put him down, Dude. RAUSS! ACHTUNG, BABY!!	39	129	2013-07-20 01:22:23.619497	2013-07-20 01:22:23.619497
923	Oh, shit.	39	\N	2013-07-20 01:22:23.621893	2013-07-20 01:22:23.621893
924	You're bullies! Cowards, both of you!	41	\N	2013-07-20 01:22:23.624058	2013-07-20 01:22:23.624058
925	Oh, shit.	39	\N	2013-07-20 01:22:23.626339	2013-07-20 01:22:23.626339
926	He can't walk, Walter!	36	\N	2013-07-20 01:22:23.628519	2013-07-20 01:22:23.628519
927	Yeah, I can see that, Dude.	39	\N	2013-07-20 01:22:23.630843	2013-07-20 01:22:23.630843
928	You monsters!	41	\N	2013-07-20 01:22:23.633078	2013-07-20 01:22:23.633078
929	Help me put him back in his chair.	36	\N	2013-07-20 01:22:23.635427	2013-07-20 01:22:23.635427
930	Shit, sorry man.	39	\N	2013-07-20 01:22:23.637829	2013-07-20 01:22:23.637829
931	Stay away from me! You bullies! You and these women! You won't leave a man his fucking balls!	41	\N	2013-07-20 01:22:23.640314	2013-07-20 01:22:23.640314
932	Walter, you fuck!	36	\N	2013-07-20 01:22:23.643229	2013-07-20 01:22:23.643229
933	Shit, Dude, I didn't know. I wouldn't've done it if I knew he was a fucking crybaby.	39	\N	2013-07-20 01:22:23.64591	2013-07-20 01:22:23.64591
934	We're sorry, man. We're really sorry.	36	\N	2013-07-20 01:22:23.648337	2013-07-20 01:22:23.648337
935	There ya go. Sorry man.	36	\N	2013-07-20 01:22:23.650866	2013-07-20 01:22:23.650866
936	Shit.  He didn't look like a spinal.	39	\N	2013-07-20 01:22:23.653239	2013-07-20 01:22:23.653239
937	Sure you'll see some tank battles. But fighting in desert is very different from fighting in canopy jungle.	39	\N	2013-07-20 01:22:23.655712	2013-07-20 01:22:23.655712
938	Uh-huh.	36	\N	2013-07-20 01:22:23.657919	2013-07-20 01:22:23.657919
939	I mean 'Nam was a foot soldier's war whereas, uh, this thing should be a fucking cakewalk. I mean I had an M16, Jacko, not an Abrams fucking tank. Just me and Charlie, man, eyeball to eyeball.	39	130	2013-07-20 01:22:23.660321	2013-07-20 01:22:23.660321
940	Yeah.	36	\N	2013-07-20 01:22:23.662692	2013-07-20 01:22:23.662692
941	That's fuckin' combat. The man in the black pyjamas, Dude. Worthy fuckin' adversary.	39	131	2013-07-20 01:22:23.665037	2013-07-20 01:22:23.665037
942	Who's in pyjamas, Walter?	38	\N	2013-07-20 01:22:23.667388	2013-07-20 01:22:23.667388
943	Shut the fuck up, Donny. Not a bunch of fig-eaters with towels on their heads tryin' to find reverse on a Soviet tank. This is not a worthy--	39	\N	2013-07-20 01:22:23.669788	2013-07-20 01:22:23.669788
944	HEY! What's this 'day of rest' shit, man?! What is this bullshit, man? I don't fucking care! It don't matter to Jesus! But you're not fooling me! You might fool the fucks in the league office, but you don't fool Jesus! It's bush league psych-out stuff! Laughable, man! I would've fucked you in the ass Saturday, I'll fuck you in the ass next Wednesday instead!	46	132	2013-07-20 01:22:23.672235	2013-07-20 01:22:23.672235
945	You got a date Wednesday, baby! Woo!	46	132	2013-07-20 01:22:23.674682	2013-07-20 01:22:23.674682
946	He's cracking.	39	\N	2013-07-20 01:22:23.677054	2013-07-20 01:22:23.677054
947	A tree of life, Dude. To all who cling to it.	39	\N	2013-07-20 01:22:23.679357	2013-07-20 01:22:23.679357
948	They finally did it. They killed my fucking car.	36	\N	2013-07-20 01:22:23.681704	2013-07-20 01:22:23.681704
949	Vee vant zat money, Lebowski.	47	133	2013-07-20 01:22:23.684225	2013-07-20 01:22:23.684225
950	Ja, uzzervize vee kill ze girl.	54	133	2013-07-20 01:22:23.686793	2013-07-20 01:22:23.686793
951	Ja, it seems you forgot our little deal, Lebowski.	55	133	2013-07-20 01:22:23.689293	2013-07-20 01:22:23.689293
952	You don't have the fucking girl, dipshits. We know you never did. So you've got nothin' on my Johnson.	36	133	2013-07-20 01:22:23.691725	2013-07-20 01:22:23.691725
953	Are these the Nazis, Walter?	38	134	2013-07-20 01:22:23.694189	2013-07-20 01:22:23.694189
954	They're nihilists, Donny, nothing to be afraid of.	39	134	2013-07-20 01:22:23.69661	2013-07-20 01:22:23.69661
955	Vee don't care. Vee still vant zat money or vee fuck you up.	47	135	2013-07-20 01:22:23.699103	2013-07-20 01:22:23.699103
956	Ja, vee still vant ze money. Vee sreaten you.	54	135	2013-07-20 01:22:23.70154	2013-07-20 01:22:23.70154
957	Fuck you.  Fuck the three of you.	39	135	2013-07-20 01:22:23.704014	2013-07-20 01:22:23.704014
958	Hey, cool it Walter.	36	135	2013-07-20 01:22:23.706525	2013-07-20 01:22:23.706525
959	There's no ransom if you don't have a fucking hostage. That's what ransom is. Those are the fucking rules.	39	135	2013-07-20 01:22:23.708925	2013-07-20 01:22:23.708925
960	Zere ARE no ROOLZ!	47	135	2013-07-20 01:22:23.711359	2013-07-20 01:22:23.711359
961	NO RULES! YOU CABBAGE-EATING SONS-OF-BITCHES--	39	135	2013-07-20 01:22:23.713807	2013-07-20 01:22:23.713807
962	His girlfriend gafe up her toe! She sought we'd be getting million dollars! Iss not fair!	54	\N	2013-07-20 01:22:23.716274	2013-07-20 01:22:23.716274
963	Fair! WHO'S THE FUCKING NIHILIST HERE! WHAT ARE YOU, A BUNCH OF FUCKING CRYBABIES?!	39	136	2013-07-20 01:22:23.718713	2013-07-20 01:22:23.718713
964	Hey, cool it Walter. Listen, pal, there never was any money. The big Lebowski gave me an empty briefcase, man, so take it up with him.	36	136	2013-07-20 01:22:23.738488	2013-07-20 01:22:23.738488
965	AND I'D LIKE MY UNDIES BACK!	39	136	2013-07-20 01:22:23.741477	2013-07-20 01:22:23.741477
966	Are they gonna hurt us, Walter?	38	\N	2013-07-20 01:22:23.744273	2013-07-20 01:22:23.744273
967	They won't hurt us, Donny. These men are cowards.	39	\N	2013-07-20 01:22:23.746948	2013-07-20 01:22:23.746948
968	Okay. Vee take ze money you haf on you und vee call it eefen.	47	\N	2013-07-20 01:22:23.749658	2013-07-20 01:22:23.749658
969	Fuck you.	39	\N	2013-07-20 01:22:23.75231	2013-07-20 01:22:23.75231
970	Come on, Walter, we're ending this thing cheap.	36	137	2013-07-20 01:22:23.754736	2013-07-20 01:22:23.754736
971	What's mine is mine.	39	\N	2013-07-20 01:22:23.756948	2013-07-20 01:22:23.756948
972	Come on, Walter!.	36	137	2013-07-20 01:22:23.759654	2013-07-20 01:22:23.759654
973	Four dollars here!	36	137	2013-07-20 01:22:23.762417	2013-07-20 01:22:23.762417
974	Almost five!	36	137	2013-07-20 01:22:23.764743	2013-07-20 01:22:23.764743
975	I got eighteen dollars, Dude.	38	\N	2013-07-20 01:22:23.767044	2013-07-20 01:22:23.767044
976	What's mine is mine.	39	\N	2013-07-20 01:22:23.769515	2013-07-20 01:22:23.769515
977	VEE FUCK YOU UP, MAN! VEE TAKE YOUR MONEY!	47	\N	2013-07-20 01:22:23.772496	2013-07-20 01:22:23.772496
978	Come and get it.	39	\N	2013-07-20 01:22:23.774866	2013-07-20 01:22:23.774866
979	VEE FUCK YOU UP, MAN!	47	138	2013-07-20 01:22:23.77733	2013-07-20 01:22:23.77733
980	Come and get it. Fucking nihilist.	39	138	2013-07-20 01:22:23.779872	2013-07-20 01:22:23.779872
981	I FUCK YOU! I FUCK YOU!	47	138	2013-07-20 01:22:23.782385	2013-07-20 01:22:23.782385
982	Show me what you got. Nihilist. Dipshit with a nine-toed woman.	39	\N	2013-07-20 01:22:23.784814	2013-07-20 01:22:23.784814
983	I FUCK YOU!  I FUCK YOU!	47	\N	2013-07-20 01:22:23.787402	2013-07-20 01:22:23.787402
984	I FUCK YOU! YOU CANNOT HURT ME! I BELIEF IN NUSSING!	47	139	2013-07-20 01:22:23.789759	2013-07-20 01:22:23.789759
985	VEAKLING!	55	\N	2013-07-20 01:22:23.792235	2013-07-20 01:22:23.792235
986	NUSSING!	47	\N	2013-07-20 01:22:23.794503	2013-07-20 01:22:23.794503
987	ANTI-SEMITE!	39	\N	2013-07-20 01:22:23.796786	2013-07-20 01:22:23.796786
988	We've got a man down, Dude.	39	\N	2013-07-20 01:22:23.799145	2013-07-20 01:22:23.799145
989	Hy God! They shot him, Walter!	36	\N	2013-07-20 01:22:23.801345	2013-07-20 01:22:23.801345
990	No Dude.	39	\N	2013-07-20 01:22:23.803662	2013-07-20 01:22:23.803662
991	They shot Donny!	36	\N	2013-07-20 01:22:23.806037	2013-07-20 01:22:23.806037
992	There weren't any shots.	39	\N	2013-07-20 01:22:23.808598	2013-07-20 01:22:23.808598
993	Then what's...	36	\N	2013-07-20 01:22:23.811338	2013-07-20 01:22:23.811338
994	It's a heart attack.	39	\N	2013-07-20 01:22:23.813812	2013-07-20 01:22:23.813812
995	Wha.	36	\N	2013-07-20 01:22:23.816133	2013-07-20 01:22:23.816133
996	Call the medics, Dude.	39	\N	2013-07-20 01:22:23.818473	2013-07-20 01:22:23.818473
997	Wha. . . Donny--	36	\N	2013-07-20 01:22:23.8208	2013-07-20 01:22:23.8208
998	Hurry Dude. I'd go but I'm pumping blood. Might pass out.	39	\N	2013-07-20 01:22:23.82298	2013-07-20 01:22:23.82298
999	Rest easy, good buddy, you're doing fine. We got help choppering in.	39	\N	2013-07-20 01:22:23.825291	2013-07-20 01:22:23.825291
1000	Hello, gentlemen. You are the bereaved?	64	\N	2013-07-20 01:22:23.827584	2013-07-20 01:22:23.827584
1001	Yeah man.	36	\N	2013-07-20 01:22:23.829836	2013-07-20 01:22:23.829836
1002	Francis Donnelly. Pleased to meet you.	64	\N	2013-07-20 01:22:23.83216	2013-07-20 01:22:23.83216
1003	Jeffrey Lebowski.	36	\N	2013-07-20 01:22:23.834488	2013-07-20 01:22:23.834488
1004	Walter Sobchak.	39	\N	2013-07-20 01:22:23.836871	2013-07-20 01:22:23.836871
1005	The Dude, actually. Is what, uh.	36	\N	2013-07-20 01:22:23.839199	2013-07-20 01:22:23.839199
1006	Excuse me?	64	\N	2013-07-20 01:22:23.841595	2013-07-20 01:22:23.841595
1007	Nothing.	36	\N	2013-07-20 01:22:23.84403	2013-07-20 01:22:23.84403
1008	Yes. I understand you're taking away the remains.	64	\N	2013-07-20 01:22:23.846365	2013-07-20 01:22:23.846365
1009	Yeah.	39	\N	2013-07-20 01:22:23.848726	2013-07-20 01:22:23.848726
1010	We have the urn.	64	\N	2013-07-20 01:22:23.851145	2013-07-20 01:22:23.851145
1011	And I assume this is credit card?	64	\N	2013-07-20 01:22:23.853621	2013-07-20 01:22:23.853621
1012	Yeah.	39	\N	2013-07-20 01:22:23.856054	2013-07-20 01:22:23.856054
1013	What's this?	39	\N	2013-07-20 01:22:23.858514	2013-07-20 01:22:23.858514
1014	That is for the urn.	64	\N	2013-07-20 01:22:23.860891	2013-07-20 01:22:23.860891
1015	Don't need it.  We're scattering the ashes.	39	\N	2013-07-20 01:22:23.880977	2013-07-20 01:22:23.880977
1016	Yes, so we were informed. However, we must of course transmit the remains to you in a receptacle.	64	\N	2013-07-20 01:22:23.88335	2013-07-20 01:22:23.88335
1017	This is a hundred and eighty dollars.	39	140	2013-07-20 01:22:23.885814	2013-07-20 01:22:23.885814
1018	Yes sir.  It is our most modestly priced receptacle.	64	140	2013-07-20 01:22:23.888304	2013-07-20 01:22:23.888304
1019	Well can we--	36	\N	2013-07-20 01:22:23.890741	2013-07-20 01:22:23.890741
1020	A hundred and eighty dollars?!	39	140	2013-07-20 01:22:23.892923	2013-07-20 01:22:23.892923
1021	They range up to three thousand.	64	140	2013-07-20 01:22:23.895294	2013-07-20 01:22:23.895294
1022	Yeah, but we're--	39	\N	2013-07-20 01:22:23.897644	2013-07-20 01:22:23.897644
1023	Can we just rent it from you?	36	140	2013-07-20 01:22:23.899844	2013-07-20 01:22:23.899844
1024	Sir, this is a mortuary, not a rental house.	64	140	2013-07-20 01:22:23.902145	2013-07-20 01:22:23.902145
1025	We're scattering the fucking ashes!	39	\N	2013-07-20 01:22:23.904578	2013-07-20 01:22:23.904578
1026	Walter--	36	\N	2013-07-20 01:22:23.906777	2013-07-20 01:22:23.906777
1027	JUST BECAUSE WE'RE BEREAVED DOESN'T MEAN WE'RE SAPS!	39	140	2013-07-20 01:22:23.908955	2013-07-20 01:22:23.908955
1028	Sir, please lower your voice--	64	\N	2013-07-20 01:22:23.911144	2013-07-20 01:22:23.911144
1029	Hey man, don't you have something else you could put it in?	36	\N	2013-07-20 01:22:23.913555	2013-07-20 01:22:23.913555
1030	That is our most modestly priced receptacle.	64	140	2013-07-20 01:22:23.915924	2013-07-20 01:22:23.915924
1031	GODDAMNIT!  IS THERE A RALPH'S AROUND HERE?!	39	140	2013-07-20 01:22:23.918071	2013-07-20 01:22:23.918071
1032	I'll say a few words.	39	\N	2013-07-20 01:22:23.920466	2013-07-20 01:22:23.920466
1033	Donny was a good bowler, and a good man. He was. . . He was one of us. He was a man who loved the outdoors, and bowling, and as a surfer explored the beaches of southern California from Redondo to Calabassos.  And he was an avid bowler.  And a good friend.  He died--he died as so many of his generation, before his time. In your wisdom you took him, Lord. As you took so many bright flowering young men, at Khe San and Lan Doc and Hill 364.  These young men gave their lives.  And Donny too.  Donny who. . . who loved bowling.	39	141	2013-07-20 01:22:23.922791	2013-07-20 01:22:23.922791
1034	And so, Theodore--Donald--Karabotsos, in accordance with what we think your dying wishes might well have been, we commit your mortal remains to the bosom of the Pacific Ocean, which you loved so well.	39	142	2013-07-20 01:22:23.925168	2013-07-20 01:22:23.925168
1035	Goodnight, sweet prince.	39	142	2013-07-20 01:22:23.927475	2013-07-20 01:22:23.927475
1036	Shit, I'm sorry Dude.	39	\N	2013-07-20 01:22:23.929707	2013-07-20 01:22:23.929707
1037	Goddamn wind.	39	\N	2013-07-20 01:22:23.932036	2013-07-20 01:22:23.932036
1038	Goddamnit Walter! You fucking asshole!	36	143	2013-07-20 01:22:23.934405	2013-07-20 01:22:23.934405
1039	Dude! Dude, I'm sorry!	39	143	2013-07-20 01:22:23.936536	2013-07-20 01:22:23.936536
1040	You make everything a fucking travesty!	36	143	2013-07-20 01:22:23.938901	2013-07-20 01:22:23.938901
1041	Dude, I'm--it was an accident!	39	\N	2013-07-20 01:22:23.941306	2013-07-20 01:22:23.941306
1042	What about that shit about Vietnam!	36	143	2013-07-20 01:22:23.943645	2013-07-20 01:22:23.943645
1043	Dude, I'm sorry--	39	\N	2013-07-20 01:22:23.946056	2013-07-20 01:22:23.946056
1044	What the fuck does Vietnam have to do with anything! What the fuck were you talking about?!	36	143	2013-07-20 01:22:23.948565	2013-07-20 01:22:23.948565
1045	Shit Dude, I'm sorry--	39	143	2013-07-20 01:22:23.950886	2013-07-20 01:22:23.950886
1046	You're a fuck, Walter!	36	143	2013-07-20 01:22:23.953264	2013-07-20 01:22:23.953264
1047	Awww, fuck it Dude.  Let's go bowling.	39	143	2013-07-20 01:22:23.95563	2013-07-20 01:22:23.95563
1048	Two oat sodas, Gary.	36	\N	2013-07-20 01:22:23.95796	2013-07-20 01:22:23.95796
1049	Right.  Good luck tomorrow.	56	\N	2013-07-20 01:22:23.96033	2013-07-20 01:22:23.96033
1050	Thanks, man.	36	\N	2013-07-20 01:22:23.962594	2013-07-20 01:22:23.962594
1051	Sorry to hear about Donny.	56	\N	2013-07-20 01:22:23.964975	2013-07-20 01:22:23.964975
1052	Yeah.  Well, you know, sometimes you eat the bear, and, uh.	36	144	2013-07-20 01:22:23.967214	2013-07-20 01:22:23.967214
1053	Howdy do, Dude.	33	\N	2013-07-20 01:22:23.969426	2013-07-20 01:22:23.969426
1054	Oh, hey man, how are ya? I wondered if I'd see you again.	36	\N	2013-07-20 01:22:23.971894	2013-07-20 01:22:23.971894
1055	Wouldn't miss the semis. How things been goin'?	33	145	2013-07-20 01:22:23.974343	2013-07-20 01:22:23.974343
1056	Ahh, you know. Strikes and gutters, ups and downs.	36	145	2013-07-20 01:22:23.976837	2013-07-20 01:22:23.976837
1057	Sure, I gotcha.	33	\N	2013-07-20 01:22:23.979228	2013-07-20 01:22:23.979228
1058	Thanks, Gary...Take care, man, I gotta get back.	36	\N	2013-07-20 01:22:23.981554	2013-07-20 01:22:23.981554
1059	Sure. Take it easy, Dude--I know that you will.	33	\N	2013-07-20 01:22:23.983913	2013-07-20 01:22:23.983913
1060	Yeah man. Well, you know, the Dude abides.	36	146	2013-07-20 01:22:23.986391	2013-07-20 01:22:23.986391
1061	The Dude abides.	33	146	2013-07-20 01:22:23.989272	2013-07-20 01:22:23.989272
1062	I don't know about you, but I take comfort in that. It's good knowin' he's out there, the Dude, takin' her easy for all us sinners. Shoosh. I sure hope he makes The finals. Welp, that about does her, wraps her all up. Things seem to've worked out pretty good for the Dude'n Walter, and it was a purt good story, dontcha think? Made me laugh to beat the band. Parts, anyway. Course--I didn't like seein' Donny go. But then, happen to know that there's a little Lebowski on the way. I guess that's the way the whole durned human comedy keeps perpetuatin' it-self, down through the generations, westward the wagons, across the sands a time until-- aw, look at me, I'm ramblin'again. Wal, uh hope you folks enjoyed yourselves.	33	147	2013-07-20 01:22:23.9919	2013-07-20 01:22:23.9919
1063	Catch ya further on down the trail.	33	147	2013-07-20 01:22:23.99448	2013-07-20 01:22:23.99448
1064	...Say friend, ya got any more a that good sarsaparilla?...	33	\N	2013-07-20 01:22:23.997286	2013-07-20 01:22:23.997286
\.


--
-- Name: lines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lebowski
--

SELECT pg_catalog.setval('lines_id_seq', 1, false);


--
-- Data for Name: quotes; Type: TABLE DATA; Schema: public; Owner: lebowski
--

COPY quotes (id, image, created_at, updated_at) FROM stdin;
1	\N	2013-07-20 19:04:42.757614	2013-07-20 19:04:42.757614
2	\N	2013-07-20 19:04:42.765087	2013-07-20 19:04:42.765087
3	\N	2013-07-20 19:04:42.76677	2013-07-20 19:04:42.76677
4	\N	2013-07-20 19:04:42.768055	2013-07-20 19:04:42.768055
5	\N	2013-07-20 19:04:42.769379	2013-07-20 19:04:42.769379
6	\N	2013-07-20 19:04:42.770672	2013-07-20 19:04:42.770672
7	\N	2013-07-20 19:04:42.77201	2013-07-20 19:04:42.77201
8	\N	2013-07-20 19:04:42.773147	2013-07-20 19:04:42.773147
9	\N	2013-07-20 19:04:42.774251	2013-07-20 19:04:42.774251
10	\N	2013-07-20 19:04:42.775431	2013-07-20 19:04:42.775431
11	\N	2013-07-20 19:04:42.776631	2013-07-20 19:04:42.776631
12	\N	2013-07-20 19:04:42.77786	2013-07-20 19:04:42.77786
13	\N	2013-07-20 19:04:42.779097	2013-07-20 19:04:42.779097
14	\N	2013-07-20 19:04:42.780235	2013-07-20 19:04:42.780235
15	\N	2013-07-20 19:04:42.78134	2013-07-20 19:04:42.78134
16	\N	2013-07-20 19:04:42.782442	2013-07-20 19:04:42.782442
17	\N	2013-07-20 19:04:42.78357	2013-07-20 19:04:42.78357
18	\N	2013-07-20 19:04:42.784759	2013-07-20 19:04:42.784759
19	\N	2013-07-20 19:04:42.785913	2013-07-20 19:04:42.785913
20	\N	2013-07-20 19:04:42.795598	2013-07-20 19:04:42.795598
21	\N	2013-07-20 19:04:42.797146	2013-07-20 19:04:42.797146
22	\N	2013-07-20 19:04:42.798354	2013-07-20 19:04:42.798354
23	\N	2013-07-20 19:04:42.799548	2013-07-20 19:04:42.799548
24	\N	2013-07-20 19:04:42.800743	2013-07-20 19:04:42.800743
25	\N	2013-07-20 19:04:42.801887	2013-07-20 19:04:42.801887
26	\N	2013-07-20 19:04:42.81886	2013-07-20 19:04:42.81886
27	\N	2013-07-20 19:04:42.820598	2013-07-20 19:04:42.820598
28	\N	2013-07-20 19:04:42.822	2013-07-20 19:04:42.822
29	\N	2013-07-20 19:04:42.823465	2013-07-20 19:04:42.823465
30	\N	2013-07-20 19:04:42.825021	2013-07-20 19:04:42.825021
31	\N	2013-07-20 19:04:42.826417	2013-07-20 19:04:42.826417
32	\N	2013-07-20 19:04:42.82769	2013-07-20 19:04:42.82769
33	\N	2013-07-20 19:04:42.828978	2013-07-20 19:04:42.828978
34	\N	2013-07-20 19:04:42.830443	2013-07-20 19:04:42.830443
35	\N	2013-07-20 19:04:42.832041	2013-07-20 19:04:42.832041
36	\N	2013-07-20 19:04:42.833422	2013-07-20 19:04:42.833422
37	\N	2013-07-20 19:04:42.841902	2013-07-20 19:04:42.841902
38	\N	2013-07-20 19:04:42.843972	2013-07-20 19:04:42.843972
39	\N	2013-07-20 19:04:42.845471	2013-07-20 19:04:42.845471
40	\N	2013-07-20 19:04:42.846771	2013-07-20 19:04:42.846771
41	\N	2013-07-20 19:04:42.848192	2013-07-20 19:04:42.848192
42	\N	2013-07-20 19:04:42.849759	2013-07-20 19:04:42.849759
43	\N	2013-07-20 19:04:42.851226	2013-07-20 19:04:42.851226
44	\N	2013-07-20 19:04:42.852524	2013-07-20 19:04:42.852524
45	\N	2013-07-20 19:04:42.853989	2013-07-20 19:04:42.853989
46	\N	2013-07-20 19:04:42.855664	2013-07-20 19:04:42.855664
47	\N	2013-07-20 19:04:42.857194	2013-07-20 19:04:42.857194
48	\N	2013-07-20 19:04:42.858587	2013-07-20 19:04:42.858587
49	\N	2013-07-20 19:04:42.860005	2013-07-20 19:04:42.860005
50	\N	2013-07-20 19:04:42.861288	2013-07-20 19:04:42.861288
51	\N	2013-07-20 19:04:42.862592	2013-07-20 19:04:42.862592
52	\N	2013-07-20 19:04:42.863763	2013-07-20 19:04:42.863763
53	\N	2013-07-20 19:04:42.865088	2013-07-20 19:04:42.865088
54	\N	2013-07-20 19:04:42.866423	2013-07-20 19:04:42.866423
55	\N	2013-07-20 19:04:42.867623	2013-07-20 19:04:42.867623
56	\N	2013-07-20 19:04:42.868778	2013-07-20 19:04:42.868778
57	\N	2013-07-20 19:04:42.869993	2013-07-20 19:04:42.869993
58	\N	2013-07-20 19:04:42.871233	2013-07-20 19:04:42.871233
59	\N	2013-07-20 19:04:42.872642	2013-07-20 19:04:42.872642
60	\N	2013-07-20 19:04:42.873908	2013-07-20 19:04:42.873908
61	\N	2013-07-20 19:04:42.875091	2013-07-20 19:04:42.875091
62	\N	2013-07-20 19:04:42.876279	2013-07-20 19:04:42.876279
63	\N	2013-07-20 19:04:42.877557	2013-07-20 19:04:42.877557
64	\N	2013-07-20 19:04:42.878646	2013-07-20 19:04:42.878646
65	\N	2013-07-20 19:04:42.887335	2013-07-20 19:04:42.887335
66	\N	2013-07-20 19:04:42.888792	2013-07-20 19:04:42.888792
67	\N	2013-07-20 19:04:42.89001	2013-07-20 19:04:42.89001
68	\N	2013-07-20 19:04:42.891211	2013-07-20 19:04:42.891211
69	\N	2013-07-20 19:04:42.892388	2013-07-20 19:04:42.892388
70	\N	2013-07-20 19:04:42.89356	2013-07-20 19:04:42.89356
71	\N	2013-07-20 19:04:42.894764	2013-07-20 19:04:42.894764
72	\N	2013-07-20 19:04:42.89592	2013-07-20 19:04:42.89592
73	\N	2013-07-20 19:04:42.897092	2013-07-20 19:04:42.897092
74	\N	2013-07-20 19:04:42.898216	2013-07-20 19:04:42.898216
75	\N	2013-07-20 19:04:42.89939	2013-07-20 19:04:42.89939
76	\N	2013-07-20 19:04:42.900583	2013-07-20 19:04:42.900583
77	\N	2013-07-20 19:04:42.901768	2013-07-20 19:04:42.901768
78	\N	2013-07-20 19:04:42.903108	2013-07-20 19:04:42.903108
79	\N	2013-07-20 19:04:42.904426	2013-07-20 19:04:42.904426
80	\N	2013-07-20 19:04:42.90564	2013-07-20 19:04:42.90564
81	\N	2013-07-20 19:04:42.906969	2013-07-20 19:04:42.906969
82	\N	2013-07-20 19:04:42.908273	2013-07-20 19:04:42.908273
83	\N	2013-07-20 19:04:42.909465	2013-07-20 19:04:42.909465
84	\N	2013-07-20 19:04:42.910647	2013-07-20 19:04:42.910647
85	\N	2013-07-20 19:04:42.91184	2013-07-20 19:04:42.91184
86	\N	2013-07-20 19:04:42.913096	2013-07-20 19:04:42.913096
87	\N	2013-07-20 19:04:42.914354	2013-07-20 19:04:42.914354
88	\N	2013-07-20 19:04:42.915533	2013-07-20 19:04:42.915533
89	\N	2013-07-20 19:04:42.916706	2013-07-20 19:04:42.916706
90	\N	2013-07-20 19:04:42.917987	2013-07-20 19:04:42.917987
91	\N	2013-07-20 19:04:42.919214	2013-07-20 19:04:42.919214
92	\N	2013-07-20 19:04:42.920376	2013-07-20 19:04:42.920376
93	\N	2013-07-20 19:04:42.921495	2013-07-20 19:04:42.921495
94	\N	2013-07-20 19:04:42.922663	2013-07-20 19:04:42.922663
95	\N	2013-07-20 19:04:42.923941	2013-07-20 19:04:42.923941
96	\N	2013-07-20 19:04:42.933075	2013-07-20 19:04:42.933075
97	\N	2013-07-20 19:04:42.934653	2013-07-20 19:04:42.934653
98	\N	2013-07-20 19:04:42.935833	2013-07-20 19:04:42.935833
99	\N	2013-07-20 19:04:42.937072	2013-07-20 19:04:42.937072
100	\N	2013-07-20 19:04:42.93839	2013-07-20 19:04:42.93839
101	\N	2013-07-20 19:04:42.939634	2013-07-20 19:04:42.939634
102	\N	2013-07-20 19:04:42.940833	2013-07-20 19:04:42.940833
103	\N	2013-07-20 19:04:42.942109	2013-07-20 19:04:42.942109
104	\N	2013-07-20 19:04:42.943325	2013-07-20 19:04:42.943325
105	\N	2013-07-20 19:04:42.944578	2013-07-20 19:04:42.944578
106	\N	2013-07-20 19:04:42.945811	2013-07-20 19:04:42.945811
107	\N	2013-07-20 19:04:42.947113	2013-07-20 19:04:42.947113
108	\N	2013-07-20 19:04:42.948434	2013-07-20 19:04:42.948434
109	\N	2013-07-20 19:04:42.949638	2013-07-20 19:04:42.949638
110	\N	2013-07-20 19:04:42.950792	2013-07-20 19:04:42.950792
111	\N	2013-07-20 19:04:42.952108	2013-07-20 19:04:42.952108
112	\N	2013-07-20 19:04:42.953509	2013-07-20 19:04:42.953509
113	\N	2013-07-20 19:04:42.954728	2013-07-20 19:04:42.954728
114	\N	2013-07-20 19:04:42.955951	2013-07-20 19:04:42.955951
115	\N	2013-07-20 19:04:42.95727	2013-07-20 19:04:42.95727
116	\N	2013-07-20 19:04:42.958507	2013-07-20 19:04:42.958507
117	\N	2013-07-20 19:04:42.959658	2013-07-20 19:04:42.959658
118	\N	2013-07-20 19:04:42.960798	2013-07-20 19:04:42.960798
119	\N	2013-07-20 19:04:42.961929	2013-07-20 19:04:42.961929
120	\N	2013-07-20 19:04:42.963093	2013-07-20 19:04:42.963093
121	\N	2013-07-20 19:04:42.964321	2013-07-20 19:04:42.964321
122	\N	2013-07-20 19:04:42.9656	2013-07-20 19:04:42.9656
123	\N	2013-07-20 19:04:42.966801	2013-07-20 19:04:42.966801
124	\N	2013-07-20 19:04:42.968022	2013-07-20 19:04:42.968022
125	\N	2013-07-20 19:04:42.9693	2013-07-20 19:04:42.9693
126	\N	2013-07-20 19:04:42.970617	2013-07-20 19:04:42.970617
127	\N	2013-07-20 19:04:42.979612	2013-07-20 19:04:42.979612
128	\N	2013-07-20 19:04:42.981326	2013-07-20 19:04:42.981326
129	\N	2013-07-20 19:04:42.982749	2013-07-20 19:04:42.982749
130	\N	2013-07-20 19:04:43.00362	2013-07-20 19:04:43.00362
131	\N	2013-07-20 19:04:43.005433	2013-07-20 19:04:43.005433
132	\N	2013-07-20 19:04:43.006629	2013-07-20 19:04:43.006629
133	\N	2013-07-20 19:04:43.007851	2013-07-20 19:04:43.007851
134	\N	2013-07-20 19:04:43.00926	2013-07-20 19:04:43.00926
135	\N	2013-07-20 19:04:43.010448	2013-07-20 19:04:43.010448
136	\N	2013-07-20 19:04:43.011737	2013-07-20 19:04:43.011737
137	\N	2013-07-20 19:04:43.013028	2013-07-20 19:04:43.013028
138	\N	2013-07-20 19:04:43.014176	2013-07-20 19:04:43.014176
139	\N	2013-07-20 19:04:43.015448	2013-07-20 19:04:43.015448
140	\N	2013-07-20 19:04:43.016618	2013-07-20 19:04:43.016618
141	\N	2013-07-20 19:04:43.025207	2013-07-20 19:04:43.025207
142	\N	2013-07-20 19:04:43.026628	2013-07-20 19:04:43.026628
143	\N	2013-07-20 19:04:43.027826	2013-07-20 19:04:43.027826
144	\N	2013-07-20 19:04:43.028995	2013-07-20 19:04:43.028995
145	\N	2013-07-20 19:04:43.030552	2013-07-20 19:04:43.030552
146	\N	2013-07-20 19:04:43.031678	2013-07-20 19:04:43.031678
147	\N	2013-07-20 19:04:43.032784	2013-07-20 19:04:43.032784
\.


--
-- Name: quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lebowski
--

SELECT pg_catalog.setval('quotes_id_seq', 147, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: lebowski
--

COPY schema_migrations (version) FROM stdin;
20130720010846
20130720010852
20130720010859
20130720010906
\.


--
-- Name: actors_pkey; Type: CONSTRAINT; Schema: public; Owner: lebowski; Tablespace: 
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: characters_pkey; Type: CONSTRAINT; Schema: public; Owner: lebowski; Tablespace: 
--

ALTER TABLE ONLY characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);


--
-- Name: lines_pkey; Type: CONSTRAINT; Schema: public; Owner: lebowski; Tablespace: 
--

ALTER TABLE ONLY lines
    ADD CONSTRAINT lines_pkey PRIMARY KEY (id);


--
-- Name: quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: lebowski; Tablespace: 
--

ALTER TABLE ONLY quotes
    ADD CONSTRAINT quotes_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: lebowski; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

