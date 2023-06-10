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
-- Name: exemplo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exemplo (
);


ALTER TABLE public.exemplo OWNER TO freecodecamp;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner character varying NOT NULL,
    opponent character varying NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: exemplo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (411, 2018, 'Final', 'France', 'Croatia', 146, 147, 4, 2);
INSERT INTO public.games VALUES (412, 2018, 'Third Place', 'Belgium', 'England', 148, 149, 2, 0);
INSERT INTO public.games VALUES (413, 2018, 'Semi-Final', 'Croatia', 'England', 147, 149, 2, 1);
INSERT INTO public.games VALUES (414, 2018, 'Semi-Final', 'France', 'Belgium', 146, 148, 1, 0);
INSERT INTO public.games VALUES (415, 2018, 'Quarter-Final', 'Croatia', 'Russia', 147, 150, 3, 2);
INSERT INTO public.games VALUES (416, 2018, 'Quarter-Final', 'England', 'Sweden', 149, 151, 2, 0);
INSERT INTO public.games VALUES (417, 2018, 'Quarter-Final', 'Belgium', 'Brazil', 148, 152, 2, 1);
INSERT INTO public.games VALUES (418, 2018, 'Quarter-Final', 'France', 'Uruguay', 146, 153, 2, 0);
INSERT INTO public.games VALUES (419, 2018, 'Eighth-Final', 'England', 'Colombia', 149, 154, 2, 1);
INSERT INTO public.games VALUES (420, 2018, 'Eighth-Final', 'Sweden', 'Switzerland', 151, 155, 1, 0);
INSERT INTO public.games VALUES (421, 2018, 'Eighth-Final', 'Belgium', 'Japan', 148, 156, 3, 2);
INSERT INTO public.games VALUES (422, 2018, 'Eighth-Final', 'Brazil', 'Mexico', 152, 157, 2, 0);
INSERT INTO public.games VALUES (423, 2018, 'Eighth-Final', 'Croatia', 'Denmark', 147, 158, 2, 1);
INSERT INTO public.games VALUES (424, 2018, 'Eighth-Final', 'Russia', 'Spain', 150, 159, 2, 1);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 'Uruguay', 'Portugal', 153, 160, 2, 1);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 'France', 'Argentina', 146, 161, 4, 3);
INSERT INTO public.games VALUES (427, 2014, 'Final', 'Germany', 'Argentina', 162, 161, 1, 0);
INSERT INTO public.games VALUES (428, 2014, 'Third Place', 'Netherlands', 'Brazil', 163, 152, 3, 0);
INSERT INTO public.games VALUES (429, 2014, 'Semi-Final', 'Argentina', 'Netherlands', 161, 163, 1, 0);
INSERT INTO public.games VALUES (430, 2014, 'Semi-Final', 'Germany', 'Brazil', 162, 152, 7, 1);
INSERT INTO public.games VALUES (431, 2014, 'Quarter-Final', 'Netherlands', 'Costa Rica', 163, 164, 1, 0);
INSERT INTO public.games VALUES (432, 2014, 'Quarter-Final', 'Argentina', 'Belgium', 161, 148, 1, 0);
INSERT INTO public.games VALUES (433, 2014, 'Quarter-Final', 'Brazil', 'Colombia', 152, 154, 2, 1);
INSERT INTO public.games VALUES (434, 2014, 'Quarter-Final', 'Germany', 'France', 162, 146, 1, 0);
INSERT INTO public.games VALUES (435, 2014, 'Eighth-Final', 'Brazil', 'Chile', 152, 165, 2, 1);
INSERT INTO public.games VALUES (436, 2014, 'Eighth-Final', 'Colombia', 'Uruguay', 154, 153, 2, 0);
INSERT INTO public.games VALUES (437, 2014, 'Eighth-Final', 'France', 'Nigeria', 146, 166, 2, 0);
INSERT INTO public.games VALUES (438, 2014, 'Eighth-Final', 'Germany', 'Algeria', 162, 167, 2, 1);
INSERT INTO public.games VALUES (439, 2014, 'Eighth-Final', 'Netherlands', 'Mexico', 163, 157, 2, 1);
INSERT INTO public.games VALUES (440, 2014, 'Eighth-Final', 'Costa Rica', 'Greece', 164, 168, 2, 1);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 'Argentina', 'Switzerland', 161, 155, 1, 0);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 'Belgium', 'United States', 148, 169, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (146, 'France');
INSERT INTO public.teams VALUES (147, 'Croatia');
INSERT INTO public.teams VALUES (148, 'Belgium');
INSERT INTO public.teams VALUES (149, 'England');
INSERT INTO public.teams VALUES (150, 'Russia');
INSERT INTO public.teams VALUES (151, 'Sweden');
INSERT INTO public.teams VALUES (152, 'Brazil');
INSERT INTO public.teams VALUES (153, 'Uruguay');
INSERT INTO public.teams VALUES (154, 'Colombia');
INSERT INTO public.teams VALUES (155, 'Switzerland');
INSERT INTO public.teams VALUES (156, 'Japan');
INSERT INTO public.teams VALUES (157, 'Mexico');
INSERT INTO public.teams VALUES (158, 'Denmark');
INSERT INTO public.teams VALUES (159, 'Spain');
INSERT INTO public.teams VALUES (160, 'Portugal');
INSERT INTO public.teams VALUES (161, 'Argentina');
INSERT INTO public.teams VALUES (162, 'Germany');
INSERT INTO public.teams VALUES (163, 'Netherlands');
INSERT INTO public.teams VALUES (164, 'Costa Rica');
INSERT INTO public.teams VALUES (165, 'Chile');
INSERT INTO public.teams VALUES (166, 'Nigeria');
INSERT INTO public.teams VALUES (167, 'Algeria');
INSERT INTO public.teams VALUES (168, 'Greece');
INSERT INTO public.teams VALUES (169, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 474, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 169, true);


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

