--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX public.unique_schema_migrations;
DROP INDEX public.index_web_partners_on_reset_password_token;
DROP INDEX public.index_web_partners_on_email;
DROP INDEX public.index_special_prices_on_product_id_and_partner_id;
DROP INDEX public.index_settings_on_target_type_and_target_id_and_var;
DROP INDEX public.index_sessions_on_updated_at;
DROP INDEX public.index_sessions_on_session_id;
ALTER TABLE ONLY public.web_related_products DROP CONSTRAINT web_related_products_pkey;
ALTER TABLE ONLY public.web_partners DROP CONSTRAINT web_partners_pkey;
ALTER TABLE ONLY public.web_partner_shipping_addresses DROP CONSTRAINT web_partner_shipping_addresses_pkey;
ALTER TABLE ONLY public.web_partner_billing_addresses DROP CONSTRAINT web_partner_billing_addresses_pkey;
ALTER TABLE ONLY public.web_partner_addresses DROP CONSTRAINT web_partner_addresses_pkey;
ALTER TABLE ONLY public.web_orders DROP CONSTRAINT web_orders_pkey;
ALTER TABLE ONLY public.web_order_items DROP CONSTRAINT web_order_items_pkey;
ALTER TABLE ONLY public.web_line_items DROP CONSTRAINT web_line_items_pkey;
ALTER TABLE ONLY public.web_featured_products DROP CONSTRAINT web_featured_products_pkey;
ALTER TABLE ONLY public.web_categories_to_products DROP CONSTRAINT web_categories_to_products_pkey;
ALTER TABLE ONLY public.web_categories DROP CONSTRAINT web_categories_pkey;
ALTER TABLE ONLY public.web_carts DROP CONSTRAINT web_carts_pkey;
ALTER TABLE ONLY public.warehouses DROP CONSTRAINT warehouses_pkey;
ALTER TABLE ONLY public.vats DROP CONSTRAINT vats_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.special_prices DROP CONSTRAINT special_prices_pkey;
ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
ALTER TABLE ONLY public.rates DROP CONSTRAINT rates_pkey;
ALTER TABLE ONLY public.purchase_orders DROP CONSTRAINT purchase_orders_pkey;
ALTER TABLE ONLY public.purchase_order_rows DROP CONSTRAINT purchase_order_rows_pkey;
ALTER TABLE ONLY public.purchase_invoices DROP CONSTRAINT purchase_invoices_pkey;
ALTER TABLE ONLY public.purchase_invoice_rows DROP CONSTRAINT purchase_invoice_rows_pkey;
ALTER TABLE ONLY public.purchase_goods_returns DROP CONSTRAINT purchase_goods_returns_pkey;
ALTER TABLE ONLY public.purchase_goods_return_rows DROP CONSTRAINT purchase_goods_return_rows_pkey;
ALTER TABLE ONLY public.purchase_delivery_rows DROP CONSTRAINT purchase_delivery_rows_pkey;
ALTER TABLE ONLY public.purchase_deliveries DROP CONSTRAINT purchase_deliveries_pkey;
ALTER TABLE ONLY public.purchase_credits DROP CONSTRAINT purchase_credits_pkey;
ALTER TABLE ONLY public.purchase_credit_rows DROP CONSTRAINT purchase_credit_rows_pkey;
ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
ALTER TABLE ONLY public.product_replacements DROP CONSTRAINT product_replacements_pkey;
ALTER TABLE ONLY public.product_parts DROP CONSTRAINT product_parts_pkey;
ALTER TABLE ONLY public.product_moves DROP CONSTRAINT product_moves_pkey;
ALTER TABLE ONLY public.product_cuttables DROP CONSTRAINT product_cuttables_pkey;
ALTER TABLE ONLY public.producers DROP CONSTRAINT producers_pkey;
ALTER TABLE ONLY public.price_lists DROP CONSTRAINT price_lists_pkey;
ALTER TABLE ONLY public.payment_options DROP CONSTRAINT payment_options_pkey;
ALTER TABLE ONLY public.partners DROP CONSTRAINT partners_pkey;
ALTER TABLE ONLY public.partner_addresses DROP CONSTRAINT partner_addresses_pkey;
ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
ALTER TABLE ONLY public.order_rows DROP CONSTRAINT order_rows_pkey;
ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
ALTER TABLE ONLY public.offer_rows DROP CONSTRAINT offer_rows_pkey;
ALTER TABLE ONLY public.moves DROP CONSTRAINT moves_pkey;
ALTER TABLE ONLY public.move_rows DROP CONSTRAINT move_rows_pkey;
ALTER TABLE ONLY public.move_plans DROP CONSTRAINT move_plans_pkey;
ALTER TABLE ONLY public.move_plan_rows DROP CONSTRAINT move_plan_rows_pkey;
ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_pkey;
ALTER TABLE ONLY public.invoice_rows DROP CONSTRAINT invoice_rows_pkey;
ALTER TABLE ONLY public.inventory_rows DROP CONSTRAINT inventory_rows_pkey;
ALTER TABLE ONLY public.inventory_ins DROP CONSTRAINT inventory_ins_pkey;
ALTER TABLE ONLY public.inventory_in_rows DROP CONSTRAINT inventory_in_rows_pkey;
ALTER TABLE ONLY public.inventories DROP CONSTRAINT inventories_pkey;
ALTER TABLE ONLY public.goods_returns DROP CONSTRAINT goods_returns_pkey;
ALTER TABLE ONLY public.goods_return_rows DROP CONSTRAINT goods_return_rows_pkey;
ALTER TABLE ONLY public.fictive_products DROP CONSTRAINT fictive_products_pkey;
ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
ALTER TABLE ONLY public.document_numbers DROP CONSTRAINT document_numbers_pkey;
ALTER TABLE ONLY public.delivery_rows DROP CONSTRAINT delivery_rows_pkey;
ALTER TABLE ONLY public.delivery_options DROP CONSTRAINT delivery_options_pkey;
ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_pkey;
ALTER TABLE ONLY public.currencies DROP CONSTRAINT currencies_pkey;
ALTER TABLE ONLY public.credits DROP CONSTRAINT credits_pkey;
ALTER TABLE ONLY public.credit_rows DROP CONSTRAINT credit_rows_pkey;
ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
ALTER TABLE ONLY public.codes DROP CONSTRAINT codes_pkey;
ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
ALTER TABLE public.web_related_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_partners ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_partner_shipping_addresses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_partner_billing_addresses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_partner_addresses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_order_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_line_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_featured_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_categories_to_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.web_carts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.warehouses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.vats ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.special_prices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.rates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_order_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_invoices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_invoice_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_goods_returns ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_goods_return_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_delivery_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_deliveries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_credits ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.purchase_credit_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_replacements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_parts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_moves ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_cuttables ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.producers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.price_lists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.payment_options ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.partners ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.partner_addresses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.order_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.offers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.offer_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.moves ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.move_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.move_plans ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.move_plan_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.invoices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.invoice_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inventory_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inventory_ins ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inventory_in_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.inventories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.goods_returns ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.goods_return_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fictive_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.document_numbers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delivery_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.delivery_options ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.deliveries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.currencies ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.credits ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.credit_rows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.codes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.accounts ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.web_related_products_id_seq;
DROP TABLE public.web_related_products;
DROP SEQUENCE public.web_partners_id_seq;
DROP TABLE public.web_partners;
DROP SEQUENCE public.web_partner_shipping_addresses_id_seq;
DROP TABLE public.web_partner_shipping_addresses;
DROP SEQUENCE public.web_partner_billing_addresses_id_seq;
DROP TABLE public.web_partner_billing_addresses;
DROP SEQUENCE public.web_partner_addresses_id_seq;
DROP TABLE public.web_partner_addresses;
DROP SEQUENCE public.web_orders_id_seq;
DROP TABLE public.web_orders;
DROP SEQUENCE public.web_order_items_id_seq;
DROP TABLE public.web_order_items;
DROP SEQUENCE public.web_line_items_id_seq;
DROP TABLE public.web_line_items;
DROP SEQUENCE public.web_featured_products_id_seq;
DROP TABLE public.web_featured_products;
DROP SEQUENCE public.web_categories_to_products_id_seq;
DROP TABLE public.web_categories_to_products;
DROP SEQUENCE public.web_categories_id_seq;
DROP TABLE public.web_categories;
DROP SEQUENCE public.web_carts_id_seq;
DROP TABLE public.web_carts;
DROP SEQUENCE public.warehouses_id_seq;
DROP TABLE public.warehouses;
DROP SEQUENCE public.vats_id_seq;
DROP TABLE public.vats;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.special_prices_id_seq;
DROP TABLE public.special_prices;
DROP SEQUENCE public.settings_id_seq;
DROP TABLE public.settings;
DROP SEQUENCE public.sessions_id_seq;
DROP TABLE public.sessions;
DROP TABLE public.schema_migrations;
DROP SEQUENCE public.rates_id_seq;
DROP TABLE public.rates;
DROP SEQUENCE public.purchase_orders_id_seq;
DROP TABLE public.purchase_orders;
DROP SEQUENCE public.purchase_order_rows_id_seq;
DROP TABLE public.purchase_order_rows;
DROP SEQUENCE public.purchase_invoices_id_seq;
DROP TABLE public.purchase_invoices;
DROP SEQUENCE public.purchase_invoice_rows_id_seq;
DROP TABLE public.purchase_invoice_rows;
DROP SEQUENCE public.purchase_goods_returns_id_seq;
DROP TABLE public.purchase_goods_returns;
DROP SEQUENCE public.purchase_goods_return_rows_id_seq;
DROP TABLE public.purchase_goods_return_rows;
DROP SEQUENCE public.purchase_delivery_rows_id_seq;
DROP TABLE public.purchase_delivery_rows;
DROP SEQUENCE public.purchase_deliveries_id_seq;
DROP TABLE public.purchase_deliveries;
DROP SEQUENCE public.purchase_credits_id_seq;
DROP TABLE public.purchase_credits;
DROP SEQUENCE public.purchase_credit_rows_id_seq;
DROP TABLE public.purchase_credit_rows;
DROP SEQUENCE public.products_id_seq;
DROP TABLE public.products;
DROP SEQUENCE public.product_replacements_id_seq;
DROP TABLE public.product_replacements;
DROP SEQUENCE public.product_parts_id_seq;
DROP TABLE public.product_parts;
DROP SEQUENCE public.product_moves_id_seq;
DROP TABLE public.product_moves;
DROP SEQUENCE public.product_cuttables_id_seq;
DROP TABLE public.product_cuttables;
DROP SEQUENCE public.producers_id_seq;
DROP TABLE public.producers;
DROP SEQUENCE public.price_lists_id_seq;
DROP TABLE public.price_lists;
DROP SEQUENCE public.payment_options_id_seq;
DROP TABLE public.payment_options;
DROP SEQUENCE public.partners_id_seq;
DROP TABLE public.partners;
DROP SEQUENCE public.partner_addresses_id_seq;
DROP TABLE public.partner_addresses;
DROP SEQUENCE public.orders_id_seq;
DROP TABLE public.orders;
DROP SEQUENCE public.order_rows_id_seq;
DROP TABLE public.order_rows;
DROP SEQUENCE public.offers_id_seq;
DROP TABLE public.offers;
DROP SEQUENCE public.offer_rows_id_seq;
DROP TABLE public.offer_rows;
DROP SEQUENCE public.moves_id_seq;
DROP TABLE public.moves;
DROP SEQUENCE public.move_rows_id_seq;
DROP TABLE public.move_rows;
DROP SEQUENCE public.move_plans_id_seq;
DROP TABLE public.move_plans;
DROP SEQUENCE public.move_plan_rows_id_seq;
DROP TABLE public.move_plan_rows;
DROP SEQUENCE public.invoices_id_seq;
DROP TABLE public.invoices;
DROP SEQUENCE public.invoice_rows_id_seq;
DROP TABLE public.invoice_rows;
DROP SEQUENCE public.inventory_rows_id_seq;
DROP TABLE public.inventory_rows;
DROP SEQUENCE public.inventory_ins_id_seq;
DROP TABLE public.inventory_ins;
DROP SEQUENCE public.inventory_in_rows_id_seq;
DROP TABLE public.inventory_in_rows;
DROP SEQUENCE public.inventories_id_seq;
DROP TABLE public.inventories;
DROP SEQUENCE public.goods_returns_id_seq;
DROP TABLE public.goods_returns;
DROP SEQUENCE public.goods_return_rows_id_seq;
DROP TABLE public.goods_return_rows;
DROP SEQUENCE public.fictive_products_id_seq;
DROP TABLE public.fictive_products;
DROP SEQUENCE public.features_id_seq;
DROP TABLE public.features;
DROP SEQUENCE public.document_numbers_id_seq;
DROP TABLE public.document_numbers;
DROP SEQUENCE public.delivery_rows_id_seq;
DROP TABLE public.delivery_rows;
DROP SEQUENCE public.delivery_options_id_seq;
DROP TABLE public.delivery_options;
DROP SEQUENCE public.deliveries_id_seq;
DROP TABLE public.deliveries;
DROP SEQUENCE public.currencies_id_seq;
DROP TABLE public.currencies;
DROP SEQUENCE public.credits_id_seq;
DROP TABLE public.credits;
DROP SEQUENCE public.credit_rows_id_seq;
DROP TABLE public.credit_rows;
DROP SEQUENCE public.countries_id_seq;
DROP TABLE public.countries;
DROP SEQUENCE public.codes_id_seq;
DROP TABLE public.codes;
DROP SEQUENCE public.accounts_id_seq;
DROP TABLE public.accounts;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE accounts (
    id integer NOT NULL,
    name character varying(255),
    currency_id integer,
    amount numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    warehouse_id integer,
    account_type integer,
    code character varying(255),
    description text,
    bank_name character varying(255)
);


