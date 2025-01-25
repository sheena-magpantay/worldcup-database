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
    round character varying(255) NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
    name character varying(255) NOT NULL
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
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 158, 157, 2, 4);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 160, 159, 0, 2);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 160, 158, 1, 2);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 159, 157, 0, 1);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 161, 158, 2, 3);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 162, 160, 0, 2);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 163, 159, 1, 2);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 164, 157, 0, 2);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 165, 160, 1, 2);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 166, 162, 0, 1);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 167, 159, 2, 3);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 168, 163, 0, 2);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 169, 158, 1, 2);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 170, 161, 1, 2);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 171, 164, 1, 2);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 172, 157, 3, 4);
INSERT INTO public.games VALUES (49, 2014, 'Final', 172, 173, 0, 1);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 163, 174, 0, 3);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 174, 172, 0, 1);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 163, 173, 1, 7);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 175, 174, 0, 1);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 159, 172, 0, 1);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 165, 163, 1, 2);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 157, 173, 0, 1);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 176, 163, 1, 2);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 164, 165, 0, 2);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 177, 157, 0, 2);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 178, 173, 1, 2);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 168, 174, 1, 2);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 179, 175, 1, 2);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 166, 172, 0, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 180, 159, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (157, 'France');
INSERT INTO public.teams VALUES (158, 'Croatia');
INSERT INTO public.teams VALUES (159, 'Belgium');
INSERT INTO public.teams VALUES (160, 'England');
INSERT INTO public.teams VALUES (161, 'Russia');
INSERT INTO public.teams VALUES (162, 'Sweden');
INSERT INTO public.teams VALUES (163, 'Brazil');
INSERT INTO public.teams VALUES (164, 'Uruguay');
INSERT INTO public.teams VALUES (165, 'Colombia');
INSERT INTO public.teams VALUES (166, 'Switzerland');
INSERT INTO public.teams VALUES (167, 'Japan');
INSERT INTO public.teams VALUES (168, 'Mexico');
INSERT INTO public.teams VALUES (169, 'Denmark');
INSERT INTO public.teams VALUES (170, 'Spain');
INSERT INTO public.teams VALUES (171, 'Portugal');
INSERT INTO public.teams VALUES (172, 'Argentina');
INSERT INTO public.teams VALUES (173, 'Germany');
INSERT INTO public.teams VALUES (174, 'Netherlands');
INSERT INTO public.teams VALUES (175, 'Costa Rica');
INSERT INTO public.teams VALUES (176, 'Chile');
INSERT INTO public.teams VALUES (177, 'Nigeria');
INSERT INTO public.teams VALUES (178, 'Algeria');
INSERT INTO public.teams VALUES (179, 'Greece');
INSERT INTO public.teams VALUES (180, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 180, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

