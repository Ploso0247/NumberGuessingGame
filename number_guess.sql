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

DROP DATABASE game;
--
-- Name: game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE game OWNER TO freecodecamp;

\connect game

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
    username character varying(25) NOT NULL,
    numgames integer,
    bestgame integer,
    id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1689045331710', 1, 0, 35);
INSERT INTO public.users VALUES ('user_1689045331711', 4, 0, 34);
INSERT INTO public.users VALUES ('D', 0, 0, 36);
INSERT INTO public.users VALUES ('user_1689045403959', 1, 0, 38);
INSERT INTO public.users VALUES ('user_1689045403960', 4, 0, 37);
INSERT INTO public.users VALUES ('user_1689045421454', 1, 0, 40);
INSERT INTO public.users VALUES ('user_1689046005560', 2, 504, 59);
INSERT INTO public.users VALUES ('user_1689046105415', 2, 504, 73);
INSERT INTO public.users VALUES ('user_1689045421455', 4, 0, 39);
INSERT INTO public.users VALUES ('Jake', 0, 0, 41);
INSERT INTO public.users VALUES ('user_1689044969137', 0, 0, 22);
INSERT INTO public.users VALUES ('user_1689044969136', 0, 0, 23);
INSERT INTO public.users VALUES ('user_1689044976849', 0, 0, 24);
INSERT INTO public.users VALUES ('user_1689044976848', 0, 0, 25);
INSERT INTO public.users VALUES ('Tim', 1, 0, 42);
INSERT INTO public.users VALUES ('user_1689045006092', 1, 719, 27);
INSERT INTO public.users VALUES ('user_1689045006093', 4, 944, 26);
INSERT INTO public.users VALUES ('user_1689046005561', 5, 185, 58);
INSERT INTO public.users VALUES ('user_1689045667847', 2, 0, 44);
INSERT INTO public.users VALUES ('user_1689045667848', 5, 0, 43);
INSERT INTO public.users VALUES ('user_1689045770560', 0, 0, 45);
INSERT INTO public.users VALUES ('user_1689045770559', 0, 0, 46);
INSERT INTO public.users VALUES ('Bob', 9, 11, 21);
INSERT INTO public.users VALUES ('user_1689045779712', 0, 0, 47);
INSERT INTO public.users VALUES ('user_1689045150656', 1, 0, 29);
INSERT INTO public.users VALUES ('user_1689045779711', 0, 0, 48);
INSERT INTO public.users VALUES ('user_1689045150657', 4, 0, 28);
INSERT INTO public.users VALUES ('user_1689045230466', 1, 0, 31);
INSERT INTO public.users VALUES ('user_1689046105416', 5, 84, 72);
INSERT INTO public.users VALUES ('user_1689045230467', 4, 0, 30);
INSERT INTO public.users VALUES ('user_1689045267912', 1, 0, 33);
INSERT INTO public.users VALUES ('user_1689045267913', 4, 0, 32);
INSERT INTO public.users VALUES ('user_1689045786780', 2, 314, 50);
INSERT INTO public.users VALUES ('user_1689046022736', 2, 462, 61);
INSERT INTO public.users VALUES ('user_1689045786781', 4, 144, 49);
INSERT INTO public.users VALUES ('user_1689046022737', 5, 87, 60);
INSERT INTO public.users VALUES ('user_1689045803957', 1, 373, 52);
INSERT INTO public.users VALUES ('user_1689045803958', 5, 138, 51);
INSERT INTO public.users VALUES ('Timmy', 0, 0, 53);
INSERT INTO public.users VALUES ('user_1689046122822', 2, 488, 75);
INSERT INTO public.users VALUES ('user_1689045915522', 2, 278, 55);
INSERT INTO public.users VALUES ('user_1689046035990', 2, 487, 63);
INSERT INTO public.users VALUES ('user_1689046122823', 5, 307, 74);
INSERT INTO public.users VALUES ('user_1689045915523', 4, 25, 54);
INSERT INTO public.users VALUES ('user_1689046035991', 5, 269, 62);
INSERT INTO public.users VALUES ('user_1689045976262', 2, 248, 57);
INSERT INTO public.users VALUES ('user_1689046050288', 2, 69, 65);
INSERT INTO public.users VALUES ('user_1689045976263', 5, 235, 56);
INSERT INTO public.users VALUES ('user_1689046050289', 4, 103, 64);
INSERT INTO public.users VALUES ('user_1689046129926', 2, 111, 77);
INSERT INTO public.users VALUES ('user_1689046129927', 5, 140, 76);
INSERT INTO public.users VALUES ('user_1689046071144', 2, 706, 67);
INSERT INTO public.users VALUES ('user_1689046071145', 5, 169, 66);
INSERT INTO public.users VALUES ('user_1689046082187', 2, 34, 69);
INSERT INTO public.users VALUES ('user_1689046140185', 2, 243, 79);
INSERT INTO public.users VALUES ('user_1689046082188', 5, 181, 68);
INSERT INTO public.users VALUES ('user_1689046140186', 5, 35, 78);
INSERT INTO public.users VALUES ('user_1689046091327', 2, 347, 71);
INSERT INTO public.users VALUES ('user_1689046091328', 5, 195, 70);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 79, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

