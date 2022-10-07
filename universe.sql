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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(20) NOT NULL,
    age integer,
    distance numeric(6,0)
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
    name character varying(30) NOT NULL,
    distance_km integer,
    size_km integer,
    is_livable boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    is_habitable boolean,
    is_unique boolean,
    discoverer character varying(20),
    star_id integer
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
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(20) NOT NULL,
    capacity integer,
    miliage integer
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    distance integer,
    is_dead boolean,
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
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky_way', 'spiral', 13, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 47, 3);
INSERT INTO public.galaxy VALUES (3, 'Antennae_Galaxies', 'spiral', 12, 45);
INSERT INTO public.galaxy VALUES (4, 'Maffei_', 'elliptical', 10, 4);
INSERT INTO public.galaxy VALUES (5, 'Dwarf_galaxy', 'irregular', 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus_A', 'interacting', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 484400, 3500, true, 1);
INSERT INTO public.moon VALUES (2, 'sat13e', 300000, 1040, false, 4);
INSERT INTO public.moon VALUES (3, 'sat34g', 120077, 2304, false, 4);
INSERT INTO public.moon VALUES (4, 'sat656h', 547800, 7600, true, 2);
INSERT INTO public.moon VALUES (5, 'SAT652H', 760807, 7640, false, 2);
INSERT INTO public.moon VALUES (6, 'core1', 430000, 80000, true, 6);
INSERT INTO public.moon VALUES (7, 'core2', 500000, 6700, true, 6);
INSERT INTO public.moon VALUES (8, 'core3', 300000, 7000, false, 6);
INSERT INTO public.moon VALUES (9, 'core4', 600000, 5000, true, 6);
INSERT INTO public.moon VALUES (10, 'Orcus', 986080, 10500, true, 8);
INSERT INTO public.moon VALUES (11, 'Ceres', 875300, 24000, false, 8);
INSERT INTO public.moon VALUES (12, 'Ixion', 23000, 1000, false, 7);
INSERT INTO public.moon VALUES (13, 'Rexioz', 40500, 6500, NULL, 9);
INSERT INTO public.moon VALUES (14, 'Zion43', 65008, 4300, NULL, 11);
INSERT INTO public.moon VALUES (15, 'Salacia', 89000, 11000, true, 11);
INSERT INTO public.moon VALUES (16, 'Senx34', 78080, 4500, false, 11);
INSERT INTO public.moon VALUES (17, 'Xenitz12', 11000, 1000, false, 12);
INSERT INTO public.moon VALUES (18, 'Quaroar', 78000, 8700, true, 9);
INSERT INTO public.moon VALUES (19, 'Varda', 75640, 76400, NULL, 2);
INSERT INTO public.moon VALUES (20, 'Eris9', 88700, 3200, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'J1407b', false, true, 'Jacob', 1);
INSERT INTO public.planet VALUES (3, 'Alpha', false, false, 'Aplha team', 2);
INSERT INTO public.planet VALUES (4, 'Bheta', true, true, 'Babeh', 2);
INSERT INTO public.planet VALUES (5, 'C345C', false, false, NULL, 3);
INSERT INTO public.planet VALUES (6, 'D452c', false, true, 'NASA', 3);
INSERT INTO public.planet VALUES (7, 'Gliese', false, true, 'Gisel', 5);
INSERT INTO public.planet VALUES (8, 'Cancri E', true, true, NULL, 6);
INSERT INTO public.planet VALUES (9, 'Zo14 e3', true, false, 'Zoro', 4);
INSERT INTO public.planet VALUES (10, 'V45V5-E', true, true, 'Vais', 5);
INSERT INTO public.planet VALUES (11, 'Theta', false, false, 'Archimedes', 1);
INSERT INTO public.planet VALUES (12, 'Hd 123a', true, true, 'Canon', 1);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'Interstelar', 5000, 70);
INSERT INTO public.spaceship VALUES (2, 'Jelajah', 7500, 95);
INSERT INTO public.spaceship VALUES (3, 'Nautica', 10000, 120);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 150, false, NULL);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'A3V', 97, false, NULL);
INSERT INTO public.star VALUES (3, 'Theta Centauri', 'K0III', 58, false, NULL);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'M1-2', 548, true, NULL);
INSERT INTO public.star VALUES (5, 'Edifier', 'S10V', 654, false, NULL);
INSERT INTO public.star VALUES (6, 'Reexrei', 'A1A', 76, true, NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key1 UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


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

