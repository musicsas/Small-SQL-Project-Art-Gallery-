--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-05-30 20:55:36

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
-- TOC entry 216 (class 1259 OID 16454)
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    id integer NOT NULL,
    name text NOT NULL,
    country text,
    birth_year integer,
    death_year integer,
    main_style text
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16453)
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.artists_id_seq OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 215
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- TOC entry 230 (class 1259 OID 16554)
-- Name: buyers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buyers (
    id integer NOT NULL,
    name text NOT NULL,
    contact_phone text
);


ALTER TABLE public.buyers OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16553)
-- Name: buyers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.buyers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.buyers_id_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 229
-- Name: buyers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.buyers_id_seq OWNED BY public.buyers.id;


--
-- TOC entry 222 (class 1259 OID 16486)
-- Name: curators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curators (
    id integer NOT NULL,
    name text NOT NULL,
    experience integer,
    specialization text
);


ALTER TABLE public.curators OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16485)
-- Name: curators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.curators_id_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 221
-- Name: curators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curators_id_seq OWNED BY public.curators.id;


--
-- TOC entry 226 (class 1259 OID 16504)
-- Name: exhibition_journal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exhibition_journal (
    id integer NOT NULL,
    date date,
    painting_id integer,
    exhibition_id integer,
    hall_id integer,
    curator_id integer,
    notes text
);


ALTER TABLE public.exhibition_journal OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16503)
-- Name: exhibition_journal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exhibition_journal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exhibition_journal_id_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 225
-- Name: exhibition_journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exhibition_journal_id_seq OWNED BY public.exhibition_journal.id;


--
-- TOC entry 220 (class 1259 OID 16477)
-- Name: exhibitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.exhibitions (
    id integer NOT NULL,
    title text NOT NULL,
    start_date date,
    end_date date,
    theme text
);


ALTER TABLE public.exhibitions OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16476)
-- Name: exhibitions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.exhibitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.exhibitions_id_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 219
-- Name: exhibitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.exhibitions_id_seq OWNED BY public.exhibitions.id;


--
-- TOC entry 224 (class 1259 OID 16495)
-- Name: halls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.halls (
    id integer NOT NULL,
    title text NOT NULL,
    capacity integer,
    lighting text
);


ALTER TABLE public.halls OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16494)
-- Name: halls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.halls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.halls_id_seq OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 223
-- Name: halls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.halls_id_seq OWNED BY public.halls.id;


--
-- TOC entry 218 (class 1259 OID 16463)
-- Name: paintings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paintings (
    id integer NOT NULL,
    title text NOT NULL,
    creation_year integer,
    style text,
    artist_id integer,
    is_original boolean,
    paint_type text,
    size text
);


ALTER TABLE public.paintings OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16462)
-- Name: paintings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paintings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.paintings_id_seq OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 217
-- Name: paintings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paintings_id_seq OWNED BY public.paintings.id;


--
-- TOC entry 228 (class 1259 OID 16538)
-- Name: sales_journal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_journal (
    id integer NOT NULL,
    sale_date date,
    painting_id integer,
    sale_price numeric,
    buyer_id integer
);


ALTER TABLE public.sales_journal OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16537)
-- Name: sales_journal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_journal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_journal_id_seq OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 227
-- Name: sales_journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_journal_id_seq OWNED BY public.sales_journal.id;


--
-- TOC entry 4723 (class 2604 OID 16457)
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- TOC entry 4730 (class 2604 OID 16557)
-- Name: buyers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buyers ALTER COLUMN id SET DEFAULT nextval('public.buyers_id_seq'::regclass);


--
-- TOC entry 4726 (class 2604 OID 16489)
-- Name: curators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curators ALTER COLUMN id SET DEFAULT nextval('public.curators_id_seq'::regclass);


--
-- TOC entry 4728 (class 2604 OID 16507)
-- Name: exhibition_journal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibition_journal ALTER COLUMN id SET DEFAULT nextval('public.exhibition_journal_id_seq'::regclass);


