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
    name character varying(30) NOT NULL,
    distance_km numeric,
    galaxy_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer,
    fk_star integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    distance_km numeric,
    moon_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    num_sun integer,
    age integer,
    fk_moon integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    distance_km numeric,
    planet_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer,
    fk_planet integer,
    fk_moon integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    distance_km numeric,
    star_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    num_sum integer,
    age integer,
    fk_star integer,
    fk_planet integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30) NOT NULL,
    distance_km numeric,
    sun_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sun integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('gal1', 1000, 1, true, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal2', 1000, 2, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal3', 1000, 3, false, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal4', 1000, 4, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal5', 1000, 5, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('gal6', 1000, 6, true, true, 1000, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moo1', 1000, 1, true, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo2', 1000, 2, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo3', 1000, 3, false, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo4', 1000, 4, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo5', 1000, 5, true, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo6', 1000, 6, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo7', 1000, 7, false, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo8', 1000, 8, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo9', 1000, 9, true, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo10', 1000, 10, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo11', 1000, 11, false, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo12', 1000, 12, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo13', 1000, 13, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo14', 1000, 14, true, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo15', 1000, 15, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo16', 1000, 16, false, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo17', 1000, 17, false, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo18', 1000, 18, true, true, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo19', 1000, 19, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo20', 1000, 20, false, false, 1000, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('pla1', 1000, 1, false, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla2', 1000, 2, true, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla3', 1000, 3, true, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla4', 1000, 4, false, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla5', 1000, 5, true, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla6', 1000, 6, true, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla7', 1000, 7, false, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla8', 1000, 8, false, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla9', 1000, 9, true, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla10', 1000, 10, false, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla11', 1000, 11, false, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pla12', 1000, 12, true, true, 1000, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sta1', 1000, 1, true, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sta2', 1000, 2, true, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sta3', 1000, 3, false, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sta4', 1000, 4, true, false, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sta5', 1000, 5, true, true, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('sta6', 1000, 6, false, false, 1000, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('sun1', 1000, 1, false, true, 1000, NULL, NULL, NULL);
INSERT INTO public.sun VALUES ('sun2', 1000, 2, false, false, 1000, NULL, NULL, NULL);
INSERT INTO public.sun VALUES ('sun3', 1000, 3, false, false, 1000, NULL, NULL, NULL);


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
-- Name: moon moon_fk_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_moon_key UNIQUE (fk_moon);


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
-- Name: planet planet_fk_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk_planet_key UNIQUE (fk_planet);


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
-- Name: star star_fk_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_star_key UNIQUE (fk_star);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_fk_moon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_moon_fkey FOREIGN KEY (fk_moon) REFERENCES public.moon(fk_moon);


--
-- Name: planet planet_fk_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk_planet_fkey FOREIGN KEY (fk_planet) REFERENCES public.planet(fk_planet);


--
-- Name: star star_fk_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_star_fkey FOREIGN KEY (fk_star) REFERENCES public.star(fk_star);


--
-- PostgreSQL database dump complete
--

