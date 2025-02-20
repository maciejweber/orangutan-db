PGDMP         
            	    |            orangutan_database     13.16 (Debian 13.16-1.pgdg120+1)     13.16 (Debian 13.16-1.pgdg120+1) 9    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    orangutan_database    DATABASE     f   CREATE DATABASE orangutan_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
 "   DROP DATABASE orangutan_database;
                orangutan_admin    false            �            1255    16474    insert_insstmp()    FUNCTION     �   CREATE FUNCTION public.insert_insstmp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.insstmp := CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;
 '   DROP FUNCTION public.insert_insstmp();
       public          orangutan_admin    false            �            1255    16472    update_updstmp()    FUNCTION     �   CREATE FUNCTION public.update_updstmp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updstmp := CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$;
 '   DROP FUNCTION public.update_updstmp();
       public          orangutan_admin    false            �            1259    16542    advgrp    TABLE       CREATE TABLE public.advgrp (
    gid numeric NOT NULL,
    advgshort character varying(8) NOT NULL,
    advgname character varying(30) NOT NULL,
    status character(1) NOT NULL,
    updstmp date NOT NULL,
    insstmp date NOT NULL,
    addtxt1 character varying(35)
);
    DROP TABLE public.advgrp;
       public         heap    orangutan_admin    false            �           0    0    COLUMN advgrp.gid    COMMENT     Y   COMMENT ON COLUMN public.advgrp.gid IS 'Unikalne ID ustawione jako PK i wrzucony index';
          public          orangutan_admin    false    201            �           0    0    COLUMN advgrp.advgshort    COMMENT     `   COMMENT ON COLUMN public.advgrp.advgshort IS 'Sktócona nazwa grupy np. początkujący - POCZ';
          public          orangutan_admin    false    201            �           0    0    COLUMN advgrp.advgname    COMMENT     B   COMMENT ON COLUMN public.advgrp.advgname IS 'Pełna nazwa grupy';
          public          orangutan_admin    false    201            �           0    0    COLUMN advgrp.status    COMMENT     �   COMMENT ON COLUMN public.advgrp.status IS 'Status grupy, za pomocą statusów będzie można łatwo zarządzać i wyświetlać tylko grupy w określonym stanie np. A - aktywna, D - deactivated, I - nieaktywna';
          public          orangutan_admin    false    201            �           0    0    COLUMN advgrp.updstmp    COMMENT     _   COMMENT ON COLUMN public.advgrp.updstmp IS 'data kiedy był robiony update na danym wierszu.';
          public          orangutan_admin    false    201            �           0    0    COLUMN advgrp.insstmp    COMMENT     O   COMMENT ON COLUMN public.advgrp.insstmp IS 'data wstawienia rekordu do bazy.';
          public          orangutan_admin    false    201            �           0    0    COLUMN advgrp.addtxt1    COMMENT     F   COMMENT ON COLUMN public.advgrp.addtxt1 IS 'pusta kolumna rozwojowa';
          public          orangutan_admin    false    201            �            1259    16462    users    TABLE     �  CREATE TABLE public.users (
    gid numeric NOT NULL,
    clntno numeric NOT NULL,
    status character(1) NOT NULL,
    name1 character varying(30) NOT NULL,
    name2 character varying(30) NOT NULL,
    updstmp date NOT NULL,
    insstmp date NOT NULL,
    clntphone numeric,
    sex character(1),
    birthday date,
    clntemail character varying(50),
    addtxt1 character varying(35),
    addtxt2 character varying(35),
    addtxt3 character varying(35)
);
    DROP TABLE public.users;
       public         heap    orangutan_admin    false            �           0    0    COLUMN users.gid    COMMENT     X   COMMENT ON COLUMN public.users.gid IS 'Unikalne ID ustawione jako PK i wrzucony index';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.clntno    COMMENT     :   COMMENT ON COLUMN public.users.clntno IS 'Numer klienta';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.status    COMMENT     �   COMMENT ON COLUMN public.users.status IS 'Status klienta, za ich pomocą można będzie rozróżniać statusy, np. A - aktywny, D - usunięty - niewidoczny od strony gui, I - nieaktywny - widoczny w gui, ale nieobsługiwany coś takiego';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.name1    COMMENT     0   COMMENT ON COLUMN public.users.name1 IS 'imie';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.name2    COMMENT     4   COMMENT ON COLUMN public.users.name2 IS 'nazwisko';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.updstmp    COMMENT     �   COMMENT ON COLUMN public.users.updstmp IS 'data kiedy był robiony update na danym wierszu. Wrzucony trigger automatycznie podbije updstmp = sysdate po wykonaniu UPDATE';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.insstmp    COMMENT     �   COMMENT ON COLUMN public.users.insstmp IS 'data wstawienia rekordu do bazy. Wrzucony trigger automatycznie ustawiający insstmp = sysdate w momencie inserta do tets1';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.clntphone    COMMENT     C   COMMENT ON COLUMN public.users.clntphone IS 'nr telefonu klienta';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.sex    COMMENT     0   COMMENT ON COLUMN public.users.sex IS 'płeć';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.birthday    COMMENT     ;   COMMENT ON COLUMN public.users.birthday IS 'data urodzin';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.clntemail    COMMENT     =   COMMENT ON COLUMN public.users.clntemail IS 'email klienta';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.addtxt1    COMMENT     E   COMMENT ON COLUMN public.users.addtxt1 IS 'pusta kolumna rozwojowa';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.addtxt2    COMMENT     E   COMMENT ON COLUMN public.users.addtxt2 IS 'pusta kolumna rozwojowa';
          public          orangutan_admin    false    200            �           0    0    COLUMN users.addtxt3    COMMENT     E   COMMENT ON COLUMN public.users.addtxt3 IS 'pusta kolumna rozwojowa';
          public          orangutan_admin    false    200            �            1259    16561    usr2adv    TABLE     �   CREATE TABLE public.usr2adv (
    offno numeric NOT NULL,
    usrid numeric NOT NULL,
    advgrpid numeric NOT NULL,
    status character(1) NOT NULL,
    updstmp date NOT NULL,
    insstmp date NOT NULL,
    addtxt1 character varying(35)
);
    DROP TABLE public.usr2adv;
       public         heap    orangutan_admin    false            �           0    0    COLUMN usr2adv.offno    COMMENT     L   COMMENT ON COLUMN public.usr2adv.offno IS 'Id w tej tabeli, PK z indeksem';
          public          orangutan_admin    false    202            �           0    0    COLUMN usr2adv.usrid    COMMENT     S   COMMENT ON COLUMN public.usr2adv.usrid IS 'Odwołanie do users.gid FK z indeksem';
          public          orangutan_admin    false    202            �           0    0    COLUMN usr2adv.advgrpid    COMMENT     W   COMMENT ON COLUMN public.usr2adv.advgrpid IS 'Odwołanie do advgrp.gid FK z indeksem';
          public          orangutan_admin    false    202            �           0    0    COLUMN usr2adv.status    COMMENT     ]   COMMENT ON COLUMN public.usr2adv.status IS 'Status przypisania użytkownika do danej grupy';
          public          orangutan_admin    false    202            �           0    0    COLUMN usr2adv.updstmp    COMMENT     `   COMMENT ON COLUMN public.usr2adv.updstmp IS 'data kiedy był robiony update na danym wierszu.';
          public          orangutan_admin    false    202                        0    0    COLUMN usr2adv.insstmp    COMMENT     P   COMMENT ON COLUMN public.usr2adv.insstmp IS 'data wstawienia rekordu do bazy.';
          public          orangutan_admin    false    202                       0    0    COLUMN usr2adv.addtxt1    COMMENT     G   COMMENT ON COLUMN public.usr2adv.addtxt1 IS 'pusta kolumna rozwojowa';
          public          orangutan_admin    false    202            �          0    16542    advgrp 
   TABLE DATA           ]   COPY public.advgrp (gid, advgshort, advgname, status, updstmp, insstmp, addtxt1) FROM stdin;
    public          orangutan_admin    false    201            �          0    16462    users 
   TABLE DATA           �   COPY public.users (gid, clntno, status, name1, name2, updstmp, insstmp, clntphone, sex, birthday, clntemail, addtxt1, addtxt2, addtxt3) FROM stdin;
    public          orangutan_admin    false    200            �          0    16561    usr2adv 
   TABLE DATA           \   COPY public.usr2adv (offno, usrid, advgrpid, status, updstmp, insstmp, addtxt1) FROM stdin;
    public          orangutan_admin    false    202            M           2606    16549    advgrp advgrp_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.advgrp
    ADD CONSTRAINT advgrp_pkey PRIMARY KEY (gid);
 <   ALTER TABLE ONLY public.advgrp DROP CONSTRAINT advgrp_pkey;
       public            orangutan_admin    false    201            J           2606    16469    users testclient_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT testclient_pkey PRIMARY KEY (gid);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT testclient_pkey;
       public            orangutan_admin    false    200            R           2606    16568    usr2adv usr2adv_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usr2adv
    ADD CONSTRAINT usr2adv_pkey PRIMARY KEY (offno);
 >   ALTER TABLE ONLY public.usr2adv DROP CONSTRAINT usr2adv_pkey;
       public            orangutan_admin    false    202            K           1259    16550 	   advgrp_k1    INDEX     B   CREATE UNIQUE INDEX advgrp_k1 ON public.advgrp USING btree (gid);
    DROP INDEX public.advgrp_k1;
       public            orangutan_admin    false    201            G           1259    16470    testclient_k1    INDEX     E   CREATE UNIQUE INDEX testclient_k1 ON public.users USING btree (gid);
 !   DROP INDEX public.testclient_k1;
       public            orangutan_admin    false    200            H           1259    16471    testclient_k2    INDEX     A   CREATE INDEX testclient_k2 ON public.users USING btree (clntno);
 !   DROP INDEX public.testclient_k2;
       public            orangutan_admin    false    200            N           1259    16579 
   usr2adv_k1    INDEX     F   CREATE UNIQUE INDEX usr2adv_k1 ON public.usr2adv USING btree (offno);
    DROP INDEX public.usr2adv_k1;
       public            orangutan_admin    false    202            O           1259    16580 
   usr2adv_k2    INDEX     F   CREATE UNIQUE INDEX usr2adv_k2 ON public.usr2adv USING btree (usrid);
    DROP INDEX public.usr2adv_k2;
       public            orangutan_admin    false    202            P           1259    16581 
   usr2adv_k3    INDEX     I   CREATE UNIQUE INDEX usr2adv_k3 ON public.usr2adv USING btree (advgrpid);
    DROP INDEX public.usr2adv_k3;
       public            orangutan_admin    false    202            W           2620    16552     advgrp trg_insert_insstmp_advgrp    TRIGGER        CREATE TRIGGER trg_insert_insstmp_advgrp BEFORE INSERT ON public.advgrp FOR EACH ROW EXECUTE FUNCTION public.insert_insstmp();
 9   DROP TRIGGER trg_insert_insstmp_advgrp ON public.advgrp;
       public          orangutan_admin    false    204    201            U           2620    16475 #   users trg_insert_insstmp_testclient    TRIGGER     �   CREATE TRIGGER trg_insert_insstmp_testclient BEFORE INSERT ON public.users FOR EACH ROW EXECUTE FUNCTION public.insert_insstmp();
 <   DROP TRIGGER trg_insert_insstmp_testclient ON public.users;
       public          orangutan_admin    false    204    200            Y           2620    16583 "   usr2adv trg_insert_insstmp_usr2adv    TRIGGER     �   CREATE TRIGGER trg_insert_insstmp_usr2adv BEFORE INSERT ON public.usr2adv FOR EACH ROW EXECUTE FUNCTION public.insert_insstmp();
 ;   DROP TRIGGER trg_insert_insstmp_usr2adv ON public.usr2adv;
       public          orangutan_admin    false    204    202            X           2620    16551     advgrp trg_update_updstmp_advgrp    TRIGGER        CREATE TRIGGER trg_update_updstmp_advgrp BEFORE UPDATE ON public.advgrp FOR EACH ROW EXECUTE FUNCTION public.update_updstmp();
 9   DROP TRIGGER trg_update_updstmp_advgrp ON public.advgrp;
       public          orangutan_admin    false    203    201            V           2620    16473 #   users trg_update_updstmp_testclient    TRIGGER     �   CREATE TRIGGER trg_update_updstmp_testclient BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.update_updstmp();
 <   DROP TRIGGER trg_update_updstmp_testclient ON public.users;
       public          orangutan_admin    false    200    203            Z           2620    16582 "   usr2adv trg_update_updstmp_usr2adv    TRIGGER     �   CREATE TRIGGER trg_update_updstmp_usr2adv BEFORE UPDATE ON public.usr2adv FOR EACH ROW EXECUTE FUNCTION public.update_updstmp();
 ;   DROP TRIGGER trg_update_updstmp_usr2adv ON public.usr2adv;
       public          orangutan_admin    false    203    202            T           2606    16574    usr2adv usr2adv_advgrpid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.usr2adv
    ADD CONSTRAINT usr2adv_advgrpid_fkey FOREIGN KEY (advgrpid) REFERENCES public.advgrp(gid);
 G   ALTER TABLE ONLY public.usr2adv DROP CONSTRAINT usr2adv_advgrpid_fkey;
       public          orangutan_admin    false    2893    202    201            S           2606    16569    usr2adv usr2adv_usrid_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.usr2adv
    ADD CONSTRAINT usr2adv_usrid_fkey FOREIGN KEY (usrid) REFERENCES public.users(gid);
 D   ALTER TABLE ONLY public.usr2adv DROP CONSTRAINT usr2adv_usrid_fkey;
       public          orangutan_admin    false    202    200    2890            �      x������ � �      �      x������ � �      �      x������ � �     