--
-- TOC entry 4725 (class 2604 OID 16480)
-- Name: exhibitions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibitions ALTER COLUMN id SET DEFAULT nextval('public.exhibitions_id_seq'::regclass);


--
-- TOC entry 4727 (class 2604 OID 16498)
-- Name: halls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.halls ALTER COLUMN id SET DEFAULT nextval('public.halls_id_seq'::regclass);


--
-- TOC entry 4724 (class 2604 OID 16466)
-- Name: paintings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paintings ALTER COLUMN id SET DEFAULT nextval('public.paintings_id_seq'::regclass);


--
-- TOC entry 4729 (class 2604 OID 16541)
-- Name: sales_journal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_journal ALTER COLUMN id SET DEFAULT nextval('public.sales_journal_id_seq'::regclass);


--
-- TOC entry 4898 (class 0 OID 16454)
-- Dependencies: 216
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artists (id, name, country, birth_year, death_year, main_style) FROM stdin;
1	Leonardo da Vinci	Italy	1452	1519	Renaissance
2	Vincent van Gogh	Netherlands	1853	1890	Post-Impressionism
3	Pablo Picasso	Spain	1881	1973	Cubism
4	Claude Monet	France	1840	1926	Impressionism
5	Michelangelo Buonarroti	Italy	1475	1564	Renaissance
6	Rembrandt van Rijn	Netherlands	1606	1669	Baroque
7	Salvador Dalí	Spain	1904	1989	Surrealism
8	Henri Matisse	France	1869	1954	Fauvism
9	Jackson Pollock	USA	1912	1956	Abstract Expressionism
10	Edgar Degas	France	1834	1917	Impressionism
11	Frida Kahlo	Mexico	1907	1954	Surrealism
12	Andy Warhol	USA	1928	1987	Pop Art
13	Paul Cézanne	France	1839	1906	Post-Impressionism
14	Johannes Vermeer	Netherlands	1632	1675	Baroque
15	Edvard Munch	Norway	1863	1944	Expressionism
16	Gustav Klimt	Austria	1862	1918	Symbolism
17	Wassily Kandinsky	Russia	1866	1944	Abstract Art
18	Georgia O’Keeffe	USA	1887	1986	Modernism
19	Francisco Goya	Spain	1746	1828	Romanticism
20	Albrecht Dürer	Germany	1471	1528	Renaissance
21	Pierre-Auguste Renoir	France	1841	1919	Impressionism
22	Paul Gauguin	France	1848	1903	Post-Impressionism
23	Jean-Michel Basquiat	USA	1960	1988	Neo-Expressionism
24	Roy Lichtenstein	USA	1923	1997	Pop Art
25	Marc Chagall	Belarus	1887	1985	Modernism
26	Édouard Manet	France	1832	1883	Realism
27	Rene Magritte	Belgium	1898	1967	Surrealism
28	Hieronymus Bosch	Netherlands	1450	1516	Early Netherlandish
29	Amedeo Modigliani	Italy	1884	1920	Expressionism
30	Gustave Courbet	France	1819	1877	Realism
31	John Smith	USA	1975	\N	Contemporary
32	Emily Brown	USA	1991	\N	Post-Impressionism
33	Ava Johnson	USA	1985	\N	Modernism
34	David Kim	USA	1981	\N	Pop Art
35	Lucas Silva	Brazil	1982	\N	Surrealism
36	Ana Pereira	Brazil	1988	\N	Neo-Expressionism
37	Maria Garcia	Spain	1980	\N	Contemporary
38	Carlos Sanchez	Spain	1977	\N	Realism
39	Isabella Rossi	Italy	1987	\N	Fauvism
40	Olga Ivanova	Russia	1990	\N	Impressionism
41	Sophie Martin	France	1978	\N	Modernism
42	Thomas Dupont	France	1990	\N	Symbolism
43	Hans Müller	Germany	1979	\N	Expressionism
44	Nina Petrova	Russia	1983	\N	Impressionism
45	Leo Brown	Australia	1980	\N	Surrealism
46	Emma White	USA	1989	\N	Realism
47	Robert Johnson	USA	1976	\N	Abstract
48	Lucas Silva Jr.	Brazil	1984	\N	Contemporary
49	Miguel Alvarez	Spain	1982	\N	Cubism
50	Luca Bianchi	Italy	1988	\N	Expressionism
\.


