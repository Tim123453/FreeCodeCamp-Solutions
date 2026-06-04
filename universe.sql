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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 105000, 0, true, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 220000, 2537000, false, 'Nearest spiral galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12, 60000, 3000000, false, 'Small spiral galaxy in Local Group');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 9, 50000, 29000000, false, 'Bright galaxy with prominent dust lane');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 8, 76000, 23000000, false, 'Interacting grand-design spiral galaxy');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 13, 14000, 163000, false, 'Satellite galaxy of the Milky Way');


--
-- Data for Name: galaxy_cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_cluster VALUES ('Abell1689', 1, 4);
INSERT INTO public.galaxy_cluster VALUES ('MACS1206', 2, 12);
INSERT INTO public.galaxy_cluster VALUES ('ComaCluster', 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (26, 'Moon', 4, 3474, 384400, false, 'Earth’s natural satellite', 22);
INSERT INTO public.moon VALUES (27, 'Phobos', 4, 22, 9376, false, 'Moon of Mars', 23);
INSERT INTO public.moon VALUES (28, 'Deimos', 4, 12, 23463, false, 'Moon of Mars', 24);
INSERT INTO public.moon VALUES (29, 'Io', 4, 3643, 421700, false, 'Moon of Jupiter', 25);
INSERT INTO public.moon VALUES (30, 'Europa', 4, 3122, 671034, false, 'Ice-covered moon of Jupiter', 24);
INSERT INTO public.moon VALUES (31, 'Ganymede', 4, 5268, 1070400, false, 'Largest moon in the solar system', 25);
INSERT INTO public.moon VALUES (32, 'Callisto', 4, 4821, 1882700, false, 'Heavily cratered Jovian moon', 26);
INSERT INTO public.moon VALUES (33, 'Titan', 4, 5149, 1221870, false, 'Largest moon of Saturn', 27);
INSERT INTO public.moon VALUES (34, 'Enceladus', 4, 504, 238020, false, 'Geologically active icy moon', 28);
INSERT INTO public.moon VALUES (35, 'Mimas', 4, 396, 185540, false, 'Small Saturnian moon', 29);
INSERT INTO public.moon VALUES (36, 'Triton', 4, 2706, 354800, false, 'Neptune’s largest moon', 30);
INSERT INTO public.moon VALUES (37, 'Charon', 4, 1212, 19591, false, 'Moon of Pluto', 31);
INSERT INTO public.moon VALUES (38, 'Ariel', 4, 1157, 190900, false, 'Moon of Uranus', 20);
INSERT INTO public.moon VALUES (39, 'Umbriel', 4, 1169, 266000, false, 'Dark Uranian moon', 21);
INSERT INTO public.moon VALUES (40, 'Titania', 4, 1578, 435840, false, 'Largest moon of Uranus', 22);
INSERT INTO public.moon VALUES (41, 'Oberon', 4, 1523, 583520, false, 'Outer moon of Uranus', 23);
INSERT INTO public.moon VALUES (42, 'Rhea', 4, 1528, 527108, false, 'Second-largest Saturn moon', 24);
INSERT INTO public.moon VALUES (43, 'Dione', 4, 1123, 377396, false, 'Icy Saturnian moon', 25);
INSERT INTO public.moon VALUES (44, 'Tethys', 4, 1062, 294619, false, 'Cratered Saturn moon', 26);
INSERT INTO public.moon VALUES (45, 'Hyperion', 4, 270, 1481000, false, 'Irregular Saturn moon', 27);
INSERT INTO public.moon VALUES (46, 'Iapetus', 4, 1469, 3560820, false, 'Two-toned Saturn moon', 28);
INSERT INTO public.moon VALUES (47, 'Miranda', 4, 471, 129390, false, 'Geologically diverse Uranian moon', 29);
INSERT INTO public.moon VALUES (48, 'Proteus', 4, 420, 117647, false, 'Neptune irregular moon', 30);
INSERT INTO public.moon VALUES (49, 'Nereid', 4, 340, 5513400, false, 'Highly eccentric orbit moon', 31);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (20, 'Mercury', 4, 4879, 91700000, false, 'Smallest planet in Solar System', 1);
INSERT INTO public.planet VALUES (21, 'Venus', 4, 12104, 41400000, false, 'Hot terrestrial planet', 2);
INSERT INTO public.planet VALUES (22, 'Earth', 4, 12742, 0, true, 'Our home planet', 3);
INSERT INTO public.planet VALUES (23, 'Mars', 4, 6779, 78300000, false, 'Red planet', 4);
INSERT INTO public.planet VALUES (24, 'Jupiter', 4, 139820, 628730000, false, 'Gas giant', 5);
INSERT INTO public.planet VALUES (25, 'Saturn', 4, 116460, 127500000, false, 'Ringed gas giant', 6);
INSERT INTO public.planet VALUES (26, 'Uranus', 4, 50724, 272395000, false, 'Ice giant', 1);
INSERT INTO public.planet VALUES (27, 'Neptune', 4, 49244, 435140000, false, 'Farthest major planet', 2);
INSERT INTO public.planet VALUES (28, 'Kepler-22b', 6, 28000, 600000000, false, 'Exoplanet candidate', 3);
INSERT INTO public.planet VALUES (29, 'Proxima b', 5, 12000, 424000000, false, 'Exoplanet in habitable zone', 4);
INSERT INTO public.planet VALUES (30, 'Gliese 581c', 7, 15000, 200000000, false, 'Super-Earth exoplanet', 5);
INSERT INTO public.planet VALUES (31, 'HD 209458 b', 6, 140000, 159000000, false, 'Hot Jupiter exoplanet', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4, 1392000, 0, true, 'Star of the Solar System', 1);
INSERT INTO public.star VALUES (2, 'M31-Star', 5, 2000000, 2537000, false, 'Central star system of Andromeda', 2);
INSERT INTO public.star VALUES (3, 'Triangulum-Star', 6, 1800000, 3000000, false, 'Star in Triangulum Galaxy', 3);
INSERT INTO public.star VALUES (4, 'Sombrero-Star', 7, 2100000, 29000000, false, 'Star in Sombrero Galaxy', 4);
INSERT INTO public.star VALUES (5, 'Whirlpool-Star', 6, 1900000, 23000000, false, 'Star in Whirlpool Galaxy', 5);
INSERT INTO public.star VALUES (6, 'LMC-Star', 5, 1700000, 163000, false, 'Star in Large Magellanic Cloud', 6);


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

