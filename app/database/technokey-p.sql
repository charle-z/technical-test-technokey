toc.dat                                                                                             0000600 0004000 0002000 00000025163 14541621463 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {         	   technokey    15.4    15.4                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    41346 	   technokey    DATABASE        CREATE DATABASE technokey WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE technokey;
                postgres    false         �            1259    41378    personas    TABLE     :  CREATE TABLE public.personas (
    persona_id integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    usuario_id integer,
    estado integer,
    persona_tipodni character varying(100),
    persona_dni character varying(100),
    persona_nombres character varying(100),
    persona_apellido character varying(100),
    persona_email character varying(100),
    persona_telefono character varying(100),
    persona_fechanacimiento date,
    persona_actualizadopor integer,
    persona_factualizacion timestamp without time zone
);
    DROP TABLE public.personas;
       public         heap    postgres    false         �            1259    41377    personas_persona_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personas_persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.personas_persona_id_seq;
       public          postgres    false    215                     0    0    personas_persona_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.personas_persona_id_seq OWNED BY public.personas.persona_id;
          public          postgres    false    214         �            1259    49540    usuarios    TABLE     3  CREATE TABLE public.usuarios (
    usuario_id integer NOT NULL,
    persona_idcreador integer,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado integer,
    persona_id integer,
    usuario_actualizadopor integer,
    usuario_factualizacion timestamp without time zone
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false         �            1259    41398    usuarios_sistema    TABLE     �  CREATE TABLE public.usuarios_sistema (
    usuariosistema_id integer NOT NULL,
    persona_idcreador integer,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado integer,
    persona_id integer,
    usuariosistema_username character varying(100),
    usuariosistema_password character varying(256),
    usuariosistema_recuperarfecha timestamp without time zone,
    usuariosistema_actualizadopor integer,
    usuariosistema_factualizacion timestamp without time zone
);
 $   DROP TABLE public.usuarios_sistema;
       public         heap    postgres    false         �            1259    41397 &   usuarios_sistema_usuariosistema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_sistema_usuariosistema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.usuarios_sistema_usuariosistema_id_seq;
       public          postgres    false    219         !           0    0 &   usuarios_sistema_usuariosistema_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.usuarios_sistema_usuariosistema_id_seq OWNED BY public.usuarios_sistema.usuariosistema_id;
          public          postgres    false    218         �            1259    49539    usuarios_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_usuario_id_seq;
       public          postgres    false    221         "           0    0    usuarios_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios.usuario_id;
          public          postgres    false    220         �            1259    41388    vuelos    TABLE       CREATE TABLE public.vuelos (
    vuelo_id integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    persona_id integer,
    estado integer,
    usuario_id integer,
    fecha_vuelo date,
    hora_salida time without time zone,
    hora_llegada time without time zone,
    duracion_trayecto double precision,
    tipo_trayecto text,
    costo_vuelo money,
    puerta_vuelo text,
    grupo_vuelo integer,
    vuelo_actualizadopor integer,
    vuelo_factualizacion timestamp without time zone
);
    DROP TABLE public.vuelos;
       public         heap    postgres    false         �            1259    41387    vuelos_vuelo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vuelos_vuelo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vuelos_vuelo_id_seq;
       public          postgres    false    217         #           0    0    vuelos_vuelo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vuelos_vuelo_id_seq OWNED BY public.vuelos.vuelo_id;
          public          postgres    false    216         t           2604    41381    personas persona_id    DEFAULT     z   ALTER TABLE ONLY public.personas ALTER COLUMN persona_id SET DEFAULT nextval('public.personas_persona_id_seq'::regclass);
 B   ALTER TABLE public.personas ALTER COLUMN persona_id DROP DEFAULT;
       public          postgres    false    215    214    215         z           2604    49543    usuarios usuario_id    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN usuario_id DROP DEFAULT;
       public          postgres    false    220    221    221         x           2604    41401 "   usuarios_sistema usuariosistema_id    DEFAULT     �   ALTER TABLE ONLY public.usuarios_sistema ALTER COLUMN usuariosistema_id SET DEFAULT nextval('public.usuarios_sistema_usuariosistema_id_seq'::regclass);
 Q   ALTER TABLE public.usuarios_sistema ALTER COLUMN usuariosistema_id DROP DEFAULT;
       public          postgres    false    219    218    219         v           2604    41391    vuelos vuelo_id    DEFAULT     r   ALTER TABLE ONLY public.vuelos ALTER COLUMN vuelo_id SET DEFAULT nextval('public.vuelos_vuelo_id_seq'::regclass);
 >   ALTER TABLE public.vuelos ALTER COLUMN vuelo_id DROP DEFAULT;
       public          postgres    false    216    217    217                   0    41378    personas 
   TABLE DATA           �   COPY public.personas (persona_id, fecha_creacion, usuario_id, estado, persona_tipodni, persona_dni, persona_nombres, persona_apellido, persona_email, persona_telefono, persona_fechanacimiento, persona_actualizadopor, persona_factualizacion) FROM stdin;
    public          postgres    false    215       3347.dat           0    49540    usuarios 
   TABLE DATA           �   COPY public.usuarios (usuario_id, persona_idcreador, fecha_creacion, estado, persona_id, usuario_actualizadopor, usuario_factualizacion) FROM stdin;
    public          postgres    false    221       3353.dat           0    41398    usuarios_sistema 
   TABLE DATA             COPY public.usuarios_sistema (usuariosistema_id, persona_idcreador, fecha_creacion, estado, persona_id, usuariosistema_username, usuariosistema_password, usuariosistema_recuperarfecha, usuariosistema_actualizadopor, usuariosistema_factualizacion) FROM stdin;
    public          postgres    false    219       3351.dat           0    41388    vuelos 
   TABLE DATA           �   COPY public.vuelos (vuelo_id, fecha_creacion, persona_id, estado, usuario_id, fecha_vuelo, hora_salida, hora_llegada, duracion_trayecto, tipo_trayecto, costo_vuelo, puerta_vuelo, grupo_vuelo, vuelo_actualizadopor, vuelo_factualizacion) FROM stdin;
    public          postgres    false    217       3349.dat $           0    0    personas_persona_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.personas_persona_id_seq', 1, false);
          public          postgres    false    214         %           0    0 &   usuarios_sistema_usuariosistema_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.usuarios_sistema_usuariosistema_id_seq', 1, false);
          public          postgres    false    218         &           0    0    usuarios_usuario_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 1, false);
          public          postgres    false    220         '           0    0    vuelos_vuelo_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vuelos_vuelo_id_seq', 1, true);
          public          postgres    false    216         }           2606    41386    personas personas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (persona_id);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public            postgres    false    215         �           2606    49546    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    221         �           2606    41404 &   usuarios_sistema usuarios_sistema_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.usuarios_sistema
    ADD CONSTRAINT usuarios_sistema_pkey PRIMARY KEY (usuariosistema_id);
 P   ALTER TABLE ONLY public.usuarios_sistema DROP CONSTRAINT usuarios_sistema_pkey;
       public            postgres    false    219                    2606    41396    vuelos vuelos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_pkey PRIMARY KEY (vuelo_id);
 <   ALTER TABLE ONLY public.vuelos DROP CONSTRAINT vuelos_pkey;
       public            postgres    false    217                                                                                                                                                                                                                                                                                                                                                                                                                     3347.dat                                                                                            0000600 0004000 0002000 00000000005 14541621463 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3353.dat                                                                                            0000600 0004000 0002000 00000000005 14541621463 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3351.dat                                                                                            0000600 0004000 0002000 00000000005 14541621463 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3349.dat                                                                                            0000600 0004000 0002000 00000000141 14541621463 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-01-01 12:30:00	1	1	1	2023-12-30	10:30:00	12:30:00	2	Direct Flight	$ 200,00	C	5	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000024056 14541621463 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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