--
-- TOC entry 4912 (class 0 OID 16554)
-- Dependencies: 230
-- Data for Name: buyers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buyers (id, name, contact_phone) FROM stdin;
2	Alice Smith	+1987654321
3	Robert Johnson	+1650432876
4	Emily Brown	+1765438902
5	Michael Wilson	+1423658709
6	Sophia Lee	+1857326409
7	David Martinez	+1978563420
8	Emma Davis	+1209348756
9	William Taylor	+1547862309
10	Olivia Garcia	+1320987654
11	Daniel Miller	+1789065432
12	Ava Rodriguez	+1678904321
13	James Hernandez	+1432576980
14	Isabella Clark	+1357908642
15	Alexander Lewis	+1209438756
1	John Doe	+1234567890
\.


--
-- TOC entry 4904 (class 0 OID 16486)
-- Dependencies: 222
-- Data for Name: curators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curators (id, name, experience, specialization) FROM stdin;
1	Oliver Harris	15	Renaissance
2	Sophia Carter	8	Post-Impressionism
3	Ethan Walker	3	Cubism
4	Natalie Martinez	12	Impressionism
5	Lucas Clark	6	Surrealism
6	Ava White	10	Neo-Expressionism
7	Jack Robinson	2	Modernism
8	Emily Taylor	5	Fauvism
9	Benjamin Wright	18	Abstract Expressionism
10	Victoria Adams	7	Pop Art
11	Dylan Anderson	4	Symbolism
12	Madison Lewis	9	Realism
\.


--
-- TOC entry 4908 (class 0 OID 16504)
-- Dependencies: 226
-- Data for Name: exhibition_journal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exhibition_journal (id, date, painting_id, exhibition_id, hall_id, curator_id, notes) FROM stdin;
1	2023-01-01	46	1	2	7	Modern Art
2	2023-01-01	47	1	2	7	Modern Art
3	2023-01-01	60	1	2	7	Modern Art
4	2023-01-01	61	1	2	7	Modern Art
5	2023-01-01	58	1	2	7	Modern Art
6	2023-03-15	6	2	3	4	
7	2023-03-15	15	2	3	4	
8	2023-03-15	37	2	3	4	
9	2023-03-15	17	2	3	4	
10	2023-03-15	18	2	3	4	
11	2023-05-20	10	3	5	3	The world of cubism
12	2023-05-20	11	3	5	3	The world of cubism
13	2023-05-20	12	3	5	3	The world of cubism
14	2023-05-20	13	3	5	3	The world of cubism
15	2023-05-20	14	3	5	3	The world of cubism
16	2023-07-10	23	4	4	5	
17	2023-07-10	24	4	4	5	
18	2023-07-10	32	4	4	5	
19	2023-07-10	33	4	4	5	
20	2023-07-10	64	4	4	5	
21	2024-09-25	21	5	1	1	
22	2024-09-25	22	5	1	1	
23	2024-09-25	38	5	1	1	
24	2024-09-25	39	5	1	1	
25	2024-09-25	67	5	1	1	
26	2024-01-05	5	6	3	2	Post-Impressionist exhibition featuring works by Vincent van Gogh
27	2024-01-05	6	6	3	2	Post-Impressionist exhibition featuring works by Vincent van Gogh
28	2024-01-05	7	6	3	2	Post-Impressionist exhibition featuring works by Vincent van Gogh
29	2024-01-05	8	6	3	2	Post-Impressionist exhibition featuring works by Vincent van Gogh
30	2024-01-05	9	6	3	2	Post-Impressionist exhibition featuring works by Vincent van Gogh
31	2024-03-01	27	7	2	9	Emotions in the art of Expressionism
32	2024-03-01	28	7	2	9	Emotions in the art of Expressionism
33	2024-03-01	40	7	2	9	Emotions in the art of Expressionism
34	2024-03-01	56	7	2	9	Emotions in the art of Expressionism
35	2024-03-01	57	7	2	9	Emotions in the art of Expressionism
36	2024-07-20	1	8	1	1	Renaissance exhibition featuring masterpieces by Leonardo da Vinci
37	2024-07-20	2	8	1	1	Renaissance exhibition featuring masterpieces by Leonardo da Vinci
38	2024-07-20	3	8	1	1	Renaissance exhibition featuring masterpieces by Leonardo da Vinci
39	2024-07-20	4	8	1	1	Renaissance exhibition featuring masterpieces by Leonardo da Vinci
40	2024-07-01	34	9	2	10	Pop culture icons and vibrant colors
41	2024-07-01	35	9	2	10	Pop culture icons and vibrant colors
42	2024-07-01	58	9	2	10	Pop culture icons and vibrant colors
43	2024-07-01	59	9	2	10	Pop culture icons and vibrant colors
44	2024-09-15	27	10	6	11	Abstract representations of reality
45	2024-09-15	28	10	6	11	Abstract representations of reality
46	2024-09-15	44	10	6	11	Abstract representations of reality
47	2024-09-15	45	10	6	11	Abstract representations of reality
48	2024-09-15	63	10	6	11	Abstract representations of reality
\.


