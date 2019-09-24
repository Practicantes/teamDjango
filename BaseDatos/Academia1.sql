PGDMP         -                w            Academia    11.5    11.5 -    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            O           1262    32778    Academia    DATABASE     �   CREATE DATABASE "Academia" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Guatemala.1252' LC_CTYPE = 'Spanish_Guatemala.1252';
    DROP DATABASE "Academia";
             postgres    false            �            1259    32842    Abono    TABLE     �   CREATE TABLE public."Abono" (
    id_abono integer NOT NULL,
    "Cantidad" character varying,
    id_pago integer NOT NULL,
    "id:mensualidad" integer NOT NULL
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Abono";
       public         postgres    false            �            1259    32796 
   Asignacion    TABLE     �   CREATE TABLE public."Asignacion" (
    id_horario integer NOT NULL,
    id_user integer NOT NULL,
    id_nivel integer NOT NULL,
    id_master integer NOT NULL
)
WITH (autovacuum_enabled='true');
     DROP TABLE public."Asignacion";
       public         postgres    false            �            1259    32817    Docente    TABLE     J  CREATE TABLE public."Docente" (
    id_master integer NOT NULL,
    nombre character varying,
    "Apellido" character varying,
    "Correo" character varying,
    "Contraseña" character varying,
    "Direccion" character varying,
    "Telefono" character varying,
    "Fecha_nacimiento" date
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Docente";
       public         postgres    false            �            1259    32809    Horario    TABLE     �   CREATE TABLE public."Horario" (
    id_horario integer NOT NULL,
    "Hora" character varying,
    "Día" character varying
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Horario";
       public         postgres    false            �            1259    32850    Mensualidad    TABLE     �   CREATE TABLE public."Mensualidad" (
    id_mensualidad integer NOT NULL,
    "Mes" character varying
)
WITH (autovacuum_enabled='true');
 !   DROP TABLE public."Mensualidad";
       public         postgres    false            �            1259    32801    Niveles    TABLE     �   CREATE TABLE public."Niveles" (
    id_nivel integer NOT NULL,
    nombre character varying,
    id_master integer NOT NULL
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Niveles";
       public         postgres    false            �            1259    32825    Pago    TABLE       CREATE TABLE public."Pago" (
    id_pago integer NOT NULL,
    "Descuento" character varying,
    "Extra" character varying,
    "id:mensualidad" integer NOT NULL,
    id_user integer,
    "id_tipoP" integer,
    "Total" character varying
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Pago";
       public         postgres    false            �            1259    32834 	   Tipo_pago    TABLE     �   CREATE TABLE public."Tipo_pago" (
    "id_tipoP" integer NOT NULL,
    "Descripcion" character varying
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Tipo_pago";
       public         postgres    false            �            1259    32779    Tipo_usuario    TABLE     �   CREATE TABLE public."Tipo_usuario" (
    "id_tipoU" integer NOT NULL,
    "Descripcion" character varying
)
WITH (autovacuum_enabled='true');
 "   DROP TABLE public."Tipo_usuario";
       public         postgres    false            �            1259    32787    Usuario    TABLE     b  CREATE TABLE public."Usuario" (
    id_user integer NOT NULL,
    "Nombre" character varying,
    "Apellido" character varying,
    "Correo" character varying,
    "Contraseña" character varying,
    "Direccion" character varying,
    "Telefono" character varying,
    "Fecha_nacimiento" date,
    "id_tipoU" integer
)
WITH (autovacuum_enabled='true');
    DROP TABLE public."Usuario";
       public         postgres    false            H          0    32842    Abono 
   TABLE DATA               R   COPY public."Abono" (id_abono, "Cantidad", id_pago, "id:mensualidad") FROM stdin;
    public       postgres    false    204   95       B          0    32796 
   Asignacion 
   TABLE DATA               P   COPY public."Asignacion" (id_horario, id_user, id_nivel, id_master) FROM stdin;
    public       postgres    false    198   V5       E          0    32817    Docente 
   TABLE DATA               �   COPY public."Docente" (id_master, nombre, "Apellido", "Correo", "Contraseña", "Direccion", "Telefono", "Fecha_nacimiento") FROM stdin;
    public       postgres    false    201   s5       D          0    32809    Horario 
   TABLE DATA               ?   COPY public."Horario" (id_horario, "Hora", "Día") FROM stdin;
    public       postgres    false    200   '6       I          0    32850    Mensualidad 
   TABLE DATA               >   COPY public."Mensualidad" (id_mensualidad, "Mes") FROM stdin;
    public       postgres    false    205   �6       C          0    32801    Niveles 
   TABLE DATA               @   COPY public."Niveles" (id_nivel, nombre, id_master) FROM stdin;
    public       postgres    false    199   �6       F          0    32825    Pago 
   TABLE DATA               o   COPY public."Pago" (id_pago, "Descuento", "Extra", "id:mensualidad", id_user, "id_tipoP", "Total") FROM stdin;
    public       postgres    false    202   ;7       G          0    32834 	   Tipo_pago 
   TABLE DATA               @   COPY public."Tipo_pago" ("id_tipoP", "Descripcion") FROM stdin;
    public       postgres    false    203   X7       @          0    32779    Tipo_usuario 
   TABLE DATA               C   COPY public."Tipo_usuario" ("id_tipoU", "Descripcion") FROM stdin;
    public       postgres    false    196   �7       A          0    32787    Usuario 
   TABLE DATA               �   COPY public."Usuario" (id_user, "Nombre", "Apellido", "Correo", "Contraseña", "Direccion", "Telefono", "Fecha_nacimiento", "id_tipoU") FROM stdin;
    public       postgres    false    197   �7       �
           2606    32849    Abono PK_Abono 
   CONSTRAINT     q   ALTER TABLE ONLY public."Abono"
    ADD CONSTRAINT "PK_Abono" PRIMARY KEY (id_abono, id_pago, "id:mensualidad");
 <   ALTER TABLE ONLY public."Abono" DROP CONSTRAINT "PK_Abono";
       public         postgres    false    204    204    204            �
           2606    32800    Asignacion PK_Asignacion 
   CONSTRAINT     �   ALTER TABLE ONLY public."Asignacion"
    ADD CONSTRAINT "PK_Asignacion" PRIMARY KEY (id_horario, id_user, id_nivel, id_master);
 F   ALTER TABLE ONLY public."Asignacion" DROP CONSTRAINT "PK_Asignacion";
       public         postgres    false    198    198    198    198            �
           2606    32824    Docente PK_Docente 
   CONSTRAINT     [   ALTER TABLE ONLY public."Docente"
    ADD CONSTRAINT "PK_Docente" PRIMARY KEY (id_master);
 @   ALTER TABLE ONLY public."Docente" DROP CONSTRAINT "PK_Docente";
       public         postgres    false    201            �
           2606    32816    Horario PK_Horario 
   CONSTRAINT     \   ALTER TABLE ONLY public."Horario"
    ADD CONSTRAINT "PK_Horario" PRIMARY KEY (id_horario);
 @   ALTER TABLE ONLY public."Horario" DROP CONSTRAINT "PK_Horario";
       public         postgres    false    200            �
           2606    32857    Mensualidad PK_Mensualidad 
   CONSTRAINT     h   ALTER TABLE ONLY public."Mensualidad"
    ADD CONSTRAINT "PK_Mensualidad" PRIMARY KEY (id_mensualidad);
 H   ALTER TABLE ONLY public."Mensualidad" DROP CONSTRAINT "PK_Mensualidad";
       public         postgres    false    205            �
           2606    32808    Niveles PK_Niveles 
   CONSTRAINT     e   ALTER TABLE ONLY public."Niveles"
    ADD CONSTRAINT "PK_Niveles" PRIMARY KEY (id_nivel, id_master);
 @   ALTER TABLE ONLY public."Niveles" DROP CONSTRAINT "PK_Niveles";
       public         postgres    false    199    199            �
           2606    32833    Pago PK_Pago 
   CONSTRAINT     e   ALTER TABLE ONLY public."Pago"
    ADD CONSTRAINT "PK_Pago" PRIMARY KEY (id_pago, "id:mensualidad");
 :   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT "PK_Pago";
       public         postgres    false    202    202            �
           2606    32841    Tipo_pago PK_Tipo_pago 
   CONSTRAINT     `   ALTER TABLE ONLY public."Tipo_pago"
    ADD CONSTRAINT "PK_Tipo_pago" PRIMARY KEY ("id_tipoP");
 D   ALTER TABLE ONLY public."Tipo_pago" DROP CONSTRAINT "PK_Tipo_pago";
       public         postgres    false    203            �
           2606    32786    Tipo_usuario PK_Tipo_usuario 
   CONSTRAINT     f   ALTER TABLE ONLY public."Tipo_usuario"
    ADD CONSTRAINT "PK_Tipo_usuario" PRIMARY KEY ("id_tipoU");
 J   ALTER TABLE ONLY public."Tipo_usuario" DROP CONSTRAINT "PK_Tipo_usuario";
       public         postgres    false    196            �
           2606    32795    Usuario PK_Usuario 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "PK_Usuario" PRIMARY KEY (id_user);
 @   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "PK_Usuario";
       public         postgres    false    197            �
           1259    32831    IX_Relationship14    INDEX     I   CREATE INDEX "IX_Relationship14" ON public."Pago" USING btree (id_user);
 '   DROP INDEX public."IX_Relationship14";
       public         postgres    false    202            �
           1259    32793    IX_Relationship17    INDEX     O   CREATE INDEX "IX_Relationship17" ON public."Usuario" USING btree ("id_tipoU");
 '   DROP INDEX public."IX_Relationship17";
       public         postgres    false    197            �
           2606    32858 	   Usuario 1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "1" FOREIGN KEY ("id_tipoU") REFERENCES public."Tipo_usuario"("id_tipoU");
 7   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "1";
       public       postgres    false    197    196    2729            �
           2606    32863    Pago 2    FK CONSTRAINT     z   ALTER TABLE ONLY public."Pago"
    ADD CONSTRAINT "2" FOREIGN KEY ("id_tipoP") REFERENCES public."Tipo_pago"("id_tipoP");
 4   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT "2";
       public       postgres    false    202    203    2745            �
           2606    32868    Pago 3    FK CONSTRAINT     r   ALTER TABLE ONLY public."Pago"
    ADD CONSTRAINT "3" FOREIGN KEY (id_user) REFERENCES public."Usuario"(id_user);
 4   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT "3";
       public       postgres    false    202    197    2732            �
           2606    32873    Asignacion 4    FK CONSTRAINT     �   ALTER TABLE ONLY public."Asignacion"
    ADD CONSTRAINT "4" FOREIGN KEY (id_nivel, id_master) REFERENCES public."Niveles"(id_nivel, id_master);
 :   ALTER TABLE ONLY public."Asignacion" DROP CONSTRAINT "4";
       public       postgres    false    198    2736    199    199    198            �
           2606    32878    Abono 5    FK CONSTRAINT     �   ALTER TABLE ONLY public."Abono"
    ADD CONSTRAINT "5" FOREIGN KEY (id_pago, "id:mensualidad") REFERENCES public."Pago"(id_pago, "id:mensualidad");
 5   ALTER TABLE ONLY public."Abono" DROP CONSTRAINT "5";
       public       postgres    false    202    2743    202    204    204            �
           2606    32883 	   Niveles 6    FK CONSTRAINT     y   ALTER TABLE ONLY public."Niveles"
    ADD CONSTRAINT "6" FOREIGN KEY (id_master) REFERENCES public."Docente"(id_master);
 7   ALTER TABLE ONLY public."Niveles" DROP CONSTRAINT "6";
       public       postgres    false    201    2740    199            �
           2606    32888    Asignacion 7    FK CONSTRAINT     x   ALTER TABLE ONLY public."Asignacion"
    ADD CONSTRAINT "7" FOREIGN KEY (id_user) REFERENCES public."Usuario"(id_user);
 :   ALTER TABLE ONLY public."Asignacion" DROP CONSTRAINT "7";
       public       postgres    false    197    2732    198            �
           2606    32893    Asignacion 8    FK CONSTRAINT     ~   ALTER TABLE ONLY public."Asignacion"
    ADD CONSTRAINT "8" FOREIGN KEY (id_horario) REFERENCES public."Horario"(id_horario);
 :   ALTER TABLE ONLY public."Asignacion" DROP CONSTRAINT "8";
       public       postgres    false    200    2738    198            �
           2606    32898    Pago Pago_id:mensualidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pago"
    ADD CONSTRAINT "Pago_id:mensualidad_fkey" FOREIGN KEY ("id:mensualidad") REFERENCES public."Mensualidad"(id_mensualidad);
 K   ALTER TABLE ONLY public."Pago" DROP CONSTRAINT "Pago_id:mensualidad_fkey";
       public       postgres    false    205    202    2749            H      x������ � �      B      x������ � �      E   �   x�U��
�0EדIɣ6�N(ŕ�u3���� ��\��1�ԅ���.�#���il������-&k�M.$T����:��� sU0�p]j�4��5k�ay��{��C���*�]�U�e�(��+"�n���
����Q����=�(�.����i�$׌�^�>�      D   L   x�3�4�26P�UHT0��8}J�R�t�JS�R������B��e�qsZ�DArPU���&%��s��qqq k�      I   k   x�3�t�K-��2�tKM*��9}���L8��2s�L���|.3N�Ҽ�|.s ��-8��K�,9�SJ2Ss�ڹ8��KJ�LCN��2���Kf2����� i�#[      C   -   x�3�t�4�2�t�4�2�t�4�2�t��r�E�8݀"1z\\\ p-G      F      x������ � �      G   #   x�3��M�+.M��LIL�2���L*������ u��      @   3   x�3�tL����,.)JL�/�2�NM.J-I,�L�2�t�)�������� 9T8      A   �   x�e��
�0���S��u�	A���KC]����2��.!�G��g���G�k�R����'�6��%������.R��Z7�E�����$�����~r��F��G��#��m���GɅ��{��D-Ms��d�Nd��iek��"��Ҁb�\�T��c���:P~s3π��R[@����U��/
jW�     