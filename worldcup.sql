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
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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

INSERT INTO public.games VALUES (417, 2018, 'Final', 2, 4, 841, 842);
INSERT INTO public.games VALUES (418, 2018, 'Third Place', 0, 2, 843, 844);
INSERT INTO public.games VALUES (419, 2018, 'Semi-Final', 1, 2, 842, 844);
INSERT INTO public.games VALUES (420, 2018, 'Semi-Final', 0, 1, 841, 843);
INSERT INTO public.games VALUES (421, 2018, 'Quarter-Final', 2, 3, 842, 845);
INSERT INTO public.games VALUES (422, 2018, 'Quarter-Final', 0, 2, 844, 846);
INSERT INTO public.games VALUES (423, 2018, 'Quarter-Final', 1, 2, 843, 847);
INSERT INTO public.games VALUES (424, 2018, 'Quarter-Final', 0, 2, 841, 848);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 1, 2, 844, 849);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 0, 1, 846, 850);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 2, 3, 843, 851);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 0, 2, 847, 852);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 1, 2, 842, 853);
INSERT INTO public.games VALUES (430, 2018, 'Eighth-Final', 1, 2, 845, 854);
INSERT INTO public.games VALUES (431, 2018, 'Eighth-Final', 1, 2, 848, 855);
INSERT INTO public.games VALUES (432, 2018, 'Eighth-Final', 3, 4, 841, 856);
INSERT INTO public.games VALUES (433, 2014, 'Final', 0, 1, 857, 856);
INSERT INTO public.games VALUES (434, 2014, 'Third Place', 0, 3, 858, 847);
INSERT INTO public.games VALUES (435, 2014, 'Semi-Final', 0, 1, 856, 858);
INSERT INTO public.games VALUES (436, 2014, 'Semi-Final', 1, 7, 857, 847);
INSERT INTO public.games VALUES (437, 2014, 'Quarter-Final', 0, 1, 858, 859);
INSERT INTO public.games VALUES (438, 2014, 'Quarter-Final', 0, 1, 856, 843);
INSERT INTO public.games VALUES (439, 2014, 'Quarter-Final', 1, 2, 847, 849);
INSERT INTO public.games VALUES (440, 2014, 'Quarter-Final', 0, 1, 857, 841);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 1, 2, 847, 860);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 0, 2, 849, 848);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 0, 2, 841, 861);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 1, 2, 857, 862);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 1, 2, 858, 852);
INSERT INTO public.games VALUES (446, 2014, 'Eighth-Final', 1, 2, 859, 863);
INSERT INTO public.games VALUES (447, 2014, 'Eighth-Final', 0, 1, 856, 850);
INSERT INTO public.games VALUES (448, 2014, 'Eighth-Final', 1, 2, 843, 864);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (841, 'France');
INSERT INTO public.teams VALUES (842, 'Croatia');
INSERT INTO public.teams VALUES (843, 'Belgium');
INSERT INTO public.teams VALUES (844, 'England');
INSERT INTO public.teams VALUES (845, 'Russia');
INSERT INTO public.teams VALUES (846, 'Sweden');
INSERT INTO public.teams VALUES (847, 'Brazil');
INSERT INTO public.teams VALUES (848, 'Uruguay');
INSERT INTO public.teams VALUES (849, 'Colombia');
INSERT INTO public.teams VALUES (850, 'Switzerland');
INSERT INTO public.teams VALUES (851, 'Japan');
INSERT INTO public.teams VALUES (852, 'Mexico');
INSERT INTO public.teams VALUES (853, 'Denmark');
INSERT INTO public.teams VALUES (854, 'Spain');
INSERT INTO public.teams VALUES (855, 'Portugal');
INSERT INTO public.teams VALUES (856, 'Argentina');
INSERT INTO public.teams VALUES (857, 'Germany');
INSERT INTO public.teams VALUES (858, 'Netherlands');
INSERT INTO public.teams VALUES (859, 'Costa Rica');
INSERT INTO public.teams VALUES (860, 'Chile');
INSERT INTO public.teams VALUES (861, 'Nigeria');
INSERT INTO public.teams VALUES (862, 'Algeria');
INSERT INTO public.teams VALUES (863, 'Greece');
INSERT INTO public.teams VALUES (864, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 448, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 864, true);


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
-- Name: games opponent_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