--
-- TOC entry 4902 (class 0 OID 16477)
-- Dependencies: 220
-- Data for Name: exhibitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.exhibitions (id, title, start_date, end_date, theme) FROM stdin;
1	Modern Masters	2023-01-01	2023-01-31	Exploring contemporary art trends
2	Impressionist Impressions	2023-03-15	2023-04-15	A journey through Impressionism
3	Cubist Creations	2023-05-20	2023-06-20	The world of Cubism
4	Surrealistic Dreams	2023-07-10	2023-08-10	Diving into Surrealist visions
5	Baroque Brilliance	2023-09-25	2023-10-25	Discovering the Baroque era
7	Expressionist Explorations	2024-03-01	2024-04-01	Emotions in the art of Expressionism
9	Pop Art Extravaganza	2024-07-01	2024-08-01	Pop culture icons and vibrant colors
10	Abstract Realities	2024-09-15	2024-10-15	Abstract representations of reality
6	Post-Impressionism	2024-01-05	2024-02-05	Post-Impressionist exhibition featuring works by Vincent van Gog
8	The Art of Renaissance	2024-05-15	2024-06-15	Renaissance exhibition featuring masterpieces by Leonardo da Vinci
\.


--
-- TOC entry 4906 (class 0 OID 16495)
-- Dependencies: 224
-- Data for Name: halls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.halls (id, title, capacity, lighting) FROM stdin;
1	Renaissance Hall	200	Natural
2	Modernism Hall	50	Artificial
3	Impressionism Hall	120	Natural
4	Surrealism Hall	300	Mixed
5	Cubism Hall	230	Artificial
6	Realism Hall	150	Natural
\.


