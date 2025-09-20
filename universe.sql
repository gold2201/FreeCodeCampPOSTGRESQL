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
    name character varying(255) NOT NULL,
    mass numeric NOT NULL,
    diameter integer,
    is_spiral boolean DEFAULT false,
    has_black_hole boolean DEFAULT false
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
    name character varying(255) NOT NULL,
    diameter integer NOT NULL,
    mass numeric,
    planet_id integer NOT NULL,
    is_habitable boolean DEFAULT false,
    has_atmosphere boolean DEFAULT false
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    mass numeric,
    is_visible boolean DEFAULT true,
    secret_word text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius integer NOT NULL,
    mass numeric,
    orbital_period numeric,
    star_id integer NOT NULL,
    has_life boolean DEFAULT false,
    has_rings boolean DEFAULT false
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
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    mass numeric,
    temperature numeric,
    galaxy_id integer NOT NULL,
    has_planets boolean DEFAULT true,
    is_main_sequence boolean DEFAULT true
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
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1500000000000, 100000, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1200000000000, 110000, true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 500000000000, 60000, true, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 800000000000, 76000, true, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 850000000000, 49000, false, true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 1000000000000, 150000, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 0.0123, 3, false, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 0.00001, 4, false, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 0.000002, 4, false, false);
INSERT INTO public.moon VALUES (4, 'Io', 3643, 0.089, 5, false, false);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 0.048, 5, false, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, 0.148, 5, false, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 0.107, 5, false, false);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 0.134, 6, false, true);
INSERT INTO public.moon VALUES (9, 'Rhea', 1528, 0.023, 6, false, false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1490, 0.022, 6, false, false);
INSERT INTO public.moon VALUES (11, 'Dione', 1123, 0.011, 6, false, false);
INSERT INTO public.moon VALUES (12, 'Tethys', 1062, 0.007, 6, false, false);
INSERT INTO public.moon VALUES (13, 'Proxima Moon 1', 3000, 0.010, 7, false, false);
INSERT INTO public.moon VALUES (14, 'Proxima Moon 2', 3200, 0.012, 7, false, false);
INSERT INTO public.moon VALUES (15, 'Alpha Moon 1', 3500, 0.020, 8, false, false);
INSERT INTO public.moon VALUES (16, 'Alpha Moon 2', 3600, 0.025, 8, false, false);
INSERT INTO public.moon VALUES (17, 'Sirius Moon 1', 4000, 0.030, 9, false, false);
INSERT INTO public.moon VALUES (18, 'Sirius Moon 2', 4200, 0.035, 10, false, false);
INSERT INTO public.moon VALUES (19, 'Vega Moon 1', 4500, 0.040, 11, false, false);
INSERT INTO public.moon VALUES (20, 'Betelgeuse Moon 1', 5000, 0.050, 12, false, false);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Orion', 24, 200, true, NULL);
INSERT INTO public.nebula VALUES (2, 'Crab', 11, 100, true, NULL);
INSERT INTO public.nebula VALUES (3, 'Ring', 20, 150, false, NULL);
INSERT INTO public.nebula VALUES (4, 'Helix', 25, 180, true, NULL);
INSERT INTO public.nebula VALUES (5, 'Eagle', 30, 210, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2440, 0.055, 88, 1, false, false);
INSERT INTO public.planet VALUES (2, 'Venus', 6052, 0.815, 225, 1, false, false);
INSERT INTO public.planet VALUES (3, 'Earth', 6371, 1, 365, 1, true, false);
INSERT INTO public.planet VALUES (4, 'Mars', 3389, 0.107, 687, 1, false, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 317.8, 4333, 1, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 95.2, 10759, 1, false, true);
INSERT INTO public.planet VALUES (7, 'Proxima b', 7150, 1.27, 11.2, 2, false, false);
INSERT INTO public.planet VALUES (8, 'Alpha Cen Bb', 6370, 1.1, 20, 2, false, false);
INSERT INTO public.planet VALUES (9, 'Sirius c1', 11000, 2.0, 400, 3, false, true);
INSERT INTO public.planet VALUES (10, 'Sirius c2', 12000, 2.2, 450, 3, false, true);
INSERT INTO public.planet VALUES (11, 'Vega I', 13000, 2.5, 500, 4, false, true);
INSERT INTO public.planet VALUES (12, 'Betelgeuse I', 15000, 5, 4.3, 5, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 109, 1.0, 5778, 1, true, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 120, 1.1, 5790, 2, true, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 85, 0.9, 5260, 2, true, true);
INSERT INTO public.star VALUES (4, 'Sirius A', 120, 2.0, 9940, 3, true, true);
INSERT INTO public.star VALUES (5, 'Vega', 150, 2.1, 9600, 4, true, true);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 887, 20, 3500, 5, true, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

