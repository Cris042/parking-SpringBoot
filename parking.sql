PGDMP         '                z            parking    14.2    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16570    parking    DATABASE     g   CREATE DATABASE parking WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE parking;
                postgres    false                        2615    16586    TB_user    SCHEMA        CREATE SCHEMA "TB_user";
    DROP SCHEMA "TB_user";
                postgres    false            ?            1259    16577    tb_parking_spot    TABLE     ?  CREATE TABLE public.tb_parking_spot (
    id uuid NOT NULL,
    apartment character varying(30) NOT NULL,
    block character varying(30) NOT NULL,
    brand_car character varying(70) NOT NULL,
    color_car character varying(70) NOT NULL,
    license_plate_car character varying(7) NOT NULL,
    model_car character varying(70) NOT NULL,
    parking_spot_number character varying(10) NOT NULL,
    registration_date timestamp without time zone NOT NULL,
    responsible_name character varying(130) NOT NULL
);
 #   DROP TABLE public.tb_parking_spot;
       public         heap    postgres    false            ?            1259    16595    tb_users    TABLE     ?   CREATE TABLE public.tb_users (
    id uuid NOT NULL,
    license_plate_car character varying(7) NOT NULL,
    name character varying(20) NOT NULL,
    registration_date timestamp without time zone NOT NULL,
    username character varying(20) NOT NULL
);
    DROP TABLE public.tb_users;
       public         heap    postgres    false            ?          0    16577    tb_parking_spot 
   TABLE DATA           ?   COPY public.tb_parking_spot (id, apartment, block, brand_car, color_car, license_plate_car, model_car, parking_spot_number, registration_date, responsible_name) FROM stdin;
    public          postgres    false    210   ?       ?          0    16595    tb_users 
   TABLE DATA           \   COPY public.tb_users (id, license_plate_car, name, registration_date, username) FROM stdin;
    public          postgres    false    211   l       a           2606    16581 $   tb_parking_spot tb_parking_spot_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_parking_spot
    ADD CONSTRAINT tb_parking_spot_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_parking_spot DROP CONSTRAINT tb_parking_spot_pkey;
       public            postgres    false    210            g           2606    16599    tb_users tb_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT tb_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tb_users DROP CONSTRAINT tb_users_pkey;
       public            postgres    false    211            c           2606    16585 ,   tb_parking_spot uk_678owtycsgr3anxf3qw4s9r8u 
   CONSTRAINT     v   ALTER TABLE ONLY public.tb_parking_spot
    ADD CONSTRAINT uk_678owtycsgr3anxf3qw4s9r8u UNIQUE (parking_spot_number);
 V   ALTER TABLE ONLY public.tb_parking_spot DROP CONSTRAINT uk_678owtycsgr3anxf3qw4s9r8u;
       public            postgres    false    210            i           2606    16601 %   tb_users uk_9wjtjy1xyvutk61it1r7sxwfg 
   CONSTRAINT     m   ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT uk_9wjtjy1xyvutk61it1r7sxwfg UNIQUE (license_plate_car);
 O   ALTER TABLE ONLY public.tb_users DROP CONSTRAINT uk_9wjtjy1xyvutk61it1r7sxwfg;
       public            postgres    false    211            e           2606    16583 ,   tb_parking_spot uk_sms6qglh44hhw4bpgwnp8umw1 
   CONSTRAINT     t   ALTER TABLE ONLY public.tb_parking_spot
    ADD CONSTRAINT uk_sms6qglh44hhw4bpgwnp8umw1 UNIQUE (license_plate_car);
 V   ALTER TABLE ONLY public.tb_parking_spot DROP CONSTRAINT uk_sms6qglh44hhw4bpgwnp8umw1;
       public            postgres    false    210            k           2606    16603 %   tb_users uk_t5xrb42j5hy9f23bwrf2tlpgu 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_users
    ADD CONSTRAINT uk_t5xrb42j5hy9f23bwrf2tlpgu UNIQUE (name);
 O   ALTER TABLE ONLY public.tb_users DROP CONSTRAINT uk_t5xrb42j5hy9f23bwrf2tlpgu;
       public            postgres    false    211            ?   ?   x?m?1n?0??Y>E.@C|-?[?kt?d(??Ȑ?????C????ˆL??N?{'m?xͶ)? p??o?^?{`?/o???<"@Q	8AV?Uy?%???v?????|Ob?R??Tr?B5?!??Ֆ??T^???W?U??%a>?m3??j?*?J?N?e3?K??[h/?k#F?9B???؊2GC??d??i?~@bJ?      ?   ?   x?]?Kn?@е}?? ??}?l?{?D?z2^d"??5M?D???sP????j??[??D???5>7eUb#Շ??r2?wF?Z?Z??NYGP?C[?={?mi?R???d\l???C??2E?6?N8?FHp*V@k	?5?f{??]?GRO?7?E?s?$Ø७t?4j?f???r???Q?gy?B!??Μ8)????Q????U????|??|{3?$_??!???[?8?}?K?g?     