--
-- TOC entry 4900 (class 0 OID 16463)
-- Dependencies: 218
-- Data for Name: paintings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paintings (id, title, creation_year, style, artist_id, is_original, paint_type, size) FROM stdin;
76	Untitled (Skull)	2013	Neo-Expressionism	35	f	Acrylic and oilstick on canvas	183 cm × 173 cm
79	I and the Village	2014	Modernism	48	f	Oil on canvas	192.1 cm × 151.4 cm
72	The Garden of Earthly Delights	2014	Early Netherlandish	44	f	Oil on wood	220 cm × 389 cm
73	David	2016	Renaissance	46	f	Marble	517 cm
74	The Dance Class	2010	Impressionism	42	f	Oil	83 cm × 76 cm
75	Ballet Rehearsal	2022	Impressionism	44	f	Oil	86 cm × 77 cm
77	Self-Portrait with Thorn Necklace and Hummingbird	2021	Surrealism	43	f	Oil	62.5 cm × 47 cm
78	The Treachery of Images	2009	Surrealism	50	f	Oil on canvas	60.3 cm × 81 cm
80	Water Lilies	2017	Impressionism	50	f	Oil	200 cm × 300 cm
81	Ballet Rehearsal	2017	Impressionism	38	f	Oil	86 cm × 77 cm
82	I and the Village	2018	Modernism	41	f	Oil on canvas	192.1 cm × 151.4 cm
83	The Artist's Garden at Giverny	2020	Impressionism	48	f	Oil	88.3 cm × 93.1 cm
84	Campbell's Soup Cans	2020	Pop Art	34	f	Synthetic polymer	51 cm × 41 cm each
85	The Scream	2013	Expressionism	37	f	Oil	91 cm × 73.5 cm
86	Jimson Weed/White Flower No. 1	2019	Modernism	36	f	Oil	121.9 cm × 101.6 cm
87	Annunciation	2019	Renaissance	40	f	Oil	98 cm × 217 cm
1	Mona Lisa	1503	Renaissance	1	t	Oil	77 cm × 53 cm
2	The Last Supper	1498	Renaissance	1	t	Tempera	460 cm × 880 cm
3	Vitruvian Man	1490	Renaissance	1	t	Ink	34.4 cm × 25.5 cm
4	Annunciation	1472	Renaissance	1	t	Oil	98 cm × 217 cm
5	Starry Night	1889	Post-Impressionism	2	t	Oil	73.7 cm × 92.1 cm
6	Sunflowers	1888	Post-Impressionism	2	t	Oil	95 cm × 73 cm
7	Irises	1889	Post-Impressionism	2	t	Oil	71 cm × 93 cm
8	The Bedroom	1888	Post-Impressionism	2	t	Oil	72.4 cm × 91.3 cm
9	Café Terrace at Night	1888	Post-Impressionism	2	t	Oil	81 cm × 65.5 cm
10	Guernica	1937	Cubism	3	t	Oil	349 cm × 776 cm
11	Les Demoiselles d'Avignon	1907	Cubism	3	t	Oil	243.9 cm × 233.7 cm
12	The Weeping Woman	1937	Cubism	3	t	Oil	60 cm × 49 cm
13	Girl before a Mirror	1932	Cubism	3	t	Oil	162.3 cm × 130.2 cm
14	The Old Guitarist	1903	Cubism	3	t	Oil	122.9 cm × 82.6 cm
15	Impression, Sunrise	1872	Impressionism	4	t	Oil	48 cm × 63 cm
16	Water Lilies	1920	Impressionism	4	t	Oil	200 cm × 300 cm
17	Woman with a Parasol	1875	Impressionism	4	t	Oil	100 cm × 81 cm
18	The Artist's Garden at Giverny	1900	Impressionism	4	t	Oil	88.3 cm × 93.1 cm
19	David	1504	Renaissance	5	t	Marble	517 cm
20	The Creation of Adam	1512	Renaissance	5	t	Fresco	280 cm × 570 cm
21	The Night Watch	1642	Baroque	6	t	Oil	363 cm × 437 cm
22	The Anatomy Lesson of Dr. Nicolaes Tulp	1632	Baroque	6	t	Oil	169.5 cm × 216.5 cm
23	The Persistence of Memory	1931	Surrealism	7	t	Oil	24 cm × 33 cm
24	The Elephants	1948	Surrealism	7	t	Oil	52 cm × 71 cm
25	The Dance	1910	Fauvism	8	t	Oil	260 cm × 391 cm
26	Woman with a Hat	1905	Fauvism	8	t	Oil	80.65 cm × 59.69 cm
27	No. 5, 1948	1948	Abstract Expressionism	9	t	Oil	244 cm × 122 cm
28	Blue Poles	1952	Abstract Expressionism	9	t	Oil	210 cm × 486 cm
29	The Bellelli Family	1858	Impressionism	10	t	Oil	200 cm × 250 cm
30	Ballet Rehearsal	1874	Impressionism	10	t	Oil	86 cm × 77 cm
31	The Dance Class	1874	Impressionism	10	t	Oil	83 cm × 76 cm
32	The Two Fridas	1939	Surrealism	11	t	Oil	173.5 cm × 173 cm
33	Self-Portrait with Thorn Necklace and Hummingbird	1940	Surrealism	11	t	Oil	62.5 cm × 47 cm
34	Campbell's Soup Cans	1962	Pop Art	12	t	Synthetic polymer	51 cm × 41 cm each
35	Marilyn Diptych	1962	Pop Art	12	t	Acrylic	205.44 cm × 289.56 cm
36	The Card Players	1890	Post-Impressionism	13	t	Oil	134.6 cm × 180.3 cm
37	Mont Sainte-Victoire	1902	Post-Impressionism	13	t	Oil	65 cm × 81 cm
38	Girl with a Pearl Earring	1665	Baroque	14	t	Oil	44.5 cm × 39 cm
39	The Milkmaid	1657	Baroque	14	t	Oil	45.5 cm × 41 cm
40	The Scream	1893	Expressionism	15	t	Oil	91 cm × 73.5 cm
41	The Dance of Life	1899	Expressionism	15	t	Oil	120 cm × 151.5 cm
42	The Kiss	1907	Symbolism	16	t	Oil and gold leaf	180 cm × 180 cm
43	Portrait of Adele Bloch-Bauer I	1907	Symbolism	16	t	Oil	140 cm × 140 cm
44	Composition VII	1913	Abstract Art	17	t	Oil	200 cm × 300 cm
45	Yellow-Red-Blue	1925	Abstract Art	17	t	Oil	127 cm × 200 cm
46	Jimson Weed/White Flower No. 1	1932	Modernism	18	t	Oil	121.9 cm × 101.6 cm
47	Black Iris III	1926	Modernism	18	t	Oil	91.4 cm × 75.9 cm
48	The Third of May 1808	1814	Romanticism	19	t	Oil	268 cm × 347 cm
49	Saturn Devouring His Son	1823	Romanticism	19	t	Oil	143 cm × 81 cm
50	The Four Horsemen of the Apocalypse	1497	Renaissance	20	t	Woodcut	39.1 cm × 28.1 cm
51	Self-Portrait at 28	1500	Renaissance	20	t	Oil	52 cm × 41 cm
52	Luncheon of the Boating Party	1881	Impressionism	21	t	Oil	129.9 cm × 172.7 cm
53	Dance at Le Moulin de la Galette	1876	Impressionism	21	t	Oil	131 cm × 175 cm
54	Where Do We Come From? What Are We? Where Are We Going?	1897	Post-Impressionism	22	t	Oil	139.1 cm × 374.6 cm
55	The Yellow Christ	1889	Post-Impressionism	22	t	Oil	91 cm × 73 cm
56	Untitled (Skull)	1981	Neo-Expressionism	23	t	Acrylic and oilstick on canvas	183 cm × 173 cm
57	Hollywood Africans	1983	Neo-Expressionism	23	t	Acrylic and oilstick on canvas	213.4 cm × 213.4 cm
58	Whaam!	1963	Pop Art	24	t	Oil and Magna on canvas	172.7 cm × 406.4 cm
59	Drowning Girl	1963	Pop Art	24	t	Oil and synthetic polymer paint on canvas	171.6 cm × 169.5 cm
60	I and the Village	1911	Modernism	25	t	Oil on canvas	192.1 cm × 151.4 cm
61	The Birthday	1915	Modernism	25	t	Oil on canvas	131.1 cm × 89.5 cm
62	Olympia	1863	Realism	26	t	Oil on canvas	130.5 cm × 190 cm
63	A Bar at the Folies-Bergère	1882	Realism	26	t	Oil on canvas	96 cm × 130 cm
64	The Son of Man	1964	Surrealism	27	t	Oil on canvas	116 cm × 89 cm
65	The Treachery of Images	1928	Surrealism	27	t	Oil on canvas	60.3 cm × 81 cm
66	The Garden of Earthly Delights	1490	Early Netherlandish	28	t	Oil on wood	220 cm × 389 cm
67	The Haywain Triptych	1516	Early Netherlandish	28	t	Oil on wood	220 cm × 389 cm
68	Reclining Nude	1917	Expressionism	29	t	Oil on canvas	60 cm × 92 cm
69	Portrait of Jeanne Hébuterne	1919	Expressionism	29	t	Oil on canvas	92 cm × 73 cm
70	The Painter's Studio	1855	Realism	30	t	Oil on canvas	361 cm × 598 cm
71	A Burial at Ornans	1849	Realism	30	t	Oil on canvas	315 cm × 668 cm
88	The Weeping Woman	2007	Cubism	36	f	Oil	60 cm × 49 cm
89	Hollywood Africans	2010	Neo-Expressionism	41	f	Acrylic and oilstick on canvas	213.4 cm × 213.4 cm
90	Jimson Weed/White Flower No. 1	2011	Modernism	40	f	Oil	121.9 cm × 101.6 cm
91	Les Demoiselles d'Avignon	2016	Cubism	44	f	Oil	243.9 cm × 233.7 cm
92	Woman with a Parasol	2015	Impressionism	49	f	Oil	100 cm × 81 cm
93	Whaam!	2018	Pop Art	43	f	Oil and Magna on canvas	172.7 cm × 406.4 cm
94	The Artist's Garden at Giverny	2019	Impressionism	43	f	Oil	88.3 cm × 93.1 cm
95	Reclining Nude	2020	Expressionism	37	f	Oil on canvas	60 cm × 92 cm
98	The Four Horsemen of the Apocalypse	2010	Renaissance	48	f	Woodcut	39.1 cm × 28.1 cm
99	The Yellow Christ	2016	Post-Impressionism	41	f	Oil	91 cm × 73 cm
100	The Two Fridas	2015	Surrealism	31	f	Oil	173.5 cm × 173 cm
102	The Third of May 1808	2021	Romanticism	42	f	Oil	268 cm × 347 cm
103	Woman with a Hat	2021	Fauvism	44	f	Oil	80.65 cm × 59.69 cm
105	Luncheon of the Boating Party	2017	Impressionism	35	f	Oil	129.9 cm × 172.7 cm
106	Girl with a Pearl Earring	2015	Baroque	45	f	Oil	44.5 cm × 39 cm
107	The Dance of Life	2011	Expressionism	41	f	Oil	120 cm × 151.5 cm
109	Girl before a Mirror	2019	Cubism	39	f	Oil	162.3 cm × 130.2 cm
110	Woman with a Hat	2018	Fauvism	39	f	Oil	80.65 cm × 59.69 cm
111	The Creation of Adam	2015	Renaissance	31	f	Fresco	280 cm × 570 cm
96	A Burial at Ornans	2018	Realism	45	f	Oil on canvas	315 cm × 668 cm
97	The Scream	2020	Expressionism	48	f	Oil	91 cm × 73.5 cm
101	Hollywood Africans	2021	Neo-Expressionism	37	f	Acrylic and oilstick on canvas	213.4 cm × 213.4 cm
104	Girl with a Pearl Earring	2016	Baroque	48	f	Oil	44.5 cm × 39 cm
108	Whaam!	2022	Pop Art	33	f	Oil and Magna on canvas	172.7 cm × 406.4 cm
\.


