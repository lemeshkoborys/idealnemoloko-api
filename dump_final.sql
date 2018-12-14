--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Debian 10.6-1.pgdg90+1)
-- Dumped by pg_dump version 10.6 (Debian 10.6-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO db_role;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO db_role;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO db_role;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO db_role;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO db_role;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO db_role;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO db_role;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO db_role;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO db_role;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO db_role;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO db_role;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO db_role;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO db_role;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO db_role;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO db_role;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO db_role;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO db_role;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO db_role;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO db_role;

--
-- Name: products; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying(120) NOT NULL,
    title_rus character varying(120) NOT NULL,
    subtitle character varying(255) NOT NULL,
    subtitle_rus character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    cereal_image character varying(255) NOT NULL,
    image_for_product_page character varying(255) NOT NULL,
    content text[] NOT NULL,
    content_rus text[] NOT NULL,
    list_heading character varying(255) NOT NULL,
    list_heading_rus character varying(255) NOT NULL,
    about_list character varying(255)[] NOT NULL,
    about_list_rus character varying(255)[] NOT NULL,
    silly_comment character varying(255) NOT NULL,
    silly_comment_rus character varying(255) NOT NULL,
    calories double precision NOT NULL,
    proteins double precision NOT NULL,
    carbohydrates double precision NOT NULL,
    cholesterol double precision NOT NULL,
    big_cardboard_weight integer,
    small_cardboard_weight integer,
    CONSTRAINT products_big_cardboard_weight_check CHECK ((big_cardboard_weight >= 0)),
    CONSTRAINT products_small_cardboard_weight_check CHECK ((small_cardboard_weight >= 0))
);


ALTER TABLE public.products OWNER TO db_role;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO db_role;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: db_role
--

CREATE TABLE public.recipes (
    id integer NOT NULL,
    title character varying(300) NOT NULL,
    title_rus character varying(300) NOT NULL,
    subtitle character varying(300) NOT NULL,
    subtitle_rus character varying(300) NOT NULL,
    ingridients character varying(255)[] NOT NULL,
    ingridients_rus character varying(255)[] NOT NULL,
    howto character varying(255)[] NOT NULL,
    howto_rus character varying(255)[] NOT NULL,
    is_vegan boolean NOT NULL,
    is_vegetarian boolean NOT NULL,
    endline character varying(255)[] NOT NULL,
    image character varying(255) NOT NULL,
    endline_rus character varying(255)[] NOT NULL,
    bold_text text NOT NULL,
    bold_text_rus text NOT NULL,
    is_not_hypolactasian boolean NOT NULL
);


ALTER TABLE public.recipes OWNER TO db_role;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: db_role
--

CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO db_role;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_role
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Продукт	7	add_product
26	Can change Продукт	7	change_product
27	Can delete Продукт	7	delete_product
28	Can view Продукт	7	view_product
29	Can add Рецепт	8	add_recipe
30	Can change Рецепт	8	change_recipe
31	Can delete Рецепт	8	delete_recipe
32	Can view Рецепт	8	view_recipe
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$120000$XpPHyJgBSnWD$/SzhQTZbuuNdW3VEr4kOZF/i4akQb0S+mw9+V0zv6PI=	2018-12-11 11:52:53.904129+00	t	admin				t	t	2018-11-15 19:35:08.970036+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-11-15 19:35:53.039969+00	1	lem	3		4	3
2	2018-11-15 19:35:53.043179+00	2	rrubberекtree	3		4	3
3	2018-11-15 19:46:41.220641+00	1	УЛЮБЛЕНА ВІВСЯНКА	1	[{"added": {}}]	7	3
4	2018-11-15 19:49:37.254352+00	2	УЛЮБЛЕНА ГРЕЧКА	1	[{"added": {}}]	7	3
5	2018-11-15 19:51:41.903243+00	1	УЛЮБЛЕНА ВІВСЯНКА	2	[{"changed": {"fields": ["list_heading_rus", "about_list_rus", "silly_comment_rus"]}}]	7	3
6	2018-11-15 19:57:14.802443+00	1	УЛЮБЛЕНА ВІВСЯНКА	3		7	3
7	2018-11-15 20:00:19.098924+00	3	УЛЮБЛЕНА ВІВСЯНКА	1	[{"added": {}}]	7	3
8	2018-11-15 20:00:40.831922+00	2	УЛЮБЛЕНА ГРЕЧКА	3		7	3
9	2018-11-15 20:03:54.67704+00	4	УЛЮБЛЕНА ГРЕЧКА	1	[{"added": {}}]	7	3
10	2018-11-16 08:55:07.108425+00	3	УЛЮБЛЕНА ВІВСЯНКА	2	[]	7	3
11	2018-11-16 08:55:52.357179+00	3	УЛЮБЛЕНА ВІВСЯНКА	2	[{"changed": {"fields": ["content", "content_rus"]}}]	7	3
12	2018-11-16 11:26:16.905948+00	3	УЛЮБЛЕНА ВІВСЯНКА	2	[{"changed": {"fields": ["content", "content_rus"]}}]	7	3
13	2018-11-16 11:27:28.80853+00	4	УЛЮБЛЕНА ГРЕЧКА	2	[]	7	3
14	2018-12-11 12:35:12.738972+00	1	Recipe object (1)	1	[{"added": {}}]	8	3
15	2018-12-14 15:06:50.285838+00	4	УЛЮБЛЕНА ГРЕЧКА	2	[{"changed": {"fields": ["small_cardboard_weight", "big_cardboard_weight"]}}]	7	3
16	2018-12-14 15:07:05.155157+00	3	УЛЮБЛЕНА ВІВСЯНКА	2	[{"changed": {"fields": ["small_cardboard_weight", "big_cardboard_weight"]}}]	7	3
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	products_api	product
8	recipes_api	recipe
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-15 19:29:36.367935+00
2	auth	0001_initial	2018-11-15 19:29:36.433671+00
3	admin	0001_initial	2018-11-15 19:29:36.460486+00
4	admin	0002_logentry_remove_auto_add	2018-11-15 19:29:36.474314+00
5	admin	0003_logentry_add_action_flag_choices	2018-11-15 19:29:36.486501+00
6	contenttypes	0002_remove_content_type_name	2018-11-15 19:29:36.51423+00
7	auth	0002_alter_permission_name_max_length	2018-11-15 19:29:36.523852+00
8	auth	0003_alter_user_email_max_length	2018-11-15 19:29:36.537025+00
9	auth	0004_alter_user_username_opts	2018-11-15 19:29:36.549813+00
10	auth	0005_alter_user_last_login_null	2018-11-15 19:29:36.564453+00
11	auth	0006_require_contenttypes_0002	2018-11-15 19:29:36.56707+00
12	auth	0007_alter_validators_add_error_messages	2018-11-15 19:29:36.579035+00
13	auth	0008_alter_user_username_max_length	2018-11-15 19:29:36.594575+00
14	auth	0009_alter_user_last_name_max_length	2018-11-15 19:29:36.609776+00
15	products_api	0001_initial	2018-11-15 19:29:36.626034+00
16	sessions	0001_initial	2018-11-15 19:29:36.639206+00
17	products_api	0002_auto_20181203_0900	2018-12-03 07:00:31.922144+00
18	recipes_api	0001_initial	2018-12-11 11:40:14.639716+00
19	recipes_api	0002_auto_20181211_1343	2018-12-11 11:45:05.665838+00
20	recipes_api	0003_auto_20181211_1344	2018-12-11 11:45:05.831216+00
21	recipes_api	0004_auto_20181211_1410	2018-12-11 12:10:45.396771+00
22	recipes_api	0005_auto_20181211_1418	2018-12-11 12:34:48.67127+00
23	recipes_api	0006_auto_20181211_1532	2018-12-11 13:32:42.350478+00
24	products_api	0003_remove_product_title_subtitle_color	2018-12-11 14:10:23.304591+00
25	products_api	0004_auto_20181214_1705	2018-12-14 15:05:27.744867+00
26	recipes_api	0007_auto_20181214_1713	2018-12-14 15:13:28.513563+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7cipd33ye319dckxebu67712uay3zdgl	MDM5OWIzNTc4NTViMTZmNjM3YjA1ZGVkYjE5NGIwNzBmNzdlMjk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmY5MzEwZDNlOTQ4ZjY2ZTNhODE2ZDk0ZjEzNjRjMmExZWUyNjMzIn0=	2018-11-29 19:35:33.913957+00
iuk1h2z6nndyo9ya74gbhi099f9izpeg	MDM5OWIzNTc4NTViMTZmNjM3YjA1ZGVkYjE5NGIwNzBmNzdlMjk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmY5MzEwZDNlOTQ4ZjY2ZTNhODE2ZDk0ZjEzNjRjMmExZWUyNjMzIn0=	2018-11-29 20:51:11.006487+00
qdnvjvsdtgxnw0krv9gxf0op9o03pq43	MDM5OWIzNTc4NTViMTZmNjM3YjA1ZGVkYjE5NGIwNzBmNzdlMjk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmY5MzEwZDNlOTQ4ZjY2ZTNhODE2ZDk0ZjEzNjRjMmExZWUyNjMzIn0=	2018-11-30 08:54:21.701296+00
3uawxz49t6ogrysphpq5hkf8rfcgka9m	MDM5OWIzNTc4NTViMTZmNjM3YjA1ZGVkYjE5NGIwNzBmNzdlMjk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmY5MzEwZDNlOTQ4ZjY2ZTNhODE2ZDk0ZjEzNjRjMmExZWUyNjMzIn0=	2018-11-30 11:23:26.295705+00
ltwvolkjpi9yvj01lrgumdkg3farn3wo	MDM5OWIzNTc4NTViMTZmNjM3YjA1ZGVkYjE5NGIwNzBmNzdlMjk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYmY5MzEwZDNlOTQ4ZjY2ZTNhODE2ZDk0ZjEzNjRjMmExZWUyNjMzIn0=	2018-12-25 11:52:53.958793+00
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.products (id, title, title_rus, subtitle, subtitle_rus, image, cereal_image, image_for_product_page, content, content_rus, list_heading, list_heading_rus, about_list, about_list_rus, silly_comment, silly_comment_rus, calories, proteins, carbohydrates, cholesterol, big_cardboard_weight, small_cardboard_weight) FROM stdin;
4	УЛЮБЛЕНА ГРЕЧКА	ЛЮБИМАЯ ГРЕЧКА	Напій ультрапастеризований гречаний 2,5% жиру	Напиток ультрапастеризованный гречневый 2,5% жира	image/upload/v1542312233/fq0btxbmlgrholb4qszi.png	image/upload/v1542312234/ai3vgsx8r8dqcli9shdx.png	image/upload/v1542312234/glacyo68c1xvgcllriec.png	{"А ти вже знаєш, що гречка – це справжній супергерой серед круп? Вона нашому мозку допомагає думати, нервам не напружуватись, а настрою завжди бути на хвилі позитиву.","Саме тому компанія «Люстдорф» створила перший 100% рослинний смачно-корисний напій з української гречки. В ньому 5 натуральних компонентів: вода, гречана мука, соняшникова олія, карагенан (червоні морські водорості), трохи солі. І все."}	{"А ты уже знаешь, что гречка - это настоящий супергерой среди круп? Она помогает нашему мозгу думать, нервам не напрягаться, а настроению всегда быть на волне позитива.","Именно поэтому компания «Люстдорф» создала первый 100% растительный вкусно-полезный напиток из украинской гречки. В нём 5 натуральных компонентов: вода, гречневая мука, подсолнечное масло, карагенан (красные морские водоросли), немного соли. И всё."}	ХОЧЕШ БІЛЬШЕ ПРО КОРИСТЬ ГРЕЧКИ?	ХОЧЕШЬ БОЛЬШЕ О ПОЛЬЗЕ ГРЕЧКИ?	{"В ній багато заліза та вітаміну Е – вони допомагають забезпечувати всі органи киснем","цинк, для метаболізму вітаміну Е","калій, для кісточок і серця","йод, який впливає на ріст, розвиток та обмін речовин","фтор – найважливіший для міцності наших зубів","вітамін РР і група В, що турбується про нервову систему та серце"}	{"В ней много железа и витамина Е - они помогают обеспечивать все органы кислородом","цинк, для метаболизма витамина Е","калий, для костей и сердца","йод, который влияет на рост, развитие и обмен веществ","фтор - самый важный для крепости наших зубов","витамин РР и группа В, которые заботятся о нервной системе и сердце"}	Гречка навіть від безсоння допомагає. Ну як її не любити? ☺	Гречка даже от бессонницы помогает. Ну как её не любить? ☺	52.5	1	6.5	0	1000	250
3	УЛЮБЛЕНА ВІВСЯНКА	ЛЮБИМАЯ ОВСЯНКА	Напій ультрапастеризований вівсяний 2,5% жиру	Напиток ультрапастеризованный овсяный 2,5% жира	image/upload/v1542312017/br3vnmjhjpieiql21ahh.png	image/upload/v1542312018/m4e9enzcj9idue8iftea.png	image/upload/v1542312018/h0uaq8jowgvy2ovakcdb.png	{"Тільки уяви, овес – це дієвий засіб від стресу. Він відновлює душевну рівновагу і допомагає долати повсякденні труднощі. Як? Один ковток нашого нового 100% українського вівсяного напою і всі твої проблеми відійдуть на другий план. Бо на першому з’явиться питання «Ну як так смачно?».","Все просто – компанія «Люстдорф» створила його із 5 натуральних компонентів: води, вівсяної муки, соняшникової олії, карагенану (червоні морські водорості) та солі."}	{"Только представь, овёс - это эффективное средство от стресса. Он восстанавливает душевное равновесие и помогает преодолевать повседневные трудности. Как? Один глоток нашего нового 100% украинского овсяного напитка и все твои проблемы отойдут на второй план. Потому что на первом появится вопрос «Ну как так вкусно?».","Все просто - компания «Люстдорф» создала его из 5 натуральных компонентов: воды, овсяной муки, подсолнечного масла, карагенана (красные морские водоросли) и соли."}	ЧОМУ ОВЕС ОСОБЛИВИЙ?	ПОЧЕМУ ОВЁС ОСОБЕННЫЙ?	{"він регулює вміст глюкози і покращує згортання крові","турбується про обмін речовин, печінку і щитовидну залозу","допомагає шлунку, ниркам та кісточкам","в ньому є клітковина, для очищення організму","а ще фосфор, кремній і вітаміни групи B для мозку, пам’яті, концентрації та зміцнення нервів"}	{"он регулирует содержание глюкозы и улучшает свёртываемость крови","заботится об обмене веществ, печени и щитовидной железе","помогает желудку, почкам и костям","в нём есть клетчатка, для очищения организма","а ещё фосфор, кремний и витамины группы В для мозга, памяти, концентрации и укрепления нервов"}	Овес заряджає енергією і навіть про твою вагу турбується. Такими корисними ковтки ще не були ☺	Овёс заряжает энергией и даже беспокоится о твоём весе. Такими полезными глотки ещё не были ☺	52.5	1	6.5	0	1000	250
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: db_role
--

