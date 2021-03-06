PGDMP     1                    z            cambio_service    11.4    11.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16558    cambio_service    DATABASE     ?   CREATE DATABASE cambio_service WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE cambio_service;
             postgres    false            ?            1259    16571    cambio    TABLE     ?   CREATE TABLE public.cambio (
    id bigint NOT NULL,
    from_currency character varying NOT NULL,
    to_currency character varying NOT NULL,
    conversion_factor numeric(19,2) NOT NULL
);
    DROP TABLE public.cambio;
       public         postgres    false            ?            1259    16569    cambio_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cambio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cambio_id_seq;
       public       postgres    false    198                       0    0    cambio_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cambio_id_seq OWNED BY public.cambio.id;
            public       postgres    false    197            ?            1259    16559    flyway_schema_history    TABLE     ?  CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);
 )   DROP TABLE public.flyway_schema_history;
       public         postgres    false            ?
           2604    16574 	   cambio id    DEFAULT     f   ALTER TABLE ONLY public.cambio ALTER COLUMN id SET DEFAULT nextval('public.cambio_id_seq'::regclass);
 8   ALTER TABLE public.cambio ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198                      0    16571    cambio 
   TABLE DATA               S   COPY public.cambio (id, from_currency, to_currency, conversion_factor) FROM stdin;
    public       postgres    false    198   ?                 0    16559    flyway_schema_history 
   TABLE DATA               ?   COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
    public       postgres    false    196   ^                  0    0    cambio_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cambio_id_seq', 7, true);
            public       postgres    false    197            ?
           2606    16579    cambio cambio_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cambio
    ADD CONSTRAINT cambio_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cambio DROP CONSTRAINT cambio_pkey;
       public         postgres    false    198            ?
           2606    16567 .   flyway_schema_history flyway_schema_history_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);
 X   ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
       public         postgres    false    196            ?
           1259    16568    flyway_schema_history_s_idx    INDEX     `   CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);
 /   DROP INDEX public.flyway_schema_history_s_idx;
       public         postgres    false    196               ]   x?%?9?0???0??J6ѰDAH?? S??@?9?PW2Ί蜯J?mu.C?????ד?Ȗ`?q-???
??B???????)
?? ^W??         ?   x?uͽ
?0 ???}???嚟?]?I8R"??????[???C@????\]R???Kc?(p>??"???d3?<@f??`*?z??d?j?5?
]k?m???m??VE@p,?k??H??;R?&???~???, }??VJ??>>Y     