--
-- TOC entry 4910 (class 0 OID 16538)
-- Dependencies: 228
-- Data for Name: sales_journal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_journal (id, sale_date, painting_id, sale_price, buyer_id) FROM stdin;
1	2023-06-18	78	17656	5
2	2023-08-25	87	19036	3
3	2023-11-14	90	13578	1
4	2023-03-05	92	12432	10
5	2023-09-20	80	13790	4
6	2023-10-30	79	16235	2
7	2024-01-08	98	15988	7
8	2023-08-12	89	18570	10
9	2023-06-03	75	15321	11
10	2023-05-19	97	11655	2
11	2023-07-21	94	13457	9
12	2023-09-11	77	17423	3
13	2024-02-27	110	18750	1
14	2023-07-04	111	14123	14
15	2023-10-15	84	19765	6
16	2023-04-29	85	11987	5
17	2024-03-12	86	16235	8
18	2023-08-08	82	14326	11
19	2023-04-02	74	15433	13
20	2023-12-30	73	20654	12
21	2023-06-09	76	17654	7
22	2023-05-24	99	12790	10
23	2024-01-15	93	19876	4
24	2023-07-15	96	14326	2
25	2024-04-10	17	450000	1
26	2024-02-28	15	320000	7
27	2023-11-15	8	210000	4
28	2024-01-05	22	500000	10
29	2024-03-20	5	380000	2
\.


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 215
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_id_seq', 1, false);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 229
-- Name: buyers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buyers_id_seq', 15, true);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 221
-- Name: curators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curators_id_seq', 22, true);


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 225
-- Name: exhibition_journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exhibition_journal_id_seq', 48, true);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 219
-- Name: exhibitions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.exhibitions_id_seq', 20, true);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 223
-- Name: halls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.halls_id_seq', 16, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 217
-- Name: paintings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paintings_id_seq', 155, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 227
-- Name: sales_journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_journal_id_seq', 29, true);