COPY public.recipes (id, title, title_rus, subtitle, subtitle_rus, ingridients, ingridients_rus, howto, howto_rus, is_vegan, is_vegetarian, endline, image, endline_rus, bold_text, bold_text_rus, is_not_hypolactasian) FROM stdin;
1	Вівсянка	Вівсянка	Хочете снідати смачно та з користю?	Хочете снідати смачно та з користю?	{"0,5 склянки вівсяних пластівців","1 склянка «Ідеаль Немолоко» 2,5%","1 ч. л. меду (за бажанням)","сіль за бажанням"}	{"0,5 склянки вівсяних пластівців","1 склянка «Ідеаль Немолоко» 2,5%","1 ч. л. меду (за бажанням)","сіль за бажанням"}	{"Доведіть «Ідеаль Немолоко» до кипіння,постійно помішуючи, додайте вівсяні пластівці та варіть на повільному вогні 5-7 хв.  Готово? Вимкніть та підсоліть.","Якщо хочете більше смакових та кольорових відтінків, додайте у готову кашу мед та прикрасьте її ягодами або фруктами."}	{"Доведіть «Ідеаль Немолоко» до кипіння,постійно помішуючи, додайте вівсяні пластівці та варіть на повільному вогні 5-7 хв.  Готово? Вимкніть та підсоліть.","Якщо хочете більше смакових та кольорових відтінків, додайте у готову кашу мед та прикрасьте її ягодами або фруктами."}	t	f	{"ДЛЯ ВЕГЕТАРІАНЦІВ,","ТИХ, ХТО НЕ ПЕРЕНОСИТЬ ЛАКТОЗУ"}	image/upload/v1544531712/vhjashen3tgh4cjglvqr.png	{"ДЛЯ ВЕГЕТАРІАНЦІВ,","ТИХ, ХТО НЕ ПЕРЕНОСИТЬ ЛАКТОЗУ"}	Спробуйте приготувати кашу на рослинному молоці. \r\nВівсянка – або як її ще називають «найкорисніша з каш» – \r\nі «Ідеаль Немолоко» у дуеті створять подвоєну користь \r\nі зарядять енергією на увесь день. А ваш організм отримає \r\nще більше рослинного білку та харчових волокон.	Спробуйте приготувати кашу на рослинному молоці. \r\nВівсянка – або як її ще називають «найкорисніша з каш» – \r\nі «Ідеаль Немолоко» у дуеті створять подвоєну користь \r\nі зарядять енергією на увесь день. А ваш організм отримає \r\nще більше рослинного білку та харчових волокон.	f
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.products_id_seq', 4, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_role
--

SELECT pg_catalog.setval('public.recipes_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: db_role
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: db_role
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--
