--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-14 14:30:33

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
-- TOC entry 203 (class 1259 OID 32837)
-- Name: Employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employee" (
    "Emp_ID" character varying(11) NOT NULL,
    "Emp_lname" character varying(18) NOT NULL,
    "Emp_fname" character varying(18) NOT NULL,
    "Emp_initial" character varying(5) NOT NULL
);


ALTER TABLE public."Employee" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32865)
-- Name: emp_id; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.emp_id AS
 SELECT;


ALTER TABLE public.emp_id OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 32823)
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    pay_id integer NOT NULL,
    pay_method character varying NOT NULL
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 32869)
-- Name: payment_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.payment_view AS
 SELECT payment.pay_id,
    payment.pay_method
   FROM public.payment
  WHERE (payment.pay_id > 100);


ALTER TABLE public.payment_view OWNER TO postgres;

--
-- TOC entry 2831 (class 0 OID 32837)
-- Dependencies: 203
-- Data for Name: Employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Employee" ("Emp_ID", "Emp_lname", "Emp_fname", "Emp_initial") FROM stdin;
1	Francisco	Christian	I
2	DelMundo	Kyle	L
\.


--
-- TOC entry 2830 (class 0 OID 32823)
-- Dependencies: 202
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (pay_id, pay_method) FROM stdin;
213	debit
111	credit
\.


--
-- TOC entry 2701 (class 2606 OID 32841)
-- Name: Employee Employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Employee"
    ADD CONSTRAINT "Employee_pkey" PRIMARY KEY ("Emp_ID");


--
-- TOC entry 2699 (class 2606 OID 32830)
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (pay_id);


-- Completed on 2019-11-14 14:30:33

--
-- PostgreSQL database dump complete
--

