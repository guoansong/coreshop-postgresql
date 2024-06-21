--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: corecmsadvertisement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsadvertisement (
    id integer NOT NULL,
    positionid integer NOT NULL,
    name character varying(255) NOT NULL,
    imageurl character varying(255) NOT NULL,
    val character varying(255) NOT NULL,
    valdes text DEFAULT NULL::character varying,
    sort integer NOT NULL,
    createtime timestamp without time zone,
    updatetime timestamp without time zone,
    code character varying(255) DEFAULT NULL::character varying,
    type integer NOT NULL
);


ALTER TABLE public.corecmsadvertisement OWNER TO postgres;

--
-- Name: corecmsadvertisement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsadvertisement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsadvertisement_id_seq OWNER TO postgres;

--
-- Name: corecmsadvertisement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsadvertisement_id_seq OWNED BY public.corecmsadvertisement.id;


--
-- Name: corecmsadvertposition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsadvertposition (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    createtime timestamp without time zone,
    updatetime timestamp without time zone,
    isenable boolean NOT NULL,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsadvertposition OWNER TO postgres;

--
-- Name: corecmsadvertposition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsadvertposition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsadvertposition_id_seq OWNER TO postgres;

--
-- Name: corecmsadvertposition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsadvertposition_id_seq OWNED BY public.corecmsadvertposition.id;


--
-- Name: corecmsagent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsagent (
    id integer NOT NULL,
    userid integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    gradeid integer NOT NULL,
    mobile character varying(255) DEFAULT NULL::character varying,
    weixin character varying(255) DEFAULT NULL::character varying,
    qq character varying(255) DEFAULT NULL::character varying,
    storename character varying(255) DEFAULT NULL::character varying,
    storelogo character varying(255) DEFAULT NULL::character varying,
    storebanner character varying(255) DEFAULT NULL::character varying,
    storedesc character varying(255) DEFAULT NULL::character varying,
    verifystatus integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    verifytime timestamp without time zone,
    isdelete boolean NOT NULL
);


ALTER TABLE public.corecmsagent OWNER TO postgres;

--
-- Name: corecmsagent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsagent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsagent_id_seq OWNER TO postgres;

--
-- Name: corecmsagent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsagent_id_seq OWNED BY public.corecmsagent.id;


--
-- Name: corecmsagentgoods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsagentgoods (
    id integer NOT NULL,
    goodid integer NOT NULL,
    goodrefreshtime timestamp without time zone,
    sortid integer NOT NULL,
    isenable boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsagentgoods OWNER TO postgres;

--
-- Name: corecmsagentgoods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsagentgoods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsagentgoods_id_seq OWNER TO postgres;

--
-- Name: corecmsagentgoods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsagentgoods_id_seq OWNED BY public.corecmsagentgoods.id;


--
-- Name: corecmsagentgrade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsagentgrade (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    isdefault boolean NOT NULL,
    isautoupgrade boolean NOT NULL,
    defaultsalespricetype integer NOT NULL,
    defaultsalespricenumber integer NOT NULL,
    sortid integer NOT NULL,
    description character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsagentgrade OWNER TO postgres;

--
-- Name: corecmsagentgrade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsagentgrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsagentgrade_id_seq OWNER TO postgres;

--
-- Name: corecmsagentgrade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsagentgrade_id_seq OWNED BY public.corecmsagentgrade.id;


--
-- Name: corecmsagentorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsagentorder (
    id integer NOT NULL,
    userid integer NOT NULL,
    buyuserid integer NOT NULL,
    orderid character varying(255) DEFAULT NULL::character varying,
    amount numeric NOT NULL,
    issettlement integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    isdelete boolean NOT NULL
);


ALTER TABLE public.corecmsagentorder OWNER TO postgres;

--
-- Name: corecmsagentorder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsagentorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsagentorder_id_seq OWNER TO postgres;

--
-- Name: corecmsagentorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsagentorder_id_seq OWNED BY public.corecmsagentorder.id;


--
-- Name: corecmsagentproducts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsagentproducts (
    id integer NOT NULL,
    agentgoodsid integer NOT NULL,
    goodid integer NOT NULL,
    productid integer NOT NULL,
    productcostprice numeric NOT NULL,
    productprice numeric NOT NULL,
    agentgradeid integer NOT NULL,
    agentgradeprice numeric NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    isdel boolean NOT NULL
);


ALTER TABLE public.corecmsagentproducts OWNER TO postgres;

--
-- Name: corecmsagentproducts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsagentproducts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsagentproducts_id_seq OWNER TO postgres;

--
-- Name: corecmsagentproducts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsagentproducts_id_seq OWNED BY public.corecmsagentproducts.id;


--
-- Name: corecmsapiaccesstoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsapiaccesstoken (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    machinecode character varying(255) NOT NULL,
    accesstoken character varying(255) NOT NULL,
    refreshtoken character varying(255) DEFAULT NULL::character varying,
    expiresin integer NOT NULL,
    expiressendtime timestamp without time zone,
    parameters text DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsapiaccesstoken OWNER TO postgres;

--
-- Name: corecmsapiaccesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsapiaccesstoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsapiaccesstoken_id_seq OWNER TO postgres;

--
-- Name: corecmsapiaccesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsapiaccesstoken_id_seq OWNED BY public.corecmsapiaccesstoken.id;


--
-- Name: corecmsarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsarea (
    id integer NOT NULL,
    parentid integer,
    depth integer,
    name character varying(255) DEFAULT NULL::character varying,
    postalcode character varying(255) DEFAULT NULL::character varying,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsarea OWNER TO postgres;

--
-- Name: corecmsarea_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsarea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsarea_id_seq OWNER TO postgres;

--
-- Name: corecmsarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsarea_id_seq OWNED BY public.corecmsarea.id;


--
-- Name: corecmsarticle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsarticle (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    brief character varying(255) DEFAULT NULL::character varying,
    coverimage character varying(255) DEFAULT NULL::character varying,
    contentbody character varying(255) NOT NULL,
    typeid integer NOT NULL,
    sort integer NOT NULL,
    ispub boolean NOT NULL,
    isdel boolean,
    pv integer NOT NULL,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsarticle OWNER TO postgres;

--
-- Name: corecmsarticle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsarticle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsarticle_id_seq OWNER TO postgres;

--
-- Name: corecmsarticle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsarticle_id_seq OWNED BY public.corecmsarticle.id;


--
-- Name: corecmsarticletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsarticletype (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    parentid integer NOT NULL,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsarticletype OWNER TO postgres;

--
-- Name: corecmsarticletype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsarticletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsarticletype_id_seq OWNER TO postgres;

--
-- Name: corecmsarticletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsarticletype_id_seq OWNED BY public.corecmsarticletype.id;


--
-- Name: corecmsbillaftersales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillaftersales (
    aftersalesid character varying(255) NOT NULL,
    orderid character varying(255) NOT NULL,
    userid integer NOT NULL,
    type integer NOT NULL,
    refundamount numeric NOT NULL,
    status integer NOT NULL,
    reason character varying(255) NOT NULL,
    mark character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbillaftersales OWNER TO postgres;

--
-- Name: corecmsbillaftersalesimages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillaftersalesimages (
    aftersalesid character varying(255) NOT NULL,
    imageurl character varying(255) NOT NULL,
    sortid integer NOT NULL
);


ALTER TABLE public.corecmsbillaftersalesimages OWNER TO postgres;

--
-- Name: corecmsbillaftersalesitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillaftersalesitem (
    id integer NOT NULL,
    aftersalesid character varying(255) NOT NULL,
    orderitemsid integer NOT NULL,
    goodsid integer NOT NULL,
    productid integer NOT NULL,
    sn character varying(255) DEFAULT NULL::character varying,
    bn character varying(255) DEFAULT NULL::character varying,
    name character varying(255) DEFAULT NULL::character varying,
    imageurl character varying(255) NOT NULL,
    nums integer NOT NULL,
    addon text DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbillaftersalesitem OWNER TO postgres;

--
-- Name: corecmsbillaftersalesitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsbillaftersalesitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsbillaftersalesitem_id_seq OWNER TO postgres;

--
-- Name: corecmsbillaftersalesitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsbillaftersalesitem_id_seq OWNED BY public.corecmsbillaftersalesitem.id;


--
-- Name: corecmsbilldelivery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbilldelivery (
    deliveryid character varying(255) NOT NULL,
    orderid character varying(255) DEFAULT NULL::character varying,
    logicode character varying(255) DEFAULT NULL::character varying,
    logino character varying(255) DEFAULT NULL::character varying,
    logiinformation text DEFAULT NULL::character varying,
    logistatus boolean NOT NULL,
    shipareaid integer NOT NULL,
    shipaddress character varying(255) DEFAULT NULL::character varying,
    shipname character varying(255) DEFAULT NULL::character varying,
    shipmobile character varying(255) DEFAULT NULL::character varying,
    status integer NOT NULL,
    memo character varying(255) DEFAULT NULL::character varying,
    confirmtime timestamp without time zone,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbilldelivery OWNER TO postgres;

--
-- Name: corecmsbilldeliveryitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbilldeliveryitem (
    id integer NOT NULL,
    orderid character varying(255) DEFAULT NULL::character varying,
    deliveryid character varying(255) NOT NULL,
    goodsid integer NOT NULL,
    productid integer NOT NULL,
    sn character varying(255) NOT NULL,
    bn character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    nums integer NOT NULL,
    weight numeric NOT NULL,
    addon text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsbilldeliveryitem OWNER TO postgres;

--
-- Name: corecmsbilldeliveryitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsbilldeliveryitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsbilldeliveryitem_id_seq OWNER TO postgres;

--
-- Name: corecmsbilldeliveryitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsbilldeliveryitem_id_seq OWNED BY public.corecmsbilldeliveryitem.id;


--
-- Name: corecmsbilllading; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbilllading (
    id character varying(255) NOT NULL,
    orderid character varying(255) NOT NULL,
    storeid integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    mobile character varying(255) DEFAULT NULL::character varying,
    clerkid integer NOT NULL,
    pickuptime timestamp without time zone,
    status boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    isdel boolean NOT NULL
);


ALTER TABLE public.corecmsbilllading OWNER TO postgres;

--
-- Name: corecmsbillpayments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillpayments (
    paymentid character varying(255) NOT NULL,
    sourceid character varying(255) NOT NULL,
    money numeric NOT NULL,
    userid integer NOT NULL,
    type integer NOT NULL,
    status integer NOT NULL,
    paymentcode character varying(255) NOT NULL,
    ip character varying(255) NOT NULL,
    parameters character varying(255) DEFAULT NULL::character varying,
    payedmsg character varying(255) DEFAULT NULL::character varying,
    tradeno character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbillpayments OWNER TO postgres;

--
-- Name: corecmsbillrefund; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillrefund (
    refundid character varying(255) NOT NULL,
    aftersalesid character varying(255) NOT NULL,
    money numeric NOT NULL,
    userid integer NOT NULL,
    sourceid character varying(255) NOT NULL,
    type integer NOT NULL,
    paymentcode character varying(255) DEFAULT NULL::character varying,
    tradeno character varying(255) DEFAULT NULL::character varying,
    status integer NOT NULL,
    memo text DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbillrefund OWNER TO postgres;

--
-- Name: corecmsbillreship; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillreship (
    reshipid character varying(255) NOT NULL,
    orderid character varying(255) NOT NULL,
    aftersalesid character varying(255) NOT NULL,
    userid integer NOT NULL,
    logicode character varying(255) DEFAULT NULL::character varying,
    logino character varying(255) DEFAULT NULL::character varying,
    status integer NOT NULL,
    memo character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbillreship OWNER TO postgres;

--
-- Name: corecmsbillreshipitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbillreshipitem (
    id integer NOT NULL,
    reshipid character varying(255) NOT NULL,
    orderitemsid integer NOT NULL,
    goodsid integer NOT NULL,
    productid integer NOT NULL,
    sn character varying(255) DEFAULT NULL::character varying,
    bn character varying(255) DEFAULT NULL::character varying,
    name character varying(255) DEFAULT NULL::character varying,
    imageurl character varying(255) DEFAULT NULL::character varying,
    nums integer NOT NULL,
    addon text DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsbillreshipitem OWNER TO postgres;

--
-- Name: corecmsbillreshipitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsbillreshipitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsbillreshipitem_id_seq OWNER TO postgres;

--
-- Name: corecmsbillreshipitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsbillreshipitem_id_seq OWNED BY public.corecmsbillreshipitem.id;


--
-- Name: corecmsbrand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsbrand (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    logoimageurl character varying(255) DEFAULT NULL::character varying,
    sort integer,
    isshow boolean NOT NULL,
    createtime timestamp without time zone
);


ALTER TABLE public.corecmsbrand OWNER TO postgres;

--
-- Name: corecmsbrand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsbrand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsbrand_id_seq OWNER TO postgres;

--
-- Name: corecmsbrand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsbrand_id_seq OWNED BY public.corecmsbrand.id;


--
-- Name: corecmscart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmscart (
    id integer NOT NULL,
    userid integer NOT NULL,
    productid integer NOT NULL,
    nums integer NOT NULL,
    type integer NOT NULL,
    objectid integer NOT NULL
);


ALTER TABLE public.corecmscart OWNER TO postgres;

--
-- Name: corecmscart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmscart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmscart_id_seq OWNER TO postgres;

--
-- Name: corecmscart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmscart_id_seq OWNED BY public.corecmscart.id;


--
-- Name: corecmsclerk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsclerk (
    id integer NOT NULL,
    storeid integer NOT NULL,
    userid integer NOT NULL,
    isdel boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsclerk OWNER TO postgres;

--
-- Name: corecmsclerk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsclerk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsclerk_id_seq OWNER TO postgres;

--
-- Name: corecmsclerk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsclerk_id_seq OWNED BY public.corecmsclerk.id;


--
-- Name: corecmscoupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmscoupon (
    id integer NOT NULL,
    couponcode character varying(255) NOT NULL,
    promotionid integer NOT NULL,
    isused boolean NOT NULL,
    userid integer NOT NULL,
    usedid character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    remark character varying(255) DEFAULT NULL::character varying,
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmscoupon OWNER TO postgres;

--
-- Name: corecmscoupon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmscoupon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmscoupon_id_seq OWNER TO postgres;

--
-- Name: corecmscoupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmscoupon_id_seq OWNED BY public.corecmscoupon.id;


--
-- Name: corecmsdistribution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsdistribution (
    id integer NOT NULL,
    userid integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    gradeid integer NOT NULL,
    mobile character varying(255) DEFAULT NULL::character varying,
    weixin character varying(255) DEFAULT NULL::character varying,
    qq character varying(255) DEFAULT NULL::character varying,
    storename character varying(255) DEFAULT NULL::character varying,
    storelogo character varying(255) DEFAULT NULL::character varying,
    storebanner character varying(255) DEFAULT NULL::character varying,
    storedesc character varying(255) DEFAULT NULL::character varying,
    verifystatus integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    verifytime timestamp without time zone,
    isdelete boolean NOT NULL
);


ALTER TABLE public.corecmsdistribution OWNER TO postgres;

--
-- Name: corecmsdistribution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsdistribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsdistribution_id_seq OWNER TO postgres;

--
-- Name: corecmsdistribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsdistribution_id_seq OWNED BY public.corecmsdistribution.id;


--
-- Name: corecmsdistributioncondition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsdistributioncondition (
    id integer NOT NULL,
    gradeid integer NOT NULL,
    code character varying(255) DEFAULT NULL::character varying,
    parameters character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsdistributioncondition OWNER TO postgres;

--
-- Name: corecmsdistributioncondition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsdistributioncondition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsdistributioncondition_id_seq OWNER TO postgres;

--
-- Name: corecmsdistributioncondition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsdistributioncondition_id_seq OWNED BY public.corecmsdistributioncondition.id;


--
-- Name: corecmsdistributiongrade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsdistributiongrade (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    isdefault boolean NOT NULL,
    isautoupgrade boolean NOT NULL,
    sortid integer NOT NULL,
    description character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsdistributiongrade OWNER TO postgres;

--
-- Name: corecmsdistributiongrade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsdistributiongrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsdistributiongrade_id_seq OWNER TO postgres;

--
-- Name: corecmsdistributiongrade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsdistributiongrade_id_seq OWNED BY public.corecmsdistributiongrade.id;


--
-- Name: corecmsdistributionorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsdistributionorder (
    id integer NOT NULL,
    userid integer NOT NULL,
    buyuserid integer NOT NULL,
    orderid character varying(255) DEFAULT NULL::character varying,
    amount numeric NOT NULL,
    issettlement integer NOT NULL,
    level integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    isdelete boolean NOT NULL
);


ALTER TABLE public.corecmsdistributionorder OWNER TO postgres;

--
-- Name: corecmsdistributionorder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsdistributionorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsdistributionorder_id_seq OWNER TO postgres;

--
-- Name: corecmsdistributionorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsdistributionorder_id_seq OWNED BY public.corecmsdistributionorder.id;


--
-- Name: corecmsdistributionresult; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsdistributionresult (
    id integer NOT NULL,
    gradeid integer NOT NULL,
    code character varying(255) DEFAULT NULL::character varying,
    parameters text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsdistributionresult OWNER TO postgres;

--
-- Name: corecmsdistributionresult_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsdistributionresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsdistributionresult_id_seq OWNER TO postgres;

--
-- Name: corecmsdistributionresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsdistributionresult_id_seq OWNED BY public.corecmsdistributionresult.id;


--
-- Name: corecmsform; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsform (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    type integer NOT NULL,
    sort integer NOT NULL,
    images text DEFAULT NULL::character varying,
    videopath character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    headtype integer NOT NULL,
    headtypevalue character varying(255) DEFAULT NULL::character varying,
    headtypevideo character varying(255) DEFAULT NULL::character varying,
    buttonname character varying(255) DEFAULT NULL::character varying,
    buttoncolor character varying(255) DEFAULT NULL::character varying,
    islogin boolean NOT NULL,
    times integer NOT NULL,
    qrcode character varying(255) DEFAULT NULL::character varying,
    returnmsg character varying(255) DEFAULT NULL::character varying,
    enddatetime timestamp without time zone NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsform OWNER TO postgres;

--
-- Name: corecmsform_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsform_id_seq OWNER TO postgres;

--
-- Name: corecmsform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsform_id_seq OWNED BY public.corecmsform.id;


--
-- Name: corecmsformitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsformitem (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    type character varying(255) DEFAULT NULL::character varying,
    validationtype character varying(255) DEFAULT NULL::character varying,
    value character varying(255) DEFAULT NULL::character varying,
    defaultvalue character varying(255) DEFAULT NULL::character varying,
    formid integer NOT NULL,
    required boolean NOT NULL,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsformitem OWNER TO postgres;

--
-- Name: corecmsformitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsformitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsformitem_id_seq OWNER TO postgres;

--
-- Name: corecmsformitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsformitem_id_seq OWNED BY public.corecmsformitem.id;


--
-- Name: corecmsformsubmit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsformsubmit (
    id integer NOT NULL,
    formid integer NOT NULL,
    formname character varying(255) DEFAULT NULL::character varying,
    userid integer NOT NULL,
    money numeric NOT NULL,
    paystatus boolean NOT NULL,
    status boolean NOT NULL,
    feedback character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsformsubmit OWNER TO postgres;

--
-- Name: corecmsformsubmit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsformsubmit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsformsubmit_id_seq OWNER TO postgres;

--
-- Name: corecmsformsubmit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsformsubmit_id_seq OWNED BY public.corecmsformsubmit.id;


--
-- Name: corecmsformsubmitdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsformsubmitdetail (
    id integer NOT NULL,
    submitid integer NOT NULL,
    formid integer NOT NULL,
    formitemid integer NOT NULL,
    formitemname character varying(255) DEFAULT NULL::character varying,
    formitemvalue text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsformsubmitdetail OWNER TO postgres;

--
-- Name: corecmsformsubmitdetail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsformsubmitdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsformsubmitdetail_id_seq OWNER TO postgres;

--
-- Name: corecmsformsubmitdetail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsformsubmitdetail_id_seq OWNED BY public.corecmsformsubmitdetail.id;


--
-- Name: corecmsgoods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoods (
    id integer NOT NULL,
    bn character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    brief character varying(255) DEFAULT NULL::character varying,
    image character varying(255) DEFAULT NULL::character varying,
    images text DEFAULT NULL::character varying,
    video character varying(255) DEFAULT NULL::character varying,
    productsdistributiontype integer NOT NULL,
    goodscategoryid integer NOT NULL,
    goodstypeid integer NOT NULL,
    goodsskuids character varying(255) DEFAULT NULL::character varying,
    goodsparamsids character varying(255) DEFAULT NULL::character varying,
    brandid integer NOT NULL,
    isnomalvirtual boolean NOT NULL,
    ismarketable boolean NOT NULL,
    unit character varying(255) DEFAULT NULL::character varying,
    intro text DEFAULT NULL::character varying,
    spesdesc text DEFAULT NULL::character varying,
    parameters text DEFAULT NULL::character varying,
    commentscount integer NOT NULL,
    viewcount integer NOT NULL,
    buycount integer NOT NULL,
    uptime timestamp without time zone,
    downtime timestamp without time zone,
    sort integer NOT NULL,
    labelids character varying(255) DEFAULT NULL::character varying,
    newspec text DEFAULT NULL::character varying,
    openspec integer NOT NULL,
    createtime timestamp without time zone,
    updatetime timestamp without time zone,
    isrecommend boolean NOT NULL,
    ishot boolean NOT NULL,
    isdel boolean NOT NULL
);


ALTER TABLE public.corecmsgoods OWNER TO postgres;

--
-- Name: corecmsgoods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoods_id_seq OWNER TO postgres;

--
-- Name: corecmsgoods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoods_id_seq OWNED BY public.corecmsgoods.id;


--
-- Name: corecmsgoodsbrowsing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodsbrowsing (
    id integer NOT NULL,
    goodsid integer NOT NULL,
    userid integer NOT NULL,
    goodsname character varying(255) NOT NULL,
    createtime timestamp without time zone NOT NULL,
    isdel boolean NOT NULL
);


ALTER TABLE public.corecmsgoodsbrowsing OWNER TO postgres;

--
-- Name: corecmsgoodsbrowsing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodsbrowsing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodsbrowsing_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodsbrowsing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodsbrowsing_id_seq OWNED BY public.corecmsgoodsbrowsing.id;


--
-- Name: corecmsgoodscategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodscategory (
    id integer NOT NULL,
    parentid integer NOT NULL,
    name character varying(255) NOT NULL,
    typeid integer NOT NULL,
    sort integer NOT NULL,
    imageurl character varying(255) DEFAULT NULL::character varying,
    isshow boolean NOT NULL,
    createtime timestamp without time zone
);


ALTER TABLE public.corecmsgoodscategory OWNER TO postgres;

--
-- Name: corecmsgoodscategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodscategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodscategory_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodscategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodscategory_id_seq OWNED BY public.corecmsgoodscategory.id;


--
-- Name: corecmsgoodscategoryextend; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodscategoryextend (
    id integer NOT NULL,
    goodsid integer,
    goodscategroyid integer
);


ALTER TABLE public.corecmsgoodscategoryextend OWNER TO postgres;

--
-- Name: corecmsgoodscategoryextend_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodscategoryextend_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodscategoryextend_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodscategoryextend_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodscategoryextend_id_seq OWNED BY public.corecmsgoodscategoryextend.id;


--
-- Name: corecmsgoodscollection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodscollection (
    id integer NOT NULL,
    goodsid integer NOT NULL,
    userid integer NOT NULL,
    goodsname character varying(255) NOT NULL,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsgoodscollection OWNER TO postgres;

--
-- Name: corecmsgoodscollection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodscollection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodscollection_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodscollection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodscollection_id_seq OWNED BY public.corecmsgoodscollection.id;


--
-- Name: corecmsgoodscomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodscomment (
    id integer NOT NULL,
    commentid integer NOT NULL,
    score integer NOT NULL,
    userid integer NOT NULL,
    goodsid integer NOT NULL,
    orderid character varying(255) NOT NULL,
    addon text DEFAULT NULL::character varying,
    images text DEFAULT NULL::character varying,
    contentbody character varying(255) DEFAULT NULL::character varying,
    sellercontent text DEFAULT NULL::character varying,
    isdisplay boolean NOT NULL,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsgoodscomment OWNER TO postgres;

--
-- Name: corecmsgoodscomment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodscomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodscomment_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodscomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodscomment_id_seq OWNED BY public.corecmsgoodscomment.id;


--
-- Name: corecmsgoodsgrade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodsgrade (
    id integer NOT NULL,
    goodsid integer NOT NULL,
    gradeid integer NOT NULL,
    gradeprice numeric NOT NULL
);


ALTER TABLE public.corecmsgoodsgrade OWNER TO postgres;

--
-- Name: corecmsgoodsgrade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodsgrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodsgrade_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodsgrade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodsgrade_id_seq OWNED BY public.corecmsgoodsgrade.id;


--
-- Name: corecmsgoodsimages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodsimages (
    goodsid integer NOT NULL,
    imageid character varying(255) NOT NULL,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsgoodsimages OWNER TO postgres;

--
-- Name: corecmsgoodsparams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodsparams (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    value text DEFAULT NULL::character varying,
    type character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsgoodsparams OWNER TO postgres;

--
-- Name: corecmsgoodsparams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodsparams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodsparams_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodsparams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodsparams_id_seq OWNED BY public.corecmsgoodsparams.id;


--
-- Name: corecmsgoodstypespec; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodstypespec (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsgoodstypespec OWNER TO postgres;

--
-- Name: corecmsgoodstypespec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodstypespec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodstypespec_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodstypespec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodstypespec_id_seq OWNED BY public.corecmsgoodstypespec.id;


--
-- Name: corecmsgoodstypespecvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsgoodstypespecvalue (
    id integer NOT NULL,
    specid integer NOT NULL,
    value character varying(255) NOT NULL,
    sort integer NOT NULL
);


ALTER TABLE public.corecmsgoodstypespecvalue OWNER TO postgres;

--
-- Name: corecmsgoodstypespecvalue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsgoodstypespecvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsgoodstypespecvalue_id_seq OWNER TO postgres;

--
-- Name: corecmsgoodstypespecvalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsgoodstypespecvalue_id_seq OWNED BY public.corecmsgoodstypespecvalue.id;


--
-- Name: corecmsimages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsimages (
    id character varying(255) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    url character varying(255) DEFAULT NULL::character varying,
    path character varying(255) DEFAULT NULL::character varying,
    type character varying(255) DEFAULT NULL::character varying,
    isdel boolean,
    createtime timestamp without time zone
);


ALTER TABLE public.corecmsimages OWNER TO postgres;

--
-- Name: corecmsinvoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsinvoice (
    id integer NOT NULL,
    category integer NOT NULL,
    sourceid character varying(255) DEFAULT NULL::character varying,
    userid integer NOT NULL,
    type integer NOT NULL,
    title character varying(255) NOT NULL,
    taxnumber character varying(255) NOT NULL,
    amount numeric NOT NULL,
    status integer NOT NULL,
    remarks character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsinvoice OWNER TO postgres;

--
-- Name: corecmsinvoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsinvoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsinvoice_id_seq OWNER TO postgres;

--
-- Name: corecmsinvoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsinvoice_id_seq OWNED BY public.corecmsinvoice.id;


--
-- Name: corecmsinvoicerecord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsinvoicerecord (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    frequency integer NOT NULL
);


ALTER TABLE public.corecmsinvoicerecord OWNER TO postgres;

--
-- Name: corecmsinvoicerecord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsinvoicerecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsinvoicerecord_id_seq OWNER TO postgres;

--
-- Name: corecmsinvoicerecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsinvoicerecord_id_seq OWNED BY public.corecmsinvoicerecord.id;


--
-- Name: corecmslabel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmslabel (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    style character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.corecmslabel OWNER TO postgres;

--
-- Name: corecmslabel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmslabel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmslabel_id_seq OWNER TO postgres;

--
-- Name: corecmslabel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmslabel_id_seq OWNED BY public.corecmslabel.id;


--
-- Name: corecmsloginlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsloginlog (
    id integer NOT NULL,
    userid integer NOT NULL,
    state integer,
    logtime timestamp without time zone,
    city character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.corecmsloginlog OWNER TO postgres;

--
-- Name: corecmsloginlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsloginlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsloginlog_id_seq OWNER TO postgres;

--
-- Name: corecmsloginlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsloginlog_id_seq OWNED BY public.corecmsloginlog.id;


--
-- Name: corecmslogistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmslogistics (
    id integer NOT NULL,
    loginame character varying(255) NOT NULL,
    logicode character varying(255) NOT NULL,
    imgurl character varying(255) DEFAULT NULL::character varying,
    phone character varying(255) DEFAULT NULL::character varying,
    url character varying(255) DEFAULT NULL::character varying,
    sort integer NOT NULL,
    isdelete boolean NOT NULL
);


ALTER TABLE public.corecmslogistics OWNER TO postgres;

--
-- Name: corecmslogistics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmslogistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmslogistics_id_seq OWNER TO postgres;

--
-- Name: corecmslogistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmslogistics_id_seq OWNED BY public.corecmslogistics.id;


--
-- Name: corecmsmessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsmessage (
    id integer NOT NULL,
    userid integer NOT NULL,
    code character varying(255) NOT NULL,
    parameters text DEFAULT NULL::character varying,
    contentbody character varying(255) DEFAULT NULL::character varying,
    status boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsmessage OWNER TO postgres;

--
-- Name: corecmsmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsmessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsmessage_id_seq OWNER TO postgres;

--
-- Name: corecmsmessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsmessage_id_seq OWNED BY public.corecmsmessage.id;


--
-- Name: corecmsmessagecenter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsmessagecenter (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255) DEFAULT NULL::character varying,
    issms boolean NOT NULL,
    ismessage boolean NOT NULL,
    iswxtempletmessage boolean NOT NULL
);


ALTER TABLE public.corecmsmessagecenter OWNER TO postgres;

--
-- Name: corecmsmessagecenter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsmessagecenter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsmessagecenter_id_seq OWNER TO postgres;

--
-- Name: corecmsmessagecenter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsmessagecenter_id_seq OWNED BY public.corecmsmessagecenter.id;


--
-- Name: corecmsnotice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsnotice (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    contentbody character varying(255) NOT NULL,
    type integer,
    sort integer,
    isdel boolean,
    createtime timestamp without time zone
);


ALTER TABLE public.corecmsnotice OWNER TO postgres;

--
-- Name: corecmsnotice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsnotice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsnotice_id_seq OWNER TO postgres;

--
-- Name: corecmsnotice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsnotice_id_seq OWNED BY public.corecmsnotice.id;


--
-- Name: corecmsorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsorder (
    orderid character varying(255) NOT NULL,
    goodsamount numeric NOT NULL,
    payedamount numeric NOT NULL,
    orderamount numeric NOT NULL,
    paystatus integer NOT NULL,
    shipstatus integer NOT NULL,
    status integer NOT NULL,
    ordertype integer NOT NULL,
    receipttype integer NOT NULL,
    paymentcode character varying(255) DEFAULT NULL::character varying,
    paymenttime timestamp without time zone,
    logisticsid integer NOT NULL,
    logisticsname character varying(255) DEFAULT NULL::character varying,
    costfreight numeric NOT NULL,
    userid integer NOT NULL,
    sellerid integer NOT NULL,
    confirmstatus integer NOT NULL,
    confirmtime timestamp without time zone,
    storeid integer NOT NULL,
    shipareaid integer NOT NULL,
    shipaddress character varying(255) DEFAULT NULL::character varying,
    shipname character varying(255) DEFAULT NULL::character varying,
    shipmobile character varying(255) DEFAULT NULL::character varying,
    weight numeric NOT NULL,
    taxtype integer NOT NULL,
    taxcode character varying(255) DEFAULT NULL::character varying,
    taxtitle character varying(255) DEFAULT NULL::character varying,
    point integer NOT NULL,
    pointmoney numeric NOT NULL,
    orderdiscountamount numeric NOT NULL,
    goodsdiscountamount numeric NOT NULL,
    coupondiscountamount numeric NOT NULL,
    coupon text DEFAULT NULL::character varying,
    promotionlist character varying(255) DEFAULT NULL::character varying,
    memo character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    mark character varying(255) DEFAULT NULL::character varying,
    source integer NOT NULL,
    iscomment boolean NOT NULL,
    isdel boolean NOT NULL,
    objectid integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsorder OWNER TO postgres;

--
-- Name: corecmsorderitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsorderitem (
    id integer NOT NULL,
    orderid character varying(255) NOT NULL,
    goodsid integer NOT NULL,
    productid integer NOT NULL,
    sn character varying(255) DEFAULT NULL::character varying,
    bn character varying(255) DEFAULT NULL::character varying,
    name character varying(255) NOT NULL,
    price numeric NOT NULL,
    costprice numeric NOT NULL,
    mktprice numeric NOT NULL,
    imageurl character varying(255) NOT NULL,
    nums integer NOT NULL,
    amount numeric NOT NULL,
    promotionamount numeric NOT NULL,
    promotionlist character varying(255) DEFAULT NULL::character varying,
    weight numeric NOT NULL,
    sendnums integer NOT NULL,
    addon text DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsorderitem OWNER TO postgres;

--
-- Name: corecmsorderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsorderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsorderitem_id_seq OWNER TO postgres;

--
-- Name: corecmsorderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsorderitem_id_seq OWNED BY public.corecmsorderitem.id;


--
-- Name: corecmsorderlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsorderlog (
    id integer NOT NULL,
    orderid character varying(255) DEFAULT NULL::character varying,
    userid integer NOT NULL,
    type integer NOT NULL,
    msg character varying(255) DEFAULT NULL::character varying,
    data text DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsorderlog OWNER TO postgres;

--
-- Name: corecmsorderlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsorderlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsorderlog_id_seq OWNER TO postgres;

--
-- Name: corecmsorderlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsorderlog_id_seq OWNED BY public.corecmsorderlog.id;


--
-- Name: corecmspages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspages (
    id integer NOT NULL,
    code character varying(255) DEFAULT NULL::character varying,
    name character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    layout integer,
    type integer
);


ALTER TABLE public.corecmspages OWNER TO postgres;

--
-- Name: corecmspages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspages_id_seq OWNER TO postgres;

--
-- Name: corecmspages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspages_id_seq OWNED BY public.corecmspages.id;


--
-- Name: corecmspagesitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspagesitems (
    id integer NOT NULL,
    widgetcode character varying(255) NOT NULL,
    pagecode character varying(255) NOT NULL,
    positionid integer NOT NULL,
    sort integer NOT NULL,
    parameters text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmspagesitems OWNER TO postgres;

--
-- Name: corecmspagesitems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspagesitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspagesitems_id_seq OWNER TO postgres;

--
-- Name: corecmspagesitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspagesitems_id_seq OWNED BY public.corecmspagesitems.id;


--
-- Name: corecmspayments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspayments (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    code character varying(255) DEFAULT NULL::character varying,
    isonline boolean NOT NULL,
    parameters text DEFAULT NULL::character varying,
    sort integer NOT NULL,
    memo character varying(255) DEFAULT NULL::character varying,
    isenable boolean NOT NULL
);


ALTER TABLE public.corecmspayments OWNER TO postgres;

--
-- Name: corecmspayments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspayments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspayments_id_seq OWNER TO postgres;

--
-- Name: corecmspayments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspayments_id_seq OWNED BY public.corecmspayments.id;


--
-- Name: corecmspintuangoods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspintuangoods (
    ruleid integer NOT NULL,
    goodsid integer NOT NULL
);


ALTER TABLE public.corecmspintuangoods OWNER TO postgres;

--
-- Name: corecmspintuanrecord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspintuanrecord (
    id integer NOT NULL,
    teamid integer NOT NULL,
    userid integer NOT NULL,
    ruleid integer NOT NULL,
    goodsid integer NOT NULL,
    status integer NOT NULL,
    orderid character varying(255) NOT NULL,
    parameters character varying(255) DEFAULT NULL::character varying,
    closetime timestamp without time zone NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmspintuanrecord OWNER TO postgres;

--
-- Name: corecmspintuanrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspintuanrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspintuanrecord_id_seq OWNER TO postgres;

--
-- Name: corecmspintuanrecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspintuanrecord_id_seq OWNED BY public.corecmspintuanrecord.id;


--
-- Name: corecmspintuanrule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspintuanrule (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone NOT NULL,
    peoplenumber integer NOT NULL,
    significantinterval integer NOT NULL,
    discountamount numeric NOT NULL,
    maxnums integer NOT NULL,
    maxgoodsnums integer NOT NULL,
    sort integer NOT NULL,
    isstatusopen boolean NOT NULL,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmspintuanrule OWNER TO postgres;

--
-- Name: corecmspintuanrule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspintuanrule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspintuanrule_id_seq OWNER TO postgres;

--
-- Name: corecmspintuanrule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspintuanrule_id_seq OWNED BY public.corecmspintuanrule.id;


--
-- Name: corecmsproducts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsproducts (
    id integer NOT NULL,
    goodsid integer NOT NULL,
    barcode character varying(255) DEFAULT NULL::character varying,
    sn character varying(255) DEFAULT NULL::character varying,
    price numeric NOT NULL,
    costprice numeric NOT NULL,
    mktprice numeric NOT NULL,
    marketable boolean NOT NULL,
    weight numeric NOT NULL,
    stock integer NOT NULL,
    freezestock integer NOT NULL,
    spesdesc text DEFAULT NULL::character varying,
    isdefalut boolean NOT NULL,
    images text DEFAULT NULL::character varying,
    isdel boolean NOT NULL
);


ALTER TABLE public.corecmsproducts OWNER TO postgres;

--
-- Name: corecmsproducts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsproducts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsproducts_id_seq OWNER TO postgres;

--
-- Name: corecmsproducts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsproducts_id_seq OWNED BY public.corecmsproducts.id;


--
-- Name: corecmsproductsdistribution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsproductsdistribution (
    id integer NOT NULL,
    productsid integer NOT NULL,
    productssn character varying(255) NOT NULL,
    levelone numeric NOT NULL,
    leveltwo numeric NOT NULL,
    levelthree numeric NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsproductsdistribution OWNER TO postgres;

--
-- Name: corecmsproductsdistribution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsproductsdistribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsproductsdistribution_id_seq OWNER TO postgres;

--
-- Name: corecmsproductsdistribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsproductsdistribution_id_seq OWNED BY public.corecmsproductsdistribution.id;


--
-- Name: corecmspromotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspromotion (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type integer NOT NULL,
    sort integer NOT NULL,
    parameters text DEFAULT NULL::character varying,
    maxnums integer NOT NULL,
    maxgoodsnums integer NOT NULL,
    maxrecevienums integer NOT NULL,
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone NOT NULL,
    isexclusive boolean NOT NULL,
    isautoreceive boolean NOT NULL,
    isenable boolean NOT NULL,
    isdel boolean NOT NULL,
    effectivedays integer NOT NULL,
    effectivehours integer NOT NULL
);


ALTER TABLE public.corecmspromotion OWNER TO postgres;

--
-- Name: corecmspromotion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspromotion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspromotion_id_seq OWNER TO postgres;

--
-- Name: corecmspromotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspromotion_id_seq OWNED BY public.corecmspromotion.id;


--
-- Name: corecmspromotioncondition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspromotioncondition (
    id integer NOT NULL,
    promotionid integer,
    code character varying(255) DEFAULT NULL::character varying,
    parameters text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmspromotioncondition OWNER TO postgres;

--
-- Name: corecmspromotioncondition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspromotioncondition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspromotioncondition_id_seq OWNER TO postgres;

--
-- Name: corecmspromotioncondition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspromotioncondition_id_seq OWNED BY public.corecmspromotioncondition.id;


--
-- Name: corecmspromotionrecord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspromotionrecord (
    id integer NOT NULL,
    promotionid integer NOT NULL,
    userid integer NOT NULL,
    goodsid integer NOT NULL,
    productid integer NOT NULL,
    orderid character varying(255) NOT NULL,
    type integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmspromotionrecord OWNER TO postgres;

--
-- Name: corecmspromotionrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspromotionrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspromotionrecord_id_seq OWNER TO postgres;

--
-- Name: corecmspromotionrecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspromotionrecord_id_seq OWNED BY public.corecmspromotionrecord.id;


--
-- Name: corecmspromotionresult; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmspromotionresult (
    id integer NOT NULL,
    promotionid integer,
    code character varying(255) DEFAULT NULL::character varying,
    parameters text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmspromotionresult OWNER TO postgres;

--
-- Name: corecmspromotionresult_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmspromotionresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmspromotionresult_id_seq OWNER TO postgres;

--
-- Name: corecmspromotionresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmspromotionresult_id_seq OWNED BY public.corecmspromotionresult.id;


--
-- Name: corecmsservicedescription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsservicedescription (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    type integer NOT NULL,
    description character varying(255) NOT NULL,
    isshow boolean NOT NULL,
    sortid integer NOT NULL
);


ALTER TABLE public.corecmsservicedescription OWNER TO postgres;

--
-- Name: corecmsservicedescription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsservicedescription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsservicedescription_id_seq OWNER TO postgres;

--
-- Name: corecmsservicedescription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsservicedescription_id_seq OWNED BY public.corecmsservicedescription.id;


--
-- Name: corecmsservices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsservices (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    thumbnail character varying(255) NOT NULL,
    description character varying(255) DEFAULT NULL::character varying,
    contentbody character varying(255) NOT NULL,
    allowedmembership character varying(255) NOT NULL,
    consumablestore character varying(255) NOT NULL,
    status integer NOT NULL,
    maxbuynumber integer NOT NULL,
    amount integer NOT NULL,
    starttime timestamp without time zone NOT NULL,
    endtime timestamp without time zone NOT NULL,
    validitytype integer NOT NULL,
    validitystarttime timestamp without time zone,
    validityendtime timestamp without time zone,
    ticketnumber integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    money numeric NOT NULL
);


ALTER TABLE public.corecmsservices OWNER TO postgres;

--
-- Name: corecmsservices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsservices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsservices_id_seq OWNER TO postgres;

--
-- Name: corecmsservices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsservices_id_seq OWNED BY public.corecmsservices.id;


--
-- Name: corecmssetting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmssetting (
    skey character varying(255) NOT NULL,
    svalue text DEFAULT NULL::character varying
);


ALTER TABLE public.corecmssetting OWNER TO postgres;

--
-- Name: corecmsship; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsship (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    iscashondelivery boolean NOT NULL,
    firstunit integer NOT NULL,
    continueunit integer NOT NULL,
    isdefaultareafee boolean NOT NULL,
    areatype integer NOT NULL,
    firstunitprice numeric NOT NULL,
    continueunitprice numeric NOT NULL,
    exp text DEFAULT NULL::character varying,
    loginame character varying(255) DEFAULT NULL::character varying,
    logicode character varying(255) DEFAULT NULL::character varying,
    isdefault boolean NOT NULL,
    sort integer NOT NULL,
    status integer NOT NULL,
    isfreepostage boolean NOT NULL,
    areafee text DEFAULT NULL::character varying,
    goodsmoney numeric NOT NULL
);


ALTER TABLE public.corecmsship OWNER TO postgres;

--
-- Name: corecmsship_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsship_id_seq OWNER TO postgres;

--
-- Name: corecmsship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsship_id_seq OWNED BY public.corecmsship.id;


--
-- Name: corecmssms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmssms (
    id integer NOT NULL,
    mobile character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    parameters text NOT NULL,
    contentbody character varying(255) NOT NULL,
    ip character varying(255) NOT NULL,
    isused boolean NOT NULL,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmssms OWNER TO postgres;

--
-- Name: corecmssms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmssms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmssms_id_seq OWNER TO postgres;

--
-- Name: corecmssms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmssms_id_seq OWNED BY public.corecmssms.id;


--
-- Name: corecmsstock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsstock (
    id character varying(255) NOT NULL,
    type integer NOT NULL,
    manager integer NOT NULL,
    memo character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsstock OWNER TO postgres;

--
-- Name: corecmsstocklog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsstocklog (
    id integer NOT NULL,
    stockid character varying(255) NOT NULL,
    productid integer NOT NULL,
    goodsid integer NOT NULL,
    nums integer NOT NULL,
    sn character varying(255) NOT NULL,
    bn character varying(255) NOT NULL,
    goodsname character varying(255) NOT NULL,
    spesdesc character varying(255) NOT NULL
);


ALTER TABLE public.corecmsstocklog OWNER TO postgres;

--
-- Name: corecmsstocklog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsstocklog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsstocklog_id_seq OWNER TO postgres;

--
-- Name: corecmsstocklog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsstocklog_id_seq OWNED BY public.corecmsstocklog.id;


--
-- Name: corecmsstore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsstore (
    id integer NOT NULL,
    storename character varying(255) DEFAULT NULL::character varying,
    mobile character varying(255) DEFAULT NULL::character varying,
    linkman character varying(255) DEFAULT NULL::character varying,
    logoimage character varying(255) DEFAULT NULL::character varying,
    areaid integer NOT NULL,
    address character varying(255) DEFAULT NULL::character varying,
    coordinate character varying(255) DEFAULT NULL::character varying,
    latitude character varying(255) DEFAULT NULL::character varying,
    longitude character varying(255) DEFAULT NULL::character varying,
    isdefault boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone,
    distance numeric NOT NULL
);


ALTER TABLE public.corecmsstore OWNER TO postgres;

--
-- Name: corecmsstore_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsstore_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsstore_id_seq OWNER TO postgres;

--
-- Name: corecmsstore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsstore_id_seq OWNED BY public.corecmsstore.id;


--
-- Name: corecmsuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuser (
    id integer NOT NULL,
    username character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    mobile character varying(255) DEFAULT NULL::character varying,
    sex integer NOT NULL,
    birthday timestamp without time zone,
    avatarimage character varying(255) DEFAULT NULL::character varying,
    nickname character varying(255) DEFAULT NULL::character varying,
    balance numeric NOT NULL,
    point integer NOT NULL,
    grade integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatatime timestamp without time zone,
    status integer NOT NULL,
    parentid integer NOT NULL,
    userwx integer NOT NULL,
    isdelete boolean NOT NULL
);


ALTER TABLE public.corecmsuser OWNER TO postgres;

--
-- Name: corecmsuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuser_id_seq OWNER TO postgres;

--
-- Name: corecmsuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuser_id_seq OWNED BY public.corecmsuser.id;


--
-- Name: corecmsuserbalance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserbalance (
    id integer NOT NULL,
    userid integer NOT NULL,
    type integer NOT NULL,
    money numeric NOT NULL,
    balance numeric NOT NULL,
    sourceid character varying(255) DEFAULT NULL::character varying,
    memo character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsuserbalance OWNER TO postgres;

--
-- Name: corecmsuserbalance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserbalance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserbalance_id_seq OWNER TO postgres;

--
-- Name: corecmsuserbalance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserbalance_id_seq OWNED BY public.corecmsuserbalance.id;


--
-- Name: corecmsuserbankcard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserbankcard (
    id integer NOT NULL,
    userid integer NOT NULL,
    bankname character varying(255) DEFAULT NULL::character varying,
    bankcode character varying(255) DEFAULT NULL::character varying,
    bankareaid integer NOT NULL,
    accountbank character varying(255) DEFAULT NULL::character varying,
    accountname character varying(255) DEFAULT NULL::character varying,
    cardnumber character varying(255) DEFAULT NULL::character varying,
    cardtype integer NOT NULL,
    isdefault boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsuserbankcard OWNER TO postgres;

--
-- Name: corecmsuserbankcard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserbankcard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserbankcard_id_seq OWNER TO postgres;

--
-- Name: corecmsuserbankcard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserbankcard_id_seq OWNED BY public.corecmsuserbankcard.id;


--
-- Name: corecmsusergrade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsusergrade (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    isdefault boolean NOT NULL
);


ALTER TABLE public.corecmsusergrade OWNER TO postgres;

--
-- Name: corecmsusergrade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsusergrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsusergrade_id_seq OWNER TO postgres;

--
-- Name: corecmsusergrade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsusergrade_id_seq OWNED BY public.corecmsusergrade.id;


--
-- Name: corecmsuserlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserlog (
    id integer NOT NULL,
    userid integer NOT NULL,
    state integer,
    parameters character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone
);


ALTER TABLE public.corecmsuserlog OWNER TO postgres;

--
-- Name: corecmsuserlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserlog_id_seq OWNER TO postgres;

--
-- Name: corecmsuserlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserlog_id_seq OWNED BY public.corecmsuserlog.id;


--
-- Name: corecmsuserpointlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserpointlog (
    id integer NOT NULL,
    userid integer NOT NULL,
    type integer NOT NULL,
    num integer NOT NULL,
    balance integer NOT NULL,
    remarks character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsuserpointlog OWNER TO postgres;

--
-- Name: corecmsuserpointlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserpointlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserpointlog_id_seq OWNER TO postgres;

--
-- Name: corecmsuserpointlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserpointlog_id_seq OWNED BY public.corecmsuserpointlog.id;


--
-- Name: corecmsuserservicesorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserservicesorder (
    id integer NOT NULL,
    serviceorderid character varying(255) NOT NULL,
    userid integer NOT NULL,
    servicesid integer NOT NULL,
    ispay boolean NOT NULL,
    paytime timestamp without time zone,
    paymentid character varying(255) DEFAULT NULL::character varying,
    status integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    servicesendtime timestamp without time zone
);


ALTER TABLE public.corecmsuserservicesorder OWNER TO postgres;

--
-- Name: corecmsuserservicesorder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserservicesorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserservicesorder_id_seq OWNER TO postgres;

--
-- Name: corecmsuserservicesorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserservicesorder_id_seq OWNED BY public.corecmsuserservicesorder.id;


--
-- Name: corecmsuserservicesticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserservicesticket (
    id integer NOT NULL,
    serviceorderid character varying(255) NOT NULL,
    securitycode character varying(255) NOT NULL,
    redeemcode character varying(255) NOT NULL,
    serviceid integer NOT NULL,
    userid integer NOT NULL,
    status integer NOT NULL,
    validitytype integer NOT NULL,
    validitystarttime timestamp without time zone,
    validityendtime timestamp without time zone,
    createtime timestamp without time zone NOT NULL,
    isverification boolean NOT NULL,
    verificationtime timestamp without time zone
);


ALTER TABLE public.corecmsuserservicesticket OWNER TO postgres;

--
-- Name: corecmsuserservicesticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserservicesticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserservicesticket_id_seq OWNER TO postgres;

--
-- Name: corecmsuserservicesticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserservicesticket_id_seq OWNED BY public.corecmsuserservicesticket.id;


--
-- Name: corecmsuserservicesticketverificationlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserservicesticketverificationlog (
    id integer NOT NULL,
    storeid integer NOT NULL,
    serviceid integer NOT NULL,
    verificationuserid integer NOT NULL,
    ticketid integer NOT NULL,
    ticketredeemcode character varying(255) NOT NULL,
    verificationtime timestamp without time zone NOT NULL,
    isdel boolean NOT NULL
);


ALTER TABLE public.corecmsuserservicesticketverificationlog OWNER TO postgres;

--
-- Name: corecmsuserservicesticketverificationlog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserservicesticketverificationlog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserservicesticketverificationlog_id_seq OWNER TO postgres;

--
-- Name: corecmsuserservicesticketverificationlog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserservicesticketverificationlog_id_seq OWNED BY public.corecmsuserservicesticketverificationlog.id;


--
-- Name: corecmsusership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsusership (
    id integer NOT NULL,
    userid integer NOT NULL,
    areaid integer NOT NULL,
    address character varying(255) DEFAULT NULL::character varying,
    name character varying(255) DEFAULT NULL::character varying,
    mobile character varying(255) DEFAULT NULL::character varying,
    isdefault boolean NOT NULL,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsusership OWNER TO postgres;

--
-- Name: corecmsusership_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsusership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsusership_id_seq OWNER TO postgres;

--
-- Name: corecmsusership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsusership_id_seq OWNED BY public.corecmsusership.id;


--
-- Name: corecmsusertocash; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsusertocash (
    id integer NOT NULL,
    userid integer NOT NULL,
    money numeric NOT NULL,
    bankname character varying(255) DEFAULT NULL::character varying,
    bankcode character varying(255) DEFAULT NULL::character varying,
    bankareaid integer,
    accountbank character varying(255) DEFAULT NULL::character varying,
    accountname character varying(255) DEFAULT NULL::character varying,
    cardnumber character varying(255) DEFAULT NULL::character varying,
    withdrawals numeric NOT NULL,
    status integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsusertocash OWNER TO postgres;

--
-- Name: corecmsusertocash_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsusertocash_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsusertocash_id_seq OWNER TO postgres;

--
-- Name: corecmsusertocash_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsusertocash_id_seq OWNED BY public.corecmsusertocash.id;


--
-- Name: corecmsusertoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsusertoken (
    token character varying(255) NOT NULL,
    userid integer NOT NULL,
    platform smallint NOT NULL,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.corecmsusertoken OWNER TO postgres;

--
-- Name: corecmsuserwechatinfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserwechatinfo (
    id integer NOT NULL,
    type integer,
    userid integer NOT NULL,
    openid character varying(255) DEFAULT NULL::character varying,
    sessionkey character varying(255) DEFAULT NULL::character varying,
    unionid character varying(255) DEFAULT NULL::character varying,
    avatar character varying(255) DEFAULT NULL::character varying,
    nickname character varying(255) DEFAULT NULL::character varying,
    gender integer NOT NULL,
    language character varying(255) DEFAULT NULL::character varying,
    city character varying(255) DEFAULT NULL::character varying,
    province character varying(255) DEFAULT NULL::character varying,
    country character varying(255) DEFAULT NULL::character varying,
    countrycode character varying(255) DEFAULT NULL::character varying,
    mobile character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsuserwechatinfo OWNER TO postgres;

--
-- Name: corecmsuserwechatinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserwechatinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserwechatinfo_id_seq OWNER TO postgres;

--
-- Name: corecmsuserwechatinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserwechatinfo_id_seq OWNED BY public.corecmsuserwechatinfo.id;


--
-- Name: corecmsuserwechatmsgsubscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserwechatmsgsubscription (
    id integer NOT NULL,
    templateid character varying(255) NOT NULL,
    userid integer NOT NULL,
    type character varying(255) NOT NULL
);


ALTER TABLE public.corecmsuserwechatmsgsubscription OWNER TO postgres;

--
-- Name: corecmsuserwechatmsgsubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserwechatmsgsubscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserwechatmsgsubscription_id_seq OWNER TO postgres;

--
-- Name: corecmsuserwechatmsgsubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserwechatmsgsubscription_id_seq OWNED BY public.corecmsuserwechatmsgsubscription.id;


--
-- Name: corecmsuserwechatmsgsubscriptionswitch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserwechatmsgsubscriptionswitch (
    id integer NOT NULL,
    userid integer NOT NULL,
    isswitch boolean NOT NULL
);


ALTER TABLE public.corecmsuserwechatmsgsubscriptionswitch OWNER TO postgres;

--
-- Name: corecmsuserwechatmsgsubscriptionswitch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserwechatmsgsubscriptionswitch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserwechatmsgsubscriptionswitch_id_seq OWNER TO postgres;

--
-- Name: corecmsuserwechatmsgsubscriptionswitch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserwechatmsgsubscriptionswitch_id_seq OWNED BY public.corecmsuserwechatmsgsubscriptionswitch.id;


--
-- Name: corecmsuserwechatmsgtemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsuserwechatmsgtemplate (
    id integer NOT NULL,
    templatetitle character varying(255) DEFAULT NULL::character varying,
    templatedes character varying(255) DEFAULT NULL::character varying,
    templateid character varying(255) DEFAULT NULL::character varying,
    data01 character varying(255) DEFAULT NULL::character varying,
    data02 character varying(255) DEFAULT NULL::character varying,
    data03 character varying(255) DEFAULT NULL::character varying,
    data04 character varying(255) DEFAULT NULL::character varying,
    data05 character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    sortid integer NOT NULL
);


ALTER TABLE public.corecmsuserwechatmsgtemplate OWNER TO postgres;

--
-- Name: corecmsuserwechatmsgtemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsuserwechatmsgtemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsuserwechatmsgtemplate_id_seq OWNER TO postgres;

--
-- Name: corecmsuserwechatmsgtemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsuserwechatmsgtemplate_id_seq OWNED BY public.corecmsuserwechatmsgtemplate.id;


--
-- Name: corecmsweixinauthor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsweixinauthor (
    id integer NOT NULL,
    nickname character varying(255) DEFAULT NULL::character varying,
    headimg character varying(255) DEFAULT NULL::character varying,
    servicetypeinfo character varying(255) DEFAULT NULL::character varying,
    verifytypeinfo integer,
    username character varying(255) DEFAULT NULL::character varying,
    signature text DEFAULT NULL::character varying,
    principalname character varying(255) DEFAULT NULL::character varying,
    businessinfo text DEFAULT NULL::character varying,
    qrcodeurl character varying(255) DEFAULT NULL::character varying,
    authorizationinfo text DEFAULT NULL::character varying,
    appid character varying(255) DEFAULT NULL::character varying,
    appsecret character varying(255) DEFAULT NULL::character varying,
    miniprograminfo text DEFAULT NULL::character varying,
    funcinfo text DEFAULT NULL::character varying,
    authorizerrefreshtoken character varying(255) DEFAULT NULL::character varying,
    authorizeraccesstoken character varying(255) DEFAULT NULL::character varying,
    bindtype integer,
    authortype character varying(255) DEFAULT NULL::character varying,
    expiresin integer,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsweixinauthor OWNER TO postgres;

--
-- Name: corecmsweixinauthor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsweixinauthor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsweixinauthor_id_seq OWNER TO postgres;

--
-- Name: corecmsweixinauthor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsweixinauthor_id_seq OWNED BY public.corecmsweixinauthor.id;


--
-- Name: corecmsweixinmediamessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsweixinmediamessage (
    id integer NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    author character varying(255) DEFAULT NULL::character varying,
    brief character varying(255) DEFAULT NULL::character varying,
    imageurl character varying(255) DEFAULT NULL::character varying,
    contentbody character varying(255) DEFAULT NULL::character varying,
    url character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsweixinmediamessage OWNER TO postgres;

--
-- Name: corecmsweixinmediamessage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsweixinmediamessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsweixinmediamessage_id_seq OWNER TO postgres;

--
-- Name: corecmsweixinmediamessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsweixinmediamessage_id_seq OWNED BY public.corecmsweixinmediamessage.id;


--
-- Name: corecmsweixinmenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsweixinmenu (
    id integer NOT NULL,
    menuid integer NOT NULL,
    parentid integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    parameters text NOT NULL
);


ALTER TABLE public.corecmsweixinmenu OWNER TO postgres;

--
-- Name: corecmsweixinmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsweixinmenu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsweixinmenu_id_seq OWNER TO postgres;

--
-- Name: corecmsweixinmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsweixinmenu_id_seq OWNED BY public.corecmsweixinmenu.id;


--
-- Name: corecmsweixinmessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corecmsweixinmessage (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    type integer,
    parameters text DEFAULT NULL::character varying,
    isattention boolean,
    isdefault boolean,
    isenable boolean,
    createtime timestamp without time zone,
    updatetime timestamp without time zone
);


ALTER TABLE public.corecmsweixinmessage OWNER TO postgres;

--
-- Name: corecmsweixinmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.corecmsweixinmessage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.corecmsweixinmessage_id_seq OWNER TO postgres;

--
-- Name: corecmsweixinmessage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.corecmsweixinmessage_id_seq OWNED BY public.corecmsweixinmessage.id;


--
-- Name: sysdictionary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysdictionary (
    id integer NOT NULL,
    dictcode character varying(255) NOT NULL,
    dictname character varying(255) NOT NULL,
    comments character varying(255) DEFAULT NULL::character varying,
    sortnumber integer NOT NULL,
    deleted boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysdictionary OWNER TO postgres;

--
-- Name: sysdictionary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysdictionary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysdictionary_id_seq OWNER TO postgres;

--
-- Name: sysdictionary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysdictionary_id_seq OWNED BY public.sysdictionary.id;


--
-- Name: sysdictionarydata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysdictionarydata (
    id integer NOT NULL,
    dictid integer,
    dictdatacode character varying(255) DEFAULT NULL::character varying,
    dictdataname character varying(255) DEFAULT NULL::character varying,
    comments character varying(255) DEFAULT NULL::character varying,
    sortnumber integer NOT NULL,
    deleted boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysdictionarydata OWNER TO postgres;

--
-- Name: sysdictionarydata_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysdictionarydata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysdictionarydata_id_seq OWNER TO postgres;

--
-- Name: sysdictionarydata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysdictionarydata_id_seq OWNED BY public.sysdictionarydata.id;


--
-- Name: sysloginrecord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysloginrecord (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    os character varying(255) DEFAULT NULL::character varying,
    device character varying(255) DEFAULT NULL::character varying,
    browser character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    opertype integer NOT NULL,
    comments character varying(255) DEFAULT NULL::character varying,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysloginrecord OWNER TO postgres;

--
-- Name: sysloginrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysloginrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysloginrecord_id_seq OWNER TO postgres;

--
-- Name: sysloginrecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysloginrecord_id_seq OWNED BY public.sysloginrecord.id;


--
-- Name: sysmenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysmenu (
    id integer NOT NULL,
    parentid integer NOT NULL,
    identificationcode character varying(255) DEFAULT NULL::character varying,
    menuname character varying(255) DEFAULT NULL::character varying,
    menuicon character varying(255) DEFAULT NULL::character varying,
    path character varying(255) DEFAULT NULL::character varying,
    component character varying(255) DEFAULT NULL::character varying,
    menutype integer NOT NULL,
    sortnumber integer,
    authority character varying(255) DEFAULT NULL::character varying,
    target character varying(255) DEFAULT NULL::character varying,
    iconcolor character varying(255) DEFAULT NULL::character varying,
    hide boolean NOT NULL,
    deleted boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysmenu OWNER TO postgres;

--
-- Name: sysmenu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysmenu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysmenu_id_seq OWNER TO postgres;

--
-- Name: sysmenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysmenu_id_seq OWNED BY public.sysmenu.id;


--
-- Name: sysnlogrecords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysnlogrecords (
    id integer NOT NULL,
    logdate timestamp without time zone,
    loglevel character varying(255) DEFAULT NULL::character varying,
    logtype character varying(255) DEFAULT NULL::character varying,
    logtitle character varying(255) DEFAULT NULL::character varying,
    logger character varying(255) DEFAULT NULL::character varying,
    message text DEFAULT NULL::character varying,
    exception text DEFAULT NULL::character varying,
    machinename character varying(255) DEFAULT NULL::character varying,
    machineip character varying(255) DEFAULT NULL::character varying,
    netrequestmethod character varying(255) DEFAULT NULL::character varying,
    netrequesturl character varying(255) DEFAULT NULL::character varying,
    netuserisauthenticated character varying(255) DEFAULT NULL::character varying,
    netuserauthtype character varying(255) DEFAULT NULL::character varying,
    netuseridentity character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.sysnlogrecords OWNER TO postgres;

--
-- Name: sysnlogrecords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysnlogrecords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysnlogrecords_id_seq OWNER TO postgres;

--
-- Name: sysnlogrecords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysnlogrecords_id_seq OWNED BY public.sysnlogrecords.id;


--
-- Name: sysoperrecord; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysoperrecord (
    id integer NOT NULL,
    userid integer NOT NULL,
    username character varying(255) DEFAULT NULL::character varying,
    model character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    url character varying(255) DEFAULT NULL::character varying,
    requestmethod character varying(255) DEFAULT NULL::character varying,
    opermethod character varying(255) DEFAULT NULL::character varying,
    param text DEFAULT NULL::character varying,
    result text DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    spendtime character varying(255) NOT NULL,
    state integer NOT NULL,
    createtime timestamp without time zone NOT NULL
);


ALTER TABLE public.sysoperrecord OWNER TO postgres;

--
-- Name: sysoperrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysoperrecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysoperrecord_id_seq OWNER TO postgres;

--
-- Name: sysoperrecord_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysoperrecord_id_seq OWNED BY public.sysoperrecord.id;


--
-- Name: sysorganization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysorganization (
    id integer NOT NULL,
    parentid integer NOT NULL,
    organizationname character varying(255) DEFAULT NULL::character varying,
    organizationfullname character varying(255) DEFAULT NULL::character varying,
    organizationtype integer NOT NULL,
    leaderid integer,
    sortnumber integer NOT NULL,
    comments character varying(255) DEFAULT NULL::character varying,
    deleted boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysorganization OWNER TO postgres;

--
-- Name: sysorganization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysorganization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysorganization_id_seq OWNER TO postgres;

--
-- Name: sysorganization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysorganization_id_seq OWNED BY public.sysorganization.id;


--
-- Name: sysrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysrole (
    id integer NOT NULL,
    rolename character varying(255) NOT NULL,
    rolecode character varying(255) DEFAULT NULL::character varying,
    comments character varying(255) DEFAULT NULL::character varying,
    deleted boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysrole OWNER TO postgres;

--
-- Name: sysrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysrole_id_seq OWNER TO postgres;

--
-- Name: sysrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysrole_id_seq OWNED BY public.sysrole.id;


--
-- Name: sysrolemenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysrolemenu (
    id integer NOT NULL,
    roleid integer NOT NULL,
    menuid integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysrolemenu OWNER TO postgres;

--
-- Name: sysrolemenu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysrolemenu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysrolemenu_id_seq OWNER TO postgres;

--
-- Name: sysrolemenu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysrolemenu_id_seq OWNED BY public.sysrolemenu.id;


--
-- Name: systasklog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.systasklog (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    createtime timestamp without time zone NOT NULL,
    issuccess boolean NOT NULL,
    parameters text DEFAULT NULL::character varying
);


ALTER TABLE public.systasklog OWNER TO postgres;

--
-- Name: systasklog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.systasklog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.systasklog_id_seq OWNER TO postgres;

--
-- Name: systasklog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.systasklog_id_seq OWNED BY public.systasklog.id;


--
-- Name: sysuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysuser (
    id integer NOT NULL,
    username character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    nickname character varying(255) DEFAULT NULL::character varying,
    avatar character varying(255) DEFAULT NULL::character varying,
    sex integer NOT NULL,
    phone character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    emailverified boolean NOT NULL,
    truename character varying(255) DEFAULT NULL::character varying,
    idcard character varying(255) DEFAULT NULL::character varying,
    birthday timestamp without time zone,
    introduction character varying(255) DEFAULT NULL::character varying,
    organizationid integer,
    state integer NOT NULL,
    deleted boolean NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysuser OWNER TO postgres;

--
-- Name: sysuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysuser_id_seq OWNER TO postgres;

--
-- Name: sysuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysuser_id_seq OWNED BY public.sysuser.id;


--
-- Name: sysuserrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sysuserrole (
    id integer NOT NULL,
    userid integer NOT NULL,
    roleid integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    updatetime timestamp without time zone
);


ALTER TABLE public.sysuserrole OWNER TO postgres;

--
-- Name: sysuserrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sysuserrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sysuserrole_id_seq OWNER TO postgres;

--
-- Name: sysuserrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sysuserrole_id_seq OWNED BY public.sysuserrole.id;


--
-- Name: wechataccesstoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wechataccesstoken (
    id integer NOT NULL,
    apptype integer NOT NULL,
    appid character varying(255) NOT NULL,
    accesstoken character varying(255) NOT NULL,
    expiretimestamp bigint NOT NULL,
    updatetimestamp bigint NOT NULL,
    createtimestamp bigint NOT NULL
);


ALTER TABLE public.wechataccesstoken OWNER TO postgres;

--
-- Name: wechataccesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wechataccesstoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wechataccesstoken_id_seq OWNER TO postgres;

--
-- Name: wechataccesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wechataccesstoken_id_seq OWNED BY public.wechataccesstoken.id;


--
-- Name: corecmsadvertisement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsadvertisement ALTER COLUMN id SET DEFAULT nextval('public.corecmsadvertisement_id_seq'::regclass);


--
-- Name: corecmsadvertposition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsadvertposition ALTER COLUMN id SET DEFAULT nextval('public.corecmsadvertposition_id_seq'::regclass);


--
-- Name: corecmsagent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagent ALTER COLUMN id SET DEFAULT nextval('public.corecmsagent_id_seq'::regclass);


--
-- Name: corecmsagentgoods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentgoods ALTER COLUMN id SET DEFAULT nextval('public.corecmsagentgoods_id_seq'::regclass);


--
-- Name: corecmsagentgrade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentgrade ALTER COLUMN id SET DEFAULT nextval('public.corecmsagentgrade_id_seq'::regclass);


--
-- Name: corecmsagentorder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentorder ALTER COLUMN id SET DEFAULT nextval('public.corecmsagentorder_id_seq'::regclass);


--
-- Name: corecmsagentproducts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentproducts ALTER COLUMN id SET DEFAULT nextval('public.corecmsagentproducts_id_seq'::regclass);


--
-- Name: corecmsapiaccesstoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsapiaccesstoken ALTER COLUMN id SET DEFAULT nextval('public.corecmsapiaccesstoken_id_seq'::regclass);


--
-- Name: corecmsarea id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsarea ALTER COLUMN id SET DEFAULT nextval('public.corecmsarea_id_seq'::regclass);


--
-- Name: corecmsarticle id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsarticle ALTER COLUMN id SET DEFAULT nextval('public.corecmsarticle_id_seq'::regclass);


--
-- Name: corecmsarticletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsarticletype ALTER COLUMN id SET DEFAULT nextval('public.corecmsarticletype_id_seq'::regclass);


--
-- Name: corecmsbillaftersalesitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillaftersalesitem ALTER COLUMN id SET DEFAULT nextval('public.corecmsbillaftersalesitem_id_seq'::regclass);


--
-- Name: corecmsbilldeliveryitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbilldeliveryitem ALTER COLUMN id SET DEFAULT nextval('public.corecmsbilldeliveryitem_id_seq'::regclass);


--
-- Name: corecmsbillreshipitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillreshipitem ALTER COLUMN id SET DEFAULT nextval('public.corecmsbillreshipitem_id_seq'::regclass);


--
-- Name: corecmsbrand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbrand ALTER COLUMN id SET DEFAULT nextval('public.corecmsbrand_id_seq'::regclass);


--
-- Name: corecmscart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmscart ALTER COLUMN id SET DEFAULT nextval('public.corecmscart_id_seq'::regclass);


--
-- Name: corecmsclerk id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsclerk ALTER COLUMN id SET DEFAULT nextval('public.corecmsclerk_id_seq'::regclass);


--
-- Name: corecmscoupon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmscoupon ALTER COLUMN id SET DEFAULT nextval('public.corecmscoupon_id_seq'::regclass);


--
-- Name: corecmsdistribution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistribution ALTER COLUMN id SET DEFAULT nextval('public.corecmsdistribution_id_seq'::regclass);


--
-- Name: corecmsdistributioncondition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributioncondition ALTER COLUMN id SET DEFAULT nextval('public.corecmsdistributioncondition_id_seq'::regclass);


--
-- Name: corecmsdistributiongrade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributiongrade ALTER COLUMN id SET DEFAULT nextval('public.corecmsdistributiongrade_id_seq'::regclass);


--
-- Name: corecmsdistributionorder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributionorder ALTER COLUMN id SET DEFAULT nextval('public.corecmsdistributionorder_id_seq'::regclass);


--
-- Name: corecmsdistributionresult id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributionresult ALTER COLUMN id SET DEFAULT nextval('public.corecmsdistributionresult_id_seq'::regclass);


--
-- Name: corecmsform id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsform ALTER COLUMN id SET DEFAULT nextval('public.corecmsform_id_seq'::regclass);


--
-- Name: corecmsformitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsformitem ALTER COLUMN id SET DEFAULT nextval('public.corecmsformitem_id_seq'::regclass);


--
-- Name: corecmsformsubmit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsformsubmit ALTER COLUMN id SET DEFAULT nextval('public.corecmsformsubmit_id_seq'::regclass);


--
-- Name: corecmsformsubmitdetail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsformsubmitdetail ALTER COLUMN id SET DEFAULT nextval('public.corecmsformsubmitdetail_id_seq'::regclass);


--
-- Name: corecmsgoods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoods ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoods_id_seq'::regclass);


--
-- Name: corecmsgoodsbrowsing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodsbrowsing ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodsbrowsing_id_seq'::regclass);


--
-- Name: corecmsgoodscategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscategory ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodscategory_id_seq'::regclass);


--
-- Name: corecmsgoodscategoryextend id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscategoryextend ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodscategoryextend_id_seq'::regclass);


--
-- Name: corecmsgoodscollection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscollection ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodscollection_id_seq'::regclass);


--
-- Name: corecmsgoodscomment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscomment ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodscomment_id_seq'::regclass);


--
-- Name: corecmsgoodsgrade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodsgrade ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodsgrade_id_seq'::regclass);


--
-- Name: corecmsgoodsparams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodsparams ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodsparams_id_seq'::regclass);


--
-- Name: corecmsgoodstypespec id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodstypespec ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodstypespec_id_seq'::regclass);


--
-- Name: corecmsgoodstypespecvalue id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodstypespecvalue ALTER COLUMN id SET DEFAULT nextval('public.corecmsgoodstypespecvalue_id_seq'::regclass);


--
-- Name: corecmsinvoice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsinvoice ALTER COLUMN id SET DEFAULT nextval('public.corecmsinvoice_id_seq'::regclass);


--
-- Name: corecmsinvoicerecord id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsinvoicerecord ALTER COLUMN id SET DEFAULT nextval('public.corecmsinvoicerecord_id_seq'::regclass);


--
-- Name: corecmslabel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmslabel ALTER COLUMN id SET DEFAULT nextval('public.corecmslabel_id_seq'::regclass);


--
-- Name: corecmsloginlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsloginlog ALTER COLUMN id SET DEFAULT nextval('public.corecmsloginlog_id_seq'::regclass);


--
-- Name: corecmslogistics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmslogistics ALTER COLUMN id SET DEFAULT nextval('public.corecmslogistics_id_seq'::regclass);


--
-- Name: corecmsmessage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsmessage ALTER COLUMN id SET DEFAULT nextval('public.corecmsmessage_id_seq'::regclass);


--
-- Name: corecmsmessagecenter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsmessagecenter ALTER COLUMN id SET DEFAULT nextval('public.corecmsmessagecenter_id_seq'::regclass);


--
-- Name: corecmsnotice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsnotice ALTER COLUMN id SET DEFAULT nextval('public.corecmsnotice_id_seq'::regclass);


--
-- Name: corecmsorderitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsorderitem ALTER COLUMN id SET DEFAULT nextval('public.corecmsorderitem_id_seq'::regclass);


--
-- Name: corecmsorderlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsorderlog ALTER COLUMN id SET DEFAULT nextval('public.corecmsorderlog_id_seq'::regclass);


--
-- Name: corecmspages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspages ALTER COLUMN id SET DEFAULT nextval('public.corecmspages_id_seq'::regclass);


--
-- Name: corecmspagesitems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspagesitems ALTER COLUMN id SET DEFAULT nextval('public.corecmspagesitems_id_seq'::regclass);


--
-- Name: corecmspayments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspayments ALTER COLUMN id SET DEFAULT nextval('public.corecmspayments_id_seq'::regclass);


--
-- Name: corecmspintuanrecord id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspintuanrecord ALTER COLUMN id SET DEFAULT nextval('public.corecmspintuanrecord_id_seq'::regclass);


--
-- Name: corecmspintuanrule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspintuanrule ALTER COLUMN id SET DEFAULT nextval('public.corecmspintuanrule_id_seq'::regclass);


--
-- Name: corecmsproducts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsproducts ALTER COLUMN id SET DEFAULT nextval('public.corecmsproducts_id_seq'::regclass);


--
-- Name: corecmsproductsdistribution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsproductsdistribution ALTER COLUMN id SET DEFAULT nextval('public.corecmsproductsdistribution_id_seq'::regclass);


--
-- Name: corecmspromotion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotion ALTER COLUMN id SET DEFAULT nextval('public.corecmspromotion_id_seq'::regclass);


--
-- Name: corecmspromotioncondition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotioncondition ALTER COLUMN id SET DEFAULT nextval('public.corecmspromotioncondition_id_seq'::regclass);


--
-- Name: corecmspromotionrecord id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotionrecord ALTER COLUMN id SET DEFAULT nextval('public.corecmspromotionrecord_id_seq'::regclass);


--
-- Name: corecmspromotionresult id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotionresult ALTER COLUMN id SET DEFAULT nextval('public.corecmspromotionresult_id_seq'::regclass);


--
-- Name: corecmsservicedescription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsservicedescription ALTER COLUMN id SET DEFAULT nextval('public.corecmsservicedescription_id_seq'::regclass);


--
-- Name: corecmsservices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsservices ALTER COLUMN id SET DEFAULT nextval('public.corecmsservices_id_seq'::regclass);


--
-- Name: corecmsship id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsship ALTER COLUMN id SET DEFAULT nextval('public.corecmsship_id_seq'::regclass);


--
-- Name: corecmssms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmssms ALTER COLUMN id SET DEFAULT nextval('public.corecmssms_id_seq'::regclass);


--
-- Name: corecmsstocklog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsstocklog ALTER COLUMN id SET DEFAULT nextval('public.corecmsstocklog_id_seq'::regclass);


--
-- Name: corecmsstore id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsstore ALTER COLUMN id SET DEFAULT nextval('public.corecmsstore_id_seq'::regclass);


--
-- Name: corecmsuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuser ALTER COLUMN id SET DEFAULT nextval('public.corecmsuser_id_seq'::regclass);


--
-- Name: corecmsuserbalance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserbalance ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserbalance_id_seq'::regclass);


--
-- Name: corecmsuserbankcard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserbankcard ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserbankcard_id_seq'::regclass);


--
-- Name: corecmsusergrade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusergrade ALTER COLUMN id SET DEFAULT nextval('public.corecmsusergrade_id_seq'::regclass);


--
-- Name: corecmsuserlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserlog ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserlog_id_seq'::regclass);


--
-- Name: corecmsuserpointlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserpointlog ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserpointlog_id_seq'::regclass);


--
-- Name: corecmsuserservicesorder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserservicesorder ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserservicesorder_id_seq'::regclass);


--
-- Name: corecmsuserservicesticket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserservicesticket ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserservicesticket_id_seq'::regclass);


--
-- Name: corecmsuserservicesticketverificationlog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserservicesticketverificationlog ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserservicesticketverificationlog_id_seq'::regclass);


--
-- Name: corecmsusership id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusership ALTER COLUMN id SET DEFAULT nextval('public.corecmsusership_id_seq'::regclass);


--
-- Name: corecmsusertocash id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusertocash ALTER COLUMN id SET DEFAULT nextval('public.corecmsusertocash_id_seq'::regclass);


--
-- Name: corecmsuserwechatinfo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatinfo ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserwechatinfo_id_seq'::regclass);


--
-- Name: corecmsuserwechatmsgsubscription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatmsgsubscription ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserwechatmsgsubscription_id_seq'::regclass);


--
-- Name: corecmsuserwechatmsgsubscriptionswitch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatmsgsubscriptionswitch ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserwechatmsgsubscriptionswitch_id_seq'::regclass);


--
-- Name: corecmsuserwechatmsgtemplate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatmsgtemplate ALTER COLUMN id SET DEFAULT nextval('public.corecmsuserwechatmsgtemplate_id_seq'::regclass);


--
-- Name: corecmsweixinauthor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinauthor ALTER COLUMN id SET DEFAULT nextval('public.corecmsweixinauthor_id_seq'::regclass);


--
-- Name: corecmsweixinmediamessage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinmediamessage ALTER COLUMN id SET DEFAULT nextval('public.corecmsweixinmediamessage_id_seq'::regclass);


--
-- Name: corecmsweixinmenu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinmenu ALTER COLUMN id SET DEFAULT nextval('public.corecmsweixinmenu_id_seq'::regclass);


--
-- Name: corecmsweixinmessage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinmessage ALTER COLUMN id SET DEFAULT nextval('public.corecmsweixinmessage_id_seq'::regclass);


--
-- Name: sysdictionary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysdictionary ALTER COLUMN id SET DEFAULT nextval('public.sysdictionary_id_seq'::regclass);


--
-- Name: sysdictionarydata id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysdictionarydata ALTER COLUMN id SET DEFAULT nextval('public.sysdictionarydata_id_seq'::regclass);


--
-- Name: sysloginrecord id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysloginrecord ALTER COLUMN id SET DEFAULT nextval('public.sysloginrecord_id_seq'::regclass);


--
-- Name: sysmenu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysmenu ALTER COLUMN id SET DEFAULT nextval('public.sysmenu_id_seq'::regclass);


--
-- Name: sysnlogrecords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysnlogrecords ALTER COLUMN id SET DEFAULT nextval('public.sysnlogrecords_id_seq'::regclass);


--
-- Name: sysoperrecord id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysoperrecord ALTER COLUMN id SET DEFAULT nextval('public.sysoperrecord_id_seq'::regclass);


--
-- Name: sysorganization id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysorganization ALTER COLUMN id SET DEFAULT nextval('public.sysorganization_id_seq'::regclass);


--
-- Name: sysrole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysrole ALTER COLUMN id SET DEFAULT nextval('public.sysrole_id_seq'::regclass);


--
-- Name: sysrolemenu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysrolemenu ALTER COLUMN id SET DEFAULT nextval('public.sysrolemenu_id_seq'::regclass);


--
-- Name: systasklog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.systasklog ALTER COLUMN id SET DEFAULT nextval('public.systasklog_id_seq'::regclass);


--
-- Name: sysuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysuser ALTER COLUMN id SET DEFAULT nextval('public.sysuser_id_seq'::regclass);


--
-- Name: sysuserrole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysuserrole ALTER COLUMN id SET DEFAULT nextval('public.sysuserrole_id_seq'::regclass);


--
-- Name: wechataccesstoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wechataccesstoken ALTER COLUMN id SET DEFAULT nextval('public.wechataccesstoken_id_seq'::regclass);


--
-- Data for Name: corecmsadvertisement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsadvertisement (id, positionid, name, imageurl, val, valdes, sort, createtime, updatetime, code, type) FROM stdin;
5	2	OneLeat一叶子	http://files.mvccms.cn/Upload/20201121/20201121204841_7626.jpg	4124	海南黄肉老树波罗蜜，爆香脆甜满屋飘香20-30斤包邮	1	2020-11-21 20:48:49	\N	TplIndexBanner1	2
\.


--
-- Data for Name: corecmsadvertposition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsadvertposition (id, name, code, createtime, updatetime, isenable, sort) FROM stdin;
2	首页幻灯片一	TplIndexBanner1	2020-03-13 01:06:05	2020-08-30 16:03:59	f	20
\.


--
-- Data for Name: corecmsagent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsagent (id, userid, name, gradeid, mobile, weixin, qq, storename, storelogo, storebanner, storedesc, verifystatus, createtime, updatetime, verifytime, isdelete) FROM stdin;
\.


--
-- Data for Name: corecmsagentgoods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsagentgoods (id, goodid, goodrefreshtime, sortid, isenable, createtime, updatetime) FROM stdin;
1	4030	2021-05-13 00:24:45	1	t	2021-05-13 00:18:52	2021-05-13 00:24:55
2	4118	2021-05-14 10:48:13	1	t	2021-05-13 21:46:53	2021-05-14 10:49:17
3	4146	2021-05-25 13:32:51	1	t	2021-05-13 21:47:32	2021-05-26 12:46:17
4	4143	2021-05-30 13:49:39	1	t	2021-05-13 21:47:51	2021-05-30 22:29:58
5	4151	2021-05-13 22:13:35	1	t	2021-05-13 21:48:09	2021-05-13 22:22:06
6	4124	2021-05-13 22:16:50	1	t	2021-05-13 22:29:03	\N
7	4153	2021-05-27 19:54:47	1	t	2021-05-13 22:30:57	2021-05-27 19:55:57
8	4103	2020-10-24 14:54:20	1	t	2021-05-13 22:32:26	\N
9	4101	2021-05-17 10:14:22	1	t	2021-05-13 22:32:55	2021-05-17 10:15:58
10	4097	2021-04-23 00:37:40	1	t	2021-05-13 22:33:24	\N
11	4093	2021-04-28 21:07:59	1	t	2021-05-13 22:33:38	2021-05-17 10:16:06
12	4066	2021-04-24 20:56:09	1	t	2021-05-13 22:33:54	\N
13	4048	2021-05-27 20:01:54	1	t	2021-05-13 22:34:15	2021-05-27 20:02:07
14	4045	2020-09-29 19:30:08	1	t	2021-05-13 22:34:38	\N
15	4047	2020-10-19 21:03:32	1	t	2021-05-13 22:34:50	\N
17	4051	2021-05-15 14:18:40	1	t	2021-05-15 14:20:19	\N
18	4038	2021-05-15 15:33:40	1	t	2021-05-15 14:21:02	2021-05-15 15:33:55
19	4123	2021-05-15 14:25:41	1	t	2021-05-15 14:26:52	\N
20	4154	\N	1	t	2021-05-15 15:05:53	\N
21	4109	2021-05-18 23:14:11	1	t	2021-05-18 23:02:46	2021-05-27 00:18:14
22	4091	2021-05-25 09:29:38	1	t	2021-05-19 13:48:21	2021-05-26 12:46:05
23	4155	2021-05-30 13:42:20	1	t	2021-05-24 07:18:13	2021-05-30 22:29:54
25	4064	2021-05-25 23:16:46	1	t	2021-05-25 23:18:53	\N
26	4156	2021-05-26 22:39:28	1	t	2021-05-26 22:41:37	\N
27	4157	2021-05-31 08:53:38	1	t	2021-05-30 22:30:10	2021-05-31 08:54:42
\.


--
-- Data for Name: corecmsagentgrade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsagentgrade (id, name, isdefault, isautoupgrade, defaultsalespricetype, defaultsalespricenumber, sortid, description) FROM stdin;
1	联合创始人	t	t	1	1	1	一级代理商
2	合伙人	f	f	1	2	2	二级代理商
3	金牌代理	f	f	1	3	3	三级代理商
4	四级代理商	f	f	1	4	4	四级代理商
5	五级代理商	f	f	1	5	5	五级代理商
6	六级代理商	f	f	1	6	6	六级代理商
7	七级代理商	f	f	1	7	7	七级代理商
8	八级代理商	f	f	1	8	8	八级代理商
9	九级代理商	f	f	1	9	9	九级代理商
\.


--
-- Data for Name: corecmsagentorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsagentorder (id, userid, buyuserid, orderid, amount, issettlement, createtime, updatetime, isdelete) FROM stdin;
\.


--
-- Data for Name: corecmsagentproducts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsagentproducts (id, agentgoodsid, goodid, productid, productcostprice, productprice, agentgradeid, agentgradeprice, createtime, updatetime, isdel) FROM stdin;
\.


--
-- Data for Name: corecmsapiaccesstoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsapiaccesstoken (id, name, code, machinecode, accesstoken, refreshtoken, expiresin, expiressendtime, parameters, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsarea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsarea (id, parentid, depth, name, postalcode, sort) FROM stdin;
110000	0	1	北京市	100000	100
110100	110000	2	北京市	100000	100
110101	110100	3	东城区	0	100
110102	110100	3	西城区	0	100
110105	110100	3	朝阳区	0	100
110106	110100	3	丰台区	0	100
110107	110100	3	石景山区	0	100
110108	110100	3	海淀区	0	100
110109	110100	3	门头沟区	0	100
110111	110100	3	房山区	0	100
110112	110100	3	通州区	0	100
110113	110100	3	顺义区	0	100
110114	110100	3	昌平区	0	100
110115	110100	3	大兴区	0	100
110116	110100	3	怀柔区	0	100
110117	110100	3	平谷区	0	100
110118	110100	3	密云区	0	100
110119	110100	3	延庆区	0	100
120000	0	1	天津市	0	100
120100	120000	2	天津市	0	100
120101	120100	3	和平区	0	100
120102	120100	3	河东区	0	100
120103	120100	3	河西区	0	100
120104	120100	3	南开区	0	100
120105	120100	3	河北区	0	100
120106	120100	3	红桥区	0	100
120110	120100	3	东丽区	0	100
120111	120100	3	西青区	0	100
120112	120100	3	津南区	0	100
120113	120100	3	北辰区	0	100
120114	120100	3	武清区	0	100
120115	120100	3	宝坻区	0	100
120116	120100	3	滨海新区	0	100
120117	120100	3	宁河区	0	100
120118	120100	3	静海区	0	100
120119	120100	3	蓟州区	0	100
130000	0	1	河北省	0	100
130100	130000	2	石家庄市	0	100
130101	130100	3	市辖区	0	100
130102	130100	3	长安区	0	100
130104	130100	3	桥西区	0	100
130105	130100	3	新华区	0	100
130107	130100	3	井陉矿区	0	100
130108	130100	3	裕华区	0	100
130109	130100	3	藁城区	0	100
130110	130100	3	鹿泉区	0	100
130111	130100	3	栾城区	0	100
130121	130100	3	井陉县	0	100
130123	130100	3	正定县	0	100
130125	130100	3	行唐县	0	100
130126	130100	3	灵寿县	0	100
130127	130100	3	高邑县	0	100
130128	130100	3	深泽县	0	100
130129	130100	3	赞皇县	0	100
130130	130100	3	无极县	0	100
130131	130100	3	平山县	0	100
130132	130100	3	元氏县	0	100
130133	130100	3	赵县	0	100
130183	130100	3	晋州市	0	100
130184	130100	3	新乐市	0	100
130200	130000	2	唐山市	0	100
130201	130200	3	市辖区	0	100
130202	130200	3	路南区	0	100
130203	130200	3	路北区	0	100
130204	130200	3	古冶区	0	100
130205	130200	3	开平区	0	100
130207	130200	3	丰南区	0	100
130208	130200	3	丰润区	0	100
130209	130200	3	曹妃甸区	0	100
130223	130200	3	滦县	0	100
130224	130200	3	滦南县	0	100
130225	130200	3	乐亭县	0	100
130227	130200	3	迁西县	0	100
130229	130200	3	玉田县	0	100
130281	130200	3	遵化市	0	100
130283	130200	3	迁安市	0	100
130300	130000	2	秦皇岛市	0	100
130301	130300	3	市辖区	0	100
130302	130300	3	海港区	0	100
130303	130300	3	山海关区	0	100
130304	130300	3	北戴河区	0	100
130306	130300	3	抚宁区	0	100
130321	130300	3	青龙满族自治县	0	100
130322	130300	3	昌黎县	0	100
130324	130300	3	卢龙县	0	100
130400	130000	2	邯郸市	0	100
130401	130400	3	市辖区	0	100
130402	130400	3	邯山区	0	100
130403	130400	3	丛台区	0	100
130404	130400	3	复兴区	0	100
130406	130400	3	峰峰矿区	0	100
130421	130400	3	邯郸县	0	100
130423	130400	3	临漳县	0	100
130424	130400	3	成安县	0	100
130425	130400	3	大名县	0	100
130426	130400	3	涉县	0	100
130427	130400	3	磁县	0	100
130428	130400	3	肥乡县	0	100
130429	130400	3	永年县	0	100
130430	130400	3	邱县	0	100
130431	130400	3	鸡泽县	0	100
130432	130400	3	广平县	0	100
130433	130400	3	馆陶县	0	100
130434	130400	3	魏县	0	100
130435	130400	3	曲周县	0	100
130481	130400	3	武安市	0	100
130500	130000	2	邢台市	0	100
130501	130500	3	市辖区	0	100
130502	130500	3	桥东区	0	100
130503	130500	3	桥西区	0	100
130521	130500	3	邢台县	0	100
130522	130500	3	临城县	0	100
130523	130500	3	内丘县	0	100
130524	130500	3	柏乡县	0	100
130525	130500	3	隆尧县	0	100
130526	130500	3	任县	0	100
130527	130500	3	南和县	0	100
130528	130500	3	宁晋县	0	100
130529	130500	3	巨鹿县	0	100
130530	130500	3	新河县	0	100
130531	130500	3	广宗县	0	100
130532	130500	3	平乡县	0	100
130533	130500	3	威县	0	100
130534	130500	3	清河县	0	100
130535	130500	3	临西县	0	100
130581	130500	3	南宫市	0	100
130582	130500	3	沙河市	0	100
130600	130000	2	保定市	0	100
130601	130600	3	市辖区	0	100
130602	130600	3	竞秀区	0	100
130606	130600	3	莲池区	0	100
130607	130600	3	满城区	0	100
130608	130600	3	清苑区	0	100
130609	130600	3	徐水区	0	100
130623	130600	3	涞水县	0	100
130624	130600	3	阜平县	0	100
130626	130600	3	定兴县	0	100
130627	130600	3	唐县	0	100
130628	130600	3	高阳县	0	100
130629	130600	3	容城县	0	100
130630	130600	3	涞源县	0	100
130631	130600	3	望都县	0	100
130632	130600	3	安新县	0	100
130633	130600	3	易县	0	100
130634	130600	3	曲阳县	0	100
130635	130600	3	蠡县	0	100
130636	130600	3	顺平县	0	100
130637	130600	3	博野县	0	100
130638	130600	3	雄县	0	100
130681	130600	3	涿州市	0	100
130683	130600	3	安国市	0	100
130684	130600	3	高碑店市	0	100
130700	130000	2	张家口市	0	100
130701	130700	3	市辖区	0	100
130702	130700	3	桥东区	0	100
130703	130700	3	桥西区	0	100
130705	130700	3	宣化区	0	100
130706	130700	3	下花园区	0	100
130708	130700	3	万全区	0	100
130709	130700	3	崇礼区	0	100
130722	130700	3	张北县	0	100
130723	130700	3	康保县	0	100
130724	130700	3	沽源县	0	100
130725	130700	3	尚义县	0	100
130726	130700	3	蔚县	0	100
130727	130700	3	阳原县	0	100
130728	130700	3	怀安县	0	100
130730	130700	3	怀来县	0	100
130731	130700	3	涿鹿县	0	100
130732	130700	3	赤城县	0	100
130800	130000	2	承德市	0	100
130801	130800	3	市辖区	0	100
130802	130800	3	双桥区	0	100
130803	130800	3	双滦区	0	100
130804	130800	3	鹰手营子矿区	0	100
130821	130800	3	承德县	0	100
130822	130800	3	兴隆县	0	100
130823	130800	3	平泉县	0	100
130824	130800	3	滦平县	0	100
130825	130800	3	隆化县	0	100
130826	130800	3	丰宁满族自治县	0	100
130827	130800	3	宽城满族自治县	0	100
130828	130800	3	围场满族蒙古族自治县	0	100
130900	130000	2	沧州市	0	100
130901	130900	3	市辖区	0	100
130902	130900	3	新华区	0	100
130903	130900	3	运河区	0	100
130921	130900	3	沧县	0	100
130922	130900	3	青县	0	100
130923	130900	3	东光县	0	100
130924	130900	3	海兴县	0	100
130925	130900	3	盐山县	0	100
130926	130900	3	肃宁县	0	100
130927	130900	3	南皮县	0	100
130928	130900	3	吴桥县	0	100
130929	130900	3	献县	0	100
130930	130900	3	孟村回族自治县	0	100
130981	130900	3	泊头市	0	100
130982	130900	3	任丘市	0	100
130983	130900	3	黄骅市	0	100
130984	130900	3	河间市	0	100
131000	130000	2	廊坊市	0	100
131001	131000	3	市辖区	0	100
131002	131000	3	安次区	0	100
131003	131000	3	广阳区	0	100
131022	131000	3	固安县	0	100
131023	131000	3	永清县	0	100
131024	131000	3	香河县	0	100
131025	131000	3	大城县	0	100
131026	131000	3	文安县	0	100
131028	131000	3	大厂回族自治县	0	100
131081	131000	3	霸州市	0	100
131082	131000	3	三河市	0	100
131100	130000	2	衡水市	0	100
131101	131100	3	市辖区	0	100
131102	131100	3	桃城区	0	100
131103	131100	3	冀州区	0	100
131121	131100	3	枣强县	0	100
131122	131100	3	武邑县	0	100
131123	131100	3	武强县	0	100
131124	131100	3	饶阳县	0	100
131125	131100	3	安平县	0	100
131126	131100	3	故城县	0	100
131127	131100	3	景县	0	100
131128	131100	3	阜城县	0	100
131182	131100	3	深州市	0	100
139000	130000	2	省直辖县级行政区划	0	100
139001	139000	3	市辖区	0	100
139002	139000	3	辛集市	0	100
140000	0	1	山西省	0	100
140100	140000	2	太原市	0	100
140101	140100	3	市辖区	0	100
140105	140100	3	小店区	0	100
140106	140100	3	迎泽区	0	100
140107	140100	3	杏花岭区	0	100
140108	140100	3	尖草坪区	0	100
140109	140100	3	万柏林区	0	100
140110	140100	3	晋源区	0	100
140121	140100	3	清徐县	0	100
140122	140100	3	阳曲县	0	100
140123	140100	3	娄烦县	0	100
140181	140100	3	古交市	0	100
140200	140000	2	大同市	0	100
140201	140200	3	市辖区	0	100
140202	140200	3	城区	0	100
140203	140200	3	矿区	0	100
140211	140200	3	南郊区	0	100
140212	140200	3	新荣区	0	100
140221	140200	3	阳高县	0	100
140222	140200	3	天镇县	0	100
140223	140200	3	广灵县	0	100
140224	140200	3	灵丘县	0	100
140225	140200	3	浑源县	0	100
140226	140200	3	左云县	0	100
140227	140200	3	大同县	0	100
140300	140000	2	阳泉市	0	100
140301	140300	3	市辖区	0	100
140302	140300	3	城区	0	100
140303	140300	3	矿区	0	100
140311	140300	3	郊区	0	100
140321	140300	3	平定县	0	100
140322	140300	3	盂县	0	100
140400	140000	2	长治市	0	100
140401	140400	3	市辖区	0	100
140402	140400	3	城区	0	100
140411	140400	3	郊区	0	100
140421	140400	3	长治县	0	100
140423	140400	3	襄垣县	0	100
140424	140400	3	屯留县	0	100
140425	140400	3	平顺县	0	100
140426	140400	3	黎城县	0	100
140427	140400	3	壶关县	0	100
140428	140400	3	长子县	0	100
140429	140400	3	武乡县	0	100
140430	140400	3	沁县	0	100
140431	140400	3	沁源县	0	100
140481	140400	3	潞城市	0	100
140500	140000	2	晋城市	0	100
140501	140500	3	市辖区	0	100
140502	140500	3	城区	0	100
140521	140500	3	沁水县	0	100
140522	140500	3	阳城县	0	100
140524	140500	3	陵川县	0	100
140525	140500	3	泽州县	0	100
140581	140500	3	高平市	0	100
140600	140000	2	朔州市	0	100
140601	140600	3	市辖区	0	100
140602	140600	3	朔城区	0	100
140603	140600	3	平鲁区	0	100
140621	140600	3	山阴县	0	100
140622	140600	3	应县	0	100
140623	140600	3	右玉县	0	100
140624	140600	3	怀仁县	0	100
140700	140000	2	晋中市	0	100
140701	140700	3	市辖区	0	100
140702	140700	3	榆次区	0	100
140721	140700	3	榆社县	0	100
140722	140700	3	左权县	0	100
140723	140700	3	和顺县	0	100
140724	140700	3	昔阳县	0	100
140725	140700	3	寿阳县	0	100
140726	140700	3	太谷县	0	100
140727	140700	3	祁县	0	100
140728	140700	3	平遥县	0	100
140729	140700	3	灵石县	0	100
140781	140700	3	介休市	0	100
140800	140000	2	运城市	0	100
140801	140800	3	市辖区	0	100
140802	140800	3	盐湖区	0	100
140821	140800	3	临猗县	0	100
140822	140800	3	万荣县	0	100
140823	140800	3	闻喜县	0	100
140824	140800	3	稷山县	0	100
140825	140800	3	新绛县	0	100
140826	140800	3	绛县	0	100
140827	140800	3	垣曲县	0	100
140828	140800	3	夏县	0	100
140829	140800	3	平陆县	0	100
140830	140800	3	芮城县	0	100
140881	140800	3	永济市	0	100
140882	140800	3	河津市	0	100
140900	140000	2	忻州市	0	100
140901	140900	3	市辖区	0	100
140902	140900	3	忻府区	0	100
140921	140900	3	定襄县	0	100
140922	140900	3	五台县	0	100
140923	140900	3	代县	0	100
140924	140900	3	繁峙县	0	100
140925	140900	3	宁武县	0	100
140926	140900	3	静乐县	0	100
140927	140900	3	神池县	0	100
140928	140900	3	五寨县	0	100
140929	140900	3	岢岚县	0	100
140930	140900	3	河曲县	0	100
140931	140900	3	保德县	0	100
140932	140900	3	偏关县	0	100
140981	140900	3	原平市	0	100
141000	140000	2	临汾市	0	100
141001	141000	3	市辖区	0	100
141002	141000	3	尧都区	0	100
141021	141000	3	曲沃县	0	100
141022	141000	3	翼城县	0	100
141023	141000	3	襄汾县	0	100
141024	141000	3	洪洞县	0	100
141025	141000	3	古县	0	100
141026	141000	3	安泽县	0	100
141027	141000	3	浮山县	0	100
141028	141000	3	吉县	0	100
141029	141000	3	乡宁县	0	100
141030	141000	3	大宁县	0	100
141031	141000	3	隰县	0	100
141032	141000	3	永和县	0	100
141033	141000	3	蒲县	0	100
141034	141000	3	汾西县	0	100
141081	141000	3	侯马市	0	100
141082	141000	3	霍州市	0	100
141100	140000	2	吕梁市	0	100
141101	141100	3	市辖区	0	100
141102	141100	3	离石区	0	100
141121	141100	3	文水县	0	100
141122	141100	3	交城县	0	100
141123	141100	3	兴县	0	100
141124	141100	3	临县	0	100
141125	141100	3	柳林县	0	100
141126	141100	3	石楼县	0	100
141127	141100	3	岚县	0	100
141128	141100	3	方山县	0	100
141129	141100	3	中阳县	0	100
141130	141100	3	交口县	0	100
141181	141100	3	孝义市	0	100
141182	141100	3	汾阳市	0	100
150000	0	1	内蒙古自治区	0	100
150100	150000	2	呼和浩特市	0	100
150101	150100	3	市辖区	0	100
150102	150100	3	新城区	0	100
150103	150100	3	回民区	0	100
150104	150100	3	玉泉区	0	100
150105	150100	3	赛罕区	0	100
150121	150100	3	土默特左旗	0	100
150122	150100	3	托克托县	0	100
150123	150100	3	和林格尔县	0	100
150124	150100	3	清水河县	0	100
150125	150100	3	武川县	0	100
150200	150000	2	包头市	0	100
150201	150200	3	市辖区	0	100
150202	150200	3	东河区	0	100
150203	150200	3	昆都仑区	0	100
150204	150200	3	青山区	0	100
150205	150200	3	石拐区	0	100
150206	150200	3	白云鄂博矿区	0	100
150207	150200	3	九原区	0	100
150221	150200	3	土默特右旗	0	100
150222	150200	3	固阳县	0	100
150223	150200	3	达尔罕茂明安联合旗	0	100
150300	150000	2	乌海市	0	100
150301	150300	3	市辖区	0	100
150302	150300	3	海勃湾区	0	100
150303	150300	3	海南区	0	100
150304	150300	3	乌达区	0	100
150400	150000	2	赤峰市	0	100
150401	150400	3	市辖区	0	100
150402	150400	3	红山区	0	100
150403	150400	3	元宝山区	0	100
150404	150400	3	松山区	0	100
150421	150400	3	阿鲁科尔沁旗	0	100
150422	150400	3	巴林左旗	0	100
150423	150400	3	巴林右旗	0	100
150424	150400	3	林西县	0	100
150425	150400	3	克什克腾旗	0	100
150426	150400	3	翁牛特旗	0	100
150428	150400	3	喀喇沁旗	0	100
150429	150400	3	宁城县	0	100
150430	150400	3	敖汉旗	0	100
150500	150000	2	通辽市	0	100
150501	150500	3	市辖区	0	100
150502	150500	3	科尔沁区	0	100
150521	150500	3	科尔沁左翼中旗	0	100
150522	150500	3	科尔沁左翼后旗	0	100
150523	150500	3	开鲁县	0	100
150524	150500	3	库伦旗	0	100
150525	150500	3	奈曼旗	0	100
150526	150500	3	扎鲁特旗	0	100
150581	150500	3	霍林郭勒市	0	100
150600	150000	2	鄂尔多斯市	0	100
150601	150600	3	市辖区	0	100
150602	150600	3	东胜区	0	100
150603	150600	3	康巴什区	0	100
150621	150600	3	达拉特旗	0	100
150622	150600	3	准格尔旗	0	100
150623	150600	3	鄂托克前旗	0	100
150624	150600	3	鄂托克旗	0	100
150625	150600	3	杭锦旗	0	100
150626	150600	3	乌审旗	0	100
150627	150600	3	伊金霍洛旗	0	100
150700	150000	2	呼伦贝尔市	0	100
150701	150700	3	市辖区	0	100
150702	150700	3	海拉尔区	0	100
150703	150700	3	扎赉诺尔区	0	100
150721	150700	3	阿荣旗	0	100
150722	150700	3	莫力达瓦达斡尔族自治旗	0	100
150723	150700	3	鄂伦春自治旗	0	100
150724	150700	3	鄂温克族自治旗	0	100
150725	150700	3	陈巴尔虎旗	0	100
150726	150700	3	新巴尔虎左旗	0	100
150727	150700	3	新巴尔虎右旗	0	100
150781	150700	3	满洲里市	0	100
150782	150700	3	牙克石市	0	100
150783	150700	3	扎兰屯市	0	100
150784	150700	3	额尔古纳市	0	100
150785	150700	3	根河市	0	100
150800	150000	2	巴彦淖尔市	0	100
150801	150800	3	市辖区	0	100
150802	150800	3	临河区	0	100
150821	150800	3	五原县	0	100
150822	150800	3	磴口县	0	100
150823	150800	3	乌拉特前旗	0	100
150824	150800	3	乌拉特中旗	0	100
150825	150800	3	乌拉特后旗	0	100
150826	150800	3	杭锦后旗	0	100
150900	150000	2	乌兰察布市	0	100
150901	150900	3	市辖区	0	100
150902	150900	3	集宁区	0	100
150921	150900	3	卓资县	0	100
150922	150900	3	化德县	0	100
150923	150900	3	商都县	0	100
150924	150900	3	兴和县	0	100
150925	150900	3	凉城县	0	100
150926	150900	3	察哈尔右翼前旗	0	100
150927	150900	3	察哈尔右翼中旗	0	100
150928	150900	3	察哈尔右翼后旗	0	100
150929	150900	3	四子王旗	0	100
150981	150900	3	丰镇市	0	100
152200	150000	2	兴安盟	0	100
152201	152200	3	市辖区	0	100
152202	152200	3	阿尔山市	0	100
152221	152200	3	科尔沁右翼前旗	0	100
152222	152200	3	科尔沁右翼中旗	0	100
152223	152200	3	扎赉特旗	0	100
152224	152200	3	突泉县	0	100
152500	150000	2	锡林郭勒盟	0	100
152501	152500	3	市辖区	0	100
152502	152500	3	锡林浩特市	0	100
152522	152500	3	阿巴嘎旗	0	100
152523	152500	3	苏尼特左旗	0	100
152524	152500	3	苏尼特右旗	0	100
152525	152500	3	东乌珠穆沁旗	0	100
152526	152500	3	西乌珠穆沁旗	0	100
152527	152500	3	太仆寺旗	0	100
152528	152500	3	镶黄旗	0	100
152529	152500	3	正镶白旗	0	100
152530	152500	3	正蓝旗	0	100
152531	152500	3	多伦县	0	100
152900	150000	2	阿拉善盟	0	100
152921	152900	3	阿拉善左旗	0	100
152922	152900	3	阿拉善右旗	0	100
152923	152900	3	额济纳旗	0	100
210000	0	1	辽宁省	0	100
210100	210000	2	沈阳市	0	100
210101	210100	3	市辖区	0	100
210102	210100	3	和平区	0	100
210103	210100	3	沈河区	0	100
210104	210100	3	大东区	0	100
210105	210100	3	皇姑区	0	100
210106	210100	3	铁西区	0	100
210111	210100	3	苏家屯区	0	100
210112	210100	3	浑南区	0	100
210113	210100	3	沈北新区	0	100
210114	210100	3	于洪区	0	100
210115	210100	3	辽中区	0	100
210123	210100	3	康平县	0	100
210124	210100	3	法库县	0	100
210181	210100	3	新民市	0	100
210200	210000	2	大连市	0	100
210201	210200	3	市辖区	0	100
210202	210200	3	中山区	0	100
210203	210200	3	西岗区	0	100
210204	210200	3	沙河口区	0	100
210211	210200	3	甘井子区	0	100
210212	210200	3	旅顺口区	0	100
210213	210200	3	金州区	0	100
210214	210200	3	普兰店区	0	100
210224	210200	3	长海县	0	100
210281	210200	3	瓦房店市	0	100
210283	210200	3	庄河市	0	100
210300	210000	2	鞍山市	0	100
210301	210300	3	市辖区	0	100
210302	210300	3	铁东区	0	100
210303	210300	3	铁西区	0	100
210304	210300	3	立山区	0	100
210311	210300	3	千山区	0	100
210321	210300	3	台安县	0	100
210323	210300	3	岫岩满族自治县	0	100
210381	210300	3	海城市	0	100
210400	210000	2	抚顺市	0	100
210401	210400	3	市辖区	0	100
210402	210400	3	新抚区	0	100
210403	210400	3	东洲区	0	100
210404	210400	3	望花区	0	100
210411	210400	3	顺城区	0	100
210421	210400	3	抚顺县	0	100
210422	210400	3	新宾满族自治县	0	100
210423	210400	3	清原满族自治县	0	100
210500	210000	2	本溪市	0	100
210501	210500	3	市辖区	0	100
210502	210500	3	平山区	0	100
210503	210500	3	溪湖区	0	100
210504	210500	3	明山区	0	100
210505	210500	3	南芬区	0	100
210521	210500	3	本溪满族自治县	0	100
210522	210500	3	桓仁满族自治县	0	100
210600	210000	2	丹东市	0	100
210601	210600	3	市辖区	0	100
210602	210600	3	元宝区	0	100
210603	210600	3	振兴区	0	100
210604	210600	3	振安区	0	100
210624	210600	3	宽甸满族自治县	0	100
210681	210600	3	东港市	0	100
210682	210600	3	凤城市	0	100
210700	210000	2	锦州市	0	100
210701	210700	3	市辖区	0	100
210702	210700	3	古塔区	0	100
210703	210700	3	凌河区	0	100
210711	210700	3	太和区	0	100
210726	210700	3	黑山县	0	100
210727	210700	3	义县	0	100
210781	210700	3	凌海市	0	100
210782	210700	3	北镇市	0	100
210800	210000	2	营口市	0	100
210801	210800	3	市辖区	0	100
210802	210800	3	站前区	0	100
210803	210800	3	西市区	0	100
210804	210800	3	鲅鱼圈区	0	100
210811	210800	3	老边区	0	100
210881	210800	3	盖州市	0	100
210882	210800	3	大石桥市	0	100
210900	210000	2	阜新市	0	100
210901	210900	3	市辖区	0	100
210902	210900	3	海州区	0	100
210903	210900	3	新邱区	0	100
210904	210900	3	太平区	0	100
210905	210900	3	清河门区	0	100
210911	210900	3	细河区	0	100
210921	210900	3	阜新蒙古族自治县	0	100
210922	210900	3	彰武县	0	100
211000	210000	2	辽阳市	0	100
211001	211000	3	市辖区	0	100
211002	211000	3	白塔区	0	100
211003	211000	3	文圣区	0	100
211004	211000	3	宏伟区	0	100
211005	211000	3	弓长岭区	0	100
211011	211000	3	太子河区	0	100
211021	211000	3	辽阳县	0	100
211081	211000	3	灯塔市	0	100
211100	210000	2	盘锦市	0	100
211101	211100	3	市辖区	0	100
211102	211100	3	双台子区	0	100
211103	211100	3	兴隆台区	0	100
211104	211100	3	大洼区	0	100
211122	211100	3	盘山县	0	100
211200	210000	2	铁岭市	0	100
211201	211200	3	市辖区	0	100
211202	211200	3	银州区	0	100
211204	211200	3	清河区	0	100
211221	211200	3	铁岭县	0	100
211223	211200	3	西丰县	0	100
211224	211200	3	昌图县	0	100
211281	211200	3	调兵山市	0	100
211282	211200	3	开原市	0	100
211300	210000	2	朝阳市	0	100
211301	211300	3	市辖区	0	100
211302	211300	3	双塔区	0	100
211303	211300	3	龙城区	0	100
211321	211300	3	朝阳县	0	100
211322	211300	3	建平县	0	100
211324	211300	3	喀喇沁左翼蒙古族自治县	0	100
211381	211300	3	北票市	0	100
211382	211300	3	凌源市	0	100
211400	210000	2	葫芦岛市	0	100
211401	211400	3	市辖区	0	100
211402	211400	3	连山区	0	100
211403	211400	3	龙港区	0	100
211404	211400	3	南票区	0	100
211421	211400	3	绥中县	0	100
211422	211400	3	建昌县	0	100
211481	211400	3	兴城市	0	100
220000	0	1	吉林省	0	100
220100	220000	2	长春市	0	100
220101	220100	3	市辖区	0	100
220102	220100	3	南关区	0	100
220103	220100	3	宽城区	0	100
220104	220100	3	朝阳区	0	100
220105	220100	3	二道区	0	100
220106	220100	3	绿园区	0	100
220112	220100	3	双阳区	0	100
220113	220100	3	九台区	0	100
220122	220100	3	农安县	0	100
220182	220100	3	榆树市	0	100
220183	220100	3	德惠市	0	100
220200	220000	2	吉林市	0	100
220201	220200	3	市辖区	0	100
220202	220200	3	昌邑区	0	100
220203	220200	3	龙潭区	0	100
220204	220200	3	船营区	0	100
220211	220200	3	丰满区	0	100
220221	220200	3	永吉县	0	100
220281	220200	3	蛟河市	0	100
220282	220200	3	桦甸市	0	100
220283	220200	3	舒兰市	0	100
220284	220200	3	磐石市	0	100
220300	220000	2	四平市	0	100
220301	220300	3	市辖区	0	100
220302	220300	3	铁西区	0	100
220303	220300	3	铁东区	0	100
220322	220300	3	梨树县	0	100
220323	220300	3	伊通满族自治县	0	100
220381	220300	3	公主岭市	0	100
220382	220300	3	双辽市	0	100
220400	220000	2	辽源市	0	100
220401	220400	3	市辖区	0	100
220402	220400	3	龙山区	0	100
220403	220400	3	西安区	0	100
220421	220400	3	东丰县	0	100
220422	220400	3	东辽县	0	100
220500	220000	2	通化市	0	100
220501	220500	3	市辖区	0	100
220502	220500	3	东昌区	0	100
220503	220500	3	二道江区	0	100
220521	220500	3	通化县	0	100
220523	220500	3	辉南县	0	100
220524	220500	3	柳河县	0	100
220581	220500	3	梅河口市	0	100
220582	220500	3	集安市	0	100
220600	220000	2	白山市	0	100
220601	220600	3	市辖区	0	100
220602	220600	3	浑江区	0	100
220605	220600	3	江源区	0	100
220621	220600	3	抚松县	0	100
220622	220600	3	靖宇县	0	100
220623	220600	3	长白朝鲜族自治县	0	100
220681	220600	3	临江市	0	100
220700	220000	2	松原市	0	100
220701	220700	3	市辖区	0	100
220702	220700	3	宁江区	0	100
220721	220700	3	前郭尔罗斯蒙古族自治县	0	100
220722	220700	3	长岭县	0	100
220723	220700	3	乾安县	0	100
220781	220700	3	扶余市	0	100
220800	220000	2	白城市	0	100
220801	220800	3	市辖区	0	100
220802	220800	3	洮北区	0	100
220821	220800	3	镇赉县	0	100
220822	220800	3	通榆县	0	100
220881	220800	3	洮南市	0	100
220882	220800	3	大安市	0	100
222400	220000	2	延边朝鲜族自治州	0	100
222401	222400	3	市辖区	0	100
222402	222400	3	图们市	0	100
222403	222400	3	敦化市	0	100
222404	222400	3	珲春市	0	100
222405	222400	3	龙井市	0	100
222406	222400	3	和龙市	0	100
222424	222400	3	汪清县	0	100
222426	222400	3	安图县	0	100
230000	0	1	黑龙江省	0	100
230100	230000	2	哈尔滨市	0	100
230101	230100	3	市辖区	0	100
230102	230100	3	道里区	0	100
230103	230100	3	南岗区	0	100
230104	230100	3	道外区	0	100
230108	230100	3	平房区	0	100
230109	230100	3	松北区	0	100
230110	230100	3	香坊区	0	100
230111	230100	3	呼兰区	0	100
230112	230100	3	阿城区	0	100
230113	230100	3	双城区	0	100
230123	230100	3	依兰县	0	100
230124	230100	3	方正县	0	100
230125	230100	3	宾县	0	100
230126	230100	3	巴彦县	0	100
230127	230100	3	木兰县	0	100
230128	230100	3	通河县	0	100
230129	230100	3	延寿县	0	100
230183	230100	3	尚志市	0	100
230184	230100	3	五常市	0	100
230200	230000	2	齐齐哈尔市	0	100
230201	230200	3	市辖区	0	100
230202	230200	3	龙沙区	0	100
230203	230200	3	建华区	0	100
230204	230200	3	铁锋区	0	100
230205	230200	3	昂昂溪区	0	100
230206	230200	3	富拉尔基区	0	100
230207	230200	3	碾子山区	0	100
230208	230200	3	梅里斯达斡尔族区	0	100
230221	230200	3	龙江县	0	100
230223	230200	3	依安县	0	100
230224	230200	3	泰来县	0	100
230225	230200	3	甘南县	0	100
230227	230200	3	富裕县	0	100
230229	230200	3	克山县	0	100
230230	230200	3	克东县	0	100
230231	230200	3	拜泉县	0	100
230281	230200	3	讷河市	0	100
230300	230000	2	鸡西市	0	100
230301	230300	3	市辖区	0	100
230302	230300	3	鸡冠区	0	100
230303	230300	3	恒山区	0	100
230304	230300	3	滴道区	0	100
230305	230300	3	梨树区	0	100
230306	230300	3	城子河区	0	100
230307	230300	3	麻山区	0	100
230321	230300	3	鸡东县	0	100
230381	230300	3	虎林市	0	100
230382	230300	3	密山市	0	100
230400	230000	2	鹤岗市	0	100
230401	230400	3	市辖区	0	100
230402	230400	3	向阳区	0	100
230403	230400	3	工农区	0	100
230404	230400	3	南山区	0	100
230405	230400	3	兴安区	0	100
230406	230400	3	东山区	0	100
230407	230400	3	兴山区	0	100
230421	230400	3	萝北县	0	100
230422	230400	3	绥滨县	0	100
230500	230000	2	双鸭山市	0	100
230501	230500	3	市辖区	0	100
230502	230500	3	尖山区	0	100
230503	230500	3	岭东区	0	100
230505	230500	3	四方台区	0	100
230506	230500	3	宝山区	0	100
230521	230500	3	集贤县	0	100
230522	230500	3	友谊县	0	100
230523	230500	3	宝清县	0	100
230524	230500	3	饶河县	0	100
230600	230000	2	大庆市	0	100
230601	230600	3	市辖区	0	100
230602	230600	3	萨尔图区	0	100
230603	230600	3	龙凤区	0	100
230604	230600	3	让胡路区	0	100
230605	230600	3	红岗区	0	100
230606	230600	3	大同区	0	100
230621	230600	3	肇州县	0	100
230622	230600	3	肇源县	0	100
230623	230600	3	林甸县	0	100
230624	230600	3	杜尔伯特蒙古族自治县	0	100
230700	230000	2	伊春市	0	100
230701	230700	3	市辖区	0	100
230702	230700	3	伊春区	0	100
230703	230700	3	南岔区	0	100
230704	230700	3	友好区	0	100
230705	230700	3	西林区	0	100
230706	230700	3	翠峦区	0	100
230707	230700	3	新青区	0	100
230708	230700	3	美溪区	0	100
230709	230700	3	金山屯区	0	100
230710	230700	3	五营区	0	100
230711	230700	3	乌马河区	0	100
230712	230700	3	汤旺河区	0	100
230713	230700	3	带岭区	0	100
230714	230700	3	乌伊岭区	0	100
230715	230700	3	红星区	0	100
230716	230700	3	上甘岭区	0	100
230722	230700	3	嘉荫县	0	100
230781	230700	3	铁力市	0	100
230800	230000	2	佳木斯市	0	100
230801	230800	3	市辖区	0	100
230803	230800	3	向阳区	0	100
230804	230800	3	前进区	0	100
230805	230800	3	东风区	0	100
230811	230800	3	郊区	0	100
230822	230800	3	桦南县	0	100
230826	230800	3	桦川县	0	100
230828	230800	3	汤原县	0	100
230881	230800	3	同江市	0	100
230882	230800	3	富锦市	0	100
230883	230800	3	抚远市	0	100
230900	230000	2	七台河市	0	100
230901	230900	3	市辖区	0	100
230902	230900	3	新兴区	0	100
230903	230900	3	桃山区	0	100
230904	230900	3	茄子河区	0	100
230921	230900	3	勃利县	0	100
231000	230000	2	牡丹江市	0	100
231001	231000	3	市辖区	0	100
231002	231000	3	东安区	0	100
231003	231000	3	阳明区	0	100
231004	231000	3	爱民区	0	100
231005	231000	3	西安区	0	100
231025	231000	3	林口县	0	100
231081	231000	3	绥芬河市	0	100
231083	231000	3	海林市	0	100
231084	231000	3	宁安市	0	100
231085	231000	3	穆棱市	0	100
231086	231000	3	东宁市	0	100
231100	230000	2	黑河市	0	100
231101	231100	3	市辖区	0	100
231102	231100	3	爱辉区	0	100
231121	231100	3	嫩江县	0	100
231123	231100	3	逊克县	0	100
231124	231100	3	孙吴县	0	100
231181	231100	3	北安市	0	100
231182	231100	3	五大连池市	0	100
231200	230000	2	绥化市	0	100
231201	231200	3	市辖区	0	100
231202	231200	3	北林区	0	100
231221	231200	3	望奎县	0	100
231222	231200	3	兰西县	0	100
231223	231200	3	青冈县	0	100
231224	231200	3	庆安县	0	100
231225	231200	3	明水县	0	100
231226	231200	3	绥棱县	0	100
231281	231200	3	安达市	0	100
231282	231200	3	肇东市	0	100
231283	231200	3	海伦市	0	100
232700	230000	2	大兴安岭地区	0	100
232721	232700	3	呼玛县	0	100
232722	232700	3	塔河县	0	100
232723	232700	3	漠河县	0	100
310000	0	1	上海市	0	100
310100	310000	2	上海市	0	100
310101	310100	3	黄浦区	0	100
310104	310100	3	徐汇区	0	100
310105	310100	3	长宁区	0	100
310106	310100	3	静安区	0	100
310107	310100	3	普陀区	0	100
310109	310100	3	虹口区	0	100
310110	310100	3	杨浦区	0	100
310112	310100	3	闵行区	0	100
310113	310100	3	宝山区	0	100
310114	310100	3	嘉定区	0	100
310115	310100	3	浦东新区	0	100
310116	310100	3	金山区	0	100
310117	310100	3	松江区	0	100
310118	310100	3	青浦区	0	100
310120	310100	3	奉贤区	0	100
310151	310100	3	崇明区	0	100
320000	0	1	江苏省	0	100
320100	320000	2	南京市	0	100
320101	320100	3	市辖区	0	100
320102	320100	3	玄武区	0	100
320104	320100	3	秦淮区	0	100
320105	320100	3	建邺区	0	100
320106	320100	3	鼓楼区	0	100
320111	320100	3	浦口区	0	100
320113	320100	3	栖霞区	0	100
320114	320100	3	雨花台区	0	100
320115	320100	3	江宁区	0	100
320116	320100	3	六合区	0	100
320117	320100	3	溧水区	0	100
320118	320100	3	高淳区	0	100
320200	320000	2	无锡市	0	100
320201	320200	3	市辖区	0	100
320205	320200	3	锡山区	0	100
320206	320200	3	惠山区	0	100
320211	320200	3	滨湖区	0	100
320213	320200	3	梁溪区	0	100
320214	320200	3	新吴区	0	100
320281	320200	3	江阴市	0	100
320282	320200	3	宜兴市	0	100
320300	320000	2	徐州市	0	100
320301	320300	3	市辖区	0	100
320302	320300	3	鼓楼区	0	100
320303	320300	3	云龙区	0	100
320305	320300	3	贾汪区	0	100
320311	320300	3	泉山区	0	100
320312	320300	3	铜山区	0	100
320321	320300	3	丰县	0	100
320322	320300	3	沛县	0	100
320324	320300	3	睢宁县	0	100
320381	320300	3	新沂市	0	100
320382	320300	3	邳州市	0	100
320400	320000	2	常州市	0	100
320401	320400	3	市辖区	0	100
320402	320400	3	天宁区	0	100
320404	320400	3	钟楼区	0	100
320411	320400	3	新北区	0	100
320412	320400	3	武进区	0	100
320413	320400	3	金坛区	0	100
320481	320400	3	溧阳市	0	100
320500	320000	2	苏州市	0	100
320501	320500	3	市辖区	0	100
320505	320500	3	虎丘区	0	100
320506	320500	3	吴中区	0	100
320507	320500	3	相城区	0	100
320508	320500	3	姑苏区	0	100
320509	320500	3	吴江区	0	100
320581	320500	3	常熟市	0	100
320582	320500	3	张家港市	0	100
320583	320500	3	昆山市	0	100
320585	320500	3	太仓市	0	100
320600	320000	2	南通市	0	100
320601	320600	3	市辖区	0	100
320602	320600	3	崇川区	0	100
320611	320600	3	港闸区	0	100
320612	320600	3	通州区	0	100
320621	320600	3	海安县	0	100
320623	320600	3	如东县	0	100
320681	320600	3	启东市	0	100
320682	320600	3	如皋市	0	100
320684	320600	3	海门市	0	100
320700	320000	2	连云港市	0	100
320701	320700	3	市辖区	0	100
320703	320700	3	连云区	0	100
320706	320700	3	海州区	0	100
320707	320700	3	赣榆区	0	100
320722	320700	3	东海县	0	100
320723	320700	3	灌云县	0	100
320724	320700	3	灌南县	0	100
320800	320000	2	淮安市	0	100
320803	320800	3	淮安区	0	100
320804	320800	3	淮阴区	0	100
320812	320800	3	清江浦区	0	100
320813	320800	3	洪泽区	0	100
320826	320800	3	涟水县	0	100
320830	320800	3	盱眙县	0	100
320831	320800	3	金湖县	0	100
320900	320000	2	盐城市	0	100
320901	320900	3	市辖区	0	100
320902	320900	3	亭湖区	0	100
320903	320900	3	盐都区	0	100
320904	320900	3	大丰区	0	100
320921	320900	3	响水县	0	100
320922	320900	3	滨海县	0	100
320923	320900	3	阜宁县	0	100
320924	320900	3	射阳县	0	100
320925	320900	3	建湖县	0	100
320981	320900	3	东台市	0	100
321000	320000	2	扬州市	0	100
321001	321000	3	市辖区	0	100
321002	321000	3	广陵区	0	100
321003	321000	3	邗江区	0	100
321012	321000	3	江都区	0	100
321023	321000	3	宝应县	0	100
321081	321000	3	仪征市	0	100
321084	321000	3	高邮市	0	100
321100	320000	2	镇江市	0	100
321101	321100	3	市辖区	0	100
321102	321100	3	京口区	0	100
321111	321100	3	润州区	0	100
321112	321100	3	丹徒区	0	100
321181	321100	3	丹阳市	0	100
321182	321100	3	扬中市	0	100
321183	321100	3	句容市	0	100
321200	320000	2	泰州市	0	100
321201	321200	3	市辖区	0	100
321202	321200	3	海陵区	0	100
321203	321200	3	高港区	0	100
321204	321200	3	姜堰区	0	100
321281	321200	3	兴化市	0	100
321282	321200	3	靖江市	0	100
321283	321200	3	泰兴市	0	100
321300	320000	2	宿迁市	0	100
321301	321300	3	市辖区	0	100
321302	321300	3	宿城区	0	100
321311	321300	3	宿豫区	0	100
321322	321300	3	沭阳县	0	100
321323	321300	3	泗阳县	0	100
321324	321300	3	泗洪县	0	100
330000	0	1	浙江省	0	100
330100	330000	2	杭州市	0	100
330101	330100	3	市辖区	0	100
330102	330100	3	上城区	0	100
330103	330100	3	下城区	0	100
330104	330100	3	江干区	0	100
330105	330100	3	拱墅区	0	100
330106	330100	3	西湖区	0	100
330108	330100	3	滨江区	0	100
330109	330100	3	萧山区	0	100
330110	330100	3	余杭区	0	100
330111	330100	3	富阳区	0	100
330122	330100	3	桐庐县	0	100
330127	330100	3	淳安县	0	100
330182	330100	3	建德市	0	100
330185	330100	3	临安市	0	100
330200	330000	2	宁波市	0	100
330201	330200	3	市辖区	0	100
330203	330200	3	海曙区	0	100
330204	330200	3	江东区	0	100
330205	330200	3	江北区	0	100
330206	330200	3	北仑区	0	100
330211	330200	3	镇海区	0	100
330212	330200	3	鄞州区	0	100
330225	330200	3	象山县	0	100
330226	330200	3	宁海县	0	100
330281	330200	3	余姚市	0	100
330282	330200	3	慈溪市	0	100
330283	330200	3	奉化市	0	100
330300	330000	2	温州市	0	100
330301	330300	3	市辖区	0	100
330302	330300	3	鹿城区	0	100
330303	330300	3	龙湾区	0	100
330304	330300	3	瓯海区	0	100
330305	330300	3	洞头区	0	100
330324	330300	3	永嘉县	0	100
330326	330300	3	平阳县	0	100
330327	330300	3	苍南县	0	100
330328	330300	3	文成县	0	100
330329	330300	3	泰顺县	0	100
330381	330300	3	瑞安市	0	100
330382	330300	3	乐清市	0	100
330400	330000	2	嘉兴市	0	100
330401	330400	3	市辖区	0	100
330402	330400	3	南湖区	0	100
330411	330400	3	秀洲区	0	100
330421	330400	3	嘉善县	0	100
330424	330400	3	海盐县	0	100
330481	330400	3	海宁市	0	100
330482	330400	3	平湖市	0	100
330483	330400	3	桐乡市	0	100
330500	330000	2	湖州市	0	100
330501	330500	3	市辖区	0	100
330502	330500	3	吴兴区	0	100
330503	330500	3	南浔区	0	100
330521	330500	3	德清县	0	100
330522	330500	3	长兴县	0	100
330523	330500	3	安吉县	0	100
330600	330000	2	绍兴市	0	100
330601	330600	3	市辖区	0	100
330602	330600	3	越城区	0	100
330603	330600	3	柯桥区	0	100
330604	330600	3	上虞区	0	100
330624	330600	3	新昌县	0	100
330681	330600	3	诸暨市	0	100
330683	330600	3	嵊州市	0	100
330700	330000	2	金华市	0	100
330701	330700	3	市辖区	0	100
330702	330700	3	婺城区	0	100
330703	330700	3	金东区	0	100
330723	330700	3	武义县	0	100
330726	330700	3	浦江县	0	100
330727	330700	3	磐安县	0	100
330781	330700	3	兰溪市	0	100
330782	330700	3	义乌市	0	100
330783	330700	3	东阳市	0	100
330784	330700	3	永康市	0	100
330800	330000	2	衢州市	0	100
330801	330800	3	市辖区	0	100
330802	330800	3	柯城区	0	100
330803	330800	3	衢江区	0	100
330822	330800	3	常山县	0	100
330824	330800	3	开化县	0	100
330825	330800	3	龙游县	0	100
330881	330800	3	江山市	0	100
330900	330000	2	舟山市	0	100
330901	330900	3	市辖区	0	100
330902	330900	3	定海区	0	100
330903	330900	3	普陀区	0	100
330921	330900	3	岱山县	0	100
330922	330900	3	嵊泗县	0	100
331000	330000	2	台州市	0	100
331001	331000	3	市辖区	0	100
331002	331000	3	椒江区	0	100
331003	331000	3	黄岩区	0	100
331004	331000	3	路桥区	0	100
331021	331000	3	玉环县	0	100
331022	331000	3	三门县	0	100
331023	331000	3	天台县	0	100
331024	331000	3	仙居县	0	100
331081	331000	3	温岭市	0	100
331082	331000	3	临海市	0	100
331100	330000	2	丽水市	0	100
331101	331100	3	市辖区	0	100
331102	331100	3	莲都区	0	100
331121	331100	3	青田县	0	100
331122	331100	3	缙云县	0	100
331123	331100	3	遂昌县	0	100
331124	331100	3	松阳县	0	100
331125	331100	3	云和县	0	100
331126	331100	3	庆元县	0	100
331127	331100	3	景宁畲族自治县	0	100
331181	331100	3	龙泉市	0	100
340000	0	1	安徽省	0	100
340100	340000	2	合肥市	0	100
340101	340100	3	市辖区	0	100
340102	340100	3	瑶海区	0	100
340103	340100	3	庐阳区	0	100
340104	340100	3	蜀山区	0	100
340111	340100	3	包河区	0	100
340121	340100	3	长丰县	0	100
340122	340100	3	肥东县	0	100
340123	340100	3	肥西县	0	100
340124	340100	3	庐江县	0	100
340181	340100	3	巢湖市	0	100
340200	340000	2	芜湖市	0	100
340201	340200	3	市辖区	0	100
340202	340200	3	镜湖区	0	100
340203	340200	3	弋江区	0	100
340207	340200	3	鸠江区	0	100
340208	340200	3	三山区	0	100
340221	340200	3	芜湖县	0	100
340222	340200	3	繁昌县	0	100
340223	340200	3	南陵县	0	100
340225	340200	3	无为县	0	100
340300	340000	2	蚌埠市	0	100
340301	340300	3	市辖区	0	100
340302	340300	3	龙子湖区	0	100
340303	340300	3	蚌山区	0	100
340304	340300	3	禹会区	0	100
340311	340300	3	淮上区	0	100
340321	340300	3	怀远县	0	100
340322	340300	3	五河县	0	100
340323	340300	3	固镇县	0	100
340400	340000	2	淮南市	0	100
340401	340400	3	市辖区	0	100
340402	340400	3	大通区	0	100
340403	340400	3	田家庵区	0	100
340404	340400	3	谢家集区	0	100
340405	340400	3	八公山区	0	100
340406	340400	3	潘集区	0	100
340421	340400	3	凤台县	0	100
340422	340400	3	寿县	0	100
340500	340000	2	马鞍山市	0	100
340501	340500	3	市辖区	0	100
340503	340500	3	花山区	0	100
340504	340500	3	雨山区	0	100
340506	340500	3	博望区	0	100
340521	340500	3	当涂县	0	100
340522	340500	3	含山县	0	100
340523	340500	3	和县	0	100
340600	340000	2	淮北市	0	100
340601	340600	3	市辖区	0	100
340602	340600	3	杜集区	0	100
340603	340600	3	相山区	0	100
340604	340600	3	烈山区	0	100
340621	340600	3	濉溪县	0	100
340700	340000	2	铜陵市	0	100
340701	340700	3	市辖区	0	100
340705	340700	3	铜官区	0	100
340706	340700	3	义安区	0	100
340711	340700	3	郊区	0	100
340722	340700	3	枞阳县	0	100
340800	340000	2	安庆市	0	100
340801	340800	3	市辖区	0	100
340802	340800	3	迎江区	0	100
340803	340800	3	大观区	0	100
340811	340800	3	宜秀区	0	100
340822	340800	3	怀宁县	0	100
340824	340800	3	潜山县	0	100
340825	340800	3	太湖县	0	100
340826	340800	3	宿松县	0	100
340827	340800	3	望江县	0	100
340828	340800	3	岳西县	0	100
340881	340800	3	桐城市	0	100
341000	340000	2	黄山市	0	100
341001	341000	3	市辖区	0	100
341002	341000	3	屯溪区	0	100
341003	341000	3	黄山区	0	100
341004	341000	3	徽州区	0	100
341021	341000	3	歙县	0	100
341022	341000	3	休宁县	0	100
341023	341000	3	黟县	0	100
341024	341000	3	祁门县	0	100
341100	340000	2	滁州市	0	100
341101	341100	3	市辖区	0	100
341102	341100	3	琅琊区	0	100
341103	341100	3	南谯区	0	100
341122	341100	3	来安县	0	100
341124	341100	3	全椒县	0	100
341125	341100	3	定远县	0	100
341126	341100	3	凤阳县	0	100
341181	341100	3	天长市	0	100
341182	341100	3	明光市	0	100
341200	340000	2	阜阳市	0	100
341201	341200	3	市辖区	0	100
341202	341200	3	颍州区	0	100
341203	341200	3	颍东区	0	100
341204	341200	3	颍泉区	0	100
341221	341200	3	临泉县	0	100
341222	341200	3	太和县	0	100
341225	341200	3	阜南县	0	100
341226	341200	3	颍上县	0	100
341282	341200	3	界首市	0	100
341300	340000	2	宿州市	0	100
341301	341300	3	市辖区	0	100
341302	341300	3	埇桥区	0	100
341321	341300	3	砀山县	0	100
341322	341300	3	萧县	0	100
341323	341300	3	灵璧县	0	100
341324	341300	3	泗县	0	100
341500	340000	2	六安市	0	100
341501	341500	3	市辖区	0	100
341502	341500	3	金安区	0	100
341503	341500	3	裕安区	0	100
341504	341500	3	叶集区	0	100
341522	341500	3	霍邱县	0	100
341523	341500	3	舒城县	0	100
341524	341500	3	金寨县	0	100
341525	341500	3	霍山县	0	100
341600	340000	2	亳州市	0	100
341601	341600	3	市辖区	0	100
341602	341600	3	谯城区	0	100
341621	341600	3	涡阳县	0	100
341622	341600	3	蒙城县	0	100
341623	341600	3	利辛县	0	100
341700	340000	2	池州市	0	100
341701	341700	3	市辖区	0	100
341702	341700	3	贵池区	0	100
341721	341700	3	东至县	0	100
341722	341700	3	石台县	0	100
341723	341700	3	青阳县	0	100
341800	340000	2	宣城市	0	100
341801	341800	3	市辖区	0	100
341802	341800	3	宣州区	0	100
341821	341800	3	郎溪县	0	100
341822	341800	3	广德县	0	100
341823	341800	3	泾县	0	100
341824	341800	3	绩溪县	0	100
341825	341800	3	旌德县	0	100
341881	341800	3	宁国市	0	100
350000	0	1	福建省	0	100
350100	350000	2	福州市	0	100
350101	350100	3	市辖区	0	100
350102	350100	3	鼓楼区	0	100
350103	350100	3	台江区	0	100
350104	350100	3	仓山区	0	100
350105	350100	3	马尾区	0	100
350111	350100	3	晋安区	0	100
350121	350100	3	闽侯县	0	100
350122	350100	3	连江县	0	100
350123	350100	3	罗源县	0	100
350124	350100	3	闽清县	0	100
350125	350100	3	永泰县	0	100
350128	350100	3	平潭县	0	100
350181	350100	3	福清市	0	100
350182	350100	3	长乐市	0	100
350200	350000	2	厦门市	0	100
350201	350200	3	市辖区	0	100
350203	350200	3	思明区	0	100
350205	350200	3	海沧区	0	100
350206	350200	3	湖里区	0	100
350211	350200	3	集美区	0	100
350212	350200	3	同安区	0	100
350213	350200	3	翔安区	0	100
350300	350000	2	莆田市	0	100
350301	350300	3	市辖区	0	100
350302	350300	3	城厢区	0	100
350303	350300	3	涵江区	0	100
350304	350300	3	荔城区	0	100
350305	350300	3	秀屿区	0	100
350322	350300	3	仙游县	0	100
350400	350000	2	三明市	0	100
350401	350400	3	市辖区	0	100
350402	350400	3	梅列区	0	100
350403	350400	3	三元区	0	100
350421	350400	3	明溪县	0	100
350423	350400	3	清流县	0	100
350424	350400	3	宁化县	0	100
350425	350400	3	大田县	0	100
350426	350400	3	尤溪县	0	100
350427	350400	3	沙县	0	100
350428	350400	3	将乐县	0	100
350429	350400	3	泰宁县	0	100
350430	350400	3	建宁县	0	100
350481	350400	3	永安市	0	100
350500	350000	2	泉州市	0	100
350501	350500	3	市辖区	0	100
350502	350500	3	鲤城区	0	100
350503	350500	3	丰泽区	0	100
350504	350500	3	洛江区	0	100
350505	350500	3	泉港区	0	100
350521	350500	3	惠安县	0	100
350524	350500	3	安溪县	0	100
350525	350500	3	永春县	0	100
350526	350500	3	德化县	0	100
350527	350500	3	金门县	0	100
350581	350500	3	石狮市	0	100
350582	350500	3	晋江市	0	100
350583	350500	3	南安市	0	100
350600	350000	2	漳州市	0	100
350601	350600	3	市辖区	0	100
350602	350600	3	芗城区	0	100
350603	350600	3	龙文区	0	100
350622	350600	3	云霄县	0	100
350623	350600	3	漳浦县	0	100
350624	350600	3	诏安县	0	100
350625	350600	3	长泰县	0	100
350626	350600	3	东山县	0	100
350627	350600	3	南靖县	0	100
350628	350600	3	平和县	0	100
350629	350600	3	华安县	0	100
350681	350600	3	龙海市	0	100
350700	350000	2	南平市	0	100
350701	350700	3	市辖区	0	100
350702	350700	3	延平区	0	100
350703	350700	3	建阳区	0	100
350721	350700	3	顺昌县	0	100
350722	350700	3	浦城县	0	100
350723	350700	3	光泽县	0	100
350724	350700	3	松溪县	0	100
350725	350700	3	政和县	0	100
350781	350700	3	邵武市	0	100
350782	350700	3	武夷山市	0	100
350783	350700	3	建瓯市	0	100
350800	350000	2	龙岩市	0	100
350801	350800	3	市辖区	0	100
350802	350800	3	新罗区	0	100
350803	350800	3	永定区	0	100
350821	350800	3	长汀县	0	100
350823	350800	3	上杭县	0	100
350824	350800	3	武平县	0	100
350825	350800	3	连城县	0	100
350881	350800	3	漳平市	0	100
350900	350000	2	宁德市	0	100
350901	350900	3	市辖区	0	100
350902	350900	3	蕉城区	0	100
350921	350900	3	霞浦县	0	100
350922	350900	3	古田县	0	100
350923	350900	3	屏南县	0	100
350924	350900	3	寿宁县	0	100
350925	350900	3	周宁县	0	100
350926	350900	3	柘荣县	0	100
350981	350900	3	福安市	0	100
350982	350900	3	福鼎市	0	100
360000	0	1	江西省	0	100
360100	360000	2	南昌市	0	100
360101	360100	3	市辖区	0	100
360102	360100	3	东湖区	0	100
360103	360100	3	西湖区	0	100
360104	360100	3	青云谱区	0	100
360105	360100	3	湾里区	0	100
360111	360100	3	青山湖区	0	100
360112	360100	3	新建区	0	100
360121	360100	3	南昌县	0	100
360123	360100	3	安义县	0	100
360124	360100	3	进贤县	0	100
360200	360000	2	景德镇市	0	100
360201	360200	3	市辖区	0	100
360202	360200	3	昌江区	0	100
360203	360200	3	珠山区	0	100
360222	360200	3	浮梁县	0	100
360281	360200	3	乐平市	0	100
360300	360000	2	萍乡市	0	100
360301	360300	3	市辖区	0	100
360302	360300	3	安源区	0	100
360313	360300	3	湘东区	0	100
360321	360300	3	莲花县	0	100
360322	360300	3	上栗县	0	100
360323	360300	3	芦溪县	0	100
360400	360000	2	九江市	0	100
360401	360400	3	市辖区	0	100
360402	360400	3	濂溪区	0	100
360403	360400	3	浔阳区	0	100
360421	360400	3	九江县	0	100
360423	360400	3	武宁县	0	100
360424	360400	3	修水县	0	100
360425	360400	3	永修县	0	100
360426	360400	3	德安县	0	100
360428	360400	3	都昌县	0	100
360429	360400	3	湖口县	0	100
360430	360400	3	彭泽县	0	100
360481	360400	3	瑞昌市	0	100
360482	360400	3	共青城市	0	100
360483	360400	3	庐山市	0	100
360500	360000	2	新余市	0	100
360501	360500	3	市辖区	0	100
360502	360500	3	渝水区	0	100
360521	360500	3	分宜县	0	100
360600	360000	2	鹰潭市	0	100
360601	360600	3	市辖区	0	100
360602	360600	3	月湖区	0	100
360622	360600	3	余江县	0	100
360681	360600	3	贵溪市	0	100
360700	360000	2	赣州市	0	100
360701	360700	3	市辖区	0	100
360702	360700	3	章贡区	0	100
360703	360700	3	南康区	0	100
360721	360700	3	赣县	0	100
360722	360700	3	信丰县	0	100
360723	360700	3	大余县	0	100
360724	360700	3	上犹县	0	100
360725	360700	3	崇义县	0	100
360726	360700	3	安远县	0	100
360727	360700	3	龙南县	0	100
360728	360700	3	定南县	0	100
360729	360700	3	全南县	0	100
360730	360700	3	宁都县	0	100
360731	360700	3	于都县	0	100
360732	360700	3	兴国县	0	100
360733	360700	3	会昌县	0	100
360734	360700	3	寻乌县	0	100
360735	360700	3	石城县	0	100
360781	360700	3	瑞金市	0	100
360800	360000	2	吉安市	0	100
360801	360800	3	市辖区	0	100
360802	360800	3	吉州区	0	100
360803	360800	3	青原区	0	100
360821	360800	3	吉安县	0	100
360822	360800	3	吉水县	0	100
360823	360800	3	峡江县	0	100
360824	360800	3	新干县	0	100
360825	360800	3	永丰县	0	100
360826	360800	3	泰和县	0	100
360827	360800	3	遂川县	0	100
360828	360800	3	万安县	0	100
360829	360800	3	安福县	0	100
360830	360800	3	永新县	0	100
360881	360800	3	井冈山市	0	100
360900	360000	2	宜春市	0	100
360901	360900	3	市辖区	0	100
360902	360900	3	袁州区	0	100
360921	360900	3	奉新县	0	100
360922	360900	3	万载县	0	100
360923	360900	3	上高县	0	100
360924	360900	3	宜丰县	0	100
360925	360900	3	靖安县	0	100
360926	360900	3	铜鼓县	0	100
360981	360900	3	丰城市	0	100
360982	360900	3	樟树市	0	100
360983	360900	3	高安市	0	100
361000	360000	2	抚州市	0	100
361001	361000	3	市辖区	0	100
361002	361000	3	临川区	0	100
361021	361000	3	南城县	0	100
361022	361000	3	黎川县	0	100
361023	361000	3	南丰县	0	100
361024	361000	3	崇仁县	0	100
361025	361000	3	乐安县	0	100
361026	361000	3	宜黄县	0	100
361027	361000	3	金溪县	0	100
361028	361000	3	资溪县	0	100
361029	361000	3	东乡县	0	100
361030	361000	3	广昌县	0	100
361100	360000	2	上饶市	0	100
361101	361100	3	市辖区	0	100
361102	361100	3	信州区	0	100
361103	361100	3	广丰区	0	100
361121	361100	3	上饶县	0	100
361123	361100	3	玉山县	0	100
361124	361100	3	铅山县	0	100
361125	361100	3	横峰县	0	100
361126	361100	3	弋阳县	0	100
361127	361100	3	余干县	0	100
361128	361100	3	鄱阳县	0	100
361129	361100	3	万年县	0	100
361130	361100	3	婺源县	0	100
361181	361100	3	德兴市	0	100
370000	0	1	山东省	0	100
370100	370000	2	济南市	0	100
370101	370100	3	市辖区	0	100
370102	370100	3	历下区	0	100
370103	370100	3	市中区	0	100
370104	370100	3	槐荫区	0	100
370105	370100	3	天桥区	0	100
370112	370100	3	历城区	0	100
370113	370100	3	长清区	0	100
370124	370100	3	平阴县	0	100
370125	370100	3	济阳县	0	100
370126	370100	3	商河县	0	100
370181	370100	3	章丘市	0	100
370200	370000	2	青岛市	0	100
370201	370200	3	市辖区	0	100
370202	370200	3	市南区	0	100
370203	370200	3	市北区	0	100
370211	370200	3	黄岛区	0	100
370212	370200	3	崂山区	0	100
370213	370200	3	李沧区	0	100
370214	370200	3	城阳区	0	100
370281	370200	3	胶州市	0	100
370282	370200	3	即墨市	0	100
370283	370200	3	平度市	0	100
370285	370200	3	莱西市	0	100
370300	370000	2	淄博市	0	100
370301	370300	3	市辖区	0	100
370302	370300	3	淄川区	0	100
370303	370300	3	张店区	0	100
370304	370300	3	博山区	0	100
370305	370300	3	临淄区	0	100
370306	370300	3	周村区	0	100
370321	370300	3	桓台县	0	100
370322	370300	3	高青县	0	100
370323	370300	3	沂源县	0	100
370400	370000	2	枣庄市	0	100
370401	370400	3	市辖区	0	100
370402	370400	3	市中区	0	100
370403	370400	3	薛城区	0	100
370404	370400	3	峄城区	0	100
370405	370400	3	台儿庄区	0	100
370406	370400	3	山亭区	0	100
370481	370400	3	滕州市	0	100
370500	370000	2	东营市	0	100
370501	370500	3	市辖区	0	100
370502	370500	3	东营区	0	100
370503	370500	3	河口区	0	100
370505	370500	3	垦利区	0	100
370522	370500	3	利津县	0	100
370523	370500	3	广饶县	0	100
370600	370000	2	烟台市	0	100
370601	370600	3	市辖区	0	100
370602	370600	3	芝罘区	0	100
370611	370600	3	福山区	0	100
370612	370600	3	牟平区	0	100
370613	370600	3	莱山区	0	100
370634	370600	3	长岛县	0	100
370681	370600	3	龙口市	0	100
370682	370600	3	莱阳市	0	100
370683	370600	3	莱州市	0	100
370684	370600	3	蓬莱市	0	100
370685	370600	3	招远市	0	100
370686	370600	3	栖霞市	0	100
370687	370600	3	海阳市	0	100
370700	370000	2	潍坊市	0	100
370701	370700	3	市辖区	0	100
370702	370700	3	潍城区	0	100
370703	370700	3	寒亭区	0	100
370704	370700	3	坊子区	0	100
370705	370700	3	奎文区	0	100
370724	370700	3	临朐县	0	100
370725	370700	3	昌乐县	0	100
370781	370700	3	青州市	0	100
370782	370700	3	诸城市	0	100
370783	370700	3	寿光市	0	100
370784	370700	3	安丘市	0	100
370785	370700	3	高密市	0	100
370786	370700	3	昌邑市	0	100
370800	370000	2	济宁市	0	100
370801	370800	3	市辖区	0	100
370811	370800	3	任城区	0	100
370812	370800	3	兖州区	0	100
370826	370800	3	微山县	0	100
370827	370800	3	鱼台县	0	100
370828	370800	3	金乡县	0	100
370829	370800	3	嘉祥县	0	100
370830	370800	3	汶上县	0	100
370831	370800	3	泗水县	0	100
370832	370800	3	梁山县	0	100
370881	370800	3	曲阜市	0	100
370883	370800	3	邹城市	0	100
370900	370000	2	泰安市	0	100
370901	370900	3	市辖区	0	100
370902	370900	3	泰山区	0	100
370911	370900	3	岱岳区	0	100
370921	370900	3	宁阳县	0	100
370923	370900	3	东平县	0	100
370982	370900	3	新泰市	0	100
370983	370900	3	肥城市	0	100
371000	370000	2	威海市	0	100
371001	371000	3	市辖区	0	100
371002	371000	3	环翠区	0	100
371003	371000	3	文登区	0	100
371082	371000	3	荣成市	0	100
371083	371000	3	乳山市	0	100
371100	370000	2	日照市	0	100
371101	371100	3	市辖区	0	100
371102	371100	3	东港区	0	100
371103	371100	3	岚山区	0	100
371121	371100	3	五莲县	0	100
371122	371100	3	莒县	0	100
371200	370000	2	莱芜市	0	100
371201	371200	3	市辖区	0	100
371202	371200	3	莱城区	0	100
371203	371200	3	钢城区	0	100
371300	370000	2	临沂市	0	100
371301	371300	3	市辖区	0	100
371302	371300	3	兰山区	0	100
371311	371300	3	罗庄区	0	100
371312	371300	3	河东区	0	100
371321	371300	3	沂南县	0	100
371322	371300	3	郯城县	0	100
371323	371300	3	沂水县	0	100
371324	371300	3	兰陵县	0	100
371325	371300	3	费县	0	100
371326	371300	3	平邑县	0	100
371327	371300	3	莒南县	0	100
371328	371300	3	蒙阴县	0	100
371329	371300	3	临沭县	0	100
371400	370000	2	德州市	0	100
371401	371400	3	市辖区	0	100
371402	371400	3	德城区	0	100
371403	371400	3	陵城区	0	100
371422	371400	3	宁津县	0	100
371423	371400	3	庆云县	0	100
371424	371400	3	临邑县	0	100
371425	371400	3	齐河县	0	100
371426	371400	3	平原县	0	100
371427	371400	3	夏津县	0	100
371428	371400	3	武城县	0	100
371481	371400	3	乐陵市	0	100
371482	371400	3	禹城市	0	100
371500	370000	2	聊城市	0	100
371501	371500	3	市辖区	0	100
371502	371500	3	东昌府区	0	100
371521	371500	3	阳谷县	0	100
371522	371500	3	莘县	0	100
371523	371500	3	茌平县	0	100
371524	371500	3	东阿县	0	100
371525	371500	3	冠县	0	100
371526	371500	3	高唐县	0	100
371581	371500	3	临清市	0	100
371600	370000	2	滨州市	0	100
371601	371600	3	市辖区	0	100
371602	371600	3	滨城区	0	100
371603	371600	3	沾化区	0	100
371621	371600	3	惠民县	0	100
371622	371600	3	阳信县	0	100
371623	371600	3	无棣县	0	100
371625	371600	3	博兴县	0	100
371626	371600	3	邹平县	0	100
371700	370000	2	菏泽市	0	100
371701	371700	3	市辖区	0	100
371702	371700	3	牡丹区	0	100
371703	371700	3	定陶区	0	100
371721	371700	3	曹县	0	100
371722	371700	3	单县	0	100
371723	371700	3	成武县	0	100
371724	371700	3	巨野县	0	100
371725	371700	3	郓城县	0	100
371726	371700	3	鄄城县	0	100
371728	371700	3	东明县	0	100
410000	0	1	河南省	0	100
410100	410000	2	郑州市	0	100
410101	410100	3	市辖区	0	100
410102	410100	3	中原区	0	100
410103	410100	3	二七区	0	100
410104	410100	3	管城回族区	0	100
410105	410100	3	金水区	0	100
410106	410100	3	上街区	0	100
410108	410100	3	惠济区	0	100
410122	410100	3	中牟县	0	100
410181	410100	3	巩义市	0	100
410182	410100	3	荥阳市	0	100
410183	410100	3	新密市	0	100
410184	410100	3	新郑市	0	100
410185	410100	3	登封市	0	100
410200	410000	2	开封市	0	100
410201	410200	3	市辖区	0	100
410202	410200	3	龙亭区	0	100
410203	410200	3	顺河回族区	0	100
410204	410200	3	鼓楼区	0	100
410205	410200	3	禹王台区	0	100
410211	410200	3	金明区	0	100
410212	410200	3	祥符区	0	100
410221	410200	3	杞县	0	100
410222	410200	3	通许县	0	100
410223	410200	3	尉氏县	0	100
410225	410200	3	兰考县	0	100
410300	410000	2	洛阳市	0	100
410301	410300	3	市辖区	0	100
410302	410300	3	老城区	0	100
410303	410300	3	西工区	0	100
410304	410300	3	瀍河回族区	0	100
410305	410300	3	涧西区	0	100
410306	410300	3	吉利区	0	100
410311	410300	3	洛龙区	0	100
410322	410300	3	孟津县	0	100
410323	410300	3	新安县	0	100
410324	410300	3	栾川县	0	100
410325	410300	3	嵩县	0	100
410326	410300	3	汝阳县	0	100
410327	410300	3	宜阳县	0	100
410328	410300	3	洛宁县	0	100
410329	410300	3	伊川县	0	100
410381	410300	3	偃师市	0	100
410400	410000	2	平顶山市	0	100
410401	410400	3	市辖区	0	100
410402	410400	3	新华区	0	100
410403	410400	3	卫东区	0	100
410404	410400	3	石龙区	0	100
410411	410400	3	湛河区	0	100
410421	410400	3	宝丰县	0	100
410422	410400	3	叶县	0	100
410423	410400	3	鲁山县	0	100
410425	410400	3	郏县	0	100
410481	410400	3	舞钢市	0	100
410482	410400	3	汝州市	0	100
410500	410000	2	安阳市	0	100
410501	410500	3	市辖区	0	100
410502	410500	3	文峰区	0	100
410503	410500	3	北关区	0	100
410505	410500	3	殷都区	0	100
410506	410500	3	龙安区	0	100
410522	410500	3	安阳县	0	100
410523	410500	3	汤阴县	0	100
410526	410500	3	滑县	0	100
410527	410500	3	内黄县	0	100
410581	410500	3	林州市	0	100
410600	410000	2	鹤壁市	0	100
410601	410600	3	市辖区	0	100
410602	410600	3	鹤山区	0	100
410603	410600	3	山城区	0	100
410611	410600	3	淇滨区	0	100
410621	410600	3	浚县	0	100
410622	410600	3	淇县	0	100
410700	410000	2	新乡市	0	100
410701	410700	3	市辖区	0	100
410702	410700	3	红旗区	0	100
410703	410700	3	卫滨区	0	100
410704	410700	3	凤泉区	0	100
410711	410700	3	牧野区	0	100
410721	410700	3	新乡县	0	100
410724	410700	3	获嘉县	0	100
410725	410700	3	原阳县	0	100
410726	410700	3	延津县	0	100
410727	410700	3	封丘县	0	100
410728	410700	3	长垣县	0	100
410781	410700	3	卫辉市	0	100
410782	410700	3	辉县市	0	100
410800	410000	2	焦作市	0	100
410801	410800	3	市辖区	0	100
410802	410800	3	解放区	0	100
410803	410800	3	中站区	0	100
410804	410800	3	马村区	0	100
410811	410800	3	山阳区	0	100
410821	410800	3	修武县	0	100
410822	410800	3	博爱县	0	100
410823	410800	3	武陟县	0	100
410825	410800	3	温县	0	100
410882	410800	3	沁阳市	0	100
410883	410800	3	孟州市	0	100
410900	410000	2	濮阳市	0	100
410901	410900	3	市辖区	0	100
410902	410900	3	华龙区	0	100
410922	410900	3	清丰县	0	100
410923	410900	3	南乐县	0	100
410926	410900	3	范县	0	100
410927	410900	3	台前县	0	100
410928	410900	3	濮阳县	0	100
411000	410000	2	许昌市	0	100
411001	411000	3	市辖区	0	100
411002	411000	3	魏都区	0	100
411023	411000	3	许昌县	0	100
411024	411000	3	鄢陵县	0	100
411025	411000	3	襄城县	0	100
411081	411000	3	禹州市	0	100
411082	411000	3	长葛市	0	100
411100	410000	2	漯河市	0	100
411101	411100	3	市辖区	0	100
411102	411100	3	源汇区	0	100
411103	411100	3	郾城区	0	100
411104	411100	3	召陵区	0	100
411121	411100	3	舞阳县	0	100
411122	411100	3	临颍县	0	100
411200	410000	2	三门峡市	0	100
411201	411200	3	市辖区	0	100
411202	411200	3	湖滨区	0	100
411203	411200	3	陕州区	0	100
411221	411200	3	渑池县	0	100
411224	411200	3	卢氏县	0	100
411281	411200	3	义马市	0	100
411282	411200	3	灵宝市	0	100
411300	410000	2	南阳市	0	100
411301	411300	3	市辖区	0	100
411302	411300	3	宛城区	0	100
411303	411300	3	卧龙区	0	100
411321	411300	3	南召县	0	100
411322	411300	3	方城县	0	100
411323	411300	3	西峡县	0	100
411324	411300	3	镇平县	0	100
411325	411300	3	内乡县	0	100
411326	411300	3	淅川县	0	100
411327	411300	3	社旗县	0	100
411328	411300	3	唐河县	0	100
411329	411300	3	新野县	0	100
411330	411300	3	桐柏县	0	100
411381	411300	3	邓州市	0	100
411400	410000	2	商丘市	0	100
411401	411400	3	市辖区	0	100
411402	411400	3	梁园区	0	100
411403	411400	3	睢阳区	0	100
411421	411400	3	民权县	0	100
411422	411400	3	睢县	0	100
411423	411400	3	宁陵县	0	100
411424	411400	3	柘城县	0	100
411425	411400	3	虞城县	0	100
411426	411400	3	夏邑县	0	100
411481	411400	3	永城市	0	100
411500	410000	2	信阳市	0	100
411501	411500	3	市辖区	0	100
411502	411500	3	浉河区	0	100
411503	411500	3	平桥区	0	100
411521	411500	3	罗山县	0	100
411522	411500	3	光山县	0	100
411523	411500	3	新县	0	100
411524	411500	3	商城县	0	100
411525	411500	3	固始县	0	100
411526	411500	3	潢川县	0	100
411527	411500	3	淮滨县	0	100
411528	411500	3	息县	0	100
411600	410000	2	周口市	0	100
411601	411600	3	市辖区	0	100
411602	411600	3	川汇区	0	100
411621	411600	3	扶沟县	0	100
411622	411600	3	西华县	0	100
411623	411600	3	商水县	0	100
411624	411600	3	沈丘县	0	100
411625	411600	3	郸城县	0	100
411626	411600	3	淮阳县	0	100
411627	411600	3	太康县	0	100
411628	411600	3	鹿邑县	0	100
411681	411600	3	项城市	0	100
411700	410000	2	驻马店市	0	100
411701	411700	3	市辖区	0	100
411702	411700	3	驿城区	0	100
411721	411700	3	西平县	0	100
411722	411700	3	上蔡县	0	100
411723	411700	3	平舆县	0	100
411724	411700	3	正阳县	0	100
411725	411700	3	确山县	0	100
411726	411700	3	泌阳县	0	100
411727	411700	3	汝南县	0	100
411728	411700	3	遂平县	0	100
411729	411700	3	新蔡县	0	100
419000	410000	2	省直辖县级行政区划	0	100
419001	419000	3	市辖区	0	100
420000	0	1	湖北省	0	100
420100	420000	2	武汉市	0	100
420101	420100	3	市辖区	0	100
420102	420100	3	江岸区	0	100
420103	420100	3	江汉区	0	100
420104	420100	3	硚口区	0	100
420105	420100	3	汉阳区	0	100
420106	420100	3	武昌区	0	100
420107	420100	3	青山区	0	100
420111	420100	3	洪山区	0	100
420112	420100	3	东西湖区	0	100
420113	420100	3	汉南区	0	100
420114	420100	3	蔡甸区	0	100
420115	420100	3	江夏区	0	100
420116	420100	3	黄陂区	0	100
420117	420100	3	新洲区	0	100
420200	420000	2	黄石市	0	100
420201	420200	3	市辖区	0	100
420202	420200	3	黄石港区	0	100
420203	420200	3	西塞山区	0	100
420204	420200	3	下陆区	0	100
420205	420200	3	铁山区	0	100
420222	420200	3	阳新县	0	100
420281	420200	3	大冶市	0	100
420300	420000	2	十堰市	0	100
420301	420300	3	市辖区	0	100
420302	420300	3	茅箭区	0	100
420303	420300	3	张湾区	0	100
420304	420300	3	郧阳区	0	100
420322	420300	3	郧西县	0	100
420323	420300	3	竹山县	0	100
420324	420300	3	竹溪县	0	100
420325	420300	3	房县	0	100
420381	420300	3	丹江口市	0	100
420500	420000	2	宜昌市	0	100
420501	420500	3	市辖区	0	100
420502	420500	3	西陵区	0	100
420503	420500	3	伍家岗区	0	100
420504	420500	3	点军区	0	100
420505	420500	3	猇亭区	0	100
420506	420500	3	夷陵区	0	100
420525	420500	3	远安县	0	100
420526	420500	3	兴山县	0	100
420527	420500	3	秭归县	0	100
420528	420500	3	长阳土家族自治县	0	100
420529	420500	3	五峰土家族自治县	0	100
420581	420500	3	宜都市	0	100
420582	420500	3	当阳市	0	100
420583	420500	3	枝江市	0	100
420600	420000	2	襄阳市	0	100
420601	420600	3	市辖区	0	100
420602	420600	3	襄城区	0	100
420606	420600	3	樊城区	0	100
420607	420600	3	襄州区	0	100
420624	420600	3	南漳县	0	100
420625	420600	3	谷城县	0	100
420626	420600	3	保康县	0	100
420682	420600	3	老河口市	0	100
420683	420600	3	枣阳市	0	100
420684	420600	3	宜城市	0	100
420700	420000	2	鄂州市	0	100
420701	420700	3	市辖区	0	100
420702	420700	3	梁子湖区	0	100
420703	420700	3	华容区	0	100
420704	420700	3	鄂城区	0	100
420800	420000	2	荆门市	0	100
420801	420800	3	市辖区	0	100
420802	420800	3	东宝区	0	100
420804	420800	3	掇刀区	0	100
420821	420800	3	京山县	0	100
420822	420800	3	沙洋县	0	100
420881	420800	3	钟祥市	0	100
420900	420000	2	孝感市	0	100
420901	420900	3	市辖区	0	100
420902	420900	3	孝南区	0	100
420921	420900	3	孝昌县	0	100
420922	420900	3	大悟县	0	100
420923	420900	3	云梦县	0	100
420981	420900	3	应城市	0	100
420982	420900	3	安陆市	0	100
420984	420900	3	汉川市	0	100
421000	420000	2	荆州市	0	100
421001	421000	3	市辖区	0	100
421002	421000	3	沙市区	0	100
421003	421000	3	荆州区	0	100
421022	421000	3	公安县	0	100
421023	421000	3	监利县	0	100
421024	421000	3	江陵县	0	100
421081	421000	3	石首市	0	100
421083	421000	3	洪湖市	0	100
421087	421000	3	松滋市	0	100
421100	420000	2	黄冈市	0	100
421101	421100	3	市辖区	0	100
421102	421100	3	黄州区	0	100
421121	421100	3	团风县	0	100
421122	421100	3	红安县	0	100
421123	421100	3	罗田县	0	100
421124	421100	3	英山县	0	100
421125	421100	3	浠水县	0	100
421126	421100	3	蕲春县	0	100
421127	421100	3	黄梅县	0	100
421181	421100	3	麻城市	0	100
421182	421100	3	武穴市	0	100
421200	420000	2	咸宁市	0	100
421201	421200	3	市辖区	0	100
421202	421200	3	咸安区	0	100
421221	421200	3	嘉鱼县	0	100
421222	421200	3	通城县	0	100
421223	421200	3	崇阳县	0	100
421224	421200	3	通山县	0	100
421281	421200	3	赤壁市	0	100
421300	420000	2	随州市	0	100
421301	421300	3	市辖区	0	100
421303	421300	3	曾都区	0	100
421321	421300	3	随县	0	100
421381	421300	3	广水市	0	100
422800	420000	2	恩施土家族苗族自治州	0	100
422801	422800	3	市辖区	0	100
422802	422800	3	利川市	0	100
422822	422800	3	建始县	0	100
422823	422800	3	巴东县	0	100
422825	422800	3	宣恩县	0	100
422826	422800	3	咸丰县	0	100
422827	422800	3	来凤县	0	100
422828	422800	3	鹤峰县	0	100
429000	420000	2	省直辖县级行政区划	0	100
429004	429000	3	仙桃市	0	100
429005	429000	3	潜江市	0	100
429006	429000	3	天门市	0	100
429021	429000	3	神农架林区	0	100
430000	0	1	湖南省	0	100
430100	430000	2	长沙市	0	100
430101	430100	3	市辖区	0	100
430102	430100	3	芙蓉区	0	100
430103	430100	3	天心区	0	100
430104	430100	3	岳麓区	0	100
430105	430100	3	开福区	0	100
430111	430100	3	雨花区	0	100
430112	430100	3	望城区	0	100
430121	430100	3	长沙县	0	100
430124	430100	3	宁乡县	0	100
430181	430100	3	浏阳市	0	100
430200	430000	2	株洲市	0	100
430201	430200	3	市辖区	0	100
430202	430200	3	荷塘区	0	100
430203	430200	3	芦淞区	0	100
430204	430200	3	石峰区	0	100
430211	430200	3	天元区	0	100
430221	430200	3	株洲县	0	100
430223	430200	3	攸县	0	100
430224	430200	3	茶陵县	0	100
430225	430200	3	炎陵县	0	100
430281	430200	3	醴陵市	0	100
430300	430000	2	湘潭市	0	100
430301	430300	3	市辖区	0	100
430302	430300	3	雨湖区	0	100
430304	430300	3	岳塘区	0	100
430321	430300	3	湘潭县	0	100
430381	430300	3	湘乡市	0	100
430382	430300	3	韶山市	0	100
430400	430000	2	衡阳市	0	100
430401	430400	3	市辖区	0	100
430405	430400	3	珠晖区	0	100
430406	430400	3	雁峰区	0	100
430407	430400	3	石鼓区	0	100
430408	430400	3	蒸湘区	0	100
430412	430400	3	南岳区	0	100
430421	430400	3	衡阳县	0	100
430422	430400	3	衡南县	0	100
430423	430400	3	衡山县	0	100
430424	430400	3	衡东县	0	100
430426	430400	3	祁东县	0	100
430481	430400	3	耒阳市	0	100
430482	430400	3	常宁市	0	100
430500	430000	2	邵阳市	0	100
430501	430500	3	市辖区	0	100
430502	430500	3	双清区	0	100
430503	430500	3	大祥区	0	100
430511	430500	3	北塔区	0	100
430521	430500	3	邵东县	0	100
430522	430500	3	新邵县	0	100
430523	430500	3	邵阳县	0	100
430524	430500	3	隆回县	0	100
430525	430500	3	洞口县	0	100
430527	430500	3	绥宁县	0	100
430528	430500	3	新宁县	0	100
430529	430500	3	城步苗族自治县	0	100
430581	430500	3	武冈市	0	100
430600	430000	2	岳阳市	0	100
430601	430600	3	市辖区	0	100
430602	430600	3	岳阳楼区	0	100
430603	430600	3	云溪区	0	100
430611	430600	3	君山区	0	100
430621	430600	3	岳阳县	0	100
430623	430600	3	华容县	0	100
430624	430600	3	湘阴县	0	100
430626	430600	3	平江县	0	100
430681	430600	3	汨罗市	0	100
430682	430600	3	临湘市	0	100
430700	430000	2	常德市	0	100
430701	430700	3	市辖区	0	100
430702	430700	3	武陵区	0	100
430703	430700	3	鼎城区	0	100
430721	430700	3	安乡县	0	100
430722	430700	3	汉寿县	0	100
430723	430700	3	澧县	0	100
430724	430700	3	临澧县	0	100
430725	430700	3	桃源县	0	100
430726	430700	3	石门县	0	100
430781	430700	3	津市市	0	100
430800	430000	2	张家界市	0	100
430801	430800	3	市辖区	0	100
430802	430800	3	永定区	0	100
430811	430800	3	武陵源区	0	100
430821	430800	3	慈利县	0	100
430822	430800	3	桑植县	0	100
430900	430000	2	益阳市	0	100
430901	430900	3	市辖区	0	100
430902	430900	3	资阳区	0	100
430903	430900	3	赫山区	0	100
430921	430900	3	南县	0	100
430922	430900	3	桃江县	0	100
430923	430900	3	安化县	0	100
430981	430900	3	沅江市	0	100
431000	430000	2	郴州市	0	100
431001	431000	3	市辖区	0	100
431002	431000	3	北湖区	0	100
431003	431000	3	苏仙区	0	100
431021	431000	3	桂阳县	0	100
431022	431000	3	宜章县	0	100
431023	431000	3	永兴县	0	100
431024	431000	3	嘉禾县	0	100
431025	431000	3	临武县	0	100
431026	431000	3	汝城县	0	100
431027	431000	3	桂东县	0	100
431028	431000	3	安仁县	0	100
431081	431000	3	资兴市	0	100
431100	430000	2	永州市	0	100
431101	431100	3	市辖区	0	100
431102	431100	3	零陵区	0	100
431103	431100	3	冷水滩区	0	100
431121	431100	3	祁阳县	0	100
431122	431100	3	东安县	0	100
431123	431100	3	双牌县	0	100
431124	431100	3	道县	0	100
431125	431100	3	江永县	0	100
431126	431100	3	宁远县	0	100
431127	431100	3	蓝山县	0	100
431128	431100	3	新田县	0	100
431129	431100	3	江华瑶族自治县	0	100
431200	430000	2	怀化市	0	100
431201	431200	3	市辖区	0	100
431202	431200	3	鹤城区	0	100
431221	431200	3	中方县	0	100
431222	431200	3	沅陵县	0	100
431223	431200	3	辰溪县	0	100
431224	431200	3	溆浦县	0	100
431225	431200	3	会同县	0	100
431226	431200	3	麻阳苗族自治县	0	100
431227	431200	3	新晃侗族自治县	0	100
431228	431200	3	芷江侗族自治县	0	100
431229	431200	3	靖州苗族侗族自治县	0	100
431230	431200	3	通道侗族自治县	0	100
431281	431200	3	洪江市	0	100
431300	430000	2	娄底市	0	100
431301	431300	3	市辖区	0	100
431302	431300	3	娄星区	0	100
431321	431300	3	双峰县	0	100
431322	431300	3	新化县	0	100
431381	431300	3	冷水江市	0	100
431382	431300	3	涟源市	0	100
433100	430000	2	湘西土家族苗族自治州	0	100
433101	433100	3	市辖区	0	100
433122	433100	3	泸溪县	0	100
433123	433100	3	凤凰县	0	100
433124	433100	3	花垣县	0	100
433125	433100	3	保靖县	0	100
433126	433100	3	古丈县	0	100
433127	433100	3	永顺县	0	100
433130	433100	3	龙山县	0	100
440000	0	1	广东省	0	100
440100	440000	2	广州市	0	100
440101	440100	3	市辖区	0	100
440103	440100	3	荔湾区	0	100
440104	440100	3	越秀区	0	100
440105	440100	3	海珠区	0	100
440106	440100	3	天河区	0	100
440111	440100	3	白云区	0	100
440112	440100	3	黄埔区	0	100
440113	440100	3	番禺区	0	100
440114	440100	3	花都区	0	100
440115	440100	3	南沙区	0	100
440117	440100	3	从化区	0	100
440118	440100	3	增城区	0	100
440200	440000	2	韶关市	0	100
440201	440200	3	市辖区	0	100
440203	440200	3	武江区	0	100
440204	440200	3	浈江区	0	100
440205	440200	3	曲江区	0	100
440222	440200	3	始兴县	0	100
440224	440200	3	仁化县	0	100
440229	440200	3	翁源县	0	100
440232	440200	3	乳源瑶族自治县	0	100
440233	440200	3	新丰县	0	100
440281	440200	3	乐昌市	0	100
440282	440200	3	南雄市	0	100
440300	440000	2	深圳市	0	100
440301	440300	3	市辖区	0	100
440303	440300	3	罗湖区	0	100
440304	440300	3	福田区	0	100
440305	440300	3	南山区	0	100
440306	440300	3	宝安区	0	100
440307	440300	3	龙岗区	0	100
440308	440300	3	盐田区	0	100
440400	440000	2	珠海市	0	100
440401	440400	3	市辖区	0	100
440402	440400	3	香洲区	0	100
440403	440400	3	斗门区	0	100
440404	440400	3	金湾区	0	100
440500	440000	2	汕头市	0	100
440501	440500	3	市辖区	0	100
440507	440500	3	龙湖区	0	100
440511	440500	3	金平区	0	100
440512	440500	3	濠江区	0	100
440513	440500	3	潮阳区	0	100
440514	440500	3	潮南区	0	100
440515	440500	3	澄海区	0	100
440523	440500	3	南澳县	0	100
440600	440000	2	佛山市	0	100
440601	440600	3	市辖区	0	100
440604	440600	3	禅城区	0	100
440605	440600	3	南海区	0	100
440606	440600	3	顺德区	0	100
440607	440600	3	三水区	0	100
440608	440600	3	高明区	0	100
440700	440000	2	江门市	0	100
440701	440700	3	市辖区	0	100
440703	440700	3	蓬江区	0	100
440704	440700	3	江海区	0	100
440705	440700	3	新会区	0	100
440781	440700	3	台山市	0	100
440783	440700	3	开平市	0	100
440784	440700	3	鹤山市	0	100
440785	440700	3	恩平市	0	100
440800	440000	2	湛江市	0	100
440801	440800	3	市辖区	0	100
440802	440800	3	赤坎区	0	100
440803	440800	3	霞山区	0	100
440804	440800	3	坡头区	0	100
440811	440800	3	麻章区	0	100
440823	440800	3	遂溪县	0	100
440825	440800	3	徐闻县	0	100
440881	440800	3	廉江市	0	100
440882	440800	3	雷州市	0	100
440883	440800	3	吴川市	0	100
440900	440000	2	茂名市	0	100
440901	440900	3	市辖区	0	100
440902	440900	3	茂南区	0	100
440904	440900	3	电白区	0	100
440981	440900	3	高州市	0	100
440982	440900	3	化州市	0	100
440983	440900	3	信宜市	0	100
441200	440000	2	肇庆市	0	100
441201	441200	3	市辖区	0	100
441202	441200	3	端州区	0	100
441203	441200	3	鼎湖区	0	100
441204	441200	3	高要区	0	100
441223	441200	3	广宁县	0	100
441224	441200	3	怀集县	0	100
441225	441200	3	封开县	0	100
441226	441200	3	德庆县	0	100
441284	441200	3	四会市	0	100
441300	440000	2	惠州市	0	100
441301	441300	3	市辖区	0	100
441302	441300	3	惠城区	0	100
441303	441300	3	惠阳区	0	100
441322	441300	3	博罗县	0	100
441323	441300	3	惠东县	0	100
441324	441300	3	龙门县	0	100
441400	440000	2	梅州市	0	100
441401	441400	3	市辖区	0	100
441402	441400	3	梅江区	0	100
441403	441400	3	梅县区	0	100
441422	441400	3	大埔县	0	100
441423	441400	3	丰顺县	0	100
441424	441400	3	五华县	0	100
441426	441400	3	平远县	0	100
441427	441400	3	蕉岭县	0	100
441481	441400	3	兴宁市	0	100
441500	440000	2	汕尾市	0	100
441501	441500	3	市辖区	0	100
441502	441500	3	城区	0	100
441521	441500	3	海丰县	0	100
441523	441500	3	陆河县	0	100
441581	441500	3	陆丰市	0	100
441600	440000	2	河源市	0	100
441601	441600	3	市辖区	0	100
441602	441600	3	源城区	0	100
441621	441600	3	紫金县	0	100
441622	441600	3	龙川县	0	100
441623	441600	3	连平县	0	100
441624	441600	3	和平县	0	100
441625	441600	3	东源县	0	100
441700	440000	2	阳江市	0	100
441701	441700	3	市辖区	0	100
441702	441700	3	江城区	0	100
441704	441700	3	阳东区	0	100
441721	441700	3	阳西县	0	100
441781	441700	3	阳春市	0	100
441800	440000	2	清远市	0	100
441801	441800	3	市辖区	0	100
441802	441800	3	清城区	0	100
441803	441800	3	清新区	0	100
441821	441800	3	佛冈县	0	100
441823	441800	3	阳山县	0	100
441825	441800	3	连山壮族瑶族自治县	0	100
441826	441800	3	连南瑶族自治县	0	100
441881	441800	3	英德市	0	100
441882	441800	3	连州市	0	100
441900	440000	2	东莞市	0	100
442000	440000	2	中山市	0	100
445100	440000	2	潮州市	0	100
445101	445100	3	市辖区	0	100
445102	445100	3	湘桥区	0	100
445103	445100	3	潮安区	0	100
445122	445100	3	饶平县	0	100
445200	440000	2	揭阳市	0	100
445201	445200	3	市辖区	0	100
445202	445200	3	榕城区	0	100
445203	445200	3	揭东区	0	100
445222	445200	3	揭西县	0	100
445224	445200	3	惠来县	0	100
445281	445200	3	普宁市	0	100
445300	440000	2	云浮市	0	100
445301	445300	3	市辖区	0	100
445302	445300	3	云城区	0	100
445303	445300	3	云安区	0	100
445321	445300	3	新兴县	0	100
445322	445300	3	郁南县	0	100
445381	445300	3	罗定市	0	100
450000	0	1	广西壮族自治区	0	100
450100	450000	2	南宁市	0	100
450101	450100	3	市辖区	0	100
450102	450100	3	兴宁区	0	100
450103	450100	3	青秀区	0	100
450105	450100	3	江南区	0	100
450107	450100	3	西乡塘区	0	100
450108	450100	3	良庆区	0	100
450109	450100	3	邕宁区	0	100
450110	450100	3	武鸣区	0	100
450123	450100	3	隆安县	0	100
450124	450100	3	马山县	0	100
450125	450100	3	上林县	0	100
450126	450100	3	宾阳县	0	100
450127	450100	3	横县	0	100
450200	450000	2	柳州市	0	100
450201	450200	3	市辖区	0	100
450202	450200	3	城中区	0	100
450203	450200	3	鱼峰区	0	100
450204	450200	3	柳南区	0	100
450205	450200	3	柳北区	0	100
450206	450200	3	柳江区	0	100
450222	450200	3	柳城县	0	100
450223	450200	3	鹿寨县	0	100
450224	450200	3	融安县	0	100
450225	450200	3	融水苗族自治县	0	100
450226	450200	3	三江侗族自治县	0	100
450300	450000	2	桂林市	0	100
450301	450300	3	市辖区	0	100
450302	450300	3	秀峰区	0	100
450303	450300	3	叠彩区	0	100
450304	450300	3	象山区	0	100
450305	450300	3	七星区	0	100
450311	450300	3	雁山区	0	100
450312	450300	3	临桂区	0	100
450321	450300	3	阳朔县	0	100
450323	450300	3	灵川县	0	100
450324	450300	3	全州县	0	100
450325	450300	3	兴安县	0	100
450326	450300	3	永福县	0	100
450327	450300	3	灌阳县	0	100
450328	450300	3	龙胜各族自治县	0	100
450329	450300	3	资源县	0	100
450330	450300	3	平乐县	0	100
450331	450300	3	荔浦县	0	100
450332	450300	3	恭城瑶族自治县	0	100
450400	450000	2	梧州市	0	100
450401	450400	3	市辖区	0	100
450403	450400	3	万秀区	0	100
450405	450400	3	长洲区	0	100
450406	450400	3	龙圩区	0	100
450421	450400	3	苍梧县	0	100
450422	450400	3	藤县	0	100
450423	450400	3	蒙山县	0	100
450481	450400	3	岑溪市	0	100
450500	450000	2	北海市	0	100
450501	450500	3	市辖区	0	100
450502	450500	3	海城区	0	100
450503	450500	3	银海区	0	100
450512	450500	3	铁山港区	0	100
450521	450500	3	合浦县	0	100
450600	450000	2	防城港市	0	100
450601	450600	3	市辖区	0	100
450602	450600	3	港口区	0	100
450603	450600	3	防城区	0	100
450621	450600	3	上思县	0	100
450681	450600	3	东兴市	0	100
450700	450000	2	钦州市	0	100
450701	450700	3	市辖区	0	100
450702	450700	3	钦南区	0	100
450703	450700	3	钦北区	0	100
450721	450700	3	灵山县	0	100
450722	450700	3	浦北县	0	100
450800	450000	2	贵港市	0	100
450801	450800	3	市辖区	0	100
450802	450800	3	港北区	0	100
450803	450800	3	港南区	0	100
450804	450800	3	覃塘区	0	100
450821	450800	3	平南县	0	100
450881	450800	3	桂平市	0	100
450900	450000	2	玉林市	0	100
450901	450900	3	市辖区	0	100
450902	450900	3	玉州区	0	100
450903	450900	3	福绵区	0	100
450921	450900	3	容县	0	100
450922	450900	3	陆川县	0	100
450923	450900	3	博白县	0	100
450924	450900	3	兴业县	0	100
450981	450900	3	北流市	0	100
451000	450000	2	百色市	0	100
451001	451000	3	市辖区	0	100
451002	451000	3	右江区	0	100
451021	451000	3	田阳县	0	100
451022	451000	3	田东县	0	100
451023	451000	3	平果县	0	100
451024	451000	3	德保县	0	100
451026	451000	3	那坡县	0	100
451027	451000	3	凌云县	0	100
451028	451000	3	乐业县	0	100
451029	451000	3	田林县	0	100
451030	451000	3	西林县	0	100
451031	451000	3	隆林各族自治县	0	100
451081	451000	3	靖西市	0	100
451100	450000	2	贺州市	0	100
451101	451100	3	市辖区	0	100
451102	451100	3	八步区	0	100
451103	451100	3	平桂区	0	100
451121	451100	3	昭平县	0	100
451122	451100	3	钟山县	0	100
451123	451100	3	富川瑶族自治县	0	100
451200	450000	2	河池市	0	100
451201	451200	3	市辖区	0	100
451202	451200	3	金城江区	0	100
451221	451200	3	南丹县	0	100
451222	451200	3	天峨县	0	100
451223	451200	3	凤山县	0	100
451224	451200	3	东兰县	0	100
451225	451200	3	罗城仫佬族自治县	0	100
451226	451200	3	环江毛南族自治县	0	100
451227	451200	3	巴马瑶族自治县	0	100
451228	451200	3	都安瑶族自治县	0	100
451229	451200	3	大化瑶族自治县	0	100
451281	451200	3	宜州市	0	100
451300	450000	2	来宾市	0	100
451301	451300	3	市辖区	0	100
451302	451300	3	兴宾区	0	100
451321	451300	3	忻城县	0	100
451322	451300	3	象州县	0	100
451323	451300	3	武宣县	0	100
451324	451300	3	金秀瑶族自治县	0	100
451381	451300	3	合山市	0	100
451400	450000	2	崇左市	0	100
451401	451400	3	市辖区	0	100
451402	451400	3	江州区	0	100
451421	451400	3	扶绥县	0	100
451422	451400	3	宁明县	0	100
451423	451400	3	龙州县	0	100
451424	451400	3	大新县	0	100
451425	451400	3	天等县	0	100
451481	451400	3	凭祥市	0	100
460000	0	1	海南省	0	100
460100	460000	2	海口市	0	100
460101	460100	3	市辖区	0	100
460105	460100	3	秀英区	0	100
460106	460100	3	龙华区	0	100
460107	460100	3	琼山区	0	100
460108	460100	3	美兰区	0	100
460200	460000	2	三亚市	0	100
460201	460200	3	市辖区	0	100
460202	460200	3	海棠区	0	100
460203	460200	3	吉阳区	0	100
460204	460200	3	天涯区	0	100
460205	460200	3	崖州区	0	100
460300	460000	2	三沙市	0	100
460400	460000	2	儋州市	0	100
469000	460000	2	省直辖县级行政区划	0	100
469001	469000	3	市辖区	0	100
469002	469000	3	琼海市	0	100
469005	469000	3	文昌市	0	100
469006	469000	3	万宁市	0	100
469007	469000	3	东方市	0	100
469021	469000	3	定安县	0	100
469022	469000	3	屯昌县	0	100
469023	469000	3	澄迈县	0	100
469024	469000	3	临高县	0	100
469025	469000	3	白沙黎族自治县	0	100
469026	469000	3	昌江黎族自治县	0	100
469027	469000	3	乐东黎族自治县	0	100
469028	469000	3	陵水黎族自治县	0	100
469029	469000	3	保亭黎族苗族自治县	0	100
469030	469000	3	琼中黎族苗族自治县	0	100
500000	0	1	重庆市	0	100
500100	500000	2	重庆市	0	100
500101	500100	3	万州区	0	100
500102	500100	3	涪陵区	0	100
500103	500100	3	渝中区	0	100
500104	500100	3	大渡口区	0	100
500105	500100	3	江北区	0	100
500106	500100	3	沙坪坝区	0	100
500107	500100	3	九龙坡区	0	100
500108	500100	3	南岸区	0	100
500109	500100	3	北碚区	0	100
500110	500100	3	綦江区	0	100
500111	500100	3	大足区	0	100
500112	500100	3	渝北区	0	100
500113	500100	3	巴南区	0	100
500114	500100	3	黔江区	0	100
500115	500100	3	长寿区	0	100
500116	500100	3	江津区	0	100
500117	500100	3	合川区	0	100
500118	500100	3	永川区	0	100
500119	500100	3	南川区	0	100
500120	500100	3	璧山区	0	100
500151	500100	3	铜梁区	0	100
500152	500100	3	潼南区	0	100
500153	500100	3	荣昌区	0	100
500154	500100	3	开州区	0	100
500200	500000	2	县	0	100
500228	500200	3	梁平县	0	100
500229	500200	3	城口县	0	100
500230	500200	3	丰都县	0	100
500231	500200	3	垫江县	0	100
500232	500200	3	武隆县	0	100
500233	500200	3	忠县	0	100
500235	500200	3	云阳县	0	100
500236	500200	3	奉节县	0	100
500237	500200	3	巫山县	0	100
500238	500200	3	巫溪县	0	100
500240	500200	3	石柱土家族自治县	0	100
500241	500200	3	秀山土家族苗族自治县	0	100
500242	500200	3	酉阳土家族苗族自治县	0	100
500243	500200	3	彭水苗族土家族自治县	0	100
510000	0	1	四川省	0	100
510100	510000	2	成都市	0	100
510101	510100	3	市辖区	0	100
510104	510100	3	锦江区	0	100
510105	510100	3	青羊区	0	100
510106	510100	3	金牛区	0	100
510107	510100	3	武侯区	0	100
510108	510100	3	成华区	0	100
510112	510100	3	龙泉驿区	0	100
510113	510100	3	青白江区	0	100
510114	510100	3	新都区	0	100
510115	510100	3	温江区	0	100
510116	510100	3	双流区	0	100
510121	510100	3	金堂县	0	100
510124	510100	3	郫县	0	100
510129	510100	3	大邑县	0	100
510131	510100	3	蒲江县	0	100
510132	510100	3	新津县	0	100
510181	510100	3	都江堰市	0	100
510182	510100	3	彭州市	0	100
510183	510100	3	邛崃市	0	100
510184	510100	3	崇州市	0	100
510185	510100	3	简阳市	0	100
510300	510000	2	自贡市	0	100
510301	510300	3	市辖区	0	100
510302	510300	3	自流井区	0	100
510303	510300	3	贡井区	0	100
510304	510300	3	大安区	0	100
510311	510300	3	沿滩区	0	100
510321	510300	3	荣县	0	100
510322	510300	3	富顺县	0	100
510400	510000	2	攀枝花市	0	100
510401	510400	3	市辖区	0	100
510402	510400	3	东区	0	100
510403	510400	3	西区	0	100
510411	510400	3	仁和区	0	100
510421	510400	3	米易县	0	100
510422	510400	3	盐边县	0	100
510500	510000	2	泸州市	0	100
510501	510500	3	市辖区	0	100
510502	510500	3	江阳区	0	100
510503	510500	3	纳溪区	0	100
510504	510500	3	龙马潭区	0	100
510521	510500	3	泸县	0	100
510522	510500	3	合江县	0	100
510524	510500	3	叙永县	0	100
510525	510500	3	古蔺县	0	100
510600	510000	2	德阳市	0	100
510601	510600	3	市辖区	0	100
510603	510600	3	旌阳区	0	100
510623	510600	3	中江县	0	100
510626	510600	3	罗江县	0	100
510681	510600	3	广汉市	0	100
510682	510600	3	什邡市	0	100
510683	510600	3	绵竹市	0	100
510700	510000	2	绵阳市	0	100
510701	510700	3	市辖区	0	100
510703	510700	3	涪城区	0	100
510704	510700	3	游仙区	0	100
510705	510700	3	安州区	0	100
510722	510700	3	三台县	0	100
510723	510700	3	盐亭县	0	100
510725	510700	3	梓潼县	0	100
510726	510700	3	北川羌族自治县	0	100
510727	510700	3	平武县	0	100
510781	510700	3	江油市	0	100
510800	510000	2	广元市	0	100
510801	510800	3	市辖区	0	100
510802	510800	3	利州区	0	100
510811	510800	3	昭化区	0	100
510812	510800	3	朝天区	0	100
510821	510800	3	旺苍县	0	100
510822	510800	3	青川县	0	100
510823	510800	3	剑阁县	0	100
510824	510800	3	苍溪县	0	100
510900	510000	2	遂宁市	0	100
510901	510900	3	市辖区	0	100
510903	510900	3	船山区	0	100
510904	510900	3	安居区	0	100
510921	510900	3	蓬溪县	0	100
510922	510900	3	射洪县	0	100
510923	510900	3	大英县	0	100
511000	510000	2	内江市	0	100
511001	511000	3	市辖区	0	100
511002	511000	3	市中区	0	100
511011	511000	3	东兴区	0	100
511024	511000	3	威远县	0	100
511025	511000	3	资中县	0	100
511028	511000	3	隆昌县	0	100
511100	510000	2	乐山市	0	100
511101	511100	3	市辖区	0	100
511102	511100	3	市中区	0	100
511111	511100	3	沙湾区	0	100
511112	511100	3	五通桥区	0	100
511113	511100	3	金口河区	0	100
511123	511100	3	犍为县	0	100
511124	511100	3	井研县	0	100
511126	511100	3	夹江县	0	100
511129	511100	3	沐川县	0	100
511132	511100	3	峨边彝族自治县	0	100
511133	511100	3	马边彝族自治县	0	100
511181	511100	3	峨眉山市	0	100
511300	510000	2	南充市	0	100
511301	511300	3	市辖区	0	100
511302	511300	3	顺庆区	0	100
511303	511300	3	高坪区	0	100
511304	511300	3	嘉陵区	0	100
511321	511300	3	南部县	0	100
511322	511300	3	营山县	0	100
511323	511300	3	蓬安县	0	100
511324	511300	3	仪陇县	0	100
511325	511300	3	西充县	0	100
511381	511300	3	阆中市	0	100
511400	510000	2	眉山市	0	100
511401	511400	3	市辖区	0	100
511402	511400	3	东坡区	0	100
511403	511400	3	彭山区	0	100
511421	511400	3	仁寿县	0	100
511423	511400	3	洪雅县	0	100
511424	511400	3	丹棱县	0	100
511425	511400	3	青神县	0	100
511500	510000	2	宜宾市	0	100
511501	511500	3	市辖区	0	100
511502	511500	3	翠屏区	0	100
511503	511500	3	南溪区	0	100
511521	511500	3	宜宾县	0	100
511523	511500	3	江安县	0	100
511524	511500	3	长宁县	0	100
511525	511500	3	高县	0	100
511526	511500	3	珙县	0	100
511527	511500	3	筠连县	0	100
511528	511500	3	兴文县	0	100
511529	511500	3	屏山县	0	100
511600	510000	2	广安市	0	100
511601	511600	3	市辖区	0	100
511602	511600	3	广安区	0	100
511603	511600	3	前锋区	0	100
511621	511600	3	岳池县	0	100
511622	511600	3	武胜县	0	100
511623	511600	3	邻水县	0	100
511681	511600	3	华蓥市	0	100
511700	510000	2	达州市	0	100
511701	511700	3	市辖区	0	100
511702	511700	3	通川区	0	100
511703	511700	3	达川区	0	100
511722	511700	3	宣汉县	0	100
511723	511700	3	开江县	0	100
511724	511700	3	大竹县	0	100
511725	511700	3	渠县	0	100
511781	511700	3	万源市	0	100
511800	510000	2	雅安市	0	100
511801	511800	3	市辖区	0	100
511802	511800	3	雨城区	0	100
511803	511800	3	名山区	0	100
511822	511800	3	荥经县	0	100
511823	511800	3	汉源县	0	100
511824	511800	3	石棉县	0	100
511825	511800	3	天全县	0	100
511826	511800	3	芦山县	0	100
511827	511800	3	宝兴县	0	100
511900	510000	2	巴中市	0	100
511901	511900	3	市辖区	0	100
511902	511900	3	巴州区	0	100
511903	511900	3	恩阳区	0	100
511921	511900	3	通江县	0	100
511922	511900	3	南江县	0	100
511923	511900	3	平昌县	0	100
512000	510000	2	资阳市	0	100
512001	512000	3	市辖区	0	100
512002	512000	3	雁江区	0	100
512021	512000	3	安岳县	0	100
512022	512000	3	乐至县	0	100
513200	510000	2	阿坝藏族羌族自治州	0	100
513201	513200	3	市辖区	0	100
513221	513200	3	汶川县	0	100
513222	513200	3	理县	0	100
513223	513200	3	茂县	0	100
513224	513200	3	松潘县	0	100
513225	513200	3	九寨沟县	0	100
513226	513200	3	金川县	0	100
513227	513200	3	小金县	0	100
513228	513200	3	黑水县	0	100
513230	513200	3	壤塘县	0	100
513231	513200	3	阿坝县	0	100
513232	513200	3	若尔盖县	0	100
513233	513200	3	红原县	0	100
513300	510000	2	甘孜藏族自治州	0	100
513301	513300	3	市辖区	0	100
513322	513300	3	泸定县	0	100
513323	513300	3	丹巴县	0	100
513324	513300	3	九龙县	0	100
513325	513300	3	雅江县	0	100
513326	513300	3	道孚县	0	100
513327	513300	3	炉霍县	0	100
513328	513300	3	甘孜县	0	100
513329	513300	3	新龙县	0	100
513330	513300	3	德格县	0	100
513331	513300	3	白玉县	0	100
513332	513300	3	石渠县	0	100
513333	513300	3	色达县	0	100
513334	513300	3	理塘县	0	100
513335	513300	3	巴塘县	0	100
513336	513300	3	乡城县	0	100
513337	513300	3	稻城县	0	100
513338	513300	3	得荣县	0	100
513400	510000	2	凉山彝族自治州	0	100
513401	513400	3	市辖区	0	100
513422	513400	3	木里藏族自治县	0	100
513423	513400	3	盐源县	0	100
513424	513400	3	德昌县	0	100
513425	513400	3	会理县	0	100
513426	513400	3	会东县	0	100
513427	513400	3	宁南县	0	100
513428	513400	3	普格县	0	100
513429	513400	3	布拖县	0	100
513430	513400	3	金阳县	0	100
513431	513400	3	昭觉县	0	100
513432	513400	3	喜德县	0	100
513433	513400	3	冕宁县	0	100
513434	513400	3	越西县	0	100
513435	513400	3	甘洛县	0	100
513436	513400	3	美姑县	0	100
513437	513400	3	雷波县	0	100
520000	0	1	贵州省	0	100
520100	520000	2	贵阳市	0	100
520101	520100	3	市辖区	0	100
520102	520100	3	南明区	0	100
520103	520100	3	云岩区	0	100
520111	520100	3	花溪区	0	100
520112	520100	3	乌当区	0	100
520113	520100	3	白云区	0	100
520115	520100	3	观山湖区	0	100
520121	520100	3	开阳县	0	100
520122	520100	3	息烽县	0	100
520123	520100	3	修文县	0	100
520181	520100	3	清镇市	0	100
520200	520000	2	六盘水市	0	100
520201	520200	3	钟山区	0	100
520203	520200	3	六枝特区	0	100
520221	520200	3	水城县	0	100
520222	520200	3	盘县	0	100
520300	520000	2	遵义市	0	100
520301	520300	3	市辖区	0	100
520302	520300	3	红花岗区	0	100
520303	520300	3	汇川区	0	100
520304	520300	3	播州区	0	100
520322	520300	3	桐梓县	0	100
520323	520300	3	绥阳县	0	100
520324	520300	3	正安县	0	100
520325	520300	3	道真仡佬族苗族自治县	0	100
520326	520300	3	务川仡佬族苗族自治县	0	100
520327	520300	3	凤冈县	0	100
520328	520300	3	湄潭县	0	100
520329	520300	3	余庆县	0	100
520330	520300	3	习水县	0	100
520381	520300	3	赤水市	0	100
520382	520300	3	仁怀市	0	100
520400	520000	2	安顺市	0	100
520401	520400	3	市辖区	0	100
520402	520400	3	西秀区	0	100
520403	520400	3	平坝区	0	100
520422	520400	3	普定县	0	100
520423	520400	3	镇宁布依族苗族自治县	0	100
520424	520400	3	关岭布依族苗族自治县	0	100
520425	520400	3	紫云苗族布依族自治县	0	100
520500	520000	2	毕节市	0	100
520501	520500	3	市辖区	0	100
520502	520500	3	七星关区	0	100
520521	520500	3	大方县	0	100
520522	520500	3	黔西县	0	100
520523	520500	3	金沙县	0	100
520524	520500	3	织金县	0	100
520525	520500	3	纳雍县	0	100
520526	520500	3	威宁彝族回族苗族自治县	0	100
520527	520500	3	赫章县	0	100
520600	520000	2	铜仁市	0	100
520601	520600	3	市辖区	0	100
520602	520600	3	碧江区	0	100
520603	520600	3	万山区	0	100
520621	520600	3	江口县	0	100
520622	520600	3	玉屏侗族自治县	0	100
520623	520600	3	石阡县	0	100
520624	520600	3	思南县	0	100
520625	520600	3	印江土家族苗族自治县	0	100
520626	520600	3	德江县	0	100
520627	520600	3	沿河土家族自治县	0	100
520628	520600	3	松桃苗族自治县	0	100
522300	520000	2	黔西南布依族苗族自治州	0	100
522301	522300	3	市辖区	0	100
522322	522300	3	兴仁县	0	100
522323	522300	3	普安县	0	100
522324	522300	3	晴隆县	0	100
522325	522300	3	贞丰县	0	100
522326	522300	3	望谟县	0	100
522327	522300	3	册亨县	0	100
522328	522300	3	安龙县	0	100
522600	520000	2	黔东南苗族侗族自治州	0	100
522601	522600	3	市辖区	0	100
522622	522600	3	黄平县	0	100
522623	522600	3	施秉县	0	100
522624	522600	3	三穗县	0	100
522625	522600	3	镇远县	0	100
522626	522600	3	岑巩县	0	100
522627	522600	3	天柱县	0	100
522628	522600	3	锦屏县	0	100
522629	522600	3	剑河县	0	100
522630	522600	3	台江县	0	100
522631	522600	3	黎平县	0	100
522632	522600	3	榕江县	0	100
522633	522600	3	从江县	0	100
522634	522600	3	雷山县	0	100
522635	522600	3	麻江县	0	100
522636	522600	3	丹寨县	0	100
522700	520000	2	黔南布依族苗族自治州	0	100
522701	522700	3	市辖区	0	100
522702	522700	3	福泉市	0	100
522722	522700	3	荔波县	0	100
522723	522700	3	贵定县	0	100
522725	522700	3	瓮安县	0	100
522726	522700	3	独山县	0	100
522727	522700	3	平塘县	0	100
522728	522700	3	罗甸县	0	100
522729	522700	3	长顺县	0	100
522730	522700	3	龙里县	0	100
522731	522700	3	惠水县	0	100
522732	522700	3	三都水族自治县	0	100
530000	0	1	云南省	0	100
530100	530000	2	昆明市	0	100
530101	530100	3	市辖区	0	100
530102	530100	3	五华区	0	100
530103	530100	3	盘龙区	0	100
530111	530100	3	官渡区	0	100
530112	530100	3	西山区	0	100
530113	530100	3	东川区	0	100
530114	530100	3	呈贡区	0	100
530122	530100	3	晋宁县	0	100
530124	530100	3	富民县	0	100
530125	530100	3	宜良县	0	100
530126	530100	3	石林彝族自治县	0	100
530127	530100	3	嵩明县	0	100
530128	530100	3	禄劝彝族苗族自治县	0	100
530129	530100	3	寻甸回族彝族自治县	0	100
530181	530100	3	安宁市	0	100
530300	530000	2	曲靖市	0	100
530301	530300	3	市辖区	0	100
530302	530300	3	麒麟区	0	100
530303	530300	3	沾益区	0	100
530321	530300	3	马龙县	0	100
530322	530300	3	陆良县	0	100
530323	530300	3	师宗县	0	100
530324	530300	3	罗平县	0	100
530325	530300	3	富源县	0	100
530326	530300	3	会泽县	0	100
530381	530300	3	宣威市	0	100
530400	530000	2	玉溪市	0	100
530401	530400	3	市辖区	0	100
530402	530400	3	红塔区	0	100
530403	530400	3	江川区	0	100
530422	530400	3	澄江县	0	100
530423	530400	3	通海县	0	100
530424	530400	3	华宁县	0	100
530425	530400	3	易门县	0	100
530426	530400	3	峨山彝族自治县	0	100
530427	530400	3	新平彝族傣族自治县	0	100
530428	530400	3	元江哈尼族彝族傣族自治县	0	100
530500	530000	2	保山市	0	100
530501	530500	3	市辖区	0	100
530502	530500	3	隆阳区	0	100
530521	530500	3	施甸县	0	100
530523	530500	3	龙陵县	0	100
530524	530500	3	昌宁县	0	100
530581	530500	3	腾冲市	0	100
530600	530000	2	昭通市	0	100
530601	530600	3	市辖区	0	100
530602	530600	3	昭阳区	0	100
530621	530600	3	鲁甸县	0	100
530622	530600	3	巧家县	0	100
530623	530600	3	盐津县	0	100
530624	530600	3	大关县	0	100
530625	530600	3	永善县	0	100
530626	530600	3	绥江县	0	100
530627	530600	3	镇雄县	0	100
530628	530600	3	彝良县	0	100
530629	530600	3	威信县	0	100
530630	530600	3	水富县	0	100
530700	530000	2	丽江市	0	100
530701	530700	3	市辖区	0	100
530702	530700	3	古城区	0	100
530721	530700	3	玉龙纳西族自治县	0	100
530722	530700	3	永胜县	0	100
530723	530700	3	华坪县	0	100
530724	530700	3	宁蒗彝族自治县	0	100
530800	530000	2	普洱市	0	100
530801	530800	3	市辖区	0	100
530802	530800	3	思茅区	0	100
530821	530800	3	宁洱哈尼族彝族自治县	0	100
530822	530800	3	墨江哈尼族自治县	0	100
530823	530800	3	景东彝族自治县	0	100
530824	530800	3	景谷傣族彝族自治县	0	100
530825	530800	3	镇沅彝族哈尼族拉祜族自治县	0	100
530826	530800	3	江城哈尼族彝族自治县	0	100
530827	530800	3	孟连傣族拉祜族佤族自治县	0	100
530828	530800	3	澜沧拉祜族自治县	0	100
530829	530800	3	西盟佤族自治县	0	100
530900	530000	2	临沧市	0	100
530901	530900	3	市辖区	0	100
530902	530900	3	临翔区	0	100
530921	530900	3	凤庆县	0	100
530922	530900	3	云县	0	100
530923	530900	3	永德县	0	100
530924	530900	3	镇康县	0	100
530925	530900	3	双江拉祜族佤族布朗族傣族自治县	0	100
530926	530900	3	耿马傣族佤族自治县	0	100
530927	530900	3	沧源佤族自治县	0	100
532300	530000	2	楚雄彝族自治州	0	100
532301	532300	3	市辖区	0	100
532322	532300	3	双柏县	0	100
532323	532300	3	牟定县	0	100
532324	532300	3	南华县	0	100
532325	532300	3	姚安县	0	100
532326	532300	3	大姚县	0	100
532327	532300	3	永仁县	0	100
532328	532300	3	元谋县	0	100
532329	532300	3	武定县	0	100
532331	532300	3	禄丰县	0	100
532500	530000	2	红河哈尼族彝族自治州	0	100
532501	532500	3	市辖区	0	100
532502	532500	3	开远市	0	100
532503	532500	3	蒙自市	0	100
532504	532500	3	弥勒市	0	100
532523	532500	3	屏边苗族自治县	0	100
532524	532500	3	建水县	0	100
532525	532500	3	石屏县	0	100
532527	532500	3	泸西县	0	100
532528	532500	3	元阳县	0	100
532529	532500	3	红河县	0	100
532530	532500	3	金平苗族瑶族傣族自治县	0	100
532531	532500	3	绿春县	0	100
532532	532500	3	河口瑶族自治县	0	100
532600	530000	2	文山壮族苗族自治州	0	100
532601	532600	3	市辖区	0	100
532622	532600	3	砚山县	0	100
532623	532600	3	西畴县	0	100
532624	532600	3	麻栗坡县	0	100
532625	532600	3	马关县	0	100
532626	532600	3	丘北县	0	100
532627	532600	3	广南县	0	100
532628	532600	3	富宁县	0	100
532800	530000	2	西双版纳傣族自治州	0	100
532801	532800	3	市辖区	0	100
532822	532800	3	勐海县	0	100
532823	532800	3	勐腊县	0	100
532900	530000	2	大理白族自治州	0	100
532901	532900	3	市辖区	0	100
532922	532900	3	漾濞彝族自治县	0	100
532923	532900	3	祥云县	0	100
532924	532900	3	宾川县	0	100
532925	532900	3	弥渡县	0	100
532926	532900	3	南涧彝族自治县	0	100
532927	532900	3	巍山彝族回族自治县	0	100
532928	532900	3	永平县	0	100
532929	532900	3	云龙县	0	100
532930	532900	3	洱源县	0	100
532931	532900	3	剑川县	0	100
532932	532900	3	鹤庆县	0	100
533100	530000	2	德宏傣族景颇族自治州	0	100
533102	533100	3	瑞丽市	0	100
533103	533100	3	芒市	0	100
533122	533100	3	梁河县	0	100
533123	533100	3	盈江县	0	100
533124	533100	3	陇川县	0	100
533300	530000	2	怒江傈僳族自治州	0	100
533301	533300	3	市辖区	0	100
533323	533300	3	福贡县	0	100
533324	533300	3	贡山独龙族怒族自治县	0	100
533325	533300	3	兰坪白族普米族自治县	0	100
533400	530000	2	迪庆藏族自治州	0	100
533401	533400	3	市辖区	0	100
533422	533400	3	德钦县	0	100
533423	533400	3	维西傈僳族自治县	0	100
540000	0	1	西藏自治区	0	100
540100	540000	2	拉萨市	0	100
540101	540100	3	市辖区	0	100
540102	540100	3	城关区	0	100
540103	540100	3	堆龙德庆区	0	100
540121	540100	3	林周县	0	100
540122	540100	3	当雄县	0	100
540123	540100	3	尼木县	0	100
540124	540100	3	曲水县	0	100
540126	540100	3	达孜县	0	100
540127	540100	3	墨竹工卡县	0	100
540200	540000	2	日喀则市	0	100
540202	540200	3	桑珠孜区	0	100
540221	540200	3	南木林县	0	100
540222	540200	3	江孜县	0	100
540223	540200	3	定日县	0	100
540224	540200	3	萨迦县	0	100
540225	540200	3	拉孜县	0	100
540226	540200	3	昂仁县	0	100
540227	540200	3	谢通门县	0	100
540228	540200	3	白朗县	0	100
540229	540200	3	仁布县	0	100
540230	540200	3	康马县	0	100
540231	540200	3	定结县	0	100
540232	540200	3	仲巴县	0	100
540233	540200	3	亚东县	0	100
540234	540200	3	吉隆县	0	100
540235	540200	3	聂拉木县	0	100
540236	540200	3	萨嘎县	0	100
540237	540200	3	岗巴县	0	100
540300	540000	2	昌都市	0	100
540302	540300	3	卡若区	0	100
540321	540300	3	江达县	0	100
540322	540300	3	贡觉县	0	100
540323	540300	3	类乌齐县	0	100
540324	540300	3	丁青县	0	100
540325	540300	3	察雅县	0	100
540326	540300	3	八宿县	0	100
540327	540300	3	左贡县	0	100
540328	540300	3	芒康县	0	100
540329	540300	3	洛隆县	0	100
540330	540300	3	边坝县	0	100
540400	540000	2	林芝市	0	100
540402	540400	3	巴宜区	0	100
540421	540400	3	工布江达县	0	100
540422	540400	3	米林县	0	100
540423	540400	3	墨脱县	0	100
540424	540400	3	波密县	0	100
540425	540400	3	察隅县	0	100
540426	540400	3	朗县	0	100
540500	540000	2	山南市	0	100
540501	540500	3	市辖区	0	100
540502	540500	3	乃东区	0	100
540521	540500	3	扎囊县	0	100
540522	540500	3	贡嘎县	0	100
540523	540500	3	桑日县	0	100
540524	540500	3	琼结县	0	100
540525	540500	3	曲松县	0	100
540526	540500	3	措美县	0	100
540527	540500	3	洛扎县	0	100
540528	540500	3	加查县	0	100
540529	540500	3	隆子县	0	100
540530	540500	3	错那县	0	100
540531	540500	3	浪卡子县	0	100
542400	540000	2	那曲地区	0	100
542421	542400	3	那曲县	0	100
542422	542400	3	嘉黎县	0	100
542423	542400	3	比如县	0	100
542424	542400	3	聂荣县	0	100
542425	542400	3	安多县	0	100
542426	542400	3	申扎县	0	100
542427	542400	3	索县	0	100
542428	542400	3	班戈县	0	100
542429	542400	3	巴青县	0	100
542430	542400	3	尼玛县	0	100
542431	542400	3	双湖县	0	100
542500	540000	2	阿里地区	0	100
542521	542500	3	普兰县	0	100
542522	542500	3	札达县	0	100
542523	542500	3	噶尔县	0	100
542524	542500	3	日土县	0	100
542525	542500	3	革吉县	0	100
542526	542500	3	改则县	0	100
542527	542500	3	措勤县	0	100
610000	0	1	陕西省	0	100
610100	610000	2	西安市	0	100
610101	610100	3	市辖区	0	100
610102	610100	3	新城区	0	100
610103	610100	3	碑林区	0	100
610104	610100	3	莲湖区	0	100
610111	610100	3	灞桥区	0	100
610112	610100	3	未央区	0	100
610113	610100	3	雁塔区	0	100
610114	610100	3	阎良区	0	100
610115	610100	3	临潼区	0	100
610116	610100	3	长安区	0	100
610117	610100	3	高陵区	0	100
610122	610100	3	蓝田县	0	100
610124	610100	3	周至县	0	100
610125	610100	3	户县	0	100
610200	610000	2	铜川市	0	100
610201	610200	3	市辖区	0	100
610202	610200	3	王益区	0	100
610203	610200	3	印台区	0	100
610204	610200	3	耀州区	0	100
610222	610200	3	宜君县	0	100
610300	610000	2	宝鸡市	0	100
610301	610300	3	市辖区	0	100
610302	610300	3	渭滨区	0	100
610303	610300	3	金台区	0	100
610304	610300	3	陈仓区	0	100
610322	610300	3	凤翔县	0	100
610323	610300	3	岐山县	0	100
610324	610300	3	扶风县	0	100
610326	610300	3	眉县	0	100
610327	610300	3	陇县	0	100
610328	610300	3	千阳县	0	100
610329	610300	3	麟游县	0	100
610330	610300	3	凤县	0	100
610331	610300	3	太白县	0	100
610400	610000	2	咸阳市	0	100
610401	610400	3	市辖区	0	100
610402	610400	3	秦都区	0	100
610403	610400	3	杨陵区	0	100
610404	610400	3	渭城区	0	100
610422	610400	3	三原县	0	100
610423	610400	3	泾阳县	0	100
610424	610400	3	乾县	0	100
610425	610400	3	礼泉县	0	100
610426	610400	3	永寿县	0	100
610427	610400	3	彬县	0	100
610428	610400	3	长武县	0	100
610429	610400	3	旬邑县	0	100
610430	610400	3	淳化县	0	100
610431	610400	3	武功县	0	100
610481	610400	3	兴平市	0	100
610500	610000	2	渭南市	0	100
610501	610500	3	市辖区	0	100
610502	610500	3	临渭区	0	100
610503	610500	3	华州区	0	100
610522	610500	3	潼关县	0	100
610523	610500	3	大荔县	0	100
610524	610500	3	合阳县	0	100
610525	610500	3	澄城县	0	100
610526	610500	3	蒲城县	0	100
610527	610500	3	白水县	0	100
610528	610500	3	富平县	0	100
610581	610500	3	韩城市	0	100
610582	610500	3	华阴市	0	100
610600	610000	2	延安市	0	100
610601	610600	3	市辖区	0	100
610602	610600	3	宝塔区	0	100
610603	610600	3	安塞区	0	100
610621	610600	3	延长县	0	100
610622	610600	3	延川县	0	100
610623	610600	3	子长县	0	100
610625	610600	3	志丹县	0	100
610626	610600	3	吴起县	0	100
610627	610600	3	甘泉县	0	100
610628	610600	3	富县	0	100
610629	610600	3	洛川县	0	100
610630	610600	3	宜川县	0	100
610631	610600	3	黄龙县	0	100
610632	610600	3	黄陵县	0	100
610700	610000	2	汉中市	0	100
610701	610700	3	市辖区	0	100
610702	610700	3	汉台区	0	100
610721	610700	3	南郑县	0	100
610722	610700	3	城固县	0	100
610723	610700	3	洋县	0	100
610724	610700	3	西乡县	0	100
610725	610700	3	勉县	0	100
610726	610700	3	宁强县	0	100
610727	610700	3	略阳县	0	100
610728	610700	3	镇巴县	0	100
610729	610700	3	留坝县	0	100
610730	610700	3	佛坪县	0	100
610800	610000	2	榆林市	0	100
610801	610800	3	市辖区	0	100
610802	610800	3	榆阳区	0	100
610803	610800	3	横山区	0	100
610821	610800	3	神木县	0	100
610822	610800	3	府谷县	0	100
610824	610800	3	靖边县	0	100
610825	610800	3	定边县	0	100
610826	610800	3	绥德县	0	100
610827	610800	3	米脂县	0	100
610828	610800	3	佳县	0	100
610829	610800	3	吴堡县	0	100
610830	610800	3	清涧县	0	100
610831	610800	3	子洲县	0	100
610900	610000	2	安康市	0	100
610901	610900	3	市辖区	0	100
610902	610900	3	汉滨区	0	100
610921	610900	3	汉阴县	0	100
610922	610900	3	石泉县	0	100
610923	610900	3	宁陕县	0	100
610924	610900	3	紫阳县	0	100
610925	610900	3	岚皋县	0	100
610926	610900	3	平利县	0	100
610927	610900	3	镇坪县	0	100
610928	610900	3	旬阳县	0	100
610929	610900	3	白河县	0	100
611000	610000	2	商洛市	0	100
611001	611000	3	市辖区	0	100
611002	611000	3	商州区	0	100
611021	611000	3	洛南县	0	100
611022	611000	3	丹凤县	0	100
611023	611000	3	商南县	0	100
611024	611000	3	山阳县	0	100
611025	611000	3	镇安县	0	100
611026	611000	3	柞水县	0	100
620000	0	1	甘肃省	0	100
620100	620000	2	兰州市	0	100
620101	620100	3	市辖区	0	100
620102	620100	3	城关区	0	100
620103	620100	3	七里河区	0	100
620104	620100	3	西固区	0	100
620105	620100	3	安宁区	0	100
620111	620100	3	红古区	0	100
620121	620100	3	永登县	0	100
620122	620100	3	皋兰县	0	100
620123	620100	3	榆中县	0	100
620200	620000	2	嘉峪关市	0	100
620201	620200	3	市辖区	0	100
620300	620000	2	金昌市	0	100
620301	620300	3	市辖区	0	100
620302	620300	3	金川区	0	100
620321	620300	3	永昌县	0	100
620400	620000	2	白银市	0	100
620401	620400	3	市辖区	0	100
620402	620400	3	白银区	0	100
620403	620400	3	平川区	0	100
620421	620400	3	靖远县	0	100
620422	620400	3	会宁县	0	100
620423	620400	3	景泰县	0	100
620500	620000	2	天水市	0	100
620501	620500	3	市辖区	0	100
620502	620500	3	秦州区	0	100
620503	620500	3	麦积区	0	100
620521	620500	3	清水县	0	100
620522	620500	3	秦安县	0	100
620523	620500	3	甘谷县	0	100
620524	620500	3	武山县	0	100
620525	620500	3	张家川回族自治县	0	100
620600	620000	2	武威市	0	100
620601	620600	3	市辖区	0	100
620602	620600	3	凉州区	0	100
620621	620600	3	民勤县	0	100
620622	620600	3	古浪县	0	100
620623	620600	3	天祝藏族自治县	0	100
620700	620000	2	张掖市	0	100
620701	620700	3	市辖区	0	100
620702	620700	3	甘州区	0	100
620721	620700	3	肃南裕固族自治县	0	100
620722	620700	3	民乐县	0	100
620723	620700	3	临泽县	0	100
620724	620700	3	高台县	0	100
620725	620700	3	山丹县	0	100
620800	620000	2	平凉市	0	100
620801	620800	3	市辖区	0	100
620802	620800	3	崆峒区	0	100
620821	620800	3	泾川县	0	100
620822	620800	3	灵台县	0	100
620823	620800	3	崇信县	0	100
620824	620800	3	华亭县	0	100
620825	620800	3	庄浪县	0	100
620826	620800	3	静宁县	0	100
620900	620000	2	酒泉市	0	100
620901	620900	3	市辖区	0	100
620902	620900	3	肃州区	0	100
620921	620900	3	金塔县	0	100
620922	620900	3	瓜州县	0	100
620923	620900	3	肃北蒙古族自治县	0	100
620924	620900	3	阿克塞哈萨克族自治县	0	100
620981	620900	3	玉门市	0	100
620982	620900	3	敦煌市	0	100
621000	620000	2	庆阳市	0	100
621001	621000	3	市辖区	0	100
621002	621000	3	西峰区	0	100
621021	621000	3	庆城县	0	100
621022	621000	3	环县	0	100
621023	621000	3	华池县	0	100
621024	621000	3	合水县	0	100
621025	621000	3	正宁县	0	100
621026	621000	3	宁县	0	100
621027	621000	3	镇原县	0	100
621100	620000	2	定西市	0	100
621101	621100	3	市辖区	0	100
621102	621100	3	安定区	0	100
621121	621100	3	通渭县	0	100
621122	621100	3	陇西县	0	100
621123	621100	3	渭源县	0	100
621124	621100	3	临洮县	0	100
621125	621100	3	漳县	0	100
621126	621100	3	岷县	0	100
621200	620000	2	陇南市	0	100
621201	621200	3	市辖区	0	100
621202	621200	3	武都区	0	100
621221	621200	3	成县	0	100
621222	621200	3	文县	0	100
621223	621200	3	宕昌县	0	100
621224	621200	3	康县	0	100
621225	621200	3	西和县	0	100
621226	621200	3	礼县	0	100
621227	621200	3	徽县	0	100
621228	621200	3	两当县	0	100
622900	620000	2	临夏回族自治州	0	100
622901	622900	3	市辖区	0	100
622921	622900	3	临夏县	0	100
622922	622900	3	康乐县	0	100
622923	622900	3	永靖县	0	100
622924	622900	3	广河县	0	100
622925	622900	3	和政县	0	100
622926	622900	3	东乡族自治县	0	100
622927	622900	3	积石山保安族东乡族撒拉族自治县	0	100
623000	620000	2	甘南藏族自治州	0	100
623001	623000	3	市辖区	0	100
623021	623000	3	临潭县	0	100
623022	623000	3	卓尼县	0	100
623023	623000	3	舟曲县	0	100
623024	623000	3	迭部县	0	100
623025	623000	3	玛曲县	0	100
623026	623000	3	碌曲县	0	100
623027	623000	3	夏河县	0	100
630000	0	1	青海省	0	100
630100	630000	2	西宁市	0	100
630101	630100	3	市辖区	0	100
630102	630100	3	城东区	0	100
630103	630100	3	城中区	0	100
630104	630100	3	城西区	0	100
630105	630100	3	城北区	0	100
630121	630100	3	大通回族土族自治县	0	100
630122	630100	3	湟中县	0	100
630123	630100	3	湟源县	0	100
630200	630000	2	海东市	0	100
630202	630200	3	乐都区	0	100
630203	630200	3	平安区	0	100
630222	630200	3	民和回族土族自治县	0	100
630223	630200	3	互助土族自治县	0	100
630224	630200	3	化隆回族自治县	0	100
630225	630200	3	循化撒拉族自治县	0	100
632200	630000	2	海北藏族自治州	0	100
632221	632200	3	门源回族自治县	0	100
632222	632200	3	祁连县	0	100
632223	632200	3	海晏县	0	100
632224	632200	3	刚察县	0	100
632300	630000	2	黄南藏族自治州	0	100
632321	632300	3	同仁县	0	100
632322	632300	3	尖扎县	0	100
632323	632300	3	泽库县	0	100
632324	632300	3	河南蒙古族自治县	0	100
632500	630000	2	海南藏族自治州	0	100
632521	632500	3	共和县	0	100
632522	632500	3	同德县	0	100
632523	632500	3	贵德县	0	100
632524	632500	3	兴海县	0	100
632525	632500	3	贵南县	0	100
632600	630000	2	果洛藏族自治州	0	100
632621	632600	3	玛沁县	0	100
632622	632600	3	班玛县	0	100
632623	632600	3	甘德县	0	100
632624	632600	3	达日县	0	100
632625	632600	3	久治县	0	100
632626	632600	3	玛多县	0	100
632700	630000	2	玉树藏族自治州	0	100
632701	632700	3	市辖区	0	100
632722	632700	3	杂多县	0	100
632723	632700	3	称多县	0	100
632724	632700	3	治多县	0	100
632725	632700	3	囊谦县	0	100
632726	632700	3	曲麻莱县	0	100
632800	630000	2	海西蒙古族藏族自治州	0	100
632801	632800	3	市辖区	0	100
632802	632800	3	德令哈市	0	100
632821	632800	3	乌兰县	0	100
632822	632800	3	都兰县	0	100
632823	632800	3	天峻县	0	100
640000	0	1	宁夏回族自治区	0	100
640100	640000	2	银川市	0	100
640101	640100	3	市辖区	0	100
640104	640100	3	兴庆区	0	100
640105	640100	3	西夏区	0	100
640106	640100	3	金凤区	0	100
640121	640100	3	永宁县	0	100
640122	640100	3	贺兰县	0	100
640181	640100	3	灵武市	0	100
640200	640000	2	石嘴山市	0	100
640201	640200	3	市辖区	0	100
640202	640200	3	大武口区	0	100
640205	640200	3	惠农区	0	100
640221	640200	3	平罗县	0	100
640300	640000	2	吴忠市	0	100
640301	640300	3	市辖区	0	100
640302	640300	3	利通区	0	100
640303	640300	3	红寺堡区	0	100
640323	640300	3	盐池县	0	100
640324	640300	3	同心县	0	100
640381	640300	3	青铜峡市	0	100
640400	640000	2	固原市	0	100
640401	640400	3	市辖区	0	100
640402	640400	3	原州区	0	100
640422	640400	3	西吉县	0	100
640423	640400	3	隆德县	0	100
640424	640400	3	泾源县	0	100
640425	640400	3	彭阳县	0	100
640500	640000	2	中卫市	0	100
640501	640500	3	市辖区	0	100
640502	640500	3	沙坡头区	0	100
640521	640500	3	中宁县	0	100
640522	640500	3	海原县	0	100
650000	0	1	新疆维吾尔自治区	0	100
650100	650000	2	乌鲁木齐市	0	100
650101	650100	3	市辖区	0	100
650102	650100	3	天山区	0	100
650103	650100	3	沙依巴克区	0	100
650104	650100	3	新市区	0	100
650105	650100	3	水磨沟区	0	100
650106	650100	3	头屯河区	0	100
650107	650100	3	达坂城区	0	100
650109	650100	3	米东区	0	100
650121	650100	3	乌鲁木齐县	0	100
650200	650000	2	克拉玛依市	0	100
650201	650200	3	市辖区	0	100
650202	650200	3	独山子区	0	100
650203	650200	3	克拉玛依区	0	100
650204	650200	3	白碱滩区	0	100
650205	650200	3	乌尔禾区	0	100
650400	650000	2	吐鲁番市	0	100
650402	650400	3	高昌区	0	100
650421	650400	3	鄯善县	0	100
650422	650400	3	托克逊县	0	100
650500	650000	2	哈密市	0	100
650502	650500	3	伊州区	0	100
650521	650500	3	巴里坤哈萨克自治县	0	100
650522	650500	3	伊吾县	0	100
652300	650000	2	昌吉回族自治州	0	100
652301	652300	3	市辖区	0	100
652302	652300	3	阜康市	0	100
652323	652300	3	呼图壁县	0	100
652324	652300	3	玛纳斯县	0	100
652325	652300	3	奇台县	0	100
652327	652300	3	吉木萨尔县	0	100
652328	652300	3	木垒哈萨克自治县	0	100
652700	650000	2	博尔塔拉蒙古自治州	0	100
652701	652700	3	市辖区	0	100
652702	652700	3	阿拉山口市	0	100
652722	652700	3	精河县	0	100
652723	652700	3	温泉县	0	100
652800	650000	2	巴音郭楞蒙古自治州	0	100
652801	652800	3	市辖区	0	100
652822	652800	3	轮台县	0	100
652823	652800	3	尉犁县	0	100
652824	652800	3	若羌县	0	100
652825	652800	3	且末县	0	100
652826	652800	3	焉耆回族自治县	0	100
652827	652800	3	和静县	0	100
652828	652800	3	和硕县	0	100
652829	652800	3	博湖县	0	100
652900	650000	2	阿克苏地区	0	100
652901	652900	3	市辖区	0	100
652922	652900	3	温宿县	0	100
652923	652900	3	库车县	0	100
652924	652900	3	沙雅县	0	100
652925	652900	3	新和县	0	100
652926	652900	3	拜城县	0	100
652927	652900	3	乌什县	0	100
652928	652900	3	阿瓦提县	0	100
652929	652900	3	柯坪县	0	100
653000	650000	2	克孜勒苏柯尔克孜自治州	0	100
653001	653000	3	市辖区	0	100
653022	653000	3	阿克陶县	0	100
653023	653000	3	阿合奇县	0	100
653024	653000	3	乌恰县	0	100
653100	650000	2	喀什地区	0	100
653101	653100	3	市辖区	0	100
653121	653100	3	疏附县	0	100
653122	653100	3	疏勒县	0	100
653123	653100	3	英吉沙县	0	100
653124	653100	3	泽普县	0	100
653125	653100	3	莎车县	0	100
653126	653100	3	叶城县	0	100
653127	653100	3	麦盖提县	0	100
653128	653100	3	岳普湖县	0	100
653129	653100	3	伽师县	0	100
653130	653100	3	巴楚县	0	100
653131	653100	3	塔什库尔干塔吉克自治县	0	100
653200	650000	2	和田地区	0	100
653201	653200	3	市辖区	0	100
653221	653200	3	和田县	0	100
653222	653200	3	墨玉县	0	100
653223	653200	3	皮山县	0	100
653224	653200	3	洛浦县	0	100
653225	653200	3	策勒县	0	100
653226	653200	3	于田县	0	100
653227	653200	3	民丰县	0	100
654000	650000	2	伊犁哈萨克自治州	0	100
654002	654000	3	伊宁市	0	100
654003	654000	3	奎屯市	0	100
654004	654000	3	霍尔果斯市	0	100
654021	654000	3	伊宁县	0	100
654022	654000	3	察布查尔锡伯自治县	0	100
654023	654000	3	霍城县	0	100
654024	654000	3	巩留县	0	100
654025	654000	3	新源县	0	100
654026	654000	3	昭苏县	0	100
654027	654000	3	特克斯县	0	100
654028	654000	3	尼勒克县	0	100
654200	650000	2	塔城地区	0	100
654201	654200	3	市辖区	0	100
654202	654200	3	乌苏市	0	100
654221	654200	3	额敏县	0	100
654223	654200	3	沙湾县	0	100
654224	654200	3	托里县	0	100
654225	654200	3	裕民县	0	100
654226	654200	3	和布克赛尔蒙古自治县	0	100
654300	650000	2	阿勒泰地区	0	100
654301	654300	3	市辖区	0	100
654321	654300	3	布尔津县	0	100
654322	654300	3	富蕴县	0	100
654323	654300	3	福海县	0	100
654324	654300	3	哈巴河县	0	100
654325	654300	3	青河县	0	100
654326	654300	3	吉木乃县	0	100
659000	650000	2	自治区直辖县级行政区划	0	100
659001	659000	3	市辖区	0	100
659002	659000	3	阿拉尔市	0	100
659003	659000	3	图木舒克市	0	100
659004	659000	3	五家渠市	0	100
659006	659000	3	铁门关市	0	100
710000	0	1	台湾省	0	100
810000	0	1	香港特别行政区	0	100
820000	0	1	澳门特别行政区	0	100
920000	500200	3	静海县	301600	100
920001	330100	3	富阳市	311400	100
920002	410100	3	郑东新区	0	100
920003	440100	3	萝岗区	510100	100
920004	441900	3	东城街道	0	100
920005	441900	3	南城街道	0	100
920006	441900	3	万江街道	0	100
920007	441900	3	莞城街道	0	100
920008	441900	3	石碣镇	0	100
920009	441900	3	石龙镇	0	100
920010	441900	3	茶山镇	0	100
920011	441900	3	石排镇	0	100
920012	441900	3	企石镇	0	0
920013	441900	3	横沥镇	0	0
920014	441900	3	桥头镇	0	0
920015	441900	3	谢岗镇	0	0
920016	441900	3	东坑镇	0	0
920017	441900	3	常平镇	0	0
920018	441900	3	寮步镇	0	0
920019	441900	3	樟木头镇	0	0
920020	441900	3	大朗镇	0	0
920021	441900	3	黄江镇	0	0
920022	441900	3	清溪镇	0	0
920023	441900	3	塘厦镇	0	0
920024	441900	3	凤岗镇	0	0
920025	441900	3	大岭山镇	0	0
920026	441900	3	长安镇	0	0
920027	441900	3	虎门镇	0	0
920028	441900	3	厚街镇	0	0
920029	441900	3	沙田镇	0	0
920030	441900	3	道滘镇	0	0
920031	441900	3	洪梅镇	0	0
920032	441900	3	麻涌镇	0	0
920033	441900	3	望牛墩镇	0	0
920034	441900	3	中堂镇	0	0
920035	441900	3	高埗镇	0	0
920036	441900	3	松山湖管委会	0	0
920037	441900	3	虎门港管委会	0	0
920038	441900	3	东莞生态园	0	0
920039	442000	3	中山市	0	0
920040	460300	3	三沙市	0	0
920041	460400	3	儋州市	0	0
920042	810000	2	香港特别行政区	0	0
920043	920042	3	中西区	0	0
920044	920042	3	东区	0	0
920045	920042	3	九龙城区	0	0
920046	920042	3	观塘区	0	0
920047	920042	3	南区	0	0
920048	920042	3	深水埗区	0	0
920049	920042	3	湾仔区	0	0
920050	920042	3	黄大仙区	0	0
920051	920042	3	油尖旺区	0	0
920052	920042	3	离岛区	0	0
920053	920042	3	葵青区	0	0
920054	920042	3	北区	0	0
920055	920042	3	西贡区	0	0
920056	920042	3	沙田区	0	0
920057	920042	3	屯门区	0	0
920058	920042	3	大埔区	0	0
920059	920042	3	荃湾区	0	0
920060	920042	3	元朗区	0	0
920061	820000	2	澳门特别行政区	0	0
920062	920061	3	澳门半岛	0	0
920063	920061	3	凼仔	0	0
920064	920061	3	路凼城	0	0
920065	920061	3	路环	0	0
920066	710000	2	台北市	0	0
920067	710000	2	高雄市	0	0
920068	710000	2	台南市	0	0
920069	710000	2	台中市	0	0
920070	710000	2	南投县	0	0
920071	710000	2	基隆市	0	0
920072	710000	2	新竹市	0	0
920073	710000	2	嘉义市	0	0
920074	710000	2	新北市	0	0
920075	710000	2	宜兰县	0	0
920076	710000	2	新竹县	0	0
920077	710000	2	桃园市	0	0
920078	710000	2	苗栗县	0	0
920079	710000	2	彰化县	0	0
920080	710000	2	嘉义县	0	0
920081	710000	2	云林县	0	0
920082	710000	2	屏东县	0	0
920083	710000	2	台东县	0	0
920084	710000	2	花莲县	0	0
920085	710000	2	澎湖县	0	0
920086	920066	3	台北市	0	0
920087	920067	3	高雄市	0	0
920088	920068	3	台南市	0	0
920089	920069	3	台中市	0	0
920090	920070	3	南投县	0	0
920091	920071	3	基隆市	0	0
920092	920072	3	新竹市	0	0
920093	920073	3	嘉义市	0	0
920094	920074	3	新北市	0	0
920095	920075	3	宜兰县	0	0
920096	920076	3	新竹县	0	0
920097	920077	3	桃园市	0	0
920098	920078	3	苗栗县	0	0
920099	920079	3	彰化县	0	0
920100	920080	3	嘉义县	0	0
920101	920081	3	云林县	0	0
920102	920082	3	屏东县	0	0
920103	920083	3	台东县	0	0
920104	920084	3	花莲县	0	0
920105	920085	3	 澎湖县	0	0
920106	442000	3	西区街道	555555	100
\.


--
-- Data for Name: corecmsarticle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsarticle (id, title, brief, coverimage, contentbody, typeid, sort, ispub, isdel, pv, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsarticletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsarticletype (id, name, parentid, sort) FROM stdin;
\.


--
-- Data for Name: corecmsbillaftersales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillaftersales (aftersalesid, orderid, userid, type, refundamount, status, reason, mark, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbillaftersalesimages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillaftersalesimages (aftersalesid, imageurl, sortid) FROM stdin;
\.


--
-- Data for Name: corecmsbillaftersalesitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillaftersalesitem (id, aftersalesid, orderitemsid, goodsid, productid, sn, bn, name, imageurl, nums, addon, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbilldelivery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbilldelivery (deliveryid, orderid, logicode, logino, logiinformation, logistatus, shipareaid, shipaddress, shipname, shipmobile, status, memo, confirmtime, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbilldeliveryitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbilldeliveryitem (id, orderid, deliveryid, goodsid, productid, sn, bn, name, nums, weight, addon) FROM stdin;
\.


--
-- Data for Name: corecmsbilllading; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbilllading (id, orderid, storeid, name, mobile, clerkid, pickuptime, status, createtime, updatetime, isdel) FROM stdin;
\.


--
-- Data for Name: corecmsbillpayments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillpayments (paymentid, sourceid, money, userid, type, status, paymentcode, ip, parameters, payedmsg, tradeno, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbillrefund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillrefund (refundid, aftersalesid, money, userid, sourceid, type, paymentcode, tradeno, status, memo, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbillreship; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillreship (reshipid, orderid, aftersalesid, userid, logicode, logino, status, memo, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbillreshipitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbillreshipitem (id, reshipid, orderitemsid, goodsid, productid, sn, bn, name, imageurl, nums, addon, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsbrand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsbrand (id, name, logoimageurl, sort, isshow, createtime) FROM stdin;
23	南山田舍	http://files.mvccms.cn/Upload/20200906/20200906030142_6069.jpg	1	t	\N
1023	佳沛	http://files.mvccms.cn/Upload/20200906/20200906030127_8177.jpg	1	t	\N
1024	提斯和	http://files.mvccms.cn/Upload/20200906/20200906030054_1013.jpg	10	t	2020-09-15 17:53:36
1025	祖母清晨	http://files.mvccms.cn/Upload/20200809/20200809151733_4650.jpg	1	t	2020-09-22 00:17:19
1027	大金空调	https://files.nsts.mvccms.cn/Upload/20210224/20210224231304_4337.jpg	90	t	2021-02-24 23:13:42
\.


--
-- Data for Name: corecmscart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmscart (id, userid, productid, nums, type, objectid) FROM stdin;
\.


--
-- Data for Name: corecmsclerk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsclerk (id, storeid, userid, isdel, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmscoupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmscoupon (id, couponcode, promotionid, isused, userid, usedid, createtime, updatetime, remark, starttime, endtime) FROM stdin;
\.


--
-- Data for Name: corecmsdistribution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsdistribution (id, userid, name, gradeid, mobile, weixin, qq, storename, storelogo, storebanner, storedesc, verifystatus, createtime, updatetime, verifytime, isdelete) FROM stdin;
\.


--
-- Data for Name: corecmsdistributioncondition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsdistributioncondition (id, gradeid, code, parameters) FROM stdin;
\.


--
-- Data for Name: corecmsdistributiongrade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsdistributiongrade (id, name, isdefault, isautoupgrade, sortid, description) FROM stdin;
\.


--
-- Data for Name: corecmsdistributionorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsdistributionorder (id, userid, buyuserid, orderid, amount, issettlement, level, createtime, updatetime, isdelete) FROM stdin;
\.


--
-- Data for Name: corecmsdistributionresult; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsdistributionresult (id, gradeid, code, parameters) FROM stdin;
\.


--
-- Data for Name: corecmsform; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsform (id, name, type, sort, images, videopath, description, headtype, headtypevalue, headtypevideo, buttonname, buttoncolor, islogin, times, qrcode, returnmsg, enddatetime, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsformitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsformitem (id, name, type, validationtype, value, defaultvalue, formid, required, sort) FROM stdin;
\.


--
-- Data for Name: corecmsformsubmit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsformsubmit (id, formid, formname, userid, money, paystatus, status, feedback, ip, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsformsubmitdetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsformsubmitdetail (id, submitid, formid, formitemid, formitemname, formitemvalue) FROM stdin;
\.


--
-- Data for Name: corecmsgoods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoods (id, bn, name, brief, image, images, video, productsdistributiontype, goodscategoryid, goodstypeid, goodsskuids, goodsparamsids, brandid, isnomalvirtual, ismarketable, unit, intro, spesdesc, parameters, commentscount, viewcount, buycount, uptime, downtime, sort, labelids, newspec, openspec, createtime, updatetime, isrecommend, ishot, isdel) FROM stdin;
2026	BN1586230461355	泰国红心火龙果	泰国红心火龙果	\N	http://files.mvccms.cn/Upload/20200614/20200614162826_9247.jpg	\N	1	35	15	\N	\N	18	f	t	212	<p>泰国红心火龙果</p>		17:|18:你好|19:111,222,333,444,555	6	0	93	\N	\N	1	\N		0	2020-04-07 11:36:05	2020-06-14 16:28:29	t	f	t
2027	BN1590735828027	冰糖西瓜	冰糖西瓜，有冰的，可加工切好装盒，同城可配送	\N	http://files.mvccms.cn/Upload/20200614/20200614205507_6314.jpg	\N	1	36	15	\N	\N	23	f	t	个	<p>0.010.010.01</p>		17:红|18:1000克|19:海南	3	0	25	\N	\N	1	\N		0	2020-05-29 15:04:55	2020-06-14 21:02:49	f	t	t
2028	BN1592131174887	扶贫助农，脆甜多汁的秋月梨39.9一件，包邮	扶农产品，脆甜多汁	http://files.mvccms.cn/Upload/20200825/20200825163537_5021.jpg	http://files.mvccms.cn/Upload/20200825/20200825163537_5021.jpg,http://files.mvccms.cn/Upload/20200825/20200825163542_3979.jpg,http://files.mvccms.cn/Upload/20200825/20200825163545_8751.jpg		1	2061	0	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200825/20200825163537_5021.jpg" style="height:756px; width:756px" /></p>\n			1	0	9	\N	\N	1	\N		0	2020-06-14 18:53:46	2020-09-27 02:27:27	f	f	t
2029	BN1592137795978	新奇士橙（A级）	新奇士橙6粒 单果163克 黑标脐橙进口当季水果橙子 爽甜多汁 入口无渣 同城包送	\N	http://files.mvccms.cn/Upload/20200614/20200614204313_8125.jpg,http://files.mvccms.cn/Upload/20200614/20200614204321_8679.jpg	\N	1	35	16	\N	\N	23	f	f	6枚	<p><img src="http://files.mvccms.cn/upload/image/20200614/6372776433299533119796597.jpg" title="1.jpg" alt="1.jpg"/></p>		17:|18:6枚|19:美国	1	0	5	\N	\N	1	2,3		1	2020-06-14 20:45:50	2020-06-14 20:47:01	f	f	t
2030	BN1592140714124	红心火龙果（A级）2个装	新鲜的味道	\N	http://files.mvccms.cn/Upload/20200614/20200614211906_2121.jpg,http://files.mvccms.cn/Upload/20200614/20200614211915_1578.jpg	\N	1	36	16	\N	\N	23	f	f	个	<p><img src="http://files.mvccms.cn/upload/image/20200616/6372790584917584998586441.jpg" title="O1CN01JPZvYM1hi1dWJrAUw_!!3015214310.jpg" alt="O1CN01JPZvYM1hi1dWJrAUw_!!3015214310.jpg"><img src="http://files.mvccms.cn/upload/image/20200616/6372790585273105063662892.jpg" title="1.jpg" alt="1.jpg"></p><p><br></p><p><br></p>		18:2个|19:越南	2	0	6	\N	\N	1	2,3		1	2020-06-14 21:22:25	2020-09-03 11:03:12	f	f	t
2031	BN1592146548837	冰糖西瓜	有冰西瓜，可提供切盘打包	\N	http://files.mvccms.cn/Upload/20200614/20200614225748_1641.jpg	\N	1	36	16	\N	\N	23	f	f	斤	<p><img src="http://files.mvccms.cn/upload/image/20200614/6372777233591542378277861.jpg" title="timg.jpg" alt="timg.jpg"/></p>		17:|18:|19:怀化	2	0	31	\N	\N	1	\N		0	2020-06-14 22:59:17	2020-08-02 11:01:35	f	f	t
2032	BN1592147534888	客家虫草鸡	味蕾从不说谎，最是真切, 舌尖美食，一见钟情，一尝难忘,  从陌生到接触，从接触到爱上。\n就从这一刻开始!	\N	http://files.mvccms.cn/Upload/20200614/20200614231330_3604.jpg	\N	1	44	15	\N	\N	23	f	t	只	<p><img src="http://files.mvccms.cn/upload/image/20200614/6372777330441951799708558.jpg" title="微信图片_20200614163844.jpg" alt="微信图片_20200614163844.jpg"/></p><p><img src="http://files.mvccms.cn/upload/image/20200614/6372777331603355246371903.jpg" title="微信图片_20200614163852.jpg" alt="微信图片_20200614163852.jpg"/></p>		17:|18:只|19:广东	2	0	4	\N	\N	1	\N		1	2020-06-14 23:16:41	2020-08-05 23:39:13	t	t	t
3028	BN1592281937067	佳沛奇异果（A果）	清甜多汁，营养丰富	http://files.mvccms.cn/Upload/20200616/20200616123411_7451.jpg	http://files.mvccms.cn/Upload/20200616/20200616123411_7451.jpg,http://files.mvccms.cn/Upload/20200616/20200616123420_2352.jpg,http://files.mvccms.cn/Upload/20200616/20200616123427_1072.jpg		1	36	16	\N	\N	1023	f	f	件	<p><img alt="O1CN01iPwDb42E7HAvIOVqT_!!3436888697.jpg" src="http://files.mvccms.cn/upload/image/20200616/6372790774455990399481964.jpg" /></p>\n	1088.重量:30|1089.重量:1个|1090.重量:6个	18:1个|19:新西兰	1	0	3	\N	\N	1	\N	78:红色|79:灰色|80:白色|81:蓝色|87:KG|88:斤|89:份|90:袋|91:罐|92:台|93:瓶|94:排|95:杯|96:件|97:箱|98:只|1087:个|1088:30|1089:1个|1090:6个	1	2020-06-16 12:42:05	2020-09-27 02:27:07	f	f	t
3029	BN1596692172157	22222222	22222222222222	\N		\N	1	1046	0	\N	\N	0	f	t	个	222222		\N	0	0	0	\N	\N	1	\N		0	2020-08-06 13:36:25	\N	f	f	t
3030	BN1596698099138	221233	2321321321321	\N	http://files.mvccms.cn/Upload/20200806/20200806151505_0333.jpg,http://files.mvccms.cn/Upload/20200806/20200806151507_2200.jpg	\N	1	1046	15	\N	\N	0	f	t	个	<p>dsadsadsadsadas</p>	79.颜色:灰色|80.颜色:白色|88.重量:斤|89.重量:份	17:绿|18:3000克|19:上海	0	0	0	\N	\N	1	\N	78:红色|79:灰色|80:白色|81:蓝色|87:KG|88:斤|89:份|90:袋|91:罐|92:台|93:瓶|94:排|95:杯|96:件|97:箱|98:只|1087:个|1088:30|1089:1个|1090:6个	1	2020-08-06 15:16:06	2020-08-06 16:58:31	f	f	t
4030	BN1596805616123	陕西大荔新鲜有机冬枣，脆甜好吃，包邮	脆甜多汁	http://files.mvccms.cn/Upload/20200906/20200906024713_2127.jpg	http://files.mvccms.cn/Upload/20200906/20200906024713_2127.jpg,http://files.mvccms.cn/Upload/20200830/20200830182758_5148.jpg,http://files.mvccms.cn/Upload/20200807/20200807210700_1527.jpg,http://files.mvccms.cn/Upload/20200830/20200830182804_0923.jpg		1	36	1029	\N	\N	0	f	f	斤	<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183131_2303.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183137_1890.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183146_8535.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183152_3542.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183157_8492.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183202_5510.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183208_0810.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183220_8029.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183226_3208.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183235_7874.png" /></p>\n\n<p style="text-align:center"><img src="http://files.mvccms.cn/Upload/20200830/20200830183246_5771.png" /></p>\n	1096.冬枣专用:精品A果3斤装|1097.冬枣专用:精品A果5斤装	\N	2	0	29	\N	\N	1	\N	1096:精品A果3斤装|1097:精品A果5斤装	1	2020-08-07 21:10:01	2021-05-13 00:24:45	f	f	f
4031	BN1596889631407	蒲江红心猕猴桃奇异果当季新鲜水果弥狝猴桃包邮	咬一口，软糯香甜，细腻滑嫩多汁	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg,http://files.mvccms.cn/Upload/20200808/20200808202719_5889.jpg		1	36	1024	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg" style="height:500px; width:500px" /></p>\n	1099.浦江A级精品猕猴桃:中果30个装|1101.浦江A级精品猕猴桃:大果24个装|1233.浦江A级精品猕猴桃:大果24个（礼盒）|1274.浦江A级精品猕猴桃:中果30个（礼盒）	18:5斤|19:浦江|23:中果,大果	2	0	93	\N	\N	1	\N	1098:中果15个装|1099:中果30个装|1101:大果24个装|1233:大果24个（礼盒）|1236:特大果18-20个装|1237:特大果18-20个（礼盒）|1274:中果30个（礼盒）	1	2020-08-08 20:34:16	2020-11-28 16:33:19	f	f	f
4032	01	智利荔枝(测试，非卖品)	智利荔枝智利荔枝智利荔枝智利荔枝智利荔枝	http://files.mvccms.cn/Upload/20200808/20200808235428_6295.jpg	http://files.mvccms.cn/Upload/20200808/20200808235428_6295.jpg,http://files.mvccms.cn/Upload/20200808/20200808235432_9686.jpg		1	2048	0	\N	\N	1023	f	f	只	<p><img src="http://files.mvccms.cn/Upload/20200808/20200808235624_1298.jpg" /></p>\n			0	0	112	\N	\N	1	\N		0	2020-08-08 23:57:04	2020-09-27 02:26:14	f	f	f
4033	智利荔枝	智利荔枝	智利荔枝	\N	http://files.mvccms.cn/Upload/20200809/20200809001625_7286.jpg	\N	1	2048	1031	\N	\N	1024	f	t	斤	<p><img src="http://files.mvccms.cn/Upload/20200809/20200809001645_8058.jpg" style="max-width:100%;"><br></p>		21:智利荔枝|22:智利荔枝	0	0	2	\N	\N	1	\N		1	2020-08-09 00:17:40	2020-08-09 00:33:29	t	t	t
4036	BN1597027062144	【礼券】阳澄湖大闸蟹礼券公3.5两母2.5两12只鲜活螃蟹提货卡礼卡包邮	2020年是艰难的一年，万家灯火卡是祖母清晨对我们广大客户的回馈，希望千家万户在中秋团圆之际都可以吃到高品质的阳澄湖大闸蟹。	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg,http://files.mvccms.cn/Upload/20200810/20200810103749_6093.jpg,http://files.mvccms.cn/Upload/20200812/20200812110700_2798.jpg,http://files.mvccms.cn/Upload/20200812/20200812110708_6070.jpg		1	2057	1039	\N	\N	1025	f	f	只	<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200810/20200810104348_4790.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200812/20200812111101_2543.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200812/20200812111110_1386.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200812/20200812111120_5738.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200812/20200812111128_5696.jpg" /></p>\n	1176.阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只|1178.阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2点5两8只|1179.阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180.阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181.阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182.阳澄湖大闸蟹:（五谷丰登）8888型，公4点5两4只，母3两4只|1183.阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3点5两4只|1184.阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4点5两4只	\N	0	0	4	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-08-10 10:44:05	2020-09-27 02:25:22	f	f	f
4037	BN1597117651511	大凉山精品突尼斯软籽石榴现摘新鲜水果，5斤包邮	精选好果 爆甜多汁 软籽皮薄	http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg	http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg,http://files.mvccms.cn/Upload/20200811/20200811115449_8549.jpg,http://files.mvccms.cn/Upload/20200811/20200811115455_2911.jpg		2	36	1045	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg" style="height:800px; width:800px" /></p>\n	1194.突尼斯软子石榴礼:礼盒特级果6-8个8斤装|1195.突尼斯软子石榴礼:礼盒大果8个6斤装|1196.突尼斯软子石榴礼:大果6-7个5斤装|1197.突尼斯软子石榴礼:中果8-9个5斤装	\N	2	0	125	\N	\N	1	\N	1194:礼盒特级果6-8个8斤装|1195:礼盒大果8个6斤装|1196:大果6-7个5斤装|1197:中果8-9个5斤装	1	2020-08-11 11:58:30	2020-09-27 02:24:51	f	f	f
4038	BN1597127960482	雪媚娘蛋黄酥，早餐面包零食小吃糕点休闲食品网红爆款美食解馋	酥软香甜\n\n	https://files.nsts.mvccms.cn/Upload/20210515/20210515152808_7719.jpg	https://files.nsts.mvccms.cn/Upload/20210515/20210515152830_2165.jpg,http://files.mvccms.cn/Upload/20200811/20200811144258_1679.jpg,http://files.mvccms.cn/Upload/20200811/20200811144303_5502.jpg,https://files.nsts.mvccms.cn/Upload/20210515/20210515152816_1286.jpg		1	2052	1046	\N	\N	0	f	t	盒	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515152916_8509.jpg" style="height:1184px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515153029_9192.jpg" style="height:1236px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515153053_6518.jpg" style="height:691px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515153115_9184.jpg" style="height:1008px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515153141_3887.jpg" style="height:1314px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515153210_9167.jpg" style="height:1196px; width:790px" /></p>\n	1201.蛋黄酥:板栗味（6枚）盒|1202.蛋黄酥:红豆味（6枚）盒|1259.蛋黄酥:肉松味（6枚）盒|1260.蛋黄酥:随机4盒（24枚）	\N	0	5	18	\N	\N	1	\N	1201:板栗味（6枚）盒|1202:红豆味（6枚）盒|1259:肉松味（6枚）盒|1260:随机4盒（24枚）	1	2020-08-11 14:46:26	2021-05-15 15:33:40	f	t	f
4039	BN1597160812288	怀化网红功夫水饺纯手工制作方便速食蒸煮早餐夜宵面食饺子市区包送	1斤=30——32个左右，怀化市区2斤起送\n早上的你是贴心的暖胃神器,下午的你是精致的点心,小饿的你是扛饿能手,任何时候的你，总能给我需要的呵护\n猫宁～～纯手工制作，超级好吃	http://files.mvccms.cn/Upload/20200906/20200906231309_9489.jpg	http://files.mvccms.cn/Upload/20200906/20200906231309_9489.jpg,http://files.mvccms.cn/Upload/20200811/20200811235036_0015.png		2	2066	1048	\N	\N	23	f	t	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906231309_9489.jpg" style="height:1290px; width:1290px" /></p>\n	1223.功夫水饺:韭菜猪肉（1斤）|1224.功夫水饺:香葱猪肉（1斤）|1225.功夫水饺:香菇猪肉（1斤）|1226.功夫水饺:芹菜猪肉（1斤）|1227.功夫水饺:莲藕猪肉（1斤）|1228.功夫水饺:白菜猪肉（1斤）|1229.功夫水饺:胡萝卜玉米（1斤）|1230.功夫水饺:干笋猪肉（1斤）|1231.功夫水饺:羊肉水饺（1斤）|1232.功夫水饺:功夫馄饨（1斤）	\N	2	3	30	\N	\N	1	\N	1223:韭菜猪肉（1斤）|1224:香葱猪肉（1斤）|1225:香菇猪肉（1斤）|1226:芹菜猪肉（1斤）|1227:莲藕猪肉（1斤）|1228:白菜猪肉（1斤）|1229:胡萝卜玉米（1斤）|1230:干笋猪肉（1斤）|1231:羊肉水饺（1斤）|1232:功夫馄饨（1斤）	1	2020-08-11 23:55:44	2020-09-27 02:24:15	f	f	f
4043	BN1597511089122	补差价补运费专用链接 一元单价差拍多少，拍前请联系客服	补差价专用商品	https://files.nsts.mvccms.cn/Upload/20210505/20210505020934_1145.jpg	https://files.nsts.mvccms.cn/Upload/20210505/20210505020945_9208.jpg		1	2048	0	\N	\N	0	f	t	斤	<p>无</p>\n			0	16	56	\N	\N	1	\N		0	2020-08-16 01:05:22	2021-05-05 02:11:22	f	f	f
4065	BN1599533489165	新鲜高山板栗、锥栗，农家现摘装包邮	精选好果 新鲜现摘现发 又甜又新鲜，	http://files.mvccms.cn/Upload/20200909/20200909113208_8893.jpg	http://files.mvccms.cn/Upload/20200909/20200909113208_8893.jpg,http://files.mvccms.cn/Upload/20200908/20200908105531_7779.jpg,http://files.mvccms.cn/Upload/20200908/20200908105553_0704.jpg,http://files.mvccms.cn/Upload/20200909/20200909113228_1916.jpg		1	2061	1059	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20200909/20200909113208_8893.jpg" style="height:1099px; width:1099px" /></p>\n	1271.板栗:板栗（3斤）|1272.板栗:板栗（5斤）|1273.板栗:锥栗（5斤）	\N	2	0	10	\N	\N	1	\N	1271:板栗（3斤）|1272:板栗（5斤）|1273:锥栗（5斤）	1	2020-09-08 11:01:07	2020-11-14 18:27:30	f	f	f
4045	BN1597910486951	雷州红心牛奶冰糖木瓜新鲜包邮	雷州冰糖红心木瓜\n素有“百益果王”之称，果实硕大，正常的情况下单个重量约1斤-2斤左右，外形美观，果肉呈红色，厚实细致、清甜香浓、软滑多汁，与其它木瓜口感很不一样，都是树上自然成熟，籽多很黑，没有打任何农药，没有人工催熟，是原生态红心木瓜。更天然更营养，是木瓜中的精品。	http://files.mvccms.cn/Upload/20200820/20200820160311_5030.jpg	http://files.mvccms.cn/Upload/20200820/20200820160311_5030.jpg,http://files.mvccms.cn/Upload/20200820/20200820160321_8111.jpg,http://files.mvccms.cn/Upload/20200820/20200820160327_8267.jpg		2	36	16	\N	\N	23	f	t	箱	<p><img src="http://files.mvccms.cn/Upload/20200820/20200820160732_5781.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820160745_5382.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820160759_8274.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820160809_2800.jpg" /></p>\n	1238.通用:5斤|1252.通用:8斤	18:5斤|19:雷州	0	4	7	\N	\N	1	\N	87:KG|88:斤|89:份|90:袋|91:罐|92:台|93:瓶|94:排|95:杯|96:件|97:箱|98:只|1087:个|1200:盒|1238:5斤|1252:8斤	1	2020-08-20 16:09:30	2020-09-29 19:30:08	f	f	f
4047	BN1597913231193	烤虾干即食干虾孕妇网红零食500克包邮	1罐=1斤=70-90只，干度9成以上，不咸/可以直接吃，肉质Q弹，越嚼越香，这是纯天然晾晒没有添加的烤虾干！	http://files.mvccms.cn/Upload/20200820/20200820165159_9020.jpg	http://files.mvccms.cn/Upload/20200820/20200820165159_9020.jpg,http://files.mvccms.cn/Upload/20200820/20200820165204_6214.jpg,http://files.mvccms.cn/Upload/20200820/20200820165207_5954.jpg,http://files.mvccms.cn/Upload/20200820/20200820165210_7145.jpg		1	2053	15	\N	\N	23	f	t	斤	<p><img src="http://files.mvccms.cn/Upload/20200820/20200820164823_7819.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820164924_3962.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820164934_7605.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820164949_4711.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820164959_8738.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200820/20200820165006_9103.jpg" /></p>\n\n<p>&nbsp;</p>\n		18:罐|19:山东	0	11	7	\N	\N	1	\N		1	2020-08-20 16:52:23	2020-10-19 21:03:32	f	f	f
4048	BN1597976795158	【椰语堂】海南特产椰奶清补凉椰子汁早餐280g*12罐植物蛋白饮料	把清补凉装进罐子里，随时随地喝到海南椰味\n一件12罐，一罐280g	http://files.mvccms.cn/Upload/20200821/20200821105408_8615.jpg	http://files.mvccms.cn/Upload/20200821/20200821105408_8615.jpg,http://files.mvccms.cn/Upload/20200821/20200821105412_7360.jpg,http://files.mvccms.cn/Upload/20200821/20200821105532_9278.jpg,http://files.mvccms.cn/Upload/20200821/20200821105539_6868.jpg		1	2053	0	\N	\N	23	f	t	件	<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103453_0931.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103527_1116.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103545_4396.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103603_0489.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103700_1568.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103802_4468.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103828_8362.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103941_1400.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821103951_5954.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821104031_3946.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821104126_3039.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200821/20200821104139_1845.jpg" /></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n			0	9	13	\N	\N	1	\N		0	2020-08-21 10:45:33	2021-05-27 20:01:54	t	f	f
4049	BN1598029834798	四川攀枝花凯青皮凯特芒果A级精品果10斤包邮	鲜嫩多汁 甜蜜诱人 坏果包赔	http://files.mvccms.cn/Upload/20200822/20200822011038_8394.jpg	http://files.mvccms.cn/Upload/20200822/20200822011038_8394.jpg,http://files.mvccms.cn/Upload/20200822/20200822011044_2404.jpg,http://files.mvccms.cn/Upload/20200822/20200822011048_9184.jpg		1	36	16	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20200822/20200822011038_8394.jpg" style="height:500px; width:500px" /></p>\n		18:件|19:四川	0	0	2	\N	\N	1	\N		1	2020-08-22 01:13:48	2020-09-27 02:22:47	f	f	f
4050	BN1598409233463	陕西周至翠香猕猴桃新鲜绿心弥猴桃孕妇水果奇异果整箱包邮	肉嫩多汁 酸甜爽口 坏果包赔	http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg	http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg,http://files.mvccms.cn/Upload/20200826/20200826103445_4794.jpg,http://files.mvccms.cn/Upload/20200826/20200826103448_5046.jpg		1	36	1052	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg" style="height:500px; width:500px" /></p>\n	1254.翠香绿心猕猴桃:中果26-30枚|1255.翠香绿心猕猴桃:大果20-24枚|1256.翠香绿心猕猴桃:特大果8斤装|1257.翠香绿心猕猴桃:精品礼盒	18:5斤	0	0	1	\N	\N	1	\N	1254:中果26-30枚|1255:大果20-24枚|1256:特大果8斤装|1257:精品礼盒	1	2020-08-26 10:37:13	2020-09-27 02:22:29	f	f	f
4051	BN1598837599738	泰国老树金枕巴掌榴莲，软糯香甜自然熟榴莲，整个包邮	软糯香甜 ，产地直发，排单发货，下单72小时内发出，急单勿拍！	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg,http://files.mvccms.cn/Upload/20200907/20200907105418_1813.jpg,http://files.mvccms.cn/Upload/20200907/20200907105443_7908.jpg		1	36	1057	\N	\N	0	f	f	个	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210502/20210502230910_7415.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201215/20201215090052_6976.jpg" style="height:919px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201215/20201215090115_0306.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201215/20201215090133_4093.jpg" style="height:625px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201215/20201215090155_0460.jpg" style="height:638px; width:790px" /></p>\n	1684.榴莲:巴掌榴莲（2-3斤）|1685.榴莲:巴掌榴莲（3-4斤）|1686.榴莲:巴掌榴莲（4-5斤）|1687.榴莲:巴掌榴莲（5-6斤）1-2个|1688.榴莲:巴掌榴莲（6-7斤）1-2个|1689.榴莲:巴掌榴莲（7-8斤）1-2个|1690.榴莲:巴掌榴莲（8-9斤）1-3个	\N	0	68	27	\N	\N	1	\N	1451:干尧一个装3-4斤（A级精品）|1452:干尧一个装4-5斤（A级精品，店长力荐）|1453:干尧一个装5-6斤（A级精品，店长力荐）|1454:干尧1-2个装6-7斤（A级精品，吃货专享）|1638:正宗马来西亚猫山王（鲜果）|1671:金枕3-4斤（A级精品）|1672:金枕4-5斤（A级精品，店长力荐）|1673:金枕5-6斤（A级精品，送礼推荐）|1674:金枕6-7斤（A级精品，吃货专享）|1675:金枕7-8斤（A级精品，人气爆款）|1676:金枕8-9斤（A级精品，过瘾必选）|1677:金枕2-3斤（巴掌榴莲，一个人吃爽）|1682:金枕9-10斤（A级精品，送礼推荐）|1683:金枕10-11斤（A级精品，土豪装）|1684:巴掌榴莲（2-3斤）|1685:巴掌榴莲（3-4斤）|1686:巴掌榴莲（4-5斤）|1687:巴掌榴莲（5-6斤）1-2个|1688:巴掌榴莲（6-7斤）1-2个|1689:巴掌榴莲（7-8斤）1-2个|1690:巴掌榴莲（8-9斤）1-3个	1	2020-08-31 09:50:29	2021-05-15 14:18:40	f	f	f
4052	BN1598924812576	【礼卷，送亲朋，大方体面】1688型祖母清晨阳澄湖大闸蟹母2.5两8只包邮	【送亲朋，大方体面】1688型祖母清晨阳澄湖大闸蟹礼卷母2.5两8只包邮	http://files.mvccms.cn/Upload/20200901/20200901095306_1617.jpg	http://files.mvccms.cn/Upload/20200901/20200901095306_1617.jpg,http://files.mvccms.cn/Upload/20200901/20200901095030_2541.jpg,http://files.mvccms.cn/Upload/20200901/20200901095313_4683.jpg		2	2055	1039	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200901/20200901095306_1617.jpg" style="height:960px; width:960px" /></p>\n	1178.阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2点5两8只	\N	0	2	7	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 09:56:13	2021-04-11 15:08:34	f	f	f
4053	BN1598926029328	【礼卷，聚会吃，经济实惠】1888型祖母清晨阳澄湖大闸蟹公3.5两4只母2.5两4只包邮	【聚会吃，经济实惠】1888型祖母清晨阳澄湖大闸蟹礼卷公3.5两4只母2.5两4只包邮	http://files.mvccms.cn/Upload/20200906/20200906024910_5706.jpg	http://files.mvccms.cn/Upload/20200906/20200906024910_5706.jpg,http://files.mvccms.cn/Upload/20200901/20200901100427_9387.jpg,http://files.mvccms.cn/Upload/20200901/20200901100438_0633.jpg,http://files.mvccms.cn/Upload/20200901/20200901100441_6822.jpg,http://files.mvccms.cn/Upload/20200901/20200901100447_4393.jpg		2	2055	1039	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906024910_5706.jpg" style="height:451px; width:451px" /></p>\n	1179.阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只	\N	0	0	14	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 10:07:11	2021-04-11 12:24:44	f	f	f
4054	BN1598926133293	【礼卷，店铺爆款，性价比之王】2588型祖母清晨阳澄湖大闸蟹公3.5两6只母2.5两6只包邮	【店铺爆款，性价比之王】2588型祖母清晨阳澄湖大闸蟹公3.5两6只母2.5两6只包邮	http://files.mvccms.cn/Upload/20200906/20200906024849_9304.jpg	http://files.mvccms.cn/Upload/20200906/20200906024849_9304.jpg,http://files.mvccms.cn/Upload/20200901/20200901100952_5216.jpg,http://files.mvccms.cn/Upload/20200901/20200901101003_4572.jpg,http://files.mvccms.cn/Upload/20200901/20200901101007_1828.jpg,http://files.mvccms.cn/Upload/20200901/20200901101012_0905.jpg		2	2055	1039	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906024849_9304.jpg" style="height:451px; width:451px" /></p>\n	1180.阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只	\N	0	0	27	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 10:11:49	2021-04-11 12:24:30	f	f	f
4055	BN1598929931299	【礼卷，送领导，升职加薪】2888型祖母清晨阳澄湖大闸蟹礼卷公4两4只母2.8两4只包邮	【送领导，升职加薪】2888型祖母清晨阳澄湖大闸蟹礼卷公4两4只母2.8两4只	http://files.mvccms.cn/Upload/20200901/20200901110741_1793.jpg	http://files.mvccms.cn/Upload/20200901/20200901110741_1793.jpg,http://files.mvccms.cn/Upload/20200906/20200906024817_3289.jpg,http://files.mvccms.cn/Upload/20200901/20200901110736_0983.jpg,http://files.mvccms.cn/Upload/20200901/20200901110745_6979.jpg		2	2055	1039	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200901/20200901110741_1793.jpg" style="height:1080px; width:1080px" /></p>\n	1181.阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2点8两4只	\N	0	2	2	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 11:12:21	2021-04-11 12:24:18	f	f	f
4056	BN1598930218792	【礼卷，五谷丰登】8888型祖母清晨阳澄湖大闸蟹礼卷公4.5两4只母3两4只	公蟹4.5两 母蟹3两 8只装大闸蟹礼券	http://files.mvccms.cn/Upload/20200901/20200901111416_8677.jpg	http://files.mvccms.cn/Upload/20200901/20200901111416_8677.jpg,http://files.mvccms.cn/Upload/20200901/20200901111421_3696.jpg,http://files.mvccms.cn/Upload/20200901/20200901111425_7920.jpg,http://files.mvccms.cn/Upload/20200901/20200901111435_3701.jpg		2	2055	1039	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200901/20200901111416_8677.jpg" style="height:960px; width:960px" /></p>\n	1182.阳澄湖大闸蟹:（五谷丰登）8888型，公4点5两4只，母3两4只	\N	0	2	4	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 11:17:02	2021-04-11 12:24:05	f	f	f
4080	BN1601123879747	蚂蚁助农，怀化本土正宗散养土鸡蛋、无菌蛋30枚装	正宗土鸡蛋，个头小营养大	http://files.mvccms.cn/Upload/20201105/20201105135857_5710.jpg	http://files.mvccms.cn/Upload/20201105/20201105135608_4693.jpg,http://files.mvccms.cn/Upload/20201105/20201105135821_3560.jpg,http://files.mvccms.cn/Upload/20201106/20201106194136_1377.jpg		1	2059	1070	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201105/20201105141212_1442.jpg" style="height:1215px; width:800px" /></p>\n	1293.土鸡蛋:混合装30枚|1294.土鸡蛋:粉壳土鸡蛋30枚|1295.土鸡蛋:绿壳土鸡蛋30枚	\N	0	0	14	\N	\N	1	\N	1293:混合装30枚|1294:粉壳土鸡蛋30枚|1295:绿壳土鸡蛋30枚	1	2020-09-26 20:44:25	2020-11-06 19:41:38	f	f	f
4057	BN1598930383389	【礼卷，金玉满堂】9999型祖母清晨阳澄湖大闸蟹礼卷公5两4只母3.5两4只包邮	公蟹5两 母蟹3.5两 8只装大闸蟹礼券	http://files.mvccms.cn/Upload/20200901/20200901111826_4459.jpg	http://files.mvccms.cn/Upload/20200901/20200901111826_4459.jpg,http://files.mvccms.cn/Upload/20200901/20200901111822_3809.jpg,http://files.mvccms.cn/Upload/20200906/20200906024611_9113.jpg,http://files.mvccms.cn/Upload/20200901/20200901111832_5680.jpg		2	2055	1039	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200901/20200901111826_4459.jpg" style="height:960px; width:960px" /></p>\n	1183.阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3点5两4只	\N	0	0	0	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 11:20:58	2021-04-11 12:23:53	f	f	f
4058	BN1598930497519	【礼卷，大展宏图】88888型祖母清晨阳澄湖大闸蟹公6两4只母4两4只包邮	【大展宏图】88888型祖母清晨阳澄湖大闸蟹公6两4只母4两4只包邮	http://files.mvccms.cn/Upload/20200906/20200906024520_9023.jpg	http://files.mvccms.cn/Upload/20200906/20200906024520_9023.jpg,http://files.mvccms.cn/Upload/20200901/20200901112759_4593.jpg,http://files.mvccms.cn/Upload/20200901/20200901112818_0769.jpg,http://files.mvccms.cn/Upload/20200901/20200901112839_4580.jpg		2	2055	1039	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906024520_9023.jpg" style="height:1045px; width:1045px" /></p>\n	1176.阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	\N	0	3	0	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 11:30:10	2021-04-11 12:23:40	f	f	f
4059	BN1598931142748	【礼卷，国泰民安】99999型祖母清晨阳澄湖大闸蟹公7两4只母4.5两4只包邮	【国泰民安】99999型祖母清晨阳澄湖大闸蟹公7两4只母4.5两4只包邮	http://files.mvccms.cn/Upload/20200906/20200906022655_7853.jpg	http://files.mvccms.cn/Upload/20200906/20200906022655_7853.jpg,http://files.mvccms.cn/Upload/20200901/20200901113349_9207.jpg,http://files.mvccms.cn/Upload/20200901/20200901113357_1248.jpg,http://files.mvccms.cn/Upload/20200901/20200901113405_7123.jpg,http://files.mvccms.cn/Upload/20200901/20200901113411_2485.jpg		1	2055	1039	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906022655_7853.jpg" style="height:980px; width:980px" /></p>\n	1184.阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4点5两4只	\N	0	0	1	\N	\N	1	\N	1176:（大展宏图）88888型，公6两4只，母4两4只|1178:（送亲朋，大方体面）1688型，母2点5两8只|1179:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只|1180:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只|1181:（送领导，升职加薪）2888型，公4两4只，母2点8两4只|1182:（五谷丰登）8888型，公4点5两4只，母3两4只|1183:（金玉满堂）9999型，公5两4只，母3点5两4只|1184:（国泰民安）99999型，公7两4只，母4点5两4只	1	2020-09-01 11:35:22	2021-04-11 12:23:23	f	f	f
4060	BN1598931972387	祖母清晨佛跳墙加热即食正宗汤汁高档原材料礼盒包邮	国宴主厨调味 熬制48小时 	http://files.mvccms.cn/Upload/20200906/20200906025153_4926.jpg	http://files.mvccms.cn/Upload/20200906/20200906025153_4926.jpg,http://files.mvccms.cn/Upload/20200901/20200901114734_7857.jpg,http://files.mvccms.cn/Upload/20200901/20200901114743_1426.jpg,http://files.mvccms.cn/Upload/20200901/20200901114822_1420.jpg		1	2056	1051	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906025153_4926.jpg" style="height:696px; width:696px" /></p>\n	96.通用:件	\N	0	2	11	\N	\N	1	\N	87:KG|88:斤|89:份|90:袋|91:罐|92:台|93:瓶|94:排|95:杯|96:件|97:箱|98:只|1087:个|1200:盒|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤	1	2020-09-01 11:50:37	2020-09-27 02:20:27	f	f	f
4061	BN1599010424876	特级青皮无花果3斤装顺丰包邮	顺丰包邮，坏果包赔	\N	http://files.mvccms.cn/Upload/20200902/20200902093525_2177.jpg,http://files.mvccms.cn/Upload/20200902/20200902093529_0620.jpg,http://files.mvccms.cn/Upload/20200902/20200902093532_8152.jpg,http://files.mvccms.cn/Upload/20200902/20200902093536_6911.jpg	\N	1	36	16	\N	\N	23	f	f	斤	<p><br></p>		18:件|19:威海	0	0	0	\N	\N	1	\N		1	2020-09-02 09:39:59	\N	f	f	t
4062	BN1599099511453	正宗北部湾红心流油海鸭蛋咸蛋批发60-69包邮	蟹香蛋黄 鲜香流油 好吃不咸 原产地直发	http://files.mvccms.cn/Upload/20200906/20200906231626_7523.jpg	http://files.mvccms.cn/Upload/20200906/20200906231626_7523.jpg,http://files.mvccms.cn/Upload/20200903/20200903102159_4109.jpg,http://files.mvccms.cn/Upload/20200903/20200903102204_4128.jpg		1	2059	1056	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906231626_7523.jpg" style="height:467px; width:467px" /></p>\n	1262.海鸭蛋:20个装（60-69克）|1263.海鸭蛋:20个装（70-79克）	\N	0	0	0	\N	\N	1	\N	1262:20个装（60-69克）|1263:20个装（70-79克）	1	2020-09-03 10:25:35	2020-09-27 02:20:13	f	f	f
4063	BN1599099954210	正宗北部湾红心流油海鸭蛋咸蛋20枚70-79克批发	蟹香蛋黄 鲜香流油 好吃不咸 原产地直发	http://files.mvccms.cn/Upload/20200906/20200906232318_5735.jpg	http://files.mvccms.cn/Upload/20200906/20200906232318_5735.jpg,http://files.mvccms.cn/Upload/20200903/20200903103755_9008.jpg,http://files.mvccms.cn/Upload/20200906/20200906232036_1218.jpg		2	2059	1056	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200906/20200906232318_5735.jpg" style="height:468px; width:468px" /></p>\n	1263.海鸭蛋:20个装（70-79克）	\N	0	0	1	\N	\N	1	\N	1262:20个装（60-69克）|1263:20个装（70-79克）	1	2020-09-03 10:39:01	2020-09-27 02:19:57	f	f	f
4064	BN1599101143187	海南金都一号红心火龙果，蜜宝红肉当季新鲜水果现摘8斤精品果包邮	精选品质  鲜甜美味	http://files.mvccms.cn/Upload/20200903/20200903105255_8759.jpg	http://files.mvccms.cn/Upload/20200903/20200903105255_8759.jpg,http://files.mvccms.cn/Upload/20200903/20200903105304_4667.jpg,http://files.mvccms.cn/Upload/20200903/20200903105312_7752.jpg		1	36	1108	\N	\N	23	f	t	件	<p><img src="http://files.mvccms.cn/Upload/20200903/20200903105728_4280.jpg" /><img src="http://files.mvccms.cn/Upload/20200903/20200903105734_7750.jpg" /><img src="http://files.mvccms.cn/Upload/20200903/20200903105740_8580.jpg" /><img src="http://files.mvccms.cn/Upload/20200903/20200903105749_0453.jpg" /></p>\n	1412.火龙果:8斤装精品好果	\N	0	0	6	\N	\N	1	\N	1410:5斤中果|1411:5斤大果|1412:8斤装精品好果	1	2020-09-03 10:58:14	2021-05-25 23:16:46	f	f	f
4066	BN1599796724660	紫皮百香果，超赞，A级百香果酸甜可口热带水果包邮	黄金酸甜比 日夏清凉爽口	https://files.nsts.mvccms.cn/Upload/20210424/20210424204236_4515.jpg	https://files.nsts.mvccms.cn/Upload/20210424/20210424204244_6943.jpg,https://files.nsts.mvccms.cn/Upload/20210424/20210424204352_4271.jpg,https://files.nsts.mvccms.cn/Upload/20210424/20210424204516_3538.jpg		1	36	1062	\N	\N	0	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424204729_7800.jpg" style="height:997px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424204801_1852.jpg" style="height:976px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424204829_5796.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424204854_7042.jpg" style="height:1109px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424204919_0551.jpg" style="height:1126px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424204945_5758.jpg" style="height:1632px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210424/20210424205009_4369.jpg" style="height:1246px; width:790px" /></p>\n	1275.百香果:3斤|1276.百香果:5斤	\N	0	8	5	\N	\N	1	\N	1275:3斤|1276:5斤	1	2020-09-11 12:12:47	2021-04-24 20:56:09	f	f	f
4067	BN1599798646031	云南天山特级红泥沙雪连果包邮	5斤5-7根。9斤9-13根	http://files.mvccms.cn/Upload/20200911/20200911122552_1341.jpg	http://files.mvccms.cn/Upload/20200911/20200911122552_1341.jpg,http://files.mvccms.cn/Upload/20200911/20200911122636_0301.jpg		1	36	1063	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200911/20200911122552_1341.jpg" style="height:571px; width:571px" /></p>\n	1238.水果:5斤|1277.水果:9斤	\N	0	0	0	\N	\N	1	\N	88:斤|89:份|96:件|97:箱|1087:个|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤	1	2020-09-11 12:32:19	2020-09-27 02:19:05	f	f	f
4068	BN1600066394293	山东正宗烟薯软糯蜜甜糖心烤地瓜新鲜现挖包邮	 香甜软糯 糖心流油~	http://files.mvccms.cn/Upload/20200914/20200914145748_2915.jpg	http://files.mvccms.cn/Upload/20200914/20200914145748_2915.jpg,http://files.mvccms.cn/Upload/20200914/20200914145810_8708.jpg,http://files.mvccms.cn/Upload/20200914/20200914145826_4430.jpg		2	2061	1063	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200914/20200914145748_2915.jpg" style="height:1463px; width:1463px" /></p>\n	1238.水果:5斤|1253.水果:10斤	\N	0	1	7	\N	\N	1	\N	88:斤|89:份|96:件|97:箱|1087:个|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤	1	2020-09-14 15:02:18	2020-11-14 18:27:00	f	f	f
4069	BN1600081698911	蚂蚁扶贫，五倍子药花蜜纯正天然蜂蜜农家自产正宗天然好蜂蜜结晶成熟蜜，包邮	优质药材花期蜂蜜 	http://files.mvccms.cn/Upload/20200914/20200914191106_6953.jpg	http://files.mvccms.cn/Upload/20200914/20200914191106_6953.jpg,http://files.mvccms.cn/Upload/20200914/20200914191118_5021.jpg		1	2048	1064	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20200914/20200914191106_6953.jpg" style="height:484px; width:484px" /></p>\n	1282.蜂蜜:1斤|1283.蜂蜜:2斤	\N	0	0	6	\N	\N	1	\N	1282:1斤|1283:2斤	1	2020-09-14 19:14:21	2020-10-19 15:22:25	f	f	f
4070	BN1600311418321	手撕酱板老鸭湖南特产正宗特辣整只风干鸭肉零食小吃微辣	湖南特色美食，识味，也懂味	http://files.mvccms.cn/Upload/20200917/20200917105805_1766.jpg	http://files.mvccms.cn/Upload/20200917/20200917105805_1766.jpg,http://files.mvccms.cn/Upload/20200917/20200917105819_9513.jpg		2	2053	1065	\N	\N	0	f	f	只	<p><img alt="" src="http://files.mvccms.cn/Upload/20200917/20200917105805_1766.jpg" style="height:844px; width:844px" /></p>\n	1285.特色美食:中辣|1286.特色美食:特辣	\N	1	0	3	\N	\N	1	\N	1284:微辣|1285:中辣|1286:特辣	1	2020-09-17 11:00:23	2020-10-01 00:23:25	f	f	f
4071	BN1600651185632	限时抢购，祖母清晨公3.5两5只＋母2.8两5只顺丰全国包邮338元/箱	48小时发货	http://files.mvccms.cn/Upload/20200921/20200921092146_0295.jpg	http://files.mvccms.cn/Upload/20201007/20201007120513_6661.jpg,http://files.mvccms.cn/Upload/20200921/20200921092146_0295.jpg,http://files.mvccms.cn/Upload/20201007/20201007120527_3515.jpg,http://files.mvccms.cn/Upload/20201007/20201007120538_7072.jpg		1	2055	0	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200921/20200921092146_0295.jpg" style="height:400px; width:400px" /></p>\n			0	0	10	\N	\N	1	\N		0	2020-09-21 09:22:58	2020-10-16 14:49:54	f	f	f
4072	BN1600739846152	汶川现摘新鲜红脆李整箱包邮	脆甜脱骨 现摘现发  坏果包赔	http://files.mvccms.cn/Upload/20200922/20200922100119_3657.jpg	http://files.mvccms.cn/Upload/20200922/20200922100119_3657.jpg,http://files.mvccms.cn/Upload/20200922/20200922100239_3524.jpg		2	36	0	\N	\N	23	f	f	件	<p><img src="http://files.mvccms.cn/Upload/20200922/20200922100430_8781.jpg" /></p>\n\n<p><img src="http://files.mvccms.cn/Upload/20200922/20200922100517_5584.jpg" /></p>\n			0	0	4	\N	\N	1	\N		0	2020-09-22 10:05:22	2020-09-27 02:14:08	f	f	f
4073	BN1600880478327	测试单商品多规格多分销体系商品	测试单商品多规格多分销体系商品	\N	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	\N	1	2048	0	\N	\N	0	f	f	个	<p>测试单商品多规格多分销体系商品</p>			0	0	0	\N	\N	1	\N		0	2020-09-24 01:02:36	2020-09-24 03:35:32	f	f	t
4074	BN1600891793003	1111111111	11111111111111111	\N		\N	1	2055	16	\N	\N	0	f	t	个	<p><br></p>	89.水果:份|97.水果:箱|1238.水果:5斤|1258.水果:4斤|1261.水果:3斤|1277.水果:9斤	18:6枚|19:11111111	0	0	0	\N	\N	1	\N	88:斤|89:份|96:件|97:箱|1087:个|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤	1	2020-09-24 04:10:55	2020-09-24 04:11:14	f	f	t
4075	BN1600891961489	3232321321	3232132132	\N	http://files.mvccms.cn/Upload/20200924/20200924041444_6846.jpg	\N	1	2055	16	\N	\N	0	f	f	个	<p><br></p>	1252.水果:8斤|1277.水果:9斤	18:1个|19:1111	0	0	0	\N	\N	1	\N	88:斤|89:份|96:件|97:箱|1087:个|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤	1	2020-09-24 04:15:01	2020-09-24 04:16:42	f	f	t
4076	BN1600963229663	测试分销商品	测试分销商品	\N	http://files.mvccms.cn/Upload/20200925/20200925000047_2726.jpg	\N	1	2048	0	\N	\N	0	f	t	个	<p><br></p>			0	0	0	\N	\N	1	\N		0	2020-09-25 00:01:19	\N	f	f	t
4077	BN1600963304637	测试分销商品	测试分销商品	\N	http://files.mvccms.cn/Upload/20200925/20200925000153_8761.jpg	\N	1	2048	0	\N	\N	0	f	f	个	<p><br></p>			0	0	0	\N	\N	1	\N		0	2020-09-25 00:02:59	2020-09-25 01:00:44	f	f	t
4078	BN1601026010140	11	1111	\N	http://files.mvccms.cn/Upload/20200925/20200925172807_3199.jpg	\N	1	2048	0	\N	\N	0	f	t	111	<p><img alt="" src="http://files.mvccms.cn/Upload/20200925/20200925172719_3569.jpg" style="height:188px; width:300px" /></p>\n			0	0	0	\N	\N	1	\N		0	2020-09-25 17:28:20	\N	f	f	t
4079	BN1601115512064	海南特产椰威生榨椰子汁瓶整箱婚宴酒席椰奶	鲜榨椰子汁，不添加防腐剂\n一箱24瓶	http://files.mvccms.cn/Upload/20200926/20200926182501_2870.jpg	http://files.mvccms.cn/Upload/20200926/20200926182501_2870.jpg,http://files.mvccms.cn/Upload/20200926/20200926182435_5938.jpg		1	2068	1068	\N	\N	0	f	t	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20200926/20200926182501_2870.jpg" style="height:580px; width:580px" /></p>\n	1289.椰子汁:1箱|1290.椰子汁:2箱	\N	0	2	0	\N	\N	1	\N	1289:1箱|1290:2箱	1	2020-09-26 18:27:41	2020-10-20 09:04:12	f	f	f
4081	BN1601211712074	农家自种特级金谷贡小米，五谷杂粮，宝宝月子粥顺丰包邮	 家乡的味道	http://files.mvccms.cn/Upload/20200927/20200927204941_4854.jpg	http://files.mvccms.cn/Upload/20200927/20200927205001_8616.jpg,http://files.mvccms.cn/Upload/20200927/20200927205025_4238.jpg,http://files.mvccms.cn/Upload/20200927/20200927205040_5494.jpg		1	2061	1109	\N	\N	23	f	t	袋	<p><img alt="" src="http://files.mvccms.cn/Upload/20200927/20200927210244_6408.jpg" style="height:468px; width:500px" /></p>\n	1413.小米:3斤装|1414.小米:5斤装	\N	0	5	10	\N	\N	1	\N	1413:3斤装|1414:5斤装	1	2020-09-27 21:06:50	2020-11-26 09:00:52	f	t	f
4082	BN1601476775034	康夫干衣机烘干机家用速干衣多功能省电静音智能遥控可折叠暧风机	晴天不放假，干爽新生活，遥控烘干机，同城免费配送	http://files.mvccms.cn/Upload/20200930/20200930234741_3728.jpg	http://files.mvccms.cn/Upload/20200930/20200930234628_2472.jpg,http://files.mvccms.cn/Upload/20200930/20200930234648_2599.jpg,http://files.mvccms.cn/Upload/20200930/20200930234725_2244.jpg		1	2069	0	\N	\N	0	f	f	台	<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930234931_0499.jpg" style="height:983px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930234947_2668.jpg" style="height:1043px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235007_2956.jpg" style="height:1491px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235024_7387.jpg" style="height:747px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235054_7729.jpg" style="height:799px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235114_2482.jpg" style="height:878px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235127_7917.jpg" style="height:951px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235144_8649.jpg" style="height:712px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20200930/20200930235158_5279.jpg" style="height:898px; width:790px" /></p>\n			0	0	1	\N	\N	1	\N		0	2020-09-30 23:56:13	\N	f	f	t
4083	BN1601687141307	山东纯野生去头小黄花鱼干，1斤包邮	醇香鱼鮝 蒸烧煎煮均可美味营养 品质保证	http://files.mvccms.cn/Upload/20201003/20201003091136_9329.jpg	http://files.mvccms.cn/Upload/20201003/20201003091051_5583.jpg,http://files.mvccms.cn/Upload/20201003/20201003091102_7032.jpg,http://files.mvccms.cn/Upload/20201003/20201003091121_0005.jpg		2	2062	1072	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003091942_1433.jpg" style="height:1452px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003091958_6737.jpg" style="height:1451px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003092009_0401.jpg" style="height:1452px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003092017_7988.jpg" style="height:1452px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003092028_4185.jpg" style="height:1451px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003092140_2726.jpg" style="height:1452px; width:790px" /></p>\n	1298.干鱼系列:1斤|1299.干鱼系列:2斤	\N	0	1	0	\N	\N	1	\N	1298:1斤|1299:2斤|1300:3斤|1301:4斤|1302:5斤	1	2020-10-03 09:22:38	2021-05-17 09:40:04	f	f	f
4084	BN1601700752863	蚂蚁助农，现摘甜脆柿子5斤当包邮	现摘现发 脆甜爽口 坏果包赔	http://files.mvccms.cn/Upload/20201003/20201003125332_5921.jpg	http://files.mvccms.cn/Upload/20201003/20201003125342_4786.jpg,http://files.mvccms.cn/Upload/20201003/20201003125352_8723.jpg,http://files.mvccms.cn/Upload/20201003/20201003125408_8383.jpg,http://files.mvccms.cn/Upload/20201003/20201003125429_9682.jpg		2	3	0	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125813_9416.jpg" style="height:774px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125830_1610.jpg" style="height:654px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125848_4448.jpg" style="height:952px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125906_0382.jpg" style="height:652px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125917_8645.jpg" style="height:943px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125929_1771.jpg" style="height:1479px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125943_3090.jpg" style="height:806px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003125959_2960.jpg" style="height:736px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003130010_3584.jpg" style="height:1234px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201003/20201003130023_7971.jpg" style="height:1130px; width:790px" /></p>\n			0	0	9	\N	\N	1	\N		0	2020-10-03 13:00:50	2020-10-21 17:23:20	f	f	f
4085	BN1601780769107	冷水海域墨鱼干，纯手工晾晒，个大肉厚，煲汤鲜美,包邮	个大肉厚，煲汤鲜美	http://files.mvccms.cn/Upload/20201004/20201004111303_0438.jpg	http://files.mvccms.cn/Upload/20201004/20201004111050_1573.jpg,http://files.mvccms.cn/Upload/20201004/20201004111059_8217.jpg		2	2062	1073	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201004/20201004111919_1466.gif" style="height:1308px; width:790px" /></p>\n	1303.干海鲜系列:小号墨鱼10-13只|1304.干海鲜系列:中号墨鱼2-3只|1305.干海鲜系列:大号墨鱼1只	\N	0	0	2	\N	\N	1	\N	1303:小号墨鱼10-13只|1304:中号墨鱼2-3只|1305:大号墨鱼1只	1	2020-10-04 11:20:06	2021-05-17 10:37:05	f	f	f
4086	BN1601782137364	香酥小黄鱼，酥脆即食黄花鱼一斤包邮	蛋白质含量佳 老少皆宜,110克30条左右	http://files.mvccms.cn/Upload/20201004/20201004113634_1720.jpg	http://files.mvccms.cn/Upload/20201004/20201004113557_6067.jpg,http://files.mvccms.cn/Upload/20201004/20201004113547_8089.jpg,http://files.mvccms.cn/Upload/20201004/20201004113611_5504.jpg,http://files.mvccms.cn/Upload/20201004/20201004113621_2902.jpg		2	2053	1076	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20201004/20201004114132_2625.jpg" style="height:1560px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201004/20201004114154_1132.jpg" style="height:1086px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201004/20201004114211_4885.jpg" style="height:1487px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201004/20201004114232_6729.jpg" style="height:1393px; width:790px" /></p>\n	1309.即食海产品:尝鲜装110克|1310.即食海产品:一斤装	\N	0	1	2	\N	\N	1	\N	1309:尝鲜装110克|1310:一斤装	1	2020-10-04 11:42:43	2020-10-05 10:40:34	f	f	f
4145	BN1614181089679	大金空调新风除湿挂机	大金空调新风除湿挂机	https://files.nsts.mvccms.cn/Upload/20210224/20210224234116_5093.jpg	https://files.nsts.mvccms.cn/Upload/20210224/20210224234221_1312.jpg,https://files.nsts.mvccms.cn/Upload/20210224/20210224234251_6554.jpg		1	2078	1132	\N	\N	1027	f	t	台	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210224/20210224235647_7722.jpg" style="height:800px; width:800px" /></p>\n	1631.空调挂机-匹数:1匹-10瓦|1632.空调挂机-匹数:2匹-20瓦|1633.空调挂机-匹数:3匹-30瓦|1634.空调挂机-匹数:4匹-40瓦	24:5匹	2	1	28	\N	\N	1	\N	1631:1匹-10瓦|1632:2匹-20瓦|1633:3匹-30瓦|1634:4匹-40瓦	1	2021-02-24 23:57:39	2021-03-10 23:48:15	t	t	t
4087	BN1601861162924	深海乌贼，淡晒海产干货鱿鱼干500包邮	淡晒大号鱿鱼干 可煲汤烧烤铁板 鲜香美味	http://files.mvccms.cn/Upload/20201005/20201005093709_4030.jpg	http://files.mvccms.cn/Upload/20201005/20201005093529_3324.jpg,http://files.mvccms.cn/Upload/20201005/20201005093544_0220.jpg,http://files.mvccms.cn/Upload/20201005/20201005093559_1835.jpg		1	2074	1075	\N	\N	23	f	t	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20201005/20201005094329_1352.jpg" style="height:355px; width:800px" /><img alt="" src="http://files.mvccms.cn/Upload/20201005/20201005094341_4513.jpg" style="height:355px; width:800px" /></p>\n	1306.干海鲜系列:鱿鱼干一斤装|1307.干海鲜系列:鱿鱼干二斤装	\N	0	2	3	\N	\N	1	\N	1303:小号墨鱼10-13只|1304:中号墨鱼2-3只|1305:大号墨鱼1只|1306:鱿鱼干一斤装|1307:鱿鱼干二斤装	1	2020-10-05 09:45:32	2020-10-22 11:17:55	f	f	f
4088	BN1601885520706	软糯农家自制烟薯25糖心地瓜干，无油无添加2斤包邮	倒蒸方式，纯手工制作，没有任何糖添加！\n 越嚼越甜，明显的地瓜香味！\n 	http://files.mvccms.cn/Upload/20201005/20201005161958_0046.jpg	http://files.mvccms.cn/Upload/20201005/20201005162122_0264.jpg,http://files.mvccms.cn/Upload/20201005/20201005162134_5595.jpg,http://files.mvccms.cn/Upload/20201005/20201005162204_7699.jpg		2	2053	1071	\N	\N	0	f	f	袋	<p><img alt="" src="http://files.mvccms.cn/Upload/20201005/20201005163004_9104.png" style="height:738px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201005/20201005163035_7918.png" style="height:1040px; width:750px" /></p>\n	1296.农家土特产:3斤|1297.农家土特产:5斤|1311.农家土特产:2斤	\N	1	0	18	\N	\N	1	\N	1296:3斤|1297:5斤|1311:2斤	1	2020-10-05 16:35:58	2020-10-14 19:22:28	f	f	f
4089	BN1601969080954	正宗普罗旺斯有机西红柿新鲜自然熟生吃大沙瓤包邮	汁水充沛 酸甜可口 坏果包赔 	http://files.mvccms.cn/Upload/20201006/20201006153239_5690.jpg	http://files.mvccms.cn/Upload/20201006/20201006153026_4172.jpg,http://files.mvccms.cn/Upload/20201006/20201006153055_7853.jpg,http://files.mvccms.cn/Upload/20201006/20201006153124_9029.jpg,http://files.mvccms.cn/Upload/20201006/20201006153210_0549.jpg,http://files.mvccms.cn/Upload/20201006/20201006153229_7207.jpg		1	2061	1051	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201006/20201006153703_3320.jpg" style="height:869px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201006/20201006153714_6945.jpg" style="height:806px; width:750px" /></p>\n	1258.水果:4斤	\N	0	0	1	\N	\N	1	\N	88:斤|89:份|96:件|97:箱|1087:个|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤	1	2020-10-06 15:38:03	2020-10-14 19:23:00	f	f	f
4090	BN1602206696998	长白山野生特级黑山碗耳，黑木耳500g包邮	精品黑山椴木小碗耳 口感爽滑耳片墨黑	http://files.mvccms.cn/Upload/20201009/20201009092714_7512.jpg	http://files.mvccms.cn/Upload/20201009/20201009092646_5675.jpg,http://files.mvccms.cn/Upload/20201009/20201009092655_4424.jpg,http://files.mvccms.cn/Upload/20201009/20201009092705_3893.jpg		1	2071	0	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20201009/20201009092943_6194.jpg" style="height:625px; width:800px" /><img alt="" src="http://files.mvccms.cn/Upload/20201009/20201009092958_8834.jpg" /></p>\n			0	0	1	\N	\N	1	\N		0	2020-10-09 09:30:05	\N	f	f	f
4091	BN1602663437592	【大号元贝】特级大野生干贝瑶柱野生扇贝干货大码500克包邮	深海野生 当季淡干 肉嫩鲜美	http://files.mvccms.cn/Upload/20201014/20201014162119_3952.jpg	http://files.mvccms.cn/Upload/20201014/20201014162035_7169.jpg,http://files.mvccms.cn/Upload/20201014/20201014162051_5629.jpg,http://files.mvccms.cn/Upload/20201014/20201014162107_0172.jpg		1	2062	0	\N	\N	23	f	t	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014162528_7335.jpg" style="height:924px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014162540_2795.jpg" style="height:760px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014162551_9899.jpg" style="height:870px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014162603_5916.jpg" style="height:771px; width:790px" /></p>\n			0	4	2	\N	\N	1	\N		0	2020-10-14 16:26:17	2021-05-25 09:29:38	f	f	f
4092	BN1602684892774	薄皮核桃2020新货，新疆纸皮核桃一级果5斤包邮	皮薄如纸 品质端正 均衡营养	http://files.mvccms.cn/Upload/20201014/20201014221818_8482.jpg	http://files.mvccms.cn/Upload/20201014/20201014221830_9677.jpg,http://files.mvccms.cn/Upload/20201014/20201014221842_4990.jpg,http://files.mvccms.cn/Upload/20201014/20201014221853_6613.jpg		1	2070	1078	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222322_9830.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222337_4989.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222353_1907.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222406_8808.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222418_8165.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222429_2519.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222439_7011.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201014/20201014222450_1174.jpg" /></p>\n	1317.核桃系列:新疆薄皮核桃5斤|1318.核桃系列:阿克苏纸皮核桃5斤	\N	0	0	0	\N	\N	1	\N	1317:新疆薄皮核桃5斤|1318:阿克苏纸皮核桃5斤	1	2020-10-14 22:25:21	2020-11-14 18:25:36	f	f	f
4093	BN1602760419323	南山田舍，山东玫珑蜜网纹蜜瓜软糯香甜单果整箱新鲜包邮	鲜嫩多汁 果香怡人 坏果包赔	http://files.mvccms.cn/Upload/20201015/20201015192105_6401.jpg	http://files.mvccms.cn/Upload/20201015/20201015192115_9543.jpg,http://files.mvccms.cn/Upload/20201015/20201015192125_2324.jpg,http://files.mvccms.cn/Upload/20201015/20201015192139_2279.jpg,http://files.mvccms.cn/Upload/20201015/20201015192154_5042.jpg		1	36	1093	\N	\N	23	f	t	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201015/20201015192526_7664.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201015/20201015192539_2647.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201015/20201015192550_1981.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201015/20201015192601_0143.jpg" /></p>\n	1670.哈密瓜:4斤（2个装）	\N	1	22	6	\N	\N	1	\N	1435:5斤|1436:9斤|1437:10斤|1669:3斤|1670:4斤（2个装）	1	2020-10-15 19:26:19	2021-04-28 21:07:59	f	f	f
4100	BN1603106331875	有机一级淡干海带条200g包邮，十成干泡发高	泡发比高，易泡发	http://files.mvccms.cn/Upload/20201019/20201019192550_1444.jpg	http://files.mvccms.cn/Upload/20201019/20201019192508_2583.jpg,http://files.mvccms.cn/Upload/20201019/20201019192518_6906.jpg,http://files.mvccms.cn/Upload/20201019/20201019192529_2520.jpg		1	2062	1085	\N	\N	0	f	t	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019192905_1840.jpg" style="height:959px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019192918_3374.jpg" style="height:836px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019192927_4712.jpg" style="height:835px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019192936_9854.jpg" style="height:628px; width:790px" /></p>\n	1337.干鲜特产:200g	\N	0	1	2	\N	\N	1	\N	1336:150g|1337:200g|1338:300g|1339:500g|1340:1000g	1	2020-10-19 19:29:58	2021-05-25 09:29:16	f	f	f
4094	BN1602826146508	四川果冻手掰橙，5斤净重整箱全国包邮	甜蜜果冻鲜橙，汁水满口，口口爆汁	http://files.mvccms.cn/Upload/20201016/20201016133019_9056.jpg	http://files.mvccms.cn/Upload/20201016/20201016133121_0940.jpg,http://files.mvccms.cn/Upload/20201016/20201016133132_8102.jpg,http://files.mvccms.cn/Upload/20201016/20201016133143_3480.jpg,http://files.mvccms.cn/Upload/20201016/20201016133152_9015.jpg		2	36	1079	\N	\N	23	f	f	件	<p style="text-align:center"><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016134403_1686.jpg" style="height:882px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016134413_4611.jpg" style="height:1010px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016134422_9166.jpg" style="height:768px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016134438_6173.jpg" style="height:946px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016134448_9766.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016134501_2715.jpg" style="height:1111px; width:750px" /></p>\n	1319.水果:中果5斤|1320.水果:大果5斤|1321.水果:特大果5斤|1322.水果:大果8斤|1323.水果:特大果9斤	\N	1	0	11	\N	\N	1	\N	88:斤|89:份|96:件|97:箱|1087:个|1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤|1319:中果5斤|1320:大果5斤|1321:特大果5斤|1322:大果8斤|1323:特大果9斤	1	2020-10-16 13:46:06	2020-10-29 14:57:46	f	f	f
4095	BN1602830137807	限时抢购，祖母清晨2两纯母蟹10只顺丰包邮，原价：288/1箱，现在仅需238元	阳澄湖大闸蟹	http://files.mvccms.cn/Upload/20201016/20201016144053_4924.jpg	http://files.mvccms.cn/Upload/20201016/20201016144117_8320.jpg,http://files.mvccms.cn/Upload/20201016/20201016144101_3350.jpg,http://files.mvccms.cn/Upload/20201016/20201016144109_7468.jpg		1	2055	0	\N	\N	1025	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016144346_7800.jpg" style="height:1045px; width:1045px" /></p>\n			0	0	0	\N	\N	1	\N		0	2020-10-16 14:43:51	\N	f	f	f
4096	BN1602844811472	四川阿坝特产手撕耗牛肉干500克包邮	手工传承 古法制作 有品质的牦牛肉干	http://files.mvccms.cn/Upload/20201016/20201016184112_0794.jpg	http://files.mvccms.cn/Upload/20201016/20201016184121_8337.jpg,http://files.mvccms.cn/Upload/20201016/20201016184133_2824.jpg,http://files.mvccms.cn/Upload/20201016/20201016184142_4267.jpg		1	2053	1077	\N	\N	23	f	t	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016184817_2614.jpg" style="height:929px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016184827_4809.jpg" style="height:661px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016184942_7330.jpg" style="height:1056px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016185248_4305.jpg" style="height:678px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016185345_3650.jpg" style="height:584px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201016/20201016185403_4927.jpg" style="height:557px; width:750px" /></p>\n	1324.零食系列:五香500g|1325.零食系列:麻辣500g|1326.零食系列:混搭500g	\N	0	3	0	\N	\N	1	\N	1312:1斤|1313:2斤|1314:3斤|1315:4斤|1316:5斤|1324:五香500g|1325:麻辣500g|1326:混搭500g	1	2020-10-16 18:54:45	\N	f	f	f
4097	BN1602902915484	越南进口红肉菠萝蜜6-15斤新鲜当季水果红心波罗蜜整个包邮	精选大果 香甜浓郁~	http://files.mvccms.cn/Upload/20201017/20201017105226_8598.jpg	http://files.mvccms.cn/Upload/20201017/20201017105240_3527.jpg,http://files.mvccms.cn/Upload/20201017/20201017105248_6497.jpg,http://files.mvccms.cn/Upload/20201017/20201017105257_1152.jpg		1	36	1083	\N	\N	23	f	t	个	<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017105841_3644.png" style="height:573px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017105921_6711.jpg" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017105932_1588.jpg" style="height:508px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017105941_9056.jpg" style="height:509px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017105952_1990.jpg" style="height:516px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110002_8712.png" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110014_9843.jpg" style="height:564px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110024_2639.jpg" style="height:562px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110034_6068.jpg" style="height:572px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110052_9081.jpg" style="height:661px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110104_6706.jpg" style="height:480px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110118_6631.png" style="height:606px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017110130_2963.jpg" /></p>\n	1424.波罗蜜:（精品A果体验装）6-8斤（精品大果，实惠体验）|1425.波罗蜜:（精品A果吃货装）8-10斤（吃货分享优选）|1439.波罗蜜:（精品A果家庭装）10-12斤（高性价比，家庭分享装）|1440.波罗蜜:（精品A果特大果）12-14斤（人气爆款，聚会专享装）	\N	1	13	4	\N	\N	1	\N	1398:海南菠萝蜜A果（23-26斤）|1424:（精品A果体验装）6-8斤（精品大果，实惠体验）|1425:（精品A果吃货装）8-10斤（吃货分享优选）|1439:（精品A果家庭装）10-12斤（高性价比，家庭分享装）|1440:（精品A果特大果）12-14斤（人气爆款，聚会专享装）	1	2020-10-17 11:01:40	2021-04-23 00:37:40	f	f	f
4098	BN1602926771803	黑金刚莲雾新鲜一级大果热带美味包邮	清甜爽口 补水神器	http://files.mvccms.cn/Upload/20201017/20201017173224_3236.jpg	http://files.mvccms.cn/Upload/20201017/20201017173142_9507.jpg,http://files.mvccms.cn/Upload/20201017/20201017173156_2061.jpg,http://files.mvccms.cn/Upload/20201017/20201017173206_9019.jpg		1	36	16	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017174230_7118.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017174242_8473.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017174258_3365.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017174311_3634.jpg" /></p>\n	1238.水果:5斤|1258.水果:4斤|1261.水果:3斤	18:3斤|19:越南	1	12	36	\N	\N	1	\N	1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤|1350:1斤|1351:6斤|1352:7斤	1	2020-10-17 17:43:48	2020-12-26 16:04:36	f	f	f
4099	BN1602932777379	四川高原手撕风干牦牛肉干条1斤装五香麻辣真空独立包装，全国包邮	麻辣鲜香，好吃过瘾	http://files.mvccms.cn/Upload/20201017/20201017191228_8043.jpg	http://files.mvccms.cn/Upload/20201017/20201017191257_6051.jpg,http://files.mvccms.cn/Upload/20201017/20201017191240_5510.jpg,http://files.mvccms.cn/Upload/20201017/20201017191315_3386.jpg		1	2053	1080	\N	\N	0	f	t	包	<p style="text-align:center"><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017191707_1780.jpg" style="height:1264px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017191734_4553.jpg" style="height:447px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017191845_1818.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017191858_3674.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017191910_5148.jpg" style="height:540px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017192016_1987.jpg" style="height:639px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017192030_2512.jpg" style="height:561px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201017/20201017192106_8555.jpg" style="height:588px; width:750px" /></p>\n	1324.零食系列:五香500g|1325.零食系列:麻辣500g|1326.零食系列:混搭500g	\N	0	1	0	\N	\N	1	\N	1312:1斤|1313:2斤|1314:3斤|1315:4斤|1316:5斤|1324:五香500g|1325:麻辣500g|1326:混搭500g	1	2020-10-17 19:22:55	2020-10-19 09:05:53	f	f	f
4101	BN1603107778375	干裙带嫩菜，特级海菜，0脂肪无盐免洗螺旋藻韩式海带芽嫩海带苗	出口日韩的品质，每一叶片里都藏着工匠精神	http://files.mvccms.cn/Upload/20201019/20201019194827_1418.jpg	http://files.mvccms.cn/Upload/20201019/20201019194836_3434.jpg,http://files.mvccms.cn/Upload/20201019/20201019194846_1262.jpg,http://files.mvccms.cn/Upload/20201019/20201019194854_6321.jpg		1	2062	1085	\N	\N	23	f	t	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195630_3585.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195728_8567.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195800_5245.jpg" style="height:546px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195823_4998.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195849_9622.jpg" style="height:546px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195911_1619.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019195953_0778.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200016_3889.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200034_6404.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200054_8373.jpg" style="height:546px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200120_1226.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200142_2551.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200206_4620.jpg" style="height:545px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019200250_8434.jpg" style="height:545px; width:790px" /></p>\n	1339.干鲜特产:500g	\N	0	5	2	\N	\N	1	\N	1336:150g|1337:200g|1338:300g|1339:500g|1340:1000g	1	2020-10-19 20:03:05	2021-05-17 10:14:22	f	f	f
4102	BN1603109845962	无添加海苔芝麻碎辅食拌饭料宝宝儿童即食炒紫菜碎	0添加剂、0味精、0色素、0防腐剂、0增味剂	http://files.mvccms.cn/Upload/20201019/20201019202625_5802.jpg	http://files.mvccms.cn/Upload/20201019/20201019202517_2599.jpg,http://files.mvccms.cn/Upload/20201019/20201019202538_7497.jpg,http://files.mvccms.cn/Upload/20201019/20201019202613_9231.jpg		1	2062	1089	\N	\N	0	f	f	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201019/20201019203359_6919.jpg" style="height:509px; width:775px" /></p>\n	1337.海苔芝麻碎:200g|1340.海苔芝麻碎:1000g|1353.海苔芝麻碎:400g	\N	0	0	1	\N	\N	1	\N	1336:150g|1337:200g|1338:300g|1339:500g|1340:1000g|1353:400g	1	2020-10-19 20:34:28	2021-05-17 09:41:53	f	f	f
4103	BN1603156127205	纯手工酥脆肉松海苔卷，紫菜肉松蛋卷网红儿童孕妇零食即食夹心脆，包邮	纯手工制作 松香四溢 新鲜直达	http://files.mvccms.cn/Upload/20201020/20201020091310_5151.jpg	http://files.mvccms.cn/Upload/20201020/20201020091217_3097.jpg,http://files.mvccms.cn/Upload/20201020/20201020091230_1375.jpg,http://files.mvccms.cn/Upload/20201020/20201020091243_4275.jpg,http://files.mvccms.cn/Upload/20201020/20201020091254_1651.jpg		1	2053	1077	\N	\N	23	f	t	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201020/20201020092155_5625.png" style="height:532px; width:752px" /><img alt="" src="http://files.mvccms.cn/Upload/20201020/20201020092245_9953.jpg" style="height:660px; width:750px" /></p>\n	1312.零食系列:1斤|1313.零食系列:2斤|1341.零食系列:250克	\N	0	2	0	\N	\N	1	\N	1312:1斤|1313:2斤|1314:3斤|1315:4斤|1316:5斤|1324:五香500g|1325:麻辣500g|1326:混搭500g|1341:250克	1	2020-10-20 09:24:09	2020-10-24 14:54:20	f	f	f
4104	BN1603242899110	乳山鲜活大生蚝、牡蛎5斤装包邮	男人的加油站 女人的美容院 小孩的补给站	http://files.mvccms.cn/Upload/20201021/20201021091906_1158.jpg	http://files.mvccms.cn/Upload/20201021/20201021092001_0935.jpg,http://files.mvccms.cn/Upload/20201021/20201021091952_3482.jpg,http://files.mvccms.cn/Upload/20201021/20201021092010_8612.jpg		1	2063	1118	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092342_2737.jpg" style="height:1041px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092353_7584.jpg" style="height:298px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092405_6960.jpg" style="height:841px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092416_8372.jpg" style="height:954px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092451_5819.jpg" style="height:288px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092500_5389.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092610_3278.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092624_0762.jpg" style="height:571px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092636_9514.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021092704_7052.jpg" style="height:1243px; width:790px" /></p>\n	1441.生蚝:（2-3两）5斤|1442.生蚝:（3-4两）5斤	\N	0	0	0	\N	\N	1	\N	1441:（2-3两）5斤|1442:（3-4两）5斤	1	2020-10-21 09:27:22	2021-05-17 09:44:11	f	f	f
4105	BN1603265743295	蚂蚁助农，大凉山冰糖心丑苹果，大果5斤包邮	助农产品，新鲜采摘 	http://files.mvccms.cn/Upload/20201021/20201021153714_8030.jpg	http://files.mvccms.cn/Upload/20201021/20201021153723_5071.jpg,http://files.mvccms.cn/Upload/20201021/20201021153732_2664.jpg,http://files.mvccms.cn/Upload/20201021/20201021153740_5282.jpg,http://files.mvccms.cn/Upload/20201021/20201021153749_0796.jpg		1	36	1088	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021153931_2380.jpg" style="height:1223px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021154004_3655.jpg" style="height:1223px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021154041_7892.jpg" style="height:1223px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021154121_3981.jpg" style="height:1223px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021154134_1030.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021154157_9707.jpg" style="height:1223px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201021/20201021154225_6391.jpg" style="height:753px; width:790px" /></p>\n	1345.苹果:5斤	\N	2	0	30	\N	\N	1	\N	1342:2斤|1343:3斤|1344:4斤|1345:5斤|1346:6斤|1347:8斤|1348:9斤|1349:10斤	1	2020-10-21 15:42:35	2020-10-30 11:42:37	f	f	f
4106	BN1603328932009	蚂蚁农庄，青皮无花果3斤空运包邮	凌晨采摘、空运直达、青皮红心	http://files.mvccms.cn/Upload/20201022/20201022091933_9752.jpg	http://files.mvccms.cn/Upload/20201022/20201022091947_9845.jpg,http://files.mvccms.cn/Upload/20201022/20201022091438_0143.jpg,http://files.mvccms.cn/Upload/20201022/20201022091449_0477.jpg		1	36	0	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091722_2146.jpg" style="height:1092px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091731_0285.jpg" style="height:799px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091738_7465.jpg" style="height:800px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091747_0099.jpg" style="height:838px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091755_7428.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091804_8538.jpg" style="height:860px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091822_9588.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022091837_1761.jpg" style="height:668px; width:790px" /></p>\n			0	0	1	\N	\N	1	\N		0	2020-10-22 09:19:51	\N	f	f	f
4107	BN1603370261085	虎皮进口大腰果炭烧盐焗带皮450g/罐，包邮送咖啡	买2盒送咖啡	http://files.mvccms.cn/Upload/20201022/20201022204000_4984.jpg	http://files.mvccms.cn/Upload/20201022/20201022203929_4820.jpg		1	2053	1091	\N	\N	0	f	f	盒	<p style="text-align:center"><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022204543_3130.jpg" style="height:736px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201022/20201022204556_5393.jpg" style="height:722px; width:750px" /></p>\n	1354.腰果:一盒|1358.腰果:二盒（送杯咖啡）|1359.腰果:三盒（送杯咖啡）|1360.腰果:四盒（送杯咖啡）	\N	0	0	0	\N	\N	1	\N	1354:一盒|1358:二盒（送杯咖啡）|1359:三盒（送杯咖啡）|1360:四盒（送杯咖啡）	1	2020-10-22 20:48:22	2020-12-14 09:41:35	f	f	f
4108	BN1603416379951	送礼佳品，海南野生深海马胶鱼，黄金海域捕捞，精选中段空运包邮	野生深海马鲛鱼马鲛鱼胆固醇含量低，富含提高人脑智力的DHA元素和大量蛋白质、氨基酸以及钙、铁、钠等微量元素，还具有提神和防衰老等食疗功效，常食对治疗贫血、早衰、营养不良、产后虚弱和神经衰弱等症有一定辅助疗效	http://files.mvccms.cn/Upload/20201023/20201023093612_4828.jpg	http://files.mvccms.cn/Upload/20201023/20201023095036_1175.jpg,http://files.mvccms.cn/Upload/20201023/20201023093652_8520.jpg,http://files.mvccms.cn/Upload/20201023/20201023093701_4074.jpg,http://files.mvccms.cn/Upload/20201023/20201023093712_4875.jpg,http://files.mvccms.cn/Upload/20201023/20201023095117_3939.jpg		1	2063	1092	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023093955_1539.jpg" style="height:664px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094201_9583.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094029_8848.jpg" style="height:664px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094236_4488.jpg" style="height:664px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094314_7175.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094340_6389.jpg" style="height:664px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094403_8022.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094434_5242.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094506_1525.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094538_5695.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094603_1772.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094627_5990.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094728_8446.jpg" style="height:664px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094759_1875.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094825_8611.jpg" style="height:664px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023094934_6139.jpg" style="height:665px; width:750px" /><img alt="" src="http://files.mvccms.cn/Upload/20201023/20201023095153_1544.jpg" style="height:373px; width:750px" /></p>\n	1364.深海马鲛鱼:5斤|1365.深海马鲛鱼:5斤礼盒	\N	0	3	0	\N	\N	1	\N	1361:2斤|1362:3斤|1363:4斤|1364:5斤|1365:5斤礼盒	1	2020-10-23 09:53:50	2021-05-17 09:43:34	f	f	f
4109	BN1603934302481	南山田舍，吐鲁番火焰山哈密瓜，清脆爽甜7-8斤全国，顺丰空运包邮，现摘现发，坏果包赔。	瓜肉肥厚，清脆爽甜	https://files.nsts.mvccms.cn/Upload/20210518/20210518231318_7678.jpg	https://files.nsts.mvccms.cn/Upload/20210518/20210518231342_8421.jpg,http://files.mvccms.cn/Upload/20201029/20201029092342_4736.jpg,http://files.mvccms.cn/Upload/20201029/20201029092807_7231.jpg,http://files.mvccms.cn/Upload/20201029/20201029092816_7358.jpg		1	36	1093	\N	\N	23	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225325_9212.jpg" style="height:932px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225354_6872.jpg" style="height:961px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225427_2776.jpg" style="height:914px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225500_1627.jpg" style="height:640px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225520_7937.jpg" style="height:670px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225547_6316.jpg" style="height:957px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225620_7308.jpg" style="height:861px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225706_2237.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225719_7478.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225805_0644.jpg" style="height:966px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210518/20210518225847_1404.jpg" style="height:834px; width:750px" /></p>\n	1693.哈密瓜:精品A果2个装（7-8斤）	\N	0	11	0	\N	\N	1	\N	1435:5斤|1436:9斤|1437:10斤|1669:3斤|1670:4斤（2个装）|1693:精品A果2个装（7-8斤）	1	2020-10-29 09:35:58	2021-05-18 23:14:11	t	f	f
4110	BN1603953671838	东北长白山2斤装新鲜人参，现挖现发，顺丰包邮。	新鲜现挖参航空直达 	http://files.mvccms.cn/Upload/20201029/20201029144727_1968.jpg	http://files.mvccms.cn/Upload/20201029/20201029144554_8352.jpg,http://files.mvccms.cn/Upload/20201029/20201029144658_4312.jpg,http://files.mvccms.cn/Upload/20201029/20201029144711_3604.jpg		1	2071	1095	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201029/20201029145002_3927.jpg" style="height:2023px; width:1581px" /></p>\n	1367.人参:2斤	\N	0	0	1	\N	\N	1	\N	1367:2斤|1368:1斤	1	2020-10-29 14:50:59	2020-11-01 09:17:20	f	f	f
4111	BN1604453805352	南山田舍，纯手工现做香辣招牌黄牛肉，好吃过瘾	精选黄牛肉，每天新鲜现做 肉嫩有嚼劲，同城可配送。	http://files.mvccms.cn/Upload/20201104/20201104094202_8294.jpg	http://files.mvccms.cn/Upload/20201104/20201104094152_3160.jpg,http://files.mvccms.cn/Upload/20201104/20201104094037_0039.jpg		1	2053	0	\N	\N	0	f	f	份	<p><img alt="" src="http://files.mvccms.cn/Upload/20201104/20201104094430_3517.jpg" style="height:500px; width:500px" /></p>\n			0	0	0	\N	\N	1	\N		0	2020-11-04 09:46:07	2020-11-04 14:01:57	f	f	t
4112	BN1604469762418	南山田舍，香辣片片藕，下饭小零食。	香辣鲜香 每天现做，同城配送。	http://files.mvccms.cn/Upload/20201104/20201104140821_8715.jpg	http://files.mvccms.cn/Upload/20201104/20201104140834_9713.jpg,http://files.mvccms.cn/Upload/20201104/20201104140842_6295.jpg		1	2053	1096	\N	\N	0	f	f	份	<p><img alt="" src="http://files.mvccms.cn/Upload/20201104/20201104141247_2674.jpg" /></p>\n	1370.手工现做零嘴:家庭装（180g）	\N	0	0	0	\N	\N	1	\N	1369:尝鲜装（160g）|1370:家庭装（180g）|1371:聚会装（220g）|1372:送礼装（500g）	1	2020-11-04 14:12:53	\N	f	f	t
4113	BN1604551137116	南山田舍，骨香鸡爪，香辣休闲网红小零食	优质原材料，独特秘制工艺，每天现做现卖，同城可配送。\n外地，自出邮费。	http://files.mvccms.cn/Upload/20201105/20201105124623_8798.jpg	http://files.mvccms.cn/Upload/20201105/20201105124315_6590.jpg,http://files.mvccms.cn/Upload/20201105/20201105124324_4801.jpg		1	2052	0	\N	\N	0	f	f	份	<p><img alt="" src="http://files.mvccms.cn/Upload/20201105/20201105124552_2872.jpg" style="height:1440px; width:1080px" /></p>\n			0	0	0	\N	\N	1	\N		0	2020-11-05 12:46:25	\N	f	f	t
4114	BN1604554036004	海南椰子，当季新鲜削皮椰子9个装整箱包邮,椰奶椰子鸡	新鲜采摘 天然无添加 孕妇水果 椰汁饱满	http://files.mvccms.cn/Upload/20201105/20201105133037_4759.jpg	http://files.mvccms.cn/Upload/20201105/20201105133045_1928.jpg,http://files.mvccms.cn/Upload/20201105/20201105133051_8612.jpg		1	36	1134	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201105/20201105133351_8737.jpg" style="height:1064px; width:790px" /></p>\n	1645.椰青:2个装|1646.椰青:4个装|1647.椰青:6个装|1648.椰青:9个装	\N	0	7	3	\N	\N	1	\N	1645:2个装|1646:4个装|1647:6个装|1648:9个装	1	2020-11-05 13:34:30	2021-04-23 00:32:53	f	f	f
4115	BN1604916702660	内蒙古特产，正宗手撕烤牛肉，风干牛肉零食熟食真空500g包邮	好牛肉，吃的才放心	http://files.mvccms.cn/Upload/20201109/20201109182134_3983.jpg	http://files.mvccms.cn/Upload/20201109/20201109182151_2571.jpg,http://files.mvccms.cn/Upload/20201109/20201109182205_4585.jpg,http://files.mvccms.cn/Upload/20201109/20201109182230_9614.jpg		1	2053	1097	\N	\N	23	f	t	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201109/20201109183234_3177.jpg" style="height:1029px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201109/20201109183323_3058.jpg" style="height:1389px; width:790px" /></p>\n	1373.干牛肉系列:原味|1374.干牛肉系列:麻辣味|1375.干牛肉系列:香辣味|1376.干牛肉系列:无盐原味|1377.干牛肉系列:孜然味|1378.干牛肉系列:孜然辣	\N	0	0	34	\N	\N	1	\N	1373:原味|1374:麻辣味|1375:香辣味|1376:无盐原味|1377:孜然味|1378:孜然辣	1	2020-11-09 18:36:18	\N	f	f	f
4116	BN1604928994719	内蒙古风干手撕牛肉干休闲小吃儿童零食特产,严选部位,真材实料,肉质精瘦500g包邮	严选部位 真材实料 肉质精瘦	http://files.mvccms.cn/Upload/20201109/20201109214131_4080.jpg	http://files.mvccms.cn/Upload/20201109/20201109214138_7106.jpg,http://files.mvccms.cn/Upload/20201109/20201109214145_9424.jpg,http://files.mvccms.cn/Upload/20201109/20201109214157_5730.jpg		1	2052	1097	\N	\N	0	f	t	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201109/20201109215142_6905.jpg" style="height:1407px; width:750px" /></p>\n	1373.干牛肉系列:原味|1375.干牛肉系列:香辣味|1376.干牛肉系列:无盐原味|1377.干牛肉系列:孜然味	\N	1	0	7	\N	\N	1	\N	1373:原味|1374:麻辣味|1375:香辣味|1376:无盐原味|1377:孜然味|1378:孜然辣	1	2020-11-09 21:52:46	\N	f	f	f
4117	BN1605230444240	秭归九月红脐橙，香甜无渣薄皮自然成熟，鲜橙精品果包邮	果园现摘现发，顺丰、京东包邮。	http://files.mvccms.cn/Upload/20201113/20201113093156_5869.jpg	http://files.mvccms.cn/Upload/20201113/20201113093206_7107.jpg,http://files.mvccms.cn/Upload/20201113/20201113093219_0906.jpg,http://files.mvccms.cn/Upload/20201113/20201113093231_5085.jpg,http://files.mvccms.cn/Upload/20201113/20201113093240_1470.jpg		1	36	1098	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113094104_1053.jpg" style="height:906px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113094114_5661.jpg" style="height:1074px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113094125_8038.jpg" style="height:943px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113094136_5503.jpg" style="height:1130px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113094149_0998.jpg" style="height:1132px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113094200_1418.jpg" style="height:1330px; width:790px" /></p>\n	1379.精品橙子:中果5斤装|1380.精品橙子:中果9斤装|1381.精品橙子:精品大果5斤装|1382.精品橙子:精品大果9斤装	\N	0	0	3	\N	\N	1	\N	1379:中果5斤装|1380:中果9斤装|1381:精品大果5斤装|1382:精品大果9斤装	1	2020-11-13 09:43:05	2020-11-29 09:29:04	f	f	f
4118	BN1605234987300	树上熟海南金煌芒，香甜多汁，精品A级10斤特大芒果，全国包邮	皮薄肉厚 爆甜多汁，坏果包赔	http://files.mvccms.cn/Upload/20201113/20201113103956_4506.jpg	http://files.mvccms.cn/Upload/20201113/20201113104004_5035.jpg,http://files.mvccms.cn/Upload/20201113/20201113104030_1875.jpg		1	36	1106	\N	\N	0	f	t	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104457_8180.jpg" style="height:1085px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104511_3973.jpg" style="height:1074px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104525_9435.jpg" style="height:1064px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104539_5246.jpg" style="height:1124px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104550_7458.jpg" style="height:1345px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104607_0366.jpg" style="height:1082px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104639_3659.jpg" style="height:769px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113104715_8945.jpg" style="height:656px; width:790px" /></p>\n	1397.芒果:（精品A级果）10斤|1404.芒果:（精品中果）10斤	\N	0	32	18	\N	\N	1	\N	1396:（精品A级果）5斤|1397:（精品A级果）10斤|1404:（精品中果）10斤	1	2020-11-13 10:48:15	2021-05-14 10:48:13	t	f	f
4119	BN1605235847961	海南青皮澳芒，爆甜多汁，10斤A果包邮	海南青皮澳芒，皮薄肉厚多汁	http://files.mvccms.cn/Upload/20201113/20201113110351_0910.jpg	http://files.mvccms.cn/Upload/20201113/20201113110337_9622.jpg,http://files.mvccms.cn/Upload/20201113/20201113110240_2396.jpg		1	36	1099	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113110550_0234.jpg" style="height:769px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201113/20201113110603_7685.jpg" style="height:656px; width:790px" /></p>\n	1387.芒果:精品A果10	\N	0	0	0	\N	\N	1	\N	1383:精品A果5斤|1384:精品A果6斤|1385:精品A果8斤|1386:精品A果9斤|1387:精品A果10	1	2020-11-13 11:06:28	2020-11-15 18:56:04	f	f	f
4120	BN1605316838277	梅州客家盐焗鸡650g，正宗客家特产整只真空包邮	正宗散养鸡，吃的放心。	http://files.mvccms.cn/Upload/20201114/20201114093438_6178.jpg	http://files.mvccms.cn/Upload/20201114/20201114093448_6765.jpg,http://files.mvccms.cn/Upload/20201114/20201114093514_9300.jpg,http://files.mvccms.cn/Upload/20201114/20201114093538_1750.jpg		1	2053	1100	\N	\N	23	f	f	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093730_4483.jpg" style="height:1072px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093742_8438.jpg" style="height:934px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093808_1941.jpg" style="height:513px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093831_1671.jpg" style="height:1112px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093901_7148.jpg" style="height:854px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093929_1211.jpg" style="height:1001px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114093937_9091.jpg" style="height:827px; width:790px" /></p>\n	1389.盐焗鸡:（掌柜推荐）盐焗鸡650克	\N	0	0	0	\N	\N	1	\N	1389:（掌柜推荐）盐焗鸡650克	1	2020-11-14 09:40:15	\N	f	f	f
4121	BN1605348364481	南山田舍，湘西特产，纯手工无添加红薯粉丝包邮	纯手工制作，无任何添加。	http://files.mvccms.cn/Upload/20201114/20201114181916_8917.jpg	http://files.mvccms.cn/Upload/20201114/20201114181725_6441.jpg,http://files.mvccms.cn/Upload/20201114/20201114181739_7690.jpg,http://files.mvccms.cn/Upload/20201114/20201114181753_2618.jpg		1	2061	1101	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201114/20201114181929_7295.jpg" style="height:570px; width:790px" /></p>\n	1390.红薯粉:2斤装|1392.红薯粉:4斤装	\N	0	0	2	\N	\N	1	\N	1390:2斤装|1391:3斤装|1392:4斤装|1393:5斤装	1	2020-11-14 18:20:16	2020-11-15 13:38:01	f	f	f
4122	BN1605661834377	乡里货，农家奶油小芋头，新鲜出土，顺丰包邮	现挖现发，软糯可口。	http://files.mvccms.cn/Upload/20201118/20201118091703_0053.jpg	http://files.mvccms.cn/Upload/20201118/20201118091715_6844.jpg,http://files.mvccms.cn/Upload/20201118/20201118091740_5832.jpg,http://files.mvccms.cn/Upload/20201118/20201118091748_3399.jpg		1	2061	1102	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118091949_5108.jpg" style="height:1162px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092017_0050.jpg" style="height:1262px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092041_9586.jpg" style="height:1262px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092107_6367.jpg" style="height:1262px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092130_5298.jpg" style="height:1178px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092233_5800.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092301_9758.jpg" style="height:975px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201118/20201118092246_2743.jpg" /></p>\n	1394.芋头:5斤|1395.芋头:10斤	\N	0	0	3	\N	\N	1	\N	1394:5斤|1395:10斤	1	2020-11-18 09:23:21	\N	f	f	f
4123	BN1605835730841	大青芒，香甜多汁入口即化，包邮坏果包赔	香甜多汁入口即化	http://files.mvccms.cn/Upload/20201120/20201120093239_1078.jpg	http://files.mvccms.cn/Upload/20201120/20201120093249_0412.jpg,http://files.mvccms.cn/Upload/20201120/20201120093257_7994.jpg,http://files.mvccms.cn/Upload/20201120/20201120093306_6188.jpg		1	36	1103	\N	\N	0	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223438_4195.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223452_0472.jpg" style="height:291px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223507_6921.jpg" style="height:700px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223518_6901.jpg" style="height:311px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223624_3847.jpg" style="height:935px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223648_6098.jpg" style="height:939px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223704_2801.jpg" style="height:937px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223805_6297.jpg" style="height:938px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223821_4271.jpg" style="height:320px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223905_9474.jpg" style="height:601px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223930_2317.jpg" style="height:661px; width:790px" /></p>\n\n<p>\\\\<img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221223951_3928.jpg" style="height:535px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221224022_5506.jpg" style="height:437px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221224035_3535.jpg" style="height:916px; width:790px" /></p>\n	1396.芒果:（精品A级果）5斤|1625.芒果:（精品A级果）8斤|1626.芒果:（精品A级果）9斤	\N	0	25	23	\N	\N	1	\N	1396:（精品A级果）5斤|1625:（精品A级果）8斤|1626:（精品A级果）9斤	1	2020-11-20 09:39:03	2021-05-15 14:25:41	f	f	f
4124	BN1605956385364	海南黄肉老树波罗蜜，爆香脆甜满屋飘香20-30斤包邮	原产地直发 新鲜到家 爆香脆甜 满屋飘香	http://files.mvccms.cn/Upload/20201121/20201121190544_2914.jpg	http://files.mvccms.cn/Upload/20201121/20201121190555_8267.jpg,http://files.mvccms.cn/Upload/20201121/20201121190707_2247.jpg,http://files.mvccms.cn/Upload/20201121/20201121190715_8647.jpg		1	36	1105	\N	\N	23	f	t	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121190945_6855.jpg" style="height:963px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191008_7949.jpg" style="height:1080px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191057_1552.jpg" style="height:1258px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191134_3970.jpg" style="height:1120px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191336_3829.jpg" style="height:1048px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191402_7729.jpg" style="height:1092px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191436_2991.jpg" style="height:1316px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201121/20201121191537_2507.jpg" style="height:1340px; width:790px" /></p>\n	1401.海南波罗蜜:（21-25斤）爆款推荐，店长力荐，出肉率高|1402.海南波罗蜜:（26-30斤）特大果，肉厚饱满|1403.海南波罗蜜:（31-35斤）超级特大果，出肉率更高|1643.海南波罗蜜:（10-15斤）品质小果，一人吃过瘾|1644.海南波罗蜜:（15-20斤）严选品质，家庭分享装	\N	0	10	16	\N	\N	1	\N	1401:（21-25斤）爆款推荐，店长力荐，出肉率高|1402:（26-30斤）特大果，肉厚饱满|1403:（31-35斤）超级特大果，出肉率更高|1643:（10-15斤）品质小果，一人吃过瘾|1644:（15-20斤）严选品质，家庭分享装	1	2020-11-21 19:16:48	2021-05-13 22:16:50	f	f	f
4125	BN1606220685145	海南现摘小台农芒果10斤包邮，香甜多汁	果肉软糯 香甜浓郁\n净果10斤，海南直发\n注：普通地区汇通快递包邮，\n     北京加9元发空运，\n     辽宁,吉林,黑龙江,甘肃,青海,宁夏加16元保温箱内加保温袋空运发货。	http://files.mvccms.cn/Upload/20201124/20201124203541_6117.jpg	http://files.mvccms.cn/Upload/20201124/20201124203653_9979.jpg,http://files.mvccms.cn/Upload/20201124/20201124203723_6869.jpg,http://files.mvccms.cn/Upload/20201124/20201124203848_6301.jpg		1	36	1103	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124202831_5516.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124202857_4297.jpg" style="height:612px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124202916_4523.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124202938_3539.jpg" style="height:612px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124202954_6642.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203010_5256.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203030_6502.jpg" style="height:612px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203132_5178.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203150_0186.jpg" style="height:612px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203208_8539.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203226_1917.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203250_1941.jpg" style="height:612px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203308_7091.jpg" style="height:613px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203331_6783.jpg" style="height:612px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201124/20201124203355_4731.jpg" style="height:613px; width:790px" /></p>\n	1397.芒果:（精品A级果）10斤	\N	0	0	0	\N	\N	1	\N	1396:（精品A级果）5斤|1397:（精品A级果）10斤|1404:（精品中果）10斤	1	2020-11-24 20:40:14	\N	f	f	f
4126	BN1606350737296	农家自种富硒黑小米，特级有机小米5斤装，宝宝月子米，顺丰包邮	月子米，宝宝米，营养丰富	http://files.mvccms.cn/Upload/20201126/20201126084012_2084.jpg	http://files.mvccms.cn/Upload/20201126/20201126084022_2096.jpg		1	2061	1109	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126083817_8970.jpg" style="height:690px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126083836_0596.jpg" style="height:990px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126083849_0175.jpg" style="height:950px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126083907_8049.jpg" style="height:772px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126083920_5987.jpg" style="height:889px; width:790px" /></p>\n	1414.小米:5斤装	\N	0	0	0	\N	\N	1	\N	1413:3斤装|1414:5斤装	1	2020-11-26 08:43:20	2020-11-26 08:56:39	f	f	f
4127	BN1606389721865	扇贝肉，味道鲜甜肥腴好吃到停不下嘴，2斤装包邮	新疆西藏海南云南不发货	http://files.mvccms.cn/Upload/20201126/20201126194054_2975.jpg	http://files.mvccms.cn/Upload/20201126/20201126192718_7051.jpg,http://files.mvccms.cn/Upload/20201126/20201126192840_3466.jpg,http://files.mvccms.cn/Upload/20201126/20201126192849_4466.jpg,http://files.mvccms.cn/Upload/20201126/20201126192856_7796.jpg		1	2063	1110	\N	\N	0	f	f	包	<p><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193246_7837.jpg" style="height:550px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193257_3184.jpg" style="height:536px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193321_9982.jpg" style="height:823px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193348_9094.jpg" style="height:785px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193431_7935.jpg" style="height:715px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193458_1973.jpg" style="height:701px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193517_3068.jpg" style="height:701px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193538_3968.jpg" style="height:702px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193559_2118.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193620_3244.jpg" style="height:791px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201126/20201126193644_7254.jpg" style="height:966px; width:790px" /></p>\n	1417.扇贝肉:二袋（1000克）	\N	0	0	1	\N	\N	1	\N	1416:一袋（500克）|1417:二袋（1000克）	1	2020-11-26 19:37:30	2021-05-17 09:45:32	f	f	f
4128	BN1606456837384	广西武鸣皇帝柑，纯甜无渣，现摘新鲜包邮	似橙似橘 甜蜜多汁 坏果包赔	http://files.mvccms.cn/Upload/20201127/20201127141353_4439.jpg	http://files.mvccms.cn/Upload/20201127/20201127140941_5643.jpg,http://files.mvccms.cn/Upload/20201127/20201127141529_9153.jpg,http://files.mvccms.cn/Upload/20201127/20201127142041_9761.jpg		1	36	1112	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140556_5556.jpg" style="height:1343px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140642_9187.jpg" style="height:1219px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140717_6479.jpg" style="height:1024px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140742_1372.jpg" style="height:1147px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140801_3955.jpg" style="height:1155px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140822_2490.jpg" style="height:1142px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140842_1925.jpg" style="height:1154px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140901_9561.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201127/20201127140922_9142.jpg" style="height:700px; width:790px" /></p>\n	1418.皇帝柑:精品大果5斤|1419.皇帝柑:精品大果9斤	\N	1	0	2	\N	\N	1	\N	1418:精品大果5斤|1419:精品大果9斤	1	2020-11-27 14:21:10	\N	f	f	f
4129	BN1606533203649	南山田舍，海南甜蜜蜜16号凤梨，香甜可口，全国包邮	香甜 无眼 产地直发	http://files.mvccms.cn/Upload/20201128/20201128111833_7436.jpg	http://files.mvccms.cn/Upload/20201128/20201128111855_1338.jpg		1	36	1113	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128112332_2886.jpg" style="height:1968px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128112435_6448.jpg" style="height:1890px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128112537_0936.jpg" style="height:1558px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128112620_9894.jpg" style="height:1367px; width:750px" /></p>\n	1463.凤梨:5斤（2个精品大果）|1464.凤梨:10斤（3-4精品个大果）	\N	0	0	0	\N	\N	1	\N	1463:5斤（2个精品大果）|1464:10斤（3-4精品个大果）	1	2020-11-28 11:27:18	2020-12-17 19:34:01	f	f	f
4130	BN1606537700197	黑美人西瓜，当季新鲜红甜沙瓤薄皮一个包邮	香甜多汁黑里俏 坏果包赔	http://files.mvccms.cn/Upload/20201129/20201129210138_1324.jpg	http://files.mvccms.cn/Upload/20201129/20201129205925_7686.jpg,http://files.mvccms.cn/Upload/20201128/20201128123322_9599.jpg,http://files.mvccms.cn/Upload/20201128/20201128123425_1549.jpg		1	36	1114	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128123741_1275.jpg" style="height:1003px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128123809_9015.jpg" style="height:1043px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128123855_5247.jpg" style="height:754px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128123913_9583.jpg" style="height:736px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128123932_0172.jpg" style="height:775px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128123957_3136.jpg" style="height:989px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201128/20201128124218_0268.jpg" style="height:2095px; width:790px" /></p>\n	1422.西瓜:一个装（4.5-5.5斤）|1423.西瓜:二个装（8-11斤）	\N	0	0	3	\N	\N	1	\N	1422:一个装（4.5-5.5斤）|1423:二个装（8-11斤）	1	2020-11-28 12:42:30	2020-12-22 15:41:09	f	f	f
4131	BN1606640041951	南山田舍，富平流心吊柿，自然上霜香甜软糯沙口留香3斤包邮	自然上霜香甜软糯沙口留香	http://files.mvccms.cn/Upload/20201129/20201129165654_8233.jpg	http://files.mvccms.cn/Upload/20201129/20201129165413_4799.jpg,http://files.mvccms.cn/Upload/20201129/20201129165515_4729.jpg,http://files.mvccms.cn/Upload/20201129/20201129165703_8870.jpg		1	36	1115	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129170541_6687.jpg" style="height:1024px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129170557_8882.jpg" style="height:1131px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129170612_3062.jpg" style="height:1227px; width:790px" /></p>\n	1427.吊柿:精品A果3斤|1428.吊柿:精品A果5斤	\N	0	0	2	\N	\N	1	\N	1427:精品A果3斤|1428:精品A果5斤	1	2020-11-29 17:06:38	2021-01-20 15:18:58	f	f	f
4132	BN1606650989942	南山田舍，赣南脐橙香甜多汁皮薄大果，包邮	江西高山脐橙 香甜多汁 皮薄 大果	http://files.mvccms.cn/Upload/20201129/20201129200321_0632.jpg	http://files.mvccms.cn/Upload/20201129/20201129200410_2422.jpg,http://files.mvccms.cn/Upload/20201129/20201129200328_8617.jpg,http://files.mvccms.cn/Upload/20201129/20201129200340_9985.jpg		1	36	1116	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200639_4723.jpg" style="height:1209px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200705_9431.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200726_0247.jpg" style="height:1032px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200747_0048.jpg" style="height:896px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200804_5906.jpg" style="height:860px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200827_0262.jpg" style="height:772px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200846_8308.jpg" style="height:1418px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201129/20201129200909_7279.jpg" style="height:1214px; width:790px" /></p>\n	1429.脐橙:精品礼盒10斤|1430.脐橙:精品礼盒20斤|1431.脐橙:（80-95）5斤|1432.脐橙:（80-95）10斤|1433.脐橙:（70-80）5斤|1434.脐橙:（70-80）10斤	\N	0	0	0	\N	\N	1	\N	1429:精品礼盒10斤|1430:精品礼盒20斤|1431:（80-95）5斤|1432:（80-95）10斤|1433:（70-80）5斤|1434:（70-80）10斤	1	2020-11-29 20:09:40	2020-11-29 20:16:15	f	f	f
4133	BN1607066592715	南山田舍，爆甜台湾牛奶凤梨释迦5斤大果当季水果包邮	果型奇特，果肉爆甜，精品大果	http://files.mvccms.cn/Upload/20201204/20201204152549_3634.jpg	http://files.mvccms.cn/Upload/20201204/20201204152558_9638.jpg,http://files.mvccms.cn/Upload/20201204/20201204152656_9479.jpg		1	36	1117	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204152840_0969.jpg" style="height:649px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204152856_1502.jpg" style="height:384px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204152915_1561.jpg" style="height:720px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204152940_0239.jpg" style="height:797px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204153002_6291.jpg" style="height:393px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204153020_6559.jpg" style="height:877px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204153041_7424.jpg" style="height:532px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204153100_2289.jpg" style="height:976px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204153118_8584.jpg" style="height:834px; width:821px" /><img alt="" src="http://files.mvccms.cn/Upload/20201204/20201204153138_2564.jpg" style="height:546px; width:821px" /></p>\n	1438.释迦果:精品果5斤（4-6个）	\N	0	6	2	\N	\N	1	\N	1438:精品果5斤（4-6个）	1	2020-12-04 15:32:04	2021-02-26 21:53:01	f	f	f
4144	BN1613912840106	南山田舍，红毛丹现摘新鲜包邮，果肉晶莹，水润鲜甜	个大饱满，果肉晶莹，水润鲜甜	https://files.nsts.mvccms.cn/Upload/20210221/20210221211344_3747.jpg	https://files.nsts.mvccms.cn/Upload/20210221/20210221211355_6831.jpg,https://files.nsts.mvccms.cn/Upload/20210221/20210221211500_6389.jpg,https://files.nsts.mvccms.cn/Upload/20210221/20210221211532_8554.jpg		1	36	1131	\N	\N	23	f	f	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221211854_6032.jpg" style="height:828px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221211928_9391.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221211954_5355.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212038_4525.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212112_2418.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212139_7242.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212206_3866.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212234_6680.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212259_2231.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212337_8702.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212406_8377.jpg" style="height:800px; width:750px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212515_6891.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212552_3787.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221212639_3563.jpg" /></p>\n	1622.红毛丹:1500g|1623.红毛丹:2000g|1624.红毛丹:2500g	\N	0	0	0	\N	\N	1	\N	1622:1500g|1623:2000g|1624:2500g	1	2021-02-21 21:26:55	\N	f	f	f
4134	BN1607994546432	老树长柄猫山王榴莲，不泡药水自然熟一级果整个包邮	精选A果，软糯香甜，不泡药水，自然成熟	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	http://files.mvccms.cn/Upload/20201215/20201215091327_7913.jpg,http://files.mvccms.cn/Upload/20201215/20201215091336_2130.jpg,http://files.mvccms.cn/Upload/20201215/20201215091346_3873.jpg,http://files.mvccms.cn/Upload/20201215/20201215092113_1303.jpg		1	36	1057	\N	\N	23	f	f	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210427/20210427210601_3280.jpg" /></p>\n	1664.榴莲:2-3斤（1个装）|1665.榴莲:3-4斤（1个装）|1666.榴莲:5-6斤（1-2个装）|1667.榴莲:6-7斤（1-2个装）|1668.榴莲:4-5斤（1-2个装）	\N	0	6	2	\N	\N	1	\N	1443:金枕一个装3-4斤（A级精品）|1444:金枕一个装4-5斤（A级精品，店长力荐）|1445:金枕一个装5-6斤（A级精品，店长力荐）|1446:金枕1-2个装6-7斤（A级精品，吃货专享）|1447:金枕2个装7-8斤（A级精品，人气爆款）|1448:金枕2个装8-9斤（A级精品，过瘾必选）|1449:金枕2个装9-10斤（A级精品，送礼推荐）|1450:金枕2个装10-11斤（A级精品，土豪装）|1451:干尧一个装3-4斤（A级精品）|1452:干尧一个装4-5斤（A级精品，店长力荐）|1453:干尧一个装5-6斤（A级精品，店长力荐）|1454:干尧1-2个装6-7斤（A级精品，吃货专享）|1455:干尧2个装7-8斤（A级精品，人气爆款）|1456:干尧2个装8-9斤（A级精品，过瘾必选）|1457:干尧2个装9-10斤（A级精品，送礼推荐）|1458:干尧2个装10-11斤（A级精品，土豪装）|1638:正宗马来西亚猫山王（鲜果）|1664:2-3斤（1个装）|1665:3-4斤（1个装）|1666:5-6斤（1-2个装）|1667:6-7斤（1-2个装）|1668:4-5斤（1-2个装）	1	2020-12-15 09:23:46	2021-04-28 20:34:30	f	f	f
4135	BN1608172600858	南山田舍，A级青皮翡翠柚，清新香甜，多汁美味，一个包邮	清新香甜，多汁美味，原产地直发	http://files.mvccms.cn/Upload/20201217/20201217104116_7148.jpg	http://files.mvccms.cn/Upload/20201217/20201217104206_7936.jpg,http://files.mvccms.cn/Upload/20201217/20201217105238_9748.jpg,http://files.mvccms.cn/Upload/20201217/20201217105251_8403.jpg		1	36	1119	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217104731_4956.jpg" style="height:858px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217104740_4687.jpg" style="height:753px; width:790px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217104914_3529.jpg" style="height:873px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217104947_5354.jpg" style="height:662px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217105102_3911.jpg" style="height:784px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217105135_5878.jpg" style="height:645px; width:750px" /></p>\n\n<p><img alt="" src="http://files.mvccms.cn/Upload/20201217/20201217105200_0986.jpg" style="height:939px; width:750px" /></p>\n	1459.柚子:一个装（2-3斤）|1460.柚子:二个装|1461.柚子:三个装|1462.柚子:四个装	\N	0	0	0	\N	\N	1	\N	1459:一个装（2-3斤）|1460:二个装|1461:三个装|1462:四个装	1	2020-12-17 10:53:26	2020-12-17 10:58:49	f	f	f
4136	BN1608772414639	正宗广西武鸣沃柑精品A级果，皮薄汁多，纯甜好吃不上火，包邮	皮薄汁多甜不上火	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	http://files.mvccms.cn/Upload/20201224/20201224092308_2269.jpg,http://files.mvccms.cn/Upload/20201224/20201224092046_4594.jpg,http://files.mvccms.cn/Upload/20201224/20201224092156_9045.jpg,http://files.mvccms.cn/Upload/20201224/20201224092232_1749.jpg		1	36	1120	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094115_3758.jpg" style="height:325px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094134_0424.jpg" style="height:666px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094152_4572.jpg" style="height:332px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094209_5249.jpg" style="height:718px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094228_5647.jpg" style="height:680px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094247_0916.jpg" style="height:699px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094304_3804.jpg" style="height:736px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094327_3950.jpg" style="height:351px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20201224/20201224094352_7628.jpg" style="height:410px; width:790px" /></p>\n	1611.沃柑:（尝鲜装精品中果）5斤|1612.沃柑:（超值装精品中果）9斤|1613.沃柑:（人气爆款精品大果）5斤|1614.沃柑:（人气爆款精品大果）9斤|1615.沃柑:（人气爆款礼盒装）8斤	\N	0	0	2	\N	\N	1	\N	1611:（尝鲜装精品中果）5斤|1612:（超值装精品中果）9斤|1613:（人气爆款精品大果）5斤|1614:（人气爆款精品大果）9斤|1615:（人气爆款礼盒装）8斤	1	2020-12-24 09:27:42	2021-01-22 10:22:31	f	f	f
4137	BN1609751166100	南山田舍，自然熟春见耙耙柑，肉质细嫩一口爆汁，整箱包邮	肉质细嫩 一口爆汁，冻坏不售后	http://files.mvccms.cn/Upload/20210104/20210104171912_2601.jpg	http://files.mvccms.cn/Upload/20210104/20210104171744_2341.jpg,http://files.mvccms.cn/Upload/20210104/20210104171855_0606.jpg,http://files.mvccms.cn/Upload/20210104/20210104172002_8679.jpg		1	36	1121	\N	\N	23	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172425_8853.jpg" style="height:956px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172447_0544.jpg" style="height:270px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172516_3698.jpg" style="height:660px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172538_9811.jpg" style="height:279px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172556_5389.jpg" style="height:718px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172619_1561.jpg" style="height:699px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172636_9841.jpg" style="height:701px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172653_6844.jpg" style="height:740px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172712_8138.jpg" style="height:288px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172732_6325.jpg" style="height:666px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172754_4282.jpg" style="height:744px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172832_7461.jpg" style="height:739px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172857_9516.jpg" style="height:234px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104172922_3695.jpg" style="height:809px; width:790px" /></p>\n	1468.耙耙柑:（精品中果）5斤装|1469.耙耙柑:（精品大果）5斤装|1470.耙耙柑:（精品中果）8斤装|1471.耙耙柑:（精品大果）8斤装	\N	0	0	0	\N	\N	1	\N	1468:（精品中果）5斤装|1469:（精品大果）5斤装|1470:（精品中果）8斤装|1471:（精品大果）8斤装	1	2021-01-04 17:30:29	\N	f	f	f
4138	BN1609765616014	农家自制柴火烟熏腊肉，五花腊肉，地道特色风味腊味传承，包邮	地道特色风味，腊味传承，老工艺，老味道	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	http://files.mvccms.cn/Upload/20210104/20210104211017_4012.jpg,http://files.mvccms.cn/Upload/20210104/20210104211149_2676.jpg,http://files.mvccms.cn/Upload/20210104/20210104211202_8089.jpg,http://files.mvccms.cn/Upload/20210104/20210104211214_1232.jpg		1	2070	1122	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20210104/20210104212502_1318.jpg" style="height:1375px; width:790px" /></p>\n	1472.腊肉:（试吃装）200g|1549.腊肉:腊五花肉（肥瘦适中）500克|1550.腊肉:腊五花肉（肥瘦适中）750克|1551.腊肉:腊五花肉（肥瘦适中）1500克|1552.腊肉:腊五花肉（瘦肉偏多）500克|1553.腊肉:腊五花肉（瘦肉偏多）750克|1554.腊肉:腊五花肉（瘦肉偏多）1500克|1555.腊肉:腊五花肉（很肥冲量中）500克|1556.腊肉:腊五花肉（很肥冲量中）750克|1557.腊肉:腊五花肉（很肥冲量中）1500克	\N	0	3	9	\N	\N	1	\N	1472:（试吃装）200g|1549:腊五花肉（肥瘦适中）500克|1550:腊五花肉（肥瘦适中）750克|1551:腊五花肉（肥瘦适中）1500克|1552:腊五花肉（瘦肉偏多）500克|1553:腊五花肉（瘦肉偏多）750克|1554:腊五花肉（瘦肉偏多）1500克|1555:腊五花肉（很肥冲量中）500克|1556:腊五花肉（很肥冲量中）750克|1557:腊五花肉（很肥冲量中）1500克|1558:后腿腊肉（肥瘦适中）500克|1559:后腿腊肉（肥瘦适中）750克|1560:后腿腊肉（肥瘦适中）1500克|1561:后腿腊肉（瘦肉偏多）500克|1562:后腿腊肉（瘦肉偏多）750克|1563:后腿腊肉（瘦肉偏多）1500克|1564:瘦肉干巴（几乎全瘦）500克|1565:瘦肉干巴（几乎全瘦）750克|1566:瘦肉干巴（几乎全瘦）1500克	1	2021-01-04 21:34:08	2021-05-14 10:21:51	f	f	f
4139	BN1609830918909	农家自制柴火烟熏腊肠，麻辣五香广味香肠，地道特色风味腊味传承，包邮	传统烟熏，风味独特	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	http://files.mvccms.cn/Upload/20210105/20210105151547_8279.jpg,http://files.mvccms.cn/Upload/20210105/20210105151556_7263.jpg		1	2070	1128	\N	\N	0	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20210105/20210105153023_2407.jpg" style="height:1120px; width:790px" /></p>\n	1580.香肠:试吃装（200g）|1581.香肠:麻辣香肠（肥瘦对半）500g|1582.香肠:麻辣香肠（肥瘦对半）1500g|1583.香肠:麻辣香肠（7分瘦）500g|1584.香肠:麻辣香肠（7分瘦）1500g|1585.香肠:麻辣香肠（8分瘦）500g|1586.香肠:麻辣香肠（8分瘦）1500g|1587.香肠:芝麻香肠（微微辣）500g|1588.香肠:芝麻香肠（微微辣）1500g|1589.香肠:五香腊肠（没有辣）500g|1590.香肠:五香腊肠（没有辣）1500g|1591.香肠:广式香肠（咸甜味）500g|1592.香肠:广式香肠（咸甜味）1500g|1593.香肠:乡猪麻辣香肠（纯乡里瘦肉）500g|1594.香肠:乡猪麻辣香肠（纯乡里瘦肉）1500g	\N	0	5	4	\N	\N	1	\N	1580:试吃装（200g）|1581:麻辣香肠（肥瘦对半）500g|1582:麻辣香肠（肥瘦对半）1500g|1583:麻辣香肠（7分瘦）500g|1584:麻辣香肠（7分瘦）1500g|1585:麻辣香肠（8分瘦）500g|1586:麻辣香肠（8分瘦）1500g|1587:芝麻香肠（微微辣）500g|1588:芝麻香肠（微微辣）1500g|1589:五香腊肠（没有辣）500g|1590:五香腊肠（没有辣）1500g|1591:广式香肠（咸甜味）500g|1592:广式香肠（咸甜味）1500g|1593:乡猪麻辣香肠（纯乡里瘦肉）500g|1594:乡猪麻辣香肠（纯乡里瘦肉）1500g	1	2021-01-05 15:39:31	2021-05-14 10:22:07	f	f	f
4140	BN1609893832550	乡里腊肉，农家自制柴火烟熏腊肉，正宗乡里肉，地道特色风味腊味传承，包邮	柴火烟熏味香浓，乡里特色腊肉	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	http://files.mvccms.cn/Upload/20210106/20210106084929_3706.jpg,http://files.mvccms.cn/Upload/20210106/20210106085224_7073.jpg		1	2070	1127	\N	\N	23	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20210106/20210106090352_2033.jpg" style="height:954px; width:675px" /></p>\n	1493.乡里腊肉:五花腊肉（肥瘦适中）750g|1495.乡里腊肉:五花腊肉（整块偏瘦）750g|1497.乡里腊肉:腊后腿肉（整块偏瘦）750g|1595.乡里腊肉:五花腊肉（肥瘦适中）1000g|1596.乡里腊肉:五花腊肉（整块偏瘦）1000g|1597.乡里腊肉:腊后腿肉（整块偏瘦）1000g	\N	0	4	3	\N	\N	1	\N	1493:五花腊肉（肥瘦适中）750g|1495:五花腊肉（整块偏瘦）750g|1497:腊后腿肉（整块偏瘦）750g|1595:五花腊肉（肥瘦适中）1000g|1596:五花腊肉（整块偏瘦）1000g|1597:腊后腿肉（整块偏瘦）1000g	1	2021-01-06 09:04:40	2021-05-14 10:22:25	f	f	f
4141	BN1609895270866	腊猪排骨，农家自制柴火烟熏，正宗乡里肉，地道特色风味腊味传承，包邮	烟熏农家自制腊味	http://files.mvccms.cn/Upload/20210106/20210106091101_3537.jpg	http://files.mvccms.cn/Upload/20210106/20210106091053_4826.jpg,http://files.mvccms.cn/Upload/20210106/20210106091123_3640.jpg,http://files.mvccms.cn/Upload/20210106/20210106091217_0236.jpg,http://files.mvccms.cn/Upload/20210106/20210106091314_3215.jpg		1	2070	1124	\N	\N	0	f	f	斤	<p><img alt="" src="http://files.mvccms.cn/Upload/20210106/20210106092609_8170.jpg" style="height:800px; width:800px" /></p>\n	1598.腊猪排:烟熏腊排（肉少多骨）500g|1599.腊猪排:烟熏腊排（肉少多骨）1500g|1600.腊猪排:烟熏腊排（肉少多骨）2500g|1601.腊猪排:烟熏腊排（精选排骨）500g|1602.腊猪排:烟熏腊排（精选排骨）1500g|1603.腊猪排:烟熏腊排（精选排骨）2500g|1604.腊猪排:风吹盐排（精选排骨）500g|1605.腊猪排:风吹盐排（精选排骨）1500g|1606.腊猪排:风吹盐排（精选排骨）2500g	\N	0	2	19	\N	\N	1	\N	1598:烟熏腊排（肉少多骨）500g|1599:烟熏腊排（肉少多骨）1500g|1600:烟熏腊排（肉少多骨）2500g|1601:烟熏腊排（精选排骨）500g|1602:烟熏腊排（精选排骨）1500g|1603:烟熏腊排（精选排骨）2500g|1604:风吹盐排（精选排骨）500g|1605:风吹盐排（精选排骨）1500g|1606:风吹盐排（精选排骨）2500g	1	2021-01-06 09:26:16	2021-05-14 10:23:46	f	f	f
4142	BN1610158658587	南山田舍，现摘新鲜红橙，红润诱人香甜多汁，坏果包赔	红润诱人香甜多汁	http://files.mvccms.cn/Upload/20210109/20210109102519_9673.jpg	http://files.mvccms.cn/Upload/20210109/20210109102528_8683.jpg,http://files.mvccms.cn/Upload/20210109/20210109102154_8697.jpg,http://files.mvccms.cn/Upload/20210109/20210109102631_8287.jpg		1	36	1129	\N	\N	0	f	f	件	<p><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109102737_9138.jpg" style="height:1185px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109102814_2294.jpg" style="height:1372px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109102838_3538.jpg" style="height:1355px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109102948_0698.jpg" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109103019_7780.jpg" style="height:1083px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109103041_0666.jpg" style="height:1386px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109103113_7214.jpg" style="height:1318px; width:790px" /><img alt="" src="http://files.mvccms.cn/Upload/20210109/20210109103142_1149.jpg" style="height:820px; width:790px" /></p>\n	1607.橙子:（中果）2500g|1608.橙子:（大果）2500g|1609.橙子:（中果）5000g|1610.橙子:（大果）5000g	\N	0	0	44	\N	\N	1	\N	1607:（中果）2500g|1608:（大果）2500g|1609:（中果）5000g|1610:（大果）5000g	1	2021-01-09 10:32:12	2021-01-20 15:19:33	f	f	f
4143	BN1613912011422	南山田舍国产烟台美早大樱桃JJ3j4j5j新鲜水果车厘子特大顺丰包邮	肉厚核小 饱满多汁	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	https://files.nsts.mvccms.cn/Upload/20210221/20210221205747_1625.jpg,https://files.nsts.mvccms.cn/Upload/20210221/20210221205758_3252.jpg		1	36	1130	\N	\N	23	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221210556_2399.jpg" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221210632_6336.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210221/20210221210657_9046.jpg" style="height:1556px; width:790px" /></p>\n	1652.樱桃:中大果（27-29mm）2斤|1653.樱桃:中大果（27-29mm）3斤|1654.樱桃:中大果（27-29mm）5斤|1655.樱桃:特大果（29-32mm）2斤|1656.樱桃:特大果（29-32mm）3斤|1657.樱桃:特大果（29-32mm）5斤|1658.樱桃:超级大果（32-36mm）2斤|1659.樱桃:超级大果（32-36mm）3斤|1660.樱桃:超级大果（32-36mm）5斤|1678.樱桃:家庭版（25-27mm）|1679.樱桃:家庭版（25-27mm）2斤|1680.樱桃:家庭版（25-27mm）3斤|1681.樱桃:家庭版（25-27mm）5斤	\N	0	249	55	\N	\N	1	\N	1652:中大果（27-29mm）2斤|1653:中大果（27-29mm）3斤|1654:中大果（27-29mm）5斤|1655:特大果（29-32mm）2斤|1656:特大果（29-32mm）3斤|1657:特大果（29-32mm）5斤|1658:超级大果（32-36mm）2斤|1659:超级大果（32-36mm）3斤|1660:超级大果（32-36mm）5斤|1678:家庭版（25-27mm）|1679:家庭版（25-27mm）2斤|1680:家庭版（25-27mm）3斤|1681:家庭版（25-27mm）5斤	1	2021-02-21 21:07:09	2021-05-30 13:49:39	t	t	f
4146	BN1614345917680	南山田舍，海南黑金刚莲雾，脆甜多汁现摘现发，当季热带水果包邮	脆甜多汁，补水神器，每天现摘现发，坏果包赔	https://files.nsts.mvccms.cn/Upload/20210226/20210226213346_5946.jpg	https://files.nsts.mvccms.cn/Upload/20210226/20210226213310_1638.jpg,https://files.nsts.mvccms.cn/Upload/20210226/20210226213436_0828.jpg,https://files.nsts.mvccms.cn/Upload/20210226/20210226214048_7247.jpg		1	36	1079	\N	\N	0	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226213831_5666.jpg" style="height:1014px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226213854_8349.gif" style="height:906px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226213913_1085.jpg" style="height:717px; width:790px" /></p>\n\n<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226214010_2993.gif" style="height:813px; width:790px" /></p>\n	1238.水果:5斤	\N	0	17	5	\N	\N	1	\N	1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤|1350:1斤|1351:6斤|1352:7斤	1	2021-02-26 21:41:10	2021-05-25 13:32:51	f	f	f
4147	BN1614346900218	南山田舍，海南芭蕉，香甜软糯，应季新鲜水果5斤空运空运包邮	口感好，营养丰富，有益胃生津、疏通血脉、和解酒毒的功效。主治热病烦渴、咽干口渴、肺燥咳嗽	https://files.nsts.mvccms.cn/Upload/20210226/20210226214525_0730.jpg	https://files.nsts.mvccms.cn/Upload/20210226/20210226214533_3878.jpg,https://files.nsts.mvccms.cn/Upload/20210226/20210226214540_3573.jpg,https://files.nsts.mvccms.cn/Upload/20210226/20210226214606_6927.jpg		1	36	1063	\N	\N	0	f	f	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226214956_3778.jpg" style="height:1080px; width:1440px" /></p>\n	1238.水果:5斤|1277.水果:9斤	\N	0	16	8	\N	\N	1	\N	1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤|1350:1斤|1351:6斤|1352:7斤	1	2021-02-26 21:51:18	2021-04-09 00:15:59	f	f	f
4148	BN1614347679266	南山田舍，桥头地瓜，香甜粉糯，整件包邮	香甜粉糯，精品果	https://files.nsts.mvccms.cn/Upload/20210226/20210226220233_6757.jpg	https://files.nsts.mvccms.cn/Upload/20210226/20210226220240_6465.jpg,https://files.nsts.mvccms.cn/Upload/20210226/20210226220303_1169.jpg,https://files.nsts.mvccms.cn/Upload/20210226/20210226220533_6788.jpg		1	36	1063	\N	\N	0	f	f	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215732_0233.jpg" style="height:925px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215759_7674.jpg" style="height:629px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215818_0381.jpg" style="height:912px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215842_2835.jpg" style="height:755px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215903_4835.jpg" style="height:749px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215919_9413.jpg" style="height:769px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226215943_7654.jpg" style="height:1059px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226220005_0285.jpg" style="height:194px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226220022_0747.jpg" style="height:619px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226220042_2110.jpg" style="height:637px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226220101_0506.jpg" style="height:334px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210226/20210226220122_7359.jpg" style="height:898px; width:790px" /></p>\n	1253.水果:10斤	\N	0	2	1	\N	\N	1	\N	1238:5斤|1252:8斤|1253:10斤|1258:4斤|1261:3斤|1277:9斤|1287:2斤|1350:1斤|1351:6斤|1352:7斤	1	2021-02-26 22:07:42	2021-03-23 00:01:22	f	f	f
4149	BN1614694710883	大金DAIKIN大1.5匹新3级能效变频冷暖家用空调KFR	大金(DAIKIN) 大1.5匹 新3级能效 变频冷暖家用空调 KFR-36G/BP(FTXB336WCLW) 小鑫系列 空调挂机	https://files.nsts.mvccms.cn/Upload/20210302/20210302221907_3393.jpg	https://files.nsts.mvccms.cn/Upload/20210302/20210302221938_5485.jpg,https://files.nsts.mvccms.cn/Upload/20210302/20210302221952_2144.jpg		1	2078	0	\N	\N	1027	f	f	1	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210302/20210302224428_4665.jpg" style="height:800px; width:800px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210302/20210302224453_0806.jpg" style="height:800px; width:800px" /></p>\n			0	0	24	\N	\N	1	\N		0	2021-03-02 22:50:28	2021-03-22 23:59:51	f	f	t
4150	BN1617362790366	正宗马来西亚猫山王榴莲新鲜冷冻带壳，顺丰包邮	顺丰空运生鲜基本次日达	https://files.nsts.mvccms.cn/Upload/20210402/20210402193110_2186.jpg	https://files.nsts.mvccms.cn/Upload/20210402/20210402193042_0082.jpg,https://files.nsts.mvccms.cn/Upload/20210402/20210402193714_3314.jpg,https://files.nsts.mvccms.cn/Upload/20210402/20210402193723_0765.jpg		1	36	1057	\N	\N	0	f	f	个	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402194920_6996.jpg" style="height:894px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195056_5551.jpg" style="height:1193px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195144_2763.jpg" style="height:644px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195206_8780.jpg" style="height:828px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195231_9602.jpg" style="height:826px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195253_6952.jpg" style="height:833px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195325_6188.jpg" style="height:884px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195349_4545.jpg" style="height:957px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195416_1096.jpg" style="height:904px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195436_4415.jpg" style="height:646px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195502_7391.jpg" style="height:717px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195631_7863.jpg" style="height:717px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195653_8805.jpg" style="height:977px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195723_5472.jpg" style="height:945px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210402/20210402195757_5289.jpg" style="height:924px; width:790px" /></p>\n	1638.榴莲:正宗马来西亚猫山王（鲜果）	\N	0	5	0	\N	\N	1	\N	1443:金枕一个装3-4斤（A级精品）|1444:金枕一个装4-5斤（A级精品，店长力荐）|1445:金枕一个装5-6斤（A级精品，店长力荐）|1446:金枕1-2个装6-7斤（A级精品，吃货专享）|1447:金枕2个装7-8斤（A级精品，人气爆款）|1448:金枕2个装8-9斤（A级精品，过瘾必选）|1449:金枕2个装9-10斤（A级精品，送礼推荐）|1450:金枕2个装10-11斤（A级精品，土豪装）|1451:干尧一个装3-4斤（A级精品）|1452:干尧一个装4-5斤（A级精品，店长力荐）|1453:干尧一个装5-6斤（A级精品，店长力荐）|1454:干尧1-2个装6-7斤（A级精品，吃货专享）|1455:干尧2个装7-8斤（A级精品，人气爆款）|1456:干尧2个装8-9斤（A级精品，过瘾必选）|1457:干尧2个装9-10斤（A级精品，送礼推荐）|1458:干尧2个装10-11斤（A级精品，土豪装）|1638:正宗马来西亚猫山王（鲜果）	1	2021-04-02 19:40:23	2021-05-01 10:29:57	f	f	f
4151	BN1618116561602	南山田舍，秭归伦晚脐橙， 爆甜多汁，易手剥新鲜应季当水果	新鲜应当季树上鲜橙 精品果	https://files.nsts.mvccms.cn/Upload/20210411/20210411125545_6230.jpg	https://files.nsts.mvccms.cn/Upload/20210411/20210411125350_7485.jpg,https://files.nsts.mvccms.cn/Upload/20210411/20210411125443_9058.jpg		1	36	1133	\N	\N	23	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210411/20210411125823_0649.jpg" style="height:1574px; width:790px" /></p>\n	1639.橙子:精品伦晚中果（5斤装）|1640.橙子:精品伦晚大果（5斤装）|1641.橙子:精品伦晚大果（10斤装）|1642.橙子:精品伦晚中果（10斤装）	\N	0	43	10	\N	\N	1	\N	1639:精品伦晚中果（5斤装）|1640:精品伦晚大果（5斤装）|1641:精品伦晚大果（10斤装）|1642:精品伦晚中果（10斤装）	1	2021-04-11 12:59:52	2021-05-13 22:13:35	f	f	f
4152	BN1618631441590	大金(DAIKIN) 大1.5匹 新3级能效 变频冷暖家用空调 KFR-	大金(DAIKIN) 大1.5匹 新3级能效 变频冷暖家用空调 KFR-	https://files.nsts.mvccms.cn/Upload/20210417/20210417115331_3325.jpg	https://files.nsts.mvccms.cn/Upload/20210417/20210417115347_1686.jpg		1	2078	0	\N	\N	1027	f	t	台	<p>ddddddd</p>\n			0	0	0	\N	\N	1	\N		0	2021-04-17 12:00:15	\N	f	t	t
4153	BN1619365341618	南山田舍，黄心油桃，精品A果，果肉细嫩脆甜多汁，包邮	果肉细嫩脆甜多汁	https://files.nsts.mvccms.cn/Upload/20210425/20210425234728_5145.jpg	https://files.nsts.mvccms.cn/Upload/20210425/20210425234736_2745.jpg,https://files.nsts.mvccms.cn/Upload/20210425/20210425235105_9008.jpg,https://files.nsts.mvccms.cn/Upload/20210425/20210425235123_8513.jpg		1	36	1135	\N	\N	0	f	f	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235416_0614.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235450_2490.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235518_6975.jpg" style="height:709px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235540_3026.jpg" style="height:323px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235603_1512.jpg" style="height:722px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235625_8173.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235659_0442.jpg" style="height:714px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235721_3189.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210425/20210425235757_5478.jpg" style="height:981px; width:790px" /></p>\n	1661.桃子:精品A果（3斤装）	\N	0	12	2	\N	\N	1	\N	1661:精品A果（3斤装）|1662:精品A果（4斤装）|1663:精品A果（5斤装）	1	2021-04-25 23:58:40	2021-05-27 19:54:47	f	f	f
4154	BN1621061425122	现摘黄金油桃，鲜嫩多汁，顺丰整箱包邮	咬一口，满嘴芳香，鲜嫩多汁	https://files.nsts.mvccms.cn/Upload/20210515/20210515145519_5571.jpg	https://files.nsts.mvccms.cn/Upload/20210515/20210515145526_7718.jpg,https://files.nsts.mvccms.cn/Upload/20210515/20210515145436_1645.jpg,https://files.nsts.mvccms.cn/Upload/20210515/20210515145558_9479.jpg		1	36	1135	\N	\N	0	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150049_7697.jpg" style="height:1212px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150118_2642.jpg" style="height:954px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150138_1254.jpg" style="height:1272px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150204_6730.jpg" style="height:1152px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150226_8741.jpg" style="height:1059px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150247_7995.jpg" style="height:1122px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150311_1541.jpg" style="height:986px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150331_3071.jpg" style="height:1725px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210515/20210515150456_5301.jpg" /></p>\n	1661.桃子:精品A果（3斤装）|1691.桃子:精品A果（4.5斤装）|1692.桃子:精品礼盒（4.5斤装）	\N	0	3	1	\N	\N	1	\N	1661:精品A果（3斤装）|1691:精品A果（4.5斤装）|1692:精品礼盒（4.5斤装）	1	2021-05-15 15:05:22	\N	f	f	f
4155	BN1621811423386	南山田舍，国产露天红灯大樱桃新鲜水果车厘子特大顺丰包邮	露天红灯大樱桃，新鲜采摘，现摘现发	https://files.nsts.mvccms.cn/Upload/20210524/20210524071212_2090.jpg	https://files.nsts.mvccms.cn/Upload/20210524/20210524071219_3394.jpg,https://files.nsts.mvccms.cn/Upload/20210524/20210524071233_3880.jpg		1	36	1130	\N	\N	0	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210524/20210524071646_0979.jpg" style="height:803px; width:790px" /></p>\n	1694.樱桃:露天樱桃（24-28mm）2斤|1695.樱桃:露天樱桃（24-28mm）3斤|1696.樱桃:露天樱桃（24-28mm）5斤	\N	0	15	3	\N	\N	1	\N	1652:中大果（27-29mm）2斤|1653:中大果（27-29mm）3斤|1654:中大果（27-29mm）5斤|1655:特大果（29-32mm）2斤|1656:特大果（29-32mm）3斤|1657:特大果（29-32mm）5斤|1658:超级大果（32-36mm）2斤|1659:超级大果（32-36mm）3斤|1660:超级大果（32-36mm）5斤|1678:家庭版（25-27mm）|1679:家庭版（25-27mm）2斤|1680:家庭版（25-27mm）3斤|1681:家庭版（25-27mm）5斤|1694:露天樱桃（24-28mm）2斤|1695:露天樱桃（24-28mm）3斤|1696:露天樱桃（24-28mm）5斤	1	2021-05-24 07:17:01	2021-05-30 13:42:20	f	f	f
4156	BN1621955031238	南山田舍，海南火山岩荔枝王现摘现发，空运包邮	精选好果，坏果包赔！！	https://files.nsts.mvccms.cn/Upload/20210525/20210525231214_3052.jpg	https://files.nsts.mvccms.cn/Upload/20210525/20210525231306_6301.jpg,https://files.nsts.mvccms.cn/Upload/20210525/20210525231314_1884.jpg,https://files.nsts.mvccms.cn/Upload/20210525/20210525231339_4176.jpg		1	36	1136	\N	\N	23	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230701_6129.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230726_2044.jpg" style="height:1071px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230753_5708.jpg" style="height:1203px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230817_1514.jpg" style="height:1328px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230842_7933.jpg" style="height:985px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230907_6915.jpg" style="height:1026px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230930_2790.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210525/20210525230958_0796.jpg" style="height:841px; width:790px" /></p>\n	1697.荔枝:精品A果（5斤装）|1698.荔枝:精品A果礼盒装（5斤装）	\N	0	23	1	\N	\N	1	\N	1697:精品A果（5斤装）|1698:精品A果礼盒装（5斤装）	1	2021-05-25 23:15:52	2021-05-26 22:39:28	t	t	f
4157	BN1622384194347	南山田舍，海南火山岩无核荔枝有5斤包邮	京东空运荔枝专线，现摘现发。	https://files.nsts.mvccms.cn/Upload/20210530/20210530222729_6715.jpg	https://files.nsts.mvccms.cn/Upload/20210530/20210530222755_6145.jpg,https://files.nsts.mvccms.cn/Upload/20210530/20210530222804_9052.jpg,https://files.nsts.mvccms.cn/Upload/20210530/20210530222918_8727.jpg		1	36	1136	\N	\N	23	f	t	件	<p><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222050_3270.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222108_7498.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222132_2686.jpg" style="height:1281px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222152_3867.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222214_6308.jpg" style="height:1228px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222236_3260.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222611_3119.jpg" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222629_4178.jpg" style="height:813px; width:790px" /><img alt="" src="https://files.nsts.mvccms.cn/Upload/20210530/20210530222646_1814.jpg" style="height:605px; width:790px" /></p>\n	1697.荔枝:精品A果（5斤装）	\N	0	5	0	\N	\N	1	\N	1697:精品A果（5斤装）|1698:精品A果礼盒装（5斤装）	1	2021-05-30 22:29:34	2021-05-31 08:53:38	t	f	t
4158	BN1718955664740	测试商品	一般化测试	http://www.coreshop.cn//upload/20240621/20240621154231_6623.jpg	http://www.coreshop.cn//upload/20240621/20240621154251_5396.jpg		1	2048	0		23	0	t	t	斤	<p>不能为空</p>			0	0	0	\N	\N	3	\N		0	2024-06-21 15:45:11.379045	\N	f	f	f
\.


--
-- Data for Name: corecmsgoodsbrowsing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodsbrowsing (id, goodsid, userid, goodsname, createtime, isdel) FROM stdin;
\.


--
-- Data for Name: corecmsgoodscategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodscategory (id, parentid, name, typeid, sort, imageurl, isshow, createtime) FROM stdin;
3	0	时令生鲜	0	100		t	\N
35	3	进口鲜果	0	1	http://files.mvccms.cn/Upload/20200906/20200906025524_5608.jpg	f	\N
36	3	时令鲜果	0	1	http://files.mvccms.cn/Upload/20200826/20200826104332_2013.jpg	t	\N
2047	0	寻鲜助农	0	1		t	\N
2048	2047	蚂蚁助农	16	1	https://files.nsts.mvccms.cn/Upload/20210505/20210505012951_1171.jpg	t	\N
2049	0	礼盒卷卡	0	1	http://files.mvccms.cn/Upload/20200906/20200906025610_3214.jpg	t	\N
2052	0	休闲零食	0	1	http://files.mvccms.cn/Upload/20200811/20200811143113_6260.jpg	t	\N
2053	2052	休闲零食	0	1	http://files.mvccms.cn/Upload/20200811/20200811143252_5448.jpg	t	\N
2054	2052	精致美食	0	1	http://files.mvccms.cn/Upload/20200906/20200906025646_6509.jpg	f	\N
2055	2049	阳澄湖大闸蟹	0	1	http://files.mvccms.cn/Upload/20200906/20200906025830_8964.jpg	t	\N
2056	2049	佛跳墙	0	1	http://files.mvccms.cn/Upload/20200906/20200906025624_6350.jpg	t	\N
2057	2049	组合套餐	0	1	https://files.nsts.mvccms.cn/Upload/20210505/20210505013037_6253.jpg	f	\N
2058	0	水产海鲜	0	1	http://files.mvccms.cn/Upload/20200906/20200906025653_0245.jpg	t	\N
2059	2058	水产	0	1	http://files.mvccms.cn/Upload/20200906/20200906025702_6201.jpg	t	\N
2060	0	中国特产	0	1	http://files.mvccms.cn/Upload/20200906/20200906025721_4688.jpg	t	\N
2061	2060	生态乡里货	0	1	http://files.mvccms.cn/Upload/20200906/20200906025729_5180.jpg	t	\N
2062	2058	海鲜干货	0	1	https://files.nsts.mvccms.cn/Upload/20210505/20210505013240_5864.jpg	t	\N
2063	2058	海鲜	0	1	https://files.nsts.mvccms.cn/Upload/20210505/20210505013207_7617.jpg	t	\N
2065	0	烘焙速食	0	1		t	\N
2066	2065	水饺馄饨	0	1		t	\N
2067	2065	烘培糕点	0	1		t	\N
2068	2052	健康饮品	0	1	https://files.nsts.mvccms.cn/Upload/20210505/20210505013114_3066.jpg	t	\N
2069	0	日用百货	0	1		f	\N
2070	2060	农家腊制品	0	1		t	\N
2071	2060	东北特产	0	1		t	\N
2072	2060	华中特产	0	1		f	\N
2073	2060	西北特产	0	1		f	\N
2074	2060	深海干货	0	1		t	\N
2075	3	水产活鲜	0	1		t	\N
2076	2069	家用小电器	0	1		f	\N
2077	0	大金空调挂机	1132	1	https://files.nsts.mvccms.cn/Upload/20210224/20210224233530_4490.jpg	f	\N
2078	2077	大金空调挂机	1132	1	https://files.nsts.mvccms.cn/Upload/20210225/20210225001521_7312.jpg	f	\N
\.


--
-- Data for Name: corecmsgoodscategoryextend; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodscategoryextend (id, goodsid, goodscategroyid) FROM stdin;
2063	2024	43
2064	1027	3
2065	1027	37
2090	1026	3
2091	1026	35
2092	1026	36
2093	1026	37
3125	2026	3
3126	2026	35
3127	2026	36
3140	2027	36
3141	2027	3
4120	2031	36
4135	3030	44
4136	3030	45
4137	3030	1046
5121	4029	36
5144	4033	2048
5157	4035	2050
5229	4061	36
5490	4072	36
5491	4072	2059
5492	4072	2062
5493	4063	2058
5494	4062	2058
5495	4060	2056
5496	4060	2057
5512	4050	36
5519	4036	2049
5520	4036	2055
5521	4036	2057
5522	4032	2048
5525	3028	36
5526	2028	36
5531	4045	36
5553	4084	2048
5561	4031	2047
5577	4145	2077
5578	4145	2078
5579	4149	2078
5580	4149	2077
5581	4059	2055
5582	4059	2057
5583	4058	2055
5584	4058	2057
5585	4057	2055
5586	4057	2057
5587	4056	2055
5588	4056	2057
5589	4054	2055
5590	4054	2057
5591	4053	2055
5592	4053	2057
5595	4052	2055
5596	4052	2057
5597	4152	2078
5603	4030	2047
5606	4051	36
5607	4038	2049
5608	4038	2053
5609	4048	2053
5610	4158	2048
\.


--
-- Data for Name: corecmsgoodscollection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodscollection (id, goodsid, userid, goodsname, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsgoodscomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodscomment (id, commentid, score, userid, goodsid, orderid, addon, images, contentbody, sellercontent, isdisplay, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsgoodsgrade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodsgrade (id, goodsid, gradeid, gradeprice) FROM stdin;
1	4158	2	1
2	4158	6	1
3	4158	1006	1
4	4158	1007	1
5	4158	1008	1
\.


--
-- Data for Name: corecmsgoodsimages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodsimages (goodsid, imageid, sort) FROM stdin;
\.


--
-- Data for Name: corecmsgoodsparams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodsparams (id, name, value, type, createtime, updatetime) FROM stdin;
17	颜色	红,黄,绿	checkbox	2020-02-29 00:53:36	2020-06-14 19:17:17
18	重量	1斤,2斤,3斤,4斤,5斤,6斤,7斤,8斤,9斤,10斤	radio	2020-02-29 00:55:24	2021-01-04 20:22:57
19	产地		text	2020-02-29 00:55:24	2020-06-14 20:50:14
20	每日优果		text	2020-08-08 23:46:59	\N
21	智利荔枝-小		text	2020-08-09 00:13:48	\N
22	智利荔枝-大		text	2020-08-09 00:13:48	\N
23	规格	1斤,2斤,3斤,4斤,5斤,6斤,7斤,8斤,9斤,10斤	checkbox	2020-09-11 11:56:57	2021-01-04 21:38:59
24	大金空调挂机	1匹,2匹,3匹,4匹,5匹	radio	2021-02-24 23:26:37	2021-02-24 23:27:02
\.


--
-- Data for Name: corecmsgoodstypespec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodstypespec (id, name, sort) FROM stdin;
16	水果	100
17	浦江A级精品猕猴桃	1
18	冬枣专用	10
31	阳澄湖大闸蟹	1
35	突尼斯软子石榴	100
36	蛋黄酥	1
39	功夫水饺	1
42	翠香绿心猕猴桃	1
43	海鸭蛋	1
44	榴莲	1
45	火龙果	1
46	板栗	1
47	百香果	1
48	蜂蜜	1
49	测试	1
50	特色美食	1
51	开湖活动	1
52	椰子汁	1
53	土鸡蛋	1
54	农家土特产	1
55	干鱼系列	1
56	干海鲜系列	1
57	即食海产品	1
58	零食系列	1
59	核桃系列	1
60	波罗蜜	1
62	海苔芝麻碎	1
63	苹果	1
64	腰果	1
65	深海马鲛鱼	1
66	哈密瓜	1
67	人参	1
68	手工现做零嘴	1
69	干牛肉系列	1
70	精品橙子	1
71	芒果	1
72	盐焗鸡	1
73	红薯粉	1
74	芋头	1
75	芒果	1
76	海南波罗蜜	1
77	小米	1
78	扇贝肉	1
79	皇帝柑	1
80	凤梨	1
81	西瓜	1
82	吊柿	1
83	脐橙	1
84	释迦果	1
85	生蚝	1
86	柚子	1
87	沃柑	1
88	耙耙柑	1
89	腊肉	1
91	腊猪排	1
92	腊猪脚	1
93	腊猪舌	1
94	乡里腊肉	1
95	香肠	1
96	橙子	1
97	樱桃	1
98	红毛丹	1
99	空调挂机-匹数	1
100	橙子	1
101	椰青	1
102	桃子	1
103	荔枝	1
\.


--
-- Data for Name: corecmsgoodstypespecvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsgoodstypespecvalue (id, specid, value, sort) FROM stdin;
1096	18	精品A果3斤装	1
1097	18	精品A果5斤装	2
1098	17	中果15个装	2
1099	17	中果30个装	3
1101	17	大果24个装	5
1176	31	（大展宏图）88888型，公6两4只，母4两4只	7
1178	31	（送亲朋，大方体面）1688型，母2点5两8只	8
1179	31	（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只	9
1180	31	（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只	10
1181	31	（送领导，升职加薪）2888型，公4两4只，母2点8两4只	11
1182	31	（五谷丰登）8888型，公4点5两4只，母3两4只	12
1183	31	（金玉满堂）9999型，公5两4只，母3点5两4只	13
1184	31	（国泰民安）99999型，公7两4只，母4点5两4只	14
1194	35	礼盒特级果6-8个8斤装	100
1195	35	礼盒大果8个6斤装	1
1196	35	大果6-7个5斤装	2
1197	35	中果8-9个5斤装	3
1201	36	板栗味（6枚）盒	2
1202	36	红豆味（6枚）盒	3
1204	37	韭菜猪肉（1斤）	1
1205	37	香菇猪肉（1斤）	2
1206	37	香葱猪肉（1斤）	3
1207	37	芹菜猪肉（1斤）	4
1208	37	莲藕猪肉（1斤）	5
1209	37	白菜猪肉（1斤）	6
1210	37	胡萝卜玉米（1斤）	7
1211	37	羊肉水饺（1斤）	8
1212	37	鲜肉馄饨（1斤）	9
1213	38	韭菜猪肉（1斤装）	1
1214	38	香菇猪肉（1斤装）	2
1215	38	香葱猪肉（1斤装）	3
1216	38	芹菜猪肉（1斤装）	4
1217	38	莲藕猪肉（1斤装）	5
1218	38	白菜猪肉（1斤装）	6
1219	38	胡萝卜玉米（1斤装）	7
1220	38	干笋猪肉（1斤装）	8
1221	38	羊肉水饺（1斤装）	9
1222	38	鲜肉馄饨（1斤装）	10
1223	39	韭菜猪肉（1斤）	1
1224	39	香葱猪肉（1斤）	2
1225	39	香菇猪肉（1斤）	3
1226	39	芹菜猪肉（1斤）	4
1227	39	莲藕猪肉（1斤）	5
1228	39	白菜猪肉（1斤）	6
1229	39	胡萝卜玉米（1斤）	7
1230	39	干笋猪肉（1斤）	8
1231	39	羊肉水饺（1斤）	9
1232	39	功夫馄饨（1斤）	10
1233	17	大果24个（礼盒）	6
1236	17	特大果18-20个装	6
1237	17	特大果18-20个（礼盒）	7
1238	16	5斤	14
1252	16	8斤	15
1253	16	10斤	16
1254	42	中果26-30枚	1
1255	42	大果20-24枚	2
1256	42	特大果8斤装	3
1257	42	精品礼盒	4
1258	16	4斤	17
1259	36	肉松味（6枚）盒	3
1260	36	随机4盒（24枚）	4
1261	16	3斤	18
1262	43	20个装（60-69克）	1
1263	43	20个装（70-79克）	2
1271	46	板栗（3斤）	1
1272	46	板栗（5斤）	2
1273	46	锥栗（5斤）	3
1274	17	中果30个（礼盒）	6
1275	47	3斤	1
1276	47	5斤	2
1277	16	9斤	19
1279	49	2.5	1
1280	49	1.5	1
1281	49	2.6	2
1282	48	1斤	1
1283	48	2斤	2
1284	50	微辣	1
1285	50	中辣	2
1286	50	特辣	3
1287	16	2斤	11
1288	51	2两纯母蟹10只	1
1289	52	1箱	1
1290	52	2箱	2
1293	53	混合装30枚	3
1294	53	粉壳土鸡蛋30枚	3
1295	53	绿壳土鸡蛋30枚	4
1296	54	3斤	1
1297	54	5斤	2
1298	55	1斤	1
1299	55	2斤	2
1300	55	3斤	3
1301	55	4斤	4
1302	55	5斤	5
1303	56	小号墨鱼10-13只	1
1304	56	中号墨鱼2-3只	2
1305	56	大号墨鱼1只	3
1306	56	鱿鱼干一斤装	3
1308	55	黄鱼酥尝鲜装110G	5
1309	57	尝鲜装110克	1
1310	57	一斤装	2
1311	54	2斤	2
1312	58	1斤	1
1313	58	2斤	2
1314	58	3斤	3
1315	58	4斤	4
1316	58	5斤	5
1317	59	新疆薄皮核桃5斤	1
1318	59	阿克苏纸皮核桃5斤	2
1324	58	五香500g	5
1325	58	麻辣500g	6
1326	58	混搭500g	7
1336	62	150g	1
1337	62	200g	2
1338	62	300g	3
1339	62	500g	4
1340	62	1000g	5
1341	58	250克	8
1342	63	2斤	1
1343	63	3斤	2
1344	63	4斤	3
1345	63	5斤	4
1346	63	6斤	5
1347	63	8斤	6
1348	63	9斤	7
1349	63	10斤	7
1350	16	1斤	17
1351	16	6斤	18
1352	16	7斤	19
1353	62	400g	5
1354	64	一盒	1
1361	65	2斤	1
1362	65	3斤	2
1363	65	4斤	3
1364	65	5斤	4
1365	65	5斤礼盒	5
1367	67	2斤	1
1368	67	1斤	1
1369	68	尝鲜装（160g）	1
1370	68	家庭装（180g）	2
1371	68	聚会装（220g）	3
1372	68	送礼装（500g）	4
1373	69	原味	1
1374	69	麻辣味	2
1375	69	香辣味	3
1376	69	无盐原味	4
1377	69	孜然味	5
1378	69	孜然辣	6
1379	70	中果5斤装	1
1380	70	中果9斤装	2
1381	70	精品大果5斤装	3
1382	70	精品大果9斤装	4
1383	71	精品A果5斤	1
1384	71	精品A果6斤	2
1385	71	精品A果8斤	3
1386	71	精品A果9斤	4
1387	71	精品A果10	5
1389	72	（掌柜推荐）盐焗鸡650克	1
1390	73	2斤装	1
1391	73	3斤装	2
1392	73	4斤装	3
1393	73	5斤装	4
1394	74	5斤	1
1395	74	10斤	2
1396	75	（精品A级果）5斤	1
1398	60	海南菠萝蜜A果（23-26斤）	3
1401	76	（21-25斤）爆款推荐，店长力荐，出肉率高	3
1402	76	（26-30斤）特大果，肉厚饱满	4
1403	76	（31-35斤）超级特大果，出肉率更高	5
1405	64	二罐（送杯咖啡）	4
1406	64	三罐（送杯咖啡）	5
1407	64	四罐（送杯咖啡）	6
1408	64	六罐（送杯咖啡）	7
1410	45	5斤中果	3
1411	45	5斤大果	4
1412	45	8斤装精品好果	5
1413	77	3斤装	1
1414	77	5斤装	2
1416	78	一袋（500克）	1
1417	78	二袋（1000克）	2
1418	79	精品大果5斤	1
1419	79	精品大果9斤	2
1422	81	一个装（4.5-5.5斤）	1
1423	81	二个装（8-11斤）	2
1424	60	（精品A果体验装）6-8斤（精品大果，实惠体验）	4
1425	60	（精品A果吃货装）8-10斤（吃货分享优选）	5
1427	82	精品A果3斤	1
1428	82	精品A果5斤	2
1429	83	精品礼盒10斤	1
1430	83	精品礼盒20斤	2
1431	83	（80-95）5斤	3
1432	83	（80-95）10斤	4
1433	83	（70-80）5斤	4
1434	83	（70-80）10斤	5
1435	66	5斤	1
1436	66	9斤	2
1437	66	10斤	3
1439	60	（精品A果家庭装）10-12斤（高性价比，家庭分享装）	4
1440	60	（精品A果特大果）12-14斤（人气爆款，聚会专享装）	5
1441	85	（2-3两）5斤	1
1442	85	（3-4两）5斤	2
1451	44	干尧一个装3-4斤（A级精品）	13
1452	44	干尧一个装4-5斤（A级精品，店长力荐）	14
1453	44	干尧一个装5-6斤（A级精品，店长力荐）	15
1454	44	干尧1-2个装6-7斤（A级精品，吃货专享）	16
1459	86	一个装（2-3斤）	1
1460	86	二个装	2
1461	86	三个装	3
1462	86	四个装	4
1463	80	5斤（2个精品大果）	2
1464	80	10斤（3-4精品个大果）	3
1468	88	（精品中果）5斤装	1
1469	88	（精品大果）5斤装	2
1470	88	（精品中果）8斤装	3
1471	88	（精品大果）8斤装	4
1472	89	（试吃装）200g	1
1493	94	五花腊肉（肥瘦适中）750g	1
1495	94	五花腊肉（整块偏瘦）750g	3
1497	94	腊后腿肉（整块偏瘦）750g	5
1537	93	烟熏舌尖（不带喉管）1斤	2
1538	93	烟熏舌尖（不带喉管）3斤	3
1539	93	烟熏舌尖（不带喉管）5斤	4
1540	93	烟熏舌尖（带喉管）1斤	5
1541	93	烟熏舌尖（带喉管）3斤	6
1542	93	烟熏舌尖（带喉管）5斤	7
1543	92	烟熏猪脚（带蹄子）1斤	2
1544	92	烟熏猪脚（带蹄子）3斤	3
1545	92	烟熏猪脚（带蹄子）5斤	4
1546	92	烟熏猪脚（不带蹄子）1斤	5
1547	92	烟熏猪脚（不带蹄子）3斤	6
1548	92	烟熏猪脚（不带蹄子）5斤	7
1549	89	腊五花肉（肥瘦适中）500克	19
1550	89	腊五花肉（肥瘦适中）750克	20
1551	89	腊五花肉（肥瘦适中）1500克	21
1552	89	腊五花肉（瘦肉偏多）500克	22
1553	89	腊五花肉（瘦肉偏多）750克	23
1554	89	腊五花肉（瘦肉偏多）1500克	24
1555	89	腊五花肉（很肥冲量中）500克	25
1556	89	腊五花肉（很肥冲量中）750克	26
1557	89	腊五花肉（很肥冲量中）1500克	27
1558	89	后腿腊肉（肥瘦适中）500克	28
1559	89	后腿腊肉（肥瘦适中）750克	29
1560	89	后腿腊肉（肥瘦适中）1500克	30
1561	89	后腿腊肉（瘦肉偏多）500克	31
1562	89	后腿腊肉（瘦肉偏多）750克	32
1563	89	后腿腊肉（瘦肉偏多）1500克	33
1564	89	瘦肉干巴（几乎全瘦）500克	34
1565	89	瘦肉干巴（几乎全瘦）750克	35
1566	89	瘦肉干巴（几乎全瘦）1500克	36
1580	95	试吃装（200g）	1
1581	95	麻辣香肠（肥瘦对半）500g	2
1582	95	麻辣香肠（肥瘦对半）1500g	3
1583	95	麻辣香肠（7分瘦）500g	4
1584	95	麻辣香肠（7分瘦）1500g	5
1585	95	麻辣香肠（8分瘦）500g	6
1586	95	麻辣香肠（8分瘦）1500g	7
1587	95	芝麻香肠（微微辣）500g	8
1588	95	芝麻香肠（微微辣）1500g	9
1589	95	五香腊肠（没有辣）500g	10
1590	95	五香腊肠（没有辣）1500g	11
1591	95	广式香肠（咸甜味）500g	12
1592	95	广式香肠（咸甜味）1500g	13
1593	95	乡猪麻辣香肠（纯乡里瘦肉）500g	14
1594	95	乡猪麻辣香肠（纯乡里瘦肉）1500g	15
1595	94	五花腊肉（肥瘦适中）1000g	6
1596	94	五花腊肉（整块偏瘦）1000g	7
1597	94	腊后腿肉（整块偏瘦）1000g	8
1598	91	烟熏腊排（肉少多骨）500g	9
1599	91	烟熏腊排（肉少多骨）1500g	10
1600	91	烟熏腊排（肉少多骨）2500g	11
1601	91	烟熏腊排（精选排骨）500g	12
1602	91	烟熏腊排（精选排骨）1500g	13
1603	91	烟熏腊排（精选排骨）2500g	14
1604	91	风吹盐排（精选排骨）500g	15
1605	91	风吹盐排（精选排骨）1500g	16
1606	91	风吹盐排（精选排骨）2500g	17
1607	96	（中果）2500g	1
1608	96	（大果）2500g	2
1609	96	（中果）5000g	3
1610	96	（大果）5000g	4
1611	87	（尝鲜装精品中果）5斤	3
1612	87	（超值装精品中果）9斤	4
1613	87	（人气爆款精品大果）5斤	5
1614	87	（人气爆款精品大果）9斤	6
1615	87	（人气爆款礼盒装）8斤	7
1622	98	1500g	1
1623	98	2000g	2
1624	98	2500g	3
1625	75	（精品A级果）8斤	3
1626	75	（精品A级果）9斤	4
1631	99	1匹-10瓦	4
1632	99	2匹-20瓦	4
1633	99	3匹-30瓦	5
1634	99	4匹-40瓦	6
1636	84	精品果5斤（3-4个）	1
1638	44	正宗马来西亚猫山王（鲜果）	16
1639	100	精品伦晚中果（5斤装）	1
1640	100	精品伦晚大果（5斤装）	2
1641	100	精品伦晚大果（10斤装）	3
1642	100	精品伦晚中果（10斤装）	4
1643	76	（10-15斤）品质小果，一人吃过瘾	5
1644	76	（15-20斤）严选品质，家庭分享装	6
1645	101	2个装	1
1646	101	4个装	2
1647	101	6个装	3
1648	101	9个装	4
1652	97	中大果（27-29mm）2斤	11
1653	97	中大果（27-29mm）3斤	12
1654	97	中大果（27-29mm）5斤	13
1655	97	特大果（29-32mm）2斤	14
1656	97	特大果（29-32mm）3斤	15
1657	97	特大果（29-32mm）5斤	16
1658	97	超级大果（32-36mm）2斤	17
1659	97	超级大果（32-36mm）3斤	18
1660	97	超级大果（32-36mm）5斤	19
1661	102	精品A果（3斤装）	1
1669	66	3斤	3
1670	66	4斤（2个装）	4
1671	44	金枕3-4斤（A级精品）	22
1672	44	金枕4-5斤（A级精品，店长力荐）	23
1673	44	金枕5-6斤（A级精品，送礼推荐）	24
1674	44	金枕6-7斤（A级精品，吃货专享）	25
1675	44	金枕7-8斤（A级精品，人气爆款）	26
1676	44	金枕8-9斤（A级精品，过瘾必选）	27
1677	44	金枕2-3斤（巴掌榴莲，一个人吃爽）	28
1678	97	家庭版（25-27mm）	13
1679	97	家庭版（25-27mm）2斤	14
1680	97	家庭版（25-27mm）3斤	15
1681	97	家庭版（25-27mm）5斤	16
1682	44	金枕9-10斤（A级精品，送礼推荐）	23
1683	44	金枕10-11斤（A级精品，土豪装）	24
1684	44	巴掌榴莲（2-3斤）	25
1685	44	巴掌榴莲（3-4斤）	26
1686	44	巴掌榴莲（4-5斤）	27
1687	44	巴掌榴莲（5-6斤）1-2个	28
1688	44	巴掌榴莲（6-7斤）1-2个	29
1689	44	巴掌榴莲（7-8斤）1-2个	30
1690	44	巴掌榴莲（8-9斤）1-3个	31
1691	102	精品A果（4.5斤装）	3
1692	102	精品礼盒（4.5斤装）	4
1693	66	精品A果2个装（7-8斤）	5
1694	97	露天樱桃（24-28mm）2斤	13
1695	97	露天樱桃（24-28mm）3斤	14
1696	97	露天樱桃（24-28mm）5斤	15
1697	103	精品A果（5斤装）	1
1698	103	精品A果礼盒装（5斤装）	1
\.


--
-- Data for Name: corecmsimages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsimages (id, name, url, path, type, isdel, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsinvoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsinvoice (id, category, sourceid, userid, type, title, taxnumber, amount, status, remarks, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsinvoicerecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsinvoicerecord (id, name, code, frequency) FROM stdin;
\.


--
-- Data for Name: corecmslabel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmslabel (id, name, style) FROM stdin;
1	新品	green
2	促销	blue
3	推荐	orange
4	热卖	red
5	热评	orange
\.


--
-- Data for Name: corecmsloginlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsloginlog (id, userid, state, logtime, city, ip) FROM stdin;
\.


--
-- Data for Name: corecmslogistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmslogistics (id, loginame, logicode, imgurl, phone, url, sort, isdelete) FROM stdin;
14896	本地同城配送	benditongcheng		18075599991		-1	f
14897	大金物流	dajin	http://static.showapi.com/app2/img/expImg/dajin.jpg	021-34307936	http://www.dajin.com.cn	0	f
14898	宝通达物流	baotongda	http://static.showapi.com/app2/img/expImg/baotongda.jpg	86-0755-83261581	http://www.btdair.com	5	f
14899	恒诚物流	HENGCHENGWL				10	f
14900	利民物流	LIMINWL				15	f
14901	恒丰物流	HENGFENGWL				20	f
14902	英国DPD	dpd		+448459300350	http://www.dpd.co.uk/	25	f
14903	彪记快递	PEWKEE		886 (02) 2562-3533	http://www.pewkee.com	30	f
14904	中天快运	zhongtian	http://static.showapi.com/app2/img/expImg/zhongtian.jpg	400-0056-001	http://www.wanyun56.cn	35	f
14905	鑫天顺物流	XINTIAN				40	f
14906	飞鹰物流	hnfy	http://static.showapi.com/app2/img/expImg/8781.gif	0371-960065	http://www.hnfy56.com/	45	f
14907	风行天下	fengxingtianxia		4000-404-909	http://www.fxtxsy.com/	50	f
14908	澳大利亚邮政(英文)	auspost		0061-3-88479045	https://auspost.com.au/	55	f
14909	恒路物流	henglu		400-182-6666	http://www.e-henglu.com	60	f
14910	GSM	gsm	http://static.showapi.com/app2/img/expImg/gsm.gif	211-88-06863	http://www.gsmnton.com/gsm/handler/Index	65	f
14911	加拿大邮政(德文)	canpostfr		416-979-8822	http://www.canadapost.ca	70	f
14912	ACS国际快递	acs	http://static.showapi.com/app2/img/expImg/acs.jpg		http://www.acsnets.com/index.asp	75	f
14913	EMS(英文)	emsen		11183	http://www.ems.com.cn/english.html	80	f
14914	美西快递	meixi	http://static.showapi.com/app2/img/expImg/mx.jpg	40005-20014	http://www.20014.com/	85	f
14915	新蛋物流	xindan		400-820-4400	http://www.ozzo.com.cn	90	f
14916	中国邮政包裹、平邮、挂号信	bgpyghx		11185	http://yjcx.chinapost.com.cn	95	f
14917	宋军物流	SJWL				100	f
14918	顺发物流	SHUNFAWL				105	f
14919	邮联物流	YBWL				110	f
14920	天河物流	TIANHEWL				115	f
14921	黑猫宅急便	hmzjb		自動寄件專線:412-8689(手機加02)|客服專線:412-8888(手機加02)	https://www.t-cat.com.tw/	120	f
14922	盛旺货运	SWHY				125	f
14923	汤氏物流	TSWL		4000-678-300/0571-56055588	http://www.tswljt.com/	130	f
14924	鑫飞鸿物流快递	XFHONG		021-69781999	http://www.xfhex.cn	135	f
14925	圆圆物流	YUANYUANWL				140	f
14926	立通快递	litong			http://www.ltoso.com/	145	f
14927	佳宇物流	JIAYU				150	f
14928	昊昕物流	SHHX		021-54437026	http://www.shhx9986.cn/	155	f
14929	安得物流	ande	http://static.showapi.com/app2/img/expImg/ande.jpg	400-000-0056	http://www.annto.com	160	f
14930	贝邮宝	ppbyb	http://static.showapi.com/app2/img/expImg/ppbyb.jpg	4008-206-207	http://www.ppbyb.com	165	f
14931	递达快递	dida	http://static.showapi.com/app2/img/expImg/dida.jpg	400-6878-123	http://www.dida.hk	170	f
14932	振刚物流	ZGWL				175	f
14933	日本邮政	jppost	http://static.showapi.com/app2/img/expImg/jppost.jpg	+81 0570-046111	http://www.post.japanpost.jp	180	f
14934	康力物流	klwl		400-156-5156	http://www.kangliex.com	185	f
14935	UEX	uex	http://static.showapi.com/app2/img/expImg/uex.jpg	400-807-3330	http://www.uex.co.jp/	190	f
14936	祥龙运通	xlyt		4008-908-908	http://www.ldl.com.cn/	195	f
14937	CCES快递	cces	http://static.showapi.com/app2/img/expImg/shunfeng.jpg	4006 773 777	http://www.cces.com.cn	200	f
14938	中国邮政国际包裹	intmail	http://static.showapi.com/app2/img/expImg/intmail.jpg	11183	http://intmail.183.com.cn	205	f
14939	广东ems快递	gdems		11183	http://www.gdems.com/	210	f
14940	百腾物流	baitengwuliu	http://static.showapi.com/app2/img/expImg/9387.gif	400-9989-256	http://www.beteng.com/	215	f
14941	飞力士物流	flysman	http://static.showapi.com/app2/img/expImg/5780.gif	86-755-83448000	http://www.flysman.com.cn/	220	f
14942	丰程物流	sccod	http://static.showapi.com/app2/img/expImg/4030.gif	400-1676-555	http://www.sccod.com/News_List.php?tag=Query	225	f
14943	高铁速递	gtsd		400-999-7777	http://www.hre-e.com/	230	f
14944	户通物流	hutongwuliu	http://static.showapi.com/app2/img/expImg/hutongwuliu.gif	400-060-1656	http://www.cnhtwl.cn/	235	f
14945	GATI快递	gaticn	http://static.showapi.com/app2/img/expImg/gaticn.gif	4000804284	http://www.gaticn.com/	240	f
14946	GTS快递	gts	http://static.showapi.com/app2/img/expImg/907.gif	4000159111	http://www.gto315.com	245	f
14947	伙伴物流	huoban	http://static.showapi.com/app2/img/expImg/9203.gif	0931-5345730	http://www.lzhbwl.com/	250	f
14948	红马速递	nedahm	http://static.showapi.com/app2/img/expImg/6748.gif			255	f
14949	汇文配送	huiwen	http://static.showapi.com/app2/img/expImg/6971.gif	400-0000-266	http://www.hefeihuiwen.com/	260	f
14950	华赫物流	nmhuahe	http://static.showapi.com/app2/img/expImg/1443.gif		http://nmhuahe.com/	265	f
14951	航宇快递	hangyu	http://static.showapi.com/app2/img/expImg/8827.gif	86-21-54470570	http://www.hyexp.cn/	270	f
14952	骏川物流	JUNCHUANWL				275	f
14953	猴急送	hjs	http://static.showapi.com/app2/img/expImg/7089.gif	400-888-8798	http://www.hjs777.com/	280	f
14954	环球速运	huanqiu	http://static.showapi.com/app2/img/expImg/9172.gif		http://www.globle-express.com/web/cn/	285	f
14955	辉联物流	huilian	http://static.showapi.com/app2/img/expImg/5612.gif			290	f
14956	华达快运	huada	http://static.showapi.com/app2/img/expImg/7176.gif	400-895-1110	http://www.zz-huada.com/	295	f
14957	海派通	hipito	http://static.showapi.com/app2/img/expImg/9874.gif	021-54723815	http://www.hipito.com/	300	f
14958	华通务达物流	htwd	http://static.showapi.com/app2/img/expImg/7916.gif	0351-5603868	http://www.htwd56.com/	305	f
14959	韩润物流	hanrun	http://static.showapi.com/app2/img/expImg/8638.gif	400-636-4311	http://www.hr-sz.com/	310	f
14960	民航(航空快递)	airgtc	http://static.showapi.com/app2/img/expImg/1968.gif	8338345678	http://air-gtc.com/	315	f
14961	环球通达	hqtd	http://static.showapi.com/app2/img/expImg/1803.gif	400-0781805	http://www.hqtdky.com/	320	f
14962	河南次晨达	ccd	http://static.showapi.com/app2/img/expImg/1449.gif	400-003-3506	http://www.ccd56.com	325	f
14963	和丰同城	hfwuxi	http://static.showapi.com/app2/img/expImg/7325.gif	0510-82863199	http://www.hfwuxi.com/	330	f
14964	荷兰 Sky Post	skypost	http://static.showapi.com/app2/img/expImg/4775.gif	+31(0)619041114	http://royalskypost.nl/en/	335	f
14965	鸿讯物流	hongxun	http://static.showapi.com/app2/img/expImg/6954.gif	8008108598|4001155566	http://www.hongxun.net.cn/	340	f
14966	宏捷国际物流	hongjie	http://static.showapi.com/app2/img/expImg/5348.gif	0955-440-422	http://www.hongjie.tw/	345	f
14967	吉日优派	jrypex	http://static.showapi.com/app2/img/expImg/3466.gif			350	f
14968	恒通快递	lqht	http://static.showapi.com/app2/img/expImg/6569.gif	0532-68071629	http://www.lqht-express.com/	355	f
14969	汇通天下物流	httx56	http://static.showapi.com/app2/img/expImg/9855.gif	0755-29439924	http://www.httx56.com/	360	f
14970	急顺通	pzhjst	http://static.showapi.com/app2/img/expImg/8647.gif	0812-6688669,18080799000	http://www.pzhjst.com/	365	f
14971	景光物流	jgwl	http://static.showapi.com/app2/img/expImg/9938.gif	400-700-1682	http://www.jgwl.cn/	370	f
14972	金马甲	jmjss	http://static.showapi.com/app2/img/expImg/5237.gif	028-87058515	http://www.jmjss.com/	375	f
14973	捷网俄全通	ruexp	http://static.showapi.com/app2/img/expImg/717.gif	400-728-7156	http://www.j-net.cn/cms	380	f
14974	快优达速递	kuaiyouda	http://static.showapi.com/app2/img/expImg/kuaiyouda.gif	6000440235	http://www.sckyd.net/	385	f
14975	乐天速递	ltexp	http://static.showapi.com/app2/img/expImg/9343.gif	021-62125962	http://www.ltexp.com.cn/	390	f
14976	乐递供应链	ledii	http://static.showapi.com/app2/img/expImg/937.gif	0755-29778511|0755-845286	http://www.ledii.cn/	395	f
14977	鲁通快运	lutong	http://static.showapi.com/app2/img/expImg/6258.gif	400-055-5656	http://www.lutongky.com/	400	f
14978	木春货运	mchy	http://static.showapi.com/app2/img/expImg/293.gif	4006359800	http://www.mcchina-express.com/	405	f
14979	论道国际物流	lundao	http://static.showapi.com/app2/img/expImg/3131.gif	027-87002783	http://www.lundao.net.cn/	410	f
14980	布谷鸟快递	bgn		400-100-0533	http://www.cuckooexpress.com/	415	f
14981	佳惠尔快递	jiahuier	http://static.showapi.com/app2/img/expImg/jiahuier.jpg	4000-139-907	http://www.jhekd.com	420	f
14982	广通速递	guangtong		400-080-6369	http://www.gtongsudi.com/	425	f
14983	美龙快递	meilong		323-208-9848	http://www.mjexp.com/	430	f
14984	星晨急便	STARS		400-6688-400	http://www.4006688400.com	435	f
14985	中国南方航空股份有限公司	NANHANG				440	f
14986	蓝镖快递	lanbiao	http://static.showapi.com/app2/img/expImg/lanbiao.jpg	客服电话：0769-82898999 / 传真：0769-82898338	http://www.bluedart.cn/track/default.asp	445	f
14987	誉美捷快递	yumeijie	http://static.showapi.com/app2/img/expImg/yumeijie.jpg	0351-5668811	http://www.5668811.cn	450	f
14988	方方达物流	fangfangda	http://static.showapi.com/app2/img/expImg/fangfangda.jpg	400-020-0056	http://www.gzffd.com	455	f
14989	大顺物流	dashun	http://static.showapi.com/app2/img/expImg/dashun.jpg	0755-29459328 29459338	http://www.szdswl.cn/	460	f
14990	河北建华物流	hebeijianhua	http://static.showapi.com/app2/img/expImg/hebeijianhua.jpg	0311-86123186	http://116.255.133.172/hebeiwebsite/index.jsp	465	f
14991	晋越快递	jinyue	http://static.showapi.com/app2/img/expImg/jinyue.jpg	400-638-9288	http://www.byondex.com/	470	f
14992	好来运快递	haolaiyun	http://static.showapi.com/app2/img/expImg/haolaiyun.jpg	020-86293333	http://www.hlyex.com	475	f
14993	陪行物流	peixing	http://static.showapi.com/app2/img/expImg/peixing.jpg	400-993-0555	http://www.peixingexpress.com	480	f
14994	新加坡邮政	singpost	http://static.showapi.com/app2/img/expImg/singpost.jpg	+65 6841 2000	http://www.singpost.com	485	f
14995	快淘快递	kuaitao	http://static.showapi.com/app2/img/expImg/kuaitao.jpg	400-770-3370	http://www.4007703370.com	490	f
14996	香港邮政	hkpost	http://static.showapi.com/app2/img/expImg/hkpost.jpg	(852) 2921 2222	http://www.hongkongpost.hk	495	f
14997	一统飞鸿快递	ytfh	http://static.showapi.com/app2/img/expImg/ytfh.gif	010-87308631、674972/15/75	http://218.97.241.58:8080/yitongfeihongweb/common?action=toindex	500	f
14998	中信达快递	zhongxinda	http://static.showapi.com/app2/img/expImg/zhongxinda.jpg	400-646-6665	http://www.zhongxind.cn	505	f
14999	佐川急便	zuochuan	http://static.showapi.com/app2/img/expImg/zuochuan.jpg	0120-222-372	http://www.sagawa-exp.co.jp/chinese/	510	f
15000	城市之星	cszx	http://static.showapi.com/app2/img/expImg/cszx.jpg	400-1188-666	http://www.soclgz.com/	515	f
15001	程光快递	chengguang	http://static.showapi.com/app2/img/expImg/chengguang.jpg	006499482780	http://www.flyway.co.nz	520	f
15002	凤凰快递	PHOENIXEXP		010-57793990	http://www.phoenixexp.com/	525	f
15003	传志快递	chuanzhi	http://static.showapi.com/app2/img/expImg/chuanzhi.jpg	上海(021-56325555 56625555) 北京(010-67035843) 广州(020-86380996)	http://www.chuanzhi.cn	530	f
15004	华慧快递	BHTEXP		010-58633508	http://www.bht-exp.com	535	f
15005	GLS快递	CNGLS			http://www.cn-gls.com	540	f
15006	卡行天下	kxtx		4001-816-816	http://www.kxtx.cn	545	f
15007	龙胜物流	LONGSHENWL		13960015145	http://longshengwuliu.6-china.com/aboutus.html	550	f
15008	苏粤货运	SUYUE		13328048989		555	f
15009	配思货运	PEISI		4008906105	http://www.peisi56.cn/	560	f
15010	美国快递	meiguo		888-611-1888	http://www.us-ex.com	565	f
15011	门对门	menduimen		400-700-7676	http://www.szdod.com	570	f
15012	DHL(英文)	dhlen		400 888 3500	http://www.cn.dhl.com/en.html	575	f
15013	UPS(英文)	upsen		400-820-8388	https://www.ups.com/cn/en/Home.page?loc=en_CN	580	f
15014	广东邮政	guangdongyouzhengwuliu		11183	http://www.gdpost.com.cn/	585	f
15015	中速快件	zhongsukuaidi		11183	https://cpws.ems.com.cn/shipping	590	f
15016	顺丰(英文)	shunfengen		18559011133	http://www.sf-express.com/us/en/	595	f
15017	Fedex(英文-美国件)	fedexus		800-463-3339	https://www.fedex.com/en-us/home.html	600	f
15018	TNT(英文)	tnten		8008209868	https://www.tnt.com/express/en_us/site/home.html	605	f
15019	隆浪快递	longlangkuaidi		021-31171576|6155201		610	f
15075	恒宇运通	hengyu	http://static.showapi.com/app2/img/expImg/hengyu.jpg	010-62237700	http://www.hyytes.cn	890	f
15020	联邦快递(英文)	lianbangkuaidien	http://images.fedex.com/images/c/t1/gh/logo-header-fedex-express.png	400-886-1888	https://www.fedex.com/en-us/home.html	615	f
15021	新蛋奥硕物流	neweggozzo		400-820-4400	http://www.newegg.cn/service/helpcenter.aspx?sysno=36	620	f
15022	瑞典邮政(英文)	ruidianyouzheng		+468232220	http://www.posten.se/en	625	f
15023	金大物流	jindawuliu		0755-82400824	http://www.szkingdom.com.cn/	630	f
15024	中国邮政(国际)	youzhengguoji		11185	http://intmail.183.com.cn/zdxt/yjcx/	635	f
15025	onTrac	ontrac		800-334-5000	http://www.ontrac.com/	640	f
15026	BHT	bht		010-58633508	http://www.bht-exp.com/	645	f
15027	七天连锁	sevendays		400-882-1202	http://www.92856.cn/	650	f
15028	邦送物流	bangsongwuliu		021-20965696	http://express.banggo.com/	655	f
15029	DHL(德文)	dhlde		+49 (0) 180 5 345300-1*	https://www.dhl.de/en/privatkunden.html	660	f
15030	加拿大邮政(英文)	canpost		416-979-8822	http://www.canadapost.ca	665	f
15031	EMS(中文-国际件)	emsguoji		11183	http://www.ems.com.cn/	670	f
15032	AOL澳通速递	aolau	http://static.showapi.com/app2/img/expImg/8090.gif	0424047888|（悉尼）400-8016656（中国）	http://www.aol-au.com/	675	f
15033	A2U速递	a2u	http://static.showapi.com/app2/img/expImg/6278.gif	0398774330	http://www.a2u.com.au/	680	f
15034	科捷物流	kjwl		400-628-0056	http://www.itl.cn/	685	f
15035	EMS(英文-国际件)	emsinten		11183	http://www.ems.com.cn	690	f
15036	BCWELT	bcwelt	http://static.showapi.com/app2/img/expImg/3413.gif		http://www.bcwelt.com/	695	f
15037	安鲜达	exfresh	http://static.showapi.com/app2/img/expImg/6858.gif	400-920-1156	http://exfresh.com.cn/	700	f
15038	跨境电商易	kjdsy			http://www.9610e.com/	705	f
15039	宝凯物流	lbbk	http://static.showapi.com/app2/img/expImg/1832.gif	020-81258022	http://bkls.liby.com.cn/	710	f
15040	乐捷递	lejiedi	http://static.showapi.com/app2/img/expImg/lejiedi.jpg	400-618-1400	http://www.ljd360.com	715	f
15041	汇强快递	huiqiang	http://static.showapi.com/app2/img/expImg/huiqiang.jpg	400-000-0177	http://www.hq-ex.com	720	f
15042	飞豹快递	feibao	http://static.showapi.com/app2/img/expImg/feibao.jpg	400-000-5566	http://www.crlg.com/SingleContent/index?companyid=7&funcid=134	725	f
15043	成都立即送快递	lijisong	http://static.showapi.com/app2/img/expImg/lijisong.jpg	400-028-5666	http://www.cdljs.com	730	f
15044	OCS国际快递	ocs	http://static.showapi.com/app2/img/expImg/ocs.jpg	400-118-8588	http://www.ocschina.com	735	f
15045	民邦速递	minbang	http://static.showapi.com/app2/img/expImg/minbang.jpg	0769-81515303	http://www.mbex168.com/	740	f
15046	京东快递	jingdong	http://static.showapi.com/app2/img/expImg/jingdong.jpg	400-603-3600	http://jd-ex.com/	745	f
15047	赛澳递	saiaodi	http://static.showapi.com/app2/img/expImg/saiaodi.jpg	4000-345-888	http://www.51cod.com 	750	f
15048	三态速递	santai	http://static.showapi.com/app2/img/expImg/santai.jpg	400-881-8106	http://www.sfcservice.com	755	f
15049	凡宇速递	fanyu	http://static.showapi.com/app2/img/expImg/fanyu.jpg	400-658-0358	http://fy.fanyuhuodi.com/	760	f
15050	丰达快递	fengda	http://static.showapi.com/app2/img/expImg/fengda.jpg	400-113-6666	http://www.fd168.com.cn	765	f
15051	东方快递COE	coe	http://static.showapi.com/app2/img/expImg/coe.jpg	0755-83575000	http://www.coe.com.hk	770	f
15052	递四方速递	disifang	http://static.showapi.com/app2/img/expImg/disifang.jpg	0755-33933895	http://express.4px.com/	775	f
15053	百福东方快递	ees	http://static.showapi.com/app2/img/expImg/ees.jpg	400-706-0609	http://www.ees-logistics.net/	780	f
15054	城市100快递	chengshi100	http://static.showapi.com/app2/img/expImg/chengshi100.jpg	400-820-0088|01052284882	http://www.bjcs100.com/	785	f
15055	长通物流	changtong	http://static.showapi.com/app2/img/expImg/changtong.jpg	(0371)66520111|66520222	http://www.hnct56.com	790	f
15056	如风达快递	rufeng	http://static.showapi.com/app2/img/expImg/rufeng.jpg	400-010-6660	http://www.rufengda.com	795	f
15057	传喜物流(传喜快递)	chuanxi	http://static.showapi.com/app2/img/expImg/chuanxi.jpg	400-777-5656	http://www.cxcod.com	800	f
15058	飞邦物流	feibang	http://static.showapi.com/app2/img/expImg/fkdex.jpg	40000-67858	http://www.fbkd.net/index.jhtml	805	f
15059	昊盛物流	haosheng	http://static.showapi.com/app2/img/expImg/haosheng.jpg	400-186-5566	http://www.hs-express.cn	810	f
15060	宽容物流	kuanrong	http://static.showapi.com/app2/img/expImg/kuanrong.jpg	400-820-2719	http://www.krwl-sh.com	815	f
15061	音速速运	yinsu	http://static.showapi.com/app2/img/expImg/yinsu.jpg	02158301601	http://www.sonic-ex.cn/	820	f
15062	通成物流	tongcheng	http://static.showapi.com/app2/img/expImg/tongcheng.jpg	021-36161199-8021	http://www.tc56.com	825	f
15063	伟邦快递(SCS快递)	scs	http://static.showapi.com/app2/img/expImg/scs.jpg	021-64212098/62629520	http://www.scsexpress.com/?char_set=gb	830	f
15064	芝麻开门	zhima	http://static.showapi.com/app2/img/expImg/zhima.jpg	4001-056-056,88056056	http://www.zmkmex.com	835	f
15065	尼尔物流(尼尔快递)	nell	http://static.showapi.com/app2/img/expImg/nell.jpg	400 000 5611	http://www.nell.cn	840	f
15066	日日顺物流	ririshun	http://static.showapi.com/app2/img/expImg/ririshun.jpg	400-800-9999	http://www.rrs.com	845	f
15067	通和天下物流	tonghe	http://static.showapi.com/app2/img/expImg/tonghe.jpg	400-0056-516	http://www.cod56.com	850	f
15068	安迅物流	anxun	http://static.showapi.com/app2/img/expImg/anxl_logo.gif	010-5928 8730	http://www.anxl.com.cn	855	f
15069	百千诚国际物流	baiqian	http://static.showapi.com/app2/img/expImg/baiqian.jpg	0755-22222232	http://www.1001000.com	860	f
15070	出口易	chukouyi	http://static.showapi.com/app2/img/expImg/chukouyi.jpg	4006 988 223	http://www.chukou1.com	865	f
15071	店通快递	diantong	http://static.showapi.com/app2/img/expImg/diantong.jpg	021-20917385 66282857	http://www.shdtkd.com.cn	870	f
15072	飞特物流	feite	http://static.showapi.com/app2/img/expImg/feite.jpg	400 888 4003	http://www.flytexpress.com	875	f
15073	华诚物流	huacheng	http://static.showapi.com/app2/img/expImg/pingyou.jpg	11183	http://www.chinapost.com.cn	880	f
15074	华翰物流	huahan	http://static.showapi.com/app2/img/expImg/huahan.jpg	4000-156-080	http://www.hh-exp.com	885	f
15181	北青小红帽	xiaohongmao	http://static.showapi.com/app2/img/expImg/xiaohongmao.gif			1420	f
15076	久易快递	jiuyi	http://static.showapi.com/app2/img/expImg/jiuyi.jpg	021-64206088	http://www.jiuyicn.com	895	f
15077	华航快递	huahang	http://static.showapi.com/app2/img/expImg/huahang.jpg	400-0235-004	http://www.hz3pl.com	900	f
15078	跨越快递/跨越速运	kuayue	http://static.showapi.com/app2/img/expImg/kuayue.jpg	4008-098-098	http://www.ky-express.com	905	f
15079	捷特快递	jiete	http://static.showapi.com/app2/img/expImg/jiete.jpg	400-820-8585	http://www.jet185.com	910	f
15080	京世物流	jingshi	http://static.showapi.com/app2/img/expImg/jingshi.jpg	400-8808-994	http://www.156js.com	915	f
15081	南北快递	nanbei	http://static.showapi.com/app2/img/expImg/nanbei.jpg	400 007 3337	http://www.nbky.com.cn	920	f
15082	蒙速快递	mengsu	http://static.showapi.com/app2/img/expImg/mengsu.jpg	400-0471-565	http://www.mengsu.net	925	f
15083	平安达快递	pinganda	http://static.showapi.com/app2/img/expImg/pinganda.jpg	4006-230-009	http://www.padtf.com	930	f
15084	荣庆物流	rongqing	http://static.showapi.com/app2/img/expImg/rongqing.jpg	400-000-5656	http://www.rokin.cn	935	f
15085	瑞丰速递	ruifeng	http://static.showapi.com/app2/img/expImg/ruifeng.jpg	400-648-8528	http://www.rfsd88.com	940	f
15086	穗佳物流	suijia	http://static.showapi.com/app2/img/expImg/suijia.jpg	400-880-9771	http://www.suijiawl.com	945	f
15087	速腾快递	suteng	http://static.showapi.com/app2/img/expImg/suteng.jpg	400-650-6666	http://www.ste56.com	950	f
15088	思迈快递	simai	http://static.showapi.com/app2/img/expImg/simai.jpg	4008 778 168	http://www.smail56.com	955	f
15089	五环速递	wuhuan	http://static.showapi.com/app2/img/expImg/wuhuan.jpg	15721542843	http://www.wuhuansudi.com	960	f
15090	晟邦物流	shengbang	http://static.showapi.com/app2/img/expImg/shengbang.jpg	400-666-6066	http://www.3856.cc	965	f
15091	速呈宅配	suchengzhaipei	http://static.showapi.com/app2/img/expImg/suchengzhaipei.jpg	0991-3656861	http://www.sczpds.com	970	f
15092	星程宅配	xingchengzhaipei	http://static.showapi.com/app2/img/expImg/xingchengzhaipei.jpg	028-66009696	http://www.sccod.com	975	f
15093	燕文物流	yanwen	http://static.showapi.com/app2/img/expImg/yanwen.jpg	400-108-5656	http://www.yw56.com.cn	980	f
15094	纵行物流	zongxing	http://static.showapi.com/app2/img/expImg/zongxing.jpg	400-8808-994	http://www.156zx.com	985	f
15095	DHL快递	dhl	http://static.showapi.com/app2/img/expImg/dhl.jpg	400 888 3500	http://www.cn.dhl.com/zh.html	990	f
15096	AAE快递	aae	http://static.showapi.com/app2/img/expImg/aae.jpg	021-31150218|021-31150218	http://cn.aaeweb.com/	995	f
15097	Fedex联邦快递(国际)	fedex	http://static.showapi.com/app2/img/expImg/fedex.jpg	400-886-1888	https://www.fedex.com/cn/	1000	f
15098	飞狐快递	feihu	http://static.showapi.com/app2/img/expImg/feihu.jpg	010-51389299	http://www.feihukuaidi.com	1005	f
15099	顺丰速运	shunfeng	http://static.showapi.com/app2/img/expImg/shunfeng.jpg	95338	http://www.sf-express.com	1010	f
15100	春风物流	spring	http://static.showapi.com/app2/img/expImg/spring.jpg	021-62968358	http://www.spring56.com/	1015	f
15101	易达通快递	yidatong	http://static.showapi.com/app2/img/expImg/yidatong.jpg	09-8388681/09-8388690	http://www.qexpress.co.nz/	1020	f
15102	伍圆速递	F5XM		0592-5050535	http://www.f5xm.com/	1025	f
15103	DPEX快递	dpex	http://static.showapi.com/app2/img/expImg/dpex.jpg	4000633198	http://www.szdpex.com.cn	1030	f
15104	上大物流	SUNDAPOST		021-54477891	http://www.sundapost.net	1035	f
15105	文捷航空速递	GZWENJIE		020-36680069|86372740	http://www.wjexpress.com/	1040	f
15106	安捷快递	anjie	http://static.showapi.com/app2/img/expImg/anjie.jpg	053268005935|053268005985	http://www.anjelex.com/	1045	f
15107	远成物流	ycgky	http://static.showapi.com/app2/img/expImg/yuancheng.jpg	400-820-1646	http://www.ycgwl.com	1050	f
15108	UC优速快递	yousu	http://static.showapi.com/app2/img/expImg/yousu.jpg	400-1111-119	http://www.uce.cn/	1055	f
15109	嘉里大通	jldt	http://static.showapi.com/app2/img/expImg/jialidt.jpg	+852 2480 5958|+852 2410 3600	http://www.kerrylogistics.com/	1060	f
15110	冠达快递	guada		400-990-0088	http://www.gda-e.com.cn/	1065	f
15111	万博快递	wanbo	http://static.showapi.com/app2/img/expImg/wanbo.jpg	4006969688/0311-83035553/0311-83026090	http://www.wanboex.cn/	1070	f
15112	速通物流	sutong	http://static.showapi.com/app2/img/expImg/sutong.jpg	4006561185	http://www.sut56.com/	1075	f
15113	AOL快递	aol	http://static.showapi.com/app2/img/expImg/aol.jpg	020-36413533	http://www.aol-au.com	1080	f
15114	爱彼西快递	abc	http://static.showapi.com/app2/img/expImg/abc.jpg	400-711-8899/400-818-0571	http://www.abccod.com	1085	f
15115	D速快递	dsu	http://static.showapi.com/app2/img/expImg/dsu.jpg	0531-87927796/97/98/99	http://www.d-exp.cn	1090	f
15116	山东海红快递	haihong	http://static.showapi.com/app2/img/expImg/haihong.jpg	400-632-9988	http://www.haihongwangsong.com	1095	f
15117	急先达物流	jixianda	http://static.showapi.com/app2/img/expImg/jixianda.jpg	021-59766363	http://www.joust.net.cn/	1100	f
15118	申通快递	shentong	http://static.showapi.com/app2/img/expImg/shentong.jpg	400-889-5543	http://www.sto.cn	1105	f
15119	飞洋快递	feiyang	http://static.showapi.com/app2/img/expImg/feiyang.jpg	1-877-387-9799 / 626-527-5800	www.express.shipgce.com	1110	f
15120	RPX保时达	rpx	http://static.showapi.com/app2/img/expImg/rpx.jpg	+86 (21) 3409 6560	https://www.trackingmore.com/rpxonline-tracking/cn.html	1115	f
15121	黑狗物流	higo	http://static.showapi.com/app2/img/expImg/higo.png	400-106-1234	http://www.higo-express.com/	1120	f
15122	九曳供应链	jiuye	http://static.showapi.com/app2/img/expImg/jiuye.jpg	400-619-9939	http://www.jiuyescm.com/	1125	f
15123	方舟速递	arke	http://static.showapi.com/app2/img/expImg/arke.jpg	+61390088899|+61390089668	http://www.arkexpress.com.au	1130	f
15124	中外速运	zwsy	http://static.showapi.com/app2/img/expImg/zwsy.png	4006011092|0410932668	http://www.cnausu.com/	1135	f
15125	吉祥邮	jxy	http://static.showapi.com/app2/img/expImg/jxy.jpg	021-69950109	http://www.jixiangyou.com	1140	f
15126	国通快递	guotong	http://static.showapi.com/app2/img/expImg/guotong.jpg	95327	http://www.gto365.com/	1145	f
15127	Aramex	aramex	http://static.showapi.com/app2/img/expImg/aramex.jpg	+86 (0571) 85092777	http://www.aramex.com	1150	f
15128	佳怡物流	jiayi	http://static.showapi.com/app2/img/expImg/jiayi.jpg	400 631 9999	http://www.jiayi56.com	1155	f
15129	龙邦快运	longbang	http://static.showapi.com/app2/img/expImg/longbang.jpg	021-59218889	http://www.lbex.net/	1160	f
15130	民航快递	minhang	http://static.showapi.com/app2/img/expImg/cae.jpg	400-817-4008	http://www.cae.com.cn	1165	f
15131	快捷速递	kuaijie	http://static.showapi.com/app2/img/expImg/kuaijie.jpg	4008-333-666	http://www.kjkd.com/	1170	f
15132	全一快递	quanyi	http://static.showapi.com/app2/img/expImg/quanyi.jpg	400-663-1111	http://www.unitop-apex.com	1175	f
15133	全晨快递	quanchen	http://static.showapi.com/app2/img/expImg/qckd.jpg	0769-82026703	http://www.qckd.net	1180	f
15134	信丰物流	xinfeng	http://static.showapi.com/app2/img/expImg/xfkd.jpg	4008 306 333/0769-81518333	http://www.xf-express.com.cn	1185	f
15135	新邦物流	xinbang	http://static.showapi.com/app2/img/expImg/xbwl.jpg	4008-000-222	http://www.xbwl.cn	1190	f
15136	元智捷诚快递	yuanzhi	http://static.showapi.com/app2/img/expImg/yzjc.jpg	40008 12345	http://www.yjkd.com	1195	f
15137	USPS快递	usps	http://static.showapi.com/app2/img/expImg/usps.jpg	800-820-8388 / 400-820-8388	https://www.usps.com	1200	f
15138	中邮物流	zhongyou	http://static.showapi.com/app2/img/expImg/cnpl.jpg	11183	http://www.ems.com.cn/ems/logistics/search	1205	f
15139	海外环球	haiwaihuanqiu	http://static.showapi.com/app2/img/expImg/hwhq.jpg	010-59790107	https://www.haiwaihuanqiu.com/	1210	f
15140	中邮快递(澳邮)	cnpex	http://static.showapi.com/app2/img/expImg/zhkd.jpg	400 007 9988	http://www.zhexpress.com.au/	1215	f
15141	联邦物流	LBWL	http://static.showapi.com/app2/img/expImg/fedex.jpg	8009881888 4008861888	https://www.fedex.com/apps/fedextrack/?action=track&cntry_code=cn	1220	f
15142	盛丰物流	shengfeng	http://static.showapi.com/app2/img/expImg/shengfeng.jpg	0591-83621111	http://www.sfwl.com.cn	1225	f
15143	明亮物流	mingliang	http://static.showapi.com/app2/img/expImg/mingliang.jpg	400-035-6568	http://www.szml56.com	1230	f
15144	源伟丰快递	ywfex	http://static.showapi.com/app2/img/expImg/ywf.jpg	400-601-2228	http://www.ywfex.com	1235	f
15145	圆通速递	yuantong	http://static.showapi.com/app2/img/expImg/yuantong.jpg	021-69777888/95554	http://www.yto.net.cn	1240	f
15146	共速达物流	gongsuda	http://static.showapi.com/app2/img/expImg/gongsuda.jpg	400-111-0005	http://www.gongsuda.com	1245	f
15147	万象物流	wanxiang	http://static.showapi.com/app2/img/expImg/wanxiang.jpg	400-820-8088	http://www.ewinshine.com	1250	f
15148	中通快递	zhongtong	http://static.showapi.com/app2/img/expImg/zto.jpg	95311	http://www.zto.cn	1255	f
15149	全日通快递	quanritong	http://static.showapi.com/app2/img/expImg/qrt.jpg	020-86298999	http://www.at-express.com	1260	f
15150	万家物流	wanjia	http://static.showapi.com/app2/img/expImg/wjwl.jpg	021-51592929	http://www.manco-logistics.com	1265	f
15151	飞快达物流	feikuaida	http://static.showapi.com/app2/img/expImg/fkdwl.jpg	0755-88846030	https://www.fkd56.com/	1270	f
15152	运通快递	yuntong		0769-81156999	http://www.ytkd168.com	1275	f
15153	越丰快递	yuefeng	http://static.showapi.com/app2/img/expImg/yuefeng.jpg	852-23909969	http://www.yfexpress.com.hk	1280	f
15154	海盟速递	haimeng	http://static.showapi.com/app2/img/expImg/haimeng.jpg	400-080-6369	http://www.hm-express.com	1285	f
15155	EMS	ems	http://static.showapi.com/app2/img/expImg/ems.jpg	11183	http://www.ems.com.cn/	1290	f
15156	大田物流	datian	http://static.showapi.com/app2/img/expImg/datian.jpg	400-626-1166	http://www.dtw.com.cn	1295	f
15157	盛辉物流	shenghui	http://static.showapi.com/app2/img/expImg/shenghui.jpg	4008-222-222	http://www.shenghui56.com	1300	f
15158	全际通快递	quanjitong	http://static.showapi.com/app2/img/expImg/quanjitong.jpg	021-62966050	http://www.quanjt.com	1305	f
15159	联昊通快递	lianhaotong	http://static.showapi.com/app2/img/expImg/lht.jpg	4008888887	http://www.lhtex.com.cn	1310	f
15160	Fedex联邦快递(国内)	fedexcn	http://static.showapi.com/app2/img/expImg/fedexcn.jpg	400-886-1888	https://www.fedex.com/cn/	1315	f
15161	天地华宇物流	huayu	http://static.showapi.com/app2/img/expImg/huayu.jpg	400-808-6666	http://www.hoau.net	1320	f
15162	源安达快递	yad	http://static.showapi.com/app2/img/expImg/yuananda.jpg	0769-85157789	http://www.yadex.com.cn/	1325	f
15163	TNT快递	tnt	http://static.showapi.com/app2/img/expImg/tnt.jpg	800-820-9868	http://www.tnt.com.cn	1330	f
15164	港中能达快递	nengda	http://static.showapi.com/app2/img/expImg/nengda.jpg	021-60739320	http://www.nd56.com	1335	f
15165	原飞航快递	feihang	http://static.showapi.com/app2/img/expImg/feihang.jpg	0755-29778899,29778100	http://www.yfhex.com	1340	f
15166	中天万运快递	ztwy		0531-68850629	http://www.wanyun56.cn	1345	f
15167	安信达快递	anxinda	http://static.showapi.com/app2/img/expImg/axd.jpg	021-54224681|54224682|54224685	http://www.anxinda.com	1350	f
15168	飞康达物流	fkd	http://static.showapi.com/app2/img/expImg/fkd.jpg	010-84223376,010-84223378	http://www.fkd.com.cn	1355	f
15169	全峰快递	quanfeng	http://static.showapi.com/app2/img/expImg/quanfeng.jpg	400-100-0001	http://www.qfkd.com.cn	1360	f
15170	华夏龙物流	huaxialong	http://static.showapi.com/app2/img/expImg/huaxialong.jpg	4007-166-133	http://www.china-loong.cn/	1365	f
15171	圣安物流	shengan	http://static.showapi.com/app2/img/expImg/shengan.jpg	4006-618-169	http://www.sa56.net	1370	f
15172	佳吉物流	jiaji	http://static.showapi.com/app2/img/expImg/jiaji.jpg	400-820-5566	http://www.jiaji.com	1375	f
15173	韵达速递	yunda	http://static.showapi.com/app2/img/expImg/yunda.jpg	95546	http://www.yundaex.com	1380	f
15174	UPS快递	ups	http://static.showapi.com/app2/img/expImg/ups.jpg	400-820-8388	http://www.ups.com/cn	1385	f
15175	亚风速递	yafeng	http://static.showapi.com/app2/img/expImg/yafeng.jpg	400-628-0018	http://www.broad-asia.net	1390	f
15176	百世快递(原汇通)	huitong	http://static.showapi.com/app2/img/expImg/ht.jpg	95320	http://www.800bestex.com/	1395	f
15177	澳邮中国快运	auexpress	http://static.showapi.com/app2/img/expImg/8668.gif	4000079988	http://www.auexpress.com.au/	1400	f
15178	德邦快递/物流	debang	http://static.showapi.com/app2/img/expImg/dbwl_logo.gif	95353	http://www.deppon.com	1405	f
15179	安能物流	anneng	http://www.ane56.com/them/images/logo1.png	95344	http://www.ane56.com/	1410	f
15180	中国邮政包裹/平邮/挂号信	youzhengguonei	http://static.showapi.com/app2/img/expImg/8059.gif	11183	http://yjcx.chinapost.com.cn/zdxt/yjcx/	1415	f
15418	德豪驿	dehaoyi				2605	f
15182	博源恒通	byht	http://static.showapi.com/app2/img/expImg/1667.gif	15834177000	http://www.56soft.com/	1425	f
15183	百成大达物流	idada	http://static.showapi.com/app2/img/expImg/6468.gif	400-098-5656	http://www.idada56.com/	1430	f
15184	巴伦支快递	balunzhi	http://static.showapi.com/app2/img/expImg/balunzhi.gif	400-885-6561	http://cnbd.hendari.com/	1435	f
15185	笨鸟海淘	birdex	http://static.showapi.com/app2/img/expImg/4630.gif	4008-890-788	http://birdex.cn/	1440	f
15186	百事亨通	bsht	http://static.showapi.com/app2/img/expImg/1223.gif	400-185-6666	http://www.bsht-express.com	1445	f
15187	奔腾物流	benteng	http://static.showapi.com/app2/img/expImg/7887.gif	0531-89005678	http://www.benteng56.com/	1450	f
15188	大洋物流快递	dayang	http://static.showapi.com/app2/img/expImg/dayang.jpg	400-820-0088	http://www.dayang365.cn	1455	f
15189	CE易欧通国际速递	cloudexpress	http://static.showapi.com/app2/img/expImg/4265.gif			1460	f
15190	东红物流	donghong	http://static.showapi.com/app2/img/expImg/donghong.gif	400 008 1556	http://www.dhwuliu.com/	1465	f
15191	德创物流	dechuangwuliu	http://static.showapi.com/app2/img/expImg/3036.gif	4006-989-833	http://www.dc56.cn/	1470	f
15192	东瀚物流	donghanwl	http://static.showapi.com/app2/img/expImg/3936.gif	13818936083	http://donghan.56hui.com/	1475	f
15193	东骏快捷物流	dongjun	http://static.showapi.com/app2/img/expImg/3198.gif	028-85538888	http://www.dj56.cc	1480	f
15194	达方物流	dfpost	http://static.showapi.com/app2/img/expImg/2743.gif	400 700 7049	http://www.dfpost.com	1485	f
15195	叮咚澳洲转运	dindon	http://static.showapi.com/app2/img/expImg/6996.gif	010-57853244	http://exp.dindonbang.com/index.aspx	1490	f
15196	大众佐川急便	dazhong	http://static.showapi.com/app2/img/expImg/5388.gif	(+86)02154113526	http://www.sagawa-cn.com/cn/	1495	f
15197	德方物流	ahdf	http://static.showapi.com/app2/img/expImg/748.gif	055165883415	http://www.ahdf56.com/	1500	f
15198	德中快递	decnlh	http://static.showapi.com/app2/img/expImg/523.gif	069 42 603711	http://www.decnlh.de/	1505	f
15199	德坤物流	dekuncn	http://static.showapi.com/app2/img/expImg/5724.gif	400-830-8686	http://www.dekuncn.com/	1510	f
15200	达速物流	dasu	http://static.showapi.com/app2/img/expImg/7808.gif	0592-5215900	http://www.dasu-express.com/	1515	f
15201	俄顺达	eshunda	http://static.showapi.com/app2/img/expImg/9833.gif	88003019226	http://www.007ex.com/	1520	f
15202	EWE全球快递	ewe	http://static.showapi.com/app2/img/expImg/2756.gif	+862155961727	https://www.ewe.com.au	1525	f
15203	FedEx英国	fedexuk	http://static.showapi.com/app2/img/expImg/2311.gif	+442476706660	https://www.fedex.com/gb/	1530	f
15204	凡客如风达	rufengda	http://static.showapi.com/app2/img/expImg/562.gif	400-010-6660	http://www.rufengda.com	1535	f
15205	FOX国际速递	fox	http://static.showapi.com/app2/img/expImg/3339.gif	400-965-8885	http://www.foxglobal.nl/	1540	f
15206	泛远国际物流	farlogistis	http://static.showapi.com/app2/img/expImg/7889.gif	400-6816-676|400-6828-918	http://www.farlogistics.com/	1545	f
15207	港快速递	gangkuai	http://static.showapi.com/app2/img/expImg/gangkuai.jpg	4001-133-333	http://www.gksd.cn	1550	f
15208	颿达国际快递	fandaguoji	http://static.showapi.com/app2/img/expImg/2301.gif	400-888-2000	http://www.fardar.com/	1555	f
15209	黄马甲快递	huangmajia	http://static.showapi.com/app2/img/expImg/7616.gif	029-96128	http://www.huangmajia.com/	1560	f
15210	华宇物流	tiandihuayu	http://static.showapi.com/app2/img/expImg/8122.gif	400-808-6666	https://www.hoau.net/how/bse/index.action	1565	f
15211	广通速递（山东）	gtongsudi	http://static.showapi.com/app2/img/expImg/4342.gif	4008015567	http://www.gto56.com/	1570	f
15212	皇家物流	pfcexpress	http://static.showapi.com/app2/img/expImg/2973.gif	4008-238-828	http://www.pfcexpress.com/	1575	f
15213	合众速递	ucs	http://static.showapi.com/app2/img/expImg/ucs.jpg	024-31515566	http://www.ucsus.net/cn/	1580	f
15214	京广速递快件	jinguangsudikuaijian	http://static.showapi.com/app2/img/expImg/7436.gif	0769-88629888	http://www.szkke.com/	1585	f
15215	骏丰国际速递	junfengguoji	http://static.showapi.com/app2/img/expImg/8633.gif	0773-2218104	http://www.peakmorepost.com/	1590	f
15216	好又快物流	haoyoukuai	http://static.showapi.com/app2/img/expImg/5612.gif	400-800-3838	http://www.ff56.com.cn/	1595	f
15217	佳家通	jiajiatong56	http://static.showapi.com/app2/img/expImg/7897.gif	4008-056-356	http://www.jiajiatong56.com/	1600	f
15218	蓝弧快递	lanhu	http://static.showapi.com/app2/img/expImg/3615.gif	4000661646	http://www.lanhukd.com/	1605	f
15219	锦程国际物流	jinchengwuliu	http://static.showapi.com/app2/img/expImg/4601.gif	400-020-5556	http://www.jc56.com/	1610	f
15220	闽盛物流	minsheng	http://static.showapi.com/app2/img/expImg/minsheng.jpg	4008603386	http://www.lymswl.com/	1615	f
15221	美通快递	valueway	http://static.showapi.com/app2/img/expImg/217.gif	905-766-1111	http://www.valueway.net/main.html	1620	f
15222	麦力快递	mailikuaidi	http://static.showapi.com/app2/img/expImg/6623.gif	400-0000-900	http://www.mailikuaidi.com/	1625	f
15223	美快国际物流	meiquick	http://static.showapi.com/app2/img/expImg/6835.gif	020-39141092	http://www.meiquick.com/	1630	f
15224	偌亚奥国际	nuoyaao	http://static.showapi.com/app2/img/expImg/8815.gif	4008 871 871	http://www.royaleinternational.com/	1635	f
15225	欧亚专线	euasia	http://static.showapi.com/app2/img/expImg/2325.gif	+31 88 668 1277	http://www.euasia.eu/	1640	f
15226	品骏快递	pjbest	http://static.showapi.com/app2/img/expImg/4614.gif	400-9789-888	http://www.pjbest.com/index	1645	f
15227	秦邦快运	qbexpress	http://static.showapi.com/app2/img/expImg/9034.gif			1650	f
15228	全信通快递	quanxintong	http://static.showapi.com/app2/img/expImg/2083.gif	400-8826886/0755-61968518	http://www.all-express.com.cn/	1655	f
15229	全速通国际快递	quansutong	http://static.showapi.com/app2/img/expImg/9398.gif	03-95704815	http://www.linkglobalexpress.com/	1660	f
15230	秦远物流	qinyuan	http://static.showapi.com/app2/img/expImg/4484.gif	09-8372888	http://www.chinz56.co.nz/	1665	f
15231	全速快运	quansu	http://static.showapi.com/app2/img/expImg/1084.jpg	400-679-3883	http://www.fsexp.com.au/	1670	f
15232	启辰国际物流	qichen	http://static.showapi.com/app2/img/expImg/4181.gif	00852-31166708	http://www.qichen.hk/	1675	f
15419	优联吉运	uluckex				2610	f
15518	韵丰物流	yunfeng56				3105	f
15233	全时速运	runhengfeng	http://static.showapi.com/app2/img/expImg/836.gif	4000151661	http://www.360-express.com/	1680	f
15234	全之鑫物流	qzx56	http://static.showapi.com/app2/img/expImg/4814.gif	400-080-5658	http://www.qzx56.com/	1685	f
15235	千顺快递	qskdyxgs	http://static.showapi.com/app2/img/expImg/709.gif	4000-444-668	http://www.qskdyxgs.com/	1690	f
15236	日昱物流	riyu	http://static.showapi.com/app2/img/expImg/riyu.jpg	4009888588	http://www.rywl.cn/	1695	f
15237	世运快递	shiyun		400-666-1111	http://www.sehoex.com/	1700	f
15238	瑞达国际速递	ruidaex	http://static.showapi.com/app2/img/expImg/9766.gif	15221164208	www.ruidaex.com	1705	f
15239	日益通速递	rytsd	http://static.showapi.com/app2/img/expImg/8369.gif	400-041-5858	http://www.rytbj.com/	1710	f
15240	山西红马甲	sxhongmajia	http://static.showapi.com/app2/img/expImg/150.gif	0351-5225858	http://www.hmj.com.cn/	1715	f
15241	上海林道货运	shlindao	http://static.showapi.com/app2/img/expImg/5298.gif	4008-200-112	http://www.ldxpress.com/	1720	f
15242	沈阳佳惠尔	syjiahuier	http://static.showapi.com/app2/img/expImg/7671.gif	400-013-9908	http://www.jhekd.com/	1725	f
15243	十方通物流	sfift	http://static.showapi.com/app2/img/expImg/7552.gif			1730	f
15244	顺捷丰达	shunjiefengda	http://static.showapi.com/app2/img/expImg/2752.gif	0769-89938555	http://www.sjfd-express.com/	1735	f
15245	速必达物流	subida	http://static.showapi.com/app2/img/expImg/7884.gif	0752-2562638	http://www.speedex.com.cn/	1740	f
15246	速递中国	sendtochina	http://static.showapi.com/app2/img/expImg/4738.gif	01293 537 035	https://send2china.co.uk/	1745	f
15247	速方国际物流	bphchina	http://static.showapi.com/app2/img/expImg/7190.gif	4006600202	http://www.soonfun.com.cn/	1750	f
15248	顺通快递	stkd	http://static.showapi.com/app2/img/expImg/2568.gif	400-113-8789	http://www.st-kd.com/	1755	f
15249	苏宁快递	suning	http://static.showapi.com/app2/img/expImg/5122.gif	95315	http://wuliu.suning.com/	1760	f
15250	四海快递	sihaiet	http://static.showapi.com/app2/img/expImg/9321.gif	400-6666-337	http://www.sihaiet.com/	1765	f
15251	同舟行物流	chinatzx	http://static.showapi.com/app2/img/expImg/7162.gif	18062512813|18062699168	http://www.chinatzx.com/	1770	f
15252	天纵物流	tianzong	http://static.showapi.com/app2/img/expImg/4556.gif	400-990-8816	http://www.tianzong56.cn/	1775	f
15253	腾达速递	nntengda	http://static.showapi.com/app2/img/expImg/5885.gif	400663199	http://www.tengdawl.com/index.php/form/track	1780	f
15254	通达兴物流	tongdaxing	http://static.showapi.com/app2/img/expImg/4050.gif	4001-006-609	http://www.tongdaxing.com/	1785	f
15255	天联快运	tlky	http://static.showapi.com/app2/img/expImg/9140.gif	400-133-5256	http://www.tl5256.com/	1790	f
15256	泰国138	sd138	http://static.showapi.com/app2/img/expImg/3684.gif	0850340287 /0634516138 /0836402696	http://www.138sd.net/	1795	f
15257	UEQ快递	ueq	http://static.showapi.com/app2/img/expImg/7825.gif	020-37639835	http://www.ueq.com/track/	1800	f
15258	微特派快递	weitepai		400-606-0909	http://www.vtepai.com	1805	f
15259	万家通	timedg	http://static.showapi.com/app2/img/expImg/498.gif			1810	f
15260	微转运	wzhaunyun	http://static.showapi.com/app2/img/expImg/972.gif	4008699273	http://www.wzhuanyun.com/	1815	f
15261	渥途国际速运	wotu	http://static.showapi.com/app2/img/expImg/6571.gif	004917656935818	http://www.wotu.eu/	1820	f
15262	万通快递	gswtkd	http://static.showapi.com/app2/img/expImg/2238.gif	400-006-1888	http://www.gswtkd.com/	1825	f
15263	威时沛运	wtdchina	http://static.showapi.com/app2/img/expImg/5851.gif	020-86767799	http://www.wtdchina.com/	1830	f
15264	喜来快递	xilaikd	http://static.showapi.com/app2/img/expImg/8205.gif	4008-623-966	https://www.xilaikd.com/	1835	f
15265	鑫世锐达	xsrd	http://static.showapi.com/app2/img/expImg/3238.gif			1840	f
15266	西安城联速递	xianchenglian	http://static.showapi.com/app2/img/expImg/xianchengliansudi.gif	029-89113508	http://www.city-link.net.cn/	1845	f
15267	鑫通宝物流	xtb	http://static.showapi.com/app2/img/expImg/5139.gif	13834168880	www.xtb56.com	1850	f
15268	信天捷快递	xintianjie	http://static.showapi.com/app2/img/expImg/1620.gif	400-718-7518	http://www.bjxintianjie.com/	1855	f
15269	新速航	sunspeedy	http://static.showapi.com/app2/img/expImg/392.gif	852-64797448	http://www.sunspeedy.hk	1860	f
15270	西安胜峰	xaetc	http://static.showapi.com/app2/img/expImg/1707.gif	400-029-8171	http://www.xaetc.cn/	1865	f
15271	先锋快递	xianfeng	http://static.showapi.com/app2/img/expImg/6179.gif	95040355779	http://www.xianfengex.com/	1870	f
15272	新顺丰（NSF）	nsf	http://static.showapi.com/app2/img/expImg/1972.gif	0064-9-5258288	http://www.nsf.nz/	1875	f
15273	西邮寄	xipost	http://static.showapi.com/app2/img/expImg/8806.gif	400-0911-882	http://www.xipost.com/	1880	f
15274	易通达	yitongda		0898-65339299	http://www.etd365.com/	1885	f
15275	信联通	sinatone	http://static.showapi.com/app2/img/expImg/5136.gif	4008-290-296	http://www.sinatone.com	1890	f
15276	新杰物流	sunjex	http://static.showapi.com/app2/img/expImg/6149.gif	4006202828	http://www.sunjex.com/	1895	f
15277	煜嘉物流	yujiawuliu	http://static.showapi.com/app2/img/expImg/4714.gif			1900	f
15278	英脉物流	gml	http://static.showapi.com/app2/img/expImg/8606.gif	400-880-5088	http://www.gml.cn/	1905	f
15279	云豹国际货运	leopard	http://static.showapi.com/app2/img/expImg/8958.gif	4006681818	http://www.lwe.cc/	1910	f
15280	一柒物流	yiqiguojiwuliu	http://static.showapi.com/app2/img/expImg/5427.gif	001-(971) 238-9990	http://www.17htb.com/	1915	f
15281	邮必佳	youbijia	http://static.showapi.com/app2/img/expImg/youbijia.gif	400-687-8123	http://www.ubjia.com/	1920	f
15282	亿领速运	yilingsuyun	http://static.showapi.com/app2/img/expImg/4216.gif	400-1056-400	http://www.yelee.com.cn/	1925	f
15283	云南中诚	czwlyn	http://static.showapi.com/app2/img/expImg/8659.gif			1930	f
15284	御风速运	yufeng	http://static.showapi.com/app2/img/expImg/6593.gif	400-611-3348	http://www.shyfwl.cn/	1935	f
15285	永昌物流	yongchang	http://static.showapi.com/app2/img/expImg/7577.gif	400-0000-149	http://www.yongchang56.cn/	1940	f
15286	优配速运	sdyoupei	http://static.showapi.com/app2/img/expImg/7024.gif	0531 89977777	http://www.sdyoupei.com/	1945	f
15287	优速通达	yousutongda	http://static.showapi.com/app2/img/expImg/4436.gif	400-651-8331	http://www.yousutongda8.com/	1950	f
15288	亿顺航	yishunhang	http://static.showapi.com/app2/img/expImg/2079.gif	4006-018-268	http://www.igoex.com/	1955	f
15289	亚马逊物流	yamaxunwuliu	http://static.showapi.com/app2/img/expImg/1200.gif	400-910-5669	https://ship.amazon.cn/freight/welcome?locale=zh_CN	1960	f
15290	永旺达快递	yongwangda	http://static.showapi.com/app2/img/expImg/1232.gif	400-0607-290	http://www.yongwangda8.com/	1965	f
15291	易客满	ecmscn	http://static.showapi.com/app2/img/expImg/4900.gif	+86 4000861756	http://www.ecmsglobal.com/cn/index.html	1970	f
15292	益递物流	edlogistics	http://static.showapi.com/app2/img/expImg/5161.gif	021-64050106	http://www.ed-logistics.net/	1975	f
15293	远洋国际	yyexpress	http://static.showapi.com/app2/img/expImg/9001.gif	949-335-2888	http://www.yy-express.com/IndexServlet	1980	f
15294	一号仓	onehcang	http://static.showapi.com/app2/img/expImg/9683.gif	0755-89391361	http://www.1hcang.com/	1985	f
15295	英超物流	yingchao	http://static.showapi.com/app2/img/expImg/5385.gif	+44 (0) 121 3680088	https://www.51parcel.com/	1990	f
15296	中睿速递	zhongruisudi	http://static.showapi.com/app2/img/expImg/5302.gif	400-0375-888	http://www.zorel.cn/	1995	f
15297	壹品速递	ypsd	http://static.showapi.com/app2/img/expImg/5434.gif	4000759557	http://www.yipin-express.com/	2000	f
15298	CityLink快递	citylink	http://static.showapi.com/app2/img/expImg/citylink.jpg	1300-88-2489 603-5565 8399	http://www.citylinkexpress.com	2005	f
15299	一号线	lineone	http://static.showapi.com/app2/img/expImg/5819.gif	(08) 6113 7357	http://www.line-1.com.au/	2010	f
15300	百世快运	bsky	http://static.showapi.com/app2/img/expImg/ht.jpg	400-8856-561	http://www.800best.com/	2015	f
15301	澳大利亚PCA快递	pca	http://static.showapi.com/app2/img/expImg/pca.jpg	1800 518 000	https://www.pcaexpress.com.au/zh/%E9%A6%96%E9%A1%B5/	2020	f
15302	郑州建华快递	zzjh		0371-65995266	http://www.zzjhtd.com	2025	f
15303	邮亚物流	youYa		400-106-1234	http://uryard.com/	2030	f
15304	新西兰平安快递	efs	http://static.showapi.com/app2/img/expImg/efsPost.png	0773-2311930	http://www.efspost.com/	2035	f
15305	海米派供应链	haiMiPai	http://static.showapi.com/app2/img/expImg/haimipai.png	400-600-4800	http://www.haimibuy.com/	2040	f
15306	易联通达物流	el56	http://static.showapi.com/app2/img/expImg/5588.gif	400-0755-556	http://www.yltd360.com/	2045	f
15307	鹰运国际速递	vipexpress	http://static.showapi.com/app2/img/expImg/3904.gif	13424091303	http://www.vip-express.com.au/yy/index.action	2050	f
15308	一运全成物流	yyqc56	http://static.showapi.com/app2/img/expImg/8884.gif	400-635-5566	http://www.yyqc56.com/	2055	f
15309	中铁快运	zhongtie	http://static.showapi.com/app2/img/expImg/ztky.jpg	95572	http://www.cre.cn/	2060	f
15310	中外运速递	zhongwaiyun	http://static.showapi.com/app2/img/expImg/5922.gif	010-8041 8611	http://www.sinoex.com.cn/index.aspx	2065	f
15311	中铁飞豹物流	ZTKY	http://static.showapi.com/app2/img/expImg/zhongtiewl.jpg	400 000 5566	http://www.fb56.com/	2070	f
15312	增益速递	zengyisudi	http://static.showapi.com/app2/img/expImg/6881.gif	400-628-7926	http://www.zeny-express.com/	2075	f
15313	郑州速捷	sujievip	http://static.showapi.com/app2/img/expImg/6047.gif			2080	f
15314	至诚通达快递	zhichengtongda	http://static.showapi.com/app2/img/expImg/4734.gif	400-1518-918	http://www.zctdky.com/	2085	f
15315	智通物流	ztong	http://static.showapi.com/app2/img/expImg/8688.gif	4000561818	http://www.ztong56.com/	2090	f
15316	中运全速	topspeedex	http://static.showapi.com/app2/img/expImg/6387.gif	010-65175288|010-65175388	http://www.topspeedex.com.cn/	2095	f
15317	众辉达物流	zhdwl	http://static.showapi.com/app2/img/expImg/7494.gif	400-622-6193	http://www.zhdpt.com/	2100	f
15318	直邮易	kuachangwuliu	http://static.showapi.com/app2/img/expImg/6293.gif	4000381917|020-38937441	http://www.zhiyouyi.xin/	2105	f
15319	准实快运	zsky123	http://static.showapi.com/app2/img/expImg/3021.gif	4000-200-288	http://www.zsky123.com/	2110	f
15320	飞远物流	feiyuan	http://static.showapi.com/app2/img/expImg/feiyuan.jpg	400 703 1313	http://www.fyps.cn	2115	f
15321	中欧快运	otobv	http://static.showapi.com/app2/img/expImg/6030.gif	088-188-8989	http://www.otobv.com/CN/	2120	f
15322	一邦快递	yibang	http://static.showapi.com/app2/img/expImg/guotong.jpg	4008-000-666	http://www.ebon-express.com/	2125	f
15323	华企快运	huaqi	http://static.showapi.com/app2/img/expImg/huaqi.jpg	400-806-8111	http://www.hqkd.cn/	2130	f
15324	城际速递	chengji	http://static.showapi.com/app2/img/expImg/chengjisudi.gif	4000-523-525	http://chengji-express.com/	2135	f
15325	宅急送	zhaijisong	http://static.showapi.com/app2/img/expImg/zjs_logo.gif	4006-789-000	http://www.zjs.com.cn	2140	f
15326	中国邮政快递/包裹/挂号信/小包	pingyou	http://static.showapi.com/app2/img/expImg/pingyou.jpg	11185	http://www.chinapost.com.cn	2145	f
15327	天天快递	tiantian	http://static.showapi.com/app2/img/expImg/tt.jpg	400-188-8888	http://www.ttkdex.com/	2150	f
15328	56快运	wuliu	http://static.showapi.com/app2/img/expImg/56express.png	400-856-2988	http://www.56ky.cn/wdserver/	2155	f
15329	迈速快递	maxeed	http://static.showapi.com/app2/img/expImg/maxeed.jpg	400-080-1209|0415375033	http://www.maxeedexpress.com/	2160	f
15330	捷安达国际速递	giant	http://static.showapi.com/app2/img/expImg/giant.png	03 9544 8304/0449776168	http://www.giantpost.com.au/	2165	f
15331	大达物流	dada	http://static.showapi.com/app2/img/expImg/dada.jpg	400-098-5656	http://www.idada56.com/	2170	f
15332	城市应急	cityYj	http://static.showapi.com/app2/img/expImg/cityYj.png	0769-8551-5555	http://www.city56.com	2175	f
15333	速尔物流	sure	http://static.showapi.com/app2/img/expImg/sure.jpg	4001-589-888	http://www.sure56.com	2180	f
15334	加运美物流	jiayunmei	http://static.showapi.com/app2/img/expImg/jym56.jpg	0769-8551-5555	http://www.jym56.cn/	2185	f
15335	大道物流	ddwl	http://static.showapi.com/app2/img/expImg/ddlogo.png	027-83550339	http://www.ddwl.com.cn/	2190	f
15336	合众兴物流	hzx	http://static.showapi.com/app2/img/expImg/hzx_logo.jpg	028-8946088	http://www.ailcn.com/index.html	2195	f
15337	泛捷国际速递 	panex	http://static.showapi.com/app2/img/expImg/panex.png	0769-8551-5555	http://www.epanex.com	2200	f
15338	优邦速运	ybsy	http://static.showapi.com/app2/img/expImg/ybsy.png	400-902-6800 / 021-3994 4791	http://www.youbang56.com/	2205	f
15339	宇鑫物流	yuxin	http://static.showapi.com/app2/img/expImg/yuxinwl.jpg	400-600-5566	http://www.yx56.cn/	2210	f
15340	中通快运	ztoKy	http://static.showapi.com/app2/img/expImg/zto_wl_logo.png	4000 270 270	http://www.zto56.com	2215	f
15341	中国邮政小包	gnxb	http://static.showapi.com/app2/img/expImg/pingyou.jpg	11185/11183	http://www.chinapost.com.cn	2220	f
15342	利通物流UBI	ubi		021-61047198	http://www.gotoubi.com/services/ch/project.html	2225	f
15343	欧速通	ost		+86 10 67762567	http://www.sprintpack.com.cn/	2230	f
15344	转运四方	zysf		4008-311333	http://www.transrush.com/	2235	f
15345	洋包裹	iparcel	http://static.showapi.com/app2/img/expImg/iparcel_logo.png	+852 69480545	http://www.yangbaoguo.com/	2240	f
15346	西翼物流	westwing	http://static.showapi.com/app2/img/expImg/xiyi.png	400-9936-911	http://www.westwingexpress.com/	2245	f
15347	鸿泰物流	hnht	http://www.hnht56.com/style/images/logo.png	400-8607777	http://www.hnht56.com/	2250	f
15348	嘉里快递（超峰）	jlkd	http://www.kerryexpress.com.tw/images/logo.png	+886 2 33225568	http://www.kerryexpress.com.tw	2255	f
15349	锦程快递	jincheng		1-905-479-6699	http://www.hr-ex.com/ch	2260	f
15350	远成快运	ycky		400-168-1111	http://www.ycgky.com/	2265	f
15351	易境达国际物流	yiJingDa		020-22091198	http://www.uscbexpress.com/	2270	f
15352	银捷速递	yinjie	http://www.ckd.cn/static/corp_logo/yinjie_logo.png	0755-88999000	http://www.china-fec.com/	2275	f
15353	中骅物流	zhwl	http://www.chunghwa56.com/static/front/images/logo_1.jpg	400-820-6656	http://www.chunghwa56.com/f	2280	f
15354	香港日日通国际速递	rrt		00852-21581855	http://www.rrt-hk.com/	2285	f
15355	中尔物流	zhonger		0755-27777714	http://www.zgr168.com/	2290	f
15356	美国汉邦快递	hangbang		400-687-7878	http://q.aplus100.com/	2295	f
15357	壹米滴答	ymdd		4008-311-311	http://www.yimidida.com/home/home.jsp	2300	f
15358	新干线快递	anlexpress		+1（516）424-4644	http://www.anlexpress.com/contact-us/	2305	f
15359	天马迅达	tmxd		626-855-3088	http://www.expresstochina.com/	2310	f
15360	转运中国	zyzg		010-83035916	http://track.uszcn.com/	2315	f
15361	快马速递	kuaima			http://www.kuaima789.com/	2320	f
15362	中加国际	zhongjia		（604）207-0338	http://scicglobal.com/	2325	f
15363	铁中快运	tiezhong		400-6666-386	http://www.tzky.cn/	2330	f
15364	万庚国际	wanggeng		＋64(0)9 -527 7661/ ＋64(0)9 -527 7662	http://www.vexp.nz/index.php	2335	f
15365	宅急便	zhaijibian		4008-56-56-56	http://www.ta-q-bin.sh.cn/	2340	f
15366	斑马物流	banma	http://www.360zebra.com/img/zb-logo.png	400-7200-400	http://www.360zebra.com/	2345	f
15367	富腾达	ftd		09-4432342/ 4436934	http://www.ftd.nz/	2350	f
15368	澳行快递	aoxing		0405 028 666 / 02 9748 1997	http://www.aoxexpress.com/	2355	f
15369	安达易	adi		0153790623|0153790922|0760523960	http://www.adiexpress.fr/contact_us	2360	f
15370	东方汇	dfh		400-021-5050	http://www.est365.com/search	2365	f
15371	金岸物流	goon		400-889--7868	http://www.goon888.com/	2370	f
15372	今枫国际快运	maple			http://www.maple-express.ca/	2375	f
15373	败欧洲	baiEurope		+49 7251 72358	http://www.8europe.com/	2380	f
15374	贝海国际速递	xlobo			http://www.xlobo.com/Default.aspx	2385	f
15375	增速跨境	zyzoom		010-80467250,010-80467230转613	http://www.zyzoom.cn/c2c/	2390	f
15376	迅达速递	xdexpress		03 95447322 / 85242396	http://www.xdexpress.com.au/	2395	f
15377	南方传媒物流	nfcmwl			http://nfcmwl.com/	2400	f
15378	纵通速运	ynztsy		4008788744	http://www.ynztsy.com/	2405	f
15379	众川国际	zhongchuan			http://www.zhongchuan56.com/	2410	f
15380	陆本速递	luben		（08）9478 4837 | 0413 686 354	https://www.luben.com.au//#/	2415	f
15381	八达通物流	bdt		0755-29196411	http://www.8dt.hk/	2420	f
15382	星空国际速递	wlwex		0513-89116889 | 1510-5090129	http://www.wlwex.com	2425	f
15383	宁夏万家通快递	wanjiatong		4008567136	http://wanjiatong.hkhost31.usm168.com/	2430	f
15384	蓝天快递	bluesky		4008886890	http://www.blueskyexpress.com.au/	2435	f
15385	鹏远国际速递	pengyuan		(510) 378-8967	http://www.pengyuanexpress.com/	2440	f
15386	黑猫速递	heimao		400-138-3878	http://www.heimao56.com/inquire.php?#dw	2445	f
15387	长江国际速递	changjiang		墨尔本客服电话: (03)8838 2723; (03)8838 0804 | 悉尼客服电话: (02)9748 6756; (02)9748 4062	http://www.changjiangexpress.com/	2450	f
15388	苏通快运	stong		4009911185	http://www.zjstky.com/stweb/order/list.htm	2455	f
15389	中环转运	zhonghuanus		4006739555	http://www.zhonghuanus.com	2460	f
15390	中环国际快递	zhonghuan		4006739555	http://www.zhonghuan.com.au/pass/client/main	2465	f
15391	极地快递	polarexpress		+03 9468 5253	https://www.polarexpress.com.au/	2470	f
15392	海带宝	haidaibao				2475	f
15393	德国邮政(Deutsche Post)	deutschepost				2480	f
15394	宜送物流	yiex				2485	f
15395	澳通华人物流	cllexpress				2490	f
15396	TRAKPAK	trakpak				2495	f
15397	云达通	ydglobe				2500	f
15398	中国香港(HongKong Post)英文	hkposten				2505	f
15399	杭州海关	hzcustoms				2510	f
15400	广州海关	gzcustoms				2515	f
15401	EU-EXPRESS	euexpress				2520	f
15402	南京海关	njcustoms				2525	f
15403	北京海关	bjcustoms				2530	f
15404	一站通快递	zgyzt				2535	f
15405	驿扬国际速运	iyoungspeed				2540	f
15406	途鲜物流	ibenben				2545	f
15407	豌豆物流	wandougongzhu				2550	f
15408	哥士传奇速递	gscq365				2555	f
15409	安的快递	gda				2560	f
15410	ME物流	macroexpressco				2565	f
15411	心怡物流	alog				2570	f
15412	美国申通	stoexpress				2575	f
15413	中远e环球	cosco				2580	f
15414	法国邮政小包（colissimo）	colissimo				2585	f
15415	明大快递	adaexpress				2590	f
15416	捷记方舟	ajexpress				2595	f
15417	顺达快递	sundarexpress				2600	f
15420	阿根廷邮政(Correo Argentina)	correoargentino				2615	f
15421	哈萨克斯坦邮政(Kazpost)	kazpost				2620	f
15422	秘鲁邮政(SERPOST)	peru				2625	f
15423	黑猫雅玛多	yamato				2630	f
15424	华通快运	htongexpress				2635	f
15425	吉尔吉斯斯坦邮政(Kyrgyz Post)	kyrgyzpost				2640	f
15426	拉脱维亚邮政(Latvijas Pasts)	latvia				2645	f
15427	黎巴嫩邮政(Liban Post)	libanpost				2650	f
15428	立陶宛邮政（Lietuvos paštas）	lithuania				2655	f
15429	马耳他邮政（Malta Post）	malta				2660	f
15430	马尔代夫邮政(Maldives Post)	maldives				2665	f
15431	马其顿邮政(Macedonian Post)	macedonia				2670	f
15432	新西兰邮政（New Zealand Post）	newzealand				2675	f
15433	摩尔多瓦邮政(Posta Moldovei)	moldova				2680	f
15434	突尼斯邮政EMS(Rapid-Poste)	tunisia				2685	f
15435	塞浦路斯邮政(Cyprus Post)	cypruspost				2690	f
15436	塞尔维亚邮政(PE Post of Serbia)	serbia				2695	f
15437	新喀里多尼亚[法国]邮政(New Caledonia)	caledonia				2700	f
15438	叙利亚邮政(Syrian Post)	republic				2705	f
15439	乌兹别克斯坦邮政(Post of Uzbekistan)	uzbekistan				2710	f
15440	亚美尼亚邮政(Haypost-Armenian Postal)	haypost				2715	f
15441	也门邮政(Yemen Post)	yemen				2720	f
15442	约旦邮政(Jordan Post)	jordan				2725	f
15443	越南邮政小包(Vietnam Posts)	vietnam				2730	f
15444	印度邮政(India Post)	india				2735	f
15445	英国邮政(大包,EMS)	england				2740	f
15446	黑山邮政(Po?ta Crne Gore)	montenegro				2745	f
15447	哥斯达黎加邮政(Correos de Costa Rica)	correos				2750	f
15448	匈牙利邮政（Magyar Posta）	hungary				2755	f
15449	中国澳门邮政(Macau Post)	macao				2760	f
15450	格陵兰[丹麦]邮政（TELE Greenland A/S）	greenland				2765	f
15451	厄瓜多尔邮政(Correos del Ecuador)	ecuador				2770	f
15452	菲律宾邮政（Philippine Postal）	phlpost				2775	f
15453	埃及邮政（Egypt Post）	egypt				2780	f
15454	冰岛邮政(Iceland Post)	iceland				2785	f
15455	波兰邮政小包(Poczta Polska)	emonitoring				2790	f
15456	阿尔巴尼亚邮政(Posta shqipatre)	albania				2795	f
15457	上海昊宏国际货物	hyk				2800	f
15458	爱沙尼亚邮政(Eesti Post)	omniva				2805	f
15459	中外运空运	sinoairinex				2810	f
15460	城晓国际快递	ckeex				2815	f
15461	汉邦国际速递	handboy				2820	f
15462	银河物流	milkyway				2825	f
15463	荷兰速递(Nederland Post)	nederlandpost				2830	f
15464	WTD海外通	wtdex				2835	f
15465	环东物流	huandonglg				2840	f
15466	FedRoad 联邦转运	fedroad				2845	f
15467	澳州顺风快递	emms				2850	f
15468	TNT Italy	tntitaly		199.803.868	https://www.tnt.it/	2855	f
15469	卓志速运	esdex		02062262811	https://esdex.com/	2860	f
15470	全球速运	zdwex		805-443-2284	http://www.zdwex.com/	2865	f
15471	C&C国际速递	cncexp	http://express.cncexp.com.au/themes/zh-cn/images/logo.png	(03) 9001 7333	http://cncexp.com.au/	2870	f
15472	CNE	cnexps		400-021-5600	http://www.cne.com/	2875	f
15473	昌宇国际	changwooair	http://www.changwooair.com/images/logo.png	400-060-5977	http://www.changwooair.com/	2880	f
15474	诺尔国际物流	nuoer				2885	f
15475	新时速物流	csxss				2890	f
15476	Landmark Global	landmarkglobal				2895	f
15477	中宇天地	zytdscm				2900	f
15478	澳新物流	axexpress	http://www.axexpress.com.au/res/201803/11/411ab482bc72ea17.png	0403 039 456	http://www.axexpress.com.au/	2905	f
15479	翔腾物流	xiangteng				2910	f
15480	瞬程物流	quickway	http://www.quickway-sc.com/img/logo.JPG		http://www.quickway-sc.com/index.html	2915	f
15481	淘布斯快运\\\\物流	taoplus		+86 0755-23211445	http://www.taoplus.cc/Home/Index	2920	f
15482	恒瑞物流	hengrui56				2925	f
15483	玥玛速运	yue777	http://www.yue777.com/images/logo.gif	（831）337 4444   (626) 385-4444	http://www.yue777.com/	2930	f
15484	邦工快运	bgky100				2935	f
15485	中国翼	cnws				2940	f
15486	中俄速通（淼信）	mxe56				2945	f
15487	CJ物流	doortodoor				2950	f
15488	当当	dangdang				2955	f
15489	logen路坚	ilogen				2960	f
15490	1号店	yhdshop				2965	f
15491	法国邮政(La Poste)	csuivi				2970	f
15492	唯品会(vip)	vipshop				2975	f
15493	运通中港	yuntongkuaidi				2980	f
15494	云邮跨境快递	hkems				2985	f
15495	台湾（中华邮政）	postserv				2990	f
15496	ILYANG	ilyang				2995	f
15497	尚橙物流	shangcheng				3000	f
15498	南京100	nanjing				3005	f
15499	全通快运	quantwl				3010	f
15500	中澳速递	cnausu				3015	f
15501	友家速递	youjia				3020	f
15502	百通物流	buytong				3025	f
15503	联合快递	gslhkd				3030	f
15504	globaltracktrace	globaltracktrace				3035	f
15505	亚欧专线	nlebv				3040	f
15506	澳德物流	auod				3045	f
15507	NLE	nle				3050	f
15508	iExpress	iexpress				3055	f
15509	特急送	lntjs				3060	f
15510	ABF	abf				3065	f
15511	新元国际	xynyc				3070	f
15512	小米	xiaomi				3075	f
15513	小C海淘	xiaocex				3080	f
15514	新西兰中通	nzzto				3085	f
15515	良藤国际速递	lmfex				3090	f
15516	韩国邮政	koreapostcn				3095	f
15517	速品快递	supinexpress				3100	f
15519	海龟国际快递	turtle				3110	f
15520	云南滇驿物流	dianyi				3115	f
15521	四川星程快递	scxingcheng				3120	f
15522	jcex	jcex				3125	f
15523	凯信达	kxda				3130	f
15524	安达信	advancing				3135	f
15525	亿翔	yxexpress				3140	f
15526	广东通路	guangdongtonglu				3145	f
15527	中国香港骏辉物流	chunfai				3150	f
15528	比利时国际邮政(Bpost international)	bpostinter				3155	f
15529	三三国际物流	zenzen				3160	f
15530	西班牙邮政(Correos de España)	correosdees				3165	f
15531	MRW	mrw				3170	f
15532	丹麦邮政(Post Denmark)	postdanmarken				3175	f
15533	法国邮政(Chronopost Portugal)	chronopostport				3180	f
15534	法国邮政大包、EMS-法文（Chronopost France）	chronopostfra				3185	f
15535	加拿大邮政(Purolator)	purolator				3190	f
15536	比利时邮政(Belgium Post)	belgiumpost				3195	f
15537	挪威邮政（Posten Norge）	postennorge				3200	f
15538	UPS Mail Innovations	upsmailinno				3205	f
15539	瑞士邮政(Swiss Post)	swisspost				3210	f
15540	DHL-荷兰（DHL Netherlands）	dhlnetherlands				3215	f
15541	英国邮政小包（Royal Mail）	royalmail				3220	f
15542	英国邮政小包	royalmailcn				3225	f
15543	OPEK	opek				3230	f
15544	Italy SDA	italysad				3235	f
15545	乌克兰邮政EMS(EMS Ukraine)	emsukraine				3240	f
15546	Fastway Ireland	fastway				3245	f
15547	荷兰邮政(PostNL international registered mail)	postnl				3250	f
15548	英国邮政（Parcel Force）	parcelforce				3255	f
15549	乌克兰邮政包裹	ukrpostcn				3260	f
15550	品速心达快递	pinsuxinda				3265	f
15551	YODEL	yodel				3270	f
15552	UBI Australia	gotoubi				3275	f
15553	上海快通	shanghaikuaitong				3280	f
15554	宏品物流	hongpinwuliu				3285	f
15555	瑞典邮政(PostNord[Posten AB])	postenab				3290	f
15556	国美	gome				3295	f
15557	长宇物流	changyuwuliu				3300	f
15558	海红网送	haihongwangsong				3305	f
15559	瓦努阿图邮政(Vanuatu Post)	vanuatu				3310	f
15560	萨摩亚邮政(Samoa Post)	samoa				3315	f
15561	巴巴多斯邮政(Barbados Post)	barbados				3320	f
15562	斐济邮政(Fiji Post)	fiji				3325	f
15563	TNY物流	tny				3330	f
15564	Red Express	redexpress				3335	f
15565	墨西哥邮政（Correos de Mexico）	mexico				3340	f
15566	Estafeta	estafeta				3345	f
15567	罗马尼亚邮政（Posta Romanian）	romanian				3350	f
15568	DPD Poland	dpdpoland				3355	f
15569	巴基斯坦邮政(Pakistan Post)	pakistan				3360	f
15570	Asendia USA	asendiausa				3365	f
15571	意大利邮政(Poste Italiane)	italiane				3370	f
15572	EC-Firstclass	ecfirstclass				3375	f
15573	法国邮政大包、EMS-英文(Chronopost France)	chronopostfren				3380	f
15574	泰国邮政（Thailand Thai Post）	thailand				3385	f
15575	Safexpress	safexpress				3390	f
15576	TNT Australia	tntau				3395	f
15577	SkyNet Malaysia	skynetmalaysia				3400	f
15578	DTDC India	dtdcindia				3405	f
15579	马来西亚邮政大包、EMS（Malaysia Post(parcel,EMS)）	malaysiaems				3410	f
15580	马来西亚邮政小包（Malaysia Post(Registered)）	malaysiapost				3415	f
15581	沙特阿拉伯邮政(Saudi Post)	saudipost				3420	f
15582	南非邮政（South African Post Office）	southafrican				3425	f
15583	Mexico Senda Express	mexicodenda				3430	f
15584	MyHermes	myhermes				3435	f
15585	DPD Germany	dpdgermany				3440	f
15586	Nova Poshta	novaposhta				3445	f
15587	TNT UK	tntuk				3450	f
15588	Estes	estes				3455	f
15589	Deltec Courier	deltec				3460	f
15590	UPS Freight	upsfreight				3465	f
15591	Mexico Multipack	multipack				3470	f
15592	Interlink Express	interlink				3475	f
15593	葡萄牙邮政（Portugal CTT）	portugalctt				3480	f
15594	乌克兰邮政EMS-中文(EMS Ukraine)	emsukrainecn				3485	f
15595	乌克兰邮政小包、大包(UkrPost)	ukrpost				3490	f
15596	DPD UK	dpduk				3495	f
15597	新加坡邮政EMS、大包(Singapore Speedpost)	speedpost				3500	f
15598	TCI XPS	tcixps				3505	f
15599	skynet	skynet				3510	f
15600	KCS	kcs				3515	f
15601	英国邮政大包EMS	parcelforcecn				3520	f
15602	考拉国际速递	kaolaexpress				3525	f
15603	BlueDart	bluedart				3530	f
15604	ADP国际快递	adp				3535	f
15605	运东西	yundx				3540	f
15606	骏达快递	jdexpressusa				3545	f
15607	airpak expresss	airpak				3550	f
15608	Toll	toll				3555	f
15609	速派快递(FastGo)	fastgo				3560	f
15610	新鹏快递	gdxp				3565	f
15611	潇湘晨报	xiaoxiangchenbao				3570	f
15612	OCA Argentina	ocaargen				3575	f
15613	以色列邮政(Israel Post)	israelpost				3580	f
15614	尼日利亚邮政(Nigerian Postal)	nigerianpost				3585	f
15615	智利邮政(Correos Chile)	chile				3590	f
15616	乌克兰邮政(UkrPoshta)	ukraine				3595	f
15617	奥地利邮政(Austrian Post)	austria				3600	f
15618	乌干达邮政(Posta Uganda)	uganda				3605	f
15619	阿塞拜疆邮政EMS(EMS AzerExpressPost)	azerbaijan				3610	f
15620	斯洛伐克邮政(Slovenská Posta)	slovak				3615	f
15621	芬兰邮政(Itella Posti Oy)	finland				3620	f
15622	印度尼西亚邮政EMS(Pos Indonesia-EMS)	indonesia				3625	f
15623	易优包裹	eupackage				3630	f
15624	阿鲁巴邮政（Post Aruba）	aruba				3635	f
15625	爱尔兰邮政(An Post)	ireland				3640	f
15626	顺捷达	shunjieda				3645	f
15627	埃塞俄比亚邮政(Ethiopian postal)	ethiopia				3650	f
15628	行必达	speeda				3655	f
15629	卢森堡邮政(Luxembourg Post)	luxembourg				3660	f
15630	毛里求斯邮政(Mauritius Post)	mauritius				3665	f
15631	文莱邮政(Brunei Postal)	brunei				3670	f
15632	Quantium	quantium				3675	f
15633	巴林邮政(Bahrain Post)	bahrain				3680	f
15634	纳米比亚邮政(NamPost)	namibia				3685	f
15635	卢旺达邮政(Rwanda i-posita)	rwanda				3690	f
15636	肯尼亚邮政(POSTA KENYA)	kenya				3695	f
15637	莱索托邮政(Lesotho Post)	lesotho				3700	f
15638	伯利兹邮政(Belize Postal)	belize				3705	f
15639	喀麦隆邮政(CAMPOST)	cameroon				3710	f
15640	玻利维亚邮政	bolivia				3715	f
15641	波黑邮政(JP BH Posta)	bohei				3720	f
15642	巴拉圭邮政(Correo Paraguayo)	paraguay				3725	f
15643	坦桑尼亚邮政(Tanzania Posts)	tanzania				3730	f
15644	柬埔寨邮政(Cambodia Post)	cambodia				3735	f
15645	阿曼邮政(Oman Post)	oman				3740	f
15646	鑫锐达	bjxsrd				3745	f
15647	直布罗陀[英国]邮政( Royal Gibraltar Post)	gibraltar				3750	f
15648	越南邮政EMS(VNPost Express)	vnpost				3755	f
15649	孟加拉国邮政(EMS)	bangladesh				3760	f
15650	鹏程快递	pengcheng				3765	f
15651	冠庭国际物流	guanting				3770	f
15652	创一快递	chuangyi				3775	f
15653	贵州星程快递	gzxingcheng				3780	f
15654	快速递	ksudi				3785	f
15655	重庆星程快递	cqxingcheng				3790	f
15656	6LS EXPRESS	lsexpress				3795	f
15657	S2C	s2c				3800	f
15658	ANTS EXPRESS	qdants				3805	f
15659	Hi淘易快递	hitaoe				3810	f
15660	北京丰越供应链	beijingfengyue				3815	f
15661	阳光快递	shiningexpress				3820	f
15662	青旅物流	zqlwl				3825	f
15663	华中快递	cpsair				3830	f
15664	易航物流	yihangmall				3835	f
15665	城铁速递	cex				3840	f
15666	千里速递	qianli				3845	f
15667	佳捷翔物流	jjx888				3850	f
15668	急递	jdpplus				3855	f
15669	考拉速递	koalaexp				3860	f
15670	天越物流	surpassgo				3865	f
15671	洋口岸	ykouan				3870	f
15672	卢森堡航空	cargolux				3875	f
15673	优优速递	youyou				3880	f
15674	全川物流	quanchuan56				3885	f
15675	仓鼠快递	cangspeed				3890	f
15676	闪电兔	shandiantu				3895	f
15677	递五方云仓	di5pll				3900	f
15678	新宁物流	xinning				3905	f
15679	雅澳物流	yourscm				3910	f
15680	首达速运	sdsy888				3915	f
15681	好运来	hlyex				3920	f
15682	丽狮物流	lishi				3925	f
15683	直德邮	zdepost				3930	f
15684	一正达速运	yizhengdasuyun				3935	f
15685	特急便物流	sucmj				3940	f
15686	货运皇	kingfreight				3945	f
15687	派尔快递	peex				3950	f
15688	澳货通	auex				3955	f
15689	澳世速递	aus				3960	f
15690	美联快递	letseml				3965	f
15691	澳速物流	aosu				3970	f
15692	克罗地亚邮政（Hrvatska Posta）	hrvatska				3975	f
15693	保加利亚邮政（Bulgarian Posts）	bulgarian				3980	f
15694	Portugal Seur	portugalseur				3985	f
15695	International Seur	seur				3990	f
15696	Direct Link	directlink				3995	f
15697	捷克邮政（?eská po?ta）	ceskaposta				4000	f
15698	Siodemka	siodemka				4005	f
15699	卡邦配送	ahkbps				4010	f
15700	爱尔兰邮政(An Post)	anposten				4015	f
15701	ABC全球快运	abcglobal				4020	f
15702	金海淘	goldhaitao				4025	f
15703	芒果速递	mangguo				4030	f
15704	极光转运	jiguang				4035	f
15705	DCS	dcs				4040	f
15706	联运快递	lianyun				4045	f
15707	申必达	speedoex				4050	f
15708	SHL畅灵国际物流	shlexp				4055	f
15709	顺邦国际物流	shunbang				4060	f
15710	成达国际速递	chengda				4065	f
15711	冠捷物流	gjwl				4070	f
15712	白俄罗斯邮政(Belpochta)	belpost				4075	f
15713	阿富汗邮政(Afghan Post)	afghan				4080	f
15714	钏博物流	cbo56				4085	f
15715	首通快运	staky				4090	f
15716	马珂博逻	cnmcpl				4095	f
15717	上海航瑞货运	hangrui				4100	f
15718	小熊物流	littlebearbear				4105	f
15719	环创物流	ghl				4110	f
15720	林安物流	lasy56				4115	f
15721	法翔速运	ftlexpress				4120	f
15722	易转运	ezhuanyuan				4125	f
15723	Superb Grace	superb				4130	f
15724	圣飞捷快递	sfjhd				4135	f
15725	淘韩国际快递	krtao				4140	f
15726	容智快运	gdrz58				4145	f
15727	骏绅物流	jsexpress				4150	f
15728	德国雄鹰速递	adlerlogi				4155	f
15729	开心快递	happylink				4160	f
15730	远为快递	ywexpress				4165	f
15731	嗖一下同城快递	sofast56				4170	f
15732	五六快运	wuliuky				4175	f
15733	顺时达物流	hnssd56				4180	f
15734	卓烨快递	hrbzykd				4185	f
15735	万家康物流	wjkwl				4190	f
15736	ZTE中兴物流	zteexpress				4195	f
15737	国晶物流	xdshipping				4200	f
15738	德国云快递	yunexpress				4205	f
15739	宏递快运	hd				4210	f
15740	新亚物流	nalexpress				4215	f
15741	一起送	yiqisong				4220	f
15742	迈隆递运	mailongdy				4225	f
15743	艾瑞斯远	ariesfar				4230	f
15744	澳多多国际速递	adodoxm				4235	f
15745	CNUP 中联邮	cnup				4240	f
15746	Hermes	hermes				4245	f
15747	PostElbe	postelbe				4250	f
15748	维普恩物流	vps				4255	f
15749	联运通物流	szuem				4260	f
15750	明辉物流	zsmhwl				4265	f
15751	龙象国际物流	edragon				4270	f
15752	永邦国际物流	yongbangwuliu				4275	f
15753	速配欧翼	superoz				4280	f
15754	51跨境通	wykjt				4285	f
15755	嘉里大荣物流	kerrytj				4290	f
15756	中国香港环球快运	huanqiuabc				4295	f
15757	CL日中速运	clsp				4300	f
15758	邮客全球速递	yyox				4305	f
15759	家家通快递	newsway				4310	f
15760	华瀚快递	hhair56				4315	f
15761	顺士达速运	shunshid				4320	f
15762	卓实快运	zhuoshikuaiyun				4325	f
15763	希腊邮政包裹（ELTA Hellenic Post）	elta				4330	f
15764	天天快物流	guoeryue				4335	f
15765	星速递	starex				4340	f
15766	土耳其邮政	ptt				4345	f
15767	哥伦比亚邮政(4-72 La Red Postal de Colombia)	colombia				4350	f
15768	加州猫速递	jiazhoumao				4355	f
15769	捷邦物流	jieborne				4360	f
15770	Canpar	canpar				4365	f
15771	啪啪供应链	papascm				4370	f
15772	广东诚通物流	gdct56				4375	f
15773	海硕高铁速递	hsgtsd				4380	f
15774	万达美	wdm				4385	f
15775	易达国际速递	eta100				4390	f
15776	安达速递	adapost				4395	f
15777	光线速递	gxwl				4400	f
15778	西游寄	xiyoug				4405	f
15779	易邮国际	euguoji				4410	f
15780	粤中国际货运代理（上海）有限公司	yuezhongsh				4415	f
15781	城通物流	chengtong				4420	f
15782	GE2D跨境物流	ge2d				4425	f
15783	飛斯特	bester				4430	f
15784	蒙古国邮政(Mongol Post)	mongolpost				4435	f
15785	乌拉圭邮政（Correo Uruguayo）	correo				4440	f
15786	牙买加邮政（Jamaica Post）	jamaicapost				4445	f
15787	美达快递	meidaexpress				4450	f
15788	格鲁吉亚邮政(Georgian Pos）	georgianpost				4455	f
15789	驭丰速运	yfsuyun				4460	f
15790	无忧物流	aliexpress				4465	f
15791	邮鸽速运	ugoexpress				4470	f
15792	澳洲新干线快递	expressplus				4475	f
15793	邮来速递	youlai				4480	f
15794	标杆物流	bmlchina				4485	f
15795	商桥物流	shangqiao56				4490	f
15796	魔速达	mosuda				4495	f
15797	AUV国际快递	auvexpress				4500	f
15798	Newgistics	newgistics				4505	f
15799	FQ狂派速递	freakyquick				4510	f
15800	威盛快递	wherexpess				4515	f
15801	泽西岛邮政	jerseypost				4520	f
15802	老挝邮政(Lao Express)	lao				4525	f
15803	巴布亚新几内亚邮政(PNG Post)	postpng				4530	f
15804	珠峰速运	zf365				4535	f
15805	甘肃安的快递	gansuandi				4540	f
15806	飞云快递系统	fyex				4545	f
15807	一辉物流	yatfai				4550	f
15808	顶世国际物流	topshey				4555	f
15809	e直运	edtexpress				4560	f
15810	易普递	sixroad				4565	f
15811	龙枫国际快递	lfexpress				4570	f
15812	海淘物流	ht22				4575	f
15813	大韩通运	cjkoreaexpress				4580	f
15814	未来明天快递	weilaimingtian				4585	f
15815	天翔快递	tianxiang				4590	f
15816	可可树美中速运	excocotree				4595	f
15817	锋鸟物流	beebird				4600	f
15818	邮邦国际	youban				4605	f
15819	全联速运	guexp				4610	f
15820	Aplus物流	aplusex				4615	f
15821	西安运逸快递	yyexp				4620	f
15822	青云物流	bjqywl				4625	f
15823	中翼国际物流	chnexp				4630	f
15824	亚洲顺物流	yzswuliu				4635	f
15825	万邑通	winit				4640	f
15826	E跨通	ecallturn				4645	f
15827	到了港	camekong				4650	f
15828	斯里兰卡邮政(Sri Lanka Post)	slpost				4655	f
15829	斯洛文尼亚邮政(Slovenia Post)	slovenia				4660	f
15830	多米尼加邮政（INPOSDOM – Instituto Postal Dominicano）	inposdom				4665	f
15831	狮爱高铁物流	sycawl				4670	f
15832	爱拜物流	ibuy8				4675	f
15833	九宫物流	jiugong				4680	f
15834	宇佳物流	yujiawl				4685	f
15835	缔惠盛合	twkd56				4690	f
15836	星运快递	staryvr				4695	f
15837	快服务	kfwnet				4700	f
15838	商海德物流	shd56				4705	f
15839	湘达物流	xiangdawuliu				4710	f
15840	远盾物流	yuandun				4715	f
15841	速派快递	fastgoexpress				4720	f
15842	中集冷云	cccc58				4725	f
15843	久久物流	jiujiuwl				4730	f
15844	德国八易转运	deguo8elog				4735	f
15845	UTAO优到	utaoscm				4740	f
15846	乾坤物流	yatexpress				4745	f
15847	尼泊尔邮政（Nepal Postal Services）	nepalpost				4750	f
15848	摩洛哥邮政 ( Morocco Post )	morocco				4755	f
15849	坦桑尼亚邮政（Tanzania Posts Corporation）	posta				4760	f
15850	莫桑比克邮政（Correios de Moçambique）	correios				4765	f
15851	伊朗邮政（Iran Post）	iran				4770	f
15852	聚中大	juzhongda				4775	f
15853	联众国际	epspost				4780	f
15854	南非邮政EMS	emssouthafrica				4785	f
15855	丰通快运	ftky365				4790	f
15856	苏州中欧国际物流	eucnrail				4795	f
15857	艾姆勒	imlb2c				4800	f
15858	BorderGuru	borderguru				4805	f
15859	艺凡快递	yifankd				4810	f
15860	博茨瓦纳邮政	botspost				4815	f
15861	宏观国际快递	gvpexpress				4820	f
15862	苏丹邮政（Sudapost）	sudapost				4825	f
15863	塞内加尔邮政	laposte				4830	f
15864	卡塔尔邮政（Qatar Post）	qpost				4835	f
15865	海沧无忧	hivewms				4840	f
15866	Sureline冠泰	sureline				4845	f
15867	集先锋快递	jxfex				4850	f
15868	丰客物流	fecobv				4855	f
15869	安世通快递	astexpress				4860	f
15870	同城快寄	shpost				4865	f
15871	海联快递	hltop				4870	f
15872	中联速递	auvanda				4875	f
15873	神马快递	shenma				4880	f
15874	三象速递	sxexpress				4885	f
15875	温通物流	wto56kj				4890	f
15876	互联快运	hlkytj				4895	f
15877	四海捷运	sihiexpress				4900	f
15878	劲通快递	jintongkd				4905	f
15879	凡仕特物流	wlfast				4910	f
15880	韩国邮政（Korea Post）	koreapost				4915	f
15881	居家通	homexpress				4920	f
15882	红背心	hongbeixin				4925	f
15883	微店	weidianorder				4930	f
15884	当当	dangdangorder				4935	f
15885	考拉订单	kaolaorder				4940	f
15886	国送快运	guosong				4945	f
15887	TST速运通	tstexp				4950	f
15888	全程快递	agopost				4955	f
15889	YUN TRACK	yuntrack				4960	f
15890	CDEK	cdek				4965	f
15891	SIGN国际速递	signedexpress				4970	f
15892	越中国际物流	vctrans	http://cn.vctrans.vn/pic/BD-2.jpg	0084-965-640-829	http://cn.vctrans.vn/	4975	f
15893	德尚国际速递	gslexpress				4980	f
15894	德国优拜物流	ubuy				4985	f
15895	德国邮政 EUC POST	eucpost				4990	f
15896	嘉诚速达	jcsuda				4995	f
15897	AFL	afl				5000	f
15898	众派速递	zhpex				5005	f
15899	海星桥快递	haixingqiao				5010	f
15900	蘑菇街	mogujieorder				5015	f
15901	国美	gomeorder				5020	f
15902	优能物流	mantoo				5025	f
15903	能装能送	canhold				5030	f
15904	聚美优品	jumeiyoupinorder				5035	f
15905	诚一物流	parcelchina				5040	f
15906	比利时邮政（Bpost）	bpost				5045	f
15907	网易严选	wangyiyxorder				5050	f
15908	唯品会	vipshoporder				5055	f
15909	驼峰国际	humpline				5060	f
15910	美丽说	meilishuoorder				5065	f
15911	巴西邮政(Brazil Post/Correios)	brazilposten				5070	f
15912	TransRush	transrush				5075	f
15913	卷皮	juanpiorder				5080	f
15914	一号店	yhdshoporder				5085	f
15915	龙飞祥快递	longfx				5090	f
15916	顺心捷达	sxjdfreight				5095	f
15917	圆通承诺达	ytchengnuoda				5100	f
15918	跨境直邮通	kjde				5105	f
15919	美邦国际快递	meibang				5110	f
15920	USPSCN	uspscn				5115	f
15921	7号速递	express7th				5120	f
15922	易邮速运	yiyou				5125	f
15923	快8速运	kuai8				5130	f
15924	东西E全运	ecotransite				5135	f
15925	帮帮发	bangbangpost				5140	f
15926	优海国际速递	uhi				5145	f
15927	JDIEX	jdiex				5150	f
15928	泰捷达国际物流	ztjieda				5155	f
15929	捎客物流	shaoke				5160	f
15930	番薯国际货运	koali				5165	f
15931	全球速递	pdstow				5170	f
15932	贝贝	beibeiorder				5175	f
15933	華信物流WTO	logistics				5180	f
15934	优莎速运	eusacn				5185	f
15935	东方航空物流	ealceair				5190	f
15936	GHT物流	ghtexpress				5195	f
15937	TCXB国际物流	tcxbthai				5200	f
15938	香港伟豪国际物流	whgjkd				5205	f
15939	潍鸿	grivertek				5210	f
15940	如家国际快递	homecourier				5215	f
15941	贝业物流	boyol				5220	f
15942	环国运物流	hgy56				5225	f
15943	澳丰速递	sfau				5230	f
15944	聚物物流	juwu				5235	f
15945	鑫远东速运	xyd666				5240	f
15946	波音速递	overseaex				5245	f
15947	OBOR Express	oborexpress				5250	f
15948	沃埃家	wowvip				5255	f
15949	远航国际快运	yuanhhk				5260	f
15950	高捷快运	goldjet				5265	f
15951	转运中国	uszcn				5270	f
15952	GT国际快运	gtgogo				5275	f
15953	速达通	sdto				5280	f
15954	迅速快递	xunsuexpress				5285	f
15955	三盛快递	sanshengco				5290	f
15956	苏豪快递	shipsoho				5295	f
15957	西濃運輸	seino				5300	f
15958	花瓣转运	flowerkd				5305	f
15959	加拿大联通快运	fastontime				5310	f
15960	鸿远物流	hyeship				5315	f
15961	联通快递	ltparcel				5320	f
15962	europeanecom	europeanecom				5325	f
15963	海欣斯Highsince	highsince				5330	f
15964	合心速递	hexinexpress				5335	f
15965	天美快递	taimek				5340	f
15966	王牌快递	shipbyace				5345	f
15967	蜜蜂速递	bee001				5350	f
15968	天使物流云	tswlcloud				5355	f
15969	华美快递	hmus				5360	f
15970	折800	zhe800order				5365	f
15971	小红书	xiaohongshuorder				5370	f
15972	景顺物流	jingshun				5375	f
15973	驿递汇速递	yidihui				5380	f
15974	YCG物流	ycgglobal				5385	f
15975	宇航通物流	yhtlogistics				5390	f
15976	track-parcel	trackparcel				5395	f
15977	曹操到	sfpost		4000127881	http://sf-post.com/	5400	f
15978	五六快运	56kuaiyun		400-138-3878	http://www.56ky.cn/	5405	f
15979	韵达快运	ydky	http://www.yunda56.com/ky_ydioa/cn/	95546	http://www.yunda56.com/ky_ydioa/cn/	5410	f
15980	港快速递	gksd			http://www.gksd.com/	5415	f
15981	中国流通王	scorejp	http://www.scorejp.com.cn/#	852-2384-1438	http://www.scorejp.com.cn/#	5420	f
15982	GOOD快递	good		626-8576669	www.goodkuaidi.com	5425	f
15983	跨洋国际速递	kuayang		+1 (917)763-6555	https://www.koyoex.com/CommonInfo.aspx?type=11	5430	f
15984	E2G速递	e2g		086）199-4575-0416	https://www.express2global.com/	5435	f
15985	新西兰申通	nzsto		09-2710099	http://nzsto.co.nz/	5440	f
15986	俄罗斯邮政(Russian Post)	pochta		8-800-1-000-000	https://www.pochta.ru/	5445	f
15987	天翼快递	tykd		400-000-3131	http://www.tykd.com	5450	f
15988	LaserShip	lasership		(804) 414-2590	http://www.lasership.com/	5455	f
15989	阿联酋邮政(Emirates Post)	emirates		+971 4 600 599 999	https://www.epg.gov.ae/_ar/index.xhtml	5460	f
15990	跨跃国际	kyue		020-36763310/13825150974	http://www.k-yue.com/	5465	f
15991	猛犸物流	mm		+49-2824-9990030	http://www.mm-logi.com/	5470	f
15992	鼎润物流	dingrun	http://la.911-express.com/themes/zh-cn/images/logo.png	+1 626-278-6424	http://la.911-express.com/member/login.asp	5475	f
15993	北极星快运	polarisexpress		+31 88 888 9345	http://www.polarisexpress.com/	5480	f
15994	昂威物流	onway	http://www.onway.com.cn/assets/picture/logo.png	400-888-9633	http://www.onway.com.cn/	5485	f
15995	澳天速递	aotsd	http://aotsd.com/express/img/logo-dark.png	020-86330148	http://aotsd.com/express/#work	5490	f
15996	邦通国际	comexpress	http://www.comexpress.ca/images/logoChinese.png	＋1-647 340 1588	http://www.comexpress.ca/	5495	f
15997	佰麒快递	beckygo	http://express.beckygo.cn/res/201708/25/d83307fdbed2b584.png	3462500470	http://express.beckygo.cn/	5500	f
15998	堡昕德速递	bosind	http://www.bosind.com/baoxin/img/banner/LOGO.png	4001-683-606	http://www.bosind.com/	5505	f
15999	长风物流	longvast	http://changfeng.ebaidi.com/images/logo.png	0769-81763350	http://changfeng.ebaidi.com/	5510	f
16000	CNAIR	cnair	https://oss.showapi.com/doc/3713/1/469ab4896f3946ff98cee2cf55e6cee4.png	+ 61 (02) 87392375	http://www.cnair.com.au	5515	f
16001	丹鸟	danniao	https://img.alicdn.com/tfs/TB163esP7PoK1RjSZKbXXX1IXXa-360-114.png	400-8555566	https://www.danniao.com/index.html	5520	f
16002	疯狂快递	crazyexpress	http://www.crazyexpress.ca/Content/images/footlogo.png	416-456-9811	http://www.crazyexpress.ca/	5525	f
16003	报通快递	btex	http://kuaidi.baoxianda.cn/Public/img/logo.png	400-6688-626	http://kuaidi.baoxianda.cn/index.html	5530	f
16004	诚和通	cht	http://img011.h5yo.cn/Upload/s156448834300002/filename/20190731153601_49678.TIM%25E6%2588%25AA%25E5%259B%25BE20190731103537.png	0755-23459202 | 13510767473	http://www.cht361.com/page2.html	5535	f
16005	全和悦物流	alljoy	http://www.alljoylogistics.com/images/logo.jpg	400-900-1982/+86 755-22380769	http://www.alljoylogistics.com/cx.php?id=1	5540	f
16006	中国邮政E邮宝	eyoubao		11183	http://shipping.ems.com.cn/index	5545	f
16007	富国快递	fuguoex	http://www.fuguoex.com/Images/%E9%A3%9E%E7%A2%9F%E8%B7%A8%E5%A2%83%E7%89%A9%E6%B5%81logo.png	626-400-6956	http://www.fuguoex.com/	5550	f
16008	盈和国际	yhfba	http://www.yhfba.com/upload/201902/21/201902211746144307.png	15394355557	http://www.yhfba.com/	5555	f
16009	飞跃物流	rlgaus	http://rlgaus.com.au/feiyue/userfiles/1/images/cms/site/2019/04/logo.png	+61 2 97426937	http://rlgaus.com.au/feiyue/f	5560	f
16010	大马鹿	dml	http://www.dml-express.com/img/logo@2x.ea5c4c2b.png	400-862-0080	http://www.dml-express.com/#/order/search	5565	f
16011	飞鸟国际	bird	https://www.birdsystemgroup.com/wp-content/uploads/2018/07/logo@2x-5.png	0755-61882187	https://www.birdsystemgroup.com	5570	f
16012	SQK国际速递	chinasqk	http://www.chinasqk.com//sqk/dist/images/logo.png		http://www.chinasqk.com/	5575	f
16013	群航云物流	yunwuliu	http://z.cloudlogistics365.com/_include/img/logo_260x100.png	4001087989	http://z.cloudlogistics365.com/	5580	f
16014	嘉优快线	jy	http://www.express-jy.com/upload/635799863302412544_header_logo.jpg	4001068660	http://www.express-jy.com	5585	f
16015	安锐速运	anxb	http://www.ane66.com/image/logo_anr.png	95344	http://www.ane66.com	5590	f
16016	一速递	oneexpress	https://id-image.oss-cn-hangzhou.aliyuncs.com/source/website/index-logo.png	95040466306	http://www.one-express.cn/	5595	f
16017	邦泰快运\\\\物流	btexpress		1-800-987-654	http://www.bt-express.cn/	5600	f
16018	云达（原美国韵达）	yundaexus	http://www.yundaex.us/admin/ydNews/upimg/20160118191147470/201601181911474701.jpg	888-408-3332	http://www.yundaex.us/index.aspx	5605	f
16019	华夏国际速递	uschuaxia	http://www.uschuaxia.com/img/logo2.png	15361012240	http://www.uschuaxia.com/index.html	5610	f
16020	一智通	1ziton	https://www.1ziton.com/assets/images/common/logo.png	400-6006-111	https://www.1ziton.com/#/home	5615	f
16021	快达物流	kuaidawuliu	http://www.kuaidaexp.com/images/kd_02.jpg	4008192009	http://www.kuaidaexp.com/	5620	f
16022	利佳顺	ljs	http://www.bt-exp.com/images/ljs_04.jpg	0755-29987897	http://www.bt-exp.com/	5625	f
16023	Cnilink	cnilink	https://www.cnilink.com/images/logo1.png	+ 91-1244289217	https://www.cnilink.com/index.html	5630	f
16024	尚途国际	stgj	http://www.shangtuguoji.com/App/Tpl/Home/Public/upload/636049527986236276_logo.jpg	400-6508-378	http://www.shangtuguoji.com/	5635	f
16025	海信物流	savor	http://www.savor.com.cn/common/img/logo.png	（+86 532）55526137	http://www.savor.com.cn/wuliu/	5640	f
16026	汉江快递	hanjiang	http://www.urgentairexpress.com/img/sidebar_top.gif	+86-575-85682009	http://www.urgentairexpress.com/	5645	f
16027	聚盟物流	jumstc	http://www.jumstc.com/upload/1/app/1576481172740.png	40016-56580	http://www.jumstc.com/	5650	f
16028	qqEx	qqex	http://www.qq-ex.com/images/logo_manage.png	302-203-0092	http://www.qq-ex.com/	5655	f
16029	信联	xinglian	http://www.xinlianexpress.com/Up/day_190323/201903231717172355.png	0755-82705237	http://www.xinlianexpress.com/	5660	f
16030	明达国际	tmw	http://www.tmw-express.com.au/static/img/tmw-logo.5f6f1ec.jpg		http://www.tmw-express.com.au/#/	5665	f
16031	环旅快运	globaltourchains	http://www.globaltourchains.com/static/index/images/logo.png	30786632	http://www.globaltourchains.com/index	5670	f
16032	中邮电商	chinapostcb	http://www.chinapost-cb.com/assets/images/cp-logo-493x128.png	+86 400-181-1551	http://www.chinapost-cb.com/	5675	f
16033	SYNSHIP快递	synship	http://www.synship.com/images/synship_logo.png	562.677.1997	http://www.synship.com/	5680	f
16034	希凯国际	ckexp	http://www.ckexp.com/img/logo.jpg	021-64206832 /021-64207183	http://www.ckexp.com/	5685	f
16035	EASY EXPRESS	easyexpress	http://www.easyexpress.com.au/mat/dist/images/index/logo.jpg	（03）8764 7593	http://www.easyexpress.com.au/	5690	f
16036	泰进物流	taijin	https://taijin-logistics.tuhu.cn/images//logo.png	4001118868	https://taijin-logistics.tuhu.cn/	5695	f
16037	三真驿道	sanzlink	http://www.3zlink.com/images/logo.png?v=1	4001821200	http://www.3zlink.com/	5700	f
16038	华夏货运(福建)	hxlogistics	http://www.huaxia-logistics.com/Content/Images/logo_02.gif	+86-592-5751008	http://www.huaxia-logistics.com/	5705	f
16039	佳成快递	jiacheng	https://www.jcex.com/img/logo.png	400-887-1083	https://www.jcex.com/	5710	f
16040	Lazada (LGS) 快递	lazada	https://tracker.lel.asia/public/images/logo/lel-white.png		https://tracker.lel.asia/	5715	f
16041	威速递	we	https://www.wexpress.com.au/static/imgs/index/logo.png		https://www.wexpress.com.au/	5720	f
16042	普华云.鑫云物流	puhua				5725	f
16043	众邮快递	zhongyouex	http://zhongyouex.com/img/logo.5ddc5cd0.png	400-6520-226	http://zhongyouex.com/	5730	f
16044	Austa国际速递	austa	http://www.austa.org.cn/static/img/logo.86316992.png	020-3741-3654	http://www.austa.org.cn/	5735	f
16045	汇森速运	huisenky	http://www.huisenky.com/style/images/up_images/hs_logo.jpg	021-59885936	http://www.huisenky.com/	5740	f
16046	极兔速递/极兔快递	jt	http://www.jtexpress.com.cn/images/footer_logo.png	400-820-1666	http://www.jtexpress.com.cn/index.html	5745	f
16047	贰仟家	erqian	http://www.200056.com.cn/images/logo_top.png	4006562000	http://www.200056.com.cn/	5750	f
16048	中原快运	zhongyuan	http://www.zy886.com.cn/wp-content/uploads/2016/07/zy-logon-min-2.png	0551-64255886	http://www.zy886.com.cn/	5755	f
16049	中通国际	ztoglobal			https://us.zto.com/	5760	f
\.


--
-- Data for Name: corecmsmessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsmessage (id, userid, code, parameters, contentbody, status, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsmessagecenter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsmessagecenter (id, code, description, issms, ismessage, iswxtempletmessage) FROM stdin;
6	RemindOrderPay	订单催付提醒/订单快关闭的时候，提醒用户去支付	t	t	t
7	OrderPayed	订单支付成功时	t	t	t
8	CreateOrder	下单成功时	f	t	t
9	DeliveryNotice	订单发货通知/	t	t	t
10	AfterSalesPass	售后确认通过	t	t	t
11	RefundSuccess	用户退款成功通知	t	t	t
12	SellerOrderNotice	订单付款成功平台通知	t	t	t
\.


--
-- Data for Name: corecmsnotice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsnotice (id, title, contentbody, type, sort, isdel, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsorder (orderid, goodsamount, payedamount, orderamount, paystatus, shipstatus, status, ordertype, receipttype, paymentcode, paymenttime, logisticsid, logisticsname, costfreight, userid, sellerid, confirmstatus, confirmtime, storeid, shipareaid, shipaddress, shipname, shipmobile, weight, taxtype, taxcode, taxtitle, point, pointmoney, orderdiscountamount, goodsdiscountamount, coupondiscountamount, coupon, promotionlist, memo, ip, mark, source, iscomment, isdel, objectid, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsorderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsorderitem (id, orderid, goodsid, productid, sn, bn, name, price, costprice, mktprice, imageurl, nums, amount, promotionamount, promotionlist, weight, sendnums, addon, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsorderlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsorderlog (id, orderid, userid, type, msg, data, createtime) FROM stdin;
\.


--
-- Data for Name: corecmspages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspages (id, code, name, description, layout, type) FROM stdin;
1	mobile_home	移动端首页	移动端首页相关操作，可视化移动端、小程序端首页布局	1	1
2	mobile2	测试界面	测试界面	1	1
\.


--
-- Data for Name: corecmspagesitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspagesitems (id, widgetcode, pagecode, positionid, sort, parameters) FROM stdin;
4424	article	mobile2	0	1	{"list":[{"title":""}]}
4638	imgSlide	mobile_home	0	1	{"duration":2500,"list":[{"image":"https://files.nsts.mvccms.cn/Upload/20210112/20210112132620_9045.jpg","linkType":"1","linkValue":""},{"image":"https://files.nsts.mvccms.cn/Upload/20210112/20210112132702_7671.jpg","linkType":"1","linkValue":""},{"url":"","image":"https://files.nsts.mvccms.cn/Upload/20210112/20210112132727_1927.jpg","linkType":"1"}]}
4639	search	mobile_home	1	2	{"keywords":"请输入关键字搜索","style":"radius"}
4640	notice	mobile_home	2	3	{"type":"auto","list":[{"id":5,"title":"蚂蚁农庄小程序商城进行上线试运营","contentBody":null,"type":null,"sort":100,"isDel":false,"createTime":null,"LAY_TABLE_INDEX":0,"LAY_CHECKED":true}]}
4641	navBar	mobile_home	3	4	{"limit":4,"list":[{"image":"http://files.mvccms.cn/Upload/20200921/20200921233719_0796.jpg","text":"当季生鲜","linkType":"1","linkValue":"/pages/category/list/list?id=3"},{"image":"http://files.mvccms.cn/Upload/20200921/20200921233748_9384.jpg","text":"礼盒卷卡","linkType":"1","linkValue":"/pages/category/list/list?id=2049"},{"image":"http://files.mvccms.cn/Upload/20200921/20200921233909_8946.jpg","text":"寻鲜助农","linkType":"1","linkValue":"/pages/category/list/list?id=2047"},{"image":"http://files.mvccms.cn/Upload/20200921/20200921233931_1142.jpg","text":"中国特产","linkType":"1","linkValue":"/pages/category/list/list?id=2060  "},{"url":"","image":"http://files.mvccms.cn/Upload/20200921/20200921233954_0418.jpg","text":"休闲零嘴","linkType":"1","linkValue":"/pages/category/list/list?id=2052"},{"url":"","image":"http://files.mvccms.cn/Upload/20200921/20200921234013_3684.jpg","text":"水产海鲜","linkType":"1","linkValue":"/pages/category/list/list?id=2058  "},{"url":"","image":"http://files.mvccms.cn/Upload/20200921/20200921234023_0228.jpg","text":"烘培速食","linkType":"1","linkValue":"/pages/category/list/list?id=2065   "},{"url":"","image":"http://files.mvccms.cn/Upload/20200921/20200921234032_9688.jpg","text":"优惠券","linkType":"1","linkValue":"/pages/coupon/coupon"}]}
4642	coupon	mobile_home	4	5	{"limit":4}
4643	groupPurchase	mobile_home	5	6	{"title":"限时秒杀","limit":"10","list":[{"id":1042,"name":"海南芭蕉秒杀","type":4,"sort":100,"parameters":"{\\\\"goodsId\\\\":\\\\"4147\\\\",\\\\"nums\\\\":\\\\"1\\\\"}","maxNums":10,"maxGoodsNums":20,"maxRecevieNums":0,"startTime":"2021-04-10 00:00:00","endTime":"2021-05-07 04:00:00","isExclusive":false,"isAutoReceive":false,"isEnable":true,"isDel":false,"effectiveDays":0,"effectiveHours":0,"getNumber":0,"expression1":null,"expression2":null,"conditions":[],"results":[],"promotionCondition":null,"promotionResult":null,"LAY_TABLE_INDEX":0,"LAY_CHECKED":true}]}
4644	goods	mobile_home	6	7	{"title":"热销榜","lookMore":"true","type":"choose","classifyId":"36","brandId":" ","limit":10,"display":"list","column":2,"list":[{"id":4156,"image":"https://files.nsts.mvccms.cn/Upload/20210525/20210525231306_6301.jpg","images":"https://files.nsts.mvccms.cn/Upload/20210525/20210525231306_6301.jpg,https://files.nsts.mvccms.cn/Upload/20210525/20210525231314_1884.jpg,https://files.nsts.mvccms.cn/Upload/20210525/20210525231339_4176.jpg","price":129,"name":"南山田舍，海南火山岩荔枝王现摘现发，空运包邮","stock":9998},{"id":4157,"image":"https://files.nsts.mvccms.cn/Upload/20210530/20210530222755_6145.jpg","images":"https://files.nsts.mvccms.cn/Upload/20210530/20210530222755_6145.jpg,https://files.nsts.mvccms.cn/Upload/20210530/20210530222804_9052.jpg,https://files.nsts.mvccms.cn/Upload/20210530/20210530222918_8727.jpg","price":238,"name":"南山田舍，海南火山岩无核荔枝有5斤包邮","stock":9999},{"id":4143,"image":"https://files.nsts.mvccms.cn/Upload/20210221/20210221205747_1625.jpg","images":"https://files.nsts.mvccms.cn/Upload/20210221/20210221205747_1625.jpg,https://files.nsts.mvccms.cn/Upload/20210221/20210221205758_3252.jpg","price":75,"name":"南山田舍国产烟台美早大樱桃JJ3j4j5j新鲜水果车厘子特大顺丰包邮","stock":9997},{"id":4155,"image":"https://files.nsts.mvccms.cn/Upload/20210524/20210524071219_3394.jpg","images":"https://files.nsts.mvccms.cn/Upload/20210524/20210524071219_3394.jpg,https://files.nsts.mvccms.cn/Upload/20210524/20210524071233_3880.jpg","price":59,"name":"南山田舍，国产露天红灯大樱桃新鲜水果车厘子特大顺丰包邮","stock":9999},{"id":4118,"image":"http://files.mvccms.cn/Upload/20201113/20201113104004_5035.jpg","images":"http://files.mvccms.cn/Upload/20201113/20201113104004_5035.jpg,http://files.mvccms.cn/Upload/20201113/20201113104030_1875.jpg","price":85,"name":"树上熟海南金煌芒，香甜多汁，精品A级10斤特大芒果，全国包邮","stock":9990},{"id":4064,"image":"http://files.mvccms.cn/Upload/20200903/20200903105255_8759.jpg","images":"http://files.mvccms.cn/Upload/20200903/20200903105255_8759.jpg,http://files.mvccms.cn/Upload/20200903/20200903105304_4667.jpg,http://files.mvccms.cn/Upload/20200903/20200903105312_7752.jpg","price":69.8,"name":"海南金都一号红心火龙果，蜜宝红肉当季新鲜水果现摘8斤精品果包邮","stock":9999},{"id":4093,"image":"http://files.mvccms.cn/Upload/20201015/20201015192115_9543.jpg","images":"http://files.mvccms.cn/Upload/20201015/20201015192115_9543.jpg,http://files.mvccms.cn/Upload/20201015/20201015192125_2324.jpg,http://files.mvccms.cn/Upload/20201015/20201015192139_2279.jpg,http://files.mvccms.cn/Upload/20201015/20201015192154_5042.jpg","price":39.9,"name":"南山田舍，山东玫珑蜜网纹蜜瓜软糯香甜单果整箱新鲜包邮","stock":9997},{"id":4048,"image":"http://files.mvccms.cn/Upload/20200821/20200821105408_8615.jpg","images":"http://files.mvccms.cn/Upload/20200821/20200821105408_8615.jpg,http://files.mvccms.cn/Upload/20200821/20200821105412_7360.jpg,http://files.mvccms.cn/Upload/20200821/20200821105532_9278.jpg,http://files.mvccms.cn/Upload/20200821/20200821105539_6868.jpg","price":79,"name":"【椰语堂】海南特产椰奶清补凉椰子汁早餐280g*12罐植物蛋白饮料","stock":1000}]}
4645	video	mobile_home	7	8	{"autoplay":"false","list":[{"image":"https://files.nsts.mvccms.cn/Upload/20210111/20210111002816_8374.jpg","url":"https://files.nsts.mvccms.cn/video/nsts001.mp4","linkType":"","linkValue":""}]}
4646	goods	mobile_home	8	9	{"title":"匠心精选","lookMore":"true","type":"choose","classifyId":"2062","brandId":23,"limit":9,"display":"list","column":3,"list":[{"id":4083,"image":"http://files.mvccms.cn/Upload/20201003/20201003091051_5583.jpg","images":"http://files.mvccms.cn/Upload/20201003/20201003091051_5583.jpg,http://files.mvccms.cn/Upload/20201003/20201003091102_7032.jpg,http://files.mvccms.cn/Upload/20201003/20201003091121_0005.jpg","price":45.9,"name":"山东纯野生去头小黄花鱼干，1斤包邮","stock":9999},{"id":4085,"image":"http://files.mvccms.cn/Upload/20201004/20201004111050_1573.jpg","images":"http://files.mvccms.cn/Upload/20201004/20201004111050_1573.jpg,http://files.mvccms.cn/Upload/20201004/20201004111059_8217.jpg","price":79,"name":"冷水海域墨鱼干，纯手工晾晒，个大肉厚，煲汤鲜美,包邮","stock":9997},{"id":4086,"image":"http://files.mvccms.cn/Upload/20201004/20201004113557_6067.jpg","images":"http://files.mvccms.cn/Upload/20201004/20201004113557_6067.jpg,http://files.mvccms.cn/Upload/20201004/20201004113547_8089.jpg,http://files.mvccms.cn/Upload/20201004/20201004113611_5504.jpg,http://files.mvccms.cn/Upload/20201004/20201004113621_2902.jpg","price":25.8,"name":"香酥小黄鱼，酥脆即食黄花鱼一斤包邮","stock":9999},{"id":4090,"image":"http://files.mvccms.cn/Upload/20201009/20201009092646_5675.jpg","images":"http://files.mvccms.cn/Upload/20201009/20201009092646_5675.jpg,http://files.mvccms.cn/Upload/20201009/20201009092655_4424.jpg,http://files.mvccms.cn/Upload/20201009/20201009092705_3893.jpg","price":89.9,"name":"长白山野生特级黑山碗耳，黑木耳500g包邮","stock":9998},{"id":4091,"image":"http://files.mvccms.cn/Upload/20201014/20201014162035_7169.jpg","images":"http://files.mvccms.cn/Upload/20201014/20201014162035_7169.jpg,http://files.mvccms.cn/Upload/20201014/20201014162051_5629.jpg,http://files.mvccms.cn/Upload/20201014/20201014162107_0172.jpg","price":158,"name":"【大号元贝】特级大野生干贝瑶柱野生扇贝干货大码500克包邮","stock":9998},{"id":4093,"image":"http://files.mvccms.cn/Upload/20201015/20201015192115_9543.jpg","images":"http://files.mvccms.cn/Upload/20201015/20201015192115_9543.jpg,http://files.mvccms.cn/Upload/20201015/20201015192125_2324.jpg,http://files.mvccms.cn/Upload/20201015/20201015192139_2279.jpg,http://files.mvccms.cn/Upload/20201015/20201015192154_5042.jpg","price":39.9,"name":"南山田舍，山东玫珑蜜网纹蜜瓜软糯香甜单果整箱新鲜包邮","stock":9999}]}
\.


--
-- Data for Name: corecmspayments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspayments (id, name, code, isonline, parameters, sort, memo, isenable) FROM stdin;
1	微信支付	wechatpay	t	{"mch_id":"11","key":"22"}	111	点击去微信支付	t
2	支付宝支付	alipay	t	{"appid":"11","rsa_private_key":"22","alipay_public_key":"33"}	112	点击去支付宝支付	f
3	线下支付	offline	f		100	联系客服进行线下付款	f
4	余额支付	balancepay	t		100	账户余额支付	t
\.


--
-- Data for Name: corecmspintuangoods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspintuangoods (ruleid, goodsid) FROM stdin;
\.


--
-- Data for Name: corecmspintuanrecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspintuanrecord (id, teamid, userid, ruleid, goodsid, status, orderid, parameters, closetime, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmspintuanrule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspintuanrule (id, name, starttime, endtime, peoplenumber, significantinterval, discountamount, maxnums, maxgoodsnums, sort, isstatusopen, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsproducts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsproducts (id, goodsid, barcode, sn, price, costprice, mktprice, marketable, weight, stock, freezestock, spesdesc, isdefalut, images, isdel) FROM stdin;
2150	2026	BN1586230461355	BN1586230461355	10.00	0.00	15.00	t	0.00	1111	79		t	http://files.mvccms.cn/Upload/20200614/20200614162826_9247.jpg	f
2151	2027	BN1590735828027	BN1590735828027	2.00	1.00	3.00	t	0.00	997	18		t	http://files.mvccms.cn/Upload/20200614/20200614205507_6314.jpg	f
2152	2028	BN1592131174887	BN1592131174886	55.00	0.00	68.00	t	0.00	1	0		t	\N	t
2153	2028	BN1592131174887	SN1592131174887	40.00	31.00	68.00	t	0.00	100	7	重量:份	t	http://files.mvccms.cn/Upload/20200825/20200825163537_5021.jpg	f
2154	2029	BN1592137795978	BN1592137795978	63.00	0.00	78.00	t	0.00	99	3		t		f
2155	2030	BN1592140714124	BN1592140714124	20.00	0.00	25.00	t	0.00	97	4		t		f
2156	2031	BN1592146548837	BN1592146548837	2.00	1.00	3.00	t	0.00	995	21		t	http://files.mvccms.cn/Upload/20200614/20200614225748_1641.jpg	f
2157	2032	BN1592147534888	BN1592147534888	88.00	58.00	98.00	t	0.00	221	2		t		f
3152	3028	BN1592281937067	BN1592281937067	10.00	8.00	13.00	t	0.00	100	0		t		t
3153	3028	BN1592281937067	SN1592281962653_1	10.00	8.00	13.00	t	0.00	100	0	重量:份	t		t
3154	3028	BN1592281937067	SN1592281962653_2	258.00	0.00	280.00	t	0.00	100	0	重量:个	f		t
3155	3028	BN1592281937067	SN1592281962653_1	249.00	190.00	280.00	t	0.00	10	1	重量:30	f	http://files.mvccms.cn/Upload/20200616/20200616123411_7451.jpg	f
3156	3028	BN1592281937067	SN1592281962653_2	10.00	6.00	13.00	t	0.00	10	0	重量:1个	t	http://files.mvccms.cn/Upload/20200616/20200616123411_7451.jpg	f
3157	3028	BN1592281937067	SN1592281962653_3	54.00	42.00	68.00	t	0.00	10	0	重量:6个	f	http://files.mvccms.cn/Upload/20200616/20200616123411_7451.jpg	f
3158	3029	BN1596692172157	BN1596692172157	0.00	0.00	0.00	t	0.00	99	0		t	\N	f
3159	3030	BN1596698099138	SN1596698086622_1	0.00	0.00	0.00	t	0.00	1	0	颜色:灰色,重量:斤	t		f
3160	3030	BN1596698099138	SN1596698086622_2	0.00	0.00	0.00	t	0.00	1	0	颜色:灰色,重量:份	f		f
3161	3030	BN1596698099138	SN1596698086622_3	0.00	0.00	0.00	t	0.00	1	0	颜色:白色,重量:斤	f		f
3162	3030	BN1596698099138	SN1596698086622_4	0.00	0.00	0.00	t	0.00	1	0	颜色:白色,重量:份	f		f
4158	4029	BN1596804507932	BN1596804507932	50.00	41.00	59.00	t	0.00	100	0		t	http://files.mvccms.cn/Upload/20200807/20200807204516_6465.jpg	f
4159	4030	BN1596805616123	BN1596805616123	50.00	41.00	55.00	t	0.00	99	3		t	http://files.mvccms.cn/Upload/20200807/20200807210700_1527.jpg	t
4160	4031	BN1596889631407	BN1596889631407	45.00	34.00	55.00	t	0.00	1	0		t	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg	t
4161	4031	BN1596889631407	SN1596889634337_1	49.00	34.00	55.00	t	0.00	1	1	猕猴桃专用属性:大果5斤装	t		t
4162	4031	BN1596889631407	SN1596889634337_2	55.00	38.00	68.00	t	0.00	1	1	猕猴桃专用属性:特大果5斤装	f		t
4163	4030	BN1596805616123	SN1596805446496_1	39.00	31.00	50.00	t	0.00	93	12	冬枣专用:精品A果3斤装	t	http://files.mvccms.cn/Upload/20200830/20200830142749_1533.jpg	f
4164	4030	BN1596805616123	SN1596805446496_2	58.00	43.00	79.00	t	0.00	96	6	冬枣专用:精品A果5斤装	f	http://files.mvccms.cn/Upload/20200830/20200830182815_5250.jpg	f
4165	4032	01	SN1596902039553	0.00	0.00	1.00	t	0.00	998	40		t	http://files.mvccms.cn/Upload/20200808/20200808235428_6295.jpg	f
4166	4033	智利荔枝	智利荔枝	0.00	0.00	0.00	t	0.00	100	2		t		f
4167	4031	BN1596889631407	SN1596889634337_1	26.00	19.00	30.00	t	0.00	96	8	浦江猕猴桃:中果15个装	t		t
4168	4031	BN1596889631407	SN1596889634337_2	36.00	28.00	40.00	t	0.00	98	2	浦江猕猴桃:中果30个装	f		t
4169	4031	BN1596889631407	SN1596889634337_3	29.00	22.00	32.00	t	0.00	100	0	浦江猕猴桃:大果12个装	f		t
4170	4031	BN1596889631407	SN1596889634337_4	49.00	35.00	55.00	t	0.00	98	3	浦江猕猴桃:大果24个装	f		t
4171	4031	BN1596889631407	SN1596889634337_5	30.00	23.00	35.00	t	0.00	100	0	浦江猕猴桃:特大果10个装	f		t
4172	4031	BN1596889631407	SN1596889634337_6	55.00	38.00	63.00	t	0.00	100	0	浦江猕猴桃:特大果20个装	f		t
4173	4034	BN1597024010453	SN1597023882797_1	368.00	0.00	428.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2.5两8只	f	\N	f
4174	4034	BN1597024010453	SN1597023882797_2	338.00	0.00	398.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3.5两4只，母2.5两4只	f	\N	f
4175	4034	BN1597024010453	SN1597023882797_3	398.00	0.00	498.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3.5两6只，母2.5两6只	t	\N	f
4176	4034	BN1597024010453	SN1597023882797_4	528.00	0.00	628.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2.8两4只	f	\N	f
4177	4034	BN1597024010453	SN1597023882797_5	768.00	0.00	868.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（五谷丰登）8888型，公4.5两4只，母3两4只	f	\N	f
4178	4034	BN1597024010453	SN1597023882797_6	1388.00	0.00	1688.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3.5两4只	f	\N	f
4179	4034	BN1597024010453	SN1597023882797_7	1988.00	0.00	2388.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	f	\N	f
4180	4034	BN1597024010453	SN1597023882797_8	3588.00	0.00	4288.00	t	0.00	10000	0	祖母清晨阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4.5两4只	f	\N	f
4181	4035	BN1597025940809	SN1597025947139_1	368.00	280.00	468.00	t	0.00	10000	0	阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2.5两8只	f	\N	f
4182	4035	BN1597025940809	SN1597025947139_2	338.00	240.00	428.00	t	0.00	10000	0	阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3.5两4只，母2.5两4只	f	\N	f
4183	4035	BN1597025940809	SN1597025947139_3	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3.5两6只，母2.5两6只	t	\N	f
4184	4035	BN1597025940809	SN1597025947139_4	528.00	320.00	628.00	t	0.00	10000	0	阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2.8两4只	f	\N	f
4185	4035	BN1597025940809	SN1597025947139_5	768.00	550.00	968.00	t	0.00	10000	0	阳澄湖大闸蟹:（五谷丰登）8888型，公4.5两4只，母3两4只	f	\N	f
4186	4035	BN1597025940809	SN1597025947139_6	1388.00	790.00	1688.00	t	0.00	10000	0	阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3.5两4只	f	\N	f
4187	4035	BN1597025940809	SN1597025947139_7	1988.00	1220.00	2388.00	t	0.00	10000	0	阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	f	\N	f
4188	4035	BN1597025940809	SN1597025947139_8	3588.00	2200.00	4588.00	t	0.00	10000	0	阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4.5两4只	f	\N	f
4189	4036	BN1597027062144	SN1597027061232_1	368.00	280.00	468.00	t	0.00	10000	0	阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2.5两8只	f		t
4190	4036	BN1597027062144	SN1597027061232_2	338.00	240.00	428.00	t	0.00	10000	0	阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3.5两4只，母2.5两4只	f		t
4191	4036	BN1597027062144	SN1597027061232_3	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3.5两6只，母2.5两6只	t		t
4192	4036	BN1597027062144	SN1597027061232_4	528.00	320.00	628.00	t	0.00	10000	0	阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2.8两4只	f		t
4193	4036	BN1597027062144	SN1597027061232_5	768.00	470.00	868.00	t	0.00	10000	0	阳澄湖大闸蟹:（五谷丰登）8888型，公4.5两4只，母3两4只	f		t
4194	4036	BN1597027062144	SN1597027061232_6	1388.00	790.00	1588.00	t	0.00	10000	0	阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3.5两4只	f		t
4195	4036	BN1597027062144	SN1597027061232_7	1988.00	1220.00	2588.00	t	0.00	10000	0	阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	f		t
4196	4036	BN1597027062144	SN1597027061232_8	3588.00	2200.00	4588.00	t	0.00	10000	0	阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4.5两4只	f		t
4197	4036	BN1597027062144	SN1597027061232_1	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	t		t
4198	4036	BN1597027062144	SN1597027061232_2	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2点5两8只	f		t
4199	4036	BN1597027062144	SN1597027061232_3	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只	f		t
4200	4036	BN1597027062144	SN1597027061232_4	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只	f		t
4201	4036	BN1597027062144	SN1597027061232_5	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（五谷丰登）8888型，公4点5两4只，母3两4只	f		t
4202	4036	BN1597027062144	SN1597027061232_6	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3点5两4只	f		t
4203	4036	BN1597027062144	SN1597027061232_7	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4点5两4只	f		t
4204	4036	BN1597027062144	SN1597027061232_1	368.00	280.00	468.00	t	0.00	10000	0	阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4205	4036	BN1597027062144	SN1597027061232_2	338.00	240.00	368.00	t	0.00	10000	0	阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2点5两8只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4206	4036	BN1597027062144	SN1597027061232_3	398.00	320.00	498.00	t	0.00	10000	0	阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4207	4036	BN1597027062144	SN1597027061232_4	528.00	320.00	628.00	t	0.00	10000	1	阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只	t	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4208	4036	BN1597027062144	SN1597027061232_5	768.00	470.00	868.00	t	0.00	10000	0	阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2点8两4只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4209	4036	BN1597027062144	SN1597027061232_6	1388.00	790.00	1688.00	t	0.00	10000	0	阳澄湖大闸蟹:（五谷丰登）8888型，公4点5两4只，母3两4只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4210	4036	BN1597027062144	SN1597027061232_7	1988.00	1220.00	2588.00	t	0.00	10000	0	阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3点5两4只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4211	4036	BN1597027062144	SN1597027061232_8	3588.00	2200.00	4588.00	t	0.00	10000	0	阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4点5两4只	f	http://files.mvccms.cn/Upload/20200812/20200812110714_4734.jpg	f
4212	4037	BN1597117651511	SN1597117555121_1	78.00	59.00	99.00	t	0.00	999	1	突尼斯软子石榴礼:礼盒特级果6-8个8斤装	f	http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg	f
4213	4037	BN1597117651511	SN1597117555121_2	65.00	45.00	65.00	t	0.00	1000	0	突尼斯软子石榴礼:礼盒大果8个6斤装	f	http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg	f
4214	4037	BN1597117651511	SN1597117555121_3	55.00	35.00	59.00	t	0.00	898	103	突尼斯软子石榴礼:大果6-7个5斤装	f	http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg	f
4215	4037	BN1597117651511	SN1597117555121_4	45.00	32.00	49.00	t	0.00	987	17	突尼斯软子石榴礼:中果8-9个5斤装	t	http://files.mvccms.cn/Upload/20200811/20200811115441_9743.jpg	f
4216	4038	BN1597127960482	SN1597127951646_1	35.00	20.00	45.00	t	0.00	1000	0	蛋黄酥:板栗味（6枚）	t	\N	t
4217	4038	BN1597127960482	SN1597127951646_2	35.00	20.00	45.00	t	0.00	1000	0	蛋黄酥:红豆味（6枚）	f	\N	t
4218	4038	BN1597127960482	SN1597127951646_1	35.00	20.00	48.00	t	0.00	998	3	蛋黄酥:板栗味（6枚）盒	t		t
4219	4038	BN1597127960482	SN1597127951646_2	35.00	20.00	48.00	t	0.00	998	2	蛋黄酥:红豆味（6枚）盒	f		t
4220	4038	BN1597127960482	SN1597127951646_3	118.00	80.00	138.00	t	0.00	999	1	蛋黄酥:双拼24枚（4盒）	f		t
4221	4039	BN1597160812288	SN1597160809218_1	28.00	18.00	35.00	t	0.00	9999	2	功夫水饺:韭菜猪肉（1斤）	t	http://files.mvccms.cn/Upload/20200830/20200830185854_2221.jpg	f
4222	4039	BN1597160812288	SN1597160809218_2	28.00	18.00	35.00	t	0.00	9998	5	功夫水饺:香葱猪肉（1斤）	f	http://files.mvccms.cn/Upload/20200830/20200830185901_1918.jpg	f
4223	4039	BN1597160812288	SN1597160809218_3	28.00	18.00	35.00	t	0.00	9996	4	功夫水饺:香菇猪肉（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231417_4968.jpg	f
4224	4039	BN1597160812288	SN1597160809218_4	28.00	18.00	35.00	t	0.00	10000	0	功夫水饺:芹菜猪肉（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231422_6760.jpg	f
4225	4039	BN1597160812288	SN1597160809218_5	28.00	18.00	35.00	t	0.00	9998	2	功夫水饺:莲藕猪肉（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231445_9462.jpg	f
4226	4039	BN1597160812288	SN1597160809218_6	28.00	18.00	35.00	t	0.00	9999	2	功夫水饺:白菜猪肉（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231449_4105.jpg	f
4227	4039	BN1597160812288	SN1597160809218_7	25.00	18.00	35.00	t	0.00	9997	3	功夫水饺:胡萝卜玉米（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231453_4167.jpg	f
4228	4039	BN1597160812288	SN1597160809218_8	28.00	18.00	35.00	t	0.00	9999	1	功夫水饺:干笋猪肉（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231457_6950.jpg	f
4229	4039	BN1597160812288	SN1597160809218_9	32.00	18.00	35.00	t	0.00	10000	0	功夫水饺:羊肉水饺（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231501_7538.jpg	f
4230	4039	BN1597160812288	SN1597160809218_10	32.00	18.00	35.00	t	0.00	9999	2	功夫水饺:功夫馄饨（1斤）	f	http://files.mvccms.cn/Upload/20200906/20200906231506_2073.jpg	f
4231	4031	BN1596889631407	SN1596889634337_1	28.00	19.00	32.00	t	0.00	96	3	浦江A级精品猕猴桃:中果15个装	t	http://files.mvccms.cn/Upload/20200812/20200812213706_8074.jpg	t
4232	4031	BN1596889631407	SN1596889634337_2	33.00	32.00	44.00	t	0.00	82	17	浦江A级精品猕猴桃:中果30个装	t	http://files.mvccms.cn/Upload/20200812/20200812213710_7910.jpg	t
4233	4031	BN1596889631407	SN1596889634337_3	50.00	38.00	55.00	t	0.00	86	14	浦江A级精品猕猴桃:大果24个装	f	http://files.mvccms.cn/Upload/20200812/20200812213715_0350.jpg	t
4234	4031	BN1596889631407	SN1596889634337_4	60.00	43.00	65.00	t	0.00	99	1	浦江A级精品猕猴桃:大果24个（礼盒）	f	http://files.mvccms.cn/Upload/20200812/20200812213720_1818.jpg	t
4235	4031	BN1596889631407	SN1596889634337_5	59.00	43.00	66.00	t	0.00	96	4	浦江A级精品猕猴桃:特大果18-20个装	f	http://files.mvccms.cn/Upload/20200812/20200812213724_0571.jpg	t
4236	4031	BN1596889631407	SN1596889634337_6	69.00	46.00	79.00	t	0.00	100	1	浦江A级精品猕猴桃:特大果18-20个（礼盒）	f	http://files.mvccms.cn/Upload/20200812/20200812213728_2410.jpg	t
4237	4040	BN1597502551081	BN1597502551081	1.00	1.00	1.00	t	0.00	999	0		t	http://files.mvccms.cn/Upload/20200815/20200815224259_6601.jpg	f
4238	4041	BN1597503913892	BN1597503913892	1.00	1.00	1.00	t	0.00	999	0		t	http://files.mvccms.cn/Upload/20200815/20200815230539_7872.jpg	f
4239	4042	BN1597505458211	BN1597505458211	1.00	1.00	1.00	t	0.00	999	0		t	http://files.mvccms.cn/Upload/20200815/20200815233126_9012.jpg	f
4240	4043	BN1597511089122	SN1597511089122	1.00	1.00	1.00	t	0.00	997	22		t	https://files.nsts.mvccms.cn/Upload/20210505/20210505020957_3444.jpg	f
4241	4044	BN1597907595812	BN1597907595812	149.00	113.00	169.00	t	0.00	1000	0		t	http://files.mvccms.cn/Upload/20200820/20200820151118_0005.jpg	f
4242	4045	BN1597910486951	SN1597910485565_1	38.00	24.00	45.00	t	0.00	1000	0	通用:5斤	t	\N	t
4243	4046	BN1597911905969	BN1597911905969	0.00	0.00	0.00	t	0.00	1	0		t	http://files.mvccms.cn/Upload/20200820/20200820162531_1253.jpg	f
4244	4045	BN1597910486951	SN1597910485565_1	48.00	25.00	58.00	t	0.00	996	3	通用:5斤	t	http://files.mvccms.cn/Upload/20200820/20200820163816_8704.jpg	f
4245	4045	BN1597910486951	SN1597910485565_2	58.00	35.00	68.00	t	0.00	997	3	通用:8斤	f	http://files.mvccms.cn/Upload/20200820/20200820163822_7777.jpg	f
4246	4047	BN1597913231193	SN1597913231193	135.00	115.00	159.00	t	0.00	998	3		t	http://files.mvccms.cn/Upload/20200820/20200820165159_9020.jpg	f
4247	4048	BN1597976795158	SN1597976795158	79.00	72.00	109.00	t	0.00	1000	10		t	http://files.mvccms.cn/Upload/20200821/20200821105408_8615.jpg	f
4248	4049	BN1598029834798	SN1598029834798	59.00	38.00	65.00	t	0.00	999	0		t	http://files.mvccms.cn/Upload/20200822/20200822011038_8394.jpg	f
4249	4050	BN1598409233463	SN1598409192104_1	36.00	27.00	46.00	t	0.00	1000	0	翠香绿心猕猴桃:中果26-30枚	t	http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg	f
4250	4050	BN1598409233463	SN1598409192104_2	40.00	27.00	50.00	t	0.00	999	1	翠香绿心猕猴桃:大果20-24枚	f	http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg	f
4251	4050	BN1598409233463	SN1598409192104_3	56.00	27.00	63.00	t	0.00	1000	0	翠香绿心猕猴桃:特大果8斤装	f	http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg	f
4252	4050	BN1598409233463	SN1598409192104_4	50.00	35.00	55.00	t	0.00	1000	0	翠香绿心猕猴桃:精品礼盒	f	http://files.mvccms.cn/Upload/20200826/20200826103442_2301.jpg	f
4253	4051	BN1598837599738	BN1598837599738	89.00	73.00	139.00	t	0.00	100	0		t	http://files.mvccms.cn/Upload/20200831/20200831093554_3894.jpg	t
4254	4038	BN1597127960482	SN1597127951646_1	30.00	23.00	48.00	t	0.00	999	0	蛋黄酥:板栗味（6枚）盒	t	https://files.nsts.mvccms.cn/Upload/20210515/20210515152603_5907.jpg	f
4255	4038	BN1597127960482	SN1597127951646_2	30.00	23.00	48.00	t	0.00	998	1	蛋黄酥:红豆味（6枚）盒	f	https://files.nsts.mvccms.cn/Upload/20210515/20210515152639_8628.jpg	f
4256	4038	BN1597127960482	SN1597127951646_3	30.00	23.00	48.00	t	0.00	998	1	蛋黄酥:肉松味（6枚）盒	f	https://files.nsts.mvccms.cn/Upload/20210515/20210515152749_2369.jpg	f
4257	4038	BN1597127960482	SN1597127951646_4	108.00	92.00	158.00	t	0.00	999	0	蛋黄酥:随机4盒（24枚）	f	https://files.nsts.mvccms.cn/Upload/20210515/20210515152754_7020.jpg	f
4258	4051	BN1598837599738	SN1598837527703_1	99.00	86.00	159.00	t	0.00	97	3	通用:5斤	f	http://files.mvccms.cn/Upload/20200831/20200831104826_8002.jpg	t
4259	4051	BN1598837599738	SN1598837527703_2	89.00	76.00	139.00	t	0.00	100	0	通用:4斤	f	http://files.mvccms.cn/Upload/20200831/20200831104831_6941.jpg	t
4260	4051	BN1598837599738	SN1598837527703_3	79.00	66.00	119.00	t	0.00	100	0	通用:3斤	t	http://files.mvccms.cn/Upload/20200831/20200831104835_8577.jpg	t
4261	4052	BN1598924812576	SN1598924808598_1	368.00	278.00	398.00	t	0.00	9999	6	阳澄湖大闸蟹:（送亲朋，大方体面）1688型，母2点5两8只	t	http://files.mvccms.cn/Upload/20200901/20200901095306_1617.jpg	f
4262	4053	BN1598926029328	SN1598925844614_1	338.00	258.00	368.00	t	0.00	9990	11	阳澄湖大闸蟹:（聚会吃，经济实惠）1888型，公3点5两4只，母2点5两4只	t	http://files.mvccms.cn/Upload/20200901/20200901113818_8190.jpg	f
4263	4054	BN1598926133293	SN1598926132353_1	398.00	318.00	498.00	t	0.00	9974	26	阳澄湖大闸蟹:（店铺爆款，性价比之王）2588型，公3点5两6只，母2点5两6只	t	http://files.mvccms.cn/Upload/20200901/20200901113926_0038.jpg	f
4264	4055	BN1598929931299	SN1598929574896_1	528.00	318.00	628.00	t	0.00	9999	1	阳澄湖大闸蟹:（送领导，升职加薪）2888型，公4两4只，母2点8两4只	t	http://files.mvccms.cn/Upload/20200901/20200901113556_3093.jpg	f
4265	4056	BN1598930218792	SN1598930136291_1	768.00	468.00	898.00	t	0.00	9997	4	阳澄湖大闸蟹:（五谷丰登）8888型，公4点5两4只，母3两4只	t	http://files.mvccms.cn/Upload/20200901/20200901111416_8677.jpg	f
4266	4057	BN1598930383389	SN1598930235828_1	1388.00	788.00	1588.00	t	0.00	10000	0	阳澄湖大闸蟹:（金玉满堂）9999型，公5两4只，母3点5两4只	t	http://files.mvccms.cn/Upload/20200906/20200906024622_1279.jpg	f
4267	4058	BN1598930497519	SN1598930496079_1	1988.00	1218.00	2588.00	t	0.00	10000	0	阳澄湖大闸蟹:（大展宏图）88888型，公6两4只，母4两4只	t	http://files.mvccms.cn/Upload/20200906/20200906024520_9023.jpg	f
4268	4059	BN1598931142748	SN1598931141336_1	3588.00	2278.00	4588.00	t	0.00	10000	0	阳澄湖大闸蟹:（国泰民安）99999型，公7两4只，母4点5两4只	t	http://files.mvccms.cn/Upload/20200906/20200906023313_0989.jpg	f
4269	4060	BN1598931972387	SN1598931801414_1	398.00	305.00	498.00	t	0.00	9997	4	通用:件	t	http://files.mvccms.cn/Upload/20200906/20200906025153_4926.jpg	f
4270	4061	BN1599010424876	BN1599010424876	65.00	52.00	79.00	t	0.00	1000	0		t	http://files.mvccms.cn/Upload/20200902/20200902093525_2177.jpg	f
4271	4062	BN1599099511453	SN1599099510206_1	46.00	33.00	55.00	t	0.00	1000	0	海鸭蛋:20个装（60-69克）	t	http://files.mvccms.cn/Upload/20200903/20200903103935_7947.jpg	f
4272	4063	BN1599099954210	SN1599099950434_1	50.00	35.00	59.00	t	0.00	1000	0	海鸭蛋:20个装（70-79克）	t	http://files.mvccms.cn/Upload/20200906/20200906232318_5735.jpg	f
4273	4064	BN1599101143187	BN1599101143187	50.00	33.00	55.00	t	0.00	998	2		t	http://files.mvccms.cn/Upload/20200903/20200903105255_8759.jpg	t
4274	4051	BN1598837599738	SN1598837527703_1	112.00	91.00	128.00	t	0.00	100	0	榴莲:（实惠款）单果3-4斤	t	http://files.mvccms.cn/Upload/20200907/20200907105924_0350.jpg	t
4275	4051	BN1598837599738	SN1598837527703_2	145.00	112.00	158.00	t	0.00	100	0	榴莲:（店长推荐）单果4-5斤	f	http://files.mvccms.cn/Upload/20200907/20200907105930_6768.jpg	t
4276	4051	BN1598837599738	SN1598837527703_3	165.00	133.00	188.00	t	0.00	100	0	榴莲:（力荐品质款）单果5-6斤	f	http://files.mvccms.cn/Upload/20200907/20200907105938_1413.jpg	t
4277	4051	BN1598837599738	SN1598837527703_4	185.00	155.00	198.00	t	0.00	100	0	榴莲:（吃货推荐款）单果6-7斤	f	http://files.mvccms.cn/Upload/20200907/20200907105948_8435.jpg	t
4278	4051	BN1598837599738	SN1598837527703_5	208.00	175.00	228.00	t	0.00	100	0	榴莲:（家庭分享款）单果7-8斤	f	http://files.mvccms.cn/Upload/20200907/20200907105955_3822.jpg	t
4279	4065	BN1599533489165	BN1599533489165	73.00	59.00	99.00	t	0.00	1	0		t	http://files.mvccms.cn/Upload/20200908/20200908105531_7779.jpg	t
4280	4064	BN1599101143187	SN1599101130307_1	36.00	25.00	49.00	t	3.00	998	2	火龙果:5斤中果（7-9个）	t	http://files.mvccms.cn/Upload/20200909/20200909103159_3513.jpg	t
4281	4064	BN1599101143187	SN1599101130307_2	50.00	33.00	69.00	t	3.00	1000	0	火龙果:5斤大果（4-6个）	f	http://files.mvccms.cn/Upload/20200909/20200909103212_5862.jpg	t
4282	4065	BN1599533489165	SN1599533483140_1	36.00	28.00	59.00	t	0.00	96	4	板栗:板栗（3斤）	t	http://files.mvccms.cn/Upload/20200909/20200909113242_2315.jpg	f
4283	4065	BN1599533489165	SN1599533483140_2	50.00	38.00	99.00	t	0.00	96	4	板栗:板栗（5斤）	f	http://files.mvccms.cn/Upload/20200909/20200909113253_5962.jpg	f
4284	4065	BN1599533489165	SN1599533483140_3	73.00	59.00	99.00	t	0.00	100	0	板栗:锥栗（5斤）	f	http://files.mvccms.cn/Upload/20200909/20200909113300_1043.jpg	t
4285	4031	BN1596889631407	SN1596889634337_1	40.00	31.00	50.00	t	0.00	58	0	浦江A级精品猕猴桃:中果30个装	t	http://files.mvccms.cn/Upload/20200910/20200910194951_6191.jpg	t
4286	4031	BN1596889631407	SN1596889634337_2	50.00	38.00	60.00	t	0.00	53	0	浦江A级精品猕猴桃:大果24个装	f	http://files.mvccms.cn/Upload/20200910/20200910195023_6073.jpg	t
4287	4031	BN1596889631407	SN1596889634337_3	60.00	43.00	69.00	t	0.00	72	0	浦江A级精品猕猴桃:大果24个（礼盒）	f	null	t
4288	4031	BN1596889631407	SN1596889634337_4	50.00	38.00	60.00	t	0.00	90	1	浦江A级精品猕猴桃:中果30个（礼盒）	f	null	t
4289	4066	BN1599796724660	SN1599796721260_1	40.00	33.00	59.00	t	0.00	100	0	百香果:3斤	t	https://files.nsts.mvccms.cn/Upload/20210424/20210424204525_0028.jpg	f
4290	4066	BN1599796724660	SN1599796721260_2	56.00	48.00	89.00	t	0.00	100	5	百香果:5斤	f	https://files.nsts.mvccms.cn/Upload/20210424/20210424204531_2724.jpg	f
4291	4067	BN1599798646031	SN1599798091778_1	26.00	15.00	26.00	t	0.00	100	0	水果:5斤	t	http://files.mvccms.cn/Upload/20200911/20200911122552_1341.jpg	f
4292	4067	BN1599798646031	SN1599798091778_2	36.00	20.00	36.00	t	0.00	100	0	水果:9斤	f	http://files.mvccms.cn/Upload/20200911/20200911122552_1341.jpg	f
4293	4068	BN1600066394293	SN1600066403422_1	28.00	19.00	38.00	t	0.00	9994	6	水果:5斤	t	http://files.mvccms.cn/Upload/20200914/20200914145748_2915.jpg	f
4294	4068	BN1600066394293	SN1600066403422_2	48.00	29.00	58.00	t	0.00	10000	0	水果:10斤	f	http://files.mvccms.cn/Upload/20200914/20200914145748_2915.jpg	f
4295	4031	BN1596889631407	SN1596889634337_1	46.00	31.00	60.00	t	0.00	98	3	浦江A级精品猕猴桃:中果30个装	t	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg	f
4296	4031	BN1596889631407	SN1596889634337_2	55.00	43.00	65.00	t	0.00	99	1	浦江A级精品猕猴桃:大果24个装	f	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg	t
4297	4031	BN1596889631407	SN1596889634337_3	65.00	49.00	78.00	t	0.00	100	0	浦江A级精品猕猴桃:大果24个（礼盒）	f	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg	t
4298	4031	BN1596889631407	SN1596889634337_4	56.00	31.00	70.00	t	0.00	100	0	浦江A级精品猕猴桃:中果30个（礼盒）	f	http://files.mvccms.cn/Upload/20200808/20200808202716_1016.jpg	f
4299	4069	BN1600081698911	BN1600081698911	128.00	65.00	158.00	t	0.00	100	0		t	http://files.mvccms.cn/Upload/20200914/20200914191106_6953.jpg	t
4300	4069	BN1600081698911	SN1600081686467_1	78.00	40.00	99.00	t	0.00	100	0	蜂蜜:1斤	t	http://files.mvccms.cn/Upload/20200914/20200914191106_6953.jpg	f
4301	4069	BN1600081698911	SN1600081686467_2	138.00	80.00	158.00	t	0.00	116	6	蜂蜜:2斤	f	http://files.mvccms.cn/Upload/20200914/20200914191106_6953.jpg	f
4302	4070	BN1600311418321	SN1600311512742_1	76.00	55.00	99.00	t	0.00	97	3	特色美食:中辣	t	http://files.mvccms.cn/Upload/20200917/20200917105805_1766.jpg	f
4303	4070	BN1600311418321	SN1600311512742_2	76.00	55.00	99.00	t	0.00	100	0	特色美食:特辣	f	http://files.mvccms.cn/Upload/20200917/20200917105805_1766.jpg	f
4304	4071	BN1600651185632	SN1600651185632	358.00	205.00	399.00	t	0.00	997	3		t	http://files.mvccms.cn/Upload/20201007/20201007120640_5018.jpg	t
4305	4072	BN1600739846152	SN1600740167092	49.00	35.00	65.00	t	3.00	999	3		t	http://files.mvccms.cn/Upload/20200922/20200922100119_3657.jpg	f
4306	4073	BN1600880478327	BN1600880478327	0.00	0.00	0.00	f	0.00	1	0		t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4307	4073	BN1600880478327	BN1600880478327	0.00	0.00	0.00	f	0.00	1	0	颜色:白色,水果:件	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4308	4073	BN1600880478327	SN1600882235080	0.00	0.00	0.00	t	0.00	9999	0	颜色:白色,水果:3斤	f	null	t
4309	4073	BN1600880478327	BN1600880478327	0.00	0.00	0.00	f	0.00	1	0	颜色:白色,水果:份	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4310	4073	BN1600880478327	SN1600883321121	1.00	0.00	0.00	t	0.00	9999	0	颜色:白色,水果:件	f	null	t
4311	4073	BN1600880478327	SN1600883321109	1.00	0.00	0.00	t	0.00	9999	0	颜色:白色,水果:8斤	f	null	t
4312	4073	BN1600880478327	SN1600883321129	1.00	0.00	0.00	t	0.00	9999	0	颜色:白色,水果:3斤	f	null	t
4313	4073	BN1600880478327	SN1600883321112	1.00	0.00	0.00	t	0.00	9999	0	颜色:白色,水果:斤	f	null	t
4314	4073	BN1600880478327	SN1600883321115	1.00	0.00	0.00	t	0.00	9999	0	颜色:白色,水果:5斤	f	null	t
4315	4073	BN1600880478327	BN1600880478327	0.00	0.00	0.00	f	0.00	1	0	颜色:白色,水果:斤	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4316	4073	BN1600880478327	BN1600880478327	0.00	0.00	0.00	f	0.00	1	0	水果:份	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4317	4073	BN1600880478327	SN1600884945681	0.00	0.00	0.00	t	0.00	9999	0	水果:10斤	f	null	t
4318	4073	BN1600880478327	BN1600880478343	0.00	0.00	0.00	t	0.00	1	0	水果:件	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4319	4073	BN1600880478327	BN1600880478321	0.00	0.00	0.00	t	0.00	9999	0	水果:10斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4320	4073	BN1600880478327	SN1600887432848	0.00	0.00	0.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4321	4073	BN1600880478327	SN1600888150579	0.00	0.00	0.00	t	0.00	9999	0	水果:件	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4322	4073	BN1600880478327	SN1600888150580	0.00	0.00	0.00	t	0.00	9999	0	水果:10斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4323	4073	BN1600880478327	SN1600888749441	0.00	0.00	0.00	t	0.00	9999	0	水果:份	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4324	4073	BN1600880478327	SN1600888749447	0.00	0.00	0.00	t	0.00	9999	0	水果:箱	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4325	4073	BN1600880478327	SN1600888749426	0.00	0.00	0.00	t	0.00	9999	0	水果:5斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4326	4073	BN1600880478327	SN1600889216367	0.00	0.00	0.00	t	0.00	9999	0	水果:份	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4327	4073	BN1600880478327	SN1600889216366	0.00	0.00	0.00	t	0.00	9999	0	水果:箱	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4328	4073	BN1600880478327	SN1600889216381	0.00	0.00	0.00	t	0.00	9999	0	水果:5斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4329	4073	BN1600880478327	SN1600889216362	0.00	0.00	0.00	t	0.00	9999	0	水果:8斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4330	4073	BN1600880478327	SN1600889216354	0.00	0.00	0.00	t	0.00	9999	0	水果:4斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4331	4073	BN1600880478327	SN1600889231307	0.00	0.00	0.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4332	4073	BN1600880478327	SN1600889241540	0.00	0.00	0.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4333	4073	BN1600880478327	SN1600889690829	0.00	0.00	0.00	t	0.00	9999	0	水果:件	t	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4334	4073	BN1600880478327	SN1600889690840	0.00	0.00	0.00	t	0.00	9999	0	水果:3斤	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4335	4073	BN1600880478327	SN1600889693085	0.00	0.00	0.00	t	0.00	9999	0	水果:箱	f	http://files.mvccms.cn/Upload/20200924/20200924010201_5286.jpg	t
4336	4073	BN1600880478327	SN1600889702473	0.00	0.00	0.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4337	4073	BN1600880478327	SN1600889719051	0.00	0.00	0.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	f
4338	4074	BN1600891793003	SN1600891811443	0.00	0.00	0.00	t	0.00	9999	0	水果:份	t	null	f
4339	4074	BN1600891793003	SN1600891811438	0.00	0.00	0.00	t	0.00	9999	0	水果:5斤	f	null	f
4340	4074	BN1600891793003	SN1600891817046	0.00	0.00	0.00	t	0.00	9999	0	水果:4斤	f	null	f
4341	4074	BN1600891793003	SN1600891817019	0.00	0.00	0.00	t	0.00	9999	0	水果:3斤	f	null	f
4342	4074	BN1600891793003	SN1600891822041	0.00	0.00	0.00	t	0.00	9999	0	水果:箱	f	null	f
4343	4074	BN1600891793003	SN1600891822051	0.00	0.00	0.00	t	0.00	9999	0	水果:9斤	f	null	f
4344	4075	BN1600891961489	BN1600891961488	0.00	0.00	0.00	t	0.00	1000	0		t	http://files.mvccms.cn/Upload/20200924/20200924041444_6846.jpg	t
4345	4075	BN1600891961489	SN1600892161450	0.00	0.00	0.00	t	0.00	9999	0	水果:8斤	t	http://files.mvccms.cn/Upload/20200924/20200924041444_6846.jpg	f
4346	4075	BN1600891961489	SN1600892161448	0.00	0.00	0.00	t	0.00	9999	0	水果:9斤	f	http://files.mvccms.cn/Upload/20200924/20200924041444_6846.jpg	f
4347	4076	BN1600963229663	SN1600963229655	11.00	2.00	33.00	t	0.00	1000	0		t	http://files.mvccms.cn/Upload/20200925/20200925000047_2726.jpg	f
4348	4077	BN1600963304637	SN1600963322604	11.00	1.00	22.00	t	0.00	9999	0	水果:份	t	null	t
4349	4077	BN1600963304637	SN1600963322603	12.00	1.00	22.00	t	0.00	9999	0	水果:件	f	null	t
4350	4077	BN1600963304637	SN1600963322586	13.00	1.00	22.00	t	0.00	9999	0	水果:4斤	t	null	t
4351	4077	BN1600963304637	SN1600963322585	14.00	1.00	22.00	t	0.00	9999	0	水果:3斤	f	null	t
4352	4077	BN1600963304637	SN1600966443236	3.00	2.00	7.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4353	4077	BN1600963304637	SN1600966762917	10.00	2.00	20.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4354	4077	BN1600963304637	SN1600966796871	2.00	1.00	3.00	t	0.00	9999	0	颜色:白色,水果:份	t	http://files.mvccms.cn/Upload/20200925/20200925000153_8761.jpg	t
4355	4077	BN1600963304637	SN1600966796890	2.00	1.00	3.00	t	0.00	9999	0	颜色:白色,水果:件	f	http://files.mvccms.cn/Upload/20200925/20200925000153_8761.jpg	t
4356	4077	BN1600963304637	SN1600966796879	2.00	1.00	3.00	t	0.00	9999	0	颜色:白色,水果:5斤	f	http://files.mvccms.cn/Upload/20200925/20200925000153_8761.jpg	t
4357	4077	BN1600963304637	SN1600966827827	2.00	1.00	3.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	f
4358	4078	BN1601026010140	SN1601026010126	222.00	2.00	555.00	t	0.00	10002	0		t	http://files.mvccms.cn/Upload/20200925/20200925172807_3199.jpg	f
4359	4079	BN1601115512064	SN1601115512050	75.00	57.00	89.00	t	7.00	1000	0		t	http://files.mvccms.cn/Upload/20200926/20200926182501_2870.jpg	t
4360	4079	BN1601115512064	SN1601116541663	68.00	57.00	99.00	t	0.00	9999	0	椰子汁:1箱	t	http://files.mvccms.cn/Upload/20200926/20200926182501_2870.jpg	f
4361	4079	BN1601115512064	SN1601116541677	125.00	103.00	180.00	t	0.00	9999	0	椰子汁:2箱	f	http://files.mvccms.cn/Upload/20200926/20200926182501_2870.jpg	f
4362	4080	BN1601123879747	SN1601124195376	46.00	36.00	59.00	t	0.00	9996	5	土鸡蛋:混合装30枚	f	http://files.mvccms.cn/Upload/20200926/20200926204014_9479.jpg	t
4363	4080	BN1601123879747	SN1601124195353	46.00	38.00	59.00	t	0.00	9999	4	土鸡蛋:粉壳土鸡蛋30枚	t	http://files.mvccms.cn/Upload/20200926/20200926204014_9479.jpg	t
4364	4080	BN1601123879747	SN1601124195360	65.00	42.00	99.00	t	0.00	9997	5	土鸡蛋:绿壳土鸡蛋30枚	t	http://files.mvccms.cn/Upload/20201106/20201106193853_5612.jpg	f
4365	4081	BN1601211712074	SN1601211065633	40.00	27.00	49.00	t	0.00	9998	1	土特产:3斤	t	http://files.mvccms.cn/Upload/20200927/20200927204941_4854.jpg	t
4366	4081	BN1601211712074	SN1601211934597	56.00	37.00	89.00	t	0.00	9996	3	土特产:5斤	f	http://files.mvccms.cn/Upload/20200927/20200927204941_4854.jpg	t
4367	4082	BN1601476775034	SN1601476775033	298.00	198.00	438.00	t	0.00	1000	1		t	http://files.mvccms.cn/Upload/20200930/20200930234741_3728.jpg	f
4368	4083	BN1601687141307	SN1601687559275	46.00	33.00	59.00	t	1.00	9999	0	干鱼系列:1斤	t	http://files.mvccms.cn/Upload/20201003/20201003091136_9329.jpg	f
4369	4083	BN1601687141307	SN1601687559278	80.00	62.00	110.00	t	1.00	9999	0	干鱼系列:2斤	f	http://files.mvccms.cn/Upload/20201003/20201003091136_9329.jpg	f
4370	4084	BN1601700752863	SN1601700752870	30.00	18.00	40.00	t	3.00	991	9		t	http://files.mvccms.cn/Upload/20201003/20201003125332_5921.jpg	f
4371	4085	BN1601780769107	SN1601781217854	79.00	72.00	99.00	t	1.00	9997	2	干海鲜系列:小号墨鱼10-13只	t	http://files.mvccms.cn/Upload/20201004/20201004111303_0438.jpg	f
4372	4085	BN1601780769107	SN1601781217850	105.00	90.00	119.00	t	1.00	9999	0	干海鲜系列:中号墨鱼2-3只	f	http://files.mvccms.cn/Upload/20201004/20201004111303_0438.jpg	f
4373	4085	BN1601780769107	SN1601781217826	159.00	142.00	189.00	t	1.00	9999	0	干海鲜系列:大号墨鱼1只	f	http://files.mvccms.cn/Upload/20201004/20201004111303_0438.jpg	f
4374	4086	BN1601782137364	SN1601782137364	68.00	49.00	89.00	t	1.00	1000	0		t	http://files.mvccms.cn/Upload/20201004/20201004113634_1720.jpg	t
4375	4087	BN1601861162924	SN1601861873046	75.00	58.00	99.00	t	0.00	9999	0	干鱼系列:1斤	t	\N	t
4376	4087	BN1601861162924	SN1601861873049	130.00	115.00	188.00	t	0.00	9999	0	干鱼系列:2斤	f	\N	t
4377	4087	BN1601861162924	SN1601862534021	75.00	58.00	99.00	t	1.00	9999	0	干海鲜系列:鱿鱼干一斤装	t	http://files.mvccms.cn/Upload/20201005/20201005094906_9205.jpg	f
4378	4087	BN1601861162924	SN1601862534020	135.00	110.00	188.00	t	1.00	9996	3	干海鲜系列:鱿鱼干二斤装	f	http://files.mvccms.cn/Upload/20201005/20201005094918_6466.jpg	f
4379	4086	BN1601782137364	SN1601864217586	26.00	14.00	36.00	t	0.00	9999	0	即食海产品:尝鲜装110克	t	http://files.mvccms.cn/Upload/20201005/20201005101814_7461.jpg	f
4380	4086	BN1601782137364	SN1601864217597	69.00	51.00	99.00	t	0.00	9997	2	即食海产品:一斤装	f	http://files.mvccms.cn/Upload/20201005/20201005101825_2660.jpg	f
4381	4088	BN1601885520706	SN1601886153790	55.00	45.00	69.00	t	2.00	9997	2	农家土特产:3斤	f	http://files.mvccms.cn/Upload/20201005/20201005161958_0046.jpg	f
4382	4088	BN1601885520706	SN1601886153795	78.00	65.00	99.00	t	3.00	9998	1	农家土特产:5斤	f	http://files.mvccms.cn/Upload/20201005/20201005161958_0046.jpg	f
4383	4088	BN1601885520706	SN1601886153787	40.00	32.00	50.00	t	1.00	9988	15	农家土特产:2斤	t	http://files.mvccms.cn/Upload/20201005/20201005161958_0046.jpg	f
4384	4089	BN1601969080954	SN1601969643996	40.00	29.00	59.00	t	0.00	9998	1	水果:4斤	t	http://files.mvccms.cn/Upload/20201006/20201006153239_5690.jpg	f
4385	4090	BN1602206696998	SN1602206697019	90.00	78.00	199.00	t	1.00	9998	1		t	http://files.mvccms.cn/Upload/20201009/20201009092714_7512.jpg	f
4386	4091	BN1602663437592	SN1602663437585	158.00	125.00	198.00	t	1.00	9998	1		t	http://files.mvccms.cn/Upload/20201014/20201014162119_3952.jpg	f
4387	4092	BN1602684892774	SN1602685052387	85.00	69.00	99.00	t	3.00	9999	0	核桃系列:新疆薄皮核桃5斤	t	http://files.mvccms.cn/Upload/20201014/20201014221818_8482.jpg	f
4388	4092	BN1602684892774	SN1602685052400	95.00	75.00	108.00	t	3.00	9999	0	核桃系列:阿克苏纸皮核桃5斤	f	http://files.mvccms.cn/Upload/20201014/20201014221818_8482.jpg	f
4389	4093	BN1602760419323	SN1602760419326	36.00	28.00	58.00	t	2.00	1000	0		t	http://files.mvccms.cn/Upload/20201015/20201015192105_6401.jpg	t
4390	4094	BN1602826146508	SN1602826378746	39.00	31.00	49.00	t	3.00	9994	5	水果:中果5斤	t	http://files.mvccms.cn/Upload/20201016/20201016133019_9056.jpg	f
4391	4094	BN1602826146508	SN1602826378754	44.00	34.00	55.00	t	3.00	9995	4	水果:大果5斤	f	http://files.mvccms.cn/Upload/20201016/20201016133019_9056.jpg	f
4392	4094	BN1602826146508	SN1602826378752	50.00	36.00	60.00	t	3.00	9999	0	水果:特大果5斤	f	http://files.mvccms.cn/Upload/20201016/20201016133019_9056.jpg	f
4393	4094	BN1602826146508	SN1602826378757	57.00	50.00	69.00	t	4.00	9998	1	水果:大果8斤	f	http://files.mvccms.cn/Upload/20201016/20201016133019_9056.jpg	f
4394	4094	BN1602826146508	SN1602826378753	66.00	55.00	89.00	t	5.00	9999	0	水果:特大果9斤	f	http://files.mvccms.cn/Upload/20201016/20201016133019_9056.jpg	f
4395	4071	BN1600651185632	SN1602829630782	338.00	290.00	558.00	t	0.00	994	7		t	/manage/style/res/noImage.jpg	f
4396	4095	BN1602830137807	SN1602830137800	288.00	180.00	328.00	t	0.00	999	0		t	http://files.mvccms.cn/Upload/20201016/20201016144053_4924.jpg	f
4397	4096	BN1602844811472	SN1602845080630	65.00	50.00	99.00	t	1.00	9999	0	零食系列:五香500g	t	\N	f
4398	4096	BN1602844811472	SN1602845080625	65.00	50.00	99.00	t	1.00	9999	0	零食系列:麻辣500g	f	\N	f
4399	4096	BN1602844811472	SN1602845080628	65.00	50.00	99.00	t	1.00	9999	0	零食系列:混搭500g	f	\N	f
4400	4097	BN1602902915484	SN1602903192720	70.00	60.00	108.00	t	0.00	9998	1	波罗蜜:（精品体验装）7-8斤（精品大果，实惠体验）	t	\N	t
4401	4097	BN1602902915484	SN1602903192719	86.00	70.00	138.00	t	0.00	9999	0	波罗蜜:（精品吃货装）8-10斤（吃货分享优选）	f	\N	t
4402	4097	BN1602902915484	SN1602907385826	80.00	70.00	118.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	t
4403	4097	BN1602902915484	SN1602908149227	70.00	62.00	99.00	t	0.00	9999	0	波罗蜜:（精品A果体验装）6-7斤（精品大果，实惠体验）	t	http://files.mvccms.cn/Upload/20201017/20201017121612_7549.jpg	t
4404	4097	BN1602902915484	SN1602908149213	86.00	70.00	118.00	t	0.00	9999	0	波罗蜜:（精品A果吃货装）7-8斤（吃货分享优选）	f	http://files.mvccms.cn/Upload/20201017/20201017121628_3223.jpg	t
4405	4097	BN1602902915484	SN1602908149205	96.00	79.00	138.00	t	0.00	9999	0	波罗蜜:（精品A果家庭装）8-9斤（精选A果，出肉高）	f	http://files.mvccms.cn/Upload/20201017/20201017121638_6159.jpg	t
4406	4098	BN1602926771803	SN1602927221350	90.00	78.00	168.00	t	2.00	9998	1	水果:4斤	f	http://files.mvccms.cn/Upload/20201017/20201017173224_3236.jpg	f
4407	4098	BN1602926771803	SN1602927221352	70.00	60.00	99.00	t	2.00	9997	4	水果:3斤	t	http://files.mvccms.cn/Upload/20201017/20201017173224_3236.jpg	f
4408	4099	BN1602932777379	SN1602933235359	79.00	45.00	159.00	t	0.00	9999	0	零食系列:五香500g	t	http://files.mvccms.cn/Upload/20201017/20201017191228_8043.jpg	f
4409	4099	BN1602932777379	SN1602933235363	79.00	45.00	159.00	t	0.00	9999	0	零食系列:麻辣500g	f	http://files.mvccms.cn/Upload/20201017/20201017191228_8043.jpg	f
4410	4099	BN1602932777379	SN1602933303680	79.00	45.00	159.00	t	0.00	9999	0	零食系列:混搭500g	f	http://files.mvccms.cn/Upload/20201017/20201017191228_8043.jpg	f
4411	4100	BN1603106331875	SN1603106814223	50.00	39.00	89.00	t	0.00	9998	0	干鲜特产:200g	t	http://files.mvccms.cn/Upload/20201019/20201019192550_1444.jpg	f
4412	4101	BN1603107778375	SN1603108167464	60.00	50.00	99.00	t	1.00	9998	1	干鲜特产:500g	t	http://files.mvccms.cn/Upload/20201019/20201019194827_1418.jpg	f
4413	4102	BN1603109845962	SN1603110452656	29.00	20.00	40.00	t	0.00	9999	0	干鲜特产:200g	t	\N	t
4414	4102	BN1603109845962	SN1603110530792	100.00	16.00	138.00	t	0.00	9999	0	干鲜特产:1000g	f	\N	t
4415	4103	BN1603156127205	SN1603156439385	49.00	38.00	85.00	t	1.00	9999	0	零食系列:1斤	t	http://files.mvccms.cn/Upload/20201020/20201020092751_0136.jpg	f
4416	4103	BN1603156127205	SN1603156518544	86.00	76.00	158.00	t	1.00	9999	0	零食系列:2斤	f	http://files.mvccms.cn/Upload/20201020/20201020092742_0184.jpg	f
4417	4103	BN1603156127205	SN1603157244031	34.00	25.00	55.00	t	0.00	9999	0	零食系列:250克	t	http://files.mvccms.cn/Upload/20201020/20201020092734_2703.jpg	t
4418	4104	BN1603242899110	SN1603242899102	55.00	40.00	88.00	t	3.00	9999	0		t	http://files.mvccms.cn/Upload/20201021/20201021091906_1158.jpg	t
4419	4105	BN1603265743295	SN1603265882466	30.00	20.00	58.00	t	3.00	9974	27	苹果:5斤	t	http://files.mvccms.cn/Upload/20201021/20201021153714_8030.jpg	f
4420	4106	BN1603328932009	SN1603328932013	60.00	50.00	89.00	t	2.00	999	1		t	http://files.mvccms.cn/Upload/20201022/20201022091933_9752.jpg	f
4421	4102	BN1603109845962	SN1603330482110	30.00	20.00	50.00	t	0.00	9998	1	海苔芝麻碎:200g	t	http://files.mvccms.cn/Upload/20201022/20201022093750_5823.jpg	f
4422	4102	BN1603109845962	SN1603330482117	49.00	35.00	88.00	t	0.00	9999	0	海苔芝麻碎:400g	f	http://files.mvccms.cn/Upload/20201022/20201022093756_5978.jpg	f
4423	4107	BN1603370261085	SN1603370436570	33.00	23.00	40.00	t	0.00	9999	0	腰果:一盒	t	http://files.mvccms.cn/Upload/20201022/20201022204000_4984.jpg	t
4424	4107	BN1603370261085	SN1603370436565	85.00	68.00	115.00	t	0.00	99999	0	腰果:二盒（送杯咖啡）	t	http://files.mvccms.cn/Upload/20201022/20201022204000_4984.jpg	f
4425	4107	BN1603370261085	SN1603370436553	75.00	62.00	100.00	t	0.00	9999	0	腰果:三盒（送杯咖啡）	f	http://files.mvccms.cn/Upload/20201022/20201022204000_4984.jpg	t
4426	4107	BN1603370261085	SN1603370436551	145.00	128.00	199.00	t	0.00	999995	0	腰果:四盒（送杯咖啡）	f	http://files.mvccms.cn/Upload/20201022/20201022204000_4984.jpg	f
4427	4108	BN1603416379951	SN1603417051755	258.00	235.00	380.00	t	3.00	9999	0	深海马鲛鱼:5斤	t	http://files.mvccms.cn/Upload/20201023/20201023093612_4828.jpg	f
4428	4108	BN1603416379951	SN1603417051744	265.00	239.00	430.00	t	3.00	9999	0	深海马鲛鱼:5斤礼盒	f	http://files.mvccms.cn/Upload/20201023/20201023093612_4828.jpg	f
4429	4109	BN1603934302481	SN1603934908719	84.00	65.00	110.00	t	0.00	9999	0	哈密瓜:8-9斤	t	http://files.mvccms.cn/Upload/20201029/20201029093556_4051.jpg	t
4430	4110	BN1603953671838	SN1603954058601	99.00	86.00	158.00	t	1.00	9998	1	人参:2斤	t	http://files.mvccms.cn/Upload/20201029/20201029144727_1968.jpg	f
4431	4111	BN1604453805352	SN1604454154178	50.00	40.00	56.00	t	0.00	9999	0	手工现做零嘴:尝鲜装（160g）	t	\N	t
4432	4111	BN1604453805352	SN1604469604209	50.00	39.00	59.00	t	0.00	1000	0		t	/manage/style/res/noImage.jpg	f
4433	4112	BN1604469762418	SN1604470219676	20.00	13.00	30.00	t	0.00	9999	0	手工现做零嘴:家庭装（180g）	t	\N	f
4434	4113	BN1604551137116	SN1604551137123	30.00	21.00	45.00	t	0.00	9999	0		t	http://files.mvccms.cn/Upload/20201105/20201105124623_8798.jpg	f
4435	4114	BN1604554036004	SN1604554035997	75.00	63.00	99.00	t	0.00	999	2		t	http://files.mvccms.cn/Upload/20201105/20201105133037_4759.jpg	t
4436	4115	BN1604916702660	SN1604917440148	129.00	95.00	199.00	t	1.00	9999	3	干牛肉系列:原味	t	\N	f
4437	4115	BN1604916702660	SN1604917440138	129.00	95.00	199.00	t	1.00	9999	0	干牛肉系列:麻辣味	f	\N	f
4438	4115	BN1604916702660	SN1604917440140	129.00	95.00	199.00	t	1.00	9999	1	干牛肉系列:香辣味	f	\N	f
4439	4115	BN1604916702660	SN1604917440160	129.00	95.00	199.00	t	1.00	9999	1	干牛肉系列:无盐原味	f	\N	f
4440	4115	BN1604916702660	SN1604917440131	129.00	95.00	199.00	t	1.00	9999	0	干牛肉系列:孜然味	f	\N	f
4441	4115	BN1604916702660	SN1604917440139	129.00	95.00	199.00	t	1.00	9999	1	干牛肉系列:孜然辣	f	\N	f
4442	4116	BN1604928994719	SN1604929500445	168.00	130.00	238.00	t	1.00	9999	0	干牛肉系列:原味	t	\N	f
4443	4116	BN1604928994719	SN1604929500428	168.00	130.00	238.00	t	1.00	9999	1	干牛肉系列:香辣味	f	\N	f
4444	4116	BN1604928994719	SN1604929500432	168.00	130.00	238.00	t	1.00	9999	0	干牛肉系列:无盐原味	f	\N	f
4445	4116	BN1604928994719	SN1604929500423	168.00	130.00	238.00	t	1.00	9998	1	干牛肉系列:孜然味	f	\N	f
4446	4117	BN1605230444240	SN1605231177073	33.00	25.00	55.00	t	3.00	9999	0	精品橙子:中果5斤装	t	http://files.mvccms.cn/Upload/20201113/20201113093156_5869.jpg	f
4447	4117	BN1605230444240	SN1605231177075	56.00	43.00	88.00	t	5.00	9998	1	精品橙子:中果9斤装	f	http://files.mvccms.cn/Upload/20201113/20201113093156_5869.jpg	f
4448	4117	BN1605230444240	SN1605231177063	40.00	27.00	59.00	t	3.00	9999	0	精品橙子:精品大果5斤装	f	http://files.mvccms.cn/Upload/20201113/20201113093156_5869.jpg	f
4449	4117	BN1605230444240	SN1605231177079	60.00	46.00	95.00	t	5.00	9998	1	精品橙子:精品大果9斤装	f	http://files.mvccms.cn/Upload/20201113/20201113093156_5869.jpg	f
4450	4118	BN1605234987300	SN1605234987294	95.00	80.00	138.00	t	5.00	1000	0		t	http://files.mvccms.cn/Upload/20201113/20201113103956_4506.jpg	t
4451	4118	BN1605234987300	SN1605235736079	95.00	80.00	138.00	t	5.00	9999	0	芒果:精品A果10	t	http://files.mvccms.cn/Upload/20201113/20201113104911_7643.jpg	t
4452	4119	BN1605235847961	SN1605236642158	129.00	89.00	158.00	t	5.00	9999	0	芒果:精品A果10	t	http://files.mvccms.cn/Upload/20201113/20201113110351_0910.jpg	f
4453	4120	BN1605316838277	SN1605317785438	68.00	56.00	88.00	t	0.00	9999	0	盐焗鸡:（掌柜推荐）盐焗鸡650克	t	\N	f
4454	4121	BN1605348364481	SN1605348945954	65.00	48.00	89.00	t	2.00	9997	2	红薯粉:4斤装	f	http://files.mvccms.cn/Upload/20201114/20201114181916_8917.jpg	f
4455	4121	BN1605348364481	SN1605412017930	38.00	28.00	48.00	t	1.00	9999	0	红薯粉:2斤装	t	http://files.mvccms.cn/Upload/20201115/20201115114756_8247.jpg	f
4456	4122	BN1605661834377	SN1605662297220	20.00	16.00	39.00	t	3.00	9996	3	芋头:5斤	t	\N	f
4457	4122	BN1605661834377	SN1605662297235	40.00	32.00	65.00	t	5.00	9999	0	芋头:10斤	f	\N	f
4458	4123	BN1605835730841	SN1605836267431	89.00	78.00	118.00	t	5.00	9999	0	芒果:（精品A级果）10斤	t	\N	t
4459	4124	BN1605956385364	SN1605956853625	99.00	89.00	138.00	t	0.00	9999	0	波罗蜜:海南菠萝蜜A果（23-26斤）	t	\N	t
4460	4124	BN1605956385364	SN1606007344571	69.00	48.00	75.00	t	0.00	9999	7	海南波罗蜜:（14-17斤）品质小果，一人吃过瘾	t	http://files.mvccms.cn/Upload/20201122/20201122091044_1578.jpg	t
4461	4124	BN1605956385364	SN1606007344552	79.00	58.00	85.00	t	0.00	9999	4	海南波罗蜜:（17-20斤）严选品质，家庭分享装	f	http://files.mvccms.cn/Upload/20201122/20201122091120_7653.jpg	t
4462	4124	BN1605956385364	SN1606007344553	85.00	65.00	138.00	t	0.00	9999	1	海南波罗蜜:（21-25斤）爆款推荐，店长力荐，出肉率高	f	http://files.mvccms.cn/Upload/20201122/20201122091215_4702.jpg	f
4463	4124	BN1605956385364	SN1606007344574	105.00	80.00	189.00	t	0.00	9999	0	海南波罗蜜:（26-30斤）特大果，肉厚饱满	f	http://files.mvccms.cn/Upload/20201122/20201122091350_0124.jpg	f
4464	4124	BN1605956385364	SN1606007344565	110.00	93.00	138.00	t	0.00	9999	0	海南波罗蜜:（31-35斤）超级特大果，出肉率更高	f	http://files.mvccms.cn/Upload/20201122/20201122091440_1647.jpg	t
4465	4118	BN1605234987300	SN1606056560243	85.00	69.00	138.00	t	5.00	9990	2	芒果:（精品A级果）10斤	t	http://files.mvccms.cn/Upload/20201122/20201122225532_7248.jpg	f
4466	4118	BN1605234987300	SN1606056560256	89.00	70.00	99.00	t	5.00	9998	1	芒果:（精品中果）10斤	t	http://files.mvccms.cn/Upload/20201122/20201122225726_3416.jpg	t
4467	4125	BN1606220685145	SN1606220730600	73.00	60.00	89.00	t	5.00	9999	0	芒果:（精品A级果）10斤	t	\N	f
4468	4064	BN1599101143187	SN1606266656708	70.00	60.00	108.00	t	4.00	9999	0	火龙果:8斤装精品好果	t	http://files.mvccms.cn/Upload/20201125/20201125091209_5777.jpg	f
4469	4126	BN1606350737296	SN1606351255745	60.00	38.00	98.00	t	3.00	9999	0	小米:5斤装	t	http://files.mvccms.cn/Upload/20201126/20201126084012_2084.jpg	f
4470	4081	BN1601211712074	SN1606351788177	40.00	28.00	60.00	t	2.00	9999	3	小米:3斤装	t	http://files.mvccms.cn/Upload/20201126/20201126085428_9478.jpg	f
4471	4081	BN1601211712074	SN1606351788194	56.00	38.00	90.00	t	3.00	9999	0	小米:5斤装	f	http://files.mvccms.cn/Upload/20201126/20201126085434_9578.jpg	f
4472	4127	BN1606389721865	SN1606390260175	60.00	52.00	88.00	t	0.00	9999	0	扇贝肉:500g	t	\N	t
4473	4127	BN1606389721865	SN1606390780821	60.00	52.00	88.00	t	1.00	9998	1	扇贝肉:二袋（1000克）	t	http://files.mvccms.cn/Upload/20201126/20201126193947_7217.jpg	f
4474	4128	BN1606456837384	SN1606456968023	30.00	23.00	45.00	t	3.00	9999	1	皇帝柑:精品大果5斤	t	\N	f
4475	4128	BN1606456837384	SN1606456968027	40.00	33.00	65.00	t	5.00	9998	1	皇帝柑:精品大果9斤	f	\N	f
4476	4129	BN1606533203649	SN1606533602010	45.00	38.00	59.00	t	0.00	9999	0	凤梨:4.8-5.2斤（2个精品大果）	t	\N	t
4477	4129	BN1606533203649	SN1606533602016	79.00	70.00	95.00	t	0.00	9999	0	凤梨:9.5-10.2斤（3-4精品个大果）	f	\N	t
4478	4130	BN1606537700197	SN1606538118337	27.00	20.00	39.00	t	0.00	9999	0	西瓜:一个装（4.5-5.5斤）	t	http://files.mvccms.cn/Upload/20201128/20201128123227_0827.jpg	f
4479	4130	BN1606537700197	SN1606538118340	40.00	35.00	59.00	t	0.00	9996	3	西瓜:二个装（8-11斤）	f	http://files.mvccms.cn/Upload/20201128/20201128123227_0827.jpg	f
4480	4098	BN1602926771803	SN1606613004991	118.00	85.00	198.00	t	3.00	9998	1	水果:5斤	f	http://files.mvccms.cn/Upload/20201017/20201017173224_3236.jpg	f
4481	4097	BN1602902915484	SN1606614578878	66.00	56.00	99.00	t	0.00	9998	1	波罗蜜:（精品A果体验装）6-8斤（精品大果，实惠体验）	t	http://files.mvccms.cn/Upload/20201129/20201129095352_5918.jpg	f
4482	4097	BN1602902915484	SN1606614603747	76.00	66.00	110.00	t	0.00	9997	2	波罗蜜:（精品A果吃货装）8-10斤（吃货分享优选）	f	http://files.mvccms.cn/Upload/20201129/20201129095401_0547.jpg	f
4483	4097	BN1602902915484	SN1606614607247	80.00	66.00	139.00	t	0.00	9999	0	波罗蜜:（精品A果家庭装）10-11斤（精选A果，出肉高）	f	http://files.mvccms.cn/Upload/20201129/20201129095406_7641.jpg	t
4484	4131	BN1606640041951	SN1606640373947	85.00	68.00	99.00	t	2.00	9998	1	吊柿:精品A果3斤	t	http://files.mvccms.cn/Upload/20201129/20201129165654_8233.jpg	f
4485	4131	BN1606640041951	SN1606640373938	115.00	90.00	189.00	t	0.00	9998	1	吊柿:精品A果5斤	f	http://files.mvccms.cn/Upload/20201129/20201129165654_8233.jpg	f
4486	4132	BN1606650989942	SN1606650989940	32.00	26.00	49.00	t	0.00	1000	0		t	http://files.mvccms.cn/Upload/20201129/20201129200321_0632.jpg	t
4487	4132	BN1606650989942	SN1606651877292	65.00	53.00	89.00	t	0.00	9999	0	脐橙:精品礼盒10斤	f	http://files.mvccms.cn/Upload/20201129/20201129201508_2657.jpg	f
4488	4132	BN1606650989942	SN1606651877300	110.00	98.00	168.00	t	0.00	9999	0	脐橙:精品礼盒20斤	f	http://files.mvccms.cn/Upload/20201129/20201129201515_5388.jpg	f
4489	4132	BN1606650989942	SN1606651877290	39.00	30.00	59.00	t	0.00	9999	0	脐橙:（80-95）5斤	f	http://files.mvccms.cn/Upload/20201129/20201129201520_9494.jpg	f
4490	4132	BN1606650989942	SN1606651877284	59.00	48.00	79.00	t	0.00	9999	0	脐橙:（80-95）10斤	f	http://files.mvccms.cn/Upload/20201129/20201129201526_0704.jpg	f
4491	4132	BN1606650989942	SN1606651877282	35.00	28.00	55.00	t	0.00	9999	0	脐橙:（70-80）5斤	t	http://files.mvccms.cn/Upload/20201129/20201129201531_1186.jpg	f
4492	4132	BN1606650989942	SN16066518772841	49.00	40.00	78.00	t	0.00	9999	0	脐橙:（70-80）10斤	f	http://files.mvccms.cn/Upload/20201129/20201129201536_3570.jpg	f
4493	4093	BN1602760419323	SN1606898366369	80.00	65.00	168.00	t	5.00	9999	0	哈密瓜:9斤	t	http://files.mvccms.cn/Upload/20201202/20201202164113_2913.jpg	t
4494	4133	BN1607066592715	SN1607066866648	139.00	129.00	198.00	t	3.00	9999	0	释迦果:精品果5斤（4-6个）	t	http://files.mvccms.cn/Upload/20201204/20201204152549_3634.jpg	f
4495	4097	BN1602902915484	SN1607387834991	99.00	86.00	129.00	t	0.00	9999	0	波罗蜜:（精品A果家庭装）10-12斤（高性价比，家庭分享装）	f	http://files.mvccms.cn/Upload/20201208/20201208084210_6255.jpg	f
4496	4097	BN1602902915484	SN1607387834984	113.00	103.00	158.00	t	0.00	9999	0	波罗蜜:（精品A果特大果）12-14斤（人气爆款，聚会专享装）	f	http://files.mvccms.cn/Upload/20201208/20201208084235_7577.jpg	f
4497	4104	BN1603242899110	SN1607956598467	55.00	45.00	99.00	t	3.00	9999	0	生蚝:（2-3两）5斤	t	http://files.mvccms.cn/Upload/20201021/20201021091906_1158.jpg	f
4498	4104	BN1603242899110	SN1607956598473	73.00	58.00	189.00	t	3.00	9999	0	生蚝:（3-4两）5斤	f	http://files.mvccms.cn/Upload/20201021/20201021091906_1158.jpg	f
4499	4051	BN1598837599738	SN1607993570212	195.00	179.00	235.00	t	0.00	9999	0	榴莲:金枕一个装4-5斤（A级精品，店长力荐）	t	http://files.mvccms.cn/Upload/20201215/20201215090240_1416.jpg	t
4500	4051	BN1598837599738	SN1607993570194	225.00	210.00	265.00	t	0.00	9999	0	榴莲:金枕一个装5-6斤（A级精品，店长力荐）	f	http://files.mvccms.cn/Upload/20201215/20201215090254_9414.jpg	t
4501	4051	BN1598837599738	SN1607993570215	265.00	245.00	295.00	t	0.00	9999	0	榴莲:金枕1-2个装6-7斤（A级精品，吃货专享）	f	http://files.mvccms.cn/Upload/20201215/20201215090304_5171.jpg	t
4502	4051	BN1598837599738	SN1607993570189	295.00	280.00	335.00	t	0.00	9999	0	榴莲:金枕2个装7-8斤（A级精品，人气爆款）	f	http://files.mvccms.cn/Upload/20201215/20201215090314_1217.jpg	t
4503	4051	BN1598837599738	SN1607993570216	335.00	315.00	385.00	t	0.00	9999	0	榴莲:金枕2个装8-9斤（A级精品，过瘾必选）	f	http://files.mvccms.cn/Upload/20201215/20201215090341_7590.jpg	t
4504	4051	BN1598837599738	SN1607993570196	365.00	350.00	435.00	t	0.00	9999	0	榴莲:金枕2个装9-10斤（A级精品，送礼推荐）	f	http://files.mvccms.cn/Upload/20201215/20201215090418_6518.jpg	t
4505	4134	BN1607994546432	SN1607994902587	165.00	148.00	199.00	t	0.00	9998	1	榴莲:干尧一个装3-4斤（A级精品）	t	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4506	4134	BN1607994546432	SN1607994902590	195.00	178.00	225.00	t	0.00	9999	0	榴莲:干尧一个装4-5斤（A级精品，店长力荐）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4507	4134	BN1607994546432	SN1607994902593	235.00	215.00	285.00	t	0.00	9999	0	榴莲:干尧一个装5-6斤（A级精品，店长力荐）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4508	4134	BN1607994546432	SN1607994902574	265.00	248.00	320.00	t	0.00	9999	0	榴莲:干尧1-2个装6-7斤（A级精品，吃货专享）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4509	4134	BN1607994546432	SN1607994902575	315.00	285.00	398.00	t	0.00	9999	0	榴莲:干尧2个装7-8斤（A级精品，人气爆款）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4510	4134	BN1607994546432	SN1607994902596	345.00	320.00	435.00	t	0.00	9999	0	榴莲:干尧2个装8-9斤（A级精品，过瘾必选）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4511	4134	BN1607994546432	SN1607994902598	379.00	355.00	520.00	t	0.00	9999	0	榴莲:干尧2个装9-10斤（A级精品，送礼推荐）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4512	4134	BN1607994546432	SN1607994902581	415.00	390.00	590.00	t	0.00	9999	0	榴莲:干尧2个装10-11斤（A级精品，土豪装）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	t
4513	4135	BN1608172600858	SN1608173019730	49.00	37.00	59.00	t	0.00	9999	0	柚子:一个装（2-3斤）	t	http://files.mvccms.cn/Upload/20201217/20201217105717_7168.jpg	f
4514	4135	BN1608172600858	SN1608173019749	79.00	68.00	99.00	t	0.00	9999	0	柚子:二个装	f	http://files.mvccms.cn/Upload/20201217/20201217105723_9209.jpg	f
4515	4135	BN1608172600858	SN1608173019755	115.00	95.00	169.00	t	0.00	9999	0	柚子:三个装	f	http://files.mvccms.cn/Upload/20201217/20201217105742_6086.jpg	f
4516	4135	BN1608172600858	SN1608173019745	135.00	119.00	289.00	t	0.00	9999	0	柚子:四个装	f	http://files.mvccms.cn/Upload/20201217/20201217105753_5080.jpg	f
4517	4129	BN1606533203649	SN1608204769898	65.00	53.00	99.00	t	5.00	9999	0	凤梨:10斤（3-4精品个大果）	t	http://files.mvccms.cn/Upload/20201217/20201217193337_7390.jpg	f
4518	4136	BN1608772414639	SN1608773046828	22.00	17.00	40.00	t	2.00	9999	0	沃柑:（尝鲜装A级精品果）3斤	t	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	t
4519	4136	BN1608772414639	SN1608773046809	40.00	25.00	70.00	t	3.00	9999	0	沃柑:（超值装A级精品果）5斤	t	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	t
4520	4136	BN1608772414639	SN1608773046812	50.00	36.00	100.00	t	5.00	9997	2	沃柑:（人气爆款A级精品果）9斤	f	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	t
4521	4137	BN1609751166100	SN1609752047245	36.00	25.00	59.00	t	0.00	9999	0	耙耙柑:（精品中果）5斤装	t	\N	f
4522	4137	BN1609751166100	SN1609752047253	40.00	28.00	69.00	t	0.00	9999	0	耙耙柑:（精品大果）5斤装	f	\N	f
4523	4137	BN1609751166100	SN1609752047238	50.00	39.00	79.00	t	0.00	9999	0	耙耙柑:（精品中果）8斤装	f	\N	f
4524	4137	BN1609751166100	SN1609752047233	56.00	43.00	89.00	t	0.00	9999	0	耙耙柑:（精品大果）8斤装	f	\N	f
4525	4138	BN1609765616014	SN1609766057026	59.00	42.00	69.00	t	0.00	9999	0	腊肉:腊五花肉（肥瘦一般）	f	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	t
4526	4138	BN1609765616014	SN1609766057028	63.00	42.00	78.00	t	0.00	9999	0	腊肉:腊五花肉（瘦肉偏多）	f	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	t
4527	4138	BN1609765616014	SN1609766057021	50.00	42.00	65.00	t	0.00	9999	0	腊肉:腊五花肉（很肥冲量中）	t	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	t
4528	4138	BN1609765616014	SN1609766057015	64.00	45.00	89.00	t	0.00	9999	0	腊肉:后腿腊肉（瘦肉偏多）	f	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	t
4529	4138	BN1609765616014	SN1609766057019	60.00	43.00	85.00	t	0.00	9999	0	腊肉:后腿腊肉（肥瘦适中）	f	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	t
4530	4138	BN1609765616014	SN1609766057010	66.00	45.00	99.00	t	0.00	9999	0	腊肉:瘦肉干巴（几乎全瘦）	f	http://files.mvccms.cn/Upload/20210104/20210104211312_8501.jpg	t
4531	4138	BN1609765616014	SN1609811247698	33.00	25.00	45.00	t	0.00	9999	1	腊肉:（试吃装）200g	t	http://files.mvccms.cn/Upload/20210105/20210105095619_9855.jpg	f
4532	4138	BN1609765616014	SN1609811247689	56.00	45.00	69.00	t	1.00	9999	0	腊肉:腊五花肉（肥瘦适中）1斤	f	http://files.mvccms.cn/Upload/20210105/20210105095628_4285.jpg	t
4533	4138	BN1609765616014	SN1609811247676	89.00	70.00	110.00	t	1.00	9999	0	腊肉:腊五花肉（肥瘦适中）1.5斤	f	http://files.mvccms.cn/Upload/20210105/20210105095636_0237.jpg	t
4534	4138	BN1609765616014	SN1609811247685	154.00	130.00	199.00	t	2.00	9999	0	腊肉:腊五花肉（肥瘦适中）3斤	f	http://files.mvccms.cn/Upload/20210105/20210105095644_3392.jpg	t
4535	4138	BN1609765616014	SN1609811247699	64.00	50.00	79.00	t	1.00	9999	0	腊肉:腊五花肉（瘦肉偏多）1斤	f	http://files.mvccms.cn/Upload/20210105/20210105095713_1078.jpg	t
4536	4138	BN1609765616014	SN1609811247678	96.00	75.00	118.00	t	1.00	9999	0	腊肉:腊五花肉（瘦肉偏多）1.5斤	f	http://files.mvccms.cn/Upload/20210105/20210105095720_4291.jpg	t
4537	4138	BN1609765616014	SN1609811247674	166.00	140.00	210.00	t	2.00	9999	0	腊肉:腊五花肉（瘦肉偏多）3斤	f	http://files.mvccms.cn/Upload/20210105/20210105095730_8151.jpg	t
4538	4138	BN1609765616014	SN1609811247683	50.00	40.00	59.00	t	1.00	9999	0	腊肉:腊五花肉（很肥冲量中）1斤	f	http://files.mvccms.cn/Upload/20210105/20210105100103_4108.jpg	t
4539	4138	BN1609765616014	SN1609811247687	76.00	65.00	89.00	t	1.00	9999	0	腊肉:腊五花肉（很肥冲量中）1.5斤	f	http://files.mvccms.cn/Upload/20210105/20210105100114_2172.jpg	t
4540	4138	BN1609765616014	SN1609811247703	126.00	112.00	149.00	t	2.00	9999	0	腊肉:腊五花肉（很肥冲量中）3斤	f	http://files.mvccms.cn/Upload/20210105/20210105100122_4555.jpg	t
4541	4138	BN1609765616014	SN1609813291520	59.00	46.00	69.00	t	1.00	9998	6	腊肉:腊五花肉（肥瘦适中）500克	f	http://files.mvccms.cn/Upload/20210105/20210105102151_5474.jpg	f
4542	4138	BN1609765616014	SN1609813291504	86.00	69.00	110.00	t	1.00	9999	0	腊肉:腊五花肉（肥瘦适中）750克	f	http://files.mvccms.cn/Upload/20210105/20210105102157_7215.jpg	f
4543	4138	BN1609765616014	SN1609813291525	154.00	130.00	169.00	t	2.00	9999	0	腊肉:腊五花肉（肥瘦适中）1500克	f	http://files.mvccms.cn/Upload/20210105/20210105102204_5697.jpg	f
4544	4138	BN1609765616014	SN1609813291501	64.00	50.00	79.00	t	1.00	9999	0	腊肉:腊五花肉（瘦肉偏多）500克	f	http://files.mvccms.cn/Upload/20210105/20210105103200_1140.jpg	f
4545	4138	BN1609765616014	SN1609813291496	94.00	76.00	118.00	t	1.00	9999	0	腊肉:腊五花肉（瘦肉偏多）750克	f	http://files.mvccms.cn/Upload/20210105/20210105103208_8936.jpg	f
4546	4138	BN1609765616014	SN1609813291524	159.00	139.00	195.00	t	2.00	9999	0	腊肉:腊五花肉（瘦肉偏多）1500克	f	http://files.mvccms.cn/Upload/20210105/20210105103220_1758.jpg	f
4547	4138	BN1609765616014	SN1609813291511	49.00	40.00	63.00	t	1.00	9999	0	腊肉:腊五花肉（很肥冲量中）500克	f	http://files.mvccms.cn/Upload/20210105/20210105103227_7905.jpg	f
4548	4138	BN1609765616014	SN1609813291493	79.00	65.00	98.00	t	1.00	9999	0	腊肉:腊五花肉（很肥冲量中）750克	f	http://files.mvccms.cn/Upload/20210105/20210105103233_5104.jpg	f
4549	4138	BN1609765616014	SN1609813291490	125.00	112.00	149.00	t	2.00	9999	0	腊肉:腊五花肉（很肥冲量中）1500克	f	http://files.mvccms.cn/Upload/20210105/20210105103240_1377.jpg	f
4550	4139	BN1609830918909	SN1609830979640	33.00	25.00	49.00	t	0.00	9998	1	香肠:试吃装（200g）	t	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4551	4139	BN1609830918909	SN1609830979641	44.00	32.00	99.00	t	0.00	9999	0	香肠:麻辣香肠（肥瘦对半）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4552	4139	BN1609830918909	SN1609830979642	115.00	93.00	179.00	t	0.00	9999	0	香肠:麻辣香肠（肥瘦对半）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4553	4139	BN1609830918909	SN1609830979643	49.00	38.00	99.00	t	0.00	9998	1	香肠:麻辣香肠（7分瘦）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4554	4139	BN1609830918909	SN1609830979644	125.00	102.00	179.00	t	0.00	9999	0	香肠:麻辣香肠（7分瘦）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4555	4139	BN1609830918909	SN1609830979646	53.00	42.00	112.00	t	0.00	9999	0	香肠:麻辣香肠（8分瘦）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4556	4139	BN1609830918909	SN1609830979647	136.00	113.00	179.00	t	0.00	9999	0	香肠:麻辣香肠（8分瘦）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4557	4139	BN1609830918909	SN1609830979648	53.00	40.00	98.00	t	0.00	9999	0	香肠:芝麻香肠（微微辣）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4558	4139	BN1609830918909	SN1609830979649	136.00	112.00	179.00	t	0.00	9999	0	香肠:芝麻香肠（微微辣）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4559	4139	BN1609830918909	SN1609830979650	53.00	40.00	78.00	t	0.00	9999	0	香肠:五香腊肠（没有辣）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4560	4139	BN1609830918909	SN1609830979651	136.00	112.00	139.00	t	0.00	9999	0	香肠:五香腊肠（没有辣）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4561	4139	BN1609830918909	SN1609830979652	44.00	32.00	59.00	t	0.00	9999	0	香肠:广式香肠（咸甜味）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4562	4139	BN1609830918909	SN1609830979653	110.00	90.00	138.00	t	0.00	9999	0	香肠:广式香肠（咸甜味）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4563	4139	BN1609830918909	SN1609830979654	63.00	45.00	78.00	t	0.00	9999	0	香肠:乡猪麻辣香肠（纯乡里瘦肉）500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4564	4139	BN1609830918909	SN1609830979655	155.00	130.00	199.00	t	0.00	9999	0	香肠:乡猪麻辣香肠（纯乡里瘦肉）1500g	f	http://files.mvccms.cn/Upload/20210105/20210105151541_2553.jpg	f
4565	4140	BN1609893832550	SN1609894374722	90.00	70.00	110.00	t	0.00	9999	1	乡里腊肉:五花腊肉（肥瘦适中）750g	t	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	f
4566	4140	BN1609893832550	SN1609894374723	94.00	75.00	118.00	t	0.00	9999	0	乡里腊肉:五花腊肉（整块偏瘦）750g	f	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	f
4567	4140	BN1609893832550	SN1609894374735	94.00	75.00	118.00	t	0.00	9999	0	乡里腊肉:腊后腿肉（整块偏瘦）750g	f	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	f
4568	4140	BN1609893832550	SN1609894374737	116.00	92.00	188.00	t	0.00	9999	0	乡里腊肉:五花腊肉（肥瘦适中）1000g	f	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	f
4569	4140	BN1609893832550	SN1609894374721	126.00	100.00	210.00	t	0.00	9999	0	乡里腊肉:五花腊肉（整块偏瘦）1000g	f	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	f
4570	4140	BN1609893832550	SN1609894374738	126.00	100.00	210.00	t	0.00	9999	0	乡里腊肉:腊后腿肉（整块偏瘦）1000g	f	http://files.mvccms.cn/Upload/20210106/20210106084914_5559.jpg	f
4571	4141	BN1609895270866	SN1609895614373	59.00	40.00	75.00	t	1.00	9998	-1	腊猪排:烟熏腊排（肉少多骨）500g	t	http://files.mvccms.cn/Upload/20210106/20210106093214_7983.jpg	f
4572	4141	BN1609895270866	SN1609895614390	114.00	103.00	150.00	t	2.00	9997	2	腊猪排:烟熏腊排（肉少多骨）1500g	f	http://files.mvccms.cn/Upload/20210106/20210106093223_1916.jpg	f
4573	4141	BN1609895270866	SN1609895614381	180.00	155.00	230.00	t	3.00	9999	0	腊猪排:烟熏腊排（肉少多骨）2500g	f	http://files.mvccms.cn/Upload/20210106/20210106093237_5924.jpg	f
4574	4141	BN1609895270866	SN1609895614383	80.00	50.00	99.00	t	1.00	9999	0	腊猪排:烟熏腊排（精选排骨）500g	f	http://files.mvccms.cn/Upload/20210106/20210106093248_6855.jpg	f
4575	4141	BN1609895270866	SN1609895614380	150.00	130.00	199.00	t	2.00	9999	0	腊猪排:烟熏腊排（精选排骨）1500g	f	http://files.mvccms.cn/Upload/20210106/20210106093256_0192.jpg	f
4576	4141	BN1609895270866	SN1609895614363	236.00	210.00	290.00	t	3.00	9999	0	腊猪排:烟熏腊排（精选排骨）2500g	f	http://files.mvccms.cn/Upload/20210106/20210106093304_3690.jpg	f
4577	4141	BN1609895270866	SN1609895614362	80.00	50.00	99.00	t	1.00	9999	0	腊猪排:风吹盐排（精选排骨）500g	f	http://files.mvccms.cn/Upload/20210106/20210106093329_1707.jpg	f
4578	4141	BN1609895270866	SN1609895614367	150.00	130.00	199.00	t	2.00	9999	0	腊猪排:风吹盐排（精选排骨）1500g	f	http://files.mvccms.cn/Upload/20210106/20210106093334_5448.jpg	f
4579	4141	BN1609895270866	SN1609895614364	236.00	210.00	290.00	t	3.00	9999	0	腊猪排:风吹盐排（精选排骨）2500g	f	http://files.mvccms.cn/Upload/20210106/20210106093340_2175.jpg	f
4580	4142	BN1610158658587	SN1610158689803	33.00	22.00	45.00	t	3.00	9997	22	橙子:（中果）2500g	t	http://files.mvccms.cn/Upload/20210109/20210109102519_9673.jpg	f
4581	4142	BN1610158658587	SN1610158689794	39.00	25.00	55.00	t	0.00	9999	4	橙子:（大果）2500g	f	http://files.mvccms.cn/Upload/20210109/20210109102519_9673.jpg	f
4582	4142	BN1610158658587	SN1610158689795	53.00	40.00	70.00	t	0.00	9999	0	橙子:（中果）5000g	f	http://files.mvccms.cn/Upload/20210109/20210109102519_9673.jpg	f
4583	4142	BN1610158658587	SN1610158689796	60.00	44.00	80.00	t	0.00	9999	0	橙子:（大果）5000g	f	http://files.mvccms.cn/Upload/20210109/20210109102519_9673.jpg	f
4584	4136	BN1608772414639	SN1611281905914	30.00	23.00	50.00	t	3.00	9999	0	沃柑:（尝鲜装精品中果）5斤	t	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	f
4585	4136	BN1608772414639	SN1611281905922	43.00	33.00	70.00	t	5.00	9999	0	沃柑:（超值装精品中果）9斤	f	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	f
4586	4136	BN1608772414639	SN1611281905913	38.00	26.00	60.00	t	3.00	9999	0	沃柑:（人气爆款精品大果）5斤	f	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	f
4587	4136	BN1608772414639	SN1611281905925	50.00	36.00	80.00	t	0.00	9999	0	沃柑:（人气爆款精品大果）9斤	f	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	f
4588	4136	BN1608772414639	SN1611281905915	60.00	43.00	89.00	t	0.00	9999	0	沃柑:（人气爆款礼盒装）8斤	f	http://files.mvccms.cn/Upload/20201224/20201224092320_9124.jpg	f
4589	4143	BN1613912011422	SN1613912372774	113.00	108.00	268.00	t	0.00	9999	0	樱桃:中果（1000g）	f	https://files.nsts.mvccms.cn/Upload/20210225/20210225110447_5621.jpg	t
4590	4143	BN1613912011422	SN1613912372764	138.00	128.00	368.00	t	0.00	9999	0	樱桃:大果（1000g）	f	https://files.nsts.mvccms.cn/Upload/20210225/20210225110557_6515.jpg	t
4591	4144	BN1613912840106	SN1613913353175	49.00	38.00	69.00	t	0.00	9999	0	红毛丹:1500g	t	\N	f
4592	4144	BN1613912840106	SN1613913353158	57.00	45.00	89.00	t	0.00	9999	0	红毛丹:2000g	f	\N	f
4593	4144	BN1613912840106	SN1613913353152	66.00	56.00	119.00	t	0.00	9999	0	红毛丹:2500g	f	\N	f
4594	4123	BN1605835730841	SN1613915160204	30.00	25.00	68.00	t	0.00	9996	1	芒果:（精品A级果）5斤	t	http://files.mvccms.cn/Upload/20201120/20201120093239_1078.jpg	f
4595	4123	BN1605835730841	SN1613915160198	40.00	35.00	88.00	t	0.00	9999	0	芒果:（精品A级果）8斤	f	http://files.mvccms.cn/Upload/20201120/20201120093239_1078.jpg	f
4596	4123	BN1605835730841	SN1613915160194	46.00	37.00	98.00	t	0.00	9996	0	芒果:（精品A级果）9斤	f	http://files.mvccms.cn/Upload/20201120/20201120093239_1078.jpg	f
4597	4145	BN1614181089679	SN1614182055307	1.00	1.00	1.00	t	1.00	10	0	空调挂机-匹数:1匹-10瓦	f	https://files.nsts.mvccms.cn/Upload/20210224/20210224234116_5093.jpg	f
4598	4145	BN1614181089679	SN1614182055303	2.00	1.00	2.00	t	2.00	10	0	空调挂机-匹数:3匹-30瓦	t	https://files.nsts.mvccms.cn/Upload/20210224/20210224234116_5093.jpg	f
4599	4145	BN1614181089679	SN1614182055299	3.00	1.00	3.00	t	3.00	10	1	空调挂机-匹数:4匹-40瓦	f	https://files.nsts.mvccms.cn/Upload/20210224/20210224234116_5093.jpg	f
4600	4145	BN1614181089679	SN1614182133198	4.00	1.00	4.00	t	4.00	10	0	空调挂机-匹数:2匹-20瓦	f	https://files.nsts.mvccms.cn/Upload/20210224/20210224234116_5093.jpg	f
4601	4143	BN1613912011422	SN1614222135933	89.00	83.00	198.00	t	0.00	9988	1	樱桃:家庭版（1000g）	t	https://files.nsts.mvccms.cn/Upload/20210225/20210225110608_3629.jpg	t
4602	4146	BN1614345917680	SN1614346519517	108.00	95.00	188.00	t	3.00	9996	0	水果:5斤	t	https://files.nsts.mvccms.cn/Upload/20210226/20210226213346_5946.jpg	f
4603	4147	BN1614346900218	SN1614347224097	49.00	38.00	78.00	t	0.00	9996	0	水果:5斤	t	https://files.nsts.mvccms.cn/Upload/20210226/20210226214525_0730.jpg	f
4604	4147	BN1614346900218	SN1614347224089	75.00	63.00	118.00	t	0.00	9999	0	水果:9斤	f	https://files.nsts.mvccms.cn/Upload/20210226/20210226214525_0730.jpg	f
4605	4148	BN1614347679266	SN1614348407543	85.00	72.00	138.00	t	0.00	9999	0	水果:10斤	t	https://files.nsts.mvccms.cn/Upload/20210226/20210226220233_6757.jpg	f
4606	4149	BN1614694710883	SN1614694710890	0.00	0.00	1.00	t	10.00	16	9		t	https://files.nsts.mvccms.cn/Upload/20210302/20210302221907_3393.jpg	f
4607	4143	BN1613912011422	SN1615130633929	169.00	158.00	498.00	t	0.00	9999	0	樱桃:特大果（1000g）	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4608	4150	BN1617362790366	SN1617363510481	238.00	200.00	358.00	t	1250.00	9999	0	榴莲:正宗马来西亚猫山王（鲜果）	t	https://files.nsts.mvccms.cn/Upload/20210402/20210402193110_2186.jpg	f
4609	4151	BN1618116561602	SN1618116972634	36.00	25.00	49.00	t	0.00	9995	2	橙子:精品伦晚中果（5斤装）	t	https://files.nsts.mvccms.cn/Upload/20210411/20210411125545_6230.jpg	f
4610	4151	BN1618116561602	SN1618116972606	40.00	29.00	55.00	t	0.00	9996	0	橙子:精品伦晚大果（5斤装）	f	https://files.nsts.mvccms.cn/Upload/20210411/20210411125545_6230.jpg	f
4611	4151	BN1618116561602	SN1618116972630	60.00	46.00	99.00	t	0.00	9998	0	橙子:精品伦晚大果（10斤装）	f	https://files.nsts.mvccms.cn/Upload/20210411/20210411125545_6230.jpg	f
4612	4151	BN1618116561602	SN1618116972617	56.00	45.00	95.00	t	0.00	9999	0	橙子:精品伦晚中果（10斤装）	f	https://files.nsts.mvccms.cn/Upload/20210411/20210411125545_6230.jpg	f
4613	4152	BN1618631441590	SN1618631441583	10.00	3.00	11.00	t	0.00	1000	0		t	https://files.nsts.mvccms.cn/Upload/20210417/20210417115331_3325.jpg	f
4614	4124	BN1605956385364	SN1619104629021	69.00	49.00	110.00	t	0.00	9999	0	海南波罗蜜:（10-15斤）品质小果，一人吃过瘾	t	http://files.mvccms.cn/Upload/20201121/20201121190544_2914.jpg	f
4615	4124	BN1605956385364	SN1619104631684	80.00	60.00	119.00	t	0.00	9999	0	海南波罗蜜:（15-20斤）严选品质，家庭分享装	f	http://files.mvccms.cn/Upload/20201121/20201121190544_2914.jpg	f
4616	4114	BN1604554036004	SN1619109033739	26.00	20.00	38.00	t	0.00	9999	0	椰青:2个装	t	https://files.nsts.mvccms.cn/Upload/20210423/20210423003101_1176.jpg	f
4617	4114	BN1604554036004	SN1619109033745	44.00	39.00	59.00	t	0.00	9999	0	椰青:4个装	f	https://files.nsts.mvccms.cn/Upload/20210423/20210423003107_1086.jpg	f
4618	4114	BN1604554036004	SN1619109033755	60.00	52.00	75.00	t	0.00	9999	0	椰青:6个装	f	https://files.nsts.mvccms.cn/Upload/20210423/20210423003114_3036.jpg	f
4619	4114	BN1604554036004	SN1619109033757	75.00	69.00	99.00	t	0.00	9999	0	椰青:9个装	f	https://files.nsts.mvccms.cn/Upload/20210423/20210423003120_5366.jpg	f
4620	4143	BN1613912011422	SN16191799048201	89.00	80.00	99.00	t	1000.00	9998	0	樱桃:中果（25-27mm）2斤	t	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4621	4143	BN1613912011422	SN16191799048212	118.00	108.00	159.00	t	1500.00	9996	0	樱桃:中果（25-27mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4622	4143	BN1613912011422	SN16191799048183	185.00	170.00	210.00	t	2500.00	9998	0	樱桃:中果（25-27mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4623	4143	BN1613912011422	SN16191799048164	109.00	99.00	139.00	t	1000.00	9999	0	樱桃:中大果（27-29mm）2斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4624	4143	BN1613912011422	SN16191799048365	139.00	129.00	189.00	t	1500.00	9997	0	樱桃:中大果（27-29mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4625	4143	BN1613912011422	SN16191799048346	230.00	219.00	258.00	t	2500.00	888	0	樱桃:中大果（27-29mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4626	4143	BN1613912011422	SN16191799048147	130.00	119.00	159.00	t	1000.00	9998	0	樱桃:特大果（29-32mm）2斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4627	4143	BN1613912011422	SN16191799048278	175.00	160.00	199.00	t	1500.00	9999	0	樱桃:特大果（29-32mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4628	4143	BN1613912011422	SN16191799048390	268.00	250.00	358.00	t	2500.00	500	0	樱桃:特大果（29-32mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4629	4143	BN1613912011422	SN16191799048371	168.00	150.00	199.00	t	1000.00	120	0	樱桃:超级大果（32-36mm）2斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4630	4143	BN1613912011422	SN16191799048142	238.00	210.00	289.00	t	1500.00	222	0	樱桃:超级大果（32-36mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4631	4143	BN1613912011422	SN16191799048323	389.00	350.00	450.00	t	2500.00	98	0	樱桃:超级大果（32-36mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4632	4153	BN1619365341618	SN1619365909622	29.00	22.00	65.00	t	0.00	998	1	桃子:精品A果（3斤装）	t	https://files.nsts.mvccms.cn/Upload/20210425/20210425234728_5145.jpg	f
4633	4134	BN1607994546432	SN1619528476852	89.00	75.00	110.00	t	0.00	9999	0	榴莲:2-3斤（1个装）	t	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	f
4634	4134	BN1607994546432	SN1619528476862	110.00	99.00	158.00	t	0.00	9998	0	榴莲:3-4斤（1个装）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	f
4635	4134	BN1607994546432	SN1619528476869	159.00	145.00	199.00	t	0.00	1000	0	榴莲:5-6斤（1-2个装）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	f
4636	4134	BN1607994546432	SN1619528476863	189.00	169.00	258.00	t	0.00	8000	0	榴莲:6-7斤（1-2个装）	f	http://files.mvccms.cn/Upload/20201215/20201215091319_3326.jpg	f
4637	4051	BN1598837599738	SN1619612995796	79.00	71.00	99.00	t	0.00	9999	0	榴莲:2-3斤（1个装）	t	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4638	4051	BN1598837599738	SN1619612995793	99.00	90.00	125.00	t	0.00	9999	0	榴莲:3-4斤（1个装）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4639	4051	BN1598837599738	SN1619612995791	149.00	135.00	178.00	t	0.00	9999	0	榴莲:5-6斤（1-2个装）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4640	4051	BN1598837599738	SN1619612995801	175.00	160.00	210.00	t	0.00	9999	0	榴莲:6-7斤（1-2个装）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4641	4051	BN1598837599738	SN1619612995781	123.00	113.00	148.00	t	0.00	9999	0	榴莲:4-5斤（1-2个装）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4642	4093	BN1602760419323	SN1619615234430	40.00	34.00	98.00	t	0.00	9997	0	哈密瓜:4斤（2个装）	t	http://files.mvccms.cn/Upload/20201015/20201015192105_6401.jpg	f
4643	4051	BN1598837599738	SN1619656585032	88.00	75.00	110.00	t	0.00	9999	0	榴莲:金枕3-4斤（A级精品）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4644	4051	BN1598837599738	SN1619656585038	119.00	98.00	158.00	t	0.00	9991	0	榴莲:金枕4-5斤（A级精品，店长力荐）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4645	4051	BN1598837599738	SN1619656585016	139.00	118.00	178.00	t	0.00	10012	0	榴莲:金枕5-6斤（A级精品，送礼推荐）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4646	4051	BN1598837599738	SN1619656585031	159.00	140.00	198.00	t	0.00	10012	0	榴莲:金枕6-7斤（A级精品，吃货专享）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4647	4051	BN1598837599738	SN1619656585025	185.00	155.00	220.00	t	0.00	9999	0	榴莲:金枕7-8斤（A级精品，人气爆款）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4648	4051	BN1598837599738	SN1619656585033	198.00	170.00	268.00	t	0.00	9997	0	榴莲:金枕8-9斤（A级精品，过瘾必选）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4649	4051	BN1598837599738	SN1619656585023	69.00	55.00	99.00	t	0.00	10017	0	榴莲:金枕2-3斤（巴掌榴莲，一个人吃爽）	t	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	t
4650	4143	BN1613912011422	SN1619967415845	75.00	65.00	110.00	t	0.00	9997	6	樱桃:家庭版（25-27mm）2斤	t	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4651	4143	BN1613912011422	SN1619967415846	99.00	85.00	159.00	t	0.00	9999	0	樱桃:家庭版（25-27mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4652	4143	BN1613912011422	SN1619967415842	139.00	125.00	210.00	t	0.00	9998	0	樱桃:家庭版（25-27mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4653	4143	BN1613912011422	SN1619967438465	95.00	75.00	139.00	t	0.00	9999	0	樱桃:中大果（27-29mm）2斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4654	4143	BN1613912011422	SN1619967438452	120.00	105.00	189.00	t	0.00	9997	0	樱桃:中大果（27-29mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4655	4143	BN1613912011422	SN1619967438459	170.00	155.00	268.00	t	0.00	9998	1	樱桃:中大果（27-29mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4656	4143	BN1613912011422	SN1619967438460	105.00	85.00	159.00	t	0.00	9999	0	樱桃:特大果（29-32mm）2斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4657	4143	BN1613912011422	SN1619967438455	150.00	138.00	199.00	t	0.00	9997	0	樱桃:特大果（29-32mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4658	4143	BN1613912011422	SN1619967438454	225.00	195.00	358.00	t	0.00	9998	0	樱桃:特大果（29-32mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	f
4659	4143	BN1613912011422	SN1619967438441	139.00	130.00	358.00	t	0.00	9999	1	樱桃:超级大果（32-36mm）2斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4660	4143	BN1613912011422	SN1619967438436	198.00	189.00	289.00	t	0.00	9999	0	樱桃:超级大果（32-36mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4661	4143	BN1613912011422	SN1619967438446	330.00	300.00	450.00	t	0.00	9999	0	樱桃:超级大果（32-36mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210221/20210221205737_9390.jpg	t
4662	4051	BN1598837599738	SN1621059262564	69.00	61.00	79.00	t	0.00	9999	1	榴莲:巴掌榴莲（2-3斤）	t	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4663	4051	BN1598837599738	SN1621059262582	88.00	79.00	99.00	t	0.00	9999	0	榴莲:巴掌榴莲（3-4斤）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4664	4051	BN1598837599738	SN1621059262567	124.00	109.00	139.00	t	0.00	9999	0	榴莲:巴掌榴莲（4-5斤）	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4665	4051	BN1598837599738	SN1621059262580	143.00	130.00	159.00	t	0.00	9999	0	榴莲:巴掌榴莲（5-6斤）1-2个	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4666	4051	BN1598837599738	SN1621059262587	165.00	150.00	189.00	t	0.00	9999	0	榴莲:巴掌榴莲（6-7斤）1-2个	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4667	4051	BN1598837599738	SN1621059262573	185.00	170.00	210.00	t	0.00	9999	0	榴莲:巴掌榴莲（7-8斤）1-2个	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4668	4051	BN1598837599738	SN1621059262588	198.00	189.00	238.00	t	0.00	9999	0	榴莲:巴掌榴莲（8-9斤）1-3个	f	http://files.mvccms.cn/Upload/20200907/20200907105357_3344.jpg	f
4669	4154	BN1621061425122	SN1621061844364	43.00	35.00	59.00	t	0.00	9998	0	桃子:精品A果（3斤装）	t	\N	f
4670	4154	BN1621061425122	SN1621061844363	57.00	46.00	79.00	t	0.00	9999	0	桃子:精品A果（4.5斤装）	f	\N	f
4671	4154	BN1621061425122	SN1621061844339	60.00	48.00	99.00	t	0.00	10009	0	桃子:精品礼盒（4.5斤装）	f	\N	f
4672	4109	BN1603934302481	SN1621350333182	79.00	65.00	110.00	t	0.00	9999	0	哈密瓜:精品A果2个装（7-8斤）	t	http://files.mvccms.cn/Upload/20201029/20201029093556_4051.jpg	f
4673	4155	BN1621811423386	SN1621811592457	59.00	48.00	99.00	t	0.00	9999	0	樱桃:露天樱桃（24-28mm）2斤	t	https://files.nsts.mvccms.cn/Upload/20210524/20210524071212_2090.jpg	f
4674	4155	BN1621811423386	SN1621811592466	79.00	69.00	138.00	t	0.00	9998	1	樱桃:露天樱桃（24-28mm）3斤	f	https://files.nsts.mvccms.cn/Upload/20210524/20210524071212_2090.jpg	f
4675	4155	BN1621811423386	SN1621811592474	115.00	100.00	198.00	t	0.00	9998	0	樱桃:露天樱桃（24-28mm）5斤	f	https://files.nsts.mvccms.cn/Upload/20210524/20210524071212_2090.jpg	f
4676	4156	BN1621955031238	SN1621955637079	129.00	103.00	198.00	t	3.00	9998	0	荔枝:精品A果（5斤装）	t	https://files.nsts.mvccms.cn/Upload/20210525/20210525231214_3052.jpg	f
4677	4156	BN1621955031238	SN1622039915961	138.00	110.00	238.00	t	3.00	9999	0	荔枝:精品A果礼盒装（5斤装）	f	https://files.nsts.mvccms.cn/Upload/20210525/20210525231214_3052.jpg	f
4678	4157	BN1622384194347	SN1622384400966	218.00	203.00	398.00	t	0.00	9999	0	荔枝:精品A果（5斤装）	t	https://files.nsts.mvccms.cn/Upload/20210531/20210531085328_2652.jpg	t
4679	4158	BN1718955664740	SN1718955664717	1	1	2	t	0	1000	0		t	http://www.coreshop.cn//upload/20240621/20240621154231_6623.jpg	f
\.


--
-- Data for Name: corecmsproductsdistribution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsproductsdistribution (id, productsid, productssn, levelone, leveltwo, levelthree, createtime, updatetime) FROM stdin;
1	4679	SN1718955664717	0	0	0	2024-06-21 15:45:11.400459	\N
\.


--
-- Data for Name: corecmspromotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspromotion (id, name, type, sort, parameters, maxnums, maxgoodsnums, maxrecevienums, starttime, endtime, isexclusive, isautoreceive, isenable, isdel, effectivedays, effectivehours) FROM stdin;
\.


--
-- Data for Name: corecmspromotioncondition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspromotioncondition (id, promotionid, code, parameters) FROM stdin;
\.


--
-- Data for Name: corecmspromotionrecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspromotionrecord (id, promotionid, userid, goodsid, productid, orderid, type, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmspromotionresult; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmspromotionresult (id, promotionid, code, parameters) FROM stdin;
\.


--
-- Data for Name: corecmsservicedescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsservicedescription (id, title, type, description, isshow, sortid) FROM stdin;
1	产地直销	2	缩短和优化了供应链流程，减少损耗，可以让利给消费者；	t	1
2	7天无理由退换货	2	我们提供7天无理由退换货服务！	f	1
3	17:00前下单，当日发货，快递包邮	3	17:00前下单，当日发货，快递包邮	t	1
4	权利声明	1	本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。	t	1
5	销售价	1	销售价为商品的销售价格，是您最终决定是否购买商品的依据。	t	2
6	划线价	1	商品展示的划横线价格为参考价，并非原价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。	t	3
7	折扣	1	如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。	t	4
8	异常问题	1	商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。	t	5
\.


--
-- Data for Name: corecmsservices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsservices (id, title, thumbnail, description, contentbody, allowedmembership, consumablestore, status, maxbuynumber, amount, starttime, endtime, validitytype, validitystarttime, validityendtime, ticketnumber, createtime, updatetime, money) FROM stdin;
\.


--
-- Data for Name: corecmssetting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmssetting (skey, svalue) FROM stdin;
\.


--
-- Data for Name: corecmsship; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsship (id, name, iscashondelivery, firstunit, continueunit, isdefaultareafee, areatype, firstunitprice, continueunitprice, exp, loginame, logicode, isdefault, sort, status, isfreepostage, areafee, goodsmoney) FROM stdin;
1009	默认配送方式	f	2000	1000	t	1	8.00	3.00	\N	顺丰速运	shunfeng	t	2	1	t		0.00
1013	湖南配送方式	f	1000	1000	t	2	20.00	8.00	\N	申通快递	shentong	f	1	2	f	[{"areaValue":"[{\\\\"id\\\\":\\\\"110000\\\\",\\\\"pid\\\\":\\\\"-1\\\\",\\\\"name\\\\":\\\\"北京市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110100\\\\",\\\\"pid\\\\":\\\\"110000\\\\",\\\\"name\\\\":\\\\"北京市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110101\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"东城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110102\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"西城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110105\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"朝阳区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110106\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"丰台区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110107\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"石景山区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110108\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"海淀区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110109\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"门头沟区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110111\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"房山区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110112\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"通州区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110113\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"顺义区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110114\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"昌平区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110115\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"大兴区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110116\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"怀柔区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110117\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"平谷区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110118\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"密云区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"110119\\\\",\\\\"pid\\\\":\\\\"110100\\\\",\\\\"name\\\\":\\\\"延庆区\\\\",\\\\"ischecked\\\\":1}]","area":"110000,110100,110101,110102,110105,110106,110107,110108,110109,110111,110112,110113,110114,110115,110116,110117,110118,110119","areaParentName":"北京市","continueunitAreaPrice":"5","firstunitAreaPrice":"13"},{"areaValue":"[{\\\\"id\\\\":\\\\"140000\\\\",\\\\"pid\\\\":\\\\"-1\\\\",\\\\"name\\\\":\\\\"山西省\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140100\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"太原市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140101\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140105\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"小店区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140106\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"迎泽区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140107\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"杏花岭区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140108\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"尖草坪区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140109\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"万柏林区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140110\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"晋源区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140121\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"清徐县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140122\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"阳曲县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140123\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"娄烦县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140181\\\\",\\\\"pid\\\\":\\\\"140100\\\\",\\\\"name\\\\":\\\\"古交市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140200\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"大同市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140201\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140202\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140203\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"矿区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140211\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"南郊区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140212\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"新荣区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140221\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"阳高县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140222\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"天镇县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140223\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"广灵县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140224\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"灵丘县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140225\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"浑源县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140226\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"左云县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140227\\\\",\\\\"pid\\\\":\\\\"140200\\\\",\\\\"name\\\\":\\\\"大同县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140300\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"阳泉市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140301\\\\",\\\\"pid\\\\":\\\\"140300\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140302\\\\",\\\\"pid\\\\":\\\\"140300\\\\",\\\\"name\\\\":\\\\"城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140303\\\\",\\\\"pid\\\\":\\\\"140300\\\\",\\\\"name\\\\":\\\\"矿区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140311\\\\",\\\\"pid\\\\":\\\\"140300\\\\",\\\\"name\\\\":\\\\"郊区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140321\\\\",\\\\"pid\\\\":\\\\"140300\\\\",\\\\"name\\\\":\\\\"平定县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140322\\\\",\\\\"pid\\\\":\\\\"140300\\\\",\\\\"name\\\\":\\\\"盂县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140400\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"长治市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140401\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140402\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140411\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"郊区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140421\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"长治县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140423\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"襄垣县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140424\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"屯留县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140425\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"平顺县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140426\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"黎城县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140427\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"壶关县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140428\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"长子县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140429\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"武乡县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140430\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"沁县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140431\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"沁源县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140481\\\\",\\\\"pid\\\\":\\\\"140400\\\\",\\\\"name\\\\":\\\\"潞城市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140500\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"晋城市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140501\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140502\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140521\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"沁水县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140522\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"阳城县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140524\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"陵川县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140525\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"泽州县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140581\\\\",\\\\"pid\\\\":\\\\"140500\\\\",\\\\"name\\\\":\\\\"高平市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140600\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"朔州市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140601\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140602\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"朔城区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140603\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"平鲁区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140621\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"山阴县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140622\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"应县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140623\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"右玉县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140624\\\\",\\\\"pid\\\\":\\\\"140600\\\\",\\\\"name\\\\":\\\\"怀仁县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140700\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"晋中市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140701\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140702\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"榆次区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140721\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"榆社县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140722\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"左权县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140723\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"和顺县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140724\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"昔阳县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140725\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"寿阳县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140726\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"太谷县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140727\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"祁县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140728\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"平遥县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140729\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"灵石县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140781\\\\",\\\\"pid\\\\":\\\\"140700\\\\",\\\\"name\\\\":\\\\"介休市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140800\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"运城市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140801\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140802\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"盐湖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140821\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"临猗县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140822\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"万荣县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140823\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"闻喜县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140824\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"稷山县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140825\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"新绛县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140826\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"绛县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140827\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"垣曲县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140828\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"夏县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140829\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"平陆县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140830\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"芮城县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140881\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"永济市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140882\\\\",\\\\"pid\\\\":\\\\"140800\\\\",\\\\"name\\\\":\\\\"河津市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140900\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"忻州市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140901\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140902\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"忻府区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140921\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"定襄县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140922\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"五台县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140923\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"代县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140924\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"繁峙县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140925\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"宁武县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140926\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"静乐县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140927\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"神池县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140928\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"五寨县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140929\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"岢岚县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140930\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"河曲县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140931\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"保德县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140932\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"偏关县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"140981\\\\",\\\\"pid\\\\":\\\\"140900\\\\",\\\\"name\\\\":\\\\"原平市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141000\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"临汾市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141001\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141002\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"尧都区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141021\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"曲沃县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141022\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"翼城县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141023\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"襄汾县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141024\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"洪洞县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141025\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"古县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141026\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"安泽县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141027\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"浮山县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141028\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"吉县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141029\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"乡宁县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141030\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"大宁县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141031\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"隰县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141032\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"永和县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141033\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"蒲县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141034\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"汾西县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141081\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"侯马市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141082\\\\",\\\\"pid\\\\":\\\\"141000\\\\",\\\\"name\\\\":\\\\"霍州市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141100\\\\",\\\\"pid\\\\":\\\\"140000\\\\",\\\\"name\\\\":\\\\"吕梁市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141101\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"市辖区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141102\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"离石区\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141121\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"文水县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141122\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"交城县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141123\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"兴县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141124\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"临县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141125\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"柳林县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141126\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"石楼县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141127\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"岚县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141128\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"方山县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141129\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"中阳县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141130\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"交口县\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141181\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"孝义市\\\\",\\\\"ischecked\\\\":1},{\\\\"id\\\\":\\\\"141182\\\\",\\\\"pid\\\\":\\\\"141100\\\\",\\\\"name\\\\":\\\\"汾阳市\\\\",\\\\"ischecked\\\\":1}]","area":"140000,140100,140101,140105,140106,140107,140108,140109,140110,140121,140122,140123,140181,140200,140201,140202,140203,140211,140212,140221,140222,140223,140224,140225,140226,140227,140300,140301,140302,140303,140311,140321,140322,140400,140401,140402,140411,140421,140423,140424,140425,140426,140427,140428,140429,140430,140431,140481,140500,140501,140502,140521,140522,140524,140525,140581,140600,140601,140602,140603,140621,140622,140623,140624,140700,140701,140702,140721,140722,140723,140724,140725,140726,140727,140728,140729,140781,140800,140801,140802,140821,140822,140823,140824,140825,140826,140827,140828,140829,140830,140881,140882,140900,140901,140902,140921,140922,140923,140924,140925,140926,140927,140928,140929,140930,140931,140932,140981,141000,141001,141002,141021,141022,141023,141024,141025,141026,141027,141028,141029,141030,141031,141032,141033,141034,141081,141082,141100,141101,141102,141121,141122,141123,141124,141125,141126,141127,141128,141129,141130,141181,141182","areaParentName":"山西省","continueunitAreaPrice":"0","firstunitAreaPrice":"0"}]	0.00
\.


--
-- Data for Name: corecmssms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmssms (id, mobile, code, parameters, contentbody, ip, isused, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsstock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsstock (id, type, manager, memo, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsstocklog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsstocklog (id, stockid, productid, goodsid, nums, sn, bn, goodsname, spesdesc) FROM stdin;
\.


--
-- Data for Name: corecmsstore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsstore (id, storename, mobile, linkman, logoimage, areaid, address, coordinate, latitude, longitude, isdefault, createtime, updatetime, distance) FROM stdin;
1005	南山田舍	15874553991	燕子	https://files.nsts.mvccms.cn/Upload/20210123/20210123182403_7261.jpg	431202	湖南省怀化市鹤城区政通路131号	27.53872514526144,109.94825899600983	27.53872514526144	109.94825899600983	t	1753-01-01 00:00:00	2021-05-01 22:36:37	0.00
1008	测试门店	15107450740	刘工	https://files.nsts.mvccms.cn/Upload/20210522/20210522003309_9190.jpg	431202	中国湖南省怀化市鹤城区花溪路317号	27.547774245290984,109.98598158359528	27.547774245290984	109.98598158359528	f	2021-05-22 00:34:12	2021-05-22 00:34:12	0.00
\.


--
-- Data for Name: corecmsuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuser (id, username, password, mobile, sex, birthday, avatarimage, nickname, balance, point, grade, createtime, updatatime, status, parentid, userwx, isdelete) FROM stdin;
\.


--
-- Data for Name: corecmsuserbalance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserbalance (id, userid, type, money, balance, sourceid, memo, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsuserbankcard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserbankcard (id, userid, bankname, bankcode, bankareaid, accountbank, accountname, cardnumber, cardtype, isdefault, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsusergrade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsusergrade (id, title, isdefault) FROM stdin;
2	尊享VIP	f
6	普通用户	t
1006	开发测试组	f
1007	测试001	f
1008	豪华等级	f
\.


--
-- Data for Name: corecmsuserlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserlog (id, userid, state, parameters, ip, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsuserpointlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserpointlog (id, userid, type, num, balance, remarks, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsuserservicesorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserservicesorder (id, serviceorderid, userid, servicesid, ispay, paytime, paymentid, status, createtime, servicesendtime) FROM stdin;
\.


--
-- Data for Name: corecmsuserservicesticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserservicesticket (id, serviceorderid, securitycode, redeemcode, serviceid, userid, status, validitytype, validitystarttime, validityendtime, createtime, isverification, verificationtime) FROM stdin;
\.


--
-- Data for Name: corecmsuserservicesticketverificationlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserservicesticketverificationlog (id, storeid, serviceid, verificationuserid, ticketid, ticketredeemcode, verificationtime, isdel) FROM stdin;
\.


--
-- Data for Name: corecmsusership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsusership (id, userid, areaid, address, name, mobile, isdefault, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsusertocash; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsusertocash (id, userid, money, bankname, bankcode, bankareaid, accountbank, accountname, cardnumber, withdrawals, status, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsusertoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsusertoken (token, userid, platform, createtime) FROM stdin;
\.


--
-- Data for Name: corecmsuserwechatinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserwechatinfo (id, type, userid, openid, sessionkey, unionid, avatar, nickname, gender, language, city, province, country, countrycode, mobile, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsuserwechatmsgsubscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserwechatmsgsubscription (id, templateid, userid, type) FROM stdin;
\.


--
-- Data for Name: corecmsuserwechatmsgsubscriptionswitch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserwechatmsgsubscriptionswitch (id, userid, isswitch) FROM stdin;
\.


--
-- Data for Name: corecmsuserwechatmsgtemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsuserwechatmsgtemplate (id, templatetitle, templatedes, templateid, data01, data02, data03, data04, data05, description, sortid) FROM stdin;
1	order	下单通知	x1a4-3acsbX78dNLr9NQr_WKIH4w_ekehJfLDBqOhUo	character_string1	amount4	name7	phone_number10	thing9	商城下单后通知我	1
2	cancel	催付通知	OTOAxQK87Cy6Io-rvDBWTL2jS3J3Ec9DXBkzi3OyJMI	character_string5	amount11	date2	thing12		未支付订单取消当前通知我	2
3	pay	支付通知	wlcCNQfIwlVjeIel4WLHokfrllJYfk9UeJn_Mjpjvjw	character_string6	amount10	time11			订单支付后通知我	3
4	ship	发货通知	z10qLV90wMzkIvlMnzsl_UnPO4UuyE8QYzLzkK09L3k	character_string1	thing20	character_string5			订单发货后通知我	4
5	aftersale	售后通知	lYMDYV7wtMosZfFFyGwD7668gl6VvhcQ8-wZxWIxB7o	character_string2	amount4	thing8	phrase3		订单售后结果通知我	5
6	refund	退款通知	WuTTzha-u6V9Mb_x_W_XpbMcZ-optcVVugjlgSrkdA4	character_string12	character_string1	amount3	thing10	time4	售后退款结果通知我	6
\.


--
-- Data for Name: corecmsweixinauthor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsweixinauthor (id, nickname, headimg, servicetypeinfo, verifytypeinfo, username, signature, principalname, businessinfo, qrcodeurl, authorizationinfo, appid, appsecret, miniprograminfo, funcinfo, authorizerrefreshtoken, authorizeraccesstoken, bindtype, authortype, expiresin, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsweixinmediamessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsweixinmediamessage (id, title, author, brief, imageurl, contentbody, url, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: corecmsweixinmenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsweixinmenu (id, menuid, parentid, name, type, parameters) FROM stdin;
\.


--
-- Data for Name: corecmsweixinmessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.corecmsweixinmessage (id, name, type, parameters, isattention, isdefault, isenable, createtime, updatetime) FROM stdin;
\.


--
-- Data for Name: sysdictionary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysdictionary (id, dictcode, dictname, comments, sortnumber, deleted, createtime, updatetime) FROM stdin;
1	sex	性别	1	0	f	2020-03-15 13:04:39	2020-03-15 13:04:39
2	organization_type	机构类型	2	0	f	2020-03-16 00:32:36	2020-03-16 00:32:36
5	test	测试字典	测试字典	1	f	2020-07-16 18:07:43	\N
\.


--
-- Data for Name: sysdictionarydata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysdictionarydata (id, dictid, dictdatacode, dictdataname, comments, sortnumber, deleted, createtime, updatetime) FROM stdin;
2	1	male	男	1	0	f	2020-03-15 13:07:28	2020-03-15 13:07:28
3	1	female	女	2	0	f	2020-03-15 13:07:41	2020-03-15 15:58:04
4	2	company	公司	1	0	f	2020-03-16 00:34:32	2020-03-16 00:34:32
5	2	subsidiary	子公司	2	0	f	2020-03-16 00:35:02	2020-03-16 00:35:02
6	2	department	部门	3	0	f	2020-03-16 00:35:18	2020-03-16 00:35:18
7	2	group	小组	4	2	f	2020-03-16 00:35:36	2020-07-16 22:39:04
11	5	11	111	111	1	f	2020-07-16 18:50:01	2020-07-16 22:43:41
12	5	33	333	333	1	f	2020-07-16 22:36:14	\N
13	2	team	队	队/组	3	f	2020-07-16 22:37:01	2020-07-16 22:39:11
15	1	unknown	未知	未知	1	f	2020-07-16 22:39:47	\N
16	5	44	444	444	1	f	2020-07-21 12:31:44	\N
\.


--
-- Data for Name: sysloginrecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysloginrecord (id, username, os, device, browser, ip, opertype, comments, createtime, updatetime) FROM stdin;
1	coreshop	Microsoft Windows 10.0.19045	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0	0.0.0.1	1	\N	2024-06-21 15:38:02.709304	\N
2	coreshop	Microsoft Windows 10.0.19045	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0	0.0.0.1	0	\N	2024-06-21 15:38:59.788792	\N
\.


--
-- Data for Name: sysmenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysmenu (id, parentid, identificationcode, menuname, menuicon, path, component, menutype, sortnumber, authority, target, iconcolor, hide, deleted, createtime, updatetime) FROM stdin;
7	43	sysrole	角色管理		system/sysrole/index		0	2	sys:role:view	\N	\N	f	f	2020-03-21 01:07:13	\N
12	43	sysmenu	菜单管理		system/sysmenu/index		0	3	sys:menu:view	\N	\N	f	f	2020-03-21 01:07:13	2020-07-17 16:23:53
42	43	sysuser	用户管理		system/sysuser/index	/Api/SysUser/GetPageList	0	1	sys:user:index	\N	\N	f	f	2020-03-21 01:07:13	\N
43	0	system	后台管理	layui-icon-set			0	103		\N	\N	f	f	2020-03-21 01:07:13	\N
44	126	setting	平台设置		shop/setting/index	/Api/CoreCmsSetting/GetIndex	0	0	system:setting:index	\N	\N	f	f	2020-03-21 01:07:13	\N
46	43	sysCodeGenerator	代码生成器		system/sysCodeGenerator/index	system/sysCodeGenerator/index	0	999	system:codeGenerator:index	\N	\N	f	f	2020-03-21 01:07:13	\N
47	0	user	会员管理	layui-icon-user			0	1		\N	\N	f	f	2020-03-21 01:07:13	2021-10-15 12:56:11
48	47	userInfo	注册用户管理		user/userInfo/index	/Api/CoreCmsUser/Index	0	5	user:userInfo:index	\N	\N	f	f	2020-03-21 01:07:13	\N
49	47	usergrade	用户等级		user/usergrade/index	/Api/CoreCmsUserGrade/Index	0	10	user:usergrade:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:08:48
50	661	smslog	短信发送列表		shop/message/smslog/index		0	50	message:smslog:index	\N	\N	f	f	2020-03-21 01:07:13	\N
51	0	good	商品管理	layui-icon-cart-simple			0	10		\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:18:49
52	51	goods	普通商品列表		good/goods/index	good/goods/list	0	1	good:goods:index	\N	\N	f	f	2020-03-21 01:07:13	\N
53	51	goodscategory	商品分类		good/goodscategory/index	good/goodscategory/list	0	10	good:goodscategory:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:18:58
54	51	goodsbrand	品牌列表		good/goodsbrand/index	good/goodsbrand/list	0	20	good:goodsbrand:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:19:02
56	51	goodscomment	商品评价		good/goodscomment/index	good/goodscomment/list	0	40	good:goodscomment:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:19:16
57	51	goodsparams	参数模型		good/goodsparams/index	good/goodsparams/list	0	35	good:goodsparams:index	\N	\N	f	f	2020-03-21 01:07:13	\N
58	51	goodsTypeSpec	SKU模型		good/goodstypespec/index	good/goodsTypeSpec/list	0	32	good:goodsTypeSpec:index	\N	\N	f	f	2021-10-15 10:47:02	\N
59	0	order	订单管理	layui-icon-tabs			0	5		\N	\N	f	f	2020-03-21 01:07:13	\N
60	59	orders	普通订单列表	layui-icon-set	order/orders/index	order/orders/list	0	1	order:orders:index	\N	\N	f	f	2020-03-21 01:07:13	\N
62	126	ship	配送方式		shop/ship/index	shop/ship/index	0	35	shop:ship:index	\N	\N	f	f	2020-03-21 01:07:13	\N
63	126	store	门店列表		shop/store/index	shop/store/index	0	40	shop:store:index	\N	\N	f	f	2020-03-21 01:07:13	\N
64	126	logistics	物流公司		shop/logistics/index	shop/logistics/index	0	55	shop:logistics:index	\N	\N	f	f	2020-03-21 01:07:13	\N
65	59	billlading	提货单列表		order/billlading/index	order/billlading/list	0	20	order:billlading:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:20:21
66	59	billdelivery	发货单列表		order/billdelivery/index	order/billdelivery/list	0	10	order:billdelivery:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:20:18
67	59	billaftersales	售后单列表		order/billaftersales/index	order/billaftersales/list	0	30	order:billaftersales:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:20:23
69	717	article	文章管理	layui-icon-list			0	20		\N	\N	f	f	2020-03-21 01:07:13	\N
70	69	article	文章列表		content/article/articles/index		0	1		\N	\N	f	f	2020-03-21 01:07:13	\N
71	69	articletype	文章分类		content/article/articletype/index		0	1	article:articletype:index	\N	\N	f	f	2020-03-21 01:07:13	\N
72	717	notice	公告列表		content/notice/index		0	1		\N	\N	f	f	2020-03-21 01:07:13	\N
73	717	advert	广告管理	layui-icon-rss			0	10		\N	\N	f	f	2020-03-21 01:07:13	\N
74	73	advertPosition	广告位置列表		content/advert/advertPosition/index		0	1	advert:advertPosition:index	\N	\N	f	f	2020-03-21 01:07:13	\N
75	73	advertisement	广告列表		content/advert/advertisement/index		0	1	advert:advertisement:index	\N	\N	f	f	2020-03-21 01:07:13	\N
76	59	billreship	退货单列表		order/billreship/index	order/billreship/list	0	40	order:billreship:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:20:27
77	0	promotion	促销中心	layui-icon-star			0	40		\N	\N	f	f	2020-03-21 01:07:13	\N
78	77	pintuan	拼团管理				0	20		\N	\N	f	f	2020-03-21 01:07:13	\N
79	78	pintuanrule	拼团列表		promotion/pintuan/pintuanrule/index	promotion/pintuan/pintuanrule/list	0	1	promotion:pintuan:pintuanrule:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:22:51
80	78	pintuanrecord	拼团记录		promotion/pintuan/pintuanrecord/index	promotion/pintuan/pintuanrecord/list	0	10	promotion:pintuan:pintuanrecord:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:22:54
81	77	promotion	全局促销列表		promotion/promotion/index	promotion/promotion/list	0	1	promotion:promotion:index	\N	\N	f	f	2020-03-21 01:07:13	\N
82	77	group	团购（秒杀）列表		promotion/group/index	promotion/group/list	0	10	promotion:group:index	\N	\N	f	f	2020-03-21 01:07:13	\N
83	77	coupon	优惠券列表		promotion/coupon/index	promotion/coupon/list	0	5	promotion:coupon:index	\N	\N	f	f	2020-03-21 01:07:13	\N
84	717	reports	报表统计	layui-icon-rmb			0	80		\N	\N	f	f	2020-03-21 01:07:13	\N
85	84	order	订单销量		content/reports/order		0	1	reports:order:index	\N	\N	f	f	2020-03-21 01:07:13	\N
86	84	payments	财务收款		content/reports/payments		0	20	reports:payments:index	\N	\N	f	f	2020-03-21 01:07:13	\N
87	84	goods	商品销量		content/reports/goods		0	30	reports:goods:index	\N	\N	f	f	2020-03-21 01:07:13	\N
88	84	goodscollection	用户收藏		content/reports/goodscollection		0	40	reports:goodscollection:index	\N	\N	f	f	2020-03-21 01:07:13	\N
89	0	financial	财务管理	layui-icon-rmb			0	35		\N	\N	f	f	2020-07-17 01:08:12	2020-08-29 02:14:20
90	89	payments	支付方式列表		financial/payments/index	financial/payments/list	0	10	financial:payments:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:23:14
91	89	billpayments	支付单列表		financial/billpayments/index	financial/billpayments/list	0	20	financial:billpayments:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:23:17
92	89	usertocash	用户提现记录		financial/usertocash/index	financial/usertocash/list	0	30	financial:usertocash:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:23:20
93	89	billrefund	退款单列表		financial/billrefund/index	financial/billrefund/list	0	40	financial:billrefund:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:23:24
94	89	userbalance	账户资金管理		financial/userbalance/index	financial/userbalance/list	0	50	financial:userbalance:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:23:27
95	89	invoice	发票管理		financial/invoice/index	financial/invoice/list	0	60	financial:invoice:index	\N	\N	f	f	2020-07-17 01:08:12	2020-07-17 16:23:31
96	661	messagecenter	商城消息配置		shop/message/messagecenter/index		0	1	message:messagecenter:index	\N	\N	f	f	2020-03-21 01:07:13	\N
97	126	pages	页面设计		shop/pages/index	shop/pages/list	0	2	operation:pages:index	\N	\N	f	f	2020-03-21 01:07:13	\N
99	669	form	表单列表		content/customform/form/index		0	10		\N	\N	f	f	2020-03-21 01:07:13	\N
100	126	area	区域设置		shop/area/index	shop/area/index	0	60	shop:area:index	\N	\N	f	f	2020-03-21 01:07:13	\N
101	111	sysloginrecord	登录日志		system/logs/sysloginrecord/index		0	70	system:loginrecord:index	\N	\N	f	f	2020-03-21 01:07:13	\N
102	0	distribution	分销设置	layui-icon-engine			0	50		\N	\N	f	f	2020-03-21 01:07:13	\N
103	102	grade	分销等级		distribution/grade/index		0	10	distribution:grade:index	\N	\N	f	f	2020-03-21 01:07:13	\N
104	102	distributor	分销商列表		distribution/distributor/index	distribution/distributor/index	0	20	distribution:distributor:index	\N	\N	f	f	2020-03-21 01:07:13	\N
105	102	order	分销订单		distribution/order/index	distribution/order/index	0	30	distribution:order:index	\N	\N	f	f	2020-07-29 01:59:17	\N
106	661	wechatappletsmessage	小程序订阅消息		shop/message/wechatappletsmessage/index	shop/message/wechatappletsmessage/index	0	20	shop:message:wechatappletsmessage:index	\N	\N	f	f	2020-03-21 01:07:13	\N
107	111	sysnlogrecords	全局日志		system/logs/sysnlogrecords/index		0	175	sys:sysnlogrecords:index	\N	\N	f	f	2020-03-21 01:07:13	\N
108	111	systasklog	定时任务		system/logs/systasklog/index		0	300	logs:systasklog:index	\N	\N	f	f	2020-03-21 01:07:13	\N
110	51	servicegoods	服务商品列表		good/servicegoods/index	good/servicegoods/index	0	5	good/servicegoods/index	\N	\N	f	f	2020-03-21 01:07:13	\N
111	43	logs	日志管理	layui-icon-date			0	200		\N	\N	f	f	2020-03-21 01:07:13	\N
125	126	servicedescription	商城服务说明		shop/servicedescription/index		0	25		\N	\N	f	f	2020-03-21 01:07:13	\N
126	0	shop	商城设置	layui-icon-website			0	95		\N	\N	f	f	2020-03-21 01:07:13	\N
416	83	GetPageList	获取列表	\N	\N	/Api/CoreCmsPromotion/GetPageList	1	0	CoreCmsPromotion:GetPageList	\N	\N	f	f	2021-04-11 04:24:52	\N
417	83	GetIndex	首页数据	\N	\N	/Api/CoreCmsPromotion/GetIndex	1	1	CoreCmsPromotion:GetIndex	\N	\N	f	f	2021-04-11 04:24:52	\N
418	83	GetCreate	创建数据	\N	\N	/Api/CoreCmsPromotion/GetCreate	1	2	CoreCmsPromotion:GetCreate	\N	\N	f	f	2021-04-11 04:24:52	\N
419	83	DoCreate	创建提交	\N	\N	/Api/CoreCmsPromotion/DoCreate	1	3	CoreCmsPromotion:DoCreate	\N	\N	f	f	2021-04-11 04:24:52	\N
420	83	GetEdit	编辑数据	\N	\N	/Api/CoreCmsPromotion/GetEdit	1	4	CoreCmsPromotion:GetEdit	\N	\N	f	f	2021-04-11 04:24:52	\N
421	83	DoEdit	编辑提交	\N	\N	/Api/CoreCmsPromotion/DoEdit	1	5	CoreCmsPromotion:DoEdit	\N	\N	f	f	2021-04-11 04:24:52	\N
422	83	DoDelete	单选删除	\N	\N	/Api/CoreCmsPromotion/DoDelete	1	6	CoreCmsPromotion:DoDelete	\N	\N	f	f	2021-04-11 04:24:52	\N
423	83	DoSetisExclusive	设置是否排他	\N	\N	/Api/CoreCmsPromotion/DoSetisExclusive	1	7	CoreCmsPromotion:DoSetisExclusive	\N	\N	f	f	2021-04-11 04:24:52	\N
424	83	DoSetisEnable	设置是否开启	\N	\N	/Api/CoreCmsPromotion/DoSetisEnable	1	8	CoreCmsPromotion:DoSetisEnable	\N	\N	f	f	2021-04-11 04:24:52	\N
425	83	GetConditionCreate	添加促销条件	\N	\N	/Api/CoreCmsPromotion/GetConditionCreate	1	9	CoreCmsPromotion:GetConditionCreate	\N	\N	f	f	2021-04-11 04:24:52	\N
426	83	DoConditionCreate	添加促销条件提交	\N	\N	/Api/CoreCmsPromotion/DoConditionCreate	1	10	CoreCmsPromotion:DoConditionCreate	\N	\N	f	f	2021-04-11 04:24:52	\N
427	83	GetConditionList	获取促销条件	\N	\N	/Api/CoreCmsPromotion/GetConditionList	1	11	CoreCmsPromotion:GetConditionList	\N	\N	f	f	2021-04-11 04:24:52	\N
428	83	DoConditionDelete	删除促销条件	\N	\N	/Api/CoreCmsPromotion/DoConditionDelete	1	12	CoreCmsPromotion:DoConditionDelete	\N	\N	f	f	2021-04-11 04:24:52	\N
429	83	GetConditionEdit	编辑促销数据	\N	\N	/Api/CoreCmsPromotion/GetConditionEdit	1	13	CoreCmsPromotion:GetConditionEdit	\N	\N	f	f	2021-04-11 04:24:52	\N
430	83	DoConditionEdit	编辑促销提交	\N	\N	/Api/CoreCmsPromotion/DoConditionEdit	1	14	CoreCmsPromotion:DoConditionEdit	\N	\N	f	f	2021-04-11 04:24:52	\N
431	83	GetResultList	获取促销结果列表	\N	\N	/Api/CoreCmsPromotion/GetResultList	1	15	CoreCmsPromotion:GetResultList	\N	\N	f	f	2021-04-11 04:24:52	\N
432	83	GetResultCreate	添加促销结果	\N	\N	/Api/CoreCmsPromotion/GetResultCreate	1	16	CoreCmsPromotion:GetResultCreate	\N	\N	f	f	2021-04-11 04:24:52	\N
433	83	DoResultCreate	创建促销结果提交	\N	\N	/Api/CoreCmsPromotion/DoResultCreate	1	17	CoreCmsPromotion:DoResultCreate	\N	\N	f	f	2021-04-11 04:24:52	\N
434	83	GetResultEdit	编辑促销结果	\N	\N	/Api/CoreCmsPromotion/GetResultEdit	1	18	CoreCmsPromotion:GetResultEdit	\N	\N	f	f	2021-04-11 04:24:52	\N
435	83	DoResultEdit	编辑促销结果提交	\N	\N	/Api/CoreCmsPromotion/DoResultEdit	1	19	CoreCmsPromotion:DoResultEdit	\N	\N	f	f	2021-04-11 04:24:52	\N
436	83	DoResultDelete	单选促销结果删除	\N	\N	/Api/CoreCmsPromotion/DoResultDelete	1	20	CoreCmsPromotion:DoResultDelete	\N	\N	f	f	2021-04-11 04:24:52	\N
437	83	GetCouponPageList	获取优惠券码列表	\N	\N	/Api/CoreCmsPromotion/GetCouponPageList	1	21	CoreCmsPromotion:GetCouponPageList	\N	\N	f	f	2021-04-11 04:24:52	\N
438	83	GetCouponIndex	优惠券码首页数据	\N	\N	/Api/CoreCmsPromotion/GetCouponIndex	1	22	CoreCmsPromotion:GetCouponIndex	\N	\N	f	f	2021-04-11 04:24:52	\N
439	83	DoSetCouponisUsed	设置是否使用	\N	\N	/Api/CoreCmsPromotion/DoSetCouponisUsed	1	23	CoreCmsPromotion:DoSetCouponisUsed	\N	\N	f	f	2021-04-11 04:24:52	\N
440	83	SelectCouponExportExcel	选择导出	\N	\N	/Api/CoreCmsPromotion/SelectCouponExportExcel	1	24	CoreCmsPromotion:SelectCouponExportExcel	\N	\N	f	f	2021-04-11 04:24:52	\N
441	83	QueryCouponExportExcel	查询导出	\N	\N	/Api/CoreCmsPromotion/QueryCouponExportExcel	1	25	CoreCmsPromotion:QueryCouponExportExcel	\N	\N	f	f	2021-04-11 04:24:52	\N
442	82	GetPageList	获取列表	\N	\N	/Api/CoreCmsPromotion/GetPageList	1	0	CoreCmsPromotion:GetPageList	\N	\N	f	f	2021-04-11 04:24:58	\N
443	82	GetIndex	首页数据	\N	\N	/Api/CoreCmsPromotion/GetIndex	1	1	CoreCmsPromotion:GetIndex	\N	\N	f	f	2021-04-11 04:24:58	\N
444	82	GetCreate	创建数据	\N	\N	/Api/CoreCmsPromotion/GetCreate	1	2	CoreCmsPromotion:GetCreate	\N	\N	f	f	2021-04-11 04:24:58	\N
445	82	DoCreate	创建提交	\N	\N	/Api/CoreCmsPromotion/DoCreate	1	3	CoreCmsPromotion:DoCreate	\N	\N	f	f	2021-04-11 04:24:58	\N
446	82	GetEdit	编辑数据	\N	\N	/Api/CoreCmsPromotion/GetEdit	1	4	CoreCmsPromotion:GetEdit	\N	\N	f	f	2021-04-11 04:24:58	\N
447	82	DoEdit	编辑提交	\N	\N	/Api/CoreCmsPromotion/DoEdit	1	5	CoreCmsPromotion:DoEdit	\N	\N	f	f	2021-04-11 04:24:58	\N
448	82	DoDelete	单选删除	\N	\N	/Api/CoreCmsPromotion/DoDelete	1	6	CoreCmsPromotion:DoDelete	\N	\N	f	f	2021-04-11 04:24:58	\N
449	82	DoSetisExclusive	设置是否排他	\N	\N	/Api/CoreCmsPromotion/DoSetisExclusive	1	7	CoreCmsPromotion:DoSetisExclusive	\N	\N	f	f	2021-04-11 04:24:58	\N
450	82	DoSetisEnable	设置是否开启	\N	\N	/Api/CoreCmsPromotion/DoSetisEnable	1	8	CoreCmsPromotion:DoSetisEnable	\N	\N	f	f	2021-04-11 04:24:58	\N
451	82	GetConditionCreate	添加促销条件	\N	\N	/Api/CoreCmsPromotion/GetConditionCreate	1	9	CoreCmsPromotion:GetConditionCreate	\N	\N	f	f	2021-04-11 04:24:58	\N
452	82	DoConditionCreate	添加促销条件提交	\N	\N	/Api/CoreCmsPromotion/DoConditionCreate	1	10	CoreCmsPromotion:DoConditionCreate	\N	\N	f	f	2021-04-11 04:24:58	\N
453	82	GetConditionList	获取促销条件	\N	\N	/Api/CoreCmsPromotion/GetConditionList	1	11	CoreCmsPromotion:GetConditionList	\N	\N	f	f	2021-04-11 04:24:58	\N
454	82	DoConditionDelete	删除促销条件	\N	\N	/Api/CoreCmsPromotion/DoConditionDelete	1	12	CoreCmsPromotion:DoConditionDelete	\N	\N	f	f	2021-04-11 04:24:58	\N
455	82	GetConditionEdit	编辑促销数据	\N	\N	/Api/CoreCmsPromotion/GetConditionEdit	1	13	CoreCmsPromotion:GetConditionEdit	\N	\N	f	f	2021-04-11 04:24:58	\N
456	82	DoConditionEdit	编辑促销提交	\N	\N	/Api/CoreCmsPromotion/DoConditionEdit	1	14	CoreCmsPromotion:DoConditionEdit	\N	\N	f	f	2021-04-11 04:24:58	\N
457	82	GetResultList	获取促销结果列表	\N	\N	/Api/CoreCmsPromotion/GetResultList	1	15	CoreCmsPromotion:GetResultList	\N	\N	f	f	2021-04-11 04:24:58	\N
458	82	GetResultCreate	添加促销结果	\N	\N	/Api/CoreCmsPromotion/GetResultCreate	1	16	CoreCmsPromotion:GetResultCreate	\N	\N	f	f	2021-04-11 04:24:58	\N
459	82	DoResultCreate	创建促销结果提交	\N	\N	/Api/CoreCmsPromotion/DoResultCreate	1	17	CoreCmsPromotion:DoResultCreate	\N	\N	f	f	2021-04-11 04:24:58	\N
460	82	GetResultEdit	编辑促销结果	\N	\N	/Api/CoreCmsPromotion/GetResultEdit	1	18	CoreCmsPromotion:GetResultEdit	\N	\N	f	f	2021-04-11 04:24:58	\N
461	82	DoResultEdit	编辑促销结果提交	\N	\N	/Api/CoreCmsPromotion/DoResultEdit	1	19	CoreCmsPromotion:DoResultEdit	\N	\N	f	f	2021-04-11 04:24:58	\N
462	82	DoResultDelete	单选促销结果删除	\N	\N	/Api/CoreCmsPromotion/DoResultDelete	1	20	CoreCmsPromotion:DoResultDelete	\N	\N	f	f	2021-04-11 04:24:58	\N
463	82	GetCouponPageList	获取优惠券码列表	\N	\N	/Api/CoreCmsPromotion/GetCouponPageList	1	21	CoreCmsPromotion:GetCouponPageList	\N	\N	f	f	2021-04-11 04:24:58	\N
464	82	GetCouponIndex	优惠券码首页数据	\N	\N	/Api/CoreCmsPromotion/GetCouponIndex	1	22	CoreCmsPromotion:GetCouponIndex	\N	\N	f	f	2021-04-11 04:24:58	\N
465	82	DoSetCouponisUsed	设置是否使用	\N	\N	/Api/CoreCmsPromotion/DoSetCouponisUsed	1	23	CoreCmsPromotion:DoSetCouponisUsed	\N	\N	f	f	2021-04-11 04:24:58	\N
466	82	SelectCouponExportExcel	选择导出	\N	\N	/Api/CoreCmsPromotion/SelectCouponExportExcel	1	24	CoreCmsPromotion:SelectCouponExportExcel	\N	\N	f	f	2021-04-11 04:24:58	\N
467	82	QueryCouponExportExcel	查询导出	\N	\N	/Api/CoreCmsPromotion/QueryCouponExportExcel	1	25	CoreCmsPromotion:QueryCouponExportExcel	\N	\N	f	f	2021-04-11 04:24:58	\N
576	46	GetTables	获取数据表格列表	\N	\N	/Api/CodeGenerator/GetTables	1	0	CodeGenerator:GetTables	\N	\N	f	f	2021-04-11 04:35:49	\N
577	46	CodeGenDown	生成代码	\N	\N	/Api/CodeGenerator/CodeGenDown	1	1	CodeGenerator:CodeGenDown	\N	\N	f	f	2021-04-11 04:35:49	\N
578	46	GetDataBaseTablesToExcel	获取所有表和表名并生成excel	\N	\N	/Api/CodeGenerator/GetDataBaseTablesToExcel	1	2	CodeGenerator:GetDataBaseTablesToExcel	\N	\N	f	f	2021-04-11 04:35:49	\N
599	669	formsubmit	提交列表		content/customform/formsubmit/index		0	1		\N	\N	f	f	2020-03-21 01:07:13	\N
613	717	stock	库存管理	layui-icon-template-1			0	70		\N	\N	f	f	2020-03-21 01:07:13	\N
614	613	products	库存盘点		content/stock/products/index		0	1		\N	\N	f	f	2020-03-21 01:07:13	\N
615	613	stocklog	库存记录		content/stock/stocklog/index		0	10		\N	\N	f	f	2020-03-21 01:07:13	\N
622	613	stocks	出库入库		content/stock/stocks/index		0	1		\N	\N	f	f	2020-03-21 01:07:13	\N
630	0	agent	代理设置	layui-icon-console			0	60		\N	\N	f	f	2020-03-21 01:07:13	\N
631	630	agentGrade	代理等级		agent/agentGrade/index		0	5		\N	\N	f	f	2020-03-21 01:07:13	\N
632	630	agents	代理商列表		agent/agents/index		0	10		\N	\N	f	f	2020-03-21 01:07:13	\N
633	630	agentOrder	代理商订单		agent/agentOrder/index		0	20		\N	\N	f	f	2021-05-04 01:25:15	\N
634	102	setting	分销设置		distribution/setting/index		0	1		\N	\N	f	f	2021-05-05 22:57:51	\N
635	630	setting	代理设置		agent/setting/index		0	1		\N	\N	f	f	2021-05-05 22:58:34	\N
660	630	agentGoods	代理商品池		agent/agentGoods/index		0	1		\N	\N	f	f	2021-05-09 19:48:45	\N
661	126	message	消息配置	layui-icon-email			0	110		\N	\N	f	f	2020-03-21 01:07:13	\N
662	661	smssetting	短信设置		shop/message/smssetting/index		0	40		\N	\N	f	f	2020-03-21 01:07:13	\N
669	717	customform	自定义表单	layui-icon-form			0	3		\N	\N	f	f	2020-03-21 01:07:13	\N
717	0	content	运营管理	layui-icon-chart-screen			0	85		\N	\N	f	f	2020-03-21 01:07:13	\N
719	47	wechatuserinfo	微信用户列表		user/wechatuserinfo/index		0	1		\N	\N	f	f	2021-07-15 14:48:40	\N
724	42	GetPageList	获取列表	\N	\N	/Api/SysUser/GetPageList	1	0	SysUser:GetPageList	\N	\N	f	f	2021-10-11 22:40:11	\N
725	42	GetIndex	首页数据	\N	\N	/Api/SysUser/GetIndex	1	1	SysUser:GetIndex	\N	\N	f	f	2021-10-11 22:40:11	\N
726	42	GetCreate	创建数据	\N	\N	/Api/SysUser/GetCreate	1	2	SysUser:GetCreate	\N	\N	f	f	2021-10-11 22:40:11	\N
727	42	DoCreate	创建提交	\N	\N	/Api/SysUser/DoCreate	1	3	SysUser:DoCreate	\N	\N	f	f	2021-10-11 22:40:11	\N
728	42	GetEdit	编辑数据	\N	\N	/Api/SysUser/GetEdit	1	4	SysUser:GetEdit	\N	\N	f	f	2021-10-11 22:40:11	\N
729	42	DoEdit	编辑提交	\N	\N	/Api/SysUser/DoEdit	1	5	SysUser:DoEdit	\N	\N	f	f	2021-10-11 22:40:11	\N
730	42	DoDelete	单选删除	\N	\N	/Api/SysUser/DoDelete	1	6	SysUser:DoDelete	\N	\N	f	f	2021-10-11 22:40:11	\N
731	42	DoSetState	设置是否锁定,0否,1是	\N	\N	/Api/SysUser/DoSetState	1	7	SysUser:DoSetState	\N	\N	f	f	2021-10-11 22:40:11	\N
732	7	GetPageList	获取列表	\N	\N	/Api/SysRole/GetPageList	1	0	SysRole:GetPageList	\N	\N	f	f	2021-10-11 22:40:28	\N
733	7	GetIndex	首页数据	\N	\N	/Api/SysRole/GetIndex	1	1	SysRole:GetIndex	\N	\N	f	f	2021-10-11 22:40:28	\N
734	7	GetCreate	创建数据	\N	\N	/Api/SysRole/GetCreate	1	2	SysRole:GetCreate	\N	\N	f	f	2021-10-11 22:40:28	\N
735	7	DoCreate	创建提交	\N	\N	/Api/SysRole/DoCreate	1	3	SysRole:DoCreate	\N	\N	f	f	2021-10-11 22:40:28	\N
736	7	GetEdit	编辑数据	\N	\N	/Api/SysRole/GetEdit	1	4	SysRole:GetEdit	\N	\N	f	f	2021-10-11 22:40:28	\N
737	7	DoEdit	编辑提交	\N	\N	/Api/SysRole/DoEdit	1	5	SysRole:DoEdit	\N	\N	f	f	2021-10-11 22:40:28	\N
738	7	DoDelete	单选删除	\N	\N	/Api/SysRole/DoDelete	1	6	SysRole:DoDelete	\N	\N	f	f	2021-10-11 22:40:28	\N
739	7	DoBatchDelete	批量删除	\N	\N	/Api/SysRole/DoBatchDelete	1	7	SysRole:DoBatchDelete	\N	\N	f	f	2021-10-11 22:40:28	\N
740	7	GetRoleSet	获取权限设置	\N	\N	/Api/SysRole/GetRoleSet	1	8	SysRole:GetRoleSet	\N	\N	f	f	2021-10-11 22:40:28	\N
741	7	GetSysMenu	获取菜单	\N	\N	/Api/SysRole/GetSysMenu	1	9	SysRole:GetSysMenu	\N	\N	f	f	2021-10-11 22:40:28	\N
742	7	DoSetSysMenu	设置权限	\N	\N	/Api/SysRole/DoSetSysMenu	1	10	SysRole:DoSetSysMenu	\N	\N	f	f	2021-10-11 22:40:28	\N
743	12	GetPageList	获取列表	\N	\N	/Api/SysMenu/GetPageList	1	0	SysMenu:GetPageList	\N	\N	f	f	2021-10-11 22:40:44	\N
744	12	GetIndex	首页数据	\N	\N	/Api/SysMenu/GetIndex	1	1	SysMenu:GetIndex	\N	\N	f	f	2021-10-11 22:40:44	\N
745	12	GetCreate	创建数据	\N	\N	/Api/SysMenu/GetCreate	1	2	SysMenu:GetCreate	\N	\N	f	f	2021-10-11 22:40:44	\N
746	12	DoCreate	创建提交	\N	\N	/Api/SysMenu/DoCreate	1	3	SysMenu:DoCreate	\N	\N	f	f	2021-10-11 22:40:44	\N
747	12	GetEdit	编辑数据	\N	\N	/Api/SysMenu/GetEdit	1	4	SysMenu:GetEdit	\N	\N	f	f	2021-10-11 22:40:44	\N
748	12	DoEdit	编辑提交	\N	\N	/Api/SysMenu/DoEdit	1	5	SysMenu:DoEdit	\N	\N	f	f	2021-10-11 22:40:44	\N
749	12	DoDelete	单选删除	\N	\N	/Api/SysMenu/DoDelete	1	6	SysMenu:DoDelete	\N	\N	f	f	2021-10-11 22:40:44	\N
750	12	ImportButtons	单选删除	\N	\N	/Api/SysMenu/ImportButtons	1	7	SysMenu:ImportButtons	\N	\N	f	f	2021-10-11 22:40:44	\N
751	719	GetPageList	获取列表	\N	\N	/Api/CoreCmsUserWeChatInfo/GetPageList	1	0	CoreCmsUserWeChatInfo:GetPageList	\N	\N	f	f	2021-10-11 22:41:07	\N
752	719	GetIndex	首页数据	\N	\N	/Api/CoreCmsUserWeChatInfo/GetIndex	1	1	CoreCmsUserWeChatInfo:GetIndex	\N	\N	f	f	2021-10-11 22:41:07	\N
753	719	GetDetails	预览数据	\N	\N	/Api/CoreCmsUserWeChatInfo/GetDetails	1	2	CoreCmsUserWeChatInfo:GetDetails	\N	\N	f	f	2021-10-11 22:41:07	\N
754	48	GetPageList	获取列表	\N	\N	/Api/CoreCmsUser/GetPageList	1	0	CoreCmsUser:GetPageList	\N	\N	f	f	2021-10-11 22:41:20	\N
755	48	GetIndex	首页数据	\N	\N	/Api/CoreCmsUser/GetIndex	1	1	CoreCmsUser:GetIndex	\N	\N	f	f	2021-10-11 22:41:20	\N
756	48	GetCreate	创建数据	\N	\N	/Api/CoreCmsUser/GetCreate	1	2	CoreCmsUser:GetCreate	\N	\N	f	f	2021-10-11 22:41:20	\N
757	48	DoCreate	创建提交	\N	\N	/Api/CoreCmsUser/DoCreate	1	3	CoreCmsUser:DoCreate	\N	\N	f	f	2021-10-11 22:41:20	\N
758	48	GetEdit	编辑数据	\N	\N	/Api/CoreCmsUser/GetEdit	1	4	CoreCmsUser:GetEdit	\N	\N	f	f	2021-10-11 22:41:20	\N
759	48	DoEdit	编辑提交	\N	\N	/Api/CoreCmsUser/DoEdit	1	5	CoreCmsUser:DoEdit	\N	\N	f	f	2021-10-11 22:41:20	\N
760	48	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsUser/SelectExportExcel	1	6	CoreCmsUser:SelectExportExcel	\N	\N	f	f	2021-10-11 22:41:20	\N
761	48	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsUser/QueryExportExcel	1	7	CoreCmsUser:QueryExportExcel	\N	\N	f	f	2021-10-11 22:41:20	\N
762	48	GetEditBalance	修改余额	\N	\N	/Api/CoreCmsUser/GetEditBalance	1	8	CoreCmsUser:GetEditBalance	\N	\N	f	f	2021-10-11 22:41:20	\N
763	48	DoEditBalance	修改余额提交	\N	\N	/Api/CoreCmsUser/DoEditBalance	1	9	CoreCmsUser:DoEditBalance	\N	\N	f	f	2021-10-11 22:41:20	\N
764	48	GetEditPoint	修改积分	\N	\N	/Api/CoreCmsUser/GetEditPoint	1	10	CoreCmsUser:GetEditPoint	\N	\N	f	f	2021-10-11 22:41:20	\N
765	48	DoEditPoint	修改积分提交	\N	\N	/Api/CoreCmsUser/DoEditPoint	1	11	CoreCmsUser:DoEditPoint	\N	\N	f	f	2021-10-11 22:41:20	\N
766	48	GetUserBalancePageList	余额详情列表	\N	\N	/Api/CoreCmsUser/GetUserBalancePageList	1	12	CoreCmsUser:GetUserBalancePageList	\N	\N	f	f	2021-10-11 22:41:20	\N
767	48	GetDetailsBalanceLog	余额详情	\N	\N	/Api/CoreCmsUser/GetDetailsBalanceLog	1	13	CoreCmsUser:GetDetailsBalanceLog	\N	\N	f	f	2021-10-11 22:41:20	\N
768	48	GetUserPointLogPageList	获取列表	\N	\N	/Api/CoreCmsUser/GetUserPointLogPageList	1	14	CoreCmsUser:GetUserPointLogPageList	\N	\N	f	f	2021-10-11 22:41:20	\N
769	48	GetDetailsPointLog	余额详情	\N	\N	/Api/CoreCmsUser/GetDetailsPointLog	1	15	CoreCmsUser:GetDetailsPointLog	\N	\N	f	f	2021-10-11 22:41:20	\N
770	48	DoSetisDelete	设置删除标志	\N	\N	/Api/CoreCmsUser/DoSetisDelete	1	16	CoreCmsUser:DoSetisDelete	\N	\N	f	f	2021-10-11 22:41:20	\N
771	49	GetPageList	获取列表	\N	\N	/Api/CoreCmsUserGrade/GetPageList	1	0	CoreCmsUserGrade:GetPageList	\N	\N	f	f	2021-10-11 22:41:29	\N
772	49	GetIndex	首页数据	\N	\N	/Api/CoreCmsUserGrade/GetIndex	1	1	CoreCmsUserGrade:GetIndex	\N	\N	f	f	2021-10-11 22:41:29	\N
773	49	GetCreate	创建数据	\N	\N	/Api/CoreCmsUserGrade/GetCreate	1	2	CoreCmsUserGrade:GetCreate	\N	\N	f	f	2021-10-11 22:41:29	\N
774	49	DoCreate	创建提交	\N	\N	/Api/CoreCmsUserGrade/DoCreate	1	3	CoreCmsUserGrade:DoCreate	\N	\N	f	f	2021-10-11 22:41:29	\N
775	49	GetEdit	编辑数据	\N	\N	/Api/CoreCmsUserGrade/GetEdit	1	4	CoreCmsUserGrade:GetEdit	\N	\N	f	f	2021-10-11 22:41:29	\N
776	49	DoEdit	编辑提交	\N	\N	/Api/CoreCmsUserGrade/DoEdit	1	5	CoreCmsUserGrade:DoEdit	\N	\N	f	f	2021-10-11 22:41:29	\N
777	49	DoDelete	单选删除	\N	\N	/Api/CoreCmsUserGrade/DoDelete	1	6	CoreCmsUserGrade:DoDelete	\N	\N	f	f	2021-10-11 22:41:29	\N
778	49	GetDetails	预览数据	\N	\N	/Api/CoreCmsUserGrade/GetDetails	1	7	CoreCmsUserGrade:GetDetails	\N	\N	f	f	2021-10-11 22:41:29	\N
779	49	DoSetisDefault	设置是否默认	\N	\N	/Api/CoreCmsUserGrade/DoSetisDefault	1	8	CoreCmsUserGrade:DoSetisDefault	\N	\N	f	f	2021-10-11 22:41:29	\N
780	101	GetPageList	获取列表	\N	\N	/Api/SysLoginRecord/GetPageList	1	0	SysLoginRecord:GetPageList	\N	\N	f	f	2021-10-11 22:42:25	\N
781	101	GetIndex	首页数据	\N	\N	/Api/SysLoginRecord/GetIndex	1	1	SysLoginRecord:GetIndex	\N	\N	f	f	2021-10-11 22:42:25	\N
782	101	GetDetails	预览数据	\N	\N	/Api/SysLoginRecord/GetDetails	1	2	SysLoginRecord:GetDetails	\N	\N	f	f	2021-10-11 22:42:25	\N
783	101	SelectExportExcel	选择导出	\N	\N	/Api/SysLoginRecord/SelectExportExcel	1	3	SysLoginRecord:SelectExportExcel	\N	\N	f	f	2021-10-11 22:42:25	\N
784	101	QueryExportExcel	查询导出	\N	\N	/Api/SysLoginRecord/QueryExportExcel	1	4	SysLoginRecord:QueryExportExcel	\N	\N	f	f	2021-10-11 22:42:25	\N
785	101	DoBatchDelete	批量删除	\N	\N	/Api/SysLoginRecord/DoBatchDelete	1	5	SysLoginRecord:DoBatchDelete	\N	\N	f	f	2021-10-11 22:42:25	\N
786	101	DoWipeData	清空数据	\N	\N	/Api/SysLoginRecord/DoWipeData	1	6	SysLoginRecord:DoWipeData	\N	\N	f	f	2021-10-11 22:42:25	\N
787	107	GetPageList	获取列表	\N	\N	/Api/SysNLogRecords/GetPageList	1	0	SysNLogRecords:GetPageList	\N	\N	f	f	2021-10-11 22:42:37	\N
788	107	GetIndex	首页数据	\N	\N	/Api/SysNLogRecords/GetIndex	1	1	SysNLogRecords:GetIndex	\N	\N	f	f	2021-10-11 22:42:37	\N
789	107	DoDelete	单选删除	\N	\N	/Api/SysNLogRecords/DoDelete	1	2	SysNLogRecords:DoDelete	\N	\N	f	f	2021-10-11 22:42:37	\N
790	107	DoBatchDelete	批量删除	\N	\N	/Api/SysNLogRecords/DoBatchDelete	1	3	SysNLogRecords:DoBatchDelete	\N	\N	f	f	2021-10-11 22:42:37	\N
791	107	GetDetails	预览数据	\N	\N	/Api/SysNLogRecords/GetDetails	1	4	SysNLogRecords:GetDetails	\N	\N	f	f	2021-10-11 22:42:37	\N
792	107	SelectExportExcel	选择导出	\N	\N	/Api/SysNLogRecords/SelectExportExcel	1	5	SysNLogRecords:SelectExportExcel	\N	\N	f	f	2021-10-11 22:42:37	\N
793	107	QueryExportExcel	查询导出	\N	\N	/Api/SysNLogRecords/QueryExportExcel	1	6	SysNLogRecords:QueryExportExcel	\N	\N	f	f	2021-10-11 22:42:37	\N
794	107	DoWipeData	清空数据	\N	\N	/Api/SysNLogRecords/DoWipeData	1	7	SysNLogRecords:DoWipeData	\N	\N	f	f	2021-10-11 22:42:37	\N
795	108	GetPageList	获取列表	\N	\N	/Api/SysTaskLog/GetPageList	1	0	SysTaskLog:GetPageList	\N	\N	f	f	2021-10-11 22:42:48	\N
796	108	GetIndex	首页数据	\N	\N	/Api/SysTaskLog/GetIndex	1	1	SysTaskLog:GetIndex	\N	\N	f	f	2021-10-11 22:42:48	\N
797	108	DoDelete	单选删除	\N	\N	/Api/SysTaskLog/DoDelete	1	2	SysTaskLog:DoDelete	\N	\N	f	f	2021-10-11 22:42:48	\N
798	108	DoBatchDelete	批量删除	\N	\N	/Api/SysTaskLog/DoBatchDelete	1	3	SysTaskLog:DoBatchDelete	\N	\N	f	f	2021-10-11 22:42:48	\N
799	108	GetDetails	预览数据	\N	\N	/Api/SysTaskLog/GetDetails	1	4	SysTaskLog:GetDetails	\N	\N	f	f	2021-10-11 22:42:48	\N
800	108	SelectExportExcel	选择导出	\N	\N	/Api/SysTaskLog/SelectExportExcel	1	5	SysTaskLog:SelectExportExcel	\N	\N	f	f	2021-10-11 22:42:48	\N
801	108	QueryExportExcel	查询导出	\N	\N	/Api/SysTaskLog/QueryExportExcel	1	6	SysTaskLog:QueryExportExcel	\N	\N	f	f	2021-10-11 22:42:48	\N
802	108	DoSetisSuccess	设置是否完成	\N	\N	/Api/SysTaskLog/DoSetisSuccess	1	7	SysTaskLog:DoSetisSuccess	\N	\N	f	f	2021-10-11 22:42:48	\N
803	108	DoWipeData	清空数据	\N	\N	/Api/SysTaskLog/DoWipeData	1	8	SysTaskLog:DoWipeData	\N	\N	f	f	2021-10-11 22:42:48	\N
804	60	GetPageList	获取列表	\N	\N	/Api/CoreCmsOrder/GetPageList	1	0	CoreCmsOrder:GetPageList	\N	\N	f	f	2021-10-11 22:44:04	\N
805	60	GetIndex	首页数据	\N	\N	/Api/CoreCmsOrder/GetIndex	1	1	CoreCmsOrder:GetIndex	\N	\N	f	f	2021-10-11 22:44:04	\N
806	60	GetEdit	编辑数据	\N	\N	/Api/CoreCmsOrder/GetEdit	1	2	CoreCmsOrder:GetEdit	\N	\N	f	f	2021-10-11 22:44:04	\N
807	60	DoEdit	编辑提交	\N	\N	/Api/CoreCmsOrder/DoEdit	1	3	CoreCmsOrder:DoEdit	\N	\N	f	f	2021-10-11 22:44:04	\N
808	60	GetShip	发货	\N	\N	/Api/CoreCmsOrder/GetShip	1	4	CoreCmsOrder:GetShip	\N	\N	f	f	2021-10-11 22:44:04	\N
809	60	DoShip	发货提交	\N	\N	/Api/CoreCmsOrder/DoShip	1	5	CoreCmsOrder:DoShip	\N	\N	f	f	2021-10-11 22:44:04	\N
810	60	DoSecondsShip	秒发货	\N	\N	/Api/CoreCmsOrder/DoSecondsShip	1	6	CoreCmsOrder:DoSecondsShip	\N	\N	f	f	2021-10-11 22:44:04	\N
811	60	GetPay	支付	\N	\N	/Api/CoreCmsOrder/GetPay	1	7	CoreCmsOrder:GetPay	\N	\N	f	f	2021-10-11 22:44:04	\N
812	60	DoToPay	提交支付	\N	\N	/Api/CoreCmsOrder/DoToPay	1	8	CoreCmsOrder:DoToPay	\N	\N	f	f	2021-10-11 22:44:04	\N
813	60	DoDelete	单选删除	\N	\N	/Api/CoreCmsOrder/DoDelete	1	9	CoreCmsOrder:DoDelete	\N	\N	f	f	2021-10-11 22:44:04	\N
814	60	DoRestore	还原订单	\N	\N	/Api/CoreCmsOrder/DoRestore	1	10	CoreCmsOrder:DoRestore	\N	\N	f	f	2021-10-11 22:44:04	\N
815	60	GetDoHaveAfterSale	判断是否存在售后	\N	\N	/Api/CoreCmsOrder/GetDoHaveAfterSale	1	11	CoreCmsOrder:GetDoHaveAfterSale	\N	\N	f	f	2021-10-11 22:44:04	\N
816	60	DoComplete	完成订单	\N	\N	/Api/CoreCmsOrder/DoComplete	1	12	CoreCmsOrder:DoComplete	\N	\N	f	f	2021-10-11 22:44:04	\N
817	60	GetDetails	预览数据	\N	\N	/Api/CoreCmsOrder/GetDetails	1	13	CoreCmsOrder:GetDetails	\N	\N	f	f	2021-10-11 22:44:04	\N
818	60	GetPrintTpl	订单打印	\N	\N	/Api/CoreCmsOrder/GetPrintTpl	1	14	CoreCmsOrder:GetPrintTpl	\N	\N	f	f	2021-10-11 22:44:04	\N
819	60	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsOrder/SelectExportExcel	1	15	CoreCmsOrder:SelectExportExcel	\N	\N	f	f	2021-10-11 22:44:04	\N
820	60	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsOrder/QueryExportExcel	1	16	CoreCmsOrder:QueryExportExcel	\N	\N	f	f	2021-10-11 22:44:04	\N
821	60	DoSettaxType	设置是否开发票	\N	\N	/Api/CoreCmsOrder/DoSettaxType	1	17	CoreCmsOrder:DoSettaxType	\N	\N	f	f	2021-10-11 22:44:04	\N
822	60	DoSetisComment	设置是否评论	\N	\N	/Api/CoreCmsOrder/DoSetisComment	1	18	CoreCmsOrder:DoSetisComment	\N	\N	f	f	2021-10-11 22:44:04	\N
823	60	DoUpdateMark	更新备注	\N	\N	/Api/CoreCmsOrder/DoUpdateMark	1	19	CoreCmsOrder:DoUpdateMark	\N	\N	f	f	2021-10-11 22:44:04	\N
824	60	CancelOrder	取消订单	\N	\N	/Api/CoreCmsOrder/CancelOrder	1	20	CoreCmsOrder:CancelOrder	\N	\N	f	f	2021-10-11 22:44:04	\N
825	60	DeleteOrder	批量删除订单	\N	\N	/Api/CoreCmsOrder/DeleteOrder	1	21	CoreCmsOrder:DeleteOrder	\N	\N	f	f	2021-10-11 22:44:04	\N
826	60	RefreshDelivery	批量删除订单	\N	\N	/Api/CoreCmsOrder/RefreshDelivery	1	22	CoreCmsOrder:RefreshDelivery	\N	\N	f	f	2021-10-11 22:44:04	\N
827	60	GetOrderLogistics	预览快递进度	\N	\N	/Api/CoreCmsOrder/GetOrderLogistics	1	23	CoreCmsOrder:GetOrderLogistics	\N	\N	f	f	2021-10-11 22:44:04	\N
828	60	GetTcOrder	获取交易组件订单信息	\N	\N	/Api/CoreCmsOrder/GetTcOrder	1	24	CoreCmsOrder:GetTcOrder	\N	\N	f	f	2021-10-11 22:44:04	\N
829	66	GetPageList	获取列表	\N	\N	/Api/CoreCmsBillDelivery/GetPageList	1	0	CoreCmsBillDelivery:GetPageList	\N	\N	f	f	2021-10-11 22:44:14	\N
830	66	GetIndex	首页数据	\N	\N	/Api/CoreCmsBillDelivery/GetIndex	1	1	CoreCmsBillDelivery:GetIndex	\N	\N	f	f	2021-10-11 22:44:14	\N
831	66	GetEdit	编辑数据	\N	\N	/Api/CoreCmsBillDelivery/GetEdit	1	2	CoreCmsBillDelivery:GetEdit	\N	\N	f	f	2021-10-11 22:44:14	\N
832	66	DoEdit	编辑提交	\N	\N	/Api/CoreCmsBillDelivery/DoEdit	1	3	CoreCmsBillDelivery:DoEdit	\N	\N	f	f	2021-10-11 22:44:14	\N
833	66	GetDetails	预览数据	\N	\N	/Api/CoreCmsBillDelivery/GetDetails	1	4	CoreCmsBillDelivery:GetDetails	\N	\N	f	f	2021-10-11 22:44:14	\N
834	66	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsBillDelivery/SelectExportExcel	1	5	CoreCmsBillDelivery:SelectExportExcel	\N	\N	f	f	2021-10-11 22:44:14	\N
835	66	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsBillDelivery/QueryExportExcel	1	6	CoreCmsBillDelivery:QueryExportExcel	\N	\N	f	f	2021-10-11 22:44:14	\N
836	65	GetPageList	获取列表	\N	\N	/Api/CoreCmsBillLading/GetPageList	1	0	CoreCmsBillLading:GetPageList	\N	\N	f	f	2021-10-11 22:44:22	\N
837	65	GetIndex	首页数据	\N	\N	/Api/CoreCmsBillLading/GetIndex	1	1	CoreCmsBillLading:GetIndex	\N	\N	f	f	2021-10-11 22:44:22	\N
838	65	GetEdit	编辑数据	\N	\N	/Api/CoreCmsBillLading/GetEdit	1	2	CoreCmsBillLading:GetEdit	\N	\N	f	f	2021-10-11 22:44:22	\N
839	65	DoEdit	编辑提交	\N	\N	/Api/CoreCmsBillLading/DoEdit	1	3	CoreCmsBillLading:DoEdit	\N	\N	f	f	2021-10-11 22:44:22	\N
840	65	DoDelete	单选删除	\N	\N	/Api/CoreCmsBillLading/DoDelete	1	4	CoreCmsBillLading:DoDelete	\N	\N	f	f	2021-10-11 22:44:22	\N
841	65	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsBillLading/SelectExportExcel	1	5	CoreCmsBillLading:SelectExportExcel	\N	\N	f	f	2021-10-11 22:44:22	\N
842	65	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsBillLading/QueryExportExcel	1	6	CoreCmsBillLading:QueryExportExcel	\N	\N	f	f	2021-10-11 22:44:22	\N
843	65	LadingOperating	核销数据	\N	\N	/Api/CoreCmsBillLading/LadingOperating	1	7	CoreCmsBillLading:LadingOperating	\N	\N	f	f	2021-10-11 22:44:22	\N
844	65	BatchLadingOperating	核销数据	\N	\N	/Api/CoreCmsBillLading/BatchLadingOperating	1	8	CoreCmsBillLading:BatchLadingOperating	\N	\N	f	f	2021-10-11 22:44:22	\N
845	67	GetPageList	获取列表	\N	\N	/Api/CoreCmsBillAftersales/GetPageList	1	0	CoreCmsBillAftersales:GetPageList	\N	\N	f	f	2021-10-11 22:44:37	\N
846	67	GetIndex	首页数据	\N	\N	/Api/CoreCmsBillAftersales/GetIndex	1	1	CoreCmsBillAftersales:GetIndex	\N	\N	f	f	2021-10-11 22:44:37	\N
847	67	GetEdit	审核数据	\N	\N	/Api/CoreCmsBillAftersales/GetEdit	1	2	CoreCmsBillAftersales:GetEdit	\N	\N	f	f	2021-10-11 22:44:37	\N
848	67	DoEdit	审核提交	\N	\N	/Api/CoreCmsBillAftersales/DoEdit	1	3	CoreCmsBillAftersales:DoEdit	\N	\N	f	f	2021-10-11 22:44:37	\N
849	67	GetDetails	预览数据	\N	\N	/Api/CoreCmsBillAftersales/GetDetails	1	4	CoreCmsBillAftersales:GetDetails	\N	\N	f	f	2021-10-11 22:44:37	\N
850	67	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsBillAftersales/SelectExportExcel	1	5	CoreCmsBillAftersales:SelectExportExcel	\N	\N	f	f	2021-10-11 22:44:37	\N
851	67	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsBillAftersales/QueryExportExcel	1	6	CoreCmsBillAftersales:QueryExportExcel	\N	\N	f	f	2021-10-11 22:44:37	\N
852	76	GetPageList	获取列表	\N	\N	/Api/CoreCmsBillReship/GetPageList	1	0	CoreCmsBillReship:GetPageList	\N	\N	f	f	2021-10-11 22:44:48	\N
853	76	GetIndex	首页数据	\N	\N	/Api/CoreCmsBillReship/GetIndex	1	1	CoreCmsBillReship:GetIndex	\N	\N	f	f	2021-10-11 22:44:48	\N
854	76	DoAudit	确认收货	\N	\N	/Api/CoreCmsBillReship/DoAudit	1	2	CoreCmsBillReship:DoAudit	\N	\N	f	f	2021-10-11 22:44:48	\N
855	76	GetDetails	预览数据	\N	\N	/Api/CoreCmsBillReship/GetDetails	1	3	CoreCmsBillReship:GetDetails	\N	\N	f	f	2021-10-11 22:44:48	\N
856	76	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsBillReship/SelectExportExcel	1	4	CoreCmsBillReship:SelectExportExcel	\N	\N	f	f	2021-10-11 22:44:48	\N
857	76	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsBillReship/QueryExportExcel	1	5	CoreCmsBillReship:QueryExportExcel	\N	\N	f	f	2021-10-11 22:44:48	\N
883	110	GetPageList	获取列表	\N	\N	/Api/CoreCmsServices/GetPageList	1	0	CoreCmsServices:GetPageList	\N	\N	f	f	2021-10-11 22:45:34	\N
884	110	GetIndex	首页数据	\N	\N	/Api/CoreCmsServices/GetIndex	1	1	CoreCmsServices:GetIndex	\N	\N	f	f	2021-10-11 22:45:34	\N
885	110	GetCreate	创建数据	\N	\N	/Api/CoreCmsServices/GetCreate	1	2	CoreCmsServices:GetCreate	\N	\N	f	f	2021-10-11 22:45:34	\N
886	110	DoCreate	创建提交	\N	\N	/Api/CoreCmsServices/DoCreate	1	3	CoreCmsServices:DoCreate	\N	\N	f	f	2021-10-11 22:45:34	\N
887	110	GetEdit	编辑数据	\N	\N	/Api/CoreCmsServices/GetEdit	1	4	CoreCmsServices:GetEdit	\N	\N	f	f	2021-10-11 22:45:34	\N
888	110	DoEdit	编辑提交	\N	\N	/Api/CoreCmsServices/DoEdit	1	5	CoreCmsServices:DoEdit	\N	\N	f	f	2021-10-11 22:45:34	\N
889	110	DoDelete	单选删除	\N	\N	/Api/CoreCmsServices/DoDelete	1	6	CoreCmsServices:DoDelete	\N	\N	f	f	2021-10-11 22:45:34	\N
890	110	GetDetails	预览数据	\N	\N	/Api/CoreCmsServices/GetDetails	1	7	CoreCmsServices:GetDetails	\N	\N	f	f	2021-10-11 22:45:34	\N
891	110	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsServices/SelectExportExcel	1	8	CoreCmsServices:SelectExportExcel	\N	\N	f	f	2021-10-11 22:45:34	\N
892	110	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsServices/QueryExportExcel	1	9	CoreCmsServices:QueryExportExcel	\N	\N	f	f	2021-10-11 22:45:34	\N
893	53	GetPageList	获取列表	\N	\N	/Api/CoreCmsGoodsCategory/GetPageList	1	0	CoreCmsGoodsCategory:GetPageList	\N	\N	f	f	2021-10-11 22:45:41	\N
894	53	GetIndex	首页数据	\N	\N	/Api/CoreCmsGoodsCategory/GetIndex	1	1	CoreCmsGoodsCategory:GetIndex	\N	\N	f	f	2021-10-11 22:45:41	\N
895	53	GetCreate	创建数据	\N	\N	/Api/CoreCmsGoodsCategory/GetCreate	1	2	CoreCmsGoodsCategory:GetCreate	\N	\N	f	f	2021-10-11 22:45:41	\N
896	53	DoCreate	创建提交	\N	\N	/Api/CoreCmsGoodsCategory/DoCreate	1	3	CoreCmsGoodsCategory:DoCreate	\N	\N	f	f	2021-10-11 22:45:41	\N
897	53	GetEdit	编辑数据	\N	\N	/Api/CoreCmsGoodsCategory/GetEdit	1	4	CoreCmsGoodsCategory:GetEdit	\N	\N	f	f	2021-10-11 22:45:41	\N
898	53	DoEdit	编辑提交	\N	\N	/Api/CoreCmsGoodsCategory/DoEdit	1	5	CoreCmsGoodsCategory:DoEdit	\N	\N	f	f	2021-10-11 22:45:41	\N
899	53	DoDelete	单选删除	\N	\N	/Api/CoreCmsGoodsCategory/DoDelete	1	6	CoreCmsGoodsCategory:DoDelete	\N	\N	f	f	2021-10-11 22:45:41	\N
900	53	DoSetisShow	设置是否显示	\N	\N	/Api/CoreCmsGoodsCategory/DoSetisShow	1	7	CoreCmsGoodsCategory:DoSetisShow	\N	\N	f	f	2021-10-11 22:45:41	\N
901	54	GetPageList	获取列表	\N	\N	/Api/CoreCmsBrand/GetPageList	1	0	CoreCmsBrand:GetPageList	\N	\N	f	f	2021-10-11 22:46:06	\N
902	54	GetIndex	首页数据	\N	\N	/Api/CoreCmsBrand/GetIndex	1	1	CoreCmsBrand:GetIndex	\N	\N	f	f	2021-10-11 22:46:06	\N
903	54	GetCreate	创建数据	\N	\N	/Api/CoreCmsBrand/GetCreate	1	2	CoreCmsBrand:GetCreate	\N	\N	f	f	2021-10-11 22:46:06	\N
904	54	DoCreate	创建提交	\N	\N	/Api/CoreCmsBrand/DoCreate	1	3	CoreCmsBrand:DoCreate	\N	\N	f	f	2021-10-11 22:46:06	\N
905	54	GetEdit	编辑数据	\N	\N	/Api/CoreCmsBrand/GetEdit	1	4	CoreCmsBrand:GetEdit	\N	\N	f	f	2021-10-11 22:46:06	\N
906	54	DoEdit	编辑提交	\N	\N	/Api/CoreCmsBrand/DoEdit	1	5	CoreCmsBrand:DoEdit	\N	\N	f	f	2021-10-11 22:46:06	\N
907	54	DoDelete	单选删除	\N	\N	/Api/CoreCmsBrand/DoDelete	1	6	CoreCmsBrand:DoDelete	\N	\N	f	f	2021-10-11 22:46:06	\N
908	54	DoSetisShow	设置是否显示	\N	\N	/Api/CoreCmsBrand/DoSetisShow	1	7	CoreCmsBrand:DoSetisShow	\N	\N	f	f	2021-10-11 22:46:06	\N
909	58	GetPageList	获取列表	\N	\N	/Api/CoreCmsGoodsTypeSpec/GetPageList	1	0	CoreCmsGoodsTypeSpec:GetPageList	\N	\N	f	f	2021-10-11 22:46:21	\N
910	58	GetIndex	首页数据	\N	\N	/Api/CoreCmsGoodsTypeSpec/GetIndex	1	1	CoreCmsGoodsTypeSpec:GetIndex	\N	\N	f	f	2021-10-11 22:46:21	\N
911	58	GetCreate	创建数据	\N	\N	/Api/CoreCmsGoodsTypeSpec/GetCreate	1	2	CoreCmsGoodsTypeSpec:GetCreate	\N	\N	f	f	2021-10-11 22:46:21	\N
912	58	DoCreate	创建提交	\N	\N	/Api/CoreCmsGoodsTypeSpec/DoCreate	1	3	CoreCmsGoodsTypeSpec:DoCreate	\N	\N	f	f	2021-10-11 22:46:21	\N
913	58	GetEdit	编辑数据	\N	\N	/Api/CoreCmsGoodsTypeSpec/GetEdit	1	4	CoreCmsGoodsTypeSpec:GetEdit	\N	\N	f	f	2021-10-11 22:46:21	\N
914	58	DoEdit	编辑提交	\N	\N	/Api/CoreCmsGoodsTypeSpec/DoEdit	1	5	CoreCmsGoodsTypeSpec:DoEdit	\N	\N	f	f	2021-10-11 22:46:21	\N
915	58	DoDelete	单选删除	\N	\N	/Api/CoreCmsGoodsTypeSpec/DoDelete	1	6	CoreCmsGoodsTypeSpec:DoDelete	\N	\N	f	f	2021-10-11 22:46:21	\N
916	57	GetPageList	获取列表	\N	\N	/Api/CoreCmsGoodsParams/GetPageList	1	0	CoreCmsGoodsParams:GetPageList	\N	\N	f	f	2021-10-11 22:46:28	\N
917	57	GetIndex	首页数据	\N	\N	/Api/CoreCmsGoodsParams/GetIndex	1	1	CoreCmsGoodsParams:GetIndex	\N	\N	f	f	2021-10-11 22:46:28	\N
918	57	GetCreate	创建数据	\N	\N	/Api/CoreCmsGoodsParams/GetCreate	1	2	CoreCmsGoodsParams:GetCreate	\N	\N	f	f	2021-10-11 22:46:28	\N
919	57	DoCreate	创建提交	\N	\N	/Api/CoreCmsGoodsParams/DoCreate	1	3	CoreCmsGoodsParams:DoCreate	\N	\N	f	f	2021-10-11 22:46:28	\N
920	57	GetEdit	编辑数据	\N	\N	/Api/CoreCmsGoodsParams/GetEdit	1	4	CoreCmsGoodsParams:GetEdit	\N	\N	f	f	2021-10-11 22:46:28	\N
921	57	DoEdit	编辑提交	\N	\N	/Api/CoreCmsGoodsParams/DoEdit	1	5	CoreCmsGoodsParams:DoEdit	\N	\N	f	f	2021-10-11 22:46:28	\N
922	57	DoDelete	单选删除	\N	\N	/Api/CoreCmsGoodsParams/DoDelete	1	6	CoreCmsGoodsParams:DoDelete	\N	\N	f	f	2021-10-11 22:46:28	\N
923	57	GetDetails	预览数据	\N	\N	/Api/CoreCmsGoodsParams/GetDetails	1	7	CoreCmsGoodsParams:GetDetails	\N	\N	f	f	2021-10-11 22:46:28	\N
924	57	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsGoodsParams/SelectExportExcel	1	8	CoreCmsGoodsParams:SelectExportExcel	\N	\N	f	f	2021-10-11 22:46:28	\N
925	57	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsGoodsParams/QueryExportExcel	1	9	CoreCmsGoodsParams:QueryExportExcel	\N	\N	f	f	2021-10-11 22:46:28	\N
926	56	GetPageList	获取列表	\N	\N	/Api/CoreCmsGoodsComment/GetPageList	1	0	CoreCmsGoodsComment:GetPageList	\N	\N	f	f	2021-10-11 22:46:37	\N
927	56	GetIndex	首页数据	\N	\N	/Api/CoreCmsGoodsComment/GetIndex	1	1	CoreCmsGoodsComment:GetIndex	\N	\N	f	f	2021-10-11 22:46:37	\N
928	56	GetEdit	编辑数据	\N	\N	/Api/CoreCmsGoodsComment/GetEdit	1	2	CoreCmsGoodsComment:GetEdit	\N	\N	f	f	2021-10-11 22:46:37	\N
929	56	DoEdit	编辑提交	\N	\N	/Api/CoreCmsGoodsComment/DoEdit	1	3	CoreCmsGoodsComment:DoEdit	\N	\N	f	f	2021-10-11 22:46:37	\N
930	56	DoDelete	单选删除	\N	\N	/Api/CoreCmsGoodsComment/DoDelete	1	4	CoreCmsGoodsComment:DoDelete	\N	\N	f	f	2021-10-11 22:46:37	\N
931	56	GetDetails	预览数据	\N	\N	/Api/CoreCmsGoodsComment/GetDetails	1	5	CoreCmsGoodsComment:GetDetails	\N	\N	f	f	2021-10-11 22:46:37	\N
932	56	DoSetisDisplay	设置前台显示	\N	\N	/Api/CoreCmsGoodsComment/DoSetisDisplay	1	6	CoreCmsGoodsComment:DoSetisDisplay	\N	\N	f	f	2021-10-11 22:46:37	\N
933	90	GetPageList	获取列表	\N	\N	/Api/CoreCmsPayments/GetPageList	1	0	CoreCmsPayments:GetPageList	\N	\N	f	f	2021-10-11 22:47:01	\N
934	90	GetIndex	首页数据	\N	\N	/Api/CoreCmsPayments/GetIndex	1	1	CoreCmsPayments:GetIndex	\N	\N	f	f	2021-10-11 22:47:01	\N
935	90	GetEdit	编辑数据	\N	\N	/Api/CoreCmsPayments/GetEdit	1	2	CoreCmsPayments:GetEdit	\N	\N	f	f	2021-10-11 22:47:01	\N
936	90	DoEdit	编辑提交	\N	\N	/Api/CoreCmsPayments/DoEdit	1	3	CoreCmsPayments:DoEdit	\N	\N	f	f	2021-10-11 22:47:01	\N
937	90	DoSetisOnline	设置是否线上支付	\N	\N	/Api/CoreCmsPayments/DoSetisOnline	1	4	CoreCmsPayments:DoSetisOnline	\N	\N	f	f	2021-10-11 22:47:01	\N
938	90	DoSetisEnable	设置是否启用	\N	\N	/Api/CoreCmsPayments/DoSetisEnable	1	5	CoreCmsPayments:DoSetisEnable	\N	\N	f	f	2021-10-11 22:47:01	\N
939	91	GetPageList	获取列表	\N	\N	/Api/CoreCmsBillPayments/GetPageList	1	0	CoreCmsBillPayments:GetPageList	\N	\N	f	f	2021-10-11 22:47:10	\N
940	91	GetIndex	首页数据	\N	\N	/Api/CoreCmsBillPayments/GetIndex	1	1	CoreCmsBillPayments:GetIndex	\N	\N	f	f	2021-10-11 22:47:10	\N
941	91	GetDetails	预览数据	\N	\N	/Api/CoreCmsBillPayments/GetDetails	1	2	CoreCmsBillPayments:GetDetails	\N	\N	f	f	2021-10-11 22:47:10	\N
942	91	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsBillPayments/SelectExportExcel	1	3	CoreCmsBillPayments:SelectExportExcel	\N	\N	f	f	2021-10-11 22:47:10	\N
943	91	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsBillPayments/QueryExportExcel	1	4	CoreCmsBillPayments:QueryExportExcel	\N	\N	f	f	2021-10-11 22:47:10	\N
944	92	GetPageList	获取列表	\N	\N	/Api/CoreCmsUserTocash/GetPageList	1	0	CoreCmsUserTocash:GetPageList	\N	\N	f	f	2021-10-11 22:47:24	\N
945	92	GetIndex	首页数据	\N	\N	/Api/CoreCmsUserTocash/GetIndex	1	1	CoreCmsUserTocash:GetIndex	\N	\N	f	f	2021-10-11 22:47:24	\N
946	92	SetStatus	设置状态	\N	\N	/Api/CoreCmsUserTocash/SetStatus	1	2	CoreCmsUserTocash:SetStatus	\N	\N	f	f	2021-10-11 22:47:24	\N
947	92	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsUserTocash/SelectExportExcel	1	3	CoreCmsUserTocash:SelectExportExcel	\N	\N	f	f	2021-10-11 22:47:24	\N
948	92	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsUserTocash/QueryExportExcel	1	4	CoreCmsUserTocash:QueryExportExcel	\N	\N	f	f	2021-10-11 22:47:24	\N
949	93	GetPageList	获取列表	\N	\N	/Api/CoreCmsBillRefund/GetPageList	1	0	CoreCmsBillRefund:GetPageList	\N	\N	f	f	2021-10-11 22:47:46	\N
950	93	GetIndex	首页数据	\N	\N	/Api/CoreCmsBillRefund/GetIndex	1	1	CoreCmsBillRefund:GetIndex	\N	\N	f	f	2021-10-11 22:47:46	\N
951	93	GetDetails	预览数据	\N	\N	/Api/CoreCmsBillRefund/GetDetails	1	2	CoreCmsBillRefund:GetDetails	\N	\N	f	f	2021-10-11 22:47:46	\N
952	93	GetAudit	审核退款单	\N	\N	/Api/CoreCmsBillRefund/GetAudit	1	3	CoreCmsBillRefund:GetAudit	\N	\N	f	f	2021-10-11 22:47:46	\N
953	93	DoAudit	提交审核结果	\N	\N	/Api/CoreCmsBillRefund/DoAudit	1	4	CoreCmsBillRefund:DoAudit	\N	\N	f	f	2021-10-11 22:47:46	\N
954	93	DoReAudit	退款失败状态再次退款	\N	\N	/Api/CoreCmsBillRefund/DoReAudit	1	5	CoreCmsBillRefund:DoReAudit	\N	\N	f	f	2021-10-11 22:47:46	\N
955	93	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsBillRefund/SelectExportExcel	1	6	CoreCmsBillRefund:SelectExportExcel	\N	\N	f	f	2021-10-11 22:47:46	\N
956	93	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsBillRefund/QueryExportExcel	1	7	CoreCmsBillRefund:QueryExportExcel	\N	\N	f	f	2021-10-11 22:47:46	\N
957	94	GetPageList	获取列表	\N	\N	/Api/CoreCmsUserBalance/GetPageList	1	0	CoreCmsUserBalance:GetPageList	\N	\N	f	f	2021-10-11 22:47:55	\N
958	94	GetIndex	首页数据	\N	\N	/Api/CoreCmsUserBalance/GetIndex	1	1	CoreCmsUserBalance:GetIndex	\N	\N	f	f	2021-10-11 22:47:55	\N
959	94	GetDetails	预览数据	\N	\N	/Api/CoreCmsUserBalance/GetDetails	1	2	CoreCmsUserBalance:GetDetails	\N	\N	f	f	2021-10-11 22:47:55	\N
960	94	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsUserBalance/SelectExportExcel	1	3	CoreCmsUserBalance:SelectExportExcel	\N	\N	f	f	2021-10-11 22:47:55	\N
961	94	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsUserBalance/QueryExportExcel	1	4	CoreCmsUserBalance:QueryExportExcel	\N	\N	f	f	2021-10-11 22:47:55	\N
962	95	GetPageList	获取列表	\N	\N	/Api/CoreCmsInvoice/GetPageList	1	0	CoreCmsInvoice:GetPageList	\N	\N	f	f	2021-10-11 22:48:04	\N
963	95	GetIndex	首页数据	\N	\N	/Api/CoreCmsInvoice/GetIndex	1	1	CoreCmsInvoice:GetIndex	\N	\N	f	f	2021-10-11 22:48:04	\N
964	95	GetEdit	编辑数据	\N	\N	/Api/CoreCmsInvoice/GetEdit	1	2	CoreCmsInvoice:GetEdit	\N	\N	f	f	2021-10-11 22:48:04	\N
965	95	DoEdit	编辑提交	\N	\N	/Api/CoreCmsInvoice/DoEdit	1	3	CoreCmsInvoice:DoEdit	\N	\N	f	f	2021-10-11 22:48:04	\N
966	95	DoDelete	单选删除	\N	\N	/Api/CoreCmsInvoice/DoDelete	1	4	CoreCmsInvoice:DoDelete	\N	\N	f	f	2021-10-11 22:48:04	\N
967	95	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsInvoice/SelectExportExcel	1	5	CoreCmsInvoice:SelectExportExcel	\N	\N	f	f	2021-10-11 22:48:04	\N
968	95	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsInvoice/QueryExportExcel	1	6	CoreCmsInvoice:QueryExportExcel	\N	\N	f	f	2021-10-11 22:48:04	\N
969	81	GetIndex	首页数据	\N	\N	/Api/CoreCmsPromotion/GetIndex	1	0	CoreCmsPromotion:GetIndex	\N	\N	f	f	2021-10-11 22:48:20	\N
970	81	GetCreate	创建数据	\N	\N	/Api/CoreCmsPromotion/GetCreate	1	1	CoreCmsPromotion:GetCreate	\N	\N	f	f	2021-10-11 22:48:20	\N
971	81	DoCreate	创建提交	\N	\N	/Api/CoreCmsPromotion/DoCreate	1	2	CoreCmsPromotion:DoCreate	\N	\N	f	f	2021-10-11 22:48:20	\N
972	81	GetEdit	编辑数据	\N	\N	/Api/CoreCmsPromotion/GetEdit	1	3	CoreCmsPromotion:GetEdit	\N	\N	f	f	2021-10-11 22:48:20	\N
973	81	DoEdit	编辑提交	\N	\N	/Api/CoreCmsPromotion/DoEdit	1	4	CoreCmsPromotion:DoEdit	\N	\N	f	f	2021-10-11 22:48:20	\N
974	81	DoDelete	单选删除	\N	\N	/Api/CoreCmsPromotion/DoDelete	1	5	CoreCmsPromotion:DoDelete	\N	\N	f	f	2021-10-11 22:48:20	\N
975	81	DoSetisExclusive	设置是否排他	\N	\N	/Api/CoreCmsPromotion/DoSetisExclusive	1	6	CoreCmsPromotion:DoSetisExclusive	\N	\N	f	f	2021-10-11 22:48:20	\N
976	81	DoSetisEnable	设置是否开启	\N	\N	/Api/CoreCmsPromotion/DoSetisEnable	1	7	CoreCmsPromotion:DoSetisEnable	\N	\N	f	f	2021-10-11 22:48:20	\N
977	81	GetConditionCreate	添加促销条件	\N	\N	/Api/CoreCmsPromotion/GetConditionCreate	1	8	CoreCmsPromotion:GetConditionCreate	\N	\N	f	f	2021-10-11 22:48:20	\N
978	81	DoConditionCreate	添加促销条件提交	\N	\N	/Api/CoreCmsPromotion/DoConditionCreate	1	9	CoreCmsPromotion:DoConditionCreate	\N	\N	f	f	2021-10-11 22:48:20	\N
979	81	GetConditionList	获取促销条件	\N	\N	/Api/CoreCmsPromotion/GetConditionList	1	10	CoreCmsPromotion:GetConditionList	\N	\N	f	f	2021-10-11 22:48:20	\N
980	81	DoConditionDelete	删除促销条件	\N	\N	/Api/CoreCmsPromotion/DoConditionDelete	1	11	CoreCmsPromotion:DoConditionDelete	\N	\N	f	f	2021-10-11 22:48:20	\N
981	81	GetConditionEdit	编辑促销数据	\N	\N	/Api/CoreCmsPromotion/GetConditionEdit	1	12	CoreCmsPromotion:GetConditionEdit	\N	\N	f	f	2021-10-11 22:48:20	\N
982	81	DoConditionEdit	编辑促销提交	\N	\N	/Api/CoreCmsPromotion/DoConditionEdit	1	13	CoreCmsPromotion:DoConditionEdit	\N	\N	f	f	2021-10-11 22:48:20	\N
983	81	GetResultList	获取促销结果列表	\N	\N	/Api/CoreCmsPromotion/GetResultList	1	14	CoreCmsPromotion:GetResultList	\N	\N	f	f	2021-10-11 22:48:20	\N
984	81	GetResultCreate	添加促销结果	\N	\N	/Api/CoreCmsPromotion/GetResultCreate	1	15	CoreCmsPromotion:GetResultCreate	\N	\N	f	f	2021-10-11 22:48:20	\N
985	81	DoResultCreate	创建促销结果提交	\N	\N	/Api/CoreCmsPromotion/DoResultCreate	1	16	CoreCmsPromotion:DoResultCreate	\N	\N	f	f	2021-10-11 22:48:20	\N
986	81	GetResultEdit	编辑促销结果	\N	\N	/Api/CoreCmsPromotion/GetResultEdit	1	17	CoreCmsPromotion:GetResultEdit	\N	\N	f	f	2021-10-11 22:48:20	\N
987	81	DoResultEdit	编辑促销结果提交	\N	\N	/Api/CoreCmsPromotion/DoResultEdit	1	18	CoreCmsPromotion:DoResultEdit	\N	\N	f	f	2021-10-11 22:48:20	\N
988	81	DoResultDelete	单选促销结果删除	\N	\N	/Api/CoreCmsPromotion/DoResultDelete	1	19	CoreCmsPromotion:DoResultDelete	\N	\N	f	f	2021-10-11 22:48:20	\N
989	81	GetCouponPageList	获取优惠券码列表	\N	\N	/Api/CoreCmsPromotion/GetCouponPageList	1	20	CoreCmsPromotion:GetCouponPageList	\N	\N	f	f	2021-10-11 22:48:20	\N
990	81	GetCouponIndex	优惠券码首页数据	\N	\N	/Api/CoreCmsPromotion/GetCouponIndex	1	21	CoreCmsPromotion:GetCouponIndex	\N	\N	f	f	2021-10-11 22:48:20	\N
991	81	DoSetCouponisUsed	设置是否使用	\N	\N	/Api/CoreCmsPromotion/DoSetCouponisUsed	1	22	CoreCmsPromotion:DoSetCouponisUsed	\N	\N	f	f	2021-10-11 22:48:20	\N
992	81	SelectCouponExportExcel	选择导出	\N	\N	/Api/CoreCmsPromotion/SelectCouponExportExcel	1	23	CoreCmsPromotion:SelectCouponExportExcel	\N	\N	f	f	2021-10-11 22:48:20	\N
993	81	QueryCouponExportExcel	查询导出	\N	\N	/Api/CoreCmsPromotion/QueryCouponExportExcel	1	24	CoreCmsPromotion:QueryCouponExportExcel	\N	\N	f	f	2021-10-11 22:48:20	\N
994	79	GetPageList	获取列表	\N	\N	/Api/CoreCmsPinTuanRule/GetPageList	1	0	CoreCmsPinTuanRule:GetPageList	\N	\N	f	f	2021-10-11 22:50:48	\N
995	79	GetIndex	首页数据	\N	\N	/Api/CoreCmsPinTuanRule/GetIndex	1	1	CoreCmsPinTuanRule:GetIndex	\N	\N	f	f	2021-10-11 22:50:48	\N
996	79	GetCreate	创建数据	\N	\N	/Api/CoreCmsPinTuanRule/GetCreate	1	2	CoreCmsPinTuanRule:GetCreate	\N	\N	f	f	2021-10-11 22:50:48	\N
997	79	DoCreate	创建提交	\N	\N	/Api/CoreCmsPinTuanRule/DoCreate	1	3	CoreCmsPinTuanRule:DoCreate	\N	\N	f	f	2021-10-11 22:50:48	\N
998	79	GetEdit	编辑数据	\N	\N	/Api/CoreCmsPinTuanRule/GetEdit	1	4	CoreCmsPinTuanRule:GetEdit	\N	\N	f	f	2021-10-11 22:50:48	\N
999	79	DoEdit	编辑提交	\N	\N	/Api/CoreCmsPinTuanRule/DoEdit	1	5	CoreCmsPinTuanRule:DoEdit	\N	\N	f	f	2021-10-11 22:50:48	\N
1000	79	DoDelete	单选删除	\N	\N	/Api/CoreCmsPinTuanRule/DoDelete	1	6	CoreCmsPinTuanRule:DoDelete	\N	\N	f	f	2021-10-11 22:50:48	\N
1001	79	DoSetisStatusOpen	设置是否开启	\N	\N	/Api/CoreCmsPinTuanRule/DoSetisStatusOpen	1	7	CoreCmsPinTuanRule:DoSetisStatusOpen	\N	\N	f	f	2021-10-11 22:50:48	\N
1002	80	GetPageList	获取列表	\N	\N	/Api/CoreCmsPinTuanRecord/GetPageList	1	0	CoreCmsPinTuanRecord:GetPageList	\N	\N	f	f	2021-10-11 22:50:58	\N
1003	80	GetIndex	首页数据	\N	\N	/Api/CoreCmsPinTuanRecord/GetIndex	1	1	CoreCmsPinTuanRecord:GetIndex	\N	\N	f	f	2021-10-11 22:50:58	\N
1013	634	GetIndex	首页数据	\N	\N	/Api/CoreCmsDistributionSetting/GetIndex	1	0	CoreCmsDistributionSetting:GetIndex	\N	\N	f	f	2021-10-11 22:51:18	\N
1014	634	DoSave	保存提交	\N	\N	/Api/CoreCmsDistributionSetting/DoSave	1	1	CoreCmsDistributionSetting:DoSave	\N	\N	f	f	2021-10-11 22:51:18	\N
1015	103	GetPageList	获取列表	\N	\N	/Api/CoreCmsDistributionGrade/GetPageList	1	0	CoreCmsDistributionGrade:GetPageList	\N	\N	f	f	2021-10-11 22:51:29	\N
1016	103	GetIndex	首页数据	\N	\N	/Api/CoreCmsDistributionGrade/GetIndex	1	1	CoreCmsDistributionGrade:GetIndex	\N	\N	f	f	2021-10-11 22:51:29	\N
1017	103	GetCreate	创建数据	\N	\N	/Api/CoreCmsDistributionGrade/GetCreate	1	2	CoreCmsDistributionGrade:GetCreate	\N	\N	f	f	2021-10-11 22:51:29	\N
1018	103	DoCreate	创建提交	\N	\N	/Api/CoreCmsDistributionGrade/DoCreate	1	3	CoreCmsDistributionGrade:DoCreate	\N	\N	f	f	2021-10-11 22:51:29	\N
1019	103	GetEdit	编辑数据	\N	\N	/Api/CoreCmsDistributionGrade/GetEdit	1	4	CoreCmsDistributionGrade:GetEdit	\N	\N	f	f	2021-10-11 22:51:29	\N
1020	103	DoEdit	编辑提交	\N	\N	/Api/CoreCmsDistributionGrade/DoEdit	1	5	CoreCmsDistributionGrade:DoEdit	\N	\N	f	f	2021-10-11 22:51:29	\N
1021	103	DoSetisDefault	设置是否默认等级	\N	\N	/Api/CoreCmsDistributionGrade/DoSetisDefault	1	6	CoreCmsDistributionGrade:DoSetisDefault	\N	\N	f	f	2021-10-11 22:51:29	\N
1022	103	DoSetisAutoUpGrade	设置是否自动升级	\N	\N	/Api/CoreCmsDistributionGrade/DoSetisAutoUpGrade	1	7	CoreCmsDistributionGrade:DoSetisAutoUpGrade	\N	\N	f	f	2021-10-11 22:51:29	\N
1023	103	DoDelete	单选删除	\N	\N	/Api/CoreCmsDistributionGrade/DoDelete	1	8	CoreCmsDistributionGrade:DoDelete	\N	\N	f	f	2021-10-11 22:51:29	\N
1024	103	GetDistributionConditionPageList	获取列表	\N	\N	/Api/CoreCmsDistributionGrade/GetDistributionConditionPageList	1	9	CoreCmsDistributionGrade:GetDistributionConditionPageList	\N	\N	f	f	2021-10-11 22:51:29	\N
1025	103	GetDistributionConditionCreate	创建数据	\N	\N	/Api/CoreCmsDistributionGrade/GetDistributionConditionCreate	1	10	CoreCmsDistributionGrade:GetDistributionConditionCreate	\N	\N	f	f	2021-10-11 22:51:29	\N
1026	103	DoDistributionConditionCreate	创建提交	\N	\N	/Api/CoreCmsDistributionGrade/DoDistributionConditionCreate	1	11	CoreCmsDistributionGrade:DoDistributionConditionCreate	\N	\N	f	f	2021-10-11 22:51:29	\N
1027	103	GetDistributionConditionEdit	编辑数据	\N	\N	/Api/CoreCmsDistributionGrade/GetDistributionConditionEdit	1	12	CoreCmsDistributionGrade:GetDistributionConditionEdit	\N	\N	f	f	2021-10-11 22:51:29	\N
1028	103	DoDistributionConditionEdit	编辑提交	\N	\N	/Api/CoreCmsDistributionGrade/DoDistributionConditionEdit	1	13	CoreCmsDistributionGrade:DoDistributionConditionEdit	\N	\N	f	f	2021-10-11 22:51:29	\N
1029	103	DoDistributionConditionDelete	单选删除	\N	\N	/Api/CoreCmsDistributionGrade/DoDistributionConditionDelete	1	14	CoreCmsDistributionGrade:DoDistributionConditionDelete	\N	\N	f	f	2021-10-11 22:51:29	\N
1030	103	GetDistributionResultPageList	获取列表	\N	\N	/Api/CoreCmsDistributionGrade/GetDistributionResultPageList	1	15	CoreCmsDistributionGrade:GetDistributionResultPageList	\N	\N	f	f	2021-10-11 22:51:29	\N
1031	103	GetDistributionResultCreate	创建数据	\N	\N	/Api/CoreCmsDistributionGrade/GetDistributionResultCreate	1	16	CoreCmsDistributionGrade:GetDistributionResultCreate	\N	\N	f	f	2021-10-11 22:51:29	\N
1032	103	DoDistributionResultCreate	创建提交	\N	\N	/Api/CoreCmsDistributionGrade/DoDistributionResultCreate	1	17	CoreCmsDistributionGrade:DoDistributionResultCreate	\N	\N	f	f	2021-10-11 22:51:29	\N
1033	103	GetDistributionResultEdit	编辑数据	\N	\N	/Api/CoreCmsDistributionGrade/GetDistributionResultEdit	1	18	CoreCmsDistributionGrade:GetDistributionResultEdit	\N	\N	f	f	2021-10-11 22:51:29	\N
1086	599	GetIndex	首页数据	\N	\N	/Api/CoreCmsFormSubmit/GetIndex	1	1	CoreCmsFormSubmit:GetIndex	\N	\N	f	f	2021-10-11 22:53:23	\N
1034	103	DoDistributionResultEdit	编辑提交	\N	\N	/Api/CoreCmsDistributionGrade/DoDistributionResultEdit	1	19	CoreCmsDistributionGrade:DoDistributionResultEdit	\N	\N	f	f	2021-10-11 22:51:29	\N
1035	103	DoDistributionResultDelete	单选删除	\N	\N	/Api/CoreCmsDistributionGrade/DoDistributionResultDelete	1	20	CoreCmsDistributionGrade:DoDistributionResultDelete	\N	\N	f	f	2021-10-11 22:51:29	\N
1036	104	GetPageList	获取列表	\N	\N	/Api/CoreCmsDistribution/GetPageList	1	0	CoreCmsDistribution:GetPageList	\N	\N	f	f	2021-10-11 22:51:35	\N
1037	104	GetIndex	首页数据	\N	\N	/Api/CoreCmsDistribution/GetIndex	1	1	CoreCmsDistribution:GetIndex	\N	\N	f	f	2021-10-11 22:51:35	\N
1038	104	GetEdit	编辑数据	\N	\N	/Api/CoreCmsDistribution/GetEdit	1	2	CoreCmsDistribution:GetEdit	\N	\N	f	f	2021-10-11 22:51:35	\N
1039	104	DoEdit	编辑提交	\N	\N	/Api/CoreCmsDistribution/DoEdit	1	3	CoreCmsDistribution:DoEdit	\N	\N	f	f	2021-10-11 22:51:35	\N
1040	104	DoDelete	单选删除	\N	\N	/Api/CoreCmsDistribution/DoDelete	1	4	CoreCmsDistribution:DoDelete	\N	\N	f	f	2021-10-11 22:51:35	\N
1041	104	GetDetails	预览数据	\N	\N	/Api/CoreCmsDistribution/GetDetails	1	5	CoreCmsDistribution:GetDetails	\N	\N	f	f	2021-10-11 22:51:35	\N
1042	105	GetPageList	获取列表	\N	\N	/Api/CoreCmsDistributionOrder/GetPageList	1	0	CoreCmsDistributionOrder:GetPageList	\N	\N	f	f	2021-10-11 22:51:42	\N
1043	105	GetIndex	首页数据	\N	\N	/Api/CoreCmsDistributionOrder/GetIndex	1	1	CoreCmsDistributionOrder:GetIndex	\N	\N	f	f	2021-10-11 22:51:42	\N
1044	105	GetDetails	预览数据	\N	\N	/Api/CoreCmsDistributionOrder/GetDetails	1	2	CoreCmsDistributionOrder:GetDetails	\N	\N	f	f	2021-10-11 22:51:42	\N
1045	105	SelectExportExcel	选择导出	\N	\N	/Api/CoreCmsDistributionOrder/SelectExportExcel	1	3	CoreCmsDistributionOrder:SelectExportExcel	\N	\N	f	f	2021-10-11 22:51:42	\N
1046	105	QueryExportExcel	查询导出	\N	\N	/Api/CoreCmsDistributionOrder/QueryExportExcel	1	4	CoreCmsDistributionOrder:QueryExportExcel	\N	\N	f	f	2021-10-11 22:51:42	\N
1047	660	GetPageList	获取列表	\N	\N	/Api/CoreCmsAgentGoods/GetPageList	1	0	CoreCmsAgentGoods:GetPageList	\N	\N	f	f	2021-10-11 22:51:52	\N
1048	660	GetIndex	首页数据	\N	\N	/Api/CoreCmsAgentGoods/GetIndex	1	1	CoreCmsAgentGoods:GetIndex	\N	\N	f	f	2021-10-11 22:51:52	\N
1049	660	GetCreate	创建数据	\N	\N	/Api/CoreCmsAgentGoods/GetCreate	1	2	CoreCmsAgentGoods:GetCreate	\N	\N	f	f	2021-10-11 22:51:52	\N
1050	660	DoCreate	创建提交	\N	\N	/Api/CoreCmsAgentGoods/DoCreate	1	3	CoreCmsAgentGoods:DoCreate	\N	\N	f	f	2021-10-11 22:51:52	\N
1051	660	GetEdit	编辑数据	\N	\N	/Api/CoreCmsAgentGoods/GetEdit	1	4	CoreCmsAgentGoods:GetEdit	\N	\N	f	f	2021-10-11 22:51:52	\N
1052	660	DoEdit	编辑提交	\N	\N	/Api/CoreCmsAgentGoods/DoEdit	1	5	CoreCmsAgentGoods:DoEdit	\N	\N	f	f	2021-10-11 22:51:52	\N
1053	660	DoDelete	单选删除	\N	\N	/Api/CoreCmsAgentGoods/DoDelete	1	6	CoreCmsAgentGoods:DoDelete	\N	\N	f	f	2021-10-11 22:51:52	\N
1054	660	GetDetails	预览数据	\N	\N	/Api/CoreCmsAgentGoods/GetDetails	1	7	CoreCmsAgentGoods:GetDetails	\N	\N	f	f	2021-10-11 22:51:52	\N
1055	660	DoSetisEnable	设置是否启用	\N	\N	/Api/CoreCmsAgentGoods/DoSetisEnable	1	8	CoreCmsAgentGoods:DoSetisEnable	\N	\N	f	f	2021-10-11 22:51:52	\N
1056	635	GetIndex	首页数据	\N	\N	/Api/CoreCmsAgentSetting/GetIndex	1	0	CoreCmsAgentSetting:GetIndex	\N	\N	f	f	2021-10-11 22:52:00	\N
1057	635	DoSave	保存提交	\N	\N	/Api/CoreCmsAgentSetting/DoSave	1	1	CoreCmsAgentSetting:DoSave	\N	\N	f	f	2021-10-11 22:52:00	\N
1058	631	GetPageList	获取列表	\N	\N	/Api/CoreCmsAgentGrade/GetPageList	1	0	CoreCmsAgentGrade:GetPageList	\N	\N	f	f	2021-10-11 22:52:04	\N
1059	631	GetIndex	首页数据	\N	\N	/Api/CoreCmsAgentGrade/GetIndex	1	1	CoreCmsAgentGrade:GetIndex	\N	\N	f	f	2021-10-11 22:52:04	\N
1060	631	GetCreate	创建数据	\N	\N	/Api/CoreCmsAgentGrade/GetCreate	1	2	CoreCmsAgentGrade:GetCreate	\N	\N	f	f	2021-10-11 22:52:04	\N
1061	631	DoCreate	创建提交	\N	\N	/Api/CoreCmsAgentGrade/DoCreate	1	3	CoreCmsAgentGrade:DoCreate	\N	\N	f	f	2021-10-11 22:52:04	\N
1062	631	GetEdit	编辑数据	\N	\N	/Api/CoreCmsAgentGrade/GetEdit	1	4	CoreCmsAgentGrade:GetEdit	\N	\N	f	f	2021-10-11 22:52:04	\N
1063	631	DoEdit	编辑提交	\N	\N	/Api/CoreCmsAgentGrade/DoEdit	1	5	CoreCmsAgentGrade:DoEdit	\N	\N	f	f	2021-10-11 22:52:04	\N
1064	631	DoDelete	单选删除	\N	\N	/Api/CoreCmsAgentGrade/DoDelete	1	6	CoreCmsAgentGrade:DoDelete	\N	\N	f	f	2021-10-11 22:52:04	\N
1065	631	DoSetisDefault	设置是否默认等级	\N	\N	/Api/CoreCmsAgentGrade/DoSetisDefault	1	7	CoreCmsAgentGrade:DoSetisDefault	\N	\N	f	f	2021-10-11 22:52:04	\N
1066	631	DoSetisAutoUpGrade	设置是否自动升级	\N	\N	/Api/CoreCmsAgentGrade/DoSetisAutoUpGrade	1	8	CoreCmsAgentGrade:DoSetisAutoUpGrade	\N	\N	f	f	2021-10-11 22:52:04	\N
1067	632	GetPageList	获取列表	\N	\N	/Api/CoreCmsAgent/GetPageList	1	0	CoreCmsAgent:GetPageList	\N	\N	f	f	2021-10-11 22:52:09	\N
1068	632	GetIndex	首页数据	\N	\N	/Api/CoreCmsAgent/GetIndex	1	1	CoreCmsAgent:GetIndex	\N	\N	f	f	2021-10-11 22:52:09	\N
1069	632	GetEdit	编辑数据	\N	\N	/Api/CoreCmsAgent/GetEdit	1	2	CoreCmsAgent:GetEdit	\N	\N	f	f	2021-10-11 22:52:09	\N
1070	632	DoEdit	编辑提交	\N	\N	/Api/CoreCmsAgent/DoEdit	1	3	CoreCmsAgent:DoEdit	\N	\N	f	f	2021-10-11 22:52:09	\N
1071	632	DoDelete	单选删除	\N	\N	/Api/CoreCmsAgent/DoDelete	1	4	CoreCmsAgent:DoDelete	\N	\N	f	f	2021-10-11 22:52:09	\N
1072	632	GetDetails	预览数据	\N	\N	/Api/CoreCmsAgent/GetDetails	1	5	CoreCmsAgent:GetDetails	\N	\N	f	f	2021-10-11 22:52:09	\N
1073	633	GetPageList	获取列表	\N	\N	/Api/CoreCmsAgentOrder/GetPageList	1	0	CoreCmsAgentOrder:GetPageList	\N	\N	f	f	2021-10-11 22:52:16	\N
1074	633	GetIndex	首页数据	\N	\N	/Api/CoreCmsAgentOrder/GetIndex	1	1	CoreCmsAgentOrder:GetIndex	\N	\N	f	f	2021-10-11 22:52:16	\N
1075	633	GetDetails	预览数据	\N	\N	/Api/CoreCmsAgentOrder/GetDetails	1	2	CoreCmsAgentOrder:GetDetails	\N	\N	f	f	2021-10-11 22:52:16	\N
1076	72	GetPageList	获取列表	\N	\N	/Api/CoreCmsNotice/GetPageList	1	0	CoreCmsNotice:GetPageList	\N	\N	f	f	2021-10-11 22:53:05	\N
1077	72	GetIndex	首页数据	\N	\N	/Api/CoreCmsNotice/GetIndex	1	1	CoreCmsNotice:GetIndex	\N	\N	f	f	2021-10-11 22:53:05	\N
1078	72	GetCreate	创建数据	\N	\N	/Api/CoreCmsNotice/GetCreate	1	2	CoreCmsNotice:GetCreate	\N	\N	f	f	2021-10-11 22:53:05	\N
1079	72	DoCreate	创建提交	\N	\N	/Api/CoreCmsNotice/DoCreate	1	3	CoreCmsNotice:DoCreate	\N	\N	f	f	2021-10-11 22:53:05	\N
1080	72	GetEdit	编辑数据	\N	\N	/Api/CoreCmsNotice/GetEdit	1	4	CoreCmsNotice:GetEdit	\N	\N	f	f	2021-10-11 22:53:05	\N
1081	72	DoEdit	编辑提交	\N	\N	/Api/CoreCmsNotice/DoEdit	1	5	CoreCmsNotice:DoEdit	\N	\N	f	f	2021-10-11 22:53:05	\N
1082	72	DoDelete	单选删除	\N	\N	/Api/CoreCmsNotice/DoDelete	1	6	CoreCmsNotice:DoDelete	\N	\N	f	f	2021-10-11 22:53:05	\N
1083	72	DoBatchDelete	批量删除	\N	\N	/Api/CoreCmsNotice/DoBatchDelete	1	7	CoreCmsNotice:DoBatchDelete	\N	\N	f	f	2021-10-11 22:53:05	\N
1084	72	DoSetisDel	设置软删除位  有时间代表已删除	\N	\N	/Api/CoreCmsNotice/DoSetisDel	1	8	CoreCmsNotice:DoSetisDel	\N	\N	f	f	2021-10-11 22:53:05	\N
1085	599	GetPageList	获取列表	\N	\N	/Api/CoreCmsFormSubmit/GetPageList	1	0	CoreCmsFormSubmit:GetPageList	\N	\N	f	f	2021-10-11 22:53:23	\N
1087	599	GetEdit	编辑数据	\N	\N	/Api/CoreCmsFormSubmit/GetEdit	1	2	CoreCmsFormSubmit:GetEdit	\N	\N	f	f	2021-10-11 22:53:23	\N
1088	599	DoDelete	单选删除	\N	\N	/Api/CoreCmsFormSubmit/DoDelete	1	3	CoreCmsFormSubmit:DoDelete	\N	\N	f	f	2021-10-11 22:53:23	\N
1089	599	GetDetails	预览数据	\N	\N	/Api/CoreCmsFormSubmit/GetDetails	1	4	CoreCmsFormSubmit:GetDetails	\N	\N	f	f	2021-10-11 22:53:23	\N
1090	599	DoSetpayStatus	设置是否支付	\N	\N	/Api/CoreCmsFormSubmit/DoSetpayStatus	1	5	CoreCmsFormSubmit:DoSetpayStatus	\N	\N	f	f	2021-10-11 22:53:23	\N
1091	599	DoSetstatus	设置是否处理	\N	\N	/Api/CoreCmsFormSubmit/DoSetstatus	1	6	CoreCmsFormSubmit:DoSetstatus	\N	\N	f	f	2021-10-11 22:53:23	\N
1092	599	DoSetFeedback	更新反馈	\N	\N	/Api/CoreCmsFormSubmit/DoSetFeedback	1	7	CoreCmsFormSubmit:DoSetFeedback	\N	\N	f	f	2021-10-11 22:53:23	\N
1093	99	GetPageList	获取列表	\N	\N	/Api/CoreCmsForm/GetPageList	1	0	CoreCmsForm:GetPageList	\N	\N	f	f	2021-10-11 22:53:31	\N
1094	99	GetIndex	首页数据	\N	\N	/Api/CoreCmsForm/GetIndex	1	1	CoreCmsForm:GetIndex	\N	\N	f	f	2021-10-11 22:53:31	\N
1095	99	GetCreate	创建数据	\N	\N	/Api/CoreCmsForm/GetCreate	1	2	CoreCmsForm:GetCreate	\N	\N	f	f	2021-10-11 22:53:31	\N
1096	99	DoCreate	创建提交	\N	\N	/Api/CoreCmsForm/DoCreate	1	3	CoreCmsForm:DoCreate	\N	\N	f	f	2021-10-11 22:53:31	\N
1097	99	GetEdit	编辑数据	\N	\N	/Api/CoreCmsForm/GetEdit	1	4	CoreCmsForm:GetEdit	\N	\N	f	f	2021-10-11 22:53:31	\N
1098	99	DoEdit	编辑提交	\N	\N	/Api/CoreCmsForm/DoEdit	1	5	CoreCmsForm:DoEdit	\N	\N	f	f	2021-10-11 22:53:31	\N
1099	99	DoDelete	单选删除	\N	\N	/Api/CoreCmsForm/DoDelete	1	6	CoreCmsForm:DoDelete	\N	\N	f	f	2021-10-11 22:53:31	\N
1100	99	GetDetails	预览数据	\N	\N	/Api/CoreCmsForm/GetDetails	1	7	CoreCmsForm:GetDetails	\N	\N	f	f	2021-10-11 22:53:31	\N
1101	99	DoSetisLogin	设置是否需要登录	\N	\N	/Api/CoreCmsForm/DoSetisLogin	1	8	CoreCmsForm:DoSetisLogin	\N	\N	f	f	2021-10-11 22:53:31	\N
1102	74	GetPageList	获取列表	\N	\N	/Api/CoreCmsAdvertPosition/GetPageList	1	0	CoreCmsAdvertPosition:GetPageList	\N	\N	f	f	2021-10-11 22:53:52	\N
1103	74	GetIndex	首页数据	\N	\N	/Api/CoreCmsAdvertPosition/GetIndex	1	1	CoreCmsAdvertPosition:GetIndex	\N	\N	f	f	2021-10-11 22:53:52	\N
1104	74	GetCreate	创建数据	\N	\N	/Api/CoreCmsAdvertPosition/GetCreate	1	2	CoreCmsAdvertPosition:GetCreate	\N	\N	f	f	2021-10-11 22:53:52	\N
1105	74	DoCreate	创建提交	\N	\N	/Api/CoreCmsAdvertPosition/DoCreate	1	3	CoreCmsAdvertPosition:DoCreate	\N	\N	f	f	2021-10-11 22:53:52	\N
1106	74	GetEdit	编辑数据	\N	\N	/Api/CoreCmsAdvertPosition/GetEdit	1	4	CoreCmsAdvertPosition:GetEdit	\N	\N	f	f	2021-10-11 22:53:52	\N
1107	74	DoEdit	编辑提交	\N	\N	/Api/CoreCmsAdvertPosition/DoEdit	1	5	CoreCmsAdvertPosition:DoEdit	\N	\N	f	f	2021-10-11 22:53:52	\N
1108	74	DoDelete	单选删除	\N	\N	/Api/CoreCmsAdvertPosition/DoDelete	1	6	CoreCmsAdvertPosition:DoDelete	\N	\N	f	f	2021-10-11 22:53:52	\N
1109	74	DoSetisEnable	设置状态	\N	\N	/Api/CoreCmsAdvertPosition/DoSetisEnable	1	7	CoreCmsAdvertPosition:DoSetisEnable	\N	\N	f	f	2021-10-11 22:53:52	\N
1110	75	GetPageList	获取列表	\N	\N	/Api/CoreCmsAdvertisement/GetPageList	1	0	CoreCmsAdvertisement:GetPageList	\N	\N	f	f	2021-10-11 22:53:58	\N
1111	75	GetIndex	首页数据	\N	\N	/Api/CoreCmsAdvertisement/GetIndex	1	1	CoreCmsAdvertisement:GetIndex	\N	\N	f	f	2021-10-11 22:53:58	\N
1112	75	GetCreate	创建数据	\N	\N	/Api/CoreCmsAdvertisement/GetCreate	1	2	CoreCmsAdvertisement:GetCreate	\N	\N	f	f	2021-10-11 22:53:58	\N
1113	75	DoCreate	创建提交	\N	\N	/Api/CoreCmsAdvertisement/DoCreate	1	3	CoreCmsAdvertisement:DoCreate	\N	\N	f	f	2021-10-11 22:53:58	\N
1114	75	GetEdit	编辑数据	\N	\N	/Api/CoreCmsAdvertisement/GetEdit	1	4	CoreCmsAdvertisement:GetEdit	\N	\N	f	f	2021-10-11 22:53:58	\N
1115	75	DoEdit	编辑提交	\N	\N	/Api/CoreCmsAdvertisement/DoEdit	1	5	CoreCmsAdvertisement:DoEdit	\N	\N	f	f	2021-10-11 22:53:58	\N
1116	75	DoDelete	单选删除	\N	\N	/Api/CoreCmsAdvertisement/DoDelete	1	6	CoreCmsAdvertisement:DoDelete	\N	\N	f	f	2021-10-11 22:53:58	\N
1117	75	GetGoods	获取商品列表	\N	\N	/Api/CoreCmsAdvertisement/GetGoods	1	7	CoreCmsAdvertisement:GetGoods	\N	\N	f	f	2021-10-11 22:53:58	\N
1118	75	GetArticle	获取文章列表	\N	\N	/Api/CoreCmsAdvertisement/GetArticle	1	8	CoreCmsAdvertisement:GetArticle	\N	\N	f	f	2021-10-11 22:53:58	\N
1119	75	GetArticleType	获取文章分类列表	\N	\N	/Api/CoreCmsAdvertisement/GetArticleType	1	9	CoreCmsAdvertisement:GetArticleType	\N	\N	f	f	2021-10-11 22:53:58	\N
1120	70	GetPageList	获取列表	\N	\N	/Api/CoreCmsArticle/GetPageList	1	0	CoreCmsArticle:GetPageList	\N	\N	f	f	2021-10-11 22:54:09	\N
1121	70	GetIndex	首页数据	\N	\N	/Api/CoreCmsArticle/GetIndex	1	1	CoreCmsArticle:GetIndex	\N	\N	f	f	2021-10-11 22:54:09	\N
1122	70	GetCreate	创建数据	\N	\N	/Api/CoreCmsArticle/GetCreate	1	2	CoreCmsArticle:GetCreate	\N	\N	f	f	2021-10-11 22:54:09	\N
1123	70	DoCreate	创建提交	\N	\N	/Api/CoreCmsArticle/DoCreate	1	3	CoreCmsArticle:DoCreate	\N	\N	f	f	2021-10-11 22:54:09	\N
1124	70	GetEdit	编辑数据	\N	\N	/Api/CoreCmsArticle/GetEdit	1	4	CoreCmsArticle:GetEdit	\N	\N	f	f	2021-10-11 22:54:09	\N
1125	70	DoEdit	编辑提交	\N	\N	/Api/CoreCmsArticle/DoEdit	1	5	CoreCmsArticle:DoEdit	\N	\N	f	f	2021-10-11 22:54:09	\N
1126	70	DoDelete	单选删除	\N	\N	/Api/CoreCmsArticle/DoDelete	1	6	CoreCmsArticle:DoDelete	\N	\N	f	f	2021-10-11 22:54:09	\N
1127	70	DoSetisPub	设置是否发布	\N	\N	/Api/CoreCmsArticle/DoSetisPub	1	7	CoreCmsArticle:DoSetisPub	\N	\N	f	f	2021-10-11 22:54:09	\N
1128	70	DoSetisDel	设置是否删除	\N	\N	/Api/CoreCmsArticle/DoSetisDel	1	8	CoreCmsArticle:DoSetisDel	\N	\N	f	f	2021-10-11 22:54:09	\N
1129	71	GetPageList	获取列表	\N	\N	/Api/CoreCmsArticleType/GetPageList	1	0	CoreCmsArticleType:GetPageList	\N	\N	f	f	2021-10-11 22:54:17	\N
1130	71	GetIndex	首页数据	\N	\N	/Api/CoreCmsArticleType/GetIndex	1	1	CoreCmsArticleType:GetIndex	\N	\N	f	f	2021-10-11 22:54:17	\N
1131	71	GetCreate	创建数据	\N	\N	/Api/CoreCmsArticleType/GetCreate	1	2	CoreCmsArticleType:GetCreate	\N	\N	f	f	2021-10-11 22:54:17	\N
1132	71	DoCreate	创建提交	\N	\N	/Api/CoreCmsArticleType/DoCreate	1	3	CoreCmsArticleType:DoCreate	\N	\N	f	f	2021-10-11 22:54:17	\N
1133	71	GetEdit	编辑数据	\N	\N	/Api/CoreCmsArticleType/GetEdit	1	4	CoreCmsArticleType:GetEdit	\N	\N	f	f	2021-10-11 22:54:17	\N
1134	71	DoEdit	编辑提交	\N	\N	/Api/CoreCmsArticleType/DoEdit	1	5	CoreCmsArticleType:DoEdit	\N	\N	f	f	2021-10-11 22:54:17	\N
1135	71	DoDelete	单选删除	\N	\N	/Api/CoreCmsArticleType/DoDelete	1	6	CoreCmsArticleType:DoDelete	\N	\N	f	f	2021-10-11 22:54:17	\N
1136	622	GetPageList	获取列表	\N	\N	/Api/CoreCmsProducts/GetPageList	1	0	CoreCmsProducts:GetPageList	\N	\N	f	f	2021-10-11 22:56:45	\N
1137	622	GetIndex	首页数据	\N	\N	/Api/CoreCmsProducts/GetIndex	1	1	CoreCmsProducts:GetIndex	\N	\N	f	f	2021-10-11 22:56:45	\N
1138	622	GetDetails	预览数据	\N	\N	/Api/CoreCmsProducts/GetDetails	1	2	CoreCmsProducts:GetDetails	\N	\N	f	f	2021-10-11 22:56:45	\N
1139	622	DoSetStock	设置库存	\N	\N	/Api/CoreCmsProducts/DoSetStock	1	3	CoreCmsProducts:DoSetStock	\N	\N	f	f	2021-10-11 22:56:45	\N
1140	614	GetPageList	获取列表	\N	\N	/Api/CoreCmsStock/GetPageList	1	0	CoreCmsStock:GetPageList	\N	\N	f	f	2021-10-11 22:56:59	\N
1141	614	GetIndex	首页数据	\N	\N	/Api/CoreCmsStock/GetIndex	1	1	CoreCmsStock:GetIndex	\N	\N	f	f	2021-10-11 22:56:59	\N
1142	614	GetCreate	创建数据	\N	\N	/Api/CoreCmsStock/GetCreate	1	2	CoreCmsStock:GetCreate	\N	\N	f	f	2021-10-11 22:56:59	\N
1143	614	DoCreate	创建提交	\N	\N	/Api/CoreCmsStock/DoCreate	1	3	CoreCmsStock:DoCreate	\N	\N	f	f	2021-10-11 22:56:59	\N
1144	614	GetDetails	预览数据	\N	\N	/Api/CoreCmsStock/GetDetails	1	4	CoreCmsStock:GetDetails	\N	\N	f	f	2021-10-11 22:56:59	\N
1145	615	GetPageList	获取列表	\N	\N	/Api/CoreCmsStockLog/GetPageList	1	0	CoreCmsStockLog:GetPageList	\N	\N	f	f	2021-10-11 22:57:10	\N
1146	615	GetIndex	首页数据	\N	\N	/Api/CoreCmsStockLog/GetIndex	1	1	CoreCmsStockLog:GetIndex	\N	\N	f	f	2021-10-11 22:57:10	\N
1147	615	GetCreate	创建数据	\N	\N	/Api/CoreCmsStockLog/GetCreate	1	2	CoreCmsStockLog:GetCreate	\N	\N	f	f	2021-10-11 22:57:10	\N
1151	88	GetGoodsCollection	商品收藏统计	\N	\N	/Api/CoreCmsReports/GetGoodsCollection	1	0	CoreCmsReports:GetGoodsCollection	\N	\N	f	f	2021-10-11 22:58:36	\N
1152	88	GetDateType	换算前台时间按钮	\N	\N	/Api/CoreCmsReports/GetDateType	1	1	CoreCmsReports:GetDateType	\N	\N	f	f	2021-10-11 22:58:36	\N
1153	87	GetGoods	商品销量统计	\N	\N	/Api/CoreCmsReports/GetGoods	1	0	CoreCmsReports:GetGoods	\N	\N	f	f	2021-10-11 22:58:58	\N
1154	87	GetDateType	换算前台时间按钮	\N	\N	/Api/CoreCmsReports/GetDateType	1	1	CoreCmsReports:GetDateType	\N	\N	f	f	2021-10-11 22:58:58	\N
1155	86	GetPayments	财务收款单	\N	\N	/Api/CoreCmsReports/GetPayments	1	0	CoreCmsReports:GetPayments	\N	\N	f	f	2021-10-11 22:59:09	\N
1156	86	GetDateType	换算前台时间按钮	\N	\N	/Api/CoreCmsReports/GetDateType	1	1	CoreCmsReports:GetDateType	\N	\N	f	f	2021-10-11 22:59:09	\N
1157	85	GetOrder	订单销量统计	\N	\N	/Api/CoreCmsReports/GetOrder	1	0	CoreCmsReports:GetOrder	\N	\N	f	f	2021-10-11 22:59:20	\N
1158	85	GetDateType	换算前台时间按钮	\N	\N	/Api/CoreCmsReports/GetDateType	1	1	CoreCmsReports:GetDateType	\N	\N	f	f	2021-10-11 22:59:20	\N
1193	44	GetIndex	首页数据	\N	\N	/Api/CoreCmsSetting/GetIndex	1	0	CoreCmsSetting:GetIndex	\N	\N	f	f	2021-10-11 23:00:40	\N
1194	44	DoSave	保存提交	\N	\N	/Api/CoreCmsSetting/DoSave	1	1	CoreCmsSetting:DoSave	\N	\N	f	f	2021-10-11 23:00:40	\N
1195	97	GetPageList	获取列表	\N	\N	/Api/CoreCmsPages/GetPageList	1	0	CoreCmsPages:GetPageList	\N	\N	f	f	2021-10-11 23:00:47	\N
1196	97	GetIndex	首页数据	\N	\N	/Api/CoreCmsPages/GetIndex	1	1	CoreCmsPages:GetIndex	\N	\N	f	f	2021-10-11 23:00:47	\N
1197	97	GetCreate	创建数据	\N	\N	/Api/CoreCmsPages/GetCreate	1	2	CoreCmsPages:GetCreate	\N	\N	f	f	2021-10-11 23:00:47	\N
1198	97	DoCreate	创建提交	\N	\N	/Api/CoreCmsPages/DoCreate	1	3	CoreCmsPages:DoCreate	\N	\N	f	f	2021-10-11 23:00:47	\N
1199	97	GetEdit	编辑数据	\N	\N	/Api/CoreCmsPages/GetEdit	1	4	CoreCmsPages:GetEdit	\N	\N	f	f	2021-10-11 23:00:47	\N
1200	97	DoEdit	编辑提交	\N	\N	/Api/CoreCmsPages/DoEdit	1	5	CoreCmsPages:DoEdit	\N	\N	f	f	2021-10-11 23:00:47	\N
1201	97	DoDelete	单选删除	\N	\N	/Api/CoreCmsPages/DoDelete	1	6	CoreCmsPages:DoDelete	\N	\N	f	f	2021-10-11 23:00:47	\N
1202	97	DoCopy	复制数据	\N	\N	/Api/CoreCmsPages/DoCopy	1	7	CoreCmsPages:DoCopy	\N	\N	f	f	2021-10-11 23:00:47	\N
1203	97	GetDesign	版面设计	\N	\N	/Api/CoreCmsPages/GetDesign	1	8	CoreCmsPages:GetDesign	\N	\N	f	f	2021-10-11 23:00:47	\N
1204	97	DoDesign	版面设计提交	\N	\N	/Api/CoreCmsPages/DoDesign	1	9	CoreCmsPages:DoDesign	\N	\N	f	f	2021-10-11 23:00:47	\N
1205	97	GetPageData	获取已存储数据	\N	\N	/Api/CoreCmsPages/GetPageData	1	10	CoreCmsPages:GetPageData	\N	\N	f	f	2021-10-11 23:00:47	\N
1206	97	GetArticleTypes	获取文章类别	\N	\N	/Api/CoreCmsPages/GetArticleTypes	1	11	CoreCmsPages:GetArticleTypes	\N	\N	f	f	2021-10-11 23:00:47	\N
1207	125	GetPageList	获取列表	\N	\N	/Api/CoreCmsServiceDescription/GetPageList	1	0	CoreCmsServiceDescription:GetPageList	\N	\N	f	f	2021-10-11 23:00:55	\N
1208	125	GetIndex	首页数据	\N	\N	/Api/CoreCmsServiceDescription/GetIndex	1	1	CoreCmsServiceDescription:GetIndex	\N	\N	f	f	2021-10-11 23:00:55	\N
1209	125	GetCreate	创建数据	\N	\N	/Api/CoreCmsServiceDescription/GetCreate	1	2	CoreCmsServiceDescription:GetCreate	\N	\N	f	f	2021-10-11 23:00:55	\N
1210	125	DoCreate	创建提交	\N	\N	/Api/CoreCmsServiceDescription/DoCreate	1	3	CoreCmsServiceDescription:DoCreate	\N	\N	f	f	2021-10-11 23:00:55	\N
1211	125	GetEdit	编辑数据	\N	\N	/Api/CoreCmsServiceDescription/GetEdit	1	4	CoreCmsServiceDescription:GetEdit	\N	\N	f	f	2021-10-11 23:00:55	\N
1212	125	DoEdit	编辑提交	\N	\N	/Api/CoreCmsServiceDescription/DoEdit	1	5	CoreCmsServiceDescription:DoEdit	\N	\N	f	f	2021-10-11 23:00:55	\N
1213	125	DoDelete	单选删除	\N	\N	/Api/CoreCmsServiceDescription/DoDelete	1	6	CoreCmsServiceDescription:DoDelete	\N	\N	f	f	2021-10-11 23:00:55	\N
1214	125	GetDetails	预览数据	\N	\N	/Api/CoreCmsServiceDescription/GetDetails	1	7	CoreCmsServiceDescription:GetDetails	\N	\N	f	f	2021-10-11 23:00:55	\N
1215	125	DoSetisShow	设置是否展示	\N	\N	/Api/CoreCmsServiceDescription/DoSetisShow	1	8	CoreCmsServiceDescription:DoSetisShow	\N	\N	f	f	2021-10-11 23:00:55	\N
1216	62	GetPageList	获取列表	\N	\N	/Api/CoreCmsShip/GetPageList	1	0	CoreCmsShip:GetPageList	\N	\N	f	f	2021-10-11 23:01:08	\N
1217	62	GetIndex	首页数据	\N	\N	/Api/CoreCmsShip/GetIndex	1	1	CoreCmsShip:GetIndex	\N	\N	f	f	2021-10-11 23:01:08	\N
1218	62	GetCreate	创建数据	\N	\N	/Api/CoreCmsShip/GetCreate	1	2	CoreCmsShip:GetCreate	\N	\N	f	f	2021-10-11 23:01:08	\N
1219	62	DoCreate	创建提交	\N	\N	/Api/CoreCmsShip/DoCreate	1	3	CoreCmsShip:DoCreate	\N	\N	f	f	2021-10-11 23:01:08	\N
1220	62	GetEdit	编辑数据	\N	\N	/Api/CoreCmsShip/GetEdit	1	4	CoreCmsShip:GetEdit	\N	\N	f	f	2021-10-11 23:01:08	\N
1221	62	DoEdit	编辑提交	\N	\N	/Api/CoreCmsShip/DoEdit	1	5	CoreCmsShip:DoEdit	\N	\N	f	f	2021-10-11 23:01:08	\N
1222	62	DoDelete	单选删除	\N	\N	/Api/CoreCmsShip/DoDelete	1	6	CoreCmsShip:DoDelete	\N	\N	f	f	2021-10-11 23:01:08	\N
1223	62	DoSetisCashOnDelivery	设置是否货到付款	\N	\N	/Api/CoreCmsShip/DoSetisCashOnDelivery	1	7	CoreCmsShip:DoSetisCashOnDelivery	\N	\N	f	f	2021-10-11 23:01:08	\N
1224	62	DoSetisdefaultAreaFee	设置是否按地区设置配送费用	\N	\N	/Api/CoreCmsShip/DoSetisdefaultAreaFee	1	8	CoreCmsShip:DoSetisdefaultAreaFee	\N	\N	f	f	2021-10-11 23:01:08	\N
1225	62	DoSetisDefault	设置是否默认	\N	\N	/Api/CoreCmsShip/DoSetisDefault	1	9	CoreCmsShip:DoSetisDefault	\N	\N	f	f	2021-10-11 23:01:08	\N
1226	62	DoSetisfreePostage	设置是否包邮	\N	\N	/Api/CoreCmsShip/DoSetisfreePostage	1	10	CoreCmsShip:DoSetisfreePostage	\N	\N	f	f	2021-10-11 23:01:08	\N
1227	63	GetPageList	获取列表	\N	\N	/Api/CoreCmsStore/GetPageList	1	0	CoreCmsStore:GetPageList	\N	\N	f	f	2021-10-11 23:01:16	\N
1228	63	GetIndex	首页数据	\N	\N	/Api/CoreCmsStore/GetIndex	1	1	CoreCmsStore:GetIndex	\N	\N	f	f	2021-10-11 23:01:16	\N
1229	63	GetCreate	创建数据	\N	\N	/Api/CoreCmsStore/GetCreate	1	2	CoreCmsStore:GetCreate	\N	\N	f	f	2021-10-11 23:01:16	\N
1230	63	DoCreate	创建提交	\N	\N	/Api/CoreCmsStore/DoCreate	1	3	CoreCmsStore:DoCreate	\N	\N	f	f	2021-10-11 23:01:16	\N
1231	63	GetEdit	编辑数据	\N	\N	/Api/CoreCmsStore/GetEdit	1	4	CoreCmsStore:GetEdit	\N	\N	f	f	2021-10-11 23:01:16	\N
1232	63	DoEdit	编辑提交	\N	\N	/Api/CoreCmsStore/DoEdit	1	5	CoreCmsStore:DoEdit	\N	\N	f	f	2021-10-11 23:01:16	\N
1233	63	DoDelete	单选删除	\N	\N	/Api/CoreCmsStore/DoDelete	1	6	CoreCmsStore:DoDelete	\N	\N	f	f	2021-10-11 23:01:16	\N
1234	63	DoSetisDefault	设置是否默认	\N	\N	/Api/CoreCmsStore/DoSetisDefault	1	7	CoreCmsStore:DoSetisDefault	\N	\N	f	f	2021-10-11 23:01:16	\N
1235	63	GetClerkPageList	获取列表	\N	\N	/Api/CoreCmsStore/GetClerkPageList	1	8	CoreCmsStore:GetClerkPageList	\N	\N	f	f	2021-10-11 23:01:16	\N
1236	63	GetClerkIndex	店员首页数据	\N	\N	/Api/CoreCmsStore/GetClerkIndex	1	9	CoreCmsStore:GetClerkIndex	\N	\N	f	f	2021-10-11 23:01:16	\N
1237	63	GetClerkCreate	创建店员数据	\N	\N	/Api/CoreCmsStore/GetClerkCreate	1	10	CoreCmsStore:GetClerkCreate	\N	\N	f	f	2021-10-11 23:01:16	\N
1238	63	DoClerkCreate	创建店员提交	\N	\N	/Api/CoreCmsStore/DoClerkCreate	1	11	CoreCmsStore:DoClerkCreate	\N	\N	f	f	2021-10-11 23:01:16	\N
1239	63	GetClerkEdit	编辑店员数据	\N	\N	/Api/CoreCmsStore/GetClerkEdit	1	12	CoreCmsStore:GetClerkEdit	\N	\N	f	f	2021-10-11 23:01:16	\N
1240	63	DoClerkEdit	编辑店员提交	\N	\N	/Api/CoreCmsStore/DoClerkEdit	1	13	CoreCmsStore:DoClerkEdit	\N	\N	f	f	2021-10-11 23:01:16	\N
1241	63	DoClerkDelete	单选删除店员	\N	\N	/Api/CoreCmsStore/DoClerkDelete	1	14	CoreCmsStore:DoClerkDelete	\N	\N	f	f	2021-10-11 23:01:16	\N
1242	63	DoClerkBatchDelete	批量删除店员	\N	\N	/Api/CoreCmsStore/DoClerkBatchDelete	1	15	CoreCmsStore:DoClerkBatchDelete	\N	\N	f	f	2021-10-11 23:01:16	\N
1243	64	GetPageList	获取列表	\N	\N	/Api/CoreCmsLogistics/GetPageList	1	0	CoreCmsLogistics:GetPageList	\N	\N	f	f	2021-10-11 23:01:26	\N
1244	64	GetIndex	首页数据	\N	\N	/Api/CoreCmsLogistics/GetIndex	1	1	CoreCmsLogistics:GetIndex	\N	\N	f	f	2021-10-11 23:01:26	\N
1245	64	DoSetisDelete	设置是否删除	\N	\N	/Api/CoreCmsLogistics/DoSetisDelete	1	2	CoreCmsLogistics:DoSetisDelete	\N	\N	f	f	2021-10-11 23:01:26	\N
1246	64	DoUpdateCompany	单选删除	\N	\N	/Api/CoreCmsLogistics/DoUpdateCompany	1	3	CoreCmsLogistics:DoUpdateCompany	\N	\N	f	f	2021-10-11 23:01:26	\N
1247	100	GetAllList	获取列表	\N	\N	/Api/CoreCmsArea/GetAllList	1	0	CoreCmsArea:GetAllList	\N	\N	f	f	2021-10-11 23:01:31	\N
1248	100	GetPageList	获取列表	\N	\N	/Api/CoreCmsArea/GetPageList	1	1	CoreCmsArea:GetPageList	\N	\N	f	f	2021-10-11 23:01:31	\N
1249	100	GetIndex	首页数据	\N	\N	/Api/CoreCmsArea/GetIndex	1	2	CoreCmsArea:GetIndex	\N	\N	f	f	2021-10-11 23:01:31	\N
1250	100	GetCreate	创建数据	\N	\N	/Api/CoreCmsArea/GetCreate	1	3	CoreCmsArea:GetCreate	\N	\N	f	f	2021-10-11 23:01:31	\N
1251	100	DoCreate	创建提交	\N	\N	/Api/CoreCmsArea/DoCreate	1	4	CoreCmsArea:DoCreate	\N	\N	f	f	2021-10-11 23:01:31	\N
1252	100	GetEdit	编辑数据	\N	\N	/Api/CoreCmsArea/GetEdit	1	5	CoreCmsArea:GetEdit	\N	\N	f	f	2021-10-11 23:01:31	\N
1253	100	DoEdit	编辑提交	\N	\N	/Api/CoreCmsArea/DoEdit	1	6	CoreCmsArea:DoEdit	\N	\N	f	f	2021-10-11 23:01:31	\N
1254	100	DoDelete	单选删除	\N	\N	/Api/CoreCmsArea/DoDelete	1	7	CoreCmsArea:DoDelete	\N	\N	f	f	2021-10-11 23:01:31	\N
1255	96	GetPageList	获取列表	\N	\N	/Api/CoreCmsMessageCenter/GetPageList	1	0	CoreCmsMessageCenter:GetPageList	\N	\N	f	f	2021-10-11 23:01:53	\N
1256	96	GetIndex	首页数据	\N	\N	/Api/CoreCmsMessageCenter/GetIndex	1	1	CoreCmsMessageCenter:GetIndex	\N	\N	f	f	2021-10-11 23:01:53	\N
1257	96	DoSetisSms	设置启用短信	\N	\N	/Api/CoreCmsMessageCenter/DoSetisSms	1	2	CoreCmsMessageCenter:DoSetisSms	\N	\N	f	f	2021-10-11 23:01:53	\N
1258	96	DoSetisMessage	设置启用站内消息	\N	\N	/Api/CoreCmsMessageCenter/DoSetisMessage	1	3	CoreCmsMessageCenter:DoSetisMessage	\N	\N	f	f	2021-10-11 23:01:53	\N
1259	96	DoSetisWxTempletMessage	设置启用微信模板消息	\N	\N	/Api/CoreCmsMessageCenter/DoSetisWxTempletMessage	1	4	CoreCmsMessageCenter:DoSetisWxTempletMessage	\N	\N	f	f	2021-10-11 23:01:53	\N
1260	106	GetIndex	首页数据	\N	\N	/Api/CoreCmsUserWeChatMsgTemplate/GetIndex	1	0	CoreCmsUserWeChatMsgTemplate:GetIndex	\N	\N	f	f	2021-10-11 23:02:29	\N
1261	106	GetEdit	编辑数据	\N	\N	/Api/CoreCmsUserWeChatMsgTemplate/GetEdit	1	1	CoreCmsUserWeChatMsgTemplate:GetEdit	\N	\N	f	f	2021-10-11 23:02:29	\N
1262	106	DoEdit	编辑提交	\N	\N	/Api/CoreCmsUserWeChatMsgTemplate/DoEdit	1	2	CoreCmsUserWeChatMsgTemplate:DoEdit	\N	\N	f	f	2021-10-11 23:02:29	\N
1263	662	GetIndex	首页数据	\N	\N	/Api/CoreCmsSmsSetting/GetIndex	1	0	CoreCmsSmsSetting:GetIndex	\N	\N	f	f	2021-10-11 23:03:05	\N
1264	662	DoSave	保存提交	\N	\N	/Api/CoreCmsSmsSetting/DoSave	1	1	CoreCmsSmsSetting:DoSave	\N	\N	f	f	2021-10-11 23:03:05	\N
1265	50	GetPageList	获取列表	\N	\N	/Api/CoreCmsSms/GetPageList	1	0	CoreCmsSms:GetPageList	\N	\N	f	f	2021-10-11 23:03:15	\N
1266	50	GetIndex	首页数据	\N	\N	/Api/CoreCmsSms/GetIndex	1	1	CoreCmsSms:GetIndex	\N	\N	f	f	2021-10-11 23:03:15	\N
1267	50	DoDelete	单选删除	\N	\N	/Api/CoreCmsSms/DoDelete	1	2	CoreCmsSms:DoDelete	\N	\N	f	f	2021-10-11 23:03:15	\N
1268	50	DoBatchDelete	批量删除	\N	\N	/Api/CoreCmsSms/DoBatchDelete	1	3	CoreCmsSms:DoBatchDelete	\N	\N	f	f	2021-10-11 23:03:15	\N
1269	52	GetPageList	获取列表	\N	\N	/Api/CoreCmsGoods/GetPageList	1	0	CoreCmsGoods:GetPageList	\N	\N	f	f	2021-10-15 12:53:10	\N
1270	52	GetIndex	首页数据	\N	\N	/Api/CoreCmsGoods/GetIndex	1	1	CoreCmsGoods:GetIndex	\N	\N	f	f	2021-10-15 12:53:10	\N
1271	52	GetCreate	创建数据	\N	\N	/Api/CoreCmsGoods/GetCreate	1	2	CoreCmsGoods:GetCreate	\N	\N	f	f	2021-10-15 12:53:10	\N
1272	52	DoCreate	创建提交	\N	\N	/Api/CoreCmsGoods/DoCreate	1	3	CoreCmsGoods:DoCreate	\N	\N	f	f	2021-10-15 12:53:10	\N
1273	52	GetEdit	编辑数据	\N	\N	/Api/CoreCmsGoods/GetEdit	1	4	CoreCmsGoods:GetEdit	\N	\N	f	f	2021-10-15 12:53:10	\N
1274	52	DoEdit	编辑提交	\N	\N	/Api/CoreCmsGoods/DoEdit	1	5	CoreCmsGoods:DoEdit	\N	\N	f	f	2021-10-15 12:53:10	\N
1275	52	DoDelete	单选删除	\N	\N	/Api/CoreCmsGoods/DoDelete	1	6	CoreCmsGoods:DoDelete	\N	\N	f	f	2021-10-15 12:53:10	\N
1276	52	GetDetails	预览数据	\N	\N	/Api/CoreCmsGoods/GetDetails	1	7	CoreCmsGoods:GetDetails	\N	\N	f	f	2021-10-15 12:53:10	\N
1277	52	DoSetisNomalVirtual	设置是否虚拟商品	\N	\N	/Api/CoreCmsGoods/DoSetisNomalVirtual	1	8	CoreCmsGoods:DoSetisNomalVirtual	\N	\N	f	f	2021-10-15 12:53:10	\N
1278	52	DoSetisMarketable	设置是否上架	\N	\N	/Api/CoreCmsGoods/DoSetisMarketable	1	9	CoreCmsGoods:DoSetisMarketable	\N	\N	f	f	2021-10-15 12:53:10	\N
1279	52	DoSetisRecommend	设置是否推荐	\N	\N	/Api/CoreCmsGoods/DoSetisRecommend	1	10	CoreCmsGoods:DoSetisRecommend	\N	\N	f	f	2021-10-15 12:53:10	\N
1280	52	DoSetisHot	设置是否热门	\N	\N	/Api/CoreCmsGoods/DoSetisHot	1	11	CoreCmsGoods:DoSetisHot	\N	\N	f	f	2021-10-15 12:53:10	\N
1281	52	DoSetisDel	设置是否删除	\N	\N	/Api/CoreCmsGoods/DoSetisDel	1	12	CoreCmsGoods:DoSetisDel	\N	\N	f	f	2021-10-15 12:53:10	\N
1282	52	GetSkuDetail	获取商品SKU明细	\N	\N	/Api/CoreCmsGoods/GetSkuDetail	1	13	CoreCmsGoods:GetSkuDetail	\N	\N	f	f	2021-10-15 12:53:10	\N
1283	52	GetSpecHtml	根据属性值生成货品html	\N	\N	/Api/CoreCmsGoods/GetSpecHtml	1	14	CoreCmsGoods:GetSpecHtml	\N	\N	f	f	2021-10-15 12:53:10	\N
1284	52	DoBatchDelete	批量删除	\N	\N	/Api/CoreCmsGoods/DoBatchDelete	1	15	CoreCmsGoods:DoBatchDelete	\N	\N	f	f	2021-10-15 12:53:10	\N
1285	52	DoBatchMarketableUp	批量上架	\N	\N	/Api/CoreCmsGoods/DoBatchMarketableUp	1	16	CoreCmsGoods:DoBatchMarketableUp	\N	\N	f	f	2021-10-15 12:53:10	\N
1286	52	DoBatchMarketableDown	批量下架	\N	\N	/Api/CoreCmsGoods/DoBatchMarketableDown	1	17	CoreCmsGoods:DoBatchMarketableDown	\N	\N	f	f	2021-10-15 12:53:10	\N
1287	52	GetBatchModifyPrice	批量修改价格	\N	\N	/Api/CoreCmsGoods/GetBatchModifyPrice	1	18	CoreCmsGoods:GetBatchModifyPrice	\N	\N	f	f	2021-10-15 12:53:10	\N
1288	52	DoBatchModifyPrice	批量修改价格提交	\N	\N	/Api/CoreCmsGoods/DoBatchModifyPrice	1	19	CoreCmsGoods:DoBatchModifyPrice	\N	\N	f	f	2021-10-15 12:53:10	\N
1289	52	GetBatchModifyStock	批量修改库存	\N	\N	/Api/CoreCmsGoods/GetBatchModifyStock	1	20	CoreCmsGoods:GetBatchModifyStock	\N	\N	f	f	2021-10-15 12:53:10	\N
1290	52	DoBatchModifyStock	批量修改库存提交	\N	\N	/Api/CoreCmsGoods/DoBatchModifyStock	1	21	CoreCmsGoods:DoBatchModifyStock	\N	\N	f	f	2021-10-15 12:53:10	\N
1291	52	GetLabel	设置标签	\N	\N	/Api/CoreCmsGoods/GetLabel	1	22	CoreCmsGoods:GetLabel	\N	\N	f	f	2021-10-15 12:53:10	\N
1292	52	DoSetLabel	设置标签提交	\N	\N	/Api/CoreCmsGoods/DoSetLabel	1	23	CoreCmsGoods:DoSetLabel	\N	\N	f	f	2021-10-15 12:53:10	\N
1293	52	GetDeleteLabel	去除标签	\N	\N	/Api/CoreCmsGoods/GetDeleteLabel	1	24	CoreCmsGoods:GetDeleteLabel	\N	\N	f	f	2021-10-15 12:53:10	\N
1294	52	DoDeleteLabel	去除标签提交	\N	\N	/Api/CoreCmsGoods/DoDeleteLabel	1	25	CoreCmsGoods:DoDeleteLabel	\N	\N	f	f	2021-10-15 12:53:10	\N
\.


--
-- Data for Name: sysnlogrecords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysnlogrecords (id, logdate, loglevel, logtype, logtitle, logger, message, exception, machinename, machineip, netrequestmethod, netrequesturl, netuserisauthenticated, netuserauthtype, netuseridentity) FROM stdin;
\.


--
-- Data for Name: sysoperrecord; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysoperrecord (id, userid, username, model, description, url, requestmethod, opermethod, param, result, ip, spendtime, state, createtime) FROM stdin;
\.


--
-- Data for Name: sysorganization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysorganization (id, parentid, organizationname, organizationfullname, organizationtype, leaderid, sortnumber, comments, deleted, createtime, updatetime) FROM stdin;
1	0	XXX公司	XXXXXXXXX科技有限公司	4	\N	1		f	1753-01-01 00:00:00	\N
2	1	研发部	研发部	5	\N	2		f	2020-03-15 13:15:16	2020-03-16 00:43:09
3	8	高教组	高等教育行业项目组	4	\N	3		f	1753-01-01 00:00:00	\N
6	2	仿真组	虚拟仿真行业项目组	6	6	6		f	2020-03-15 13:16:57	2020-03-16 00:43:03
8	1	设计部	UI设计部门	5	\N	7		f	2020-03-15 13:17:56	2020-03-16 00:43:18
9	1	市场部	市场部	5	\N	8		f	2020-03-15 13:18:15	2020-03-16 00:43:23
10	2	测试组	测试组来了	5	\N	2	测试组备注了	f	1753-01-01 00:00:00	\N
11	1	测试大组	测试大组来了	4	\N	333	22321	f	1753-01-01 00:00:00	\N
\.


--
-- Data for Name: sysrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysrole (id, rolename, rolecode, comments, deleted, createtime, updatetime) FROM stdin;
1	管理员	admin	管理员	f	2020-02-26 15:18:37	2020-03-21 15:15:54
2	普通用户	user	普通用户	f	2020-02-26 15:18:52	2021-08-10 01:55:17
3	游客	guest	游客	f	2020-02-26 15:19:49	2020-07-14 23:33:55
5	开发者	dev	开发者	f	2020-07-14 23:34:09	2021-08-10 01:57:22
\.


--
-- Data for Name: sysrolemenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysrolemenu (id, roleid, menuid, createtime, updatetime) FROM stdin;
103	5	1	2020-07-15 00:34:29	\N
104	5	2	2020-07-15 00:34:29	\N
105	5	3	2020-07-15 00:34:29	\N
106	5	4	2020-07-15 00:34:29	\N
107	5	5	2020-07-15 00:34:29	\N
108	5	6	2020-07-15 00:34:29	\N
109	5	7	2020-07-15 00:34:29	\N
110	5	8	2020-07-15 00:34:29	\N
111	5	9	2020-07-15 00:34:29	\N
112	5	10	2020-07-15 00:34:29	\N
113	5	11	2020-07-15 00:34:29	\N
114	5	12	2020-07-15 00:34:29	\N
115	5	13	2020-07-15 00:34:29	\N
116	5	14	2020-07-15 00:34:29	\N
117	5	15	2020-07-15 00:34:29	\N
118	5	16	2020-07-15 00:34:29	\N
119	5	17	2020-07-15 00:34:29	\N
120	5	18	2020-07-15 00:34:29	\N
121	5	19	2020-07-15 00:34:29	\N
122	5	20	2020-07-15 00:34:29	\N
123	5	21	2020-07-15 00:34:29	\N
124	5	22	2020-07-15 00:34:29	\N
125	5	23	2020-07-15 00:34:29	\N
126	5	24	2020-07-15 00:34:29	\N
127	5	25	2020-07-15 00:34:29	\N
128	5	26	2020-07-15 00:34:29	\N
129	5	27	2020-07-15 00:34:29	\N
130	5	28	2020-07-15 00:34:29	\N
131	5	29	2020-07-15 00:34:29	\N
132	5	30	2020-07-15 00:34:29	\N
133	5	31	2020-07-15 00:34:29	\N
134	5	32	2020-07-15 00:34:29	\N
135	5	33	2020-07-15 00:34:29	\N
136	5	34	2020-07-15 00:34:29	\N
137	5	35	2020-07-15 00:34:29	\N
138	5	36	2020-07-15 00:34:29	\N
139	5	37	2020-07-15 00:34:29	\N
17449	1	47	2021-10-15 12:53:20	\N
17450	1	719	2021-10-15 12:53:20	\N
17451	1	751	2021-10-15 12:53:20	\N
17452	1	752	2021-10-15 12:53:20	\N
17453	1	753	2021-10-15 12:53:20	\N
17454	1	48	2021-10-15 12:53:20	\N
17455	1	754	2021-10-15 12:53:20	\N
17456	1	755	2021-10-15 12:53:20	\N
17457	1	756	2021-10-15 12:53:20	\N
17458	1	757	2021-10-15 12:53:20	\N
17459	1	758	2021-10-15 12:53:20	\N
17460	1	759	2021-10-15 12:53:20	\N
17461	1	760	2021-10-15 12:53:20	\N
17462	1	761	2021-10-15 12:53:20	\N
17463	1	762	2021-10-15 12:53:20	\N
17464	1	763	2021-10-15 12:53:20	\N
17465	1	764	2021-10-15 12:53:20	\N
17466	1	765	2021-10-15 12:53:20	\N
17467	1	766	2021-10-15 12:53:20	\N
17468	1	767	2021-10-15 12:53:20	\N
17469	1	768	2021-10-15 12:53:20	\N
17470	1	769	2021-10-15 12:53:20	\N
17471	1	770	2021-10-15 12:53:20	\N
17472	1	49	2021-10-15 12:53:20	\N
17473	1	771	2021-10-15 12:53:20	\N
17474	1	772	2021-10-15 12:53:20	\N
17475	1	773	2021-10-15 12:53:20	\N
17476	1	774	2021-10-15 12:53:20	\N
17477	1	775	2021-10-15 12:53:20	\N
17478	1	776	2021-10-15 12:53:20	\N
17479	1	777	2021-10-15 12:53:20	\N
17480	1	778	2021-10-15 12:53:20	\N
17481	1	779	2021-10-15 12:53:20	\N
17482	1	59	2021-10-15 12:53:20	\N
17483	1	60	2021-10-15 12:53:20	\N
17484	1	804	2021-10-15 12:53:20	\N
17485	1	805	2021-10-15 12:53:20	\N
17486	1	806	2021-10-15 12:53:20	\N
17487	1	807	2021-10-15 12:53:20	\N
17488	1	808	2021-10-15 12:53:20	\N
17489	1	809	2021-10-15 12:53:20	\N
17490	1	810	2021-10-15 12:53:20	\N
17491	1	811	2021-10-15 12:53:20	\N
17492	1	812	2021-10-15 12:53:20	\N
17493	1	813	2021-10-15 12:53:20	\N
17494	1	814	2021-10-15 12:53:20	\N
17495	1	815	2021-10-15 12:53:20	\N
17496	1	816	2021-10-15 12:53:20	\N
17497	1	817	2021-10-15 12:53:20	\N
17498	1	818	2021-10-15 12:53:20	\N
17499	1	819	2021-10-15 12:53:20	\N
17500	1	820	2021-10-15 12:53:20	\N
17501	1	821	2021-10-15 12:53:20	\N
17502	1	822	2021-10-15 12:53:20	\N
17503	1	823	2021-10-15 12:53:20	\N
17504	1	824	2021-10-15 12:53:20	\N
17505	1	825	2021-10-15 12:53:20	\N
17506	1	826	2021-10-15 12:53:20	\N
17507	1	827	2021-10-15 12:53:20	\N
17508	1	828	2021-10-15 12:53:20	\N
17509	1	66	2021-10-15 12:53:20	\N
17510	1	829	2021-10-15 12:53:20	\N
17511	1	830	2021-10-15 12:53:20	\N
17512	1	831	2021-10-15 12:53:20	\N
17513	1	832	2021-10-15 12:53:20	\N
17514	1	833	2021-10-15 12:53:20	\N
17515	1	834	2021-10-15 12:53:20	\N
17516	1	835	2021-10-15 12:53:20	\N
17517	1	65	2021-10-15 12:53:20	\N
17518	1	836	2021-10-15 12:53:20	\N
17519	1	837	2021-10-15 12:53:20	\N
17520	1	838	2021-10-15 12:53:20	\N
17521	1	839	2021-10-15 12:53:20	\N
17522	1	840	2021-10-15 12:53:20	\N
17523	1	841	2021-10-15 12:53:20	\N
17524	1	842	2021-10-15 12:53:20	\N
17525	1	843	2021-10-15 12:53:20	\N
17526	1	844	2021-10-15 12:53:20	\N
17527	1	67	2021-10-15 12:53:20	\N
17528	1	845	2021-10-15 12:53:20	\N
17529	1	846	2021-10-15 12:53:20	\N
17530	1	847	2021-10-15 12:53:20	\N
17531	1	848	2021-10-15 12:53:20	\N
17532	1	849	2021-10-15 12:53:20	\N
17533	1	850	2021-10-15 12:53:20	\N
17534	1	851	2021-10-15 12:53:20	\N
17535	1	76	2021-10-15 12:53:20	\N
17536	1	852	2021-10-15 12:53:20	\N
17537	1	853	2021-10-15 12:53:20	\N
17538	1	854	2021-10-15 12:53:20	\N
17539	1	855	2021-10-15 12:53:20	\N
17540	1	856	2021-10-15 12:53:20	\N
17541	1	857	2021-10-15 12:53:20	\N
17542	1	51	2021-10-15 12:53:20	\N
17543	1	52	2021-10-15 12:53:20	\N
17544	1	1269	2021-10-15 12:53:20	\N
17545	1	1270	2021-10-15 12:53:20	\N
17546	1	1271	2021-10-15 12:53:20	\N
17547	1	1272	2021-10-15 12:53:20	\N
17548	1	1273	2021-10-15 12:53:20	\N
17549	1	1274	2021-10-15 12:53:20	\N
17550	1	1275	2021-10-15 12:53:20	\N
17551	1	1276	2021-10-15 12:53:20	\N
17552	1	1277	2021-10-15 12:53:20	\N
17553	1	1278	2021-10-15 12:53:20	\N
17554	1	1279	2021-10-15 12:53:20	\N
17555	1	1280	2021-10-15 12:53:20	\N
17556	1	1281	2021-10-15 12:53:20	\N
17557	1	1282	2021-10-15 12:53:20	\N
17558	1	1283	2021-10-15 12:53:20	\N
17559	1	1284	2021-10-15 12:53:20	\N
17560	1	1285	2021-10-15 12:53:20	\N
17561	1	1286	2021-10-15 12:53:20	\N
17562	1	1287	2021-10-15 12:53:20	\N
17563	1	1288	2021-10-15 12:53:20	\N
17564	1	1289	2021-10-15 12:53:20	\N
17565	1	1290	2021-10-15 12:53:20	\N
17566	1	1291	2021-10-15 12:53:20	\N
17567	1	1292	2021-10-15 12:53:20	\N
17568	1	1293	2021-10-15 12:53:20	\N
17569	1	1294	2021-10-15 12:53:20	\N
17570	1	110	2021-10-15 12:53:20	\N
17571	1	883	2021-10-15 12:53:20	\N
17572	1	884	2021-10-15 12:53:20	\N
17573	1	885	2021-10-15 12:53:20	\N
17574	1	886	2021-10-15 12:53:20	\N
17575	1	887	2021-10-15 12:53:20	\N
17576	1	888	2021-10-15 12:53:20	\N
17577	1	889	2021-10-15 12:53:20	\N
17578	1	890	2021-10-15 12:53:20	\N
17579	1	891	2021-10-15 12:53:20	\N
17580	1	892	2021-10-15 12:53:20	\N
17581	1	53	2021-10-15 12:53:20	\N
17582	1	893	2021-10-15 12:53:20	\N
17583	1	894	2021-10-15 12:53:20	\N
17584	1	895	2021-10-15 12:53:20	\N
17585	1	896	2021-10-15 12:53:20	\N
17586	1	897	2021-10-15 12:53:20	\N
17587	1	898	2021-10-15 12:53:20	\N
17588	1	899	2021-10-15 12:53:20	\N
17589	1	900	2021-10-15 12:53:20	\N
17590	1	54	2021-10-15 12:53:20	\N
17591	1	901	2021-10-15 12:53:20	\N
17592	1	902	2021-10-15 12:53:20	\N
17593	1	903	2021-10-15 12:53:20	\N
17594	1	904	2021-10-15 12:53:20	\N
17595	1	905	2021-10-15 12:53:20	\N
17596	1	906	2021-10-15 12:53:20	\N
17597	1	907	2021-10-15 12:53:20	\N
17598	1	908	2021-10-15 12:53:20	\N
17599	1	58	2021-10-15 12:53:20	\N
17600	1	909	2021-10-15 12:53:20	\N
17601	1	910	2021-10-15 12:53:20	\N
17602	1	911	2021-10-15 12:53:20	\N
17603	1	912	2021-10-15 12:53:20	\N
17604	1	913	2021-10-15 12:53:20	\N
17605	1	914	2021-10-15 12:53:20	\N
17606	1	915	2021-10-15 12:53:20	\N
17607	1	57	2021-10-15 12:53:20	\N
17608	1	916	2021-10-15 12:53:20	\N
17609	1	917	2021-10-15 12:53:20	\N
17610	1	918	2021-10-15 12:53:20	\N
17611	1	919	2021-10-15 12:53:20	\N
17612	1	920	2021-10-15 12:53:20	\N
17613	1	921	2021-10-15 12:53:20	\N
17614	1	922	2021-10-15 12:53:20	\N
17615	1	923	2021-10-15 12:53:20	\N
17616	1	924	2021-10-15 12:53:20	\N
17617	1	925	2021-10-15 12:53:20	\N
17618	1	56	2021-10-15 12:53:20	\N
17619	1	926	2021-10-15 12:53:20	\N
17620	1	927	2021-10-15 12:53:20	\N
17621	1	928	2021-10-15 12:53:20	\N
17622	1	929	2021-10-15 12:53:20	\N
17623	1	930	2021-10-15 12:53:20	\N
17624	1	931	2021-10-15 12:53:20	\N
17625	1	932	2021-10-15 12:53:20	\N
17626	1	89	2021-10-15 12:53:20	\N
17627	1	90	2021-10-15 12:53:20	\N
17628	1	933	2021-10-15 12:53:20	\N
17629	1	934	2021-10-15 12:53:20	\N
17630	1	935	2021-10-15 12:53:20	\N
17631	1	936	2021-10-15 12:53:20	\N
17632	1	937	2021-10-15 12:53:20	\N
17633	1	938	2021-10-15 12:53:20	\N
17634	1	91	2021-10-15 12:53:20	\N
17635	1	939	2021-10-15 12:53:20	\N
17636	1	940	2021-10-15 12:53:20	\N
17637	1	941	2021-10-15 12:53:20	\N
17638	1	942	2021-10-15 12:53:20	\N
17639	1	943	2021-10-15 12:53:20	\N
17640	1	92	2021-10-15 12:53:20	\N
17641	1	944	2021-10-15 12:53:20	\N
17642	1	945	2021-10-15 12:53:20	\N
17643	1	946	2021-10-15 12:53:20	\N
17644	1	947	2021-10-15 12:53:20	\N
17645	1	948	2021-10-15 12:53:20	\N
17646	1	93	2021-10-15 12:53:20	\N
17647	1	949	2021-10-15 12:53:20	\N
17648	1	950	2021-10-15 12:53:20	\N
17649	1	951	2021-10-15 12:53:20	\N
17650	1	952	2021-10-15 12:53:20	\N
17651	1	953	2021-10-15 12:53:20	\N
17652	1	954	2021-10-15 12:53:20	\N
17653	1	955	2021-10-15 12:53:20	\N
17654	1	956	2021-10-15 12:53:20	\N
17655	1	94	2021-10-15 12:53:20	\N
17656	1	957	2021-10-15 12:53:20	\N
17657	1	958	2021-10-15 12:53:20	\N
17658	1	959	2021-10-15 12:53:20	\N
17659	1	960	2021-10-15 12:53:20	\N
17660	1	961	2021-10-15 12:53:20	\N
17661	1	95	2021-10-15 12:53:20	\N
17662	1	962	2021-10-15 12:53:20	\N
17663	1	963	2021-10-15 12:53:20	\N
17664	1	964	2021-10-15 12:53:20	\N
17665	1	965	2021-10-15 12:53:20	\N
17666	1	966	2021-10-15 12:53:20	\N
17667	1	967	2021-10-15 12:53:20	\N
17668	1	968	2021-10-15 12:53:20	\N
17669	1	77	2021-10-15 12:53:20	\N
17670	1	81	2021-10-15 12:53:20	\N
17671	1	969	2021-10-15 12:53:20	\N
17672	1	970	2021-10-15 12:53:20	\N
17673	1	971	2021-10-15 12:53:20	\N
17674	1	972	2021-10-15 12:53:20	\N
17675	1	973	2021-10-15 12:53:20	\N
17676	1	974	2021-10-15 12:53:20	\N
17677	1	975	2021-10-15 12:53:20	\N
17678	1	976	2021-10-15 12:53:20	\N
17679	1	977	2021-10-15 12:53:20	\N
17680	1	978	2021-10-15 12:53:20	\N
17681	1	979	2021-10-15 12:53:20	\N
17682	1	980	2021-10-15 12:53:20	\N
17683	1	981	2021-10-15 12:53:20	\N
17684	1	982	2021-10-15 12:53:20	\N
17685	1	983	2021-10-15 12:53:20	\N
17686	1	984	2021-10-15 12:53:20	\N
17687	1	985	2021-10-15 12:53:20	\N
17688	1	986	2021-10-15 12:53:20	\N
17689	1	987	2021-10-15 12:53:20	\N
17690	1	988	2021-10-15 12:53:20	\N
17691	1	989	2021-10-15 12:53:20	\N
17692	1	990	2021-10-15 12:53:20	\N
17693	1	991	2021-10-15 12:53:20	\N
17694	1	992	2021-10-15 12:53:20	\N
17695	1	993	2021-10-15 12:53:20	\N
17696	1	83	2021-10-15 12:53:20	\N
17697	1	416	2021-10-15 12:53:20	\N
17698	1	417	2021-10-15 12:53:20	\N
17699	1	418	2021-10-15 12:53:20	\N
17700	1	419	2021-10-15 12:53:20	\N
17701	1	420	2021-10-15 12:53:20	\N
17702	1	421	2021-10-15 12:53:20	\N
17703	1	422	2021-10-15 12:53:20	\N
17704	1	423	2021-10-15 12:53:20	\N
17705	1	424	2021-10-15 12:53:20	\N
17706	1	425	2021-10-15 12:53:20	\N
17707	1	426	2021-10-15 12:53:20	\N
17708	1	427	2021-10-15 12:53:20	\N
17709	1	428	2021-10-15 12:53:20	\N
17710	1	429	2021-10-15 12:53:20	\N
17711	1	430	2021-10-15 12:53:20	\N
17712	1	431	2021-10-15 12:53:20	\N
17713	1	432	2021-10-15 12:53:20	\N
17714	1	433	2021-10-15 12:53:20	\N
17715	1	434	2021-10-15 12:53:20	\N
17716	1	435	2021-10-15 12:53:20	\N
17717	1	436	2021-10-15 12:53:20	\N
17718	1	437	2021-10-15 12:53:20	\N
17719	1	438	2021-10-15 12:53:20	\N
17720	1	439	2021-10-15 12:53:20	\N
17721	1	440	2021-10-15 12:53:20	\N
17722	1	441	2021-10-15 12:53:20	\N
17723	1	82	2021-10-15 12:53:20	\N
17724	1	442	2021-10-15 12:53:20	\N
17725	1	443	2021-10-15 12:53:20	\N
17726	1	444	2021-10-15 12:53:20	\N
17727	1	445	2021-10-15 12:53:20	\N
17728	1	446	2021-10-15 12:53:20	\N
17729	1	447	2021-10-15 12:53:20	\N
17730	1	448	2021-10-15 12:53:20	\N
17731	1	449	2021-10-15 12:53:20	\N
17732	1	450	2021-10-15 12:53:20	\N
17733	1	451	2021-10-15 12:53:20	\N
17734	1	452	2021-10-15 12:53:20	\N
17735	1	453	2021-10-15 12:53:20	\N
17736	1	454	2021-10-15 12:53:20	\N
17737	1	455	2021-10-15 12:53:20	\N
17738	1	456	2021-10-15 12:53:20	\N
17739	1	457	2021-10-15 12:53:20	\N
17740	1	458	2021-10-15 12:53:20	\N
17741	1	459	2021-10-15 12:53:20	\N
17742	1	460	2021-10-15 12:53:20	\N
17743	1	461	2021-10-15 12:53:20	\N
17744	1	462	2021-10-15 12:53:20	\N
17745	1	463	2021-10-15 12:53:20	\N
17746	1	464	2021-10-15 12:53:20	\N
17747	1	465	2021-10-15 12:53:20	\N
17748	1	466	2021-10-15 12:53:20	\N
17749	1	467	2021-10-15 12:53:20	\N
17750	1	78	2021-10-15 12:53:20	\N
17751	1	79	2021-10-15 12:53:20	\N
17752	1	994	2021-10-15 12:53:20	\N
17753	1	995	2021-10-15 12:53:20	\N
17754	1	996	2021-10-15 12:53:20	\N
17755	1	997	2021-10-15 12:53:20	\N
17756	1	998	2021-10-15 12:53:20	\N
17757	1	999	2021-10-15 12:53:20	\N
17758	1	1000	2021-10-15 12:53:20	\N
17759	1	1001	2021-10-15 12:53:20	\N
17760	1	80	2021-10-15 12:53:20	\N
17761	1	1002	2021-10-15 12:53:20	\N
17762	1	1003	2021-10-15 12:53:20	\N
17763	1	102	2021-10-15 12:53:20	\N
17764	1	634	2021-10-15 12:53:20	\N
17765	1	1013	2021-10-15 12:53:20	\N
17766	1	1014	2021-10-15 12:53:20	\N
17767	1	103	2021-10-15 12:53:20	\N
17768	1	1015	2021-10-15 12:53:20	\N
17769	1	1016	2021-10-15 12:53:20	\N
17770	1	1017	2021-10-15 12:53:20	\N
17771	1	1018	2021-10-15 12:53:20	\N
17772	1	1019	2021-10-15 12:53:20	\N
17773	1	1020	2021-10-15 12:53:20	\N
17774	1	1021	2021-10-15 12:53:20	\N
17775	1	1022	2021-10-15 12:53:20	\N
17776	1	1023	2021-10-15 12:53:20	\N
17777	1	1024	2021-10-15 12:53:20	\N
17778	1	1025	2021-10-15 12:53:20	\N
17779	1	1026	2021-10-15 12:53:20	\N
17780	1	1027	2021-10-15 12:53:20	\N
17781	1	1028	2021-10-15 12:53:20	\N
17782	1	1029	2021-10-15 12:53:20	\N
17783	1	1030	2021-10-15 12:53:20	\N
17784	1	1031	2021-10-15 12:53:20	\N
17785	1	1032	2021-10-15 12:53:20	\N
17786	1	1033	2021-10-15 12:53:20	\N
17787	1	1034	2021-10-15 12:53:20	\N
17788	1	1035	2021-10-15 12:53:20	\N
17789	1	104	2021-10-15 12:53:20	\N
17790	1	1036	2021-10-15 12:53:20	\N
17791	1	1037	2021-10-15 12:53:20	\N
17792	1	1038	2021-10-15 12:53:20	\N
17793	1	1039	2021-10-15 12:53:20	\N
17794	1	1040	2021-10-15 12:53:20	\N
17795	1	1041	2021-10-15 12:53:20	\N
17796	1	105	2021-10-15 12:53:20	\N
17797	1	1042	2021-10-15 12:53:20	\N
17798	1	1043	2021-10-15 12:53:20	\N
17799	1	1044	2021-10-15 12:53:20	\N
17800	1	1045	2021-10-15 12:53:20	\N
17801	1	1046	2021-10-15 12:53:20	\N
17802	1	630	2021-10-15 12:53:20	\N
17803	1	635	2021-10-15 12:53:20	\N
17804	1	1056	2021-10-15 12:53:20	\N
17805	1	1057	2021-10-15 12:53:20	\N
17806	1	660	2021-10-15 12:53:20	\N
17807	1	1047	2021-10-15 12:53:20	\N
17808	1	1048	2021-10-15 12:53:20	\N
17809	1	1049	2021-10-15 12:53:20	\N
17810	1	1050	2021-10-15 12:53:20	\N
17811	1	1051	2021-10-15 12:53:20	\N
17812	1	1052	2021-10-15 12:53:20	\N
17813	1	1053	2021-10-15 12:53:20	\N
17814	1	1054	2021-10-15 12:53:20	\N
17815	1	1055	2021-10-15 12:53:20	\N
17816	1	631	2021-10-15 12:53:20	\N
17817	1	1058	2021-10-15 12:53:20	\N
17818	1	1059	2021-10-15 12:53:20	\N
17819	1	1060	2021-10-15 12:53:20	\N
17820	1	1061	2021-10-15 12:53:20	\N
17821	1	1062	2021-10-15 12:53:20	\N
17822	1	1063	2021-10-15 12:53:20	\N
17823	1	1064	2021-10-15 12:53:20	\N
17824	1	1065	2021-10-15 12:53:20	\N
17825	1	1066	2021-10-15 12:53:20	\N
17826	1	632	2021-10-15 12:53:20	\N
17827	1	1067	2021-10-15 12:53:20	\N
17828	1	1068	2021-10-15 12:53:20	\N
17829	1	1069	2021-10-15 12:53:20	\N
17830	1	1070	2021-10-15 12:53:20	\N
17831	1	1071	2021-10-15 12:53:20	\N
17832	1	1072	2021-10-15 12:53:20	\N
17833	1	633	2021-10-15 12:53:20	\N
17834	1	1073	2021-10-15 12:53:20	\N
17835	1	1074	2021-10-15 12:53:20	\N
17836	1	1075	2021-10-15 12:53:20	\N
17837	1	717	2021-10-15 12:53:20	\N
17838	1	72	2021-10-15 12:53:20	\N
17839	1	1076	2021-10-15 12:53:20	\N
17840	1	1077	2021-10-15 12:53:20	\N
17841	1	1078	2021-10-15 12:53:20	\N
17842	1	1079	2021-10-15 12:53:20	\N
17843	1	1080	2021-10-15 12:53:20	\N
17844	1	1081	2021-10-15 12:53:20	\N
17845	1	1082	2021-10-15 12:53:20	\N
17846	1	1083	2021-10-15 12:53:20	\N
17847	1	1084	2021-10-15 12:53:20	\N
17848	1	669	2021-10-15 12:53:20	\N
17849	1	599	2021-10-15 12:53:20	\N
17850	1	1085	2021-10-15 12:53:20	\N
17851	1	1086	2021-10-15 12:53:20	\N
17852	1	1087	2021-10-15 12:53:20	\N
17853	1	1088	2021-10-15 12:53:20	\N
17854	1	1089	2021-10-15 12:53:20	\N
17855	1	1090	2021-10-15 12:53:20	\N
17856	1	1091	2021-10-15 12:53:20	\N
17857	1	1092	2021-10-15 12:53:20	\N
17858	1	99	2021-10-15 12:53:20	\N
17859	1	1093	2021-10-15 12:53:20	\N
17860	1	1094	2021-10-15 12:53:20	\N
17861	1	1095	2021-10-15 12:53:20	\N
17862	1	1096	2021-10-15 12:53:20	\N
17863	1	1097	2021-10-15 12:53:20	\N
17864	1	1098	2021-10-15 12:53:20	\N
17865	1	1099	2021-10-15 12:53:20	\N
17866	1	1100	2021-10-15 12:53:20	\N
17867	1	1101	2021-10-15 12:53:20	\N
17868	1	73	2021-10-15 12:53:20	\N
17869	1	74	2021-10-15 12:53:20	\N
17870	1	1102	2021-10-15 12:53:20	\N
17871	1	1103	2021-10-15 12:53:20	\N
17872	1	1104	2021-10-15 12:53:20	\N
17873	1	1105	2021-10-15 12:53:20	\N
17874	1	1106	2021-10-15 12:53:20	\N
17875	1	1107	2021-10-15 12:53:20	\N
17876	1	1108	2021-10-15 12:53:20	\N
17877	1	1109	2021-10-15 12:53:20	\N
17878	1	75	2021-10-15 12:53:20	\N
17879	1	1110	2021-10-15 12:53:20	\N
17880	1	1111	2021-10-15 12:53:20	\N
17881	1	1112	2021-10-15 12:53:20	\N
17882	1	1113	2021-10-15 12:53:20	\N
17883	1	1114	2021-10-15 12:53:20	\N
17884	1	1115	2021-10-15 12:53:20	\N
17885	1	1116	2021-10-15 12:53:20	\N
17886	1	1117	2021-10-15 12:53:20	\N
17887	1	1118	2021-10-15 12:53:20	\N
17888	1	1119	2021-10-15 12:53:20	\N
17889	1	69	2021-10-15 12:53:20	\N
17890	1	70	2021-10-15 12:53:20	\N
17891	1	1120	2021-10-15 12:53:20	\N
17892	1	1121	2021-10-15 12:53:20	\N
17893	1	1122	2021-10-15 12:53:20	\N
17894	1	1123	2021-10-15 12:53:20	\N
17895	1	1124	2021-10-15 12:53:20	\N
17896	1	1125	2021-10-15 12:53:20	\N
17897	1	1126	2021-10-15 12:53:20	\N
17898	1	1127	2021-10-15 12:53:20	\N
17899	1	1128	2021-10-15 12:53:20	\N
17900	1	71	2021-10-15 12:53:20	\N
17901	1	1129	2021-10-15 12:53:20	\N
17902	1	1130	2021-10-15 12:53:20	\N
17903	1	1131	2021-10-15 12:53:20	\N
17904	1	1132	2021-10-15 12:53:20	\N
17905	1	1133	2021-10-15 12:53:20	\N
17906	1	1134	2021-10-15 12:53:20	\N
17907	1	1135	2021-10-15 12:53:20	\N
17908	1	613	2021-10-15 12:53:20	\N
17909	1	614	2021-10-15 12:53:20	\N
17910	1	1140	2021-10-15 12:53:20	\N
17911	1	1141	2021-10-15 12:53:20	\N
17912	1	1142	2021-10-15 12:53:20	\N
17913	1	1143	2021-10-15 12:53:20	\N
17914	1	1144	2021-10-15 12:53:20	\N
17915	1	622	2021-10-15 12:53:20	\N
17916	1	1136	2021-10-15 12:53:20	\N
17917	1	1137	2021-10-15 12:53:20	\N
17918	1	1138	2021-10-15 12:53:20	\N
17919	1	1139	2021-10-15 12:53:20	\N
17920	1	615	2021-10-15 12:53:20	\N
17921	1	1145	2021-10-15 12:53:20	\N
17922	1	1146	2021-10-15 12:53:20	\N
17923	1	1147	2021-10-15 12:53:20	\N
17924	1	84	2021-10-15 12:53:20	\N
17925	1	85	2021-10-15 12:53:20	\N
17926	1	1157	2021-10-15 12:53:20	\N
17927	1	1158	2021-10-15 12:53:20	\N
17928	1	86	2021-10-15 12:53:20	\N
17929	1	1155	2021-10-15 12:53:20	\N
17930	1	1156	2021-10-15 12:53:20	\N
17931	1	87	2021-10-15 12:53:20	\N
17932	1	1153	2021-10-15 12:53:20	\N
17933	1	1154	2021-10-15 12:53:20	\N
17934	1	88	2021-10-15 12:53:20	\N
17935	1	1151	2021-10-15 12:53:20	\N
17936	1	1152	2021-10-15 12:53:20	\N
17937	1	126	2021-10-15 12:53:20	\N
17938	1	44	2021-10-15 12:53:20	\N
17939	1	1193	2021-10-15 12:53:20	\N
17940	1	1194	2021-10-15 12:53:20	\N
17941	1	97	2021-10-15 12:53:20	\N
17942	1	1195	2021-10-15 12:53:20	\N
17943	1	1196	2021-10-15 12:53:20	\N
17944	1	1197	2021-10-15 12:53:20	\N
17945	1	1198	2021-10-15 12:53:20	\N
17946	1	1199	2021-10-15 12:53:20	\N
17947	1	1200	2021-10-15 12:53:20	\N
17948	1	1201	2021-10-15 12:53:20	\N
17949	1	1202	2021-10-15 12:53:20	\N
17950	1	1203	2021-10-15 12:53:20	\N
17951	1	1204	2021-10-15 12:53:20	\N
17952	1	1205	2021-10-15 12:53:20	\N
17953	1	1206	2021-10-15 12:53:20	\N
17954	1	125	2021-10-15 12:53:20	\N
17955	1	1207	2021-10-15 12:53:20	\N
17956	1	1208	2021-10-15 12:53:20	\N
17957	1	1209	2021-10-15 12:53:20	\N
17958	1	1210	2021-10-15 12:53:20	\N
17959	1	1211	2021-10-15 12:53:20	\N
17960	1	1212	2021-10-15 12:53:20	\N
17961	1	1213	2021-10-15 12:53:20	\N
17962	1	1214	2021-10-15 12:53:20	\N
17963	1	1215	2021-10-15 12:53:20	\N
17964	1	62	2021-10-15 12:53:20	\N
17965	1	1216	2021-10-15 12:53:20	\N
17966	1	1217	2021-10-15 12:53:20	\N
17967	1	1218	2021-10-15 12:53:20	\N
17968	1	1219	2021-10-15 12:53:20	\N
17969	1	1220	2021-10-15 12:53:20	\N
17970	1	1221	2021-10-15 12:53:20	\N
17971	1	1222	2021-10-15 12:53:20	\N
17972	1	1223	2021-10-15 12:53:20	\N
17973	1	1224	2021-10-15 12:53:20	\N
17974	1	1225	2021-10-15 12:53:20	\N
17975	1	1226	2021-10-15 12:53:20	\N
17976	1	63	2021-10-15 12:53:20	\N
17977	1	1227	2021-10-15 12:53:20	\N
17978	1	1228	2021-10-15 12:53:20	\N
17979	1	1229	2021-10-15 12:53:20	\N
17980	1	1230	2021-10-15 12:53:20	\N
17981	1	1231	2021-10-15 12:53:20	\N
17982	1	1232	2021-10-15 12:53:20	\N
17983	1	1233	2021-10-15 12:53:20	\N
17984	1	1234	2021-10-15 12:53:20	\N
17985	1	1235	2021-10-15 12:53:20	\N
17986	1	1236	2021-10-15 12:53:20	\N
17987	1	1237	2021-10-15 12:53:20	\N
17988	1	1238	2021-10-15 12:53:20	\N
17989	1	1239	2021-10-15 12:53:20	\N
17990	1	1240	2021-10-15 12:53:20	\N
17991	1	1241	2021-10-15 12:53:20	\N
17992	1	1242	2021-10-15 12:53:20	\N
17993	1	64	2021-10-15 12:53:20	\N
17994	1	1243	2021-10-15 12:53:20	\N
17995	1	1244	2021-10-15 12:53:20	\N
17996	1	1245	2021-10-15 12:53:20	\N
17997	1	1246	2021-10-15 12:53:20	\N
17998	1	100	2021-10-15 12:53:20	\N
17999	1	1247	2021-10-15 12:53:20	\N
18000	1	1248	2021-10-15 12:53:20	\N
18001	1	1249	2021-10-15 12:53:20	\N
18002	1	1250	2021-10-15 12:53:20	\N
18003	1	1251	2021-10-15 12:53:20	\N
18004	1	1252	2021-10-15 12:53:20	\N
18005	1	1253	2021-10-15 12:53:20	\N
18006	1	1254	2021-10-15 12:53:20	\N
18007	1	661	2021-10-15 12:53:20	\N
18008	1	96	2021-10-15 12:53:20	\N
18009	1	1255	2021-10-15 12:53:20	\N
18010	1	1256	2021-10-15 12:53:20	\N
18011	1	1257	2021-10-15 12:53:20	\N
18012	1	1258	2021-10-15 12:53:20	\N
18013	1	1259	2021-10-15 12:53:20	\N
18014	1	106	2021-10-15 12:53:20	\N
18015	1	1260	2021-10-15 12:53:20	\N
18016	1	1261	2021-10-15 12:53:20	\N
18017	1	1262	2021-10-15 12:53:20	\N
18018	1	662	2021-10-15 12:53:20	\N
18019	1	1263	2021-10-15 12:53:20	\N
18020	1	1264	2021-10-15 12:53:20	\N
18021	1	50	2021-10-15 12:53:20	\N
18022	1	1265	2021-10-15 12:53:20	\N
18023	1	1266	2021-10-15 12:53:20	\N
18024	1	1267	2021-10-15 12:53:20	\N
18025	1	1268	2021-10-15 12:53:20	\N
18026	1	43	2021-10-15 12:53:20	\N
18027	1	42	2021-10-15 12:53:20	\N
18028	1	724	2021-10-15 12:53:20	\N
18029	1	725	2021-10-15 12:53:20	\N
18030	1	726	2021-10-15 12:53:20	\N
18031	1	727	2021-10-15 12:53:20	\N
18032	1	728	2021-10-15 12:53:20	\N
18033	1	729	2021-10-15 12:53:20	\N
18034	1	730	2021-10-15 12:53:20	\N
18035	1	731	2021-10-15 12:53:20	\N
18036	1	7	2021-10-15 12:53:20	\N
18037	1	732	2021-10-15 12:53:20	\N
18038	1	733	2021-10-15 12:53:20	\N
18039	1	734	2021-10-15 12:53:20	\N
18040	1	735	2021-10-15 12:53:20	\N
18041	1	736	2021-10-15 12:53:20	\N
18042	1	737	2021-10-15 12:53:20	\N
18043	1	738	2021-10-15 12:53:20	\N
18044	1	739	2021-10-15 12:53:20	\N
18045	1	740	2021-10-15 12:53:20	\N
18046	1	741	2021-10-15 12:53:20	\N
18047	1	742	2021-10-15 12:53:20	\N
18048	1	12	2021-10-15 12:53:20	\N
18049	1	743	2021-10-15 12:53:20	\N
18050	1	744	2021-10-15 12:53:20	\N
18051	1	745	2021-10-15 12:53:20	\N
18052	1	746	2021-10-15 12:53:20	\N
18053	1	747	2021-10-15 12:53:20	\N
18054	1	748	2021-10-15 12:53:20	\N
18055	1	749	2021-10-15 12:53:20	\N
18056	1	750	2021-10-15 12:53:20	\N
18057	1	111	2021-10-15 12:53:20	\N
18058	1	101	2021-10-15 12:53:20	\N
18059	1	780	2021-10-15 12:53:20	\N
18060	1	781	2021-10-15 12:53:20	\N
18061	1	782	2021-10-15 12:53:20	\N
18062	1	783	2021-10-15 12:53:20	\N
18063	1	784	2021-10-15 12:53:20	\N
18064	1	785	2021-10-15 12:53:20	\N
18065	1	786	2021-10-15 12:53:20	\N
18066	1	107	2021-10-15 12:53:20	\N
18067	1	787	2021-10-15 12:53:20	\N
18068	1	788	2021-10-15 12:53:20	\N
18069	1	789	2021-10-15 12:53:20	\N
18070	1	790	2021-10-15 12:53:20	\N
18071	1	791	2021-10-15 12:53:20	\N
18072	1	792	2021-10-15 12:53:20	\N
18073	1	793	2021-10-15 12:53:20	\N
18074	1	794	2021-10-15 12:53:20	\N
18075	1	108	2021-10-15 12:53:20	\N
18076	1	795	2021-10-15 12:53:20	\N
18077	1	796	2021-10-15 12:53:20	\N
18078	1	797	2021-10-15 12:53:20	\N
18079	1	798	2021-10-15 12:53:20	\N
18080	1	799	2021-10-15 12:53:20	\N
18081	1	800	2021-10-15 12:53:20	\N
18082	1	801	2021-10-15 12:53:20	\N
18083	1	802	2021-10-15 12:53:20	\N
18084	1	803	2021-10-15 12:53:20	\N
18085	1	46	2021-10-15 12:53:20	\N
18086	1	576	2021-10-15 12:53:20	\N
18087	1	577	2021-10-15 12:53:20	\N
18088	1	578	2021-10-15 12:53:20	\N
\.


--
-- Data for Name: systasklog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.systasklog (id, name, createtime, issuccess, parameters) FROM stdin;
\.


--
-- Data for Name: sysuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysuser (id, username, password, nickname, avatar, sex, phone, email, emailverified, truename, idcard, birthday, introduction, organizationid, state, deleted, createtime, updatetime) FROM stdin;
1	coreshop	E10ADC3949BA59ABBE56E057F20F883E	超级管理员		1		jianweie@163.com	f	11	11	\N	路漫漫其修远兮，吾将上下而求索	0	0	f	1753-01-01 00:00:00	2021-04-25 03:43:42
\.


--
-- Data for Name: sysuserrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sysuserrole (id, userid, roleid, createtime, updatetime) FROM stdin;
61	10	1	2020-09-11 15:52:42	\N
75	1	1	2021-04-25 03:43:42	\N
76	1	2	2021-04-25 03:43:42	\N
77	1	3	2021-04-25 03:43:42	\N
78	1	5	2021-04-25 03:43:42	\N
79	8	1	2021-05-11 23:21:37	\N
80	8	3	2021-05-11 23:21:37	\N
81	8	5	2021-05-11 23:21:37	\N
82	8	2	2021-05-11 23:21:37	\N
83	12	1	2021-05-26 11:53:19	\N
\.


--
-- Data for Name: wechataccesstoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wechataccesstoken (id, apptype, appid, accesstoken, expiretimestamp, updatetimestamp, createtimestamp) FROM stdin;
\.


--
-- Name: corecmsadvertisement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsadvertisement_id_seq', 5, true);


--
-- Name: corecmsadvertposition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsadvertposition_id_seq', 2, true);


--
-- Name: corecmsagent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsagent_id_seq', 1, false);


--
-- Name: corecmsagentgoods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsagentgoods_id_seq', 27, true);


--
-- Name: corecmsagentgrade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsagentgrade_id_seq', 9, true);


--
-- Name: corecmsagentorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsagentorder_id_seq', 1, false);


--
-- Name: corecmsagentproducts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsagentproducts_id_seq', 1, false);


--
-- Name: corecmsapiaccesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsapiaccesstoken_id_seq', 1, false);


--
-- Name: corecmsarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsarea_id_seq', 920106, true);


--
-- Name: corecmsarticle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsarticle_id_seq', 1, false);


--
-- Name: corecmsarticletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsarticletype_id_seq', 1, false);


--
-- Name: corecmsbillaftersalesitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsbillaftersalesitem_id_seq', 1, false);


--
-- Name: corecmsbilldeliveryitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsbilldeliveryitem_id_seq', 1, false);


--
-- Name: corecmsbillreshipitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsbillreshipitem_id_seq', 1, false);


--
-- Name: corecmsbrand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsbrand_id_seq', 1027, true);


--
-- Name: corecmscart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmscart_id_seq', 1, false);


--
-- Name: corecmsclerk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsclerk_id_seq', 1, false);


--
-- Name: corecmscoupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmscoupon_id_seq', 1, false);


--
-- Name: corecmsdistribution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsdistribution_id_seq', 1, false);


--
-- Name: corecmsdistributioncondition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsdistributioncondition_id_seq', 1, false);


--
-- Name: corecmsdistributiongrade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsdistributiongrade_id_seq', 1, false);


--
-- Name: corecmsdistributionorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsdistributionorder_id_seq', 1, false);


--
-- Name: corecmsdistributionresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsdistributionresult_id_seq', 1, false);


--
-- Name: corecmsform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsform_id_seq', 1, false);


--
-- Name: corecmsformitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsformitem_id_seq', 1, false);


--
-- Name: corecmsformsubmit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsformsubmit_id_seq', 1, false);


--
-- Name: corecmsformsubmitdetail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsformsubmitdetail_id_seq', 1, false);


--
-- Name: corecmsgoods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoods_id_seq', 4158, true);


--
-- Name: corecmsgoodsbrowsing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodsbrowsing_id_seq', 1, false);


--
-- Name: corecmsgoodscategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodscategory_id_seq', 2078, true);


--
-- Name: corecmsgoodscategoryextend_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodscategoryextend_id_seq', 5610, true);


--
-- Name: corecmsgoodscollection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodscollection_id_seq', 1, false);


--
-- Name: corecmsgoodscomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodscomment_id_seq', 1, false);


--
-- Name: corecmsgoodsgrade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodsgrade_id_seq', 5, true);


--
-- Name: corecmsgoodsparams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodsparams_id_seq', 24, true);


--
-- Name: corecmsgoodstypespec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodstypespec_id_seq', 103, true);


--
-- Name: corecmsgoodstypespecvalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsgoodstypespecvalue_id_seq', 1698, true);


--
-- Name: corecmsinvoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsinvoice_id_seq', 1, false);


--
-- Name: corecmsinvoicerecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsinvoicerecord_id_seq', 1, false);


--
-- Name: corecmslabel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmslabel_id_seq', 5, true);


--
-- Name: corecmsloginlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsloginlog_id_seq', 1, false);


--
-- Name: corecmslogistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmslogistics_id_seq', 16049, true);


--
-- Name: corecmsmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsmessage_id_seq', 1, false);


--
-- Name: corecmsmessagecenter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsmessagecenter_id_seq', 12, true);


--
-- Name: corecmsnotice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsnotice_id_seq', 1, false);


--
-- Name: corecmsorderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsorderitem_id_seq', 1, false);


--
-- Name: corecmsorderlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsorderlog_id_seq', 1, false);


--
-- Name: corecmspages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspages_id_seq', 2, true);


--
-- Name: corecmspagesitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspagesitems_id_seq', 4646, true);


--
-- Name: corecmspayments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspayments_id_seq', 4, true);


--
-- Name: corecmspintuanrecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspintuanrecord_id_seq', 1, false);


--
-- Name: corecmspintuanrule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspintuanrule_id_seq', 1, false);


--
-- Name: corecmsproducts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsproducts_id_seq', 4679, true);


--
-- Name: corecmsproductsdistribution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsproductsdistribution_id_seq', 1, true);


--
-- Name: corecmspromotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspromotion_id_seq', 1, false);


--
-- Name: corecmspromotioncondition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspromotioncondition_id_seq', 1, false);


--
-- Name: corecmspromotionrecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspromotionrecord_id_seq', 1, false);


--
-- Name: corecmspromotionresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmspromotionresult_id_seq', 1, false);


--
-- Name: corecmsservicedescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsservicedescription_id_seq', 8, true);


--
-- Name: corecmsservices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsservices_id_seq', 1, false);


--
-- Name: corecmsship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsship_id_seq', 1013, true);


--
-- Name: corecmssms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmssms_id_seq', 1, false);


--
-- Name: corecmsstocklog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsstocklog_id_seq', 1, false);


--
-- Name: corecmsstore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsstore_id_seq', 1008, true);


--
-- Name: corecmsuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuser_id_seq', 1, false);


--
-- Name: corecmsuserbalance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserbalance_id_seq', 1, false);


--
-- Name: corecmsuserbankcard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserbankcard_id_seq', 1, false);


--
-- Name: corecmsusergrade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsusergrade_id_seq', 1008, true);


--
-- Name: corecmsuserlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserlog_id_seq', 1, false);


--
-- Name: corecmsuserpointlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserpointlog_id_seq', 1, false);


--
-- Name: corecmsuserservicesorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserservicesorder_id_seq', 1, false);


--
-- Name: corecmsuserservicesticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserservicesticket_id_seq', 1, false);


--
-- Name: corecmsuserservicesticketverificationlog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserservicesticketverificationlog_id_seq', 1, false);


--
-- Name: corecmsusership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsusership_id_seq', 1, false);


--
-- Name: corecmsusertocash_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsusertocash_id_seq', 1, false);


--
-- Name: corecmsuserwechatinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserwechatinfo_id_seq', 1, false);


--
-- Name: corecmsuserwechatmsgsubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserwechatmsgsubscription_id_seq', 1, false);


--
-- Name: corecmsuserwechatmsgsubscriptionswitch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserwechatmsgsubscriptionswitch_id_seq', 1, false);


--
-- Name: corecmsuserwechatmsgtemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsuserwechatmsgtemplate_id_seq', 6, true);


--
-- Name: corecmsweixinauthor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsweixinauthor_id_seq', 1, false);


--
-- Name: corecmsweixinmediamessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsweixinmediamessage_id_seq', 1, false);


--
-- Name: corecmsweixinmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsweixinmenu_id_seq', 1, false);


--
-- Name: corecmsweixinmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corecmsweixinmessage_id_seq', 1, false);


--
-- Name: sysdictionary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysdictionary_id_seq', 5, true);


--
-- Name: sysdictionarydata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysdictionarydata_id_seq', 16, true);


--
-- Name: sysloginrecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysloginrecord_id_seq', 2, true);


--
-- Name: sysmenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysmenu_id_seq', 1294, true);


--
-- Name: sysnlogrecords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysnlogrecords_id_seq', 1, false);


--
-- Name: sysoperrecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysoperrecord_id_seq', 1, false);


--
-- Name: sysorganization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysorganization_id_seq', 11, true);


--
-- Name: sysrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysrole_id_seq', 5, true);


--
-- Name: sysrolemenu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysrolemenu_id_seq', 18088, true);


--
-- Name: systasklog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.systasklog_id_seq', 1, false);


--
-- Name: sysuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysuser_id_seq', 1, true);


--
-- Name: sysuserrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sysuserrole_id_seq', 83, true);


--
-- Name: wechataccesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wechataccesstoken_id_seq', 1, false);


--
-- Name: corecmsadvertisement corecmsadvertisement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsadvertisement
    ADD CONSTRAINT corecmsadvertisement_pkey PRIMARY KEY (id);


--
-- Name: corecmsadvertposition corecmsadvertposition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsadvertposition
    ADD CONSTRAINT corecmsadvertposition_pkey PRIMARY KEY (id);


--
-- Name: corecmsagent corecmsagent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagent
    ADD CONSTRAINT corecmsagent_pkey PRIMARY KEY (id);


--
-- Name: corecmsagentgoods corecmsagentgoods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentgoods
    ADD CONSTRAINT corecmsagentgoods_pkey PRIMARY KEY (id);


--
-- Name: corecmsagentgrade corecmsagentgrade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentgrade
    ADD CONSTRAINT corecmsagentgrade_pkey PRIMARY KEY (id);


--
-- Name: corecmsagentorder corecmsagentorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentorder
    ADD CONSTRAINT corecmsagentorder_pkey PRIMARY KEY (id);


--
-- Name: corecmsagentproducts corecmsagentproducts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsagentproducts
    ADD CONSTRAINT corecmsagentproducts_pkey PRIMARY KEY (id);


--
-- Name: corecmsapiaccesstoken corecmsapiaccesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsapiaccesstoken
    ADD CONSTRAINT corecmsapiaccesstoken_pkey PRIMARY KEY (id);


--
-- Name: corecmsarea corecmsarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsarea
    ADD CONSTRAINT corecmsarea_pkey PRIMARY KEY (id);


--
-- Name: corecmsarticle corecmsarticle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsarticle
    ADD CONSTRAINT corecmsarticle_pkey PRIMARY KEY (id);


--
-- Name: corecmsarticletype corecmsarticletype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsarticletype
    ADD CONSTRAINT corecmsarticletype_pkey PRIMARY KEY (id);


--
-- Name: corecmsbillaftersales corecmsbillaftersales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillaftersales
    ADD CONSTRAINT corecmsbillaftersales_pkey PRIMARY KEY (aftersalesid);


--
-- Name: corecmsbillaftersalesitem corecmsbillaftersalesitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillaftersalesitem
    ADD CONSTRAINT corecmsbillaftersalesitem_pkey PRIMARY KEY (id);


--
-- Name: corecmsbilldelivery corecmsbilldelivery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbilldelivery
    ADD CONSTRAINT corecmsbilldelivery_pkey PRIMARY KEY (deliveryid);


--
-- Name: corecmsbilldeliveryitem corecmsbilldeliveryitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbilldeliveryitem
    ADD CONSTRAINT corecmsbilldeliveryitem_pkey PRIMARY KEY (id);


--
-- Name: corecmsbilllading corecmsbilllading_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbilllading
    ADD CONSTRAINT corecmsbilllading_pkey PRIMARY KEY (id);


--
-- Name: corecmsbillpayments corecmsbillpayments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillpayments
    ADD CONSTRAINT corecmsbillpayments_pkey PRIMARY KEY (paymentid);


--
-- Name: corecmsbillrefund corecmsbillrefund_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillrefund
    ADD CONSTRAINT corecmsbillrefund_pkey PRIMARY KEY (refundid);


--
-- Name: corecmsbillreship corecmsbillreship_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillreship
    ADD CONSTRAINT corecmsbillreship_pkey PRIMARY KEY (reshipid);


--
-- Name: corecmsbillreshipitem corecmsbillreshipitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbillreshipitem
    ADD CONSTRAINT corecmsbillreshipitem_pkey PRIMARY KEY (id);


--
-- Name: corecmsbrand corecmsbrand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsbrand
    ADD CONSTRAINT corecmsbrand_pkey PRIMARY KEY (id);


--
-- Name: corecmscart corecmscart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmscart
    ADD CONSTRAINT corecmscart_pkey PRIMARY KEY (id);


--
-- Name: corecmsclerk corecmsclerk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsclerk
    ADD CONSTRAINT corecmsclerk_pkey PRIMARY KEY (id);


--
-- Name: corecmscoupon corecmscoupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmscoupon
    ADD CONSTRAINT corecmscoupon_pkey PRIMARY KEY (id);


--
-- Name: corecmsdistribution corecmsdistribution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistribution
    ADD CONSTRAINT corecmsdistribution_pkey PRIMARY KEY (id);


--
-- Name: corecmsdistributioncondition corecmsdistributioncondition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributioncondition
    ADD CONSTRAINT corecmsdistributioncondition_pkey PRIMARY KEY (id);


--
-- Name: corecmsdistributiongrade corecmsdistributiongrade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributiongrade
    ADD CONSTRAINT corecmsdistributiongrade_pkey PRIMARY KEY (id);


--
-- Name: corecmsdistributionorder corecmsdistributionorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributionorder
    ADD CONSTRAINT corecmsdistributionorder_pkey PRIMARY KEY (id);


--
-- Name: corecmsdistributionresult corecmsdistributionresult_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsdistributionresult
    ADD CONSTRAINT corecmsdistributionresult_pkey PRIMARY KEY (id);


--
-- Name: corecmsform corecmsform_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsform
    ADD CONSTRAINT corecmsform_pkey PRIMARY KEY (id);


--
-- Name: corecmsformitem corecmsformitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsformitem
    ADD CONSTRAINT corecmsformitem_pkey PRIMARY KEY (id);


--
-- Name: corecmsformsubmit corecmsformsubmit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsformsubmit
    ADD CONSTRAINT corecmsformsubmit_pkey PRIMARY KEY (id);


--
-- Name: corecmsformsubmitdetail corecmsformsubmitdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsformsubmitdetail
    ADD CONSTRAINT corecmsformsubmitdetail_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoods corecmsgoods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoods
    ADD CONSTRAINT corecmsgoods_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodsbrowsing corecmsgoodsbrowsing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodsbrowsing
    ADD CONSTRAINT corecmsgoodsbrowsing_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodscategory corecmsgoodscategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscategory
    ADD CONSTRAINT corecmsgoodscategory_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodscategoryextend corecmsgoodscategoryextend_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscategoryextend
    ADD CONSTRAINT corecmsgoodscategoryextend_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodscollection corecmsgoodscollection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscollection
    ADD CONSTRAINT corecmsgoodscollection_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodscomment corecmsgoodscomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodscomment
    ADD CONSTRAINT corecmsgoodscomment_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodsgrade corecmsgoodsgrade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodsgrade
    ADD CONSTRAINT corecmsgoodsgrade_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodsparams corecmsgoodsparams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodsparams
    ADD CONSTRAINT corecmsgoodsparams_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodstypespec corecmsgoodstypespec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodstypespec
    ADD CONSTRAINT corecmsgoodstypespec_pkey PRIMARY KEY (id);


--
-- Name: corecmsgoodstypespecvalue corecmsgoodstypespecvalue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsgoodstypespecvalue
    ADD CONSTRAINT corecmsgoodstypespecvalue_pkey PRIMARY KEY (id);


--
-- Name: corecmsimages corecmsimages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsimages
    ADD CONSTRAINT corecmsimages_pkey PRIMARY KEY (id);


--
-- Name: corecmsinvoice corecmsinvoice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsinvoice
    ADD CONSTRAINT corecmsinvoice_pkey PRIMARY KEY (id);


--
-- Name: corecmsinvoicerecord corecmsinvoicerecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsinvoicerecord
    ADD CONSTRAINT corecmsinvoicerecord_pkey PRIMARY KEY (id);


--
-- Name: corecmslabel corecmslabel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmslabel
    ADD CONSTRAINT corecmslabel_pkey PRIMARY KEY (id);


--
-- Name: corecmsloginlog corecmsloginlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsloginlog
    ADD CONSTRAINT corecmsloginlog_pkey PRIMARY KEY (id);


--
-- Name: corecmslogistics corecmslogistics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmslogistics
    ADD CONSTRAINT corecmslogistics_pkey PRIMARY KEY (id);


--
-- Name: corecmsmessage corecmsmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsmessage
    ADD CONSTRAINT corecmsmessage_pkey PRIMARY KEY (id);


--
-- Name: corecmsmessagecenter corecmsmessagecenter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsmessagecenter
    ADD CONSTRAINT corecmsmessagecenter_pkey PRIMARY KEY (id);


--
-- Name: corecmsnotice corecmsnotice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsnotice
    ADD CONSTRAINT corecmsnotice_pkey PRIMARY KEY (id);


--
-- Name: corecmsorder corecmsorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsorder
    ADD CONSTRAINT corecmsorder_pkey PRIMARY KEY (orderid);


--
-- Name: corecmsorderitem corecmsorderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsorderitem
    ADD CONSTRAINT corecmsorderitem_pkey PRIMARY KEY (id);


--
-- Name: corecmsorderlog corecmsorderlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsorderlog
    ADD CONSTRAINT corecmsorderlog_pkey PRIMARY KEY (id);


--
-- Name: corecmspages corecmspages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspages
    ADD CONSTRAINT corecmspages_pkey PRIMARY KEY (id);


--
-- Name: corecmspagesitems corecmspagesitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspagesitems
    ADD CONSTRAINT corecmspagesitems_pkey PRIMARY KEY (id);


--
-- Name: corecmspayments corecmspayments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspayments
    ADD CONSTRAINT corecmspayments_pkey PRIMARY KEY (id);


--
-- Name: corecmspintuanrecord corecmspintuanrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspintuanrecord
    ADD CONSTRAINT corecmspintuanrecord_pkey PRIMARY KEY (id);


--
-- Name: corecmspintuanrule corecmspintuanrule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspintuanrule
    ADD CONSTRAINT corecmspintuanrule_pkey PRIMARY KEY (id);


--
-- Name: corecmsproducts corecmsproducts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsproducts
    ADD CONSTRAINT corecmsproducts_pkey PRIMARY KEY (id);


--
-- Name: corecmsproductsdistribution corecmsproductsdistribution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsproductsdistribution
    ADD CONSTRAINT corecmsproductsdistribution_pkey PRIMARY KEY (id);


--
-- Name: corecmspromotion corecmspromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotion
    ADD CONSTRAINT corecmspromotion_pkey PRIMARY KEY (id);


--
-- Name: corecmspromotioncondition corecmspromotioncondition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotioncondition
    ADD CONSTRAINT corecmspromotioncondition_pkey PRIMARY KEY (id);


--
-- Name: corecmspromotionrecord corecmspromotionrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotionrecord
    ADD CONSTRAINT corecmspromotionrecord_pkey PRIMARY KEY (id);


--
-- Name: corecmspromotionresult corecmspromotionresult_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmspromotionresult
    ADD CONSTRAINT corecmspromotionresult_pkey PRIMARY KEY (id);


--
-- Name: corecmsservicedescription corecmsservicedescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsservicedescription
    ADD CONSTRAINT corecmsservicedescription_pkey PRIMARY KEY (id);


--
-- Name: corecmsservices corecmsservices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsservices
    ADD CONSTRAINT corecmsservices_pkey PRIMARY KEY (id);


--
-- Name: corecmssetting corecmssetting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmssetting
    ADD CONSTRAINT corecmssetting_pkey PRIMARY KEY (skey);


--
-- Name: corecmsship corecmsship_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsship
    ADD CONSTRAINT corecmsship_pkey PRIMARY KEY (id);


--
-- Name: corecmssms corecmssms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmssms
    ADD CONSTRAINT corecmssms_pkey PRIMARY KEY (id);


--
-- Name: corecmsstock corecmsstock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsstock
    ADD CONSTRAINT corecmsstock_pkey PRIMARY KEY (id);


--
-- Name: corecmsstocklog corecmsstocklog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsstocklog
    ADD CONSTRAINT corecmsstocklog_pkey PRIMARY KEY (id);


--
-- Name: corecmsstore corecmsstore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsstore
    ADD CONSTRAINT corecmsstore_pkey PRIMARY KEY (id);


--
-- Name: corecmsuser corecmsuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuser
    ADD CONSTRAINT corecmsuser_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserbalance corecmsuserbalance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserbalance
    ADD CONSTRAINT corecmsuserbalance_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserbankcard corecmsuserbankcard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserbankcard
    ADD CONSTRAINT corecmsuserbankcard_pkey PRIMARY KEY (id);


--
-- Name: corecmsusergrade corecmsusergrade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusergrade
    ADD CONSTRAINT corecmsusergrade_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserlog corecmsuserlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserlog
    ADD CONSTRAINT corecmsuserlog_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserpointlog corecmsuserpointlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserpointlog
    ADD CONSTRAINT corecmsuserpointlog_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserservicesorder corecmsuserservicesorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserservicesorder
    ADD CONSTRAINT corecmsuserservicesorder_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserservicesticket corecmsuserservicesticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserservicesticket
    ADD CONSTRAINT corecmsuserservicesticket_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserservicesticketverificationlog corecmsuserservicesticketverificationlog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserservicesticketverificationlog
    ADD CONSTRAINT corecmsuserservicesticketverificationlog_pkey PRIMARY KEY (id);


--
-- Name: corecmsusership corecmsusership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusership
    ADD CONSTRAINT corecmsusership_pkey PRIMARY KEY (id);


--
-- Name: corecmsusertocash corecmsusertocash_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusertocash
    ADD CONSTRAINT corecmsusertocash_pkey PRIMARY KEY (id);


--
-- Name: corecmsusertoken corecmsusertoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsusertoken
    ADD CONSTRAINT corecmsusertoken_pkey PRIMARY KEY (token);


--
-- Name: corecmsuserwechatinfo corecmsuserwechatinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatinfo
    ADD CONSTRAINT corecmsuserwechatinfo_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserwechatmsgsubscription corecmsuserwechatmsgsubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatmsgsubscription
    ADD CONSTRAINT corecmsuserwechatmsgsubscription_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserwechatmsgsubscriptionswitch corecmsuserwechatmsgsubscriptionswitch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatmsgsubscriptionswitch
    ADD CONSTRAINT corecmsuserwechatmsgsubscriptionswitch_pkey PRIMARY KEY (id);


--
-- Name: corecmsuserwechatmsgtemplate corecmsuserwechatmsgtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsuserwechatmsgtemplate
    ADD CONSTRAINT corecmsuserwechatmsgtemplate_pkey PRIMARY KEY (id);


--
-- Name: corecmsweixinauthor corecmsweixinauthor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinauthor
    ADD CONSTRAINT corecmsweixinauthor_pkey PRIMARY KEY (id);


--
-- Name: corecmsweixinmediamessage corecmsweixinmediamessage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinmediamessage
    ADD CONSTRAINT corecmsweixinmediamessage_pkey PRIMARY KEY (id);


--
-- Name: corecmsweixinmenu corecmsweixinmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinmenu
    ADD CONSTRAINT corecmsweixinmenu_pkey PRIMARY KEY (id);


--
-- Name: corecmsweixinmessage corecmsweixinmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corecmsweixinmessage
    ADD CONSTRAINT corecmsweixinmessage_pkey PRIMARY KEY (id);


--
-- Name: sysdictionary sysdictionary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysdictionary
    ADD CONSTRAINT sysdictionary_pkey PRIMARY KEY (id);


--
-- Name: sysdictionarydata sysdictionarydata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysdictionarydata
    ADD CONSTRAINT sysdictionarydata_pkey PRIMARY KEY (id);


--
-- Name: sysloginrecord sysloginrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysloginrecord
    ADD CONSTRAINT sysloginrecord_pkey PRIMARY KEY (id);


--
-- Name: sysmenu sysmenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysmenu
    ADD CONSTRAINT sysmenu_pkey PRIMARY KEY (id);


--
-- Name: sysnlogrecords sysnlogrecords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysnlogrecords
    ADD CONSTRAINT sysnlogrecords_pkey PRIMARY KEY (id);


--
-- Name: sysoperrecord sysoperrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysoperrecord
    ADD CONSTRAINT sysoperrecord_pkey PRIMARY KEY (id);


--
-- Name: sysorganization sysorganization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysorganization
    ADD CONSTRAINT sysorganization_pkey PRIMARY KEY (id);


--
-- Name: sysrole sysrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysrole
    ADD CONSTRAINT sysrole_pkey PRIMARY KEY (id);


--
-- Name: sysrolemenu sysrolemenu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysrolemenu
    ADD CONSTRAINT sysrolemenu_pkey PRIMARY KEY (id);


--
-- Name: systasklog systasklog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.systasklog
    ADD CONSTRAINT systasklog_pkey PRIMARY KEY (id);


--
-- Name: sysuser sysuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysuser
    ADD CONSTRAINT sysuser_pkey PRIMARY KEY (id);


--
-- Name: sysuserrole sysuserrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sysuserrole
    ADD CONSTRAINT sysuserrole_pkey PRIMARY KEY (id);


--
-- Name: wechataccesstoken wechataccesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wechataccesstoken
    ADD CONSTRAINT wechataccesstoken_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

