--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1367, 2018, 'Final', 2147, 2148, 4, 2);
INSERT INTO public.games VALUES (1368, 2018, 'Third Place', 2149, 2150, 2, 0);
INSERT INTO public.games VALUES (1369, 2018, 'Semi-Final', 2148, 2150, 2, 1);
INSERT INTO public.games VALUES (1370, 2018, 'Semi-Final', 2147, 2149, 1, 0);
INSERT INTO public.games VALUES (1371, 2018, 'Quarter-Final', 2148, 2151, 3, 2);
INSERT INTO public.games VALUES (1372, 2018, 'Quarter-Final', 2150, 2152, 2, 0);
INSERT INTO public.games VALUES (1373, 2018, 'Quarter-Final', 2149, 2153, 2, 1);
INSERT INTO public.games VALUES (1374, 2018, 'Quarter-Final', 2147, 2154, 2, 0);
INSERT INTO public.games VALUES (1375, 2018, 'Eighth-Final', 2150, 2155, 2, 1);
INSERT INTO public.games VALUES (1376, 2018, 'Eighth-Final', 2152, 2156, 1, 0);
INSERT INTO public.games VALUES (1377, 2018, 'Eighth-Final', 2149, 2157, 3, 2);
INSERT INTO public.games VALUES (1378, 2018, 'Eighth-Final', 2153, 2158, 2, 0);
INSERT INTO public.games VALUES (1379, 2018, 'Eighth-Final', 2148, 2159, 2, 1);
INSERT INTO public.games VALUES (1380, 2018, 'Eighth-Final', 2151, 2160, 2, 1);
INSERT INTO public.games VALUES (1381, 2018, 'Eighth-Final', 2154, 2161, 2, 1);
INSERT INTO public.games VALUES (1382, 2018, 'Eighth-Final', 2147, 2162, 4, 3);
INSERT INTO public.games VALUES (1383, 2014, 'Final', 2163, 2162, 1, 0);
INSERT INTO public.games VALUES (1384, 2014, 'Third Place', 2164, 2153, 3, 0);
INSERT INTO public.games VALUES (1385, 2014, 'Semi-Final', 2162, 2164, 1, 0);
INSERT INTO public.games VALUES (1386, 2014, 'Semi-Final', 2163, 2153, 7, 1);
INSERT INTO public.games VALUES (1387, 2014, 'Quarter-Final', 2164, 2165, 1, 0);
INSERT INTO public.games VALUES (1388, 2014, 'Quarter-Final', 2162, 2149, 1, 0);
INSERT INTO public.games VALUES (1389, 2014, 'Quarter-Final', 2153, 2155, 2, 1);
INSERT INTO public.games VALUES (1390, 2014, 'Quarter-Final', 2163, 2147, 1, 0);
INSERT INTO public.games VALUES (1391, 2014, 'Eighth-Final', 2153, 2166, 2, 1);
INSERT INTO public.games VALUES (1392, 2014, 'Eighth-Final', 2155, 2154, 2, 0);
INSERT INTO public.games VALUES (1393, 2014, 'Eighth-Final', 2147, 2167, 2, 0);
INSERT INTO public.games VALUES (1394, 2014, 'Eighth-Final', 2163, 2168, 2, 1);
INSERT INTO public.games VALUES (1395, 2014, 'Eighth-Final', 2164, 2158, 2, 1);
INSERT INTO public.games VALUES (1396, 2014, 'Eighth-Final', 2165, 2169, 2, 1);
INSERT INTO public.games VALUES (1397, 2014, 'Eighth-Final', 2162, 2156, 1, 0);
INSERT INTO public.games VALUES (1398, 2014, 'Eighth-Final', 2149, 2170, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (2147, 'France');
INSERT INTO public.teams VALUES (2148, 'Croatia');
INSERT INTO public.teams VALUES (2149, 'Belgium');
INSERT INTO public.teams VALUES (2150, 'England');
INSERT INTO public.teams VALUES (2151, 'Russia');
INSERT INTO public.teams VALUES (2152, 'Sweden');
INSERT INTO public.teams VALUES (2153, 'Brazil');
INSERT INTO public.teams VALUES (2154, 'Uruguay');
INSERT INTO public.teams VALUES (2155, 'Colombia');
INSERT INTO public.teams VALUES (2156, 'Switzerland');
INSERT INTO public.teams VALUES (2157, 'Japan');
INSERT INTO public.teams VALUES (2158, 'Mexico');
INSERT INTO public.teams VALUES (2159, 'Denmark');
INSERT INTO public.teams VALUES (2160, 'Spain');
INSERT INTO public.teams VALUES (2161, 'Portugal');
INSERT INTO public.teams VALUES (2162, 'Argentina');
INSERT INTO public.teams VALUES (2163, 'Germany');
INSERT INTO public.teams VALUES (2164, 'Netherlands');
INSERT INTO public.teams VALUES (2165, 'Costa Rica');
INSERT INTO public.teams VALUES (2166, 'Chile');
INSERT INTO public.teams VALUES (2167, 'Nigeria');
INSERT INTO public.teams VALUES (2168, 'Algeria');
INSERT INTO public.teams VALUES (2169, 'Greece');
INSERT INTO public.teams VALUES (2170, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1398, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1013, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1013, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 2170, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