--
-- TOC entry 4732 (class 2606 OID 16461)
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- TOC entry 4746 (class 2606 OID 16561)
-- Name: buyers buyers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buyers
    ADD CONSTRAINT buyers_pkey PRIMARY KEY (id);


--
-- TOC entry 4738 (class 2606 OID 16493)
-- Name: curators curators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curators
    ADD CONSTRAINT curators_pkey PRIMARY KEY (id);


--
-- TOC entry 4742 (class 2606 OID 16511)
-- Name: exhibition_journal exhibition_journal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibition_journal
    ADD CONSTRAINT exhibition_journal_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 16484)
-- Name: exhibitions exhibitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibitions
    ADD CONSTRAINT exhibitions_pkey PRIMARY KEY (id);


--
-- TOC entry 4740 (class 2606 OID 16502)
-- Name: halls halls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.halls
    ADD CONSTRAINT halls_pkey PRIMARY KEY (id);


--
-- TOC entry 4734 (class 2606 OID 16470)
-- Name: paintings paintings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paintings
    ADD CONSTRAINT paintings_pkey PRIMARY KEY (id);


--
-- TOC entry 4744 (class 2606 OID 16545)
-- Name: sales_journal sales_journal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_journal
    ADD CONSTRAINT sales_journal_pkey PRIMARY KEY (id);


