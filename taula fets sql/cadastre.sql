--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5beta2
-- Dumped by pg_dump version 9.5beta2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cadastre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cadastre (
    ano integer NOT NULL,
    ciutat text NOT NULL
);


ALTER TABLE cadastre OWNER TO postgres;

--
-- Name: dim_Data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "dim_Data" (
    "id_Data" integer NOT NULL,
    "id_Any" integer,
    "id_Mes" integer,
    "id_Dia" integer,
    "descAny" text,
    "descMes" text,
    "descDia" text
);


ALTER TABLE "dim_Data" OWNER TO postgres;

--
-- Name: dim_Sol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "dim_Sol" (
    "id_Sol" integer NOT NULL,
    "descSol" text,
    "id_TipusSol" integer,
    "descTipusSol" text
);


ALTER TABLE "dim_Sol" OWNER TO postgres;

--
-- Name: dim_Subtipusimoble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "dim_Subtipusimoble" (
    "id_TipusInmoble" integer NOT NULL,
    "descTipusInmoble" text,
    "id_SubInmoble" integer,
    "descSubInmoble" text
);


ALTER TABLE "dim_Subtipusimoble" OWNER TO postgres;

--
-- Name: dim_TipusSol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "dim_TipusSol" (
    "id_TipusSol" integer NOT NULL,
    "descTipusSol" text
);


ALTER TABLE "dim_TipusSol" OWNER TO postgres;

--
-- Name: dim_Us; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "dim_Us" (
    "id_Us" integer NOT NULL,
    "descUs" text
);


ALTER TABLE "dim_Us" OWNER TO postgres;

--
-- Name: dim_fisica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dim_fisica (
    "id_PersonaFisica" integer NOT NULL,
    descripcio text
);


ALTER TABLE dim_fisica OWNER TO postgres;

--
-- Name: dim_juridica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dim_juridica (
    "id_personaJuridica" integer NOT NULL,
    descripcio text
);


ALTER TABLE dim_juridica OWNER TO postgres;

--
-- Name: inmobleEstrella; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "inmobleEstrella" (
    "id_Sol" integer,
    "id_PersonaFisica" integer,
    "id_Personajuridica" integer,
    "id_TipusInmoble" integer,
    "id_SubInmoble" integer,
    "superficieTotal" integer
);


ALTER TABLE "inmobleEstrella" OWNER TO postgres;

--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persona (
    nom text NOT NULL,
    telefon integer,
    direccio character varying(30)
);


ALTER TABLE persona OWNER TO postgres;

--
-- Name: solEstrella; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "solEstrella" (
    "id_TipusSol" integer,
    "id_PersonaFisica" integer,
    "id_PersonaJuridica" integer,
    "id_Us" integer,
    "superficieSol" integer,
    "id_solEstrella" integer NOT NULL,
    "id_Data" integer
);


ALTER TABLE "solEstrella" OWNER TO postgres;

--
-- Name: subtipus_inmoble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE subtipus_inmoble (
    id_subtipus integer NOT NULL,
    descripcio character varying(30),
    nom text NOT NULL
);


ALTER TABLE subtipus_inmoble OWNER TO postgres;

--
-- Name: tipus_inmoble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipus_inmoble (
    id_subtipus integer NOT NULL,
    nom text NOT NULL,
    descripcio character varying(30)
);


ALTER TABLE tipus_inmoble OWNER TO postgres;

--
-- Name: tipus_sol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipus_sol (
    id_tipusol integer NOT NULL,
    nom text NOT NULL,
    descripcio character varying(30)
);


ALTER TABLE tipus_sol OWNER TO postgres;

--
-- Name: us; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE us (
    id_us integer NOT NULL,
    nom text NOT NULL,
    descripcio character varying(30)
);


ALTER TABLE us OWNER TO postgres;

--
-- Data for Name: cadastre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cadastre (ano, ciutat) FROM stdin;
\.


--
-- Data for Name: dim_Data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "dim_Data" ("id_Data", "id_Any", "id_Mes", "id_Dia", "descAny", "descMes", "descDia") FROM stdin;
2	1990	2	2	1990	02	02
1	1990	1	1	1990	01	01
\.


--
-- Data for Name: dim_Sol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "dim_Sol" ("id_Sol", "descSol", "id_TipusSol", "descTipusSol") FROM stdin;
1	un suelo plano	11	suelo para mercadooonaa
2	suelo para cines	22	suelo cinesa diagonal
3	futura pisicina	33	suelo impermeable
\.


--
-- Data for Name: dim_Subtipusimoble; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "dim_Subtipusimoble" ("id_TipusInmoble", "descTipusInmoble", "id_SubInmoble", "descSubInmoble") FROM stdin;
2	inmoble feo	22	mansion
3	inmoble en construccion	33	torre
1	inmoble guay	4	chalet
\.


--
-- Data for Name: dim_TipusSol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "dim_TipusSol" ("id_TipusSol", "descTipusSol") FROM stdin;
1	un sol en construcció
2	un sol amb problemes
\.


--
-- Data for Name: dim_Us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "dim_Us" ("id_Us", "descUs") FROM stdin;
1	us comercial
2	us privat
\.


--
-- Data for Name: dim_fisica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dim_fisica ("id_PersonaFisica", descripcio) FROM stdin;
1	dueño rico
2	dueño pobre
3	dueño multimillonario
4	dueño rico rico
\.


--
-- Data for Name: dim_juridica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dim_juridica ("id_personaJuridica", descripcio) FROM stdin;
1	empresa s.l.
2	empresa s.a.
3	empresa multinacional
\.


