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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    score integer,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 10, 1);
INSERT INTO public.games VALUES (3, 2, 1);
INSERT INTO public.games VALUES (4, 1, 1);
INSERT INTO public.games VALUES (5, 1, 1);
INSERT INTO public.games VALUES (6, 502, 91);
INSERT INTO public.games VALUES (7, 496, 91);
INSERT INTO public.games VALUES (8, 304, 92);
INSERT INTO public.games VALUES (9, 883, 92);
INSERT INTO public.games VALUES (10, 867, 91);
INSERT INTO public.games VALUES (11, 995, 91);
INSERT INTO public.games VALUES (12, 376, 91);
INSERT INTO public.games VALUES (13, 2, 93);
INSERT INTO public.games VALUES (14, 280, 93);
INSERT INTO public.games VALUES (15, 38, 94);
INSERT INTO public.games VALUES (16, 784, 94);
INSERT INTO public.games VALUES (17, 900, 93);
INSERT INTO public.games VALUES (18, 795, 93);
INSERT INTO public.games VALUES (19, 723, 93);
INSERT INTO public.games VALUES (20, 902, 95);
INSERT INTO public.games VALUES (21, 200, 95);
INSERT INTO public.games VALUES (22, 584, 96);
INSERT INTO public.games VALUES (23, 613, 96);
INSERT INTO public.games VALUES (24, 104, 95);
INSERT INTO public.games VALUES (25, 843, 95);
INSERT INTO public.games VALUES (26, 966, 95);
INSERT INTO public.games VALUES (27, 71, 97);
INSERT INTO public.games VALUES (28, 949, 97);
INSERT INTO public.games VALUES (29, 745, 98);
INSERT INTO public.games VALUES (30, 77, 98);
INSERT INTO public.games VALUES (31, 660, 97);
INSERT INTO public.games VALUES (32, 736, 97);
INSERT INTO public.games VALUES (33, 724, 97);
INSERT INTO public.games VALUES (34, 226, 99);
INSERT INTO public.games VALUES (35, 946, 99);
INSERT INTO public.games VALUES (36, 611, 100);
INSERT INTO public.games VALUES (37, 487, 100);
INSERT INTO public.games VALUES (38, 194, 99);
INSERT INTO public.games VALUES (39, 108, 99);
INSERT INTO public.games VALUES (40, 820, 99);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user');
INSERT INTO public.users VALUES (2, 'user_1770816779627');
INSERT INTO public.users VALUES (76, 'user_1770819935255');
INSERT INTO public.users VALUES (4, 'user_1770816779626');
INSERT INTO public.users VALUES (78, 'user_1770819935254');
INSERT INTO public.users VALUES (9, 'user_1770816827643');
INSERT INTO public.users VALUES (11, 'user_1770816827642');
INSERT INTO public.users VALUES (83, 'user_1770819955071');
INSERT INTO public.users VALUES (85, 'user_1770819955070');
INSERT INTO public.users VALUES (16, 'user_1770817178893');
INSERT INTO public.users VALUES (18, 'user_1770817178892');
INSERT INTO public.users VALUES (90, 'jose');
INSERT INTO public.users VALUES (23, 'user_1770817222946');
INSERT INTO public.users VALUES (91, 'user_1770820121230');
INSERT INTO public.users VALUES (25, 'user_1770817222945');
INSERT INTO public.users VALUES (92, 'user_1770820121229');
INSERT INTO public.users VALUES (93, 'user_1770820169017');
INSERT INTO public.users VALUES (94, 'user_1770820169016');
INSERT INTO public.users VALUES (95, 'user_1770820361027');
INSERT INTO public.users VALUES (30, 'user_1770817285587');
INSERT INTO public.users VALUES (96, 'user_1770820361026');
INSERT INTO public.users VALUES (32, 'user_1770817285586');
INSERT INTO public.users VALUES (97, 'user_1770820442190');
INSERT INTO public.users VALUES (98, 'user_1770820442189');
INSERT INTO public.users VALUES (99, 'user_1770820501572');
INSERT INTO public.users VALUES (100, 'user_1770820501571');
INSERT INTO public.users VALUES (37, 'USER');
INSERT INTO public.users VALUES (39, 'user_1770819114361');
INSERT INTO public.users VALUES (41, 'user_1770819114360');
INSERT INTO public.users VALUES (46, 'user_1770819148951');
INSERT INTO public.users VALUES (48, 'user_1770819148950');
INSERT INTO public.users VALUES (53, 'user_1770819156578');
INSERT INTO public.users VALUES (55, 'user_1770819156577');
INSERT INTO public.users VALUES (61, 'user_1770819464224');
INSERT INTO public.users VALUES (63, 'user_1770819464223');
INSERT INTO public.users VALUES (69, 'user_1770819919735');
INSERT INTO public.users VALUES (71, 'user_1770819919734');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 40, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 100, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

