PGDMP     
                    z            book_service    11.4    11.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16580    book_service    DATABASE     ?   CREATE DATABASE book_service WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE book_service;
             postgres    false            ?            1259    16593    book    TABLE     ?   CREATE TABLE public.book (
    id bigint NOT NULL,
    author character varying,
    launch_date date NOT NULL,
    price numeric(19,2) NOT NULL,
    title character varying
);
    DROP TABLE public.book;
       public         postgres    false            ?            1259    16591    book_id_seq    SEQUENCE     t   CREATE SEQUENCE public.book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public       postgres    false    198                       0    0    book_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.book_id_seq OWNED BY public.book.id;
            public       postgres    false    197            ?            1259    16581    flyway_schema_history    TABLE     ?  CREATE TABLE public.flyway_schema_history (
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
           2604    16596    book id    DEFAULT     b   ALTER TABLE ONLY public.book ALTER COLUMN id SET DEFAULT nextval('public.book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198                      0    16593    book 
   TABLE DATA               E   COPY public.book (id, author, launch_date, price, title) FROM stdin;
    public       postgres    false    198   ?                 0    16581    flyway_schema_history 
   TABLE DATA               ?   COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
    public       postgres    false    196   p                  0    0    book_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.book_id_seq', 15, true);
            public       postgres    false    197            ?
           2606    16601    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public         postgres    false    198            ?
           2606    16589 .   flyway_schema_history flyway_schema_history_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);
 X   ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
       public         postgres    false    196            ?
           1259    16590    flyway_schema_history_s_idx    INDEX     `   CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);
 /   DROP INDEX public.flyway_schema_history_s_idx;
       public         postgres    false    196               ?  x?e?Mr?0???)? ???wvB?*?L%??4vcT?#?ΐ??"?9?$????*????=Iq??5??I
3°&?E?-?-)[?L???P<[?Q?Z?(?!??֠??|?-(??9??n??xk??ұ4\aU??????^??`???IW_??PLɫ??#?@???+?vI.?)??e????ڲ%?Bv??@L4??I?'&?曕uŧt{(?L?R?b??ܩmH?b?!??'?????v*Y??x?j?)P2??0?/??qG&????Ii???ĜV???\2??Q????%1?ϫ;????"???8n;?@?D8K;]qMX?L9?;?ѱ?e???p??31???S????$c??ܕ????P<??O?i??1c??Αa?Y????*???X?>???>k;2?K? [?頰~Պ?????lɗ??u?{F??2K???4%?B`3v^??9?.?d,?????/kP'?#?Ԇ?s\v?Z?|m'??0?D?w???<??뉱*a?ϣ??wp?4V??AÓP?E<????gVmPs??g??|Mq\e8????,?U0lL$G???&ƺ"??3y???D???N9?я?I8???nS?U?֧kՃ)?S?(Z??z??!?+??ah]?;?e?ja??ai9??54?w???P?????F???????7??????P?? ???~?I??,i<         ?   x??ͱ
?0????y????\LGu)???$?CK?M?k?ts??~??C???Cԇ?????(??,$??3 ?u??????k??U?V?4r?M??v??Z ???1ǩ?S(Aw??E"+????*???ΰ?v?7D??o?Z)??<?     