DROP DATABASE technokey;
--
-- Name: technokey; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE technokey WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE technokey OWNER TO postgres;

\connect technokey

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
-- Name: personas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personas (
    persona_id integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    usuario_id integer,
    estado integer,
    persona_tipodni character varying(100),
    persona_dni character varying(100),
    persona_nombres character varying(100),
    persona_apellido character varying(100),
    persona_email character varying(100),
    persona_telefono character varying(100),
    persona_fechanacimiento date,
    persona_actualizadopor integer,
    persona_factualizacion timestamp without time zone
);


ALTER TABLE public.personas OWNER TO postgres;

--
-- Name: personas_persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personas_persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personas_persona_id_seq OWNER TO postgres;

--
-- Name: personas_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personas_persona_id_seq OWNED BY public.personas.persona_id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    usuario_id integer NOT NULL,
    persona_idcreador integer,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado integer,
    persona_id integer,
    usuario_actualizadopor integer,
    usuario_factualizacion timestamp without time zone
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_sistema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_sistema (
    usuariosistema_id integer NOT NULL,
    persona_idcreador integer,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    estado integer,
    persona_id integer,
    usuariosistema_username character varying(100),
    usuariosistema_password character varying(256),
    usuariosistema_recuperarfecha timestamp without time zone,
    usuariosistema_actualizadopor integer,
    usuariosistema_factualizacion timestamp without time zone
);


ALTER TABLE public.usuarios_sistema OWNER TO postgres;

--
-- Name: usuarios_sistema_usuariosistema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_sistema_usuariosistema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_sistema_usuariosistema_id_seq OWNER TO postgres;

--
-- Name: usuarios_sistema_usuariosistema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_sistema_usuariosistema_id_seq OWNED BY public.usuarios_sistema.usuariosistema_id;


--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_usuario_id_seq OWNER TO postgres;

--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios.usuario_id;


--
-- Name: vuelos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vuelos (
    vuelo_id integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    persona_id integer,
    estado integer,
    usuario_id integer,
    fecha_vuelo date,
    hora_salida time without time zone,
    hora_llegada time without time zone,
    duracion_trayecto double precision,
    tipo_trayecto text,
    costo_vuelo money,
    puerta_vuelo text,
    grupo_vuelo integer,
    vuelo_actualizadopor integer,
    vuelo_factualizacion timestamp without time zone
);


ALTER TABLE public.vuelos OWNER TO postgres;

--
-- Name: vuelos_vuelo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vuelos_vuelo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vuelos_vuelo_id_seq OWNER TO postgres;

--
-- Name: vuelos_vuelo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vuelos_vuelo_id_seq OWNED BY public.vuelos.vuelo_id;


--
-- Name: personas persona_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas ALTER COLUMN persona_id SET DEFAULT nextval('public.personas_persona_id_seq'::regclass);


--
-- Name: usuarios usuario_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);


--
-- Name: usuarios_sistema usuariosistema_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_sistema ALTER COLUMN usuariosistema_id SET DEFAULT nextval('public.usuarios_sistema_usuariosistema_id_seq'::regclass);


--
-- Name: vuelos vuelo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos ALTER COLUMN vuelo_id SET DEFAULT nextval('public.vuelos_vuelo_id_seq'::regclass);


--
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personas (persona_id, fecha_creacion, usuario_id, estado, persona_tipodni, persona_dni, persona_nombres, persona_apellido, persona_email, persona_telefono, persona_fechanacimiento, persona_actualizadopor, persona_factualizacion) FROM stdin;
\.
COPY public.personas (persona_id, fecha_creacion, usuario_id, estado, persona_tipodni, persona_dni, persona_nombres, persona_apellido, persona_email, persona_telefono, persona_fechanacimiento, persona_actualizadopor, persona_factualizacion) FROM '$$PATH$$/3347.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (usuario_id, persona_idcreador, fecha_creacion, estado, persona_id, usuario_actualizadopor, usuario_factualizacion) FROM stdin;
\.
COPY public.usuarios (usuario_id, persona_idcreador, fecha_creacion, estado, persona_id, usuario_actualizadopor, usuario_factualizacion) FROM '$$PATH$$/3353.dat';

--
-- Data for Name: usuarios_sistema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_sistema (usuariosistema_id, persona_idcreador, fecha_creacion, estado, persona_id, usuariosistema_username, usuariosistema_password, usuariosistema_recuperarfecha, usuariosistema_actualizadopor, usuariosistema_factualizacion) FROM stdin;
\.
COPY public.usuarios_sistema (usuariosistema_id, persona_idcreador, fecha_creacion, estado, persona_id, usuariosistema_username, usuariosistema_password, usuariosistema_recuperarfecha, usuariosistema_actualizadopor, usuariosistema_factualizacion) FROM '$$PATH$$/3351.dat';

--
-- Data for Name: vuelos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vuelos (vuelo_id, fecha_creacion, persona_id, estado, usuario_id, fecha_vuelo, hora_salida, hora_llegada, duracion_trayecto, tipo_trayecto, costo_vuelo, puerta_vuelo, grupo_vuelo, vuelo_actualizadopor, vuelo_factualizacion) FROM stdin;
\.
COPY public.vuelos (vuelo_id, fecha_creacion, persona_id, estado, usuario_id, fecha_vuelo, hora_salida, hora_llegada, duracion_trayecto, tipo_trayecto, costo_vuelo, puerta_vuelo, grupo_vuelo, vuelo_actualizadopor, vuelo_factualizacion) FROM '$$PATH$$/3349.dat';

--
-- Name: personas_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personas_persona_id_seq', 1, false);


--
-- Name: usuarios_sistema_usuariosistema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_sistema_usuariosistema_id_seq', 1, false);


--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 1, false);


--
-- Name: vuelos_vuelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vuelos_vuelo_id_seq', 1, true);


--
-- Name: personas personas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (persona_id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id);


--
-- Name: usuarios_sistema usuarios_sistema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_sistema
    ADD CONSTRAINT usuarios_sistema_pkey PRIMARY KEY (usuariosistema_id);


--
-- Name: vuelos vuelos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_pkey PRIMARY KEY (vuelo_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  