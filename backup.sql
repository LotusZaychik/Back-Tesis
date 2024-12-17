--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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
-- Name: cache; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO laravel_user;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO laravel_user;

--
-- Name: calificacion_tesis; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.calificacion_tesis (
    id_calificacion_tesis bigint NOT NULL,
    id_tesis bigint NOT NULL,
    id_estudiante bigint NOT NULL,
    calificacion integer NOT NULL,
    observaciones character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.calificacion_tesis OWNER TO laravel_user;

--
-- Name: calificacion_tesis_id_calificacion_tesis_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.calificacion_tesis_id_calificacion_tesis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.calificacion_tesis_id_calificacion_tesis_seq OWNER TO laravel_user;

--
-- Name: calificacion_tesis_id_calificacion_tesis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.calificacion_tesis_id_calificacion_tesis_seq OWNED BY public.calificacion_tesis.id_calificacion_tesis;


--
-- Name: comentarios; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.comentarios (
    id_comentario bigint NOT NULL,
    comentario character varying(500) NOT NULL,
    id_tesis bigint NOT NULL,
    id_usuario bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.comentarios OWNER TO laravel_user;

--
-- Name: comentarios_id_comentario_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.comentarios_id_comentario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comentarios_id_comentario_seq OWNER TO laravel_user;

--
-- Name: comentarios_id_comentario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.comentarios_id_comentario_seq OWNED BY public.comentarios.id_comentario;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO laravel_user;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO laravel_user;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO laravel_user;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO laravel_user;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO laravel_user;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO laravel_user;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO laravel_user;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO laravel_user;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO laravel_user;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO laravel_user;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: propuesta_tesis; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.propuesta_tesis (
    id_propuesta_tesis bigint NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    ambito character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT ambito_check CHECK (((ambito)::text = ANY ((ARRAY['investigacion'::character varying, 'desarrollo web'::character varying, 'desarrollo movil'::character varying, 'desarrollo videojuegos'::character varying, 'inteligencia artificial'::character varying])::text[])))
);


ALTER TABLE public.propuesta_tesis OWNER TO laravel_user;

--
-- Name: propuesta_tesis_id_propuesta_tesis_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.propuesta_tesis_id_propuesta_tesis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.propuesta_tesis_id_propuesta_tesis_seq OWNER TO laravel_user;

--
-- Name: propuesta_tesis_id_propuesta_tesis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.propuesta_tesis_id_propuesta_tesis_seq OWNED BY public.propuesta_tesis.id_propuesta_tesis;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.roles (
    id_rol bigint NOT NULL,
    nombre_rol character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO laravel_user;

--
-- Name: roles_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.roles_id_rol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_rol_seq OWNER TO laravel_user;

--
-- Name: roles_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.roles_id_rol_seq OWNED BY public.roles.id_rol;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO laravel_user;

--
-- Name: tesis; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.tesis (
    id_tesis bigint NOT NULL,
    titulo character varying(100) NOT NULL,
    id_estudiante bigint NOT NULL,
    id_tutor_docente bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    descripcion text,
    ambito character varying(255) DEFAULT 'investigacion'::character varying NOT NULL,
    grupal boolean DEFAULT false NOT NULL,
    estado character varying(255) DEFAULT 'en espera'::character varying NOT NULL,
    id_estudiante_companero bigint,
    CONSTRAINT tesis_ambito_check CHECK (((ambito)::text = ANY ((ARRAY['investigacion'::character varying, 'desarrollo web'::character varying, 'desarrollo movil'::character varying, 'desarrollo videojuegos'::character varying, 'inteligencia artificial'::character varying])::text[]))),
    CONSTRAINT tesis_estado_check CHECK (((estado)::text = ANY ((ARRAY['aprobado'::character varying, 'rechazado'::character varying, 'en espera'::character varying])::text[])))
);


ALTER TABLE public.tesis OWNER TO laravel_user;

--
-- Name: tesis_id_tesis_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.tesis_id_tesis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tesis_id_tesis_seq OWNER TO laravel_user;

--
-- Name: tesis_id_tesis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.tesis_id_tesis_seq OWNED BY public.tesis.id_tesis;


--
-- Name: users; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO laravel_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO laravel_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: laravel_user
--

CREATE TABLE public.usuarios (
    id_usuario bigint NOT NULL,
    nombres_usuario character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    id_rol bigint NOT NULL,
    telefono_usuario character varying(255) NOT NULL,
    direccion_usuario character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.usuarios OWNER TO laravel_user;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: laravel_user
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO laravel_user;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: laravel_user
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- Name: calificacion_tesis id_calificacion_tesis; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.calificacion_tesis ALTER COLUMN id_calificacion_tesis SET DEFAULT nextval('public.calificacion_tesis_id_calificacion_tesis_seq'::regclass);


--
-- Name: comentarios id_comentario; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.comentarios ALTER COLUMN id_comentario SET DEFAULT nextval('public.comentarios_id_comentario_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: propuesta_tesis id_propuesta_tesis; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.propuesta_tesis ALTER COLUMN id_propuesta_tesis SET DEFAULT nextval('public.propuesta_tesis_id_propuesta_tesis_seq'::regclass);


--
-- Name: roles id_rol; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.roles ALTER COLUMN id_rol SET DEFAULT nextval('public.roles_id_rol_seq'::regclass);


--
-- Name: tesis id_tesis; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.tesis ALTER COLUMN id_tesis SET DEFAULT nextval('public.tesis_id_tesis_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.cache (key, value, expiration) FROM stdin;
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: calificacion_tesis; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.calificacion_tesis (id_calificacion_tesis, id_tesis, id_estudiante, calificacion, observaciones, created_at, updated_at) FROM stdin;
1	8	44	10	buena tesis jasjdajsd	2024-12-16 02:21:35	2024-12-16 02:21:35
2	10	41	5	mala tesis	2024-12-16 02:53:37	2024-12-16 02:53:37
3	11	48	7	ajsdk nasjdkn asjdknas kjdnbaslkj bnasjkd	2024-12-16 03:02:38	2024-12-16 03:02:38
4	12	50	4	mal tu wbda	2024-12-16 03:02:50	2024-12-16 03:02:50
5	15	54	8	Buen trabajo su tesis cumple con su proposito, solo falto abarcar mas areas	2024-12-16 13:15:52	2024-12-16 13:15:52
\.


--
-- Data for Name: comentarios; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.comentarios (id_comentario, comentario, id_tesis, id_usuario, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.migrations (id, migration, batch) FROM stdin;
6	0001_01_01_000000_create_users_table	1
7	0001_01_01_000001_create_cache_table	1
8	0001_01_01_000002_create_jobs_table	1
9	2024_12_07_015110_create_roles_table	1
10	2024_12_07_015454_create_usuarios_table	1
11	2024_12_07_015911_create_tesis_table	1
12	2024_12_07_020525_create_calificacion_tesis_table	1
13	2024_12_07_022057_create_personal_access_tokens_table	1
14	2024_12_10_045931_create_comentarios_table	1
15	2024_12_10_194005_create_propuesta_teses_table	1
16	2024_12_11_001731_add_fields_to_tesis_table	1
17	2024_12_11_094602_add_fields_to_tesis	2
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: propuesta_tesis; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.propuesta_tesis (id_propuesta_tesis, titulo, descripcion, ambito, created_at, updated_at) FROM stdin;
6	Propuesta de investigación	Esto es una propuesta de investigación	investigacion	2024-12-16 12:37:50	2024-12-16 12:37:50
7	Sistema de gestión para microempresas	Sistema de gestión administrativa para microempresas	desarrollo web	2024-12-16 12:38:50	2024-12-16 12:38:50
8	Investigación sobre la seguridad de los datos en redes de internet publicas	Investigación sobre la seguridad de los datos en redes de internet publicas	investigacion	2024-12-16 12:39:46	2024-12-16 12:39:46
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.roles (id_rol, nombre_rol, created_at, updated_at) FROM stdin;
1	estudiante	\N	\N
2	docente	\N	\N
3	decano	\N	\N
4	admin	\N	\N
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
ssuj0HzXJNxIgXzndLdUtv8r7DNm3LNdeBrNio2Y	\N	192.168.1.9	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDFtSXliZEl0aURqTGF5T2k3TmY2V09WUDMzTVd6a2hkT0tqY3hydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly8xOTIuMTY4LjEuNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1733885878
aeQ3OnwB2tWs3XPbTUnIh6N5WBlUyw8zEGO2krbO	\N	192.168.1.9	insomnia/10.2.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG9NWkVVU1Vrd1VZTkdzWjFPcUZyak50YlFZTGRPaTRWc2hvZzNxcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly8xOTIuMTY4LjEuNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1733886050
0Z6H1YmfJW5uZ2fjsSlwHaskXkmhDPWKbNWTpDRU	\N	192.168.1.9	insomnia/10.2.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0dBdUZnODRsMVU2UnFud2JkVkFkeDcybDBDREVqOGIyOG9zZTVldSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xOTIuMTY4LjEuNTA6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1733900918
hqCRMPEHl4lge6rxzM16fYQSlYhFLyQfZngY0yo2	\N	192.168.1.9	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVZkZEh2SnBYbmR2TFVBZ1l4aEFwUFI0Y09acm5ReGJSM1NTdE5SSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly8xOTIuMTY4LjEuNTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19	1733905217
0BIVBY15SoYWtbK35p4of3fmG5QZsKbTJFSQFJJq	\N	192.168.1.9	insomnia/10.2.0	YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUpiQ2l2WkI1eHJ0N1VRMzN1cGlPelBPS1NxS2d3ajVneFBaQlZtOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xOTIuMTY4LjEuNTA6ODA4MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1734267661
\.


--
-- Data for Name: tesis; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.tesis (id_tesis, titulo, id_estudiante, id_tutor_docente, created_at, updated_at, descripcion, ambito, grupal, estado, id_estudiante_companero) FROM stdin;
7	Ecuaciones psicologicasj ajsdjasd	40	16	2024-12-15 15:31:26	2024-12-15 15:31:26	Ecuaciones psicologicasj ajsdjasd	investigacion	f	en espera	\N
9	tema de malonso	46	45	2024-12-15 19:48:42	2024-12-15 19:48:42	tema de malonso	investigacion	f	en espera	\N
8	tema  de erick	44	43	2024-12-15 19:11:51	2024-12-16 01:02:07	tema  de erick	investigacion	f	aprobado	\N
10	investigacion de narcisa	41	43	2024-12-16 02:48:14	2024-12-16 02:53:19	investigacion de narcisa	investigacion	t	aprobado	27
11	desarrollo de jesus	48	49	2024-12-16 03:01:02	2024-12-16 03:02:14	desarrollo de jesus	desarrollo movil	f	aprobado	\N
12	investigacion de vanessa	50	49	2024-12-16 03:01:47	2024-12-16 03:02:16	investigacion de vanessa	investigacion	t	aprobado	41
14	Desarrollo de una aplicacion web para la gestion de propuesta de tesis	53	45	2024-12-16 12:47:54	2024-12-16 12:47:54	Desarrollo de una aplicacion web para la gestion de propuesta de tesis	investigacion	f	en espera	\N
15	Desarrollo de una aplicacion web para la gestion de propuesta de tesis	54	55	2024-12-16 13:11:38	2024-12-16 13:13:11	Desarrollo de una aplicacion web para la gestion de propuesta de tesis	desarrollo movil	f	aprobado	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: laravel_user
--

COPY public.usuarios (id_usuario, nombres_usuario, email, password, id_rol, telefono_usuario, direccion_usuario, created_at, updated_at) FROM stdin;
16	Roberth Moreria	roberthmoreira@example.com	$2y$12$tDWpHzEMbj2r05gNO1et0.iUBUHY91HjicTu9a/BJewiGETJdX6B.	2	1234567890	Calle Falsa 123	2024-12-11 09:29:25	2024-12-11 09:29:25
18	Administrador Administrador	admin@admin.com	$2y$12$flqx2RpAUFtsQsGnmjOqkerHVjzQCGOf612XtG0L6cEy3V8YzZ/YC	4	1232659856	direccion admin	2024-12-15 01:36:00	2024-12-15 01:36:00
19	Roberth Moreira	roberth_docente@docente.com	$2y$12$PmRNF17Y4SJ8jGZWfQ9O7eVWqnamXj1CADDIrxr3zZRexc2k0AQoq	3	0965563256	direccion docente 123	2024-12-15 01:36:34	2024-12-15 01:36:34
20	Oscar Moreira	oscar_docente@docente.com	$2y$12$j4AZfW1/BUl/hGuIeb2mWewCHfairTBwLYrxLo.E77a04MBhic6YC	2	0956563265	direccion docente 123	2024-12-15 01:38:46	2024-12-15 01:38:46
27	jonathan aasdasd	jonathan@live.uleam.edu.ec	$2y$12$JzKmfmFWfGQe5WTqRN7jDu1Ip8AN8Mw2TXLW3554b27gM3TJwzEU6	1	0923236565	Calle 305, Avenida 224	2024-12-15 06:28:52	2024-12-15 06:28:52
28	Luis Alexander Castillo Vera	luisxd@gmail.com	$2y$12$z.xizifwECn3wxEI/gzk9uVIJ1J4VOeRPDRI/EWR0UOAAWDoddX0a	1	0909656565	direccion 123	2024-12-15 06:30:26	2024-12-15 06:30:26
40	Sandy Juliet	sandy@gmail.com	$2y$12$6tnp8s5nShRhEk23U41Si.0XZnFhUInsnfxFuZgvC3vdi7nqtDMPK	1	0962643399	Calle 305, Avenida 224	2024-12-15 15:08:59	2024-12-15 15:08:59
41	narcisa tomala	narcisa@gmail.com	$2y$12$lAUPPfsaaVqOaB3LJaO/Xep99DkPy83DEKuN/B.A5wBzHWbeWzVNe	1	0965652255	Calle 305, Avenida 224	2024-12-15 15:13:53	2024-12-15 15:13:53
43	Malonso	malonso@docente.com	$2y$12$j4tQj5omZV4TCKiwGLi3qOxUwpWli1Xjf0pgPblAWgnnTVNBfUvN6	2	0965652323	direccion 123123	2024-12-15 19:10:43	2024-12-15 19:10:43
44	erick rodriguez	erick@gmail.com	$2y$12$0rp2EOXhXiuVzfXs0Sl.eeEBlT3uo9MGZi.8D8Ytc.WBL76HUAbu2	1	0965653265	direccion 123123	2024-12-15 19:11:13	2024-12-15 19:11:13
45	Antony Legarda	legarda@docente.com	$2y$12$wMPDiN8djcpQlCRBkGpQp.tetz0Wp7gC1GrnFvG6GTa4nPWTTgsVi	2	0965653232	casa de jerick	2024-12-15 19:45:21	2024-12-15 19:45:21
46	Maholy Andrade	maholy@gmail.com	$2y$12$/AVpb67oyAH7vD0B7.7l0OlEcCnHbcA2XjKK9ruvV1EqWZlHA6W3G	1	0954545454	direccion 123123	2024-12-15 19:46:08	2024-12-15 19:46:08
47	administrador administrador	admin2@admin.com	$2y$12$OZ/8eagWo2K.YESJbtPfUu3x.hZv1LteG3vJvn3uwHCdUEoGxZVSq	4	1212126565	direccion adjasd	2024-12-15 19:59:29	2024-12-15 19:59:29
48	Jesus Macias Algo	jesus@gmail.com	$2y$12$cdetViR0b.cMOiNdSFNLDup4YOBdj1EucwZDV2KPGZ24iTyRZUOhO	1	0932654578	direccion 123123	2024-12-16 02:58:36	2024-12-16 02:58:36
49	Mike Machuca	machuca@docente.com	$2y$12$llnmh1XwuZwSJRljdgZ3KedMj8gkkkFcEKi3LWoi4CUxhj1CVaz92	2	0965656565	direccion 123123	2024-12-16 02:59:27	2024-12-16 02:59:27
50	Vanessa Gomez	vanessa@gmail.com	$2y$12$E.4GJcUttko.wNWTm0gAxeynR0DV2FTO7uePyovutDpHPDvGNFYSu	1	0965787878	direccion 123123	2024-12-16 03:00:02	2024-12-16 03:00:02
53	Luis Castillo	luis@gmail.com	$2y$12$pOsl6WS91XEiivkhoYOB5e2qaGMB5IFlUZrbFGk8Nsp9cXfzTSbES	1	09999999999	Direccion 122	2024-12-16 12:44:56	2024-12-16 12:44:56
54	Jerick Bailon	jerick@gmail.com	$2y$12$8Z8PYnGkgit5VeY.TtEJj.YxADYbkWs3OGZdU6HX2IZp5LG7PpUe6	1	09833955555	Direccion 123	2024-12-16 13:08:10	2024-12-16 13:08:10
55	Junior Zamora	junior@gmail.com	$2y$12$1T4QDLe/CxnwX7YiJpFn9ejRWywtYLOPMHr1oJTZcyFbhwtKauqEi	2	0983365545	Direccion 123	2024-12-16 13:09:12	2024-12-16 13:09:12
\.


--
-- Name: calificacion_tesis_id_calificacion_tesis_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.calificacion_tesis_id_calificacion_tesis_seq', 5, true);


--
-- Name: comentarios_id_comentario_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.comentarios_id_comentario_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.migrations_id_seq', 17, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: propuesta_tesis_id_propuesta_tesis_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.propuesta_tesis_id_propuesta_tesis_seq', 8, true);


--
-- Name: roles_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.roles_id_rol_seq', 4, true);


--
-- Name: tesis_id_tesis_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.tesis_id_tesis_seq', 15, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: laravel_user
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 55, true);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: calificacion_tesis calificacion_tesis_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.calificacion_tesis
    ADD CONSTRAINT calificacion_tesis_pkey PRIMARY KEY (id_calificacion_tesis);


--
-- Name: comentarios comentarios_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_pkey PRIMARY KEY (id_comentario);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: propuesta_tesis propuesta_tesis_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.propuesta_tesis
    ADD CONSTRAINT propuesta_tesis_pkey PRIMARY KEY (id_propuesta_tesis);


--
-- Name: roles roles_nombre_rol_unique; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_rol_unique UNIQUE (nombre_rol);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: tesis tesis_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.tesis
    ADD CONSTRAINT tesis_pkey PRIMARY KEY (id_tesis);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_email_unique; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_unique UNIQUE (email);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: laravel_user
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: laravel_user
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: laravel_user
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: laravel_user
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: calificacion_tesis calificacion_tesis_id_estudiante_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.calificacion_tesis
    ADD CONSTRAINT calificacion_tesis_id_estudiante_foreign FOREIGN KEY (id_estudiante) REFERENCES public.usuarios(id_usuario);


--
-- Name: calificacion_tesis calificacion_tesis_id_tesis_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.calificacion_tesis
    ADD CONSTRAINT calificacion_tesis_id_tesis_foreign FOREIGN KEY (id_tesis) REFERENCES public.tesis(id_tesis);


--
-- Name: comentarios comentarios_id_tesis_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_id_tesis_foreign FOREIGN KEY (id_tesis) REFERENCES public.tesis(id_tesis) ON DELETE CASCADE;


--
-- Name: comentarios comentarios_id_usuario_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_id_usuario_foreign FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- Name: tesis tesis_id_docente_tutor_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.tesis
    ADD CONSTRAINT tesis_id_docente_tutor_foreign FOREIGN KEY (id_tutor_docente) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- Name: tesis tesis_id_estudiante_companero_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.tesis
    ADD CONSTRAINT tesis_id_estudiante_companero_foreign FOREIGN KEY (id_estudiante_companero) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- Name: tesis tesis_id_estudiante_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.tesis
    ADD CONSTRAINT tesis_id_estudiante_foreign FOREIGN KEY (id_estudiante) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;


--
-- Name: usuarios usuarios_id_rol_foreign; Type: FK CONSTRAINT; Schema: public; Owner: laravel_user
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_rol_foreign FOREIGN KEY (id_rol) REFERENCES public.roles(id_rol) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

