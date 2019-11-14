--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-14 14:35:13

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
-- TOC entry 203 (class 1259 OID 24589)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    cust_id integer NOT NULL,
    cust_lname character varying NOT NULL,
    cust_fname character varying NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE customer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.customer IS 'table for customer';


--
-- TOC entry 204 (class 1259 OID 24597)
-- Name: customer_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.customer_view AS
 SELECT customer.cust_id,
    customer.cust_lname,
    customer.cust_fname
   FROM public.customer
  WHERE (customer.cust_id > 200);


ALTER TABLE public.customer_view OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24609)
-- Name: customer_view2; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.customer_view2 AS
 SELECT customer.cust_id,
    customer.cust_lname,
    customer.cust_fname
   FROM public.customer
  WHERE (customer.cust_id > 9);


ALTER TABLE public.customer_view2 OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24581)
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."order" (
    order_id integer NOT NULL,
    order_status character varying NOT NULL,
    order_date character varying NOT NULL,
    order_delivery character varying NOT NULL
);


ALTER TABLE public."order" OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE "order"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."order" IS 'table for order';


--
-- TOC entry 205 (class 1259 OID 24601)
-- Name: order_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.order_view AS
 SELECT "order".order_id,
    "order".order_date,
    "order".order_delivery,
    "order".order_status
   FROM public."order"
  WHERE ("order".order_id > 200);


ALTER TABLE public.order_view OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24605)
-- Name: order_view2; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.order_view2 AS
 SELECT "order".order_id,
    "order".order_date,
    "order".order_delivery,
    "order".order_status
   FROM public."order"
  WHERE ("order".order_id < 9);


ALTER TABLE public.order_view2 OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24613)
-- Name: order_view3; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.order_view3 AS
 SELECT "order".order_id,
    "order".order_date,
    "order".order_delivery,
    "order".order_status
   FROM public."order"
  WHERE ("order".order_id > 9);


ALTER TABLE public.order_view3 OWNER TO postgres;

--
-- TOC entry 2847 (class 0 OID 24589)
-- Dependencies: 203
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (cust_id, cust_lname, cust_fname) FROM stdin;
10	Lee	Justin
11	Javier	Simon
\.


--
-- TOC entry 2846 (class 0 OID 24581)
-- Dependencies: 202
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."order" (order_id, order_status, order_date, order_delivery) FROM stdin;
10	in progress	14-11-19	25-11-19
11	delivered	10-11-19	14-11-19
\.


--
-- TOC entry 2714 (class 2606 OID 24596)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cust_id);


--
-- TOC entry 2712 (class 2606 OID 24588)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (order_id);


-- Completed on 2019-11-14 14:35:14

--
-- PostgreSQL database dump complete
--

