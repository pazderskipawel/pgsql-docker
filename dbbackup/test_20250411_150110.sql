--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: test_table; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.test_table (
    test_column integer NOT NULL
);


ALTER TABLE public.test_table OWNER TO "user";

--
-- Name: test_table_test_column_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.test_table_test_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.test_table_test_column_seq OWNER TO "user";

--
-- Name: test_table_test_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.test_table_test_column_seq OWNED BY public.test_table.test_column;


--
-- Name: test_table test_column; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.test_table ALTER COLUMN test_column SET DEFAULT nextval('public.test_table_test_column_seq'::regclass);


--
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.test_table (test_column) FROM stdin;
44444
\.


--
-- Name: test_table_test_column_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.test_table_test_column_seq', 1, false);


--
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (test_column);


--
-- PostgreSQL database dump complete
--