--
-- TOC entry 4748 (class 2606 OID 16532)
-- Name: exhibition_journal exhibition_journal_curator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibition_journal
    ADD CONSTRAINT exhibition_journal_curator_id_fkey FOREIGN KEY (curator_id) REFERENCES public.curators(id);


--
-- TOC entry 4749 (class 2606 OID 16522)
-- Name: exhibition_journal exhibition_journal_exhibition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibition_journal
    ADD CONSTRAINT exhibition_journal_exhibition_id_fkey FOREIGN KEY (exhibition_id) REFERENCES public.exhibitions(id);


--
-- TOC entry 4750 (class 2606 OID 16527)
-- Name: exhibition_journal exhibition_journal_hall_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibition_journal
    ADD CONSTRAINT exhibition_journal_hall_id_fkey FOREIGN KEY (hall_id) REFERENCES public.halls(id);


--
-- TOC entry 4751 (class 2606 OID 16517)
-- Name: exhibition_journal exhibition_journal_painting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.exhibition_journal
    ADD CONSTRAINT exhibition_journal_painting_id_fkey FOREIGN KEY (painting_id) REFERENCES public.paintings(id);


--
-- TOC entry 4752 (class 2606 OID 16562)
-- Name: sales_journal fk_buyer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_journal
    ADD CONSTRAINT fk_buyer_id FOREIGN KEY (buyer_id) REFERENCES public.buyers(id);


--
-- TOC entry 4747 (class 2606 OID 16471)
-- Name: paintings paintings_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paintings
    ADD CONSTRAINT paintings_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- TOC entry 4753 (class 2606 OID 16546)
-- Name: sales_journal sales_journal_painting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_journal
    ADD CONSTRAINT sales_journal_painting_id_fkey FOREIGN KEY (painting_id) REFERENCES public.paintings(id);


-- Completed on 2024-05-30 20:55:37

--
-- PostgreSQL database dump complete
--

