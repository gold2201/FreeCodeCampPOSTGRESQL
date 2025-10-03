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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    guess_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: guess_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guess_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guess_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guess_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guess_guess_id_seq OWNED BY public.users.guess_id;


--
-- Name: users guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN guess_id SET DEFAULT nextval('public.guess_guess_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Dima', 3, 8);
INSERT INTO public.users VALUES (2, '', 0, -1);
INSERT INTO public.users VALUES (4, 'user_1759491001557', 2, 363);
INSERT INTO public.users VALUES (3, 'user_1759491001558', 5, 440);
INSERT INTO public.users VALUES (20, 'user_1759491892489', 2, 7);
INSERT INTO public.users VALUES (36, 'user_1759492348488', 2, 656);
INSERT INTO public.users VALUES (6, 'user_1759491106374', 2, 585);
INSERT INTO public.users VALUES (19, 'user_1759491892490', 5, 59);
INSERT INTO public.users VALUES (5, 'user_1759491106375', 5, 84);
INSERT INTO public.users VALUES (8, 'user_1759491329688', 2, 122);
INSERT INTO public.users VALUES (35, 'user_1759492348489', 5, 14);
INSERT INTO public.users VALUES (22, 'user_1759492029832', 2, 236);
INSERT INTO public.users VALUES (7, 'user_1759491329689', 5, 82);
INSERT INTO public.users VALUES (21, 'user_1759492029833', 5, 73);
INSERT INTO public.users VALUES (10, 'user_1759491452978', 2, 638);
INSERT INTO public.users VALUES (9, 'user_1759491452979', 5, 2);
INSERT INTO public.users VALUES (12, 'user_1759491565069', 2, 868);
INSERT INTO public.users VALUES (24, 'user_1759492039899', 2, 717);
INSERT INTO public.users VALUES (11, 'user_1759491565070', 5, 333);
INSERT INTO public.users VALUES (23, 'user_1759492039900', 5, 41);
INSERT INTO public.users VALUES (14, 'user_1759491765750', 2, 587);
INSERT INTO public.users VALUES (13, 'user_1759491765751', 5, 138);
INSERT INTO public.users VALUES (26, 'user_1759492050666', 2, 134);
INSERT INTO public.users VALUES (16, 'user_1759491810896', 2, 393);
INSERT INTO public.users VALUES (15, 'user_1759491810897', 5, 14);
INSERT INTO public.users VALUES (25, 'user_1759492050667', 5, 73);
INSERT INTO public.users VALUES (18, 'user_1759491825151', 2, 29);
INSERT INTO public.users VALUES (17, 'user_1759491825152', 5, 136);
INSERT INTO public.users VALUES (28, 'user_1759492120823', 2, 814);
INSERT INTO public.users VALUES (27, 'user_1759492120824', 5, 395);
INSERT INTO public.users VALUES (30, 'user_1759492201849', 2, 64);
INSERT INTO public.users VALUES (29, 'user_1759492201850', 5, 89);
INSERT INTO public.users VALUES (32, 'user_1759492228933', 2, 206);
INSERT INTO public.users VALUES (31, 'user_1759492228934', 5, 53);
INSERT INTO public.users VALUES (34, 'user_1759492277070', 2, 168);
INSERT INTO public.users VALUES (33, 'user_1759492277071', 5, 109);


--
-- Name: guess_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guess_guess_id_seq', 36, true);


--
-- Name: users guess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT guess_pkey PRIMARY KEY (guess_id);


--
-- PostgreSQL database dump complete
--

