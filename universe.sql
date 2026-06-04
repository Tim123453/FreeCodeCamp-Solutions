--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    diameter numeric NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_cluster (
    name character varying(30) NOT NULL,
    galaxy_cluster_id integer NOT NULL,
    age integer
);


ALTER TABLE public.galaxy_cluster OWNER TO freecodecamp;

--
-- Name: galaxy_cluster_galaxy_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_cluster_galaxy_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_cluster_galaxy_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_cluster_galaxy_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_cluster_galaxy_cluster_id_seq OWNED BY public.galaxy_cluster.galaxy_cluster_id;


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
    name character varying(30),
    age integer NOT NULL,
    diameter numeric NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    description text,
    planet_id integer NOT NULL
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
    name character varying(30),
    age integer NOT NULL,
    diameter numeric NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    description text,
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
    name character varying(30),
    age integer NOT NULL,
    diameter numeric NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    description text,
    galaxy_id integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_cluster galaxy_cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster ALTER COLUMN galaxy_cluster_id SET DEFAULT nextval('public.galaxy_cluster_galaxy_cluster_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'efi', 1, 2, 3, true, 'FEEF');
INSERT INTO public.galaxy VALUES (2, 'Meoenq', 1, 2, 1, true, 'FEEF3');
INSERT INTO public.galaxy VALUES (3, 'abc', 2, 2, 3, true, 'FEEF 2');
INSERT INTO public.galaxy VALUES (4, 'Vier', 5, 2, 3, false, 'jjiwks');
INSERT INTO public.galaxy VALUES (5, 'sppapapd', 2, 2, 3, true, 'qlköce');
INSERT INTO public.galaxy VALUES (6, 'Fünf', 3, 2, 3, false, 'jjiwvddavdaks');


--
-- Data for Name: galaxy_cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_cluster VALUES ('Abell1689', 1, 4);
INSERT INTO public.galaxy_cluster VALUES ('MACS1206', 2, 12);
INSERT INTO public.galaxy_cluster VALUES ('BOB', 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (26, 'Meoenq', 1, 2, 1, true, 'FEEF3', 22);
INSERT INTO public.moon VALUES (27, 'abc', 2, 2, 3, true, 'FEEF 2', 23);
INSERT INTO public.moon VALUES (28, 'Vier', 5, 2, 3, false, 'jjiwks', 24);
INSERT INTO public.moon VALUES (29, 'sppapapd', 2, 2, 3, true, 'qlköce', 25);
INSERT INTO public.moon VALUES (30, 'Fünf', 3, 2, 3, false, 'jjiwvddavdaks', 24);
INSERT INTO public.moon VALUES (31, 'Sechs', 1, 1, 3, false, 'ööwvddavdaks', 25);
INSERT INTO public.moon VALUES (32, 'Sieben', 1, 2, 1, true, 'S', 26);
INSERT INTO public.moon VALUES (33, 'Acht', 2, 2, 3, true, 'FEEEEF 2', 27);
INSERT INTO public.moon VALUES (34, 'Neun', 5, 2, 3, false, 'qqqjjiwks', 28);
INSERT INTO public.moon VALUES (35, 'Zehn', 2, 2, 3, true, 'qlkvaaöce', 29);
INSERT INTO public.moon VALUES (36, 'Elf', 3, 2, 3, false, 'jjiwvddasfbvdaks', 30);
INSERT INTO public.moon VALUES (37, 'Zwölf', 1, 1, 3, false, 'ööwvdfdavdaks', 31);
INSERT INTO public.moon VALUES (38, 'Dreizehn', 1, 2, 1, true, 'FEEF3', 20);
INSERT INTO public.moon VALUES (39, 'Vierzehn', 2, 2, 3, true, 'FEEF 2', 21);
INSERT INTO public.moon VALUES (40, 'Fünfzehn', 5, 2, 3, false, 'jjiaswks', 22);
INSERT INTO public.moon VALUES (41, 'Sechszehn', 2, 2, 3, true, 'qlköcex', 23);
INSERT INTO public.moon VALUES (42, 'Siebzehn', 3, 2, 3, false, 'jjidaks', 24);
INSERT INTO public.moon VALUES (43, 'Achtzehn', 1, 1, 3, false, 'ööwvps', 25);
INSERT INTO public.moon VALUES (44, 'Neunzehn', 1, 2, 1, true, 'cccS', 26);
INSERT INTO public.moon VALUES (45, 'Zwanzig', 2, 2, 3, true, 'EF 2', 27);
INSERT INTO public.moon VALUES (46, 'Einundzwanzig', 5, 2, 3, false, 'qqqjq', 28);
INSERT INTO public.moon VALUES (47, 'Zweiunszwanzig', 2, 2, 3, true, 'qlkvaamöce', 29);
INSERT INTO public.moon VALUES (48, 'Dreiundzwanzig', 3, 2, 3, false, 'jjfbvdaks', 30);
INSERT INTO public.moon VALUES (49, 'Vierundzwanzig', 1, 1, 3, false, 'ööwvvdaks', 31);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (20, 'Meoenq', 1, 2, 1, true, 'FEEF3', 1);
INSERT INTO public.planet VALUES (21, 'abc', 2, 2, 3, true, 'FEEF 2', 2);
INSERT INTO public.planet VALUES (22, 'Vier', 5, 2, 3, false, 'jjiwks', 3);
INSERT INTO public.planet VALUES (23, 'sppapapd', 2, 2, 3, true, 'qlköce', 4);
INSERT INTO public.planet VALUES (24, 'Fünf', 3, 2, 3, false, 'jjiwvddavdaks', 5);
INSERT INTO public.planet VALUES (25, 'Sechs', 1, 1, 3, false, 'ööwvddavdaks', 6);
INSERT INTO public.planet VALUES (26, 'Sieben', 1, 2, 1, true, 'S', 1);
INSERT INTO public.planet VALUES (27, 'Acht', 2, 2, 3, true, 'FEEEEF 2', 2);
INSERT INTO public.planet VALUES (28, 'Neun', 5, 2, 3, false, 'qqqjjiwks', 3);
INSERT INTO public.planet VALUES (29, 'Zehn', 2, 2, 3, true, 'qlkvaaöce', 4);
INSERT INTO public.planet VALUES (30, 'Elf', 3, 2, 3, false, 'jjiwvddasfbvdaks', 5);
INSERT INTO public.planet VALUES (31, 'Zwölf', 1, 1, 3, false, 'ööwvdfdavdaks', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Meoenq', 1, 2, 1, true, 'FEEF3', 1);
INSERT INTO public.star VALUES (2, 'abc', 2, 2, 3, true, 'FEEF 2', 2);
INSERT INTO public.star VALUES (3, 'Vier', 5, 2, 3, false, 'jjiwks', 3);
INSERT INTO public.star VALUES (4, 'sppapapd', 2, 2, 3, true, 'qlköce', 4);
INSERT INTO public.star VALUES (5, 'Fünf', 3, 2, 3, false, 'jjiwvddavdaks', 5);
INSERT INTO public.star VALUES (6, 'Sechs', 1, 1, 3, false, 'ööwvddavdaks', 6);


--
-- Name: galaxy_cluster_galaxy_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_cluster_galaxy_cluster_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 49, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 31, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_cluster galaxy_cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster
    ADD CONSTRAINT galaxy_cluster_name_key UNIQUE (name);


--
-- Name: galaxy_cluster galaxy_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_cluster
    ADD CONSTRAINT galaxy_cluster_pkey PRIMARY KEY (galaxy_cluster_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

