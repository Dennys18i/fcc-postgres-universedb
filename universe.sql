--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: denis; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.denis (
    denis_id integer NOT NULL,
    col1 integer,
    col2 integer,
    col3 boolean DEFAULT false NOT NULL,
    name character varying(1000) NOT NULL
);


ALTER TABLE public.denis OWNER TO freecodecamp;

--
-- Name: denis_denis_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.denis_denis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.denis_denis_id_seq OWNER TO freecodecamp;

--
-- Name: denis_denis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.denis_denis_id_seq OWNED BY public.denis.denis_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    col1 integer,
    col2 text,
    name character varying(20) NOT NULL,
    col10 integer DEFAULT 321321 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    col2 boolean NOT NULL,
    planet_id integer NOT NULL,
    col1 character varying(200) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    col1 numeric,
    col2 boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    col1 integer NOT NULL,
    col2 character varying(50) NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: denis denis_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.denis ALTER COLUMN denis_id SET DEFAULT nextval('public.denis_denis_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: denis; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.denis VALUES (1, NULL, NULL, false, 'ewqe');
INSERT INTO public.denis VALUES (2, NULL, NULL, false, 'efsadase');
INSERT INTO public.denis VALUES (3, NULL, NULL, false, 'eqweqeqrwdsaqw');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'galaxy1', 321321);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'galaxy2', 321321);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'galaxy3', 321321);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'galaxy4', 321321);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'galaxy5', 321321);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'galaxy6', 321321);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'dasdfas', false, 2, 'dsajhdas');
INSERT INTO public.moon VALUES (2, 'fsadasd', true, 1, 'fsadasf');
INSERT INTO public.moon VALUES (3, 'fasdasweq', true, 2, 'fsdsaadasf');
INSERT INTO public.moon VALUES (4, 'rwqewq', false, 4, 'gsadsa');
INSERT INTO public.moon VALUES (5, 'rwqewqdsa', false, 4, 'gsadsa321');
INSERT INTO public.moon VALUES (6, 'gsadsawq', true, 4, 'gsadsadsa321');
INSERT INTO public.moon VALUES (7, 'gsadsasawq', true, 4, 'gsadsaddasdwqsa321');
INSERT INTO public.moon VALUES (8, 'vxzczxc', true, 1, 'wreqewqwqe');
INSERT INTO public.moon VALUES (9, 'vxzczxfsadasc', false, 3, 'wreqewqwqefsad');
INSERT INTO public.moon VALUES (10, 'vxzczxfsadasdsafc', false, 3, 'nbdcsfd');
INSERT INTO public.moon VALUES (11, 'vxzczxfswqe2adasdsafc', false, 3, 'nbdcsdsadsafd');
INSERT INTO public.moon VALUES (12, 'opoeqwieq', false, 3, 'bnvfgbsad');
INSERT INTO public.moon VALUES (13, 'opoeqwiefasdq', false, 3, 'bnvfewqgbsad');
INSERT INTO public.moon VALUES (14, 'opoeqwiefasd21q', false, 3, 'bnvdsvfewqgbsad');
INSERT INTO public.moon VALUES (15, 'HJNBGDAUYDHSA', true, 1, 'ghdbagshdasdfdsaw');
INSERT INTO public.moon VALUES (16, 'HJNBGDAUewqYDHSA', true, 1, 'ghdbagshdasdfdsdsaaw');
INSERT INTO public.moon VALUES (17, 'HJNBGDAUewqeqwYDHSA', true, 1, 'ghdbagsewqhdasdfdsdsaaw');
INSERT INTO public.moon VALUES (18, 'dsanbydweqs', true, 1, 'tdw');
INSERT INTO public.moon VALUES (19, 'dsanbydweqs21', true, 1, 'tddsaw');
INSERT INTO public.moon VALUES (20, 'dsanbydwe321qs21', true, 1, 'tdsa21ddsaw');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'dsadas', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'dfasdasds', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'fsadasdas', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'fsadsaf', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'fgsadsa', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'weqeqweq', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'wgsadas', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'qwqw', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'qwqwsa', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'qwqwsafsa', NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'qwqwsafsadsadas', NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'qwqwsafsadsadasdas', NULL, false, 1);
INSERT INTO public.planet VALUES (13, 'snaddsa', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'dasfsa', 'fsadgfsad', 1);
INSERT INTO public.star VALUES (2, 1, 'dfsadfgsad', 'fsdsafadgfsad', 1);
INSERT INTO public.star VALUES (3, 1, 'dfsadfgsad', 'ffasdassad', 1);
INSERT INTO public.star VALUES (4, 1, 'dfsadfgsad', 'ffasadasgsaad', 1);
INSERT INTO public.star VALUES (5, 1, 'dfsadfgsad', 'ffsadas', 1);
INSERT INTO public.star VALUES (6, 1, 'dfsadfgsad', 'fsadass', 1);


--
-- Name: denis_denis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.denis_denis_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: denis denis_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.denis
    ADD CONSTRAINT denis_name_key UNIQUE (name);


--
-- Name: denis denis_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.denis
    ADD CONSTRAINT denis_pkey PRIMARY KEY (denis_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_col1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_col1_key UNIQUE (col1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_uni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_uni UNIQUE (name);


--
-- Name: planet name_uni_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_uni_planet UNIQUE (name);


--
-- Name: star name_uni_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_uni_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