ALTER TABLE public.accounts OWNER TO balazs;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO balazs;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('accounts_id_seq', 1, false);


--
-- Name: codes; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE codes (
    id integer NOT NULL,
    code character varying(255),
    producer_id integer,
    fictive_product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_search character varying(255)
);


ALTER TABLE public.codes OWNER TO balazs;

--
-- Name: codes_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.codes_id_seq OWNER TO balazs;

--
-- Name: codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE codes_id_seq OWNED BY codes.id;


--
-- Name: codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('codes_id_seq', 3, true);


--
-- Name: countries; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE countries (
    id integer NOT NULL,
    code character varying(255),
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.countries OWNER TO balazs;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO balazs;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE countries_id_seq OWNED BY countries.id;


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('countries_id_seq', 1, false);


--
-- Name: credit_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE credit_rows (
    id integer NOT NULL,
    credit_id integer,
    product_id integer,
    product_code character varying(255),
    product_name character varying(255),
    warehouse_id integer,
    quantity numeric,
    product_quantity_name character varying(255),
    base_netto_price numeric,
    discount_procent numeric,
    end_netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status numeric
);


ALTER TABLE public.credit_rows OWNER TO balazs;

--
-- Name: credit_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE credit_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.credit_rows_id_seq OWNER TO balazs;

--
-- Name: credit_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE credit_rows_id_seq OWNED BY credit_rows.id;


--
-- Name: credit_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('credit_rows_id_seq', 1, false);


--
-- Name: credits; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE credits (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    invoice_id integer,
    partner_id integer,
    partner_name character varying(255),
    partner_address_id integer,
    currency_id integer,
    payment_option_id integer,
    delivery_option_id integer,
    delivery_day date,
    create_day date,
    payment_deadline date,
    printed boolean,
    paid numeric,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    inner_comment text,
    inner_comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.credits OWNER TO balazs;

--
-- Name: credits_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.credits_id_seq OWNER TO balazs;

--
-- Name: credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE credits_id_seq OWNED BY credits.id;


--
-- Name: credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('credits_id_seq', 1, false);


--
-- Name: currencies; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE currencies (
    id integer NOT NULL,
    long_name character varying(255),
    name character varying(255),
    sign character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "precision" integer,
    decimal_name character varying(255)
);


ALTER TABLE public.currencies OWNER TO balazs;

--
-- Name: currencies_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE currencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.currencies_id_seq OWNER TO balazs;

--
-- Name: currencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE currencies_id_seq OWNED BY currencies.id;


--
-- Name: currencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('currencies_id_seq', 1, false);


--
-- Name: deliveries; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE deliveries (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    partner_address_id integer,
    currency_id integer,
    payment_option_id integer,
    delivery_option_id integer,
    delivery_day date,
    printed boolean,
    status integer,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    inner_comment text,
    inner_comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    create_day date
);


ALTER TABLE public.deliveries OWNER TO balazs;

--
-- Name: deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deliveries_id_seq OWNER TO balazs;

--
-- Name: deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE deliveries_id_seq OWNED BY deliveries.id;


--
-- Name: deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('deliveries_id_seq', 1, false);


--
-- Name: delivery_options; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE delivery_options (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    extra_cost integer,
    web_choosable boolean,
    web_name character varying(255)
);


ALTER TABLE public.delivery_options OWNER TO balazs;

--
-- Name: delivery_options_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE delivery_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delivery_options_id_seq OWNER TO balazs;

--
-- Name: delivery_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE delivery_options_id_seq OWNED BY delivery_options.id;


--
-- Name: delivery_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('delivery_options_id_seq', 1, true);


--
-- Name: delivery_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE delivery_rows (
    id integer NOT NULL,
    delivery_id integer,
    product_id integer,
    product_code character varying(255),
    product_name character varying(255),
    warehouse_id integer,
    quantity numeric,
    product_quantity_name character varying(255),
    base_netto_price numeric,
    discount_procent numeric,
    end_netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    status numeric,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.delivery_rows OWNER TO balazs;

--
-- Name: delivery_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE delivery_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delivery_rows_id_seq OWNER TO balazs;

--
-- Name: delivery_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE delivery_rows_id_seq OWNED BY delivery_rows.id;


--
-- Name: delivery_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('delivery_rows_id_seq', 1, false);


--
-- Name: document_numbers; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE document_numbers (
    id integer NOT NULL,
    year integer,
    next integer,
    document_type character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.document_numbers OWNER TO balazs;

--
-- Name: document_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE document_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_numbers_id_seq OWNER TO balazs;

--
-- Name: document_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE document_numbers_id_seq OWNED BY document_numbers.id;


--
-- Name: document_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('document_numbers_id_seq', 1, false);


--
-- Name: features; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE features (
    id integer NOT NULL,
    name character varying(255),
    comment text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.features OWNER TO balazs;

--
-- Name: features_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.features_id_seq OWNER TO balazs;

--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE features_id_seq OWNED BY features.id;


--
-- Name: features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('features_id_seq', 1, false);


--
-- Name: fictive_products; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE fictive_products (
    id integer NOT NULL,
    name character varying(255),
    code_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name_search character varying(255)
);


ALTER TABLE public.fictive_products OWNER TO balazs;

--
-- Name: fictive_products_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE fictive_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fictive_products_id_seq OWNER TO balazs;

--
-- Name: fictive_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE fictive_products_id_seq OWNED BY fictive_products.id;


--
-- Name: fictive_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('fictive_products_id_seq', 3, true);


--
-- Name: goods_return_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE goods_return_rows (
    id integer NOT NULL,
    goods_return_id integer,
    product_id integer,
    product_code character varying(255),
    product_name character varying(255),
    warehouse_id integer,
    quantity numeric,
    product_quantity_name character varying(255),
    base_netto_price numeric,
    discount_procent numeric,
    end_netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric,
    status numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.goods_return_rows OWNER TO balazs;

--
-- Name: goods_return_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE goods_return_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goods_return_rows_id_seq OWNER TO balazs;

--
-- Name: goods_return_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE goods_return_rows_id_seq OWNED BY goods_return_rows.id;


--
-- Name: goods_return_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('goods_return_rows_id_seq', 1, false);


--
-- Name: goods_returns; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE goods_returns (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    partner_address_id integer,
    currency_id integer,
    payment_option_id integer,
    delivery_option_id integer,
    printed boolean,
    delivery_day date,
    status integer,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    inner_comment text,
    inner_comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    create_day date
);


ALTER TABLE public.goods_returns OWNER TO balazs;

--
-- Name: goods_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE goods_returns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goods_returns_id_seq OWNER TO balazs;

--
-- Name: goods_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE goods_returns_id_seq OWNED BY goods_returns.id;


--
-- Name: goods_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('goods_returns_id_seq', 1, false);


--
-- Name: inventories; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE inventories (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    comment text,
    comment_search text,
    date timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    draft integer
);


ALTER TABLE public.inventories OWNER TO balazs;

--
-- Name: inventories_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE inventories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventories_id_seq OWNER TO balazs;

--
-- Name: inventories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE inventories_id_seq OWNED BY inventories.id;


--
-- Name: inventories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('inventories_id_seq', 1, false);


--
-- Name: inventory_in_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE inventory_in_rows (
    id integer NOT NULL,
    inventory_in_id integer,
    product_id integer,
    warehouse_id integer,
    quantity numeric,
    in_price numeric,
    in_cost numeric,
    in_price_currency_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_name character varying(255),
    row_order integer,
    in_cost_currency_id integer
);


ALTER TABLE public.inventory_in_rows OWNER TO balazs;

--
-- Name: inventory_in_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE inventory_in_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_in_rows_id_seq OWNER TO balazs;

--
-- Name: inventory_in_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE inventory_in_rows_id_seq OWNED BY inventory_in_rows.id;


--
-- Name: inventory_in_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('inventory_in_rows_id_seq', 1, false);


--
-- Name: inventory_ins; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE inventory_ins (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    comment text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    comment_search text,
    draft integer
);


ALTER TABLE public.inventory_ins OWNER TO balazs;

--
-- Name: inventory_ins_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE inventory_ins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_ins_id_seq OWNER TO balazs;

--
-- Name: inventory_ins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE inventory_ins_id_seq OWNED BY inventory_ins.id;


--
-- Name: inventory_ins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('inventory_ins_id_seq', 1, false);


--
-- Name: inventory_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE inventory_rows (
    id integer NOT NULL,
    inventory_id integer,
    product_id integer,
    quantity_stock_1 numeric,
    quantity_stock_2 numeric,
    quantity_stock_3 numeric,
    quantity_stock_4 numeric,
    quantity_stock_5 numeric,
    in_price numeric,
    in_cost numeric,
    in_price_currency_id integer,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    in_cost_currency_id integer
);


ALTER TABLE public.inventory_rows OWNER TO balazs;

--
-- Name: inventory_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE inventory_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_rows_id_seq OWNER TO balazs;

--
-- Name: inventory_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE inventory_rows_id_seq OWNED BY inventory_rows.id;


--
-- Name: inventory_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('inventory_rows_id_seq', 1, false);


--
-- Name: invoice_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE invoice_rows (
    id integer NOT NULL,
    invoice_id integer,
    product_id integer,
    product_code character varying(255),
    product_name character varying(255),
    warehouse_id integer,
    quantity numeric,
    product_quantity_name character varying(255),
    base_netto_price numeric,
    discount_procent numeric,
    end_netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    status numeric,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.invoice_rows OWNER TO balazs;

--
-- Name: invoice_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE invoice_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_rows_id_seq OWNER TO balazs;

--
-- Name: invoice_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE invoice_rows_id_seq OWNED BY invoice_rows.id;


--
-- Name: invoice_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('invoice_rows_id_seq', 1, false);


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE invoices (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    partner_address_id integer,
    currency_id integer,
    payment_option_id integer,
    delivery_option_id integer,
    delivery_day date,
    create_day date,
    payment_deadline date,
    printed boolean,
    paid numeric,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    inner_comment text,
    inner_comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.invoices OWNER TO balazs;

--
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_id_seq OWNER TO balazs;

--
-- Name: invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE invoices_id_seq OWNED BY invoices.id;


--
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('invoices_id_seq', 1, false);


--
-- Name: move_plan_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE move_plan_rows (
    id integer NOT NULL,
    move_plan_id integer,
    product_id integer,
    product_name character varying(255),
    quantity numeric,
    status numeric,
    price numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.move_plan_rows OWNER TO balazs;

--
-- Name: move_plan_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE move_plan_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.move_plan_rows_id_seq OWNER TO balazs;

--
-- Name: move_plan_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE move_plan_rows_id_seq OWNED BY move_plan_rows.id;


--
-- Name: move_plan_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('move_plan_rows_id_seq', 1, false);


--
-- Name: move_plans; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE move_plans (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    currency_id integer,
    status integer,
    source_warehouse_id integer,
    target_warehouse_id integer,
    comment text,
    comment_search text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    draft integer
);


ALTER TABLE public.move_plans OWNER TO balazs;

--
-- Name: move_plans_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE move_plans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.move_plans_id_seq OWNER TO balazs;

--
-- Name: move_plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE move_plans_id_seq OWNED BY move_plans.id;


--
-- Name: move_plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('move_plans_id_seq', 1, false);


--
-- Name: move_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE move_rows (
    id integer NOT NULL,
    move_id integer,
    ref_id integer,
    ref_type character varying(255),
    product_id integer,
    product_name character varying(255),
    quantity numeric,
    price numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ref_quantity numeric
);


ALTER TABLE public.move_rows OWNER TO balazs;

--
-- Name: move_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE move_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.move_rows_id_seq OWNER TO balazs;

--
-- Name: move_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE move_rows_id_seq OWNED BY move_rows.id;


--
-- Name: move_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('move_rows_id_seq', 1, false);


--
-- Name: moves; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE moves (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    currency_id integer,
    source_warehouse_id integer,
    target_warehouse_id integer,
    comment text,
    comment_search text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    draft integer
);


ALTER TABLE public.moves OWNER TO balazs;

--
-- Name: moves_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE moves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moves_id_seq OWNER TO balazs;

--
-- Name: moves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE moves_id_seq OWNED BY moves.id;


--
-- Name: moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('moves_id_seq', 1, false);


--
-- Name: offer_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE offer_rows (
    id integer NOT NULL,
    offer_id integer,
    product_id integer,
    product_code character varying(255),
    product_name character varying(255),
    warehouse_id integer,
    quantity numeric,
    product_quantity_name character varying(255),
    base_netto_price numeric,
    discount_procent numeric,
    end_netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    status numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.offer_rows OWNER TO balazs;

--
-- Name: offer_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE offer_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offer_rows_id_seq OWNER TO balazs;

--
-- Name: offer_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE offer_rows_id_seq OWNED BY offer_rows.id;


--
-- Name: offer_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('offer_rows_id_seq', 1, false);


--
-- Name: offers; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE offers (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    partner_address_id integer,
    currency_id integer,
    payment_option_id integer,
    delivery_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    inner_comment text,
    inner_comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    create_day date,
    valid_day date
);


ALTER TABLE public.offers OWNER TO balazs;

--
-- Name: offers_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offers_id_seq OWNER TO balazs;

--
-- Name: offers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE offers_id_seq OWNED BY offers.id;


--
-- Name: offers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('offers_id_seq', 1, false);


--
-- Name: order_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE order_rows (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    product_code character varying(255),
    product_name character varying(255),
    warehouse_id integer,
    quantity numeric,
    product_quantity_name character varying(255),
    base_netto_price numeric,
    discount_procent numeric,
    end_netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    status numeric,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric,
    row_order integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.order_rows OWNER TO balazs;

--
-- Name: order_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE order_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_rows_id_seq OWNER TO balazs;

--
-- Name: order_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE order_rows_id_seq OWNED BY order_rows.id;


--
-- Name: order_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('order_rows_id_seq', 1, false);


--
-- Name: orders; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE orders (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    partner_address_id integer,
    currency_id integer,
    payment_option_id integer,
    delivery_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    inner_comment text,
    inner_comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    create_day date,
    delivery_day date
);


ALTER TABLE public.orders OWNER TO balazs;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO balazs;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE orders_id_seq OWNED BY orders.id;


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('orders_id_seq', 1, false);


--
-- Name: partner_addresses; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE partner_addresses (
    id integer NOT NULL,
    partner_id integer,
    contact text,
    email character varying(255),
    zip character varying(255),
    city character varying(255),
    address character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.partner_addresses OWNER TO balazs;

--
-- Name: partner_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE partner_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_addresses_id_seq OWNER TO balazs;

--
-- Name: partner_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE partner_addresses_id_seq OWNED BY partner_addresses.id;


--
-- Name: partner_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('partner_addresses_id_seq', 1, false);


--
-- Name: partners; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE partners (
    id integer NOT NULL,
    name character varying(255),
    currency_id integer,
    taxcode character varying(255),
    contact text,
    email character varying(255),
    comment text,
    country_id integer,
    zip character varying(255),
    city character varying(255),
    address character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name_search character varying(255),
    contact_search text,
    comment_search text,
    delete_flag boolean,
    payment_option_id integer,
    delivery_option_id integer,
    price_level integer,
    vat_id integer,
    purchase_payment_id integer
);


ALTER TABLE public.partners OWNER TO balazs;

--
-- Name: partners_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE partners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partners_id_seq OWNER TO balazs;

--
-- Name: partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE partners_id_seq OWNED BY partners.id;


--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('partners_id_seq', 1, false);


--
-- Name: payment_options; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE payment_options (
    id integer NOT NULL,
    name character varying(255),
    account_type integer,
    days integer,
    transaction_trigger boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    display_name character varying(255),
    cash boolean,
    web_choosable boolean,
    web_name character varying(255)
);


ALTER TABLE public.payment_options OWNER TO balazs;

--
-- Name: payment_options_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE payment_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_options_id_seq OWNER TO balazs;

--
-- Name: payment_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE payment_options_id_seq OWNED BY payment_options.id;


--
-- Name: payment_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('payment_options_id_seq', 1, true);


--
-- Name: price_lists; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE price_lists (
    id integer NOT NULL,
    currency_id integer,
    rate numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.price_lists OWNER TO balazs;

--
-- Name: price_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE price_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.price_lists_id_seq OWNER TO balazs;

--
-- Name: price_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE price_lists_id_seq OWNED BY price_lists.id;


--
-- Name: price_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('price_lists_id_seq', 1, false);


--
-- Name: producers; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE producers (
    id integer NOT NULL,
    name character varying(255),
    country_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    partner_id integer
);


ALTER TABLE public.producers OWNER TO balazs;

--
-- Name: producers_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE producers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producers_id_seq OWNER TO balazs;

--
-- Name: producers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE producers_id_seq OWNED BY producers.id;


--
-- Name: producers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('producers_id_seq', 1, false);


--
-- Name: product_cuttables; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE product_cuttables (
    id integer NOT NULL,
    product_id integer,
    min_length integer,
    max_length integer,
    default_length integer,
    delivery_length integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_cuttables OWNER TO balazs;

--
-- Name: product_cuttables_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE product_cuttables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_cuttables_id_seq OWNER TO balazs;

--
-- Name: product_cuttables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE product_cuttables_id_seq OWNED BY product_cuttables.id;


--
-- Name: product_cuttables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('product_cuttables_id_seq', 1, true);


--
-- Name: product_moves; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE product_moves (
    id integer NOT NULL,
    product_id integer,
    warehouse_id integer,
    quantity numeric,
    row_type character varying(255),
    row_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    stock_quantity numeric,
    global_quantity numeric
);


ALTER TABLE public.product_moves OWNER TO balazs;

--
-- Name: product_moves_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE product_moves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_moves_id_seq OWNER TO balazs;

--
-- Name: product_moves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE product_moves_id_seq OWNED BY product_moves.id;


--
-- Name: product_moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('product_moves_id_seq', 1, false);


--
-- Name: product_parts; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE product_parts (
    id integer NOT NULL,
    fictive_product_id integer,
    target_product_id integer,
    quantity numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_parts OWNER TO balazs;

--
-- Name: product_parts_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE product_parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_parts_id_seq OWNER TO balazs;

--
-- Name: product_parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE product_parts_id_seq OWNED BY product_parts.id;


--
-- Name: product_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('product_parts_id_seq', 1, false);


--
-- Name: product_replacements; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE product_replacements (
    id integer NOT NULL,
    source_product_id integer,
    target_product_id integer,
    quantity numeric,
    "group" integer,
    comment text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_replacements OWNER TO balazs;

--
-- Name: product_replacements_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE product_replacements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_replacements_id_seq OWNER TO balazs;

--
-- Name: product_replacements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE product_replacements_id_seq OWNED BY product_replacements.id;


--
-- Name: product_replacements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('product_replacements_id_seq', 1, false);


--
-- Name: products; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    code character varying(255),
    name character varying(255),
    foreign_name character varying(255),
    stat_code character varying(255),
    weight numeric,
    supplier_code character varying(255),
    min_order_quantity numeric,
    stockable boolean,
    description text,
    delete_flag boolean,
    supplier_id integer,
    vat_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    code_search character varying(255),
    name_search character varying(255),
    supplier_code_search character varying(255),
    description_search text,
    stock_1 numeric,
    stock_2 numeric,
    stock_3 numeric,
    stock_4 numeric,
    stock_5 numeric,
    avg_price numeric,
    avg_cost numeric,
    avg_currency_id integer,
    quantity_name character varying(255),
    price1 numeric,
    price2 numeric,
    price3 numeric,
    price4 numeric,
    price5 numeric,
    price6 numeric,
    base_price numeric,
    price_limit numeric,
    supplier_quantity_name character varying(255),
    fictive_product_id integer,
    service boolean,
    delivery_service boolean,
    temp_cost numeric
);


ALTER TABLE public.products OWNER TO balazs;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO balazs;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('products_id_seq', 5, true);


--
-- Name: purchase_credit_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_credit_rows (
    id integer NOT NULL,
    purchase_credit_id integer,
    product_id integer,
    product_name character varying(255),
    product_purchase_code character varying(255),
    product_purchase_name character varying(255),
    quantity numeric,
    product_quantity_name character varying(255),
    status numeric,
    row_order integer,
    netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric
);


ALTER TABLE public.purchase_credit_rows OWNER TO balazs;

--
-- Name: purchase_credit_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_credit_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_credit_rows_id_seq OWNER TO balazs;

--
-- Name: purchase_credit_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_credit_rows_id_seq OWNED BY purchase_credit_rows.id;


--
-- Name: purchase_credit_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_credit_rows_id_seq', 1, false);


--
-- Name: purchase_credits; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_credits (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    warehouse_id integer,
    currency_id integer,
    payment_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    reference_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    create_day date,
    arrival_day date,
    payment_deadline date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.purchase_credits OWNER TO balazs;

--
-- Name: purchase_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_credits_id_seq OWNER TO balazs;

--
-- Name: purchase_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_credits_id_seq OWNED BY purchase_credits.id;


--
-- Name: purchase_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_credits_id_seq', 1, false);


--
-- Name: purchase_deliveries; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_deliveries (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    warehouse_id integer,
    currency_id integer,
    payment_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    reference_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    create_day date,
    arrival_day date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.purchase_deliveries OWNER TO balazs;

--
-- Name: purchase_deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_deliveries_id_seq OWNER TO balazs;

--
-- Name: purchase_deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_deliveries_id_seq OWNED BY purchase_deliveries.id;


--
-- Name: purchase_deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_deliveries_id_seq', 1, false);


--
-- Name: purchase_delivery_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_delivery_rows (
    id integer NOT NULL,
    purchase_delivery_id integer,
    product_id integer,
    product_name character varying(255),
    product_purchase_code character varying(255),
    product_purchase_name character varying(255),
    quantity numeric,
    product_quantity_name character varying(255),
    status numeric,
    row_order integer,
    netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric
);


ALTER TABLE public.purchase_delivery_rows OWNER TO balazs;

--
-- Name: purchase_delivery_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_delivery_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_delivery_rows_id_seq OWNER TO balazs;

--
-- Name: purchase_delivery_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_delivery_rows_id_seq OWNED BY purchase_delivery_rows.id;


--
-- Name: purchase_delivery_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_delivery_rows_id_seq', 1, false);


--
-- Name: purchase_goods_return_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_goods_return_rows (
    id integer NOT NULL,
    purchase_goods_return_id integer,
    product_id integer,
    product_name character varying(255),
    product_purchase_code character varying(255),
    product_purchase_name character varying(255),
    quantity numeric,
    product_quantity_name character varying(255),
    status numeric,
    row_order integer,
    netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric
);


ALTER TABLE public.purchase_goods_return_rows OWNER TO balazs;

--
-- Name: purchase_goods_return_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_goods_return_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_goods_return_rows_id_seq OWNER TO balazs;

--
-- Name: purchase_goods_return_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_goods_return_rows_id_seq OWNED BY purchase_goods_return_rows.id;


--
-- Name: purchase_goods_return_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_goods_return_rows_id_seq', 1, false);


--
-- Name: purchase_goods_returns; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_goods_returns (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    warehouse_id integer,
    currency_id integer,
    payment_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    reference_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    create_day date,
    arrival_day date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.purchase_goods_returns OWNER TO balazs;

--
-- Name: purchase_goods_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_goods_returns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_goods_returns_id_seq OWNER TO balazs;

--
-- Name: purchase_goods_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_goods_returns_id_seq OWNED BY purchase_goods_returns.id;


--
-- Name: purchase_goods_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_goods_returns_id_seq', 1, false);


--
-- Name: purchase_invoice_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_invoice_rows (
    id integer NOT NULL,
    purchase_invoice_id integer,
    product_id integer,
    product_name character varying(255),
    product_purchase_code character varying(255),
    product_purchase_name character varying(255),
    quantity numeric,
    product_quantity_name character varying(255),
    status numeric,
    row_order integer,
    netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ref_id integer,
    ref_type character varying(255),
    ref_quantity numeric
);


ALTER TABLE public.purchase_invoice_rows OWNER TO balazs;

--
-- Name: purchase_invoice_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_invoice_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_invoice_rows_id_seq OWNER TO balazs;

--
-- Name: purchase_invoice_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_invoice_rows_id_seq OWNED BY purchase_invoice_rows.id;


--
-- Name: purchase_invoice_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_invoice_rows_id_seq', 1, false);


--
-- Name: purchase_invoices; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_invoices (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    warehouse_id integer,
    currency_id integer,
    payment_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    reference_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    create_day date,
    arrival_day date,
    payment_deadline date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    delivery_calculated boolean,
    service_invoice boolean
);


ALTER TABLE public.purchase_invoices OWNER TO balazs;

--
-- Name: purchase_invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_invoices_id_seq OWNER TO balazs;

--
-- Name: purchase_invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_invoices_id_seq OWNED BY purchase_invoices.id;


--
-- Name: purchase_invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_invoices_id_seq', 1, false);


--
-- Name: purchase_order_rows; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_order_rows (
    id integer NOT NULL,
    purchase_order_id integer,
    product_id integer,
    product_name character varying(255),
    product_purchase_name character varying(255),
    quantity numeric,
    product_quantity_name character varying(255),
    status numeric,
    row_order integer,
    netto_price numeric,
    vat_amount numeric,
    sum_netto_price numeric,
    sum_vat numeric,
    sum_brutto_price numeric,
    arrival_day date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_purchase_code character varying(255)
);


ALTER TABLE public.purchase_order_rows OWNER TO balazs;

--
-- Name: purchase_order_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_order_rows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_order_rows_id_seq OWNER TO balazs;

--
-- Name: purchase_order_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_order_rows_id_seq OWNED BY purchase_order_rows.id;


--
-- Name: purchase_order_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_order_rows_id_seq', 1, false);


--
-- Name: purchase_orders; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE purchase_orders (
    id integer NOT NULL,
    doc_number character varying(255),
    user_id integer,
    partner_id integer,
    partner_name character varying(255),
    warehouse_id integer,
    currency_id integer,
    payment_option_id integer,
    status integer,
    draft integer,
    vat_number character varying(255),
    invoice_address text,
    delivery_address text,
    comment text,
    comment_search text,
    arrival_information character varying(255),
    netto_sum numeric,
    vat_sum numeric,
    brutto_sum numeric,
    create_day date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    confirmation_flag boolean,
    reference_number character varying(255)
);


ALTER TABLE public.purchase_orders OWNER TO balazs;

--
-- Name: purchase_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE purchase_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchase_orders_id_seq OWNER TO balazs;

--
-- Name: purchase_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE purchase_orders_id_seq OWNED BY purchase_orders.id;


--
-- Name: purchase_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('purchase_orders_id_seq', 1, false);


--
-- Name: rates; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE rates (
    id integer NOT NULL,
    source_id integer,
    target_id integer,
    rate numeric,
    day date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.rates OWNER TO balazs;

--
-- Name: rates_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE rates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rates_id_seq OWNER TO balazs;

--
-- Name: rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE rates_id_seq OWNED BY rates.id;


--
-- Name: rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('rates_id_seq', 1, false);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO balazs;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE sessions (
    id integer NOT NULL,
    session_id character varying(255) NOT NULL,
    data text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sessions OWNER TO balazs;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO balazs;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE sessions_id_seq OWNED BY sessions.id;


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('sessions_id_seq', 1, false);


--
-- Name: settings; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE settings (
    id integer NOT NULL,
    var character varying(255) NOT NULL,
    value text,
    target_id integer,
    target_type character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.settings OWNER TO balazs;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO balazs;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('settings_id_seq', 1, false);


--
-- Name: special_prices; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE special_prices (
    id integer NOT NULL,
    product_id integer,
    partner_id integer,
    rate numeric,
    price numeric,
    currency_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.special_prices OWNER TO balazs;

--
-- Name: special_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE special_prices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.special_prices_id_seq OWNER TO balazs;

--
-- Name: special_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE special_prices_id_seq OWNED BY special_prices.id;


--
-- Name: special_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('special_prices_id_seq', 1, false);


--
-- Name: users; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255),
    admin integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO balazs;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO balazs;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: vats; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE vats (
    id integer NOT NULL,
    name character varying(255),
    rate numeric,
    "desc" character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.vats OWNER TO balazs;

--
-- Name: vats_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE vats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vats_id_seq OWNER TO balazs;

--
-- Name: vats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE vats_id_seq OWNED BY vats.id;


--
-- Name: vats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('vats_id_seq', 1, false);


--
-- Name: warehouses; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE warehouses (
    id integer NOT NULL,
    long_name character varying(255),
    short_name character varying(255),
    country_id integer,
    zip character varying(255),
    city character varying(255),
    address character varying(255),
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    main_store boolean
);


ALTER TABLE public.warehouses OWNER TO balazs;

--
-- Name: warehouses_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE warehouses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warehouses_id_seq OWNER TO balazs;

--
-- Name: warehouses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE warehouses_id_seq OWNED BY warehouses.id;


--
-- Name: warehouses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('warehouses_id_seq', 1, false);


--
-- Name: web_carts; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_carts (
    id integer NOT NULL,
    web_partner_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_carts OWNER TO balazs;

--
-- Name: web_carts_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_carts_id_seq OWNER TO balazs;

--
-- Name: web_carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_carts_id_seq OWNED BY web_carts.id;


--
-- Name: web_carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_carts_id_seq', 23, true);


--
-- Name: web_categories; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_categories (
    id integer NOT NULL,
    name character varying(255),
    parent_category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_categories OWNER TO balazs;

--
-- Name: web_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_categories_id_seq OWNER TO balazs;

--
-- Name: web_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_categories_id_seq OWNED BY web_categories.id;


--
-- Name: web_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_categories_id_seq', 2, true);


--
-- Name: web_categories_to_products; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_categories_to_products (
    id integer NOT NULL,
    product_id integer,
    web_category_id integer,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_categories_to_products OWNER TO balazs;

--
-- Name: web_categories_to_products_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_categories_to_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_categories_to_products_id_seq OWNER TO balazs;

--
-- Name: web_categories_to_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_categories_to_products_id_seq OWNED BY web_categories_to_products.id;


--
-- Name: web_categories_to_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_categories_to_products_id_seq', 4, true);


--
-- Name: web_featured_products; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_featured_products (
    id integer NOT NULL,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_featured_products OWNER TO balazs;

--
-- Name: web_featured_products_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_featured_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_featured_products_id_seq OWNER TO balazs;

--
-- Name: web_featured_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_featured_products_id_seq OWNED BY web_featured_products.id;


--
-- Name: web_featured_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_featured_products_id_seq', 1, true);


--
-- Name: web_line_items; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_line_items (
    id integer NOT NULL,
    web_cart_id integer,
    product_id integer,
    quantity integer,
    length integer,
    version character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_line_items OWNER TO balazs;

--
-- Name: web_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_line_items_id_seq OWNER TO balazs;

--
-- Name: web_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_line_items_id_seq OWNED BY web_line_items.id;


--
-- Name: web_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_line_items_id_seq', 30, true);


--
-- Name: web_order_items; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_order_items (
    id integer NOT NULL,
    web_order_id integer,
    product_id integer,
    quantity integer,
    length integer,
    version character varying(255),
    price integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_order_items OWNER TO balazs;

--
-- Name: web_order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_order_items_id_seq OWNER TO balazs;

--
-- Name: web_order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_order_items_id_seq OWNED BY web_order_items.id;


--
-- Name: web_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_order_items_id_seq', 9, true);


--
-- Name: web_orders; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_orders (
    id integer NOT NULL,
    web_partner_id integer,
    web_partner_billing_address_id integer,
    web_partner_shipping_address_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    notes text,
    delivery_option_id integer,
    payment_option_id integer,
    total integer
);


ALTER TABLE public.web_orders OWNER TO balazs;

--
-- Name: web_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_orders_id_seq OWNER TO balazs;

--
-- Name: web_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_orders_id_seq OWNED BY web_orders.id;


--
-- Name: web_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_orders_id_seq', 14, true);


--
-- Name: web_partner_addresses; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_partner_addresses (
    id integer NOT NULL,
    web_partner_id integer,
    zip character varying(255),
    city character varying(255),
    address character varying(255),
    name character varying(255),
    default_address boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_partner_addresses OWNER TO balazs;

--
-- Name: web_partner_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_partner_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_partner_addresses_id_seq OWNER TO balazs;

--
-- Name: web_partner_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_partner_addresses_id_seq OWNED BY web_partner_addresses.id;


--
-- Name: web_partner_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_partner_addresses_id_seq', 8, true);


--
-- Name: web_partner_billing_addresses; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_partner_billing_addresses (
    id integer NOT NULL,
    web_partner_id integer,
    zip character varying(255),
    city character varying(255),
    address character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "default" boolean,
    name character varying(255)
);


ALTER TABLE public.web_partner_billing_addresses OWNER TO balazs;

--
-- Name: web_partner_billing_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_partner_billing_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_partner_billing_addresses_id_seq OWNER TO balazs;

--
-- Name: web_partner_billing_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_partner_billing_addresses_id_seq OWNED BY web_partner_billing_addresses.id;


--
-- Name: web_partner_billing_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_partner_billing_addresses_id_seq', 3, true);


--
-- Name: web_partner_shipping_addresses; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_partner_shipping_addresses (
    id integer NOT NULL,
    web_partner_id integer,
    zip character varying(255),
    city character varying(255),
    address character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_partner_shipping_addresses OWNER TO balazs;

--
-- Name: web_partner_shipping_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_partner_shipping_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_partner_shipping_addresses_id_seq OWNER TO balazs;

--
-- Name: web_partner_shipping_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_partner_shipping_addresses_id_seq OWNED BY web_partner_shipping_addresses.id;


--
-- Name: web_partner_shipping_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_partner_shipping_addresses_id_seq', 1, false);


--
-- Name: web_partners; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_partners (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    phone character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    newsletter boolean
);


ALTER TABLE public.web_partners OWNER TO balazs;

--
-- Name: web_partners_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_partners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_partners_id_seq OWNER TO balazs;

--
-- Name: web_partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_partners_id_seq OWNED BY web_partners.id;


--
-- Name: web_partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_partners_id_seq', 2, true);


--
-- Name: web_related_products; Type: TABLE; Schema: public; Owner: balazs; Tablespace: 
--

CREATE TABLE web_related_products (
    id integer NOT NULL,
    product_id integer,
    related_product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.web_related_products OWNER TO balazs;

--
-- Name: web_related_products_id_seq; Type: SEQUENCE; Schema: public; Owner: balazs
--

CREATE SEQUENCE web_related_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_related_products_id_seq OWNER TO balazs;

--
-- Name: web_related_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: balazs
--

ALTER SEQUENCE web_related_products_id_seq OWNED BY web_related_products.id;


--
-- Name: web_related_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: balazs
--

SELECT pg_catalog.setval('web_related_products_id_seq', 1, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY codes ALTER COLUMN id SET DEFAULT nextval('codes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY credit_rows ALTER COLUMN id SET DEFAULT nextval('credit_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY credits ALTER COLUMN id SET DEFAULT nextval('credits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY currencies ALTER COLUMN id SET DEFAULT nextval('currencies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY deliveries ALTER COLUMN id SET DEFAULT nextval('deliveries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY delivery_options ALTER COLUMN id SET DEFAULT nextval('delivery_options_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY delivery_rows ALTER COLUMN id SET DEFAULT nextval('delivery_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY document_numbers ALTER COLUMN id SET DEFAULT nextval('document_numbers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY features ALTER COLUMN id SET DEFAULT nextval('features_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY fictive_products ALTER COLUMN id SET DEFAULT nextval('fictive_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY goods_return_rows ALTER COLUMN id SET DEFAULT nextval('goods_return_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY goods_returns ALTER COLUMN id SET DEFAULT nextval('goods_returns_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY inventories ALTER COLUMN id SET DEFAULT nextval('inventories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY inventory_in_rows ALTER COLUMN id SET DEFAULT nextval('inventory_in_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY inventory_ins ALTER COLUMN id SET DEFAULT nextval('inventory_ins_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY inventory_rows ALTER COLUMN id SET DEFAULT nextval('inventory_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY invoice_rows ALTER COLUMN id SET DEFAULT nextval('invoice_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY invoices ALTER COLUMN id SET DEFAULT nextval('invoices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY move_plan_rows ALTER COLUMN id SET DEFAULT nextval('move_plan_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY move_plans ALTER COLUMN id SET DEFAULT nextval('move_plans_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY move_rows ALTER COLUMN id SET DEFAULT nextval('move_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY moves ALTER COLUMN id SET DEFAULT nextval('moves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY offer_rows ALTER COLUMN id SET DEFAULT nextval('offer_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY offers ALTER COLUMN id SET DEFAULT nextval('offers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY order_rows ALTER COLUMN id SET DEFAULT nextval('order_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY partner_addresses ALTER COLUMN id SET DEFAULT nextval('partner_addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY partners ALTER COLUMN id SET DEFAULT nextval('partners_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY payment_options ALTER COLUMN id SET DEFAULT nextval('payment_options_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY price_lists ALTER COLUMN id SET DEFAULT nextval('price_lists_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY producers ALTER COLUMN id SET DEFAULT nextval('producers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY product_cuttables ALTER COLUMN id SET DEFAULT nextval('product_cuttables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY product_moves ALTER COLUMN id SET DEFAULT nextval('product_moves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY product_parts ALTER COLUMN id SET DEFAULT nextval('product_parts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY product_replacements ALTER COLUMN id SET DEFAULT nextval('product_replacements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_credit_rows ALTER COLUMN id SET DEFAULT nextval('purchase_credit_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_credits ALTER COLUMN id SET DEFAULT nextval('purchase_credits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_deliveries ALTER COLUMN id SET DEFAULT nextval('purchase_deliveries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_delivery_rows ALTER COLUMN id SET DEFAULT nextval('purchase_delivery_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_goods_return_rows ALTER COLUMN id SET DEFAULT nextval('purchase_goods_return_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_goods_returns ALTER COLUMN id SET DEFAULT nextval('purchase_goods_returns_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_invoice_rows ALTER COLUMN id SET DEFAULT nextval('purchase_invoice_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_invoices ALTER COLUMN id SET DEFAULT nextval('purchase_invoices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_order_rows ALTER COLUMN id SET DEFAULT nextval('purchase_order_rows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY purchase_orders ALTER COLUMN id SET DEFAULT nextval('purchase_orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY rates ALTER COLUMN id SET DEFAULT nextval('rates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY sessions ALTER COLUMN id SET DEFAULT nextval('sessions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY special_prices ALTER COLUMN id SET DEFAULT nextval('special_prices_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY vats ALTER COLUMN id SET DEFAULT nextval('vats_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY warehouses ALTER COLUMN id SET DEFAULT nextval('warehouses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_carts ALTER COLUMN id SET DEFAULT nextval('web_carts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_categories ALTER COLUMN id SET DEFAULT nextval('web_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_categories_to_products ALTER COLUMN id SET DEFAULT nextval('web_categories_to_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_featured_products ALTER COLUMN id SET DEFAULT nextval('web_featured_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_line_items ALTER COLUMN id SET DEFAULT nextval('web_line_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_order_items ALTER COLUMN id SET DEFAULT nextval('web_order_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_orders ALTER COLUMN id SET DEFAULT nextval('web_orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_partner_addresses ALTER COLUMN id SET DEFAULT nextval('web_partner_addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_partner_billing_addresses ALTER COLUMN id SET DEFAULT nextval('web_partner_billing_addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_partner_shipping_addresses ALTER COLUMN id SET DEFAULT nextval('web_partner_shipping_addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_partners ALTER COLUMN id SET DEFAULT nextval('web_partners_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: balazs
--

ALTER TABLE ONLY web_related_products ALTER COLUMN id SET DEFAULT nextval('web_related_products_id_seq'::regclass);


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: codes; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO codes VALUES (1, '45098', 1, 1, '2012-12-03 09:22:30.300813', '2012-12-03 09:22:30.300813', '45098');
INSERT INTO codes VALUES (2, '556078L', 1, 2, '2012-12-03 09:22:30.418668', '2012-12-03 09:22:30.418668', '556078l');
INSERT INTO codes VALUES (3, '556078R', 1, 3, '2012-12-03 09:22:30.439193', '2012-12-03 09:22:30.439193', '556078r');


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: credit_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: credits; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: deliveries; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: delivery_options; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO delivery_options VALUES (1, 'Szállítási mód 1', '2012-11-11 00:00:00', '2012-12-07 10:54:05.408547', 0, true, 'Szállítási mód 1');


--
-- Data for Name: delivery_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: document_numbers; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: fictive_products; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO fictive_products VALUES (1, 'Aluprofil', 1, '2012-12-03 09:22:30.211678', '2012-12-03 09:22:30.326453', 'aluprofil');
INSERT INTO fictive_products VALUES (2, 'Lépcső bal', 2, '2012-12-03 09:22:30.414532', '2012-12-03 09:22:30.420281', 'lépcsőbal');
INSERT INTO fictive_products VALUES (3, 'Lépcső jobb', 3, '2012-12-03 09:22:30.434688', '2012-12-03 09:22:30.441348', 'lépcsőjobb');


--
-- Data for Name: goods_return_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: goods_returns; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: inventories; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: inventory_in_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: inventory_ins; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: inventory_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: invoice_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: move_plan_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: move_plans; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: move_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: moves; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: offer_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: order_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: partner_addresses; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: payment_options; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO payment_options VALUES (1, 'Fizetési opció 1.', 1, 1, false, '2012-11-11 00:00:00', '2012-12-07 10:54:05.373301', 'Fizetés 1.', false, true, 'Fizetési opció 1.');


--
-- Data for Name: price_lists; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: product_cuttables; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO product_cuttables VALUES (1, 3, 100, 7500, 1000, 3000, '2012-12-07 09:34:34.165379', '2012-12-07 09:34:34.165379');


--
-- Data for Name: product_moves; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: product_parts; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: product_replacements; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO products VALUES (2, 'code2', 'Test product 2', 'Test product 2', 'stat_code2', 1, '1', 1, NULL, 'description 2', NULL, 1, 1, '2012-11-11 00:00:00', '2012-11-11 00:00:00', '', '', '', '', 1, 1, 1, 1, 1, 1000, 500, 1, '', 1, 1, 1, 1, 3000, 3000, 3000, 2000, '', 1, NULL, NULL, NULL);
INSERT INTO products VALUES (3, '45098', 'Aluprofil', 'Alu profile', '87087090', 4.2, '45.098.000', 1000.0, true, NULL, NULL, NULL, NULL, '2012-12-03 09:22:30.329649', '2012-12-03 09:22:30.329649', '45098', 'aluprofil', '45098000', NULL, NULL, NULL, NULL, NULL, NULL, 30.0, 3.0, 1, 'fm', 1.9, 1.8, 1.7, 1.6, 1.5, 1.4, 30.0, 1.1, 'kg', 1, NULL, NULL, NULL);
INSERT INTO products VALUES (4, '556078L', 'Lépcső bal', 'Step left', '87089890', 2.1, '1002.09000', 5.0, true, NULL, NULL, NULL, NULL, '2012-12-03 09:22:30.422219', '2012-12-03 09:22:30.422219', '556078l', 'lépcsőbal', '100209000', NULL, NULL, NULL, NULL, NULL, NULL, 30.0, 3.0, 1, 'db', 1.9, 1.8, 1.7, 1.6, 1.5, 1.4, 30.0, 1.1, 'pc', 2, NULL, NULL, NULL);
INSERT INTO products VALUES (5, '556078R', 'Lépcső jobb', 'Step right', '87089890', 2.1, '1002.09001', 5.0, true, NULL, NULL, NULL, NULL, '2012-12-03 09:22:30.443016', '2012-12-03 09:22:30.443016', '556078r', 'lépcsőjobb', '100209001', NULL, NULL, NULL, NULL, NULL, NULL, 30.0, 3.0, 1, 'db', 1.9, 1.8, 1.7, 1.6, 1.5, 1.4, 30.0, 1.1, 'pc', 3, NULL, NULL, NULL);
INSERT INTO products VALUES (1, '11233', 'Test Product', 'Test Product foreign', 'stat_code', 1, 'supplier_code', 1, true, 'Description', NULL, 1, 1, '2012-11-11 00:00:00', '2012-11-11 00:00:00', '111111', 'Teszt termék', 'suppliercode', 'Leírás teszt', 1, 1, 1, 1, 1, 1000, 500, 1, '', 2000, 3000, 3000, 3000, 3000, 3000, 3000, 2000, '', 1212, NULL, NULL, NULL);


--
-- Data for Name: purchase_credit_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_credits; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_deliveries; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_delivery_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_goods_return_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_goods_returns; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_invoice_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_invoices; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_order_rows; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: purchase_orders; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: rates; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO schema_migrations VALUES ('20121125160238');
INSERT INTO schema_migrations VALUES ('20111216213559');
INSERT INTO schema_migrations VALUES ('20120122210019');
INSERT INTO schema_migrations VALUES ('20120202101236');
INSERT INTO schema_migrations VALUES ('20120205171720');
INSERT INTO schema_migrations VALUES ('20120205223055');
INSERT INTO schema_migrations VALUES ('20120207225101');
INSERT INTO schema_migrations VALUES ('20120207231042');
INSERT INTO schema_migrations VALUES ('20120312112855');
INSERT INTO schema_migrations VALUES ('20120416103429');
INSERT INTO schema_migrations VALUES ('20120416113137');
INSERT INTO schema_migrations VALUES ('20120524105408');
INSERT INTO schema_migrations VALUES ('20120606211254');
INSERT INTO schema_migrations VALUES ('20120609223236');
INSERT INTO schema_migrations VALUES ('20120610075656');
INSERT INTO schema_migrations VALUES ('20120610121125');
INSERT INTO schema_migrations VALUES ('20120610225732');
INSERT INTO schema_migrations VALUES ('20120610230825');
INSERT INTO schema_migrations VALUES ('20120611072645');
INSERT INTO schema_migrations VALUES ('20120611104426');
INSERT INTO schema_migrations VALUES ('20120611130446');
INSERT INTO schema_migrations VALUES ('20120612185548');
INSERT INTO schema_migrations VALUES ('20120612190511');
INSERT INTO schema_migrations VALUES ('20120612210426');
INSERT INTO schema_migrations VALUES ('20120614163102');
INSERT INTO schema_migrations VALUES ('20120616210309');
INSERT INTO schema_migrations VALUES ('20120618104402');
INSERT INTO schema_migrations VALUES ('20120623210001');
INSERT INTO schema_migrations VALUES ('20120624162718');
INSERT INTO schema_migrations VALUES ('20120630205635');
INSERT INTO schema_migrations VALUES ('20120701090545');
INSERT INTO schema_migrations VALUES ('20120701143529');
INSERT INTO schema_migrations VALUES ('20120701145251');
INSERT INTO schema_migrations VALUES ('20120724081207');
INSERT INTO schema_migrations VALUES ('20120725195610');
INSERT INTO schema_migrations VALUES ('20120815075526');
INSERT INTO schema_migrations VALUES ('20120815082904');
INSERT INTO schema_migrations VALUES ('20120820214905');
INSERT INTO schema_migrations VALUES ('20120829210647');
INSERT INTO schema_migrations VALUES ('20120910123120');
INSERT INTO schema_migrations VALUES ('20120915093457');
INSERT INTO schema_migrations VALUES ('20120916205337');
INSERT INTO schema_migrations VALUES ('20120917084330');
INSERT INTO schema_migrations VALUES ('20120917085341');
INSERT INTO schema_migrations VALUES ('20120917094428');
INSERT INTO schema_migrations VALUES ('20120917110111');
INSERT INTO schema_migrations VALUES ('20120918105432');
INSERT INTO schema_migrations VALUES ('20120918204028');
INSERT INTO schema_migrations VALUES ('20120919123128');
INSERT INTO schema_migrations VALUES ('20120608195523');
INSERT INTO schema_migrations VALUES ('20120614173045');
INSERT INTO schema_migrations VALUES ('20120820214846');
INSERT INTO schema_migrations VALUES ('20120919131410');
INSERT INTO schema_migrations VALUES ('20121101083916');
INSERT INTO schema_migrations VALUES ('20120921214703');
INSERT INTO schema_migrations VALUES ('20120922082408');
INSERT INTO schema_migrations VALUES ('20121003200540');
INSERT INTO schema_migrations VALUES ('20121004000141');
INSERT INTO schema_migrations VALUES ('20121004115012');
INSERT INTO schema_migrations VALUES ('20121008065552');
INSERT INTO schema_migrations VALUES ('20121011105111');
INSERT INTO schema_migrations VALUES ('20121011195024');
INSERT INTO schema_migrations VALUES ('20121012095102');
INSERT INTO schema_migrations VALUES ('20121012172948');
INSERT INTO schema_migrations VALUES ('20121018122016');
INSERT INTO schema_migrations VALUES ('20121020090008');
INSERT INTO schema_migrations VALUES ('20121108231510');
INSERT INTO schema_migrations VALUES ('20121113224201');
INSERT INTO schema_migrations VALUES ('20121114111829');
INSERT INTO schema_migrations VALUES ('20121115130309');
INSERT INTO schema_migrations VALUES ('20121115145526');
INSERT INTO schema_migrations VALUES ('20121116222736');
INSERT INTO schema_migrations VALUES ('20121116231900');
INSERT INTO schema_migrations VALUES ('20121117225219');
INSERT INTO schema_migrations VALUES ('20121118112039');
INSERT INTO schema_migrations VALUES ('20121119121204');
INSERT INTO schema_migrations VALUES ('20121120222117');
INSERT INTO schema_migrations VALUES ('20121128154218');
INSERT INTO schema_migrations VALUES ('20121128154914');
INSERT INTO schema_migrations VALUES ('20121128154946');
INSERT INTO schema_migrations VALUES ('20121128155830');
INSERT INTO schema_migrations VALUES ('20121129131921');
INSERT INTO schema_migrations VALUES ('20121129144215');
INSERT INTO schema_migrations VALUES ('20121129144352');
INSERT INTO schema_migrations VALUES ('20121130075444');
INSERT INTO schema_migrations VALUES ('20121130075717');
INSERT INTO schema_migrations VALUES ('20121130154106');
INSERT INTO schema_migrations VALUES ('20121201202228');
INSERT INTO schema_migrations VALUES ('20121201204518');
INSERT INTO schema_migrations VALUES ('20121201205149');
INSERT INTO schema_migrations VALUES ('20121201205850');
INSERT INTO schema_migrations VALUES ('20121202093148');
INSERT INTO schema_migrations VALUES ('20121202123946');
INSERT INTO schema_migrations VALUES ('20121203093641');
INSERT INTO schema_migrations VALUES ('20121203113953');
INSERT INTO schema_migrations VALUES ('20121206213021');
INSERT INTO schema_migrations VALUES ('20121206213322');
INSERT INTO schema_migrations VALUES ('20121207185611');
INSERT INTO schema_migrations VALUES ('20121210150743');
INSERT INTO schema_migrations VALUES ('20121211091946');
INSERT INTO schema_migrations VALUES ('20121211130923');


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: special_prices; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: vats; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: web_carts; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_carts VALUES (1, NULL, '2012-11-30 12:32:13.616553', '2012-11-30 12:32:13.616553');
INSERT INTO web_carts VALUES (2, NULL, '2012-11-30 12:34:31.131398', '2012-11-30 12:34:31.131398');
INSERT INTO web_carts VALUES (3, NULL, '2012-11-30 12:35:44.214071', '2012-11-30 12:35:44.214071');
INSERT INTO web_carts VALUES (4, NULL, '2012-11-30 12:38:06.800633', '2012-11-30 12:38:06.800633');
INSERT INTO web_carts VALUES (5, NULL, '2012-11-30 12:39:17.692499', '2012-11-30 12:39:17.692499');
INSERT INTO web_carts VALUES (6, NULL, '2012-11-30 12:43:00.065592', '2012-11-30 12:43:00.065592');
INSERT INTO web_carts VALUES (7, NULL, '2012-11-30 14:52:15.93387', '2012-11-30 14:52:15.93387');
INSERT INTO web_carts VALUES (8, NULL, '2012-12-02 21:54:32.032221', '2012-12-02 21:54:32.032221');
INSERT INTO web_carts VALUES (9, NULL, '2012-12-02 22:05:14.997394', '2012-12-02 22:05:14.997394');
INSERT INTO web_carts VALUES (10, NULL, '2012-12-02 22:06:54.934285', '2012-12-02 22:06:54.934285');
INSERT INTO web_carts VALUES (11, NULL, '2012-12-02 22:08:07.532614', '2012-12-02 22:08:07.532614');
INSERT INTO web_carts VALUES (12, NULL, '2012-12-02 22:15:49.959067', '2012-12-02 22:15:49.959067');
INSERT INTO web_carts VALUES (13, NULL, '2012-12-10 15:51:47.083235', '2012-12-10 15:51:47.083235');
INSERT INTO web_carts VALUES (14, NULL, '2012-12-11 13:30:56.803631', '2012-12-11 13:30:56.803631');
INSERT INTO web_carts VALUES (15, NULL, '2012-12-11 14:36:18.082336', '2012-12-11 14:36:18.082336');
INSERT INTO web_carts VALUES (16, NULL, '2012-12-11 14:43:29.445621', '2012-12-11 14:43:29.445621');
INSERT INTO web_carts VALUES (17, NULL, '2012-12-11 14:43:56.840967', '2012-12-11 14:43:56.840967');
INSERT INTO web_carts VALUES (18, NULL, '2012-12-11 14:43:57.021297', '2012-12-11 14:43:57.021297');
INSERT INTO web_carts VALUES (19, NULL, '2012-12-11 14:43:57.098405', '2012-12-11 14:43:57.098405');
INSERT INTO web_carts VALUES (20, NULL, '2012-12-14 12:09:41.659026', '2012-12-14 12:09:41.659026');
INSERT INTO web_carts VALUES (21, NULL, '2012-12-14 13:28:59.985398', '2012-12-14 13:28:59.985398');
INSERT INTO web_carts VALUES (22, NULL, '2012-12-14 15:55:52.84629', '2012-12-14 15:55:52.84629');
INSERT INTO web_carts VALUES (23, NULL, '2012-12-17 09:05:01.941619', '2012-12-17 09:05:01.941619');


--
-- Data for Name: web_categories; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_categories VALUES (1, 'Test category', NULL, '2012-12-11 00:00:00', '2012-12-11 00:00:00');
INSERT INTO web_categories VALUES (2, 'Test subcategory', 1, '2012-12-11 00:00:00', '2012-12-11 00:00:00');


--
-- Data for Name: web_categories_to_products; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_categories_to_products VALUES (1, 1, 2, 2, '2012-12-11 00:00:00', '2012-11-11 00:00:00');
INSERT INTO web_categories_to_products VALUES (2, 2, 2, 1, '2012-12-11 00:00:00', '2012-11-11 00:00:00');
INSERT INTO web_categories_to_products VALUES (3, 4, 2, 9, '2012-12-11 00:00:00', '2012-11-11 00:00:00');
INSERT INTO web_categories_to_products VALUES (4, 3, 2, 22, '2012-12-11 00:00:00', '2012-11-12 00:00:00');


--
-- Data for Name: web_featured_products; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_featured_products VALUES (1, 1, '2012-11-11 00:00:00', '2012-11-11 00:00:00');


--
-- Data for Name: web_line_items; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_line_items VALUES (4, 7, 2, 111, NULL, NULL, '2012-11-30 15:15:34.072607', '2012-11-30 15:26:22.764976');
INSERT INTO web_line_items VALUES (7, 8, 1, 12, NULL, NULL, '2012-12-02 21:54:47.461646', '2012-12-02 21:54:47.461646');
INSERT INTO web_line_items VALUES (8, 11, 1, 22, NULL, NULL, '2012-12-02 22:08:18.308824', '2012-12-02 22:08:18.79479');
INSERT INTO web_line_items VALUES (21, 5, 2, 1, NULL, NULL, '2012-12-10 11:50:46.012634', '2012-12-10 11:50:46.012634');
INSERT INTO web_line_items VALUES (27, 22, 3, 2, NULL, NULL, '2012-12-14 15:58:12.370255', '2012-12-14 15:58:12.370255');
INSERT INTO web_line_items VALUES (28, 22, 3, 1, 1022, NULL, '2012-12-14 16:00:01.116568', '2012-12-14 16:00:01.116568');
INSERT INTO web_line_items VALUES (29, 22, 3, 4, 1022, NULL, '2012-12-14 16:00:17.244708', '2012-12-14 16:00:17.244708');
INSERT INTO web_line_items VALUES (30, 22, 3, 3, 1022, NULL, '2012-12-14 16:05:41.206286', '2012-12-14 16:05:41.206286');
INSERT INTO web_line_items VALUES (25, 21, 1, 14, NULL, NULL, '2012-12-14 15:44:37.411924', '2012-12-17 08:28:30.289237');


--
-- Data for Name: web_order_items; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_order_items VALUES (1, 8, 1, 123, NULL, NULL, 3000, '2012-12-07 09:35:42.372928', '2012-12-07 09:35:42.372928');
INSERT INTO web_order_items VALUES (2, 8, 2, 1267, NULL, NULL, 3000, '2012-12-07 09:35:42.37677', '2012-12-07 09:35:42.37677');
INSERT INTO web_order_items VALUES (3, 9, 1, 123, NULL, NULL, 3000, '2012-12-07 09:40:44.262083', '2012-12-07 09:40:44.262083');
INSERT INTO web_order_items VALUES (4, 9, 2, 1267, NULL, NULL, 3000, '2012-12-07 09:40:44.264051', '2012-12-07 09:40:44.264051');
INSERT INTO web_order_items VALUES (5, 10, 1, 22, NULL, NULL, 3000, '2012-12-07 10:59:11.896627', '2012-12-07 10:59:11.896627');
INSERT INTO web_order_items VALUES (6, 11, 1, 47, NULL, NULL, 3000, '2012-12-07 14:03:41.188236', '2012-12-07 14:03:41.188236');
INSERT INTO web_order_items VALUES (7, 12, 1, 33, NULL, NULL, 3000, '2012-12-07 14:43:03.682888', '2012-12-07 14:43:03.682888');
INSERT INTO web_order_items VALUES (8, 13, 1, 1, NULL, NULL, 3000, '2012-12-11 13:36:06.246666', '2012-12-11 13:36:06.246666');
INSERT INTO web_order_items VALUES (9, 14, 1, 1, NULL, NULL, 3000, '2012-12-11 13:36:51.812893', '2012-12-11 13:36:51.812893');


--
-- Data for Name: web_orders; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_orders VALUES (1, NULL, 1, 1, '2012-12-03 14:25:06.713398', '2012-12-03 14:25:06.713398', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (2, NULL, 1, 1, '2012-12-03 14:25:29.092473', '2012-12-03 14:25:29.092473', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (3, NULL, 1, 1, '2012-12-03 14:25:38.570805', '2012-12-03 14:25:38.570805', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (4, NULL, 1, 1, '2012-12-03 14:25:56.74077', '2012-12-03 14:25:56.74077', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (5, NULL, 1, 1, '2012-12-07 09:22:32.826986', '2012-12-07 09:22:32.826986', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (6, NULL, 1, 1, '2012-12-07 09:25:25.654764', '2012-12-07 09:25:25.654764', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (7, 1, 1, 1, '2012-12-07 09:28:42.508104', '2012-12-07 09:28:42.508104', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (8, 1, 1, 1, '2012-12-07 09:35:42.363234', '2012-12-07 09:35:42.363234', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (9, 1, 1, 1, '2012-12-07 09:40:44.259025', '2012-12-07 09:40:44.259025', NULL, NULL, NULL, NULL);
INSERT INTO web_orders VALUES (10, 1, 1, 1, '2012-12-07 10:59:11.893799', '2012-12-07 10:59:11.893799', 'megjegyzés', 1, 1, 66000);
INSERT INTO web_orders VALUES (11, 1, 7, 7, '2012-12-07 14:03:41.184646', '2012-12-07 14:03:41.184646', '', NULL, 1, 141000);
INSERT INTO web_orders VALUES (12, 1, 7, 7, '2012-12-07 14:43:03.615097', '2012-12-07 14:43:03.67982', '', 1, 1, 99000);
INSERT INTO web_orders VALUES (13, 1, 7, 7, '2012-12-11 13:36:06.161861', '2012-12-11 13:36:06.242686', '', 1, 1, 3000);
INSERT INTO web_orders VALUES (14, 2, 8, 8, '2012-12-11 13:36:51.754556', '2012-12-11 13:36:51.810036', '', 1, 1, 3000);


--
-- Data for Name: web_partner_addresses; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_partner_addresses VALUES (2, 1, '1212', 'Budapest', 'Váci út 1.', 'Kovács Kft.', NULL, '2012-12-12 00:00:00', '2012-11-11 00:00:00');
INSERT INTO web_partner_addresses VALUES (8, 2, '1299', 'Budapesti', 'Váci út 22.', 'Teszt cég', false, '2012-12-11 09:27:37.992634', '2012-12-17 09:36:05.458352');
INSERT INTO web_partner_addresses VALUES (6, 1, '9999', 'Új város', 'Cím', 'Új alapértelmezett cím', NULL, '2012-12-07 13:07:48.845382', '2012-12-07 13:07:48.845382');
INSERT INTO web_partner_addresses VALUES (3, 1, '1212', 'Debrecen', 'Kossuth lajos utca 12', 'Új cím', NULL, '2012-12-07 12:53:25.796997', '2012-12-07 13:08:08.622296');
INSERT INTO web_partner_addresses VALUES (5, 1, '3456', 'Debrecen', 'Utca szám 2-', 'Harmadik cím', true, '2012-12-07 13:06:02.198045', '2012-12-07 13:08:46.263357');
INSERT INTO web_partner_addresses VALUES (7, 1, '9876', 'Budapest', 'Város utca 1', 'Szállítási új cím', false, '2012-12-07 14:01:34.296115', '2012-12-07 14:01:34.296115');


--
-- Data for Name: web_partner_billing_addresses; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_partner_billing_addresses VALUES (3, 1, '4100', 'Másik város', 'Címe', '2012-11-12 00:00:00', '2012-11-14 00:00:00', false, NULL);
INSERT INTO web_partner_billing_addresses VALUES (1, 1, '1215', 'Budapest', 'Utca 1.', '2012-11-30 18:22:22.609713', '2012-12-01 20:48:36.252038', NULL, 'Név2');
INSERT INTO web_partner_billing_addresses VALUES (2, 1, '1212', 'Budapest', 'cím utca 1.', '2012-11-11 00:00:00', '2012-12-01 20:48:52.717535', true, 'Másik név');


--
-- Data for Name: web_partner_shipping_addresses; Type: TABLE DATA; Schema: public; Owner: balazs
--



--
-- Data for Name: web_partners; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_partners VALUES (2, 'Antal Balázs', 'test1@pixelephant.hu', NULL, '06709306379', '2012-12-11 09:27:37.984561', '2012-12-17 09:05:59.373887', '$2a$10$yj12TfEUTsEP6LfnKmWUzuPR/LLx2E7N2HAwrK8acqpT5nFtaYDk2', NULL, NULL, NULL, 7, '2012-12-17 09:05:59.372263', '2012-12-14 14:27:17.715835', '127.0.0.1', '127.0.0.1', NULL);
INSERT INTO web_partners VALUES (1, 'Kapcsolattartó22', '0antalbalazs0@gmail.com', NULL, '123456711', '2012-11-30 18:22:22.604326', '2012-12-11 13:31:01.080791', '$2a$10$DtEpl3cupSDX1TVUO2Pjx.ffp3pmsvuuQMXql9L1mQvbSWJR8IFk6', '', NULL, NULL, 15, '2012-12-11 13:31:01.07913', '2012-12-09 10:00:35.190785', '127.0.0.1', '127.0.0.1', NULL);


--
-- Data for Name: web_related_products; Type: TABLE DATA; Schema: public; Owner: balazs
--

INSERT INTO web_related_products VALUES (1, 1, 2, '2012-12-11 00:00:00', '2012-12-11 00:00:00');


--
-- Name: accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: codes_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY codes
    ADD CONSTRAINT codes_pkey PRIMARY KEY (id);


--
-- Name: countries_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: credit_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY credit_rows
    ADD CONSTRAINT credit_rows_pkey PRIMARY KEY (id);


--
-- Name: credits_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY credits
    ADD CONSTRAINT credits_pkey PRIMARY KEY (id);


--
-- Name: currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (id);


--
-- Name: deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);


--
-- Name: delivery_options_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY delivery_options
    ADD CONSTRAINT delivery_options_pkey PRIMARY KEY (id);


--
-- Name: delivery_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY delivery_rows
    ADD CONSTRAINT delivery_rows_pkey PRIMARY KEY (id);


--
-- Name: document_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY document_numbers
    ADD CONSTRAINT document_numbers_pkey PRIMARY KEY (id);


--
-- Name: features_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);


--
-- Name: fictive_products_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY fictive_products
    ADD CONSTRAINT fictive_products_pkey PRIMARY KEY (id);


--
-- Name: goods_return_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY goods_return_rows
    ADD CONSTRAINT goods_return_rows_pkey PRIMARY KEY (id);


--
-- Name: goods_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY goods_returns
    ADD CONSTRAINT goods_returns_pkey PRIMARY KEY (id);


--
-- Name: inventories_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY inventories
    ADD CONSTRAINT inventories_pkey PRIMARY KEY (id);


--
-- Name: inventory_in_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY inventory_in_rows
    ADD CONSTRAINT inventory_in_rows_pkey PRIMARY KEY (id);


--
-- Name: inventory_ins_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY inventory_ins
    ADD CONSTRAINT inventory_ins_pkey PRIMARY KEY (id);


--
-- Name: inventory_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY inventory_rows
    ADD CONSTRAINT inventory_rows_pkey PRIMARY KEY (id);


--
-- Name: invoice_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY invoice_rows
    ADD CONSTRAINT invoice_rows_pkey PRIMARY KEY (id);


--
-- Name: invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- Name: move_plan_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY move_plan_rows
    ADD CONSTRAINT move_plan_rows_pkey PRIMARY KEY (id);


--
-- Name: move_plans_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY move_plans
    ADD CONSTRAINT move_plans_pkey PRIMARY KEY (id);


--
-- Name: move_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY move_rows
    ADD CONSTRAINT move_rows_pkey PRIMARY KEY (id);


--
-- Name: moves_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY moves
    ADD CONSTRAINT moves_pkey PRIMARY KEY (id);


--
-- Name: offer_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY offer_rows
    ADD CONSTRAINT offer_rows_pkey PRIMARY KEY (id);


--
-- Name: offers_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);


--
-- Name: order_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY order_rows
    ADD CONSTRAINT order_rows_pkey PRIMARY KEY (id);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: partner_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY partner_addresses
    ADD CONSTRAINT partner_addresses_pkey PRIMARY KEY (id);


--
-- Name: partners_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);


--
-- Name: payment_options_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY payment_options
    ADD CONSTRAINT payment_options_pkey PRIMARY KEY (id);


--
-- Name: price_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY price_lists
    ADD CONSTRAINT price_lists_pkey PRIMARY KEY (id);


--
-- Name: producers_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (id);


--
-- Name: product_cuttables_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY product_cuttables
    ADD CONSTRAINT product_cuttables_pkey PRIMARY KEY (id);


--
-- Name: product_moves_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY product_moves
    ADD CONSTRAINT product_moves_pkey PRIMARY KEY (id);


--
-- Name: product_parts_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY product_parts
    ADD CONSTRAINT product_parts_pkey PRIMARY KEY (id);


--
-- Name: product_replacements_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY product_replacements
    ADD CONSTRAINT product_replacements_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: purchase_credit_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_credit_rows
    ADD CONSTRAINT purchase_credit_rows_pkey PRIMARY KEY (id);


--
-- Name: purchase_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_credits
    ADD CONSTRAINT purchase_credits_pkey PRIMARY KEY (id);


--
-- Name: purchase_deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_deliveries
    ADD CONSTRAINT purchase_deliveries_pkey PRIMARY KEY (id);


--
-- Name: purchase_delivery_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_delivery_rows
    ADD CONSTRAINT purchase_delivery_rows_pkey PRIMARY KEY (id);


--
-- Name: purchase_goods_return_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_goods_return_rows
    ADD CONSTRAINT purchase_goods_return_rows_pkey PRIMARY KEY (id);


--
-- Name: purchase_goods_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_goods_returns
    ADD CONSTRAINT purchase_goods_returns_pkey PRIMARY KEY (id);


--
-- Name: purchase_invoice_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_invoice_rows
    ADD CONSTRAINT purchase_invoice_rows_pkey PRIMARY KEY (id);


--
-- Name: purchase_invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_invoices
    ADD CONSTRAINT purchase_invoices_pkey PRIMARY KEY (id);


--
-- Name: purchase_order_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_order_rows
    ADD CONSTRAINT purchase_order_rows_pkey PRIMARY KEY (id);


--
-- Name: purchase_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY purchase_orders
    ADD CONSTRAINT purchase_orders_pkey PRIMARY KEY (id);


--
-- Name: rates_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY rates
    ADD CONSTRAINT rates_pkey PRIMARY KEY (id);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: settings_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: special_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY special_prices
    ADD CONSTRAINT special_prices_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vats_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY vats
    ADD CONSTRAINT vats_pkey PRIMARY KEY (id);


--
-- Name: warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (id);


--
-- Name: web_carts_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_carts
    ADD CONSTRAINT web_carts_pkey PRIMARY KEY (id);


--
-- Name: web_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_categories
    ADD CONSTRAINT web_categories_pkey PRIMARY KEY (id);


--
-- Name: web_categories_to_products_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_categories_to_products
    ADD CONSTRAINT web_categories_to_products_pkey PRIMARY KEY (id);


--
-- Name: web_featured_products_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_featured_products
    ADD CONSTRAINT web_featured_products_pkey PRIMARY KEY (id);


--
-- Name: web_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_line_items
    ADD CONSTRAINT web_line_items_pkey PRIMARY KEY (id);


--
-- Name: web_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_order_items
    ADD CONSTRAINT web_order_items_pkey PRIMARY KEY (id);


--
-- Name: web_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_orders
    ADD CONSTRAINT web_orders_pkey PRIMARY KEY (id);


--
-- Name: web_partner_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_partner_addresses
    ADD CONSTRAINT web_partner_addresses_pkey PRIMARY KEY (id);


--
-- Name: web_partner_billing_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_partner_billing_addresses
    ADD CONSTRAINT web_partner_billing_addresses_pkey PRIMARY KEY (id);


--
-- Name: web_partner_shipping_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_partner_shipping_addresses
    ADD CONSTRAINT web_partner_shipping_addresses_pkey PRIMARY KEY (id);


--
-- Name: web_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_partners
    ADD CONSTRAINT web_partners_pkey PRIMARY KEY (id);


--
-- Name: web_related_products_pkey; Type: CONSTRAINT; Schema: public; Owner: balazs; Tablespace: 
--

ALTER TABLE ONLY web_related_products
    ADD CONSTRAINT web_related_products_pkey PRIMARY KEY (id);


--
-- Name: index_sessions_on_session_id; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE INDEX index_sessions_on_session_id ON sessions USING btree (session_id);


--
-- Name: index_sessions_on_updated_at; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE INDEX index_sessions_on_updated_at ON sessions USING btree (updated_at);


--
-- Name: index_settings_on_target_type_and_target_id_and_var; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE UNIQUE INDEX index_settings_on_target_type_and_target_id_and_var ON settings USING btree (target_type, target_id, var);


--
-- Name: index_special_prices_on_product_id_and_partner_id; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE UNIQUE INDEX index_special_prices_on_product_id_and_partner_id ON special_prices USING btree (product_id, partner_id);


--
-- Name: index_web_partners_on_email; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE UNIQUE INDEX index_web_partners_on_email ON web_partners USING btree (email);


--
-- Name: index_web_partners_on_reset_password_token; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE UNIQUE INDEX index_web_partners_on_reset_password_token ON web_partners USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: balazs; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


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