--
-- Data for Name: inmobleEstrella; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "inmobleEstrella" ("id_Sol", "id_PersonaFisica", "id_Personajuridica", "id_TipusInmoble", "id_SubInmoble", "superficieTotal") FROM stdin;
1	1	1	1	4	25
2	2	2	2	22	33
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persona (nom, telefon, direccio) FROM stdin;
\.


--
-- Data for Name: solEstrella; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "solEstrella" ("id_TipusSol", "id_PersonaFisica", "id_PersonaJuridica", "id_Us", "superficieSol", "id_solEstrella", "id_Data") FROM stdin;
1	1	1	1	10	1	1
\.


--
-- Data for Name: subtipus_inmoble; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subtipus_inmoble (id_subtipus, descripcio, nom) FROM stdin;
\.


--
-- Data for Name: tipus_inmoble; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipus_inmoble (id_subtipus, nom, descripcio) FROM stdin;
\.


--
-- Data for Name: tipus_sol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipus_sol (id_tipusol, nom, descripcio) FROM stdin;
\.


--
-- Data for Name: us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY us (id_us, nom, descripcio) FROM stdin;
\.


--
-- Name: ano; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cadastre
    ADD CONSTRAINT ano PRIMARY KEY (ano);


--
-- Name: idSol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "solEstrella"
    ADD CONSTRAINT "idSol" PRIMARY KEY ("id_solEstrella");


--
-- Name: id_Data; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "dim_Data"
    ADD CONSTRAINT "id_Data" PRIMARY KEY ("id_Data");


--
-- Name: id_Sol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "dim_Sol"
    ADD CONSTRAINT "id_Sol" PRIMARY KEY ("id_Sol");


--
-- Name: id_TipusInmoble; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "dim_Subtipusimoble"
    ADD CONSTRAINT "id_TipusInmoble" PRIMARY KEY ("id_TipusInmoble");


--
-- Name: id_TipusSol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "dim_TipusSol"
    ADD CONSTRAINT "id_TipusSol" PRIMARY KEY ("id_TipusSol");


--
-- Name: id_Us; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "dim_Us"
    ADD CONSTRAINT "id_Us" PRIMARY KEY ("id_Us");


--
-- Name: id_personaFisica; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dim_fisica
    ADD CONSTRAINT "id_personaFisica" PRIMARY KEY ("id_PersonaFisica");


--
-- Name: id_personaJuridica; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dim_juridica
    ADD CONSTRAINT "id_personaJuridica" PRIMARY KEY ("id_personaJuridica");


--
-- Name: nom; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT nom PRIMARY KEY (nom);


--
-- Name: subtipus_inmoble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subtipus_inmoble
    ADD CONSTRAINT subtipus_inmoble_pkey PRIMARY KEY (id_subtipus);


--
-- Name: tipus_inmoble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipus_inmoble
    ADD CONSTRAINT tipus_inmoble_pkey PRIMARY KEY (id_subtipus);


--
-- Name: tipus_sol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipus_sol
    ADD CONSTRAINT tipus_sol_pkey PRIMARY KEY (id_tipusol);


--
-- Name: us_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY us
    ADD CONSTRAINT us_pkey PRIMARY KEY (id_us);


--
-- Name: id_Data; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "solEstrella"
    ADD CONSTRAINT "id_Data" FOREIGN KEY ("id_Data") REFERENCES "dim_Data"("id_Data");


--
-- Name: id_PersonaFisica; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "inmobleEstrella"
    ADD CONSTRAINT "id_PersonaFisica" FOREIGN KEY ("id_PersonaFisica") REFERENCES dim_fisica("id_PersonaFisica");


--
-- Name: id_PersonaFisica; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "solEstrella"
    ADD CONSTRAINT "id_PersonaFisica" FOREIGN KEY ("id_PersonaFisica") REFERENCES dim_fisica("id_PersonaFisica");


--
-- Name: id_PersonaJuridica; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "solEstrella"
    ADD CONSTRAINT "id_PersonaJuridica" FOREIGN KEY ("id_PersonaJuridica") REFERENCES dim_juridica("id_personaJuridica");


--
-- Name: id_Personajuridica; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "inmobleEstrella"
    ADD CONSTRAINT "id_Personajuridica" FOREIGN KEY ("id_Personajuridica") REFERENCES dim_juridica("id_personaJuridica");


--
-- Name: id_Sol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "inmobleEstrella"
    ADD CONSTRAINT "id_Sol" FOREIGN KEY ("id_Sol") REFERENCES "dim_Sol"("id_Sol");


--
-- Name: id_TipusInmoble; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "inmobleEstrella"
    ADD CONSTRAINT "id_TipusInmoble" FOREIGN KEY ("id_TipusInmoble") REFERENCES "dim_Subtipusimoble"("id_TipusInmoble");


--
-- Name: id_TipusSol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "solEstrella"
    ADD CONSTRAINT "id_TipusSol" FOREIGN KEY ("id_TipusSol") REFERENCES "dim_TipusSol"("id_TipusSol");


--
-- Name: id_Us; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "solEstrella"
    ADD CONSTRAINT "id_Us" FOREIGN KEY ("id_Us") REFERENCES "dim_Us"("id_Us");


--
-- Name: tipus_inmoble_id_subtipus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipus_inmoble
    ADD CONSTRAINT tipus_inmoble_id_subtipus_fkey FOREIGN KEY (id_subtipus) REFERENCES subtipus_inmoble(id_subtipus);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

