PGDMP     5    :                {            mostransavto    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    mostransavto    DATABASE     �   CREATE DATABASE mostransavto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
    DROP DATABASE mostransavto;
                postgres    false            �            1259    16553 
   finaldates    TABLE     �   CREATE TABLE public.finaldates (
    vacationid integer NOT NULL,
    uuid bigint NOT NULL,
    datestart text,
    datetill text
);
    DROP TABLE public.finaldates;
       public         heap    postgres    false            �            1259    16552    finaldates_vacationid_seq    SEQUENCE     �   CREATE SEQUENCE public.finaldates_vacationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.finaldates_vacationid_seq;
       public          postgres    false    218                       0    0    finaldates_vacationid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.finaldates_vacationid_seq OWNED BY public.finaldates.vacationid;
          public          postgres    false    217            �            1259    16399 
   unusedvacs    TABLE     �   CREATE TABLE public.unusedvacs (
    uuid bigint NOT NULL,
    department text NOT NULL,
    longvacation integer DEFAULT 1 NOT NULL,
    mediumvacation integer DEFAULT 2 NOT NULL,
    smallvacation integer DEFAULT 27 NOT NULL
);
    DROP TABLE public.unusedvacs;
       public         heap    postgres    false            �            1259    16630    unusedvacsw    TABLE     �   CREATE TABLE public.unusedvacsw (
    uuid bigint NOT NULL,
    department text NOT NULL,
    longvacation integer DEFAULT 1 NOT NULL,
    mediumvacation integer DEFAULT 2 NOT NULL,
    smallvacation integer DEFAULT 27 NOT NULL
);
    DROP TABLE public.unusedvacsw;
       public         heap    postgres    false            �            1259    16480    wishes    TABLE     �   CREATE TABLE public.wishes (
    vacationid integer NOT NULL,
    uuid bigint,
    vacationtype text,
    preferday text,
    prefermonth text
);
    DROP TABLE public.wishes;
       public         heap    postgres    false            �            1259    16479    wishes2_vacationid_seq    SEQUENCE     �   CREATE SEQUENCE public.wishes2_vacationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.wishes2_vacationid_seq;
       public          postgres    false    216                       0    0    wishes2_vacationid_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.wishes2_vacationid_seq OWNED BY public.wishes.vacationid;
          public          postgres    false    215            v           2604    16556    finaldates vacationid    DEFAULT     ~   ALTER TABLE ONLY public.finaldates ALTER COLUMN vacationid SET DEFAULT nextval('public.finaldates_vacationid_seq'::regclass);
 D   ALTER TABLE public.finaldates ALTER COLUMN vacationid DROP DEFAULT;
       public          postgres    false    217    218    218            u           2604    16483    wishes vacationid    DEFAULT     w   ALTER TABLE ONLY public.wishes ALTER COLUMN vacationid SET DEFAULT nextval('public.wishes2_vacationid_seq'::regclass);
 @   ALTER TABLE public.wishes ALTER COLUMN vacationid DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16553 
   finaldates 
   TABLE DATA           K   COPY public.finaldates (vacationid, uuid, datestart, datetill) FROM stdin;
    public          postgres    false    218   �                 0    16399 
   unusedvacs 
   TABLE DATA           c   COPY public.unusedvacs (uuid, department, longvacation, mediumvacation, smallvacation) FROM stdin;
    public          postgres    false    214   �                 0    16630    unusedvacsw 
   TABLE DATA           d   COPY public.unusedvacsw (uuid, department, longvacation, mediumvacation, smallvacation) FROM stdin;
    public          postgres    false    219   (                 0    16480    wishes 
   TABLE DATA           X   COPY public.wishes (vacationid, uuid, vacationtype, preferday, prefermonth) FROM stdin;
    public          postgres    false    216   E                  0    0    finaldates_vacationid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.finaldates_vacationid_seq', 11, true);
          public          postgres    false    217                       0    0    wishes2_vacationid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wishes2_vacationid_seq', 33, true);
          public          postgres    false    215            {           2606    16460    unusedvacs UnusedVacs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.unusedvacs
    ADD CONSTRAINT "UnusedVacs_pkey" PRIMARY KEY (uuid);
 F   ALTER TABLE ONLY public.unusedvacs DROP CONSTRAINT "UnusedVacs_pkey";
       public            postgres    false    214            �           2606    16639    unusedvacsw UnusedVacs_pkeyw 
   CONSTRAINT     ^   ALTER TABLE ONLY public.unusedvacsw
    ADD CONSTRAINT "UnusedVacs_pkeyw" PRIMARY KEY (uuid);
 H   ALTER TABLE ONLY public.unusedvacsw DROP CONSTRAINT "UnusedVacs_pkeyw";
       public            postgres    false    219                       2606    16560    finaldates finaldates_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.finaldates
    ADD CONSTRAINT finaldates_pkey PRIMARY KEY (vacationid);
 D   ALTER TABLE ONLY public.finaldates DROP CONSTRAINT finaldates_pkey;
       public            postgres    false    218            }           2606    16487    wishes wishes2_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.wishes
    ADD CONSTRAINT wishes2_pkey PRIMARY KEY (vacationid);
 =   ALTER TABLE ONLY public.wishes DROP CONSTRAINT wishes2_pkey;
       public            postgres    false    216                  x������ � �         n   x�u���0kj�@��zqx
��.�荢ƥ�o�po:eL %���ߵ�7��"*��j��Ѐ����.�v��y=o�z��q|R�]����7���H)��FT�            x������ � �            x������ � �     