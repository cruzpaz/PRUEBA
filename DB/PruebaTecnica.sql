PGDMP     1                    |            PruebaTecnica    12.15    12.15                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    46521    PruebaTecnica    DATABASE     �   CREATE DATABASE "PruebaTecnica" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "PruebaTecnica";
                marvin    false            �            1259    46527    Departamento    TABLE     �   CREATE TABLE public."Departamento" (
    id integer NOT NULL,
    nombre character varying(100),
    "fechaCreacion" date,
    "fechaModificacion" date
);
 "   DROP TABLE public."Departamento";
       public         heap    postgres    false            �            1259    46582    Departamento_id_seq    SEQUENCE     �   ALTER TABLE public."Departamento" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Departamento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          postgres    false    203            �            1259    46532 	   Empleados    TABLE     /  CREATE TABLE public."Empleados" (
    id integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    telefono character varying(10),
    correo character varying,
    area integer,
    "fechaContratacion" date,
    "fechaCreacion" date,
    "fechaModificacion" date
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    46580    Empleados_id_seq    SEQUENCE     �   ALTER TABLE public."Empleados" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Empleados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          postgres    false    204            �            1259    46522 	   Ususarios    TABLE     �   CREATE TABLE public."Ususarios" (
    id integer NOT NULL,
    usuario character varying(100),
    password character varying(100),
    "idEmpleado" integer NOT NULL,
    "fechaCreacion" date,
    "fechaModificacion" date
);
    DROP TABLE public."Ususarios";
       public         heap    postgres    false                      0    46527    Departamento 
   TABLE DATA           Z   COPY public."Departamento" (id, nombre, "fechaCreacion", "fechaModificacion") FROM stdin;
    public          postgres    false    203   Y                 0    46532 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" (id, nombre, apellido, telefono, correo, area, "fechaContratacion", "fechaCreacion", "fechaModificacion") FROM stdin;
    public          postgres    false    204   �                 0    46522 	   Ususarios 
   TABLE DATA           p   COPY public."Ususarios" (id, usuario, password, "idEmpleado", "fechaCreacion", "fechaModificacion") FROM stdin;
    public          postgres    false    202   D                  0    0    Departamento_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Departamento_id_seq"', 1, true);
          public          postgres    false    206                       0    0    Empleados_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Empleados_id_seq"', 14, true);
          public          postgres    false    205            �
           2606    46531    Departamento Departamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Departamento"
    ADD CONSTRAINT "Departamento_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Departamento" DROP CONSTRAINT "Departamento_pkey";
       public            postgres    false    203            �
           2606    46539    Empleados Empleados_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    204            �
           2606    46574    Ususarios Usuario 
   CONSTRAINT     `   ALTER TABLE ONLY public."Ususarios"
    ADD CONSTRAINT "Usuario" PRIMARY KEY (id) INCLUDE (id);
 ?   ALTER TABLE ONLY public."Ususarios" DROP CONSTRAINT "Usuario";
       public            postgres    false    202    202            �
           2606    46540    Empleados fk_Departamento    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "fk_Departamento" FOREIGN KEY (area) REFERENCES public."Departamento"(id);
 G   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "fk_Departamento";
       public          postgres    false    2701    204    203            �
           2606    46575    Ususarios fk_mpleados    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ususarios"
    ADD CONSTRAINT fk_mpleados FOREIGN KEY ("idEmpleado") REFERENCES public."Empleados"(id) NOT VALID;
 A   ALTER TABLE ONLY public."Ususarios" DROP CONSTRAINT fk_mpleados;
       public          postgres    false    202    204    2703               ,   x�3�JM.-*�W�(�M���4202�54�5�������� ��	         �   x����
�0���S�Z��V�Y:8)�k���H.��ӛF��M���w��h9z6��|�A���Fp�<M����@JT��R6�_�	�18b��a\�SN�Y��Z3*�?��e � ����~5PÝ�h������lM�(&4�r�����o$V�            x������ � �     