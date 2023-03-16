PGDMP             
            {            strapi    15.2    15.2 1   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    strapi    DATABASE     }   CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE strapi;
                strapi    false            �            1259    21699    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    strapi    false            �            1259    21698    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          strapi    false    224            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          strapi    false    223                       1259    21983    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    strapi    false                       1259    21982 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          strapi    false    284            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          strapi    false    283            �            1259    21721    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    strapi    false            �            1259    21720    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          strapi    false    228            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          strapi    false    227            �            1259    21710    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    strapi    false            �            1259    21709    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          strapi    false    226            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          strapi    false    225                       1259    21995    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    strapi    false                       1259    21994    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          strapi    false    286            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          strapi    false    285            �            1259    21752    authors    TABLE     V  CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.authors;
       public         heap    strapi    false            "           1259    22020    authors_components    TABLE     �   CREATE TABLE public.authors_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.authors_components;
       public         heap    strapi    false            !           1259    22019    authors_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.authors_components_id_seq;
       public          strapi    false    290            �           0    0    authors_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;
          public          strapi    false    289            �            1259    21751    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          strapi    false    234            �           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          strapi    false    233            �            1259    21846    components_page_about_projects    TABLE     �   CREATE TABLE public.components_page_about_projects (
    id integer NOT NULL,
    title character varying(255),
    description text
);
 2   DROP TABLE public.components_page_about_projects;
       public         heap    strapi    false            �            1259    21845 %   components_page_about_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_about_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_about_projects_id_seq;
       public          strapi    false    250            �           0    0 %   components_page_about_projects_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_about_projects_id_seq OWNED BY public.components_page_about_projects.id;
          public          strapi    false    249            �            1259    21855    components_page_buttons    TABLE     �   CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);
 +   DROP TABLE public.components_page_buttons;
       public         heap    strapi    false            �            1259    21854    components_page_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_buttons_id_seq;
       public          strapi    false    252            �           0    0    components_page_buttons_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;
          public          strapi    false    251            �            1259    21864    components_page_concepts    TABLE     l   CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255)
);
 ,   DROP TABLE public.components_page_concepts;
       public         heap    strapi    false            �            1259    21863    components_page_concepts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_page_concepts_id_seq;
       public          strapi    false    254            �           0    0    components_page_concepts_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;
          public          strapi    false    253                        1259    21871    components_page_headers    TABLE     �   CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description text
);
 +   DROP TABLE public.components_page_headers;
       public         heap    strapi    false            0           1259    22106 "   components_page_headers_components    TABLE     �   CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 6   DROP TABLE public.components_page_headers_components;
       public         heap    strapi    false            /           1259    22105 )   components_page_headers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_page_headers_components_id_seq;
       public          strapi    false    304            �           0    0 )   components_page_headers_components_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;
          public          strapi    false    303            �            1259    21870    components_page_headers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_headers_id_seq;
       public          strapi    false    256            �           0    0    components_page_headers_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;
          public          strapi    false    255                       1259    21880    components_page_modules    TABLE     �   CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);
 +   DROP TABLE public.components_page_modules;
       public         heap    strapi    false                       1259    21879    components_page_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_modules_id_seq;
       public          strapi    false    258            �           0    0    components_page_modules_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;
          public          strapi    false    257                       1259    21889    components_page_pricing_boxes    TABLE     �   CREATE TABLE public.components_page_pricing_boxes (
    id integer NOT NULL,
    total_price integer,
    number_installments integer,
    price_installment integer,
    benefits text
);
 1   DROP TABLE public.components_page_pricing_boxes;
       public         heap    strapi    false            2           1259    22120 (   components_page_pricing_boxes_components    TABLE     �   CREATE TABLE public.components_page_pricing_boxes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 <   DROP TABLE public.components_page_pricing_boxes_components;
       public         heap    strapi    false            1           1259    22119 /   components_page_pricing_boxes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_pricing_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_page_pricing_boxes_components_id_seq;
       public          strapi    false    306            �           0    0 /   components_page_pricing_boxes_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_pricing_boxes_components_id_seq OWNED BY public.components_page_pricing_boxes_components.id;
          public          strapi    false    305                       1259    21888 $   components_page_pricing_boxes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_pricing_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_page_pricing_boxes_id_seq;
       public          strapi    false    260            �           0    0 $   components_page_pricing_boxes_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_page_pricing_boxes_id_seq OWNED BY public.components_page_pricing_boxes.id;
          public          strapi    false    259                       1259    21898    components_page_questions    TABLE     o   CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text,
    answer text
);
 -   DROP TABLE public.components_page_questions;
       public         heap    strapi    false                       1259    21897     components_page_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_page_questions_id_seq;
       public          strapi    false    262            �           0    0     components_page_questions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;
          public          strapi    false    261                       1259    21907    components_page_reviews    TABLE     y   CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255),
    text text
);
 +   DROP TABLE public.components_page_reviews;
       public         heap    strapi    false                       1259    21906    components_page_reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_page_reviews_id_seq;
       public          strapi    false    264            �           0    0    components_page_reviews_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;
          public          strapi    false    263            
           1259    21916    components_page_section_agenda    TABLE     �   CREATE TABLE public.components_page_section_agenda (
    id integer NOT NULL,
    title character varying(255),
    description text
);
 2   DROP TABLE public.components_page_section_agenda;
       public         heap    strapi    false            	           1259    21915 %   components_page_section_agenda_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_section_agenda_id_seq;
       public          strapi    false    266            �           0    0 %   components_page_section_agenda_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_section_agenda_id_seq OWNED BY public.components_page_section_agenda.id;
          public          strapi    false    265                       1259    21925    components_page_section_authors    TABLE     s   CREATE TABLE public.components_page_section_authors (
    id integer NOT NULL,
    title character varying(255)
);
 3   DROP TABLE public.components_page_section_authors;
       public         heap    strapi    false            4           1259    22134 -   components_page_section_authors_authors_links    TABLE     �   CREATE TABLE public.components_page_section_authors_authors_links (
    id integer NOT NULL,
    section_authors_id integer,
    author_id integer,
    author_order double precision
);
 A   DROP TABLE public.components_page_section_authors_authors_links;
       public         heap    strapi    false            3           1259    22133 4   components_page_section_authors_authors_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_authors_authors_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.components_page_section_authors_authors_links_id_seq;
       public          strapi    false    308            �           0    0 4   components_page_section_authors_authors_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_authors_authors_links_id_seq OWNED BY public.components_page_section_authors_authors_links.id;
          public          strapi    false    307                       1259    21924 &   components_page_section_authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_page_section_authors_id_seq;
       public          strapi    false    268            �           0    0 &   components_page_section_authors_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_page_section_authors_id_seq OWNED BY public.components_page_section_authors.id;
          public          strapi    false    267                       1259    21932     components_page_section_concepts    TABLE     t   CREATE TABLE public.components_page_section_concepts (
    id integer NOT NULL,
    title character varying(255)
);
 4   DROP TABLE public.components_page_section_concepts;
       public         heap    strapi    false            6           1259    22146 +   components_page_section_concepts_components    TABLE     �   CREATE TABLE public.components_page_section_concepts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 ?   DROP TABLE public.components_page_section_concepts_components;
       public         heap    strapi    false            5           1259    22145 2   components_page_section_concepts_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_page_section_concepts_components_id_seq;
       public          strapi    false    310            �           0    0 2   components_page_section_concepts_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_concepts_components_id_seq OWNED BY public.components_page_section_concepts_components.id;
          public          strapi    false    309                       1259    21931 '   components_page_section_concepts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_page_section_concepts_id_seq;
       public          strapi    false    270            �           0    0 '   components_page_section_concepts_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_page_section_concepts_id_seq OWNED BY public.components_page_section_concepts.id;
          public          strapi    false    269                       1259    21939    components_page_section_faqs    TABLE     p   CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255)
);
 0   DROP TABLE public.components_page_section_faqs;
       public         heap    strapi    false            8           1259    22160 '   components_page_section_faqs_components    TABLE     �   CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 ;   DROP TABLE public.components_page_section_faqs_components;
       public         heap    strapi    false            7           1259    22159 .   components_page_section_faqs_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_page_section_faqs_components_id_seq;
       public          strapi    false    312            �           0    0 .   components_page_section_faqs_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;
          public          strapi    false    311                       1259    21938 #   components_page_section_faqs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_page_section_faqs_id_seq;
       public          strapi    false    272            �           0    0 #   components_page_section_faqs_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;
          public          strapi    false    271                       1259    21946    components_page_section_modules    TABLE     s   CREATE TABLE public.components_page_section_modules (
    id integer NOT NULL,
    title character varying(255)
);
 3   DROP TABLE public.components_page_section_modules;
       public         heap    strapi    false            :           1259    22174 *   components_page_section_modules_components    TABLE     �   CREATE TABLE public.components_page_section_modules_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 >   DROP TABLE public.components_page_section_modules_components;
       public         heap    strapi    false            9           1259    22173 1   components_page_section_modules_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_page_section_modules_components_id_seq;
       public          strapi    false    314            �           0    0 1   components_page_section_modules_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_modules_components_id_seq OWNED BY public.components_page_section_modules_components.id;
          public          strapi    false    313                       1259    21945 &   components_page_section_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_page_section_modules_id_seq;
       public          strapi    false    274            �           0    0 &   components_page_section_modules_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_page_section_modules_id_seq OWNED BY public.components_page_section_modules.id;
          public          strapi    false    273                       1259    21953    components_page_section_reviews    TABLE     s   CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255)
);
 3   DROP TABLE public.components_page_section_reviews;
       public         heap    strapi    false            <           1259    22188 *   components_page_section_reviews_components    TABLE     �   CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 >   DROP TABLE public.components_page_section_reviews_components;
       public         heap    strapi    false            ;           1259    22187 1   components_page_section_reviews_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_page_section_reviews_components_id_seq;
       public          strapi    false    316            �           0    0 1   components_page_section_reviews_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;
          public          strapi    false    315                       1259    21952 &   components_page_section_reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_page_section_reviews_id_seq;
       public          strapi    false    276            �           0    0 &   components_page_section_reviews_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;
          public          strapi    false    275                       1259    21960    components_page_section_teches    TABLE     r   CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255)
);
 2   DROP TABLE public.components_page_section_teches;
       public         heap    strapi    false            >           1259    22202 )   components_page_section_teches_components    TABLE     �   CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 =   DROP TABLE public.components_page_section_teches_components;
       public         heap    strapi    false            =           1259    22201 0   components_page_section_teches_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_page_section_teches_components_id_seq;
       public          strapi    false    318            �           0    0 0   components_page_section_teches_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;
          public          strapi    false    317                       1259    21959 %   components_page_section_teches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_page_section_teches_id_seq;
       public          strapi    false    278            �           0    0 %   components_page_section_teches_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;
          public          strapi    false    277                       1259    21967    components_page_social_links    TABLE     �   CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);
 0   DROP TABLE public.components_page_social_links;
       public         heap    strapi    false                       1259    21966 #   components_page_social_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_page_social_links_id_seq;
       public          strapi    false    280            �           0    0 #   components_page_social_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;
          public          strapi    false    279                       1259    21976    components_page_teches    TABLE     i   CREATE TABLE public.components_page_teches (
    id integer NOT NULL,
    name character varying(255)
);
 *   DROP TABLE public.components_page_teches;
       public         heap    strapi    false                       1259    21975    components_page_teches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_page_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_page_teches_id_seq;
       public          strapi    false    282            �           0    0    components_page_teches_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_page_teches_id_seq OWNED BY public.components_page_teches.id;
          public          strapi    false    281            �            1259    21772    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    strapi    false            (           1259    22058    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    strapi    false            '           1259    22057    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          strapi    false    296            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          strapi    false    295            �            1259    21771    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          strapi    false    238            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          strapi    false    237            &           1259    22048    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    strapi    false            %           1259    22047    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          strapi    false    294            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          strapi    false    293            �            1259    21804    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    strapi    false            �            1259    21803    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          strapi    false    242            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          strapi    false    241            �            1259    21763    landing_pages    TABLE       CREATE TABLE public.landing_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 !   DROP TABLE public.landing_pages;
       public         heap    strapi    false            $           1259    22034    landing_pages_components    TABLE     �   CREATE TABLE public.landing_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 ,   DROP TABLE public.landing_pages_components;
       public         heap    strapi    false            #           1259    22033    landing_pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.landing_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.landing_pages_components_id_seq;
       public          strapi    false    292            �           0    0    landing_pages_components_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.landing_pages_components_id_seq OWNED BY public.landing_pages_components.id;
          public          strapi    false    291            �            1259    21762    landing_pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.landing_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.landing_pages_id_seq;
       public          strapi    false    236            �           0    0    landing_pages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.landing_pages_id_seq OWNED BY public.landing_pages.id;
          public          strapi    false    235            �            1259    21444    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          strapi    false            �            1259    21743    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    strapi    false            �            1259    21742 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          strapi    false    232                        0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          strapi    false    231                        1259    22008 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    strapi    false                       1259    22007 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          strapi    false    288                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          strapi    false    287            �            1259    21732    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    strapi    false            �            1259    21731    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          strapi    false    230                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          strapi    false    229            �            1259    21672    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    strapi    false            �            1259    21671 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          strapi    false    220                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          strapi    false    219            �            1259    21663    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    strapi    false            �            1259    21662    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          strapi    false    218                       0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          strapi    false    217            �            1259    21656    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    strapi    false            �            1259    21655    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          strapi    false    216                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          strapi    false    215            B           1259    22541 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    strapi    false            A           1259    22540 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          strapi    false    322                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          strapi    false    321            D           1259    22550 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    strapi    false            C           1259    22549 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          strapi    false    324                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          strapi    false    323            @           1259    22530    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    strapi    false            ?           1259    22529    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          strapi    false    320                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          strapi    false    319            �            1259    21681    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    strapi    false            �            1259    21680    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          strapi    false    222            	           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          strapi    false    221            �            1259    21815    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    strapi    false            �            1259    21814    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          strapi    false    244            
           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          strapi    false    243            ,           1259    22082    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    strapi    false            +           1259    22081     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          strapi    false    300                       0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          strapi    false    299            �            1259    21824    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    strapi    false            �            1259    21823    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          strapi    false    246                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          strapi    false    245            �            1259    21835    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    strapi    false            �            1259    21834    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          strapi    false    248                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          strapi    false    247            .           1259    22094    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    strapi    false            -           1259    22093    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          strapi    false    302                       0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          strapi    false    301            �            1259    21789    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    strapi    false            �            1259    21788    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          strapi    false    240                       0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          strapi    false    239            *           1259    22070    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    strapi    false            )           1259    22069 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          strapi    false    298                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          strapi    false    297            x           2604    21702    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    223    224    224            �           2604    21986    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    283    284    284            z           2604    21724    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    228    227    228            y           2604    21713    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    225    226    226            �           2604    21998    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    285    286    286            }           2604    21755 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    233    234    234            �           2604    22023    authors_components id    DEFAULT     ~   ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);
 D   ALTER TABLE public.authors_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    290    289    290            �           2604    21849 !   components_page_about_projects id    DEFAULT     �   ALTER TABLE ONLY public.components_page_about_projects ALTER COLUMN id SET DEFAULT nextval('public.components_page_about_projects_id_seq'::regclass);
 P   ALTER TABLE public.components_page_about_projects ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    250    249    250            �           2604    21858    components_page_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);
 I   ALTER TABLE public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    251    252    252            �           2604    21867    components_page_concepts id    DEFAULT     �   ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);
 J   ALTER TABLE public.components_page_concepts ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    254    253    254            �           2604    21874    components_page_headers id    DEFAULT     �   ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);
 I   ALTER TABLE public.components_page_headers ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    256    255    256            �           2604    22109 %   components_page_headers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);
 T   ALTER TABLE public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    303    304    304            �           2604    21883    components_page_modules id    DEFAULT     �   ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);
 I   ALTER TABLE public.components_page_modules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    258    257    258            �           2604    21892     components_page_pricing_boxes id    DEFAULT     �   ALTER TABLE ONLY public.components_page_pricing_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_id_seq'::regclass);
 O   ALTER TABLE public.components_page_pricing_boxes ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    260    259    260            �           2604    22123 +   components_page_pricing_boxes_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_components_id_seq'::regclass);
 Z   ALTER TABLE public.components_page_pricing_boxes_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    306    305    306            �           2604    21901    components_page_questions id    DEFAULT     �   ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);
 K   ALTER TABLE public.components_page_questions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    262    261    262            �           2604    21910    components_page_reviews id    DEFAULT     �   ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);
 I   ALTER TABLE public.components_page_reviews ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    263    264    264            �           2604    21919 !   components_page_section_agenda id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_agenda ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_agenda_id_seq'::regclass);
 P   ALTER TABLE public.components_page_section_agenda ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    265    266    266            �           2604    21928 "   components_page_section_authors id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_authors ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_authors_id_seq'::regclass);
 Q   ALTER TABLE public.components_page_section_authors ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    267    268    268            �           2604    22137 0   components_page_section_authors_authors_links id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_authors_authors_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_authors_authors_links_id_seq'::regclass);
 _   ALTER TABLE public.components_page_section_authors_authors_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    307    308    308            �           2604    21935 #   components_page_section_concepts id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_id_seq'::regclass);
 R   ALTER TABLE public.components_page_section_concepts ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    269    270    270            �           2604    22149 .   components_page_section_concepts_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_page_section_concepts_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    310    309    310            �           2604    21942    components_page_section_faqs id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);
 N   ALTER TABLE public.components_page_section_faqs ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    271    272    272            �           2604    22163 *   components_page_section_faqs_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);
 Y   ALTER TABLE public.components_page_section_faqs_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    311    312    312            �           2604    21949 "   components_page_section_modules id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_id_seq'::regclass);
 Q   ALTER TABLE public.components_page_section_modules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    274    273    274            �           2604    22177 -   components_page_section_modules_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_modules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_components_id_seq'::regclass);
 \   ALTER TABLE public.components_page_section_modules_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    313    314    314            �           2604    21956 "   components_page_section_reviews id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);
 Q   ALTER TABLE public.components_page_section_reviews ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    275    276    276            �           2604    22191 -   components_page_section_reviews_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);
 \   ALTER TABLE public.components_page_section_reviews_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    316    315    316            �           2604    21963 !   components_page_section_teches id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);
 P   ALTER TABLE public.components_page_section_teches ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    277    278    278            �           2604    22205 ,   components_page_section_teches_components id    DEFAULT     �   ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);
 [   ALTER TABLE public.components_page_section_teches_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    317    318    318            �           2604    21970    components_page_social_links id    DEFAULT     �   ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);
 N   ALTER TABLE public.components_page_social_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    280    279    280            �           2604    21979    components_page_teches id    DEFAULT     �   ALTER TABLE ONLY public.components_page_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_teches_id_seq'::regclass);
 H   ALTER TABLE public.components_page_teches ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    281    282    282                       2604    21775    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    238    237    238            �           2604    22061    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    295    296    296            �           2604    22051    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    293    294    294            �           2604    21807    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    241    242    242            ~           2604    21766    landing_pages id    DEFAULT     t   ALTER TABLE ONLY public.landing_pages ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_id_seq'::regclass);
 ?   ALTER TABLE public.landing_pages ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    235    236    236            �           2604    22037    landing_pages_components id    DEFAULT     �   ALTER TABLE ONLY public.landing_pages_components ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_components_id_seq'::regclass);
 J   ALTER TABLE public.landing_pages_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    292    291    292            |           2604    21746    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    231    232    232            �           2604    22011 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    287    288    288            {           2604    21735    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    229    230    230            v           2604    21675    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    219    220    220            u           2604    21666    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    217    218    218            t           2604    21659    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    216    215    216            �           2604    22544 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    322    321    322            �           2604    22553 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    323    324    324            �           2604    22533    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    319    320    320            w           2604    21684    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    222    221    222            �           2604    21818    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    244    243    244            �           2604    22085    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    299    300    300            �           2604    21827    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    246    245    246            �           2604    21838    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    248    247    248            �           2604    22097    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    301    302    302            �           2604    21792    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    239    240    240            �           2604    22073    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    297    298    298            o          0    21699    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    224   
      �          0    21983    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          strapi    false    284   �      s          0    21721    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    228   �      q          0    21710    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    226   �      �          0    21995    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          strapi    false    286   !      y          0    21752    authors 
   TABLE DATA           �   COPY public.authors (id, name, role, description, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    234   C      �          0    22020    authors_components 
   TABLE DATA           i   COPY public.authors_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    290   �      �          0    21846    components_page_about_projects 
   TABLE DATA           P   COPY public.components_page_about_projects (id, title, description) FROM stdin;
    public          strapi    false    250   <      �          0    21855    components_page_buttons 
   TABLE DATA           A   COPY public.components_page_buttons (id, label, url) FROM stdin;
    public          strapi    false    252         �          0    21864    components_page_concepts 
   TABLE DATA           =   COPY public.components_page_concepts (id, title) FROM stdin;
    public          strapi    false    254   �      �          0    21871    components_page_headers 
   TABLE DATA           I   COPY public.components_page_headers (id, title, description) FROM stdin;
    public          strapi    false    256   �      �          0    22106 "   components_page_headers_components 
   TABLE DATA           y   COPY public.components_page_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    304   :      �          0    21880    components_page_modules 
   TABLE DATA           S   COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
    public          strapi    false    258   l      �          0    21889    components_page_pricing_boxes 
   TABLE DATA           z   COPY public.components_page_pricing_boxes (id, total_price, number_installments, price_installment, benefits) FROM stdin;
    public          strapi    false    260   �      �          0    22120 (   components_page_pricing_boxes_components 
   TABLE DATA              COPY public.components_page_pricing_boxes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    306   g      �          0    21898    components_page_questions 
   TABLE DATA           I   COPY public.components_page_questions (id, question, answer) FROM stdin;
    public          strapi    false    262   �      �          0    21907    components_page_reviews 
   TABLE DATA           A   COPY public.components_page_reviews (id, name, text) FROM stdin;
    public          strapi    false    264   �      �          0    21916    components_page_section_agenda 
   TABLE DATA           P   COPY public.components_page_section_agenda (id, title, description) FROM stdin;
    public          strapi    false    266   #      �          0    21925    components_page_section_authors 
   TABLE DATA           D   COPY public.components_page_section_authors (id, title) FROM stdin;
    public          strapi    false    268   �#      �          0    22134 -   components_page_section_authors_authors_links 
   TABLE DATA           x   COPY public.components_page_section_authors_authors_links (id, section_authors_id, author_id, author_order) FROM stdin;
    public          strapi    false    308   $      �          0    21932     components_page_section_concepts 
   TABLE DATA           E   COPY public.components_page_section_concepts (id, title) FROM stdin;
    public          strapi    false    270   K$      �          0    22146 +   components_page_section_concepts_components 
   TABLE DATA           �   COPY public.components_page_section_concepts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    310   �$      �          0    21939    components_page_section_faqs 
   TABLE DATA           A   COPY public.components_page_section_faqs (id, title) FROM stdin;
    public          strapi    false    272   �$      �          0    22160 '   components_page_section_faqs_components 
   TABLE DATA           ~   COPY public.components_page_section_faqs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    312   �$      �          0    21946    components_page_section_modules 
   TABLE DATA           D   COPY public.components_page_section_modules (id, title) FROM stdin;
    public          strapi    false    274   .%      �          0    22174 *   components_page_section_modules_components 
   TABLE DATA           �   COPY public.components_page_section_modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    314   b%      �          0    21953    components_page_section_reviews 
   TABLE DATA           D   COPY public.components_page_section_reviews (id, title) FROM stdin;
    public          strapi    false    276   �%      �          0    22188 *   components_page_section_reviews_components 
   TABLE DATA           �   COPY public.components_page_section_reviews_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    316   �%      �          0    21960    components_page_section_teches 
   TABLE DATA           C   COPY public.components_page_section_teches (id, title) FROM stdin;
    public          strapi    false    278   (&      �          0    22202 )   components_page_section_teches_components 
   TABLE DATA           �   COPY public.components_page_section_teches_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    318   ^&      �          0    21967    components_page_social_links 
   TABLE DATA           F   COPY public.components_page_social_links (id, title, url) FROM stdin;
    public          strapi    false    280   �&      �          0    21976    components_page_teches 
   TABLE DATA           :   COPY public.components_page_teches (id, name) FROM stdin;
    public          strapi    false    282   H'      }          0    21772    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    238   �'      �          0    22058    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          strapi    false    296   S2      �          0    22048    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          strapi    false    294   p2      �          0    21804    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    242   83      {          0    21763    landing_pages 
   TABLE DATA           o   COPY public.landing_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    236   �3      �          0    22034    landing_pages_components 
   TABLE DATA           o   COPY public.landing_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          strapi    false    292   �3      w          0    21743    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    232   �4      �          0    22008 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          strapi    false    288   �4      u          0    21732    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    230   �4      k          0    21672    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          strapi    false    220   �4      i          0    21663    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          strapi    false    218   �P      g          0    21656    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          strapi    false    216   �[      �          0    22541 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    322   �[      �          0    22550 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          strapi    false    324   �[      �          0    22530    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    320   �[      m          0    21681    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          strapi    false    222   \      �          0    21815    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    244   4\      �          0    22082    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          strapi    false    300   @]      �          0    21824    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    246   �]      �          0    21835    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    248   &^      �          0    22094    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          strapi    false    302   C^                0    21789    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    240   `^      �          0    22070    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          strapi    false    298   }^                 0    0    admin_permissions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 97, true);
          public          strapi    false    223                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 97, true);
          public          strapi    false    283                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          strapi    false    227                       0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          strapi    false    225                       0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          strapi    false    285                       0    0    authors_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.authors_components_id_seq', 7, true);
          public          strapi    false    289                       0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.authors_id_seq', 3, true);
          public          strapi    false    233                       0    0 %   components_page_about_projects_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_about_projects_id_seq', 1, true);
          public          strapi    false    249                       0    0    components_page_buttons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 2, true);
          public          strapi    false    251                       0    0    components_page_concepts_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 3, true);
          public          strapi    false    253                       0    0 )   components_page_headers_components_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 10, true);
          public          strapi    false    303                       0    0    components_page_headers_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, true);
          public          strapi    false    255                       0    0    components_page_modules_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_modules_id_seq', 2, true);
          public          strapi    false    257                       0    0 /   components_page_pricing_boxes_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_page_pricing_boxes_components_id_seq', 4, true);
          public          strapi    false    305                       0    0 $   components_page_pricing_boxes_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_page_pricing_boxes_id_seq', 1, true);
          public          strapi    false    259                        0    0     components_page_questions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_page_questions_id_seq', 2, true);
          public          strapi    false    261            !           0    0    components_page_reviews_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 4, true);
          public          strapi    false    263            "           0    0 %   components_page_section_agenda_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_section_agenda_id_seq', 1, true);
          public          strapi    false    265            #           0    0 4   components_page_section_authors_authors_links_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_page_section_authors_authors_links_id_seq', 3, true);
          public          strapi    false    307            $           0    0 &   components_page_section_authors_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_page_section_authors_id_seq', 1, true);
          public          strapi    false    267            %           0    0 2   components_page_section_concepts_components_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_page_section_concepts_components_id_seq', 21, true);
          public          strapi    false    309            &           0    0 '   components_page_section_concepts_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_page_section_concepts_id_seq', 1, true);
          public          strapi    false    269            '           0    0 .   components_page_section_faqs_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 2, true);
          public          strapi    false    311            (           0    0 #   components_page_section_faqs_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);
          public          strapi    false    271            )           0    0 1   components_page_section_modules_components_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_page_section_modules_components_id_seq', 12, true);
          public          strapi    false    313            *           0    0 &   components_page_section_modules_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_page_section_modules_id_seq', 1, true);
          public          strapi    false    273            +           0    0 1   components_page_section_reviews_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 8, true);
          public          strapi    false    315            ,           0    0 &   components_page_section_reviews_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 1, true);
          public          strapi    false    275            -           0    0 0   components_page_section_teches_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 40, true);
          public          strapi    false    317            .           0    0 %   components_page_section_teches_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 1, true);
          public          strapi    false    277            /           0    0 #   components_page_social_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 7, true);
          public          strapi    false    279            0           0    0    components_page_teches_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_page_teches_id_seq', 5, true);
          public          strapi    false    281            1           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          strapi    false    295            2           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 45, true);
          public          strapi    false    237            3           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 80, true);
          public          strapi    false    293            4           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          strapi    false    241            5           0    0    landing_pages_components_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.landing_pages_components_id_seq', 55, true);
          public          strapi    false    291            6           0    0    landing_pages_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.landing_pages_id_seq', 1, true);
          public          strapi    false    235            7           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 3, true);
          public          strapi    false    214            8           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          strapi    false    231            9           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          strapi    false    287            :           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          strapi    false    229            ;           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 41, true);
          public          strapi    false    219            <           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 5, true);
          public          strapi    false    217            =           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          strapi    false    215            >           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          strapi    false    321            ?           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          strapi    false    323            @           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          strapi    false    319            A           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          strapi    false    221            B           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 12, true);
          public          strapi    false    243            C           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 12, true);
          public          strapi    false    299            D           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          strapi    false    245            E           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          strapi    false    247            F           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          strapi    false    301            G           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          strapi    false    239            H           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          strapi    false    297            �           2606    21706 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            strapi    false    224                       2606    21988 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            strapi    false    284                       2606    21992 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            strapi    false    284    284            �           2606    21728    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            strapi    false    228            �           2606    21717    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            strapi    false    226                       2606    22000 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            strapi    false    286            !           2606    22004 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            strapi    false    286    286            +           2606    22027 *   authors_components authors_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.authors_components DROP CONSTRAINT authors_components_pkey;
       public            strapi    false    290            �           2606    21759    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            strapi    false    234            /           2606    22612 !   authors_components authors_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.authors_components DROP CONSTRAINT authors_unique;
       public            strapi    false    290    290    290    290            �           2606    21853 B   components_page_about_projects components_page_about_projects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_about_projects
    ADD CONSTRAINT components_page_about_projects_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_about_projects DROP CONSTRAINT components_page_about_projects_pkey;
       public            strapi    false    250            �           2606    21862 4   components_page_buttons components_page_buttons_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_buttons DROP CONSTRAINT components_page_buttons_pkey;
       public            strapi    false    252            �           2606    21869 6   components_page_concepts components_page_concepts_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_page_concepts DROP CONSTRAINT components_page_concepts_pkey;
       public            strapi    false    254            X           2606    22113 J   components_page_headers_components components_page_headers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_headers_components_pkey;
       public            strapi    false    304            �           2606    21878 4   components_page_headers components_page_headers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_headers DROP CONSTRAINT components_page_headers_pkey;
       public            strapi    false    256            \           2606    22616 A   components_page_headers_components components_page_headers_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_unique UNIQUE (entity_id, component_id, field, component_type);
 k   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_headers_unique;
       public            strapi    false    304    304    304    304            �           2606    21887 4   components_page_modules components_page_modules_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_modules DROP CONSTRAINT components_page_modules_pkey;
       public            strapi    false    258            _           2606    22127 V   components_page_pricing_boxes_components components_page_pricing_boxes_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT components_page_pricing_boxes_components_pkey;
       public            strapi    false    306            �           2606    21896 @   components_page_pricing_boxes components_page_pricing_boxes_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_page_pricing_boxes
    ADD CONSTRAINT components_page_pricing_boxes_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_page_pricing_boxes DROP CONSTRAINT components_page_pricing_boxes_pkey;
       public            strapi    false    260            c           2606    22618 M   components_page_pricing_boxes_components components_page_pricing_boxes_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_unique UNIQUE (entity_id, component_id, field, component_type);
 w   ALTER TABLE ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT components_page_pricing_boxes_unique;
       public            strapi    false    306    306    306    306            �           2606    21905 8   components_page_questions components_page_questions_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_page_questions DROP CONSTRAINT components_page_questions_pkey;
       public            strapi    false    262                        2606    21914 4   components_page_reviews components_page_reviews_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_page_reviews DROP CONSTRAINT components_page_reviews_pkey;
       public            strapi    false    264                       2606    21923 B   components_page_section_agenda components_page_section_agenda_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_agenda
    ADD CONSTRAINT components_page_section_agenda_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_section_agenda DROP CONSTRAINT components_page_section_agenda_pkey;
       public            strapi    false    266            h           2606    22139 `   components_page_section_authors_authors_links components_page_section_authors_authors_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT components_page_section_authors_authors_links_pkey;
       public            strapi    false    308            j           2606    22143 b   components_page_section_authors_authors_links components_page_section_authors_authors_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_unique UNIQUE (section_authors_id, author_id);
 �   ALTER TABLE ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT components_page_section_authors_authors_links_unique;
       public            strapi    false    308    308                       2606    21930 D   components_page_section_authors components_page_section_authors_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_authors
    ADD CONSTRAINT components_page_section_authors_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_page_section_authors DROP CONSTRAINT components_page_section_authors_pkey;
       public            strapi    false    268            m           2606    22153 \   components_page_section_concepts_components components_page_section_concepts_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_concepts_components DROP CONSTRAINT components_page_section_concepts_components_pkey;
       public            strapi    false    310                       2606    21937 F   components_page_section_concepts components_page_section_concepts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts
    ADD CONSTRAINT components_page_section_concepts_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_page_section_concepts DROP CONSTRAINT components_page_section_concepts_pkey;
       public            strapi    false    270            q           2606    22620 S   components_page_section_concepts_components components_page_section_concepts_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_unique UNIQUE (entity_id, component_id, field, component_type);
 }   ALTER TABLE ONLY public.components_page_section_concepts_components DROP CONSTRAINT components_page_section_concepts_unique;
       public            strapi    false    310    310    310    310            t           2606    22167 T   components_page_section_faqs_components components_page_section_faqs_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_page_section_faqs_components DROP CONSTRAINT components_page_section_faqs_components_pkey;
       public            strapi    false    312                       2606    21944 >   components_page_section_faqs components_page_section_faqs_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_page_section_faqs DROP CONSTRAINT components_page_section_faqs_pkey;
       public            strapi    false    272            x           2606    22622 K   components_page_section_faqs_components components_page_section_faqs_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_unique UNIQUE (entity_id, component_id, field, component_type);
 u   ALTER TABLE ONLY public.components_page_section_faqs_components DROP CONSTRAINT components_page_section_faqs_unique;
       public            strapi    false    312    312    312    312            {           2606    22181 Z   components_page_section_modules_components components_page_section_modules_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_modules_components DROP CONSTRAINT components_page_section_modules_components_pkey;
       public            strapi    false    314            
           2606    21951 D   components_page_section_modules components_page_section_modules_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules
    ADD CONSTRAINT components_page_section_modules_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_page_section_modules DROP CONSTRAINT components_page_section_modules_pkey;
       public            strapi    false    274                       2606    22624 Q   components_page_section_modules_components components_page_section_modules_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_unique UNIQUE (entity_id, component_id, field, component_type);
 {   ALTER TABLE ONLY public.components_page_section_modules_components DROP CONSTRAINT components_page_section_modules_unique;
       public            strapi    false    314    314    314    314            �           2606    22195 Z   components_page_section_reviews_components components_page_section_reviews_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_reviews_components DROP CONSTRAINT components_page_section_reviews_components_pkey;
       public            strapi    false    316                       2606    21958 D   components_page_section_reviews components_page_section_reviews_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_page_section_reviews DROP CONSTRAINT components_page_section_reviews_pkey;
       public            strapi    false    276            �           2606    22626 Q   components_page_section_reviews_components components_page_section_reviews_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_unique UNIQUE (entity_id, component_id, field, component_type);
 {   ALTER TABLE ONLY public.components_page_section_reviews_components DROP CONSTRAINT components_page_section_reviews_unique;
       public            strapi    false    316    316    316    316            �           2606    22209 X   components_page_section_teches_components components_page_section_teches_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_page_section_teches_components DROP CONSTRAINT components_page_section_teches_components_pkey;
       public            strapi    false    318                       2606    21965 B   components_page_section_teches components_page_section_teches_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_page_section_teches DROP CONSTRAINT components_page_section_teches_pkey;
       public            strapi    false    278            �           2606    22628 O   components_page_section_teches_components components_page_section_teches_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_unique UNIQUE (entity_id, component_id, field, component_type);
 y   ALTER TABLE ONLY public.components_page_section_teches_components DROP CONSTRAINT components_page_section_teches_unique;
       public            strapi    false    318    318    318    318                       2606    21974 >   components_page_social_links components_page_social_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_page_social_links DROP CONSTRAINT components_page_social_links_pkey;
       public            strapi    false    280                       2606    21981 2   components_page_teches components_page_teches_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_page_teches
    ADD CONSTRAINT components_page_teches_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_page_teches DROP CONSTRAINT components_page_teches_pkey;
       public            strapi    false    282            >           2606    22063 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            strapi    false    296            @           2606    22067 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            strapi    false    296    296            �           2606    21779    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            strapi    false    238            9           2606    22055 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            strapi    false    294            �           2606    21811    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            strapi    false    242            2           2606    22041 6   landing_pages_components landing_pages_components_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_components_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.landing_pages_components DROP CONSTRAINT landing_pages_components_pkey;
       public            strapi    false    292            �           2606    21768     landing_pages landing_pages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.landing_pages DROP CONSTRAINT landing_pages_pkey;
       public            strapi    false    236            6           2606    22614 -   landing_pages_components landing_pages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_unique UNIQUE (entity_id, component_id, field, component_type);
 W   ALTER TABLE ONLY public.landing_pages_components DROP CONSTRAINT landing_pages_unique;
       public            strapi    false    292    292    292    292            �           2606    21748 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            strapi    false    232            &           2606    22013 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            strapi    false    288            (           2606    22017 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            strapi    false    288    288            �           2606    21739 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            strapi    false    230            �           2606    21679 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            strapi    false    220            �           2606    21670 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            strapi    false    218            �           2606    21661 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            strapi    false    216            �           2606    22546 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            strapi    false    322            �           2606    22555 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            strapi    false    324            �           2606    22559 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            strapi    false    324    324            �           2606    22537 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            strapi    false    320            �           2606    21688 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            strapi    false    222            �           2606    21820 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            strapi    false    244            L           2606    22087 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            strapi    false    300            N           2606    22091 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            strapi    false    300    300            �           2606    21831    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            strapi    false    246            �           2606    21842    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            strapi    false    248            S           2606    22099 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            strapi    false    302            U           2606    22103 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            strapi    false    302    302            E           2606    22075 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            strapi    false    298            G           2606    22079 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            strapi    false    298    298            �           2606    21798 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            strapi    false    240            �           2606    21800 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            strapi    false    240            �           2606    21796 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            strapi    false    240            �           1259    21707 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            strapi    false    224                       1259    21989    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            strapi    false    284                       1259    21990 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            strapi    false    284                       1259    21993 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            strapi    false    284            �           1259    21708 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            strapi    false    224            �           1259    21729    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            strapi    false    228            �           1259    21730    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            strapi    false    228            �           1259    21718    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            strapi    false    226                       1259    22001    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            strapi    false    286                       1259    22002    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            strapi    false    286                       1259    22005     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            strapi    false    286                       1259    22006 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            strapi    false    286            �           1259    21719    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            strapi    false    226            )           1259    22029    authors_component_type_index    INDEX     e   CREATE INDEX authors_component_type_index ON public.authors_components USING btree (component_type);
 0   DROP INDEX public.authors_component_type_index;
       public            strapi    false    290            �           1259    21760    authors_created_by_id_fk    INDEX     U   CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);
 ,   DROP INDEX public.authors_created_by_id_fk;
       public            strapi    false    234            ,           1259    22030    authors_entity_fk    INDEX     U   CREATE INDEX authors_entity_fk ON public.authors_components USING btree (entity_id);
 %   DROP INDEX public.authors_entity_fk;
       public            strapi    false    290            -           1259    22028    authors_field_index    INDEX     S   CREATE INDEX authors_field_index ON public.authors_components USING btree (field);
 '   DROP INDEX public.authors_field_index;
       public            strapi    false    290            �           1259    21761    authors_updated_by_id_fk    INDEX     U   CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);
 ,   DROP INDEX public.authors_updated_by_id_fk;
       public            strapi    false    234            V           1259    22115 ,   components_page_headers_component_type_index    INDEX     �   CREATE INDEX components_page_headers_component_type_index ON public.components_page_headers_components USING btree (component_type);
 @   DROP INDEX public.components_page_headers_component_type_index;
       public            strapi    false    304            Y           1259    22116 !   components_page_headers_entity_fk    INDEX     u   CREATE INDEX components_page_headers_entity_fk ON public.components_page_headers_components USING btree (entity_id);
 5   DROP INDEX public.components_page_headers_entity_fk;
       public            strapi    false    304            Z           1259    22114 #   components_page_headers_field_index    INDEX     s   CREATE INDEX components_page_headers_field_index ON public.components_page_headers_components USING btree (field);
 7   DROP INDEX public.components_page_headers_field_index;
       public            strapi    false    304            ]           1259    22129 2   components_page_pricing_boxes_component_type_index    INDEX     �   CREATE INDEX components_page_pricing_boxes_component_type_index ON public.components_page_pricing_boxes_components USING btree (component_type);
 F   DROP INDEX public.components_page_pricing_boxes_component_type_index;
       public            strapi    false    306            `           1259    22130 '   components_page_pricing_boxes_entity_fk    INDEX     �   CREATE INDEX components_page_pricing_boxes_entity_fk ON public.components_page_pricing_boxes_components USING btree (entity_id);
 ;   DROP INDEX public.components_page_pricing_boxes_entity_fk;
       public            strapi    false    306            a           1259    22128 )   components_page_pricing_boxes_field_index    INDEX        CREATE INDEX components_page_pricing_boxes_field_index ON public.components_page_pricing_boxes_components USING btree (field);
 =   DROP INDEX public.components_page_pricing_boxes_field_index;
       public            strapi    false    306            d           1259    22140 0   components_page_section_authors_authors_links_fk    INDEX     �   CREATE INDEX components_page_section_authors_authors_links_fk ON public.components_page_section_authors_authors_links USING btree (section_authors_id);
 D   DROP INDEX public.components_page_section_authors_authors_links_fk;
       public            strapi    false    308            e           1259    22141 4   components_page_section_authors_authors_links_inv_fk    INDEX     �   CREATE INDEX components_page_section_authors_authors_links_inv_fk ON public.components_page_section_authors_authors_links USING btree (author_id);
 H   DROP INDEX public.components_page_section_authors_authors_links_inv_fk;
       public            strapi    false    308            f           1259    22144 6   components_page_section_authors_authors_links_order_fk    INDEX     �   CREATE INDEX components_page_section_authors_authors_links_order_fk ON public.components_page_section_authors_authors_links USING btree (author_order);
 J   DROP INDEX public.components_page_section_authors_authors_links_order_fk;
       public            strapi    false    308            k           1259    22155 5   components_page_section_concepts_component_type_index    INDEX     �   CREATE INDEX components_page_section_concepts_component_type_index ON public.components_page_section_concepts_components USING btree (component_type);
 I   DROP INDEX public.components_page_section_concepts_component_type_index;
       public            strapi    false    310            n           1259    22156 *   components_page_section_concepts_entity_fk    INDEX     �   CREATE INDEX components_page_section_concepts_entity_fk ON public.components_page_section_concepts_components USING btree (entity_id);
 >   DROP INDEX public.components_page_section_concepts_entity_fk;
       public            strapi    false    310            o           1259    22154 ,   components_page_section_concepts_field_index    INDEX     �   CREATE INDEX components_page_section_concepts_field_index ON public.components_page_section_concepts_components USING btree (field);
 @   DROP INDEX public.components_page_section_concepts_field_index;
       public            strapi    false    310            r           1259    22169 1   components_page_section_faqs_component_type_index    INDEX     �   CREATE INDEX components_page_section_faqs_component_type_index ON public.components_page_section_faqs_components USING btree (component_type);
 E   DROP INDEX public.components_page_section_faqs_component_type_index;
       public            strapi    false    312            u           1259    22170 &   components_page_section_faqs_entity_fk    INDEX        CREATE INDEX components_page_section_faqs_entity_fk ON public.components_page_section_faqs_components USING btree (entity_id);
 :   DROP INDEX public.components_page_section_faqs_entity_fk;
       public            strapi    false    312            v           1259    22168 (   components_page_section_faqs_field_index    INDEX     }   CREATE INDEX components_page_section_faqs_field_index ON public.components_page_section_faqs_components USING btree (field);
 <   DROP INDEX public.components_page_section_faqs_field_index;
       public            strapi    false    312            y           1259    22183 4   components_page_section_modules_component_type_index    INDEX     �   CREATE INDEX components_page_section_modules_component_type_index ON public.components_page_section_modules_components USING btree (component_type);
 H   DROP INDEX public.components_page_section_modules_component_type_index;
       public            strapi    false    314            |           1259    22184 )   components_page_section_modules_entity_fk    INDEX     �   CREATE INDEX components_page_section_modules_entity_fk ON public.components_page_section_modules_components USING btree (entity_id);
 =   DROP INDEX public.components_page_section_modules_entity_fk;
       public            strapi    false    314            }           1259    22182 +   components_page_section_modules_field_index    INDEX     �   CREATE INDEX components_page_section_modules_field_index ON public.components_page_section_modules_components USING btree (field);
 ?   DROP INDEX public.components_page_section_modules_field_index;
       public            strapi    false    314            �           1259    22197 4   components_page_section_reviews_component_type_index    INDEX     �   CREATE INDEX components_page_section_reviews_component_type_index ON public.components_page_section_reviews_components USING btree (component_type);
 H   DROP INDEX public.components_page_section_reviews_component_type_index;
       public            strapi    false    316            �           1259    22198 )   components_page_section_reviews_entity_fk    INDEX     �   CREATE INDEX components_page_section_reviews_entity_fk ON public.components_page_section_reviews_components USING btree (entity_id);
 =   DROP INDEX public.components_page_section_reviews_entity_fk;
       public            strapi    false    316            �           1259    22196 +   components_page_section_reviews_field_index    INDEX     �   CREATE INDEX components_page_section_reviews_field_index ON public.components_page_section_reviews_components USING btree (field);
 ?   DROP INDEX public.components_page_section_reviews_field_index;
       public            strapi    false    316            �           1259    22211 3   components_page_section_teches_component_type_index    INDEX     �   CREATE INDEX components_page_section_teches_component_type_index ON public.components_page_section_teches_components USING btree (component_type);
 G   DROP INDEX public.components_page_section_teches_component_type_index;
       public            strapi    false    318            �           1259    22212 (   components_page_section_teches_entity_fk    INDEX     �   CREATE INDEX components_page_section_teches_entity_fk ON public.components_page_section_teches_components USING btree (entity_id);
 <   DROP INDEX public.components_page_section_teches_entity_fk;
       public            strapi    false    318            �           1259    22210 *   components_page_section_teches_field_index    INDEX     �   CREATE INDEX components_page_section_teches_field_index ON public.components_page_section_teches_components USING btree (field);
 >   DROP INDEX public.components_page_section_teches_field_index;
       public            strapi    false    318            �           1259    21786    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            strapi    false    238            :           1259    22064    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            strapi    false    296            ;           1259    22065    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            strapi    false    296            <           1259    22068    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            strapi    false    296            7           1259    22056    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            strapi    false    294            �           1259    21787    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            strapi    false    238            �           1259    21812    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            strapi    false    242            �           1259    21813    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            strapi    false    242            0           1259    22043 "   landing_pages_component_type_index    INDEX     q   CREATE INDEX landing_pages_component_type_index ON public.landing_pages_components USING btree (component_type);
 6   DROP INDEX public.landing_pages_component_type_index;
       public            strapi    false    292            �           1259    21769    landing_pages_created_by_id_fk    INDEX     a   CREATE INDEX landing_pages_created_by_id_fk ON public.landing_pages USING btree (created_by_id);
 2   DROP INDEX public.landing_pages_created_by_id_fk;
       public            strapi    false    236            3           1259    22044    landing_pages_entity_fk    INDEX     a   CREATE INDEX landing_pages_entity_fk ON public.landing_pages_components USING btree (entity_id);
 +   DROP INDEX public.landing_pages_entity_fk;
       public            strapi    false    292            4           1259    22042    landing_pages_field_index    INDEX     _   CREATE INDEX landing_pages_field_index ON public.landing_pages_components USING btree (field);
 -   DROP INDEX public.landing_pages_field_index;
       public            strapi    false    292            �           1259    21770    landing_pages_updated_by_id_fk    INDEX     a   CREATE INDEX landing_pages_updated_by_id_fk ON public.landing_pages USING btree (updated_by_id);
 2   DROP INDEX public.landing_pages_updated_by_id_fk;
       public            strapi    false    236            �           1259    21749 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            strapi    false    232            "           1259    22014 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            strapi    false    288            #           1259    22015 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            strapi    false    288            $           1259    22018 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            strapi    false    288            �           1259    21750 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            strapi    false    232            �           1259    21740 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            strapi    false    230            �           1259    21741 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            strapi    false    230            �           1259    22547 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            strapi    false    322            �           1259    22556 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            strapi    false    324            �           1259    22557 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            strapi    false    324            �           1259    22560 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            strapi    false    324            �           1259    22548 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            strapi    false    322            �           1259    22538 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            strapi    false    320            �           1259    22539 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            strapi    false    320            �           1259    21821    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            strapi    false    244            H           1259    22088    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            strapi    false    300            I           1259    22089     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            strapi    false    300            J           1259    22092 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            strapi    false    300            �           1259    21822    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            strapi    false    244            �           1259    21832    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            strapi    false    246            �           1259    21833    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            strapi    false    246            �           1259    21843    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            strapi    false    248            O           1259    22100    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            strapi    false    302            P           1259    22101    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            strapi    false    302            Q           1259    22104     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            strapi    false    302            �           1259    21844    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            strapi    false    248            �           1259    21781    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            strapi    false    238            �           1259    21785    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            strapi    false    238            �           1259    21780    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            strapi    false    238            �           1259    21783    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            strapi    false    238            �           1259    21784    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            strapi    false    238            �           1259    21782    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            strapi    false    238            �           1259    21801    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            strapi    false    240            A           1259    22076    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            strapi    false    298            B           1259    22077 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            strapi    false    298            C           1259    22080 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            strapi    false    298            �           1259    21802    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            strapi    false    240            �           2606    22215 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          strapi    false    224    3513    226            �           2606    22345 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          strapi    false    224    3509    284            �           2606    22350 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          strapi    false    228    3517    284            �           2606    22220 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          strapi    false    226    224    3513            �           2606    22235 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          strapi    false    226    228    3513            �           2606    22240 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          strapi    false    3513    226    228            �           2606    22225 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          strapi    false    3513    226    226            �           2606    22355 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          strapi    false    3513    226    286            �           2606    22360 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          strapi    false    286    228    3517            �           2606    22230 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          strapi    false    226    3513    226            �           2606    22265     authors authors_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_created_by_id_fk;
       public          strapi    false    3513    226    234            �           2606    22375 $   authors_components authors_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_entity_fk FOREIGN KEY (entity_id) REFERENCES public.authors(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.authors_components DROP CONSTRAINT authors_entity_fk;
       public          strapi    false    234    290    3529            �           2606    22270     authors authors_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_updated_by_id_fk;
       public          strapi    false    3513    234    226            �           2606    22430 D   components_page_headers_components components_page_headers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.components_page_headers_components DROP CONSTRAINT components_page_headers_entity_fk;
       public          strapi    false    304    256    3576            �           2606    22435 P   components_page_pricing_boxes_components components_page_pricing_boxes_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_pricing_boxes(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT components_page_pricing_boxes_entity_fk;
       public          strapi    false    260    3580    306            �           2606    22440 ^   components_page_section_authors_authors_links components_page_section_authors_authors_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_fk FOREIGN KEY (section_authors_id) REFERENCES public.components_page_section_authors(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT components_page_section_authors_authors_links_fk;
       public          strapi    false    3588    268    308            �           2606    22445 b   components_page_section_authors_authors_links components_page_section_authors_authors_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_inv_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT components_page_section_authors_authors_links_inv_fk;
       public          strapi    false    308    234    3529            �           2606    22450 V   components_page_section_concepts_components components_page_section_concepts_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_concepts(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_page_section_concepts_components DROP CONSTRAINT components_page_section_concepts_entity_fk;
       public          strapi    false    3590    270    310            �           2606    22455 N   components_page_section_faqs_components components_page_section_faqs_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;
 x   ALTER TABLE ONLY public.components_page_section_faqs_components DROP CONSTRAINT components_page_section_faqs_entity_fk;
       public          strapi    false    272    312    3592            �           2606    22460 T   components_page_section_modules_components components_page_section_modules_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_modules(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.components_page_section_modules_components DROP CONSTRAINT components_page_section_modules_entity_fk;
       public          strapi    false    314    274    3594            �           2606    22465 T   components_page_section_reviews_components components_page_section_reviews_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.components_page_section_reviews_components DROP CONSTRAINT components_page_section_reviews_entity_fk;
       public          strapi    false    3596    276    316            �           2606    22470 R   components_page_section_teches_components components_page_section_teches_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.components_page_section_teches_components DROP CONSTRAINT components_page_section_teches_entity_fk;
       public          strapi    false    318    3598    278            �           2606    22285    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          strapi    false    3513    226    238            �           2606    22390 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          strapi    false    238    3537    296            �           2606    22395 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          strapi    false    240    296    3551            �           2606    22385 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          strapi    false    238    294    3537            �           2606    22290    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          strapi    false    3513    238    226            �           2606    22305 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          strapi    false    226    242    3513            �           2606    22310 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          strapi    false    242    226    3513            �           2606    22275 ,   landing_pages landing_pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.landing_pages DROP CONSTRAINT landing_pages_created_by_id_fk;
       public          strapi    false    3513    226    236            �           2606    22380 0   landing_pages_components landing_pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.landing_pages(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.landing_pages_components DROP CONSTRAINT landing_pages_entity_fk;
       public          strapi    false    292    236    3533            �           2606    22280 ,   landing_pages landing_pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.landing_pages DROP CONSTRAINT landing_pages_updated_by_id_fk;
       public          strapi    false    236    226    3513            �           2606    22255 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          strapi    false    3513    232    226            �           2606    22365 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          strapi    false    232    3525    288            �           2606    22370 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          strapi    false    3521    288    230            �           2606    22260 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          strapi    false    232    3513    226            �           2606    22245 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          strapi    false    226    3513    230            �           2606    22250 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          strapi    false    3513    226    230            �           2606    22571 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          strapi    false    226    322    3513            �           2606    22581 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          strapi    false    324    322    3732            �           2606    22586 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          strapi    false    3728    320    324            �           2606    22576 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          strapi    false    226    3513    322            �           2606    22561 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          strapi    false    320    226    3513            �           2606    22566 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          strapi    false    226    3513    320            �           2606    22315 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          strapi    false    3513    244    226            �           2606    22410 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          strapi    false    244    300    3559            �           2606    22415 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          strapi    false    3563    300    246            �           2606    22320 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          strapi    false    3513    244    226            �           2606    22325 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          strapi    false    226    246    3513            �           2606    22330 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          strapi    false    3513    226    246            �           2606    22335 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          strapi    false    3513    248    226            �           2606    22420 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          strapi    false    3567    302    248            �           2606    22425 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          strapi    false    246    3563    302            �           2606    22340 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          strapi    false    226    3513    248            �           2606    22295 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          strapi    false    226    3513    240            �           2606    22400 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          strapi    false    240    298    3551            �           2606    22405 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          strapi    false    298    240    3551            �           2606    22300 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          strapi    false    240    3513    226            o   ~  x��\�o�6~N���ϳa�$�m���P�S�Yb-���R�b��>R&Y�Y��i#����y<~<�8We��b�KxQ��^�">�jþ�9��CR��fWq��vqS��js���wu��<����Uy�k���fU�G�>+����'Y����bSg�P�T��L$UV�/V��z���ݺ�z�����w�M@]P��O��ڝפ<.Ҭ8�K�ʦ��y9?���cq*lC��n�����y!Q�,�u��0;J��iX�`~��~[��׎�F
{��^郿c�� �$�����ӏ����W^$��� �$���,?"�E��z�ԁi<��I��MYe���_��M��8+��^A���zSY�����u�{�{V��l�7��Gu=����4�E��/�9c�_y�?�X�{��/�ٗ�S�[�i�Q�>5L�ga���B<��m�[��hÛ���K��p��S��9ZXpa��|$��D�4i4e�����uC��-<���?<:@����L�F�r��� ;���<��
��p�kH3��D���L��l���5vw�3U?� @/���V��Z��*���$֘nS��6;4[��0��[|���מ��!(��> ���	��k� �O�C��O(���BJ���yx�u���cJC ʵi|�d�*N��b�X�U���� =�۞BPԒ`[B�%��1C*<� '���ƷI��h$0-fZp!͒�[�ra�WΖ�k"q^nr�L(ag3v.bwI�-��0�kg��&�&��"6u/��fTX7�f��"6d�=|��{`f�z�&�f("ab#�A
fV� $�$yN��Ee�����R���b�sR�����L�No|�C�,/�|q��J�۴0[�%>y��	�㳬�d=D(�Y�2�`�X��:fB��P�s�Pcv�3�o�s&�|�,	��Wi˘Lr�[-x��Y��v��q;{B��n�����ؒ�%+�� J��0�X����C�u�gf���2,��+���ń�k�@LkY�{�����k+ ��_�yC⍯��\�	�?��/�a�^Ռ P�eB�V�f��yF�!3�[+��򧜼$>���M^�G䪞{�� ���=]�#�K�S~ �8�A���Z}�	P� ����X >�(6[��l��U��
r����L��``�ؽO�
��'�y�f`�٭��~,y�f���<�*I|J+0�B;憱�j�z�dyj"�	���9h��Y[�H��e
:�ֱy�`�AǠ������3v2BTbo��"�8�l��]� :��۴ t����k�Id���[R��`Gl�`�����as|2X$2,<��̡2`�I�3��D QD�(:
��7���u�h�@���p;
��ҋ�t;�J�������p#�nǉAɵ"wR�tOP� �� CoR�W�3�J����P=䌓��kE�E& F� �v�0Q�pwk%���e�|��ٱ̥*T뀻A��
���6����FT���X.���
�� j/ ��,��v}难$Ε>;p��{VK#&f��O��'�h������G�G��#��1��oshrY܇E��${�/�����C����[p����%ר�a� ���2L;�D�5 �X�F�(���.�֠ΘBv6�L�sL�M��}����9&ʦ�ڈڵ��QQ6Lj-jǕ\:�k�͑t�$L�)`��!�F�,A�%�hD��p�!\JF�Q��*j�
��u>��Ux�p�!���<�F��(�u�)y?s�� �D�4�*@tj�&2���h����j�d�����mݝG7Aw�ܓk|������ڞ\��>`�3
�5z ������vnO��C������cH8�p"P~�������r���      �   �  x��ۭ#1�o����z�r��c� F<@2>�-��=s<�}�i�9QV�m͹16�k�yqv��W��n�[���ֺ��a��=�i��=�e.���2��c|�����g��G��S�q>�f��?�����|Z<ŧã�Z��c!?�ų)��X��"r3��*
*O{���(��$
*����
b� �z(h�
����3W��
?đ�z)�,T%EeY
�e[J��X��A��,_�Y
�C}V�އbJi�Q<�_M�͔��V���] �����F���7����uV�ޡ?ki����l#i��<��:��E��ZZ���vҢ�c--���b�g--��H��ݖ��a�JˇaSH������S6Ҳ0m#-���si9�����9iy��VZ}X���r,���zX6��
l�J�Ė��A
۶Ҫ�c+�x�x���b�VZ��]#�ǋ'���-��v�:qe'��v�~l��I���? ��	�R      s   �   x�u�1��  k����-ǉ�.E�k�M��M���.���#�|�H� 1��N+E8ه�%��Z~�ѿc��b���N��7BI�
gq�Νҽ�~l���8��t����/_y5Z����*S��bSgۚ���L�B^�7K�9 dLndίHL�u�U^�FuJ���(,S�Qٵż�/��I�_D������/]�4?)�~Y      q   �   x�3�t�IMK-����L3�R3�R�J�s3s���s9U�UT�"�#"Rr
ʲ�3r=M��C�rJ�2���2�23J�S#r�J�"=��̓\�3]�A�Q	g�2202�50�54V04�24�25�37�%������ P(.�      �      x�3�4�@�=... �      y   �  x�uS�N�P];_1��v !��QZ��n��}��Nt�ڿA] *����:׆T�8�d^�1y�Ui���qp�Lrd����Mޑ#ӱ�b���!SA�_C��AE�g�����b�/P7(��Bm�T��umɡ��[�3^{�S8�|�����C�)�32Ch�Bs�7c�,�Vi��p��u���LE�߶1���Jud˘0���ڟ1�D��`\A���wiioK��O���URd�l'���3A���l��y�/�|�x!^$y�O��0(ݐm	N8X~�꠵�X^�T��Hs$�d�P�Z2~�y�-�je�5��ڲ�b������VYa$�bs�(��؛"��#�-M�.��
Uli�߳����RB��N�Ne���:����CiF��xd�RtJ���)8%ӥ�a�ߕJ����ҽ�G�hIqT�����A�\����r/&��.������ �,�(~
>ia\Y���ڐM��x/�Ap~�A?�u0�~)����q��$\)o�eZ���TkQJ ml�%�� �4��ז������$�"l�
�K'�]J�/�	�V�R�8���Ú�e�S9d)`�K'in,&�e�Ѧ�G��3Ua�̶F�~gF]tBtVK��ڥO��_�-�e���r��i���B|��[:�L���Z      �   T   x�3�4��T������ݜ̼�bN��6�2�1"�ʈ��Ƙ�Y&@U&�2�dJ�,3�*3�f�U�Pe����� d�U-      �   �  x�MRˎ�@<o������EB�@ZvE8r�x:�^͸M��
�k@g��Ǩ����.Uף�n�KR�d�zs�~����.3Wv���uo)��BA�����Ǫc0*��&�� &8�X@!4wa����l�!_�3M��F'>�ӱ��}�X��#ګ���``w���3@Yj^���\�t����p�IV��q����<�8����(eQ
�%=s�����X8$��EyΜ�8��ZZ2=��9�">���X0��s�#I��f-��b�Z�cS�,%�Fls��˫��[���\$\xl�ug��֜��^�F�9��}	D�"@$	 ^�Q++�8?r|�3�(ܗ���>���ћ�bl�X�ݓ6
��[:��]����$���Q����;� n����;*����!�����˫%5�����f���
V      �   o   x�3�t��-(J,��())(���///�+MIͭ�K���O�/-*N�/JML.�M,K�KNL�׷
��9秤�:������Y:8Y8999s��U�WH��O]�c���� y�=5      �   =   x�3�t�O,V((:��$3�J��UJML.�
�2�&\R����e�M.$��$��+F��� �Xk      �   Y   x�3�JML.Qp,K�;�<1%�ӹ(3U!� '39����[S��R3���s�R+J��u�K�2u܁TF��B�B.P�"W� ��      �   "   x�3�4��T��Ғ��<N(������ ��	       �   ;  x�USAn�@<ۯ���0`E�ܺh/��m3Y-��n��;==�	�Xɕ�4'�V�g���<����'�1'i����G�`���3�Z�u�G�2Y���D�(4�P�/7���/�d��-BhJR�A�h������4^T:�G�F�u�ʝ�wƓz����fuNl�����_~�Ϛ'�CU`+(�3��J6��F�ӡw�xo�M�Rb���h'�5�xo�uJ��I���g��N�3S�\�q��ȓV�ȯ�=��i��m�w����o��@2����[�z�6ـ֣E�+�a�Vi�v���k�cUIܡ��%���Ɯ�ي��y������nGn/�Y�����æ�t�
*�D�a��푚���$öp��(�}�zi�7E�T��6s$�	f���2J\5���S�F�81��O�~d��U����őZiJ����g�mFf �<lх�J9�<*�9J�vl*;t%c�:�V�e>n�&��I�ލ��g1���]�5 ��������F��ER��'������V�*�s 3��f��s>�N��Pv�      �   �   x�E�A
1E��)rAGFʀx7e&��)M��:.<�G��a����H��xT�N�2Տƻ�2!3�%�%S\�����'6ݶ2��?�*�[flx��� ez`�V�d��L�+�4��q}�/:7�D� �]��=��W%�c�E�k������m�����M�      �   #   x�3�4�4�,HLO�K*-)���R1~\1z\\\ ��	!      �   A  x��Q�N�0���8u�RhD�.4�����rq��"�A��b@�@W�g5bG�-߳��wW��{�Hi��&����Ii��[4��{K7����qo�K�-�k��/�U>���^�-g�i�ԁb��6��Pǣ׊�!����6�*@�C���G��L�C�$�L3�hF��<z,1�&��I�\<��V+��:i�ݑJ�%I�%��M@_4�4脦�G޲th^ɂ�,l�-&�=&�:�N�I��A��g�6�rɕA����h~���2<L�a�����Z�����s�����u�2m��O3��({�gY�
޽�      �     x�m�MnG���)�;��g AV�e��ɦ��H���E�A�9���aZ�d;˫*�� $���T�����n�����U���I*�v��}�Cf�tQSVڨ']�t��������s&9�w<~����Nr���!��J��z"��Ĕ�Vr�Rڣ��@�4~>�A�y?�s9���4`P��C�J��K�� �Ɋ.t�'N10�aǉ�6��AW��g�|��Z���3;����zߏ��&��Y(J4~�!'Ab�I��[5��!����0A�8����I~�N�N��􊦏�� ����������naj[�y7L9���_��t�zQ�{n3w�
�����,�*�~��)i���.��+��@�@�{�F��4.��d\�v ��u�]=�b������e������1У���k};%��I�m��8���A�ă�� !I��B�+aW�v
>�[�<_��83BJPL����̊F���Շ�0v���5���PW������~~<�av��P���xv������"�>�g3���vi��0�_��Y����u���F῕)�@Lm�9((G%|l�oF6�=ۿ�J"� ��5�q����@/V��: �ft��Dx�7rv�Dn��"�?}s�0,	v��A���ӏ\�:�w�c尿ș����) �6�[�������6���$C�T"��59;qS�����f���,㶞�m�/3�<����2�6B��VrXd�m��$~A�]�[>�b1�}5����C      �   �   x�mN;n�0��S�݊|v�KѹK�,��
,Q%�'S��r],���C ����W_5c��}�rH#^��4ر@'����.�ar/%s<�vŉ�	Ml7��~����m�EbG0"^��(�mdU
�?��5	ƒ�{�c�Ō��z���4h��=fà�����^�g���L�Qk�T�Hs�w��b�7]�=Ŧa�      �       x�3�,M�U(���/V�;��؞+F��� e��      �       x�3�4�4�4�2�@�e�9�b���� 4j      �   1   x�3�t��KN�,�/V(,MU(�O>�J!���B�Ă�Լ��"�=... B4�      �   3   x�3�4��T�����Ԃ�bN8Ð�(i�Kڈ�(m�Kژ+F��� �A>      �      x�3�ts����� 1�      �   ,   x�3�4��T��������bNː�(m�[�W� �      �   $   x�3��=�9�4'�X!%��$U!���8�+F��� ��	X      �   +   x�3�4��T����ҜTNU�i�e�1�*g����� ,6      �   1   x�3��*�+I�-NUHT�M�,VHIU020P���QH�)��/����� s�      �   :   x�3�4��T��Բ���bNm�e�2�.i�e�4�.i�e�4�.i����� ��#�      �   &   x�3�IM����O�L,V(-��ɬJLI,����� �1	�      �   E   x�3�4��T����Nᙜ�W�i�e�1�*g�e�3�*g�e�3�*g�e
�3�*g����� �(�      �   �   x�}��
� ���0�ޡ�B_��M!h*q��0�������9|�;�X�ِ��S�J�e7}�E�P��;E6#���&��!�L�BWy�f����ƅD���ft�g��!Np�ľ����j����k=���h2h      �   =   x�3��,HN.�,(�2�JML.�2��K�(�
�2�.)J,��2�t,��������� �A#      }   �
  x��[K�ܸ]C�P��
��v��^O �nJ�bM}Z�(�<>�/f����`Ɏ�
Ug#�x�@�eB��8�餉1�{�9�NϏ���D @Xů�q�TB�3`�iw��
���}�T	>]]o�ӧE��'v�3]��	`��o����G?#���
	��#�>``}���c#�����Άi�B!�(��w(K��HxV�`:����Z�{](�`^�����"b0�D<���Bä��"0*������pj��ۣW�a�S�Gp�c�����uMj�a
���ǆՃ���&N�j�K�-�#2"Ί}}�������F*Dm%w.�M���4�J4EYh����#V����G�1t�6�x<�m!k���8�Ecj�j�S�WrlQ�p�1�G(���3'�����t�$#���Hk���q��nN�IP�}� }�>�c�}�aix��#Y�0�� '��H9�tB��Q�'�?�\�6��ǳV�ZL��$�)��p�-1�A߈5�EF�!��
��1<������b�.����!��|��Й������~�>�a��p9v�׷���Q- Ê�֛W�'sz���
q��ŧ?�^{��7�0m��9s���_�.�vj��:�UL�_����W!�s���S��0�+�ޙ�+A=܂zUau��"j�*J&��5h�I��u{ٕ�Gn�����;cb8����]'�F�����M[��[�)�z oe�	��2qB�MS'�����f�`2/0d���+29{V�P���ʇd��:�E��a��"d���7��������fB����RIr����{�ǝ��)d�Nr.Q|���w9��k� UR��$W7,�����M�&b�ji2����n�� �SN�޺[�����!��.�Ha-��
zA��T�����M��Tz�AӸ|t��67�/[��^����nC˪PϾ�f�#%���$ʇ�2�4�hv�I+*=޸�I��Px*�*��-'$p�@)�*�K����9>��p��*���w1�X�PYRд��o���b��w��fʐ�p��2�(�Jеf�5Rcy�t�c)pen����	��d��#,0Q�N�j�Q>�S�b�����Y�LO�������&�j�3H`�ҼvY���f���g�yz~�����z[��wT������m�ŴR�&�.z�d]�̺V/�W�K��v���m�Om�l4�HH��$魻������1�ܿJ[j�t#���,�� �����Z��!W�f����Ӿ��y�Hw��zǵ�]Dsq�iJ�P(8z��Z(D1������;J7\�l]���I�A�ͬ?���8�;�%'�8E�{�����!�c˓����̪#H��|8D���kA=nj'�+���?���?�6u��vs�y������n`
���������n8��O�K�x|�ۮ���GsnC�\)aju���b� cg.��=�A�|��:��hڞ+�T\-ޒL>#X�XO`vm�#K:��s� fD5H�d���5��3Ru*��	�����2	�p��6*��|��u��@�Y؅�yK��hk�eܒ4uYU+d/w4%��nJ���s�Q�Wڪ����E��j�mv����� Va���[�㬑�b{j��힒ݟ9����D0����a���.��ٽ��ut8ϳ�^U��;��!�l�]�:��X�
MB]䝂PK�j���!�,7�_�=���B�\��4�`�o�ъPҢ7Q�0y�b�9X���i��H�V��5#M��v��p�����)�K*�R��Q>�`�2]B��=VMk�����I
법R�ɵ;��r2�n�����h3qh���aM�h(�3���!a�B�l�����e'�vى"p�q�'wlg�
���'9T��\s�ҵ��ƚ�""M¾O�"���$";st�IS�	�4<�j��yg
Z*�	64$�۝)*�ܙKF
�*��m��i�=�/>�ǔ�&���i��ls��� ��6s���6T��B��n���(�B֚�&b5��)�P��ݼan]��)LQ,��6��4���mV!���[�۬ק*>�B��(��L�E�CLXs�R�ML1��8��'Jؤ��B��O�(�^.1�`e���7wł	�,�P�tỮWX��sA�:�^�޹��{d��]}�gB�Vˀ�Y�6 ��	Y���H�����`�C�P��O.uǡ��N%G��4��{Yq�WK�H�0��H�Z_�ޜH��i�|�+%�)2ʇ�J��;X(�(��Z�U��n�Z*I�mQ�0����èD�P>����l�
�6������RSR(�|M/�mV�N��Uw����{u��^=�9K�f�5��<s^�Zr�e�©����<J!˓L^��KZbϥ�݆��JN�'��� ����JF�P�C_�ڰfp-j*�L��az��ަ��z�W[�.|&h�-��

s�?l�յ�j)ˡ���F9c��cC8����)�E�����e��(X��1i
��P�Nu�$�"��o��ͭ᭷;��9�$%3M\���C���t��C��m�0�2�S��(�r	�f/=x�a����R
���(��i�L:\�jڬ6�އj�H/��"yO"�dKZ(m�e`�X�%�4پ�a���7q�C� i� o�
�7oޭĈ��b��s��CV�n�U7�ĝ��qQ��{��Ç�H�J      �      x������ � �      �   �   x�}��� E����#�"}K/��Ҙ0���m5X������ف�(���=�z7e��w��%���%���KT
L��;��F�f��PAL��ud����ɝM>�b$����g_Ifɭ9ѣP@�(6@I}ʍ�
����Ys�.{I��k�jj'�0�:J��:��K=�v��W�z�,I�R`��      �   <   x�3�t�K��,�P�H���L��4202�50�54V04�24�25�36��)�D\1z\\\ ��C      {   <   x�3�4202�50�54V04�22�22�325G76�24�331���H�ȂӐӐ+F��� p��      �   �   x�m�A� �~���]+�VD�m�^�Qj�U�g�Fl���2�p^AZ/����{:��x�[��� ip�Z���!�_�>�ā�#?���M�Nh%��&�M��φ����߅��5fU��_�����J!U��MB^c��0�.޺Z���'����#�ZxJxu�J�و��G�[���R��^��      w      x������ � �      �      x������ � �      u      x������ � �      k      x��]�n�8������?�'N2I֘�;Ofd'����!4��͵ZR$�����ƽ�=����j�����6n�*ɪ_�T�ѓ�2[]�|��aUOJX-Q]�"��ț�?�p	P6>��`��t|�T+x8FI��O��+�%��ST'E��� �UmQ�p|	o�o�G�
6��d�$��(��`�,��|/��+	i����0o��?cl~�\�AgEq��2�?�@��#^�򣘸(�����+th����]�,V��vY�.��7������?'��%J��.�M�(O���l���
����\�����5:0�_Q��P^7 �ʲ�)U�Cc�`o�eU��!��6q������:�&�,֌-��qh�E��'db5	�P~	S��� �t�B��壚f��b��o�H�
�5e+).r�-\���׫YZ`�����H�<J�e�_�^�t����ե��i��ԓW�ڀ
;�c������T~��F�XM�z��U`�h3^n����G)uo��t.L����v9 Dꔠ�`�&�]8��ڧ�P�������A1�L��?^���{$�	���f�9��@���Ū�,�eY丼>9)q9�X�������q26��4�/�l�V�%�?<[��'5U�Пz�п����<��|�`FZ���ʜ�9Xeͻ�j~��?S�Ġ�O�='S��HA�D1���ŧ�jWf0# �|�ɪ1]��-Wڲ�&i(��B%J6�e�]�E�1���+T#����w��;p�?�*�/7Ū��ft>��1"9�>�9�����<��Ht�υp�,���,-�t�AS�سA��G�(�9�e}0����`�eU/�[�~�̯UQm�c��P��#'T�P�h����a��?�P�+x��e8��^����Uw��i{�(��i	(+�C4�8������5{�p��7�s�EJ��d����b�y?)I�>�ir�Y��G��],��u��
֤��b��W=�Cik����tX��'���qԈǨ��kZ���%}�(Ioie_}���G+����A�Tx�%��)a=��^Ha���Xd�0�Y�I�_�y��TВY>����;S<SPcZe���J�2��
dN	i#E5����N�$��4�J>��7�јww�q�<���&�P�!C2���"�����l�@J$BSț�9���Ř�W0�hx�(}�=��T��
U"�͜Q2_[��*+�z��x�$�Uӡ�!!ч�,%,�b\�����
�x{���+��������y�&�T��`UÔb�)4�.hā�6m�t�����>�Ja���|U����}���bu|��𠵷��j�� �P�?
����
]Ɉ���~����D91�
k�	���)��t����F(

?��f�i.\/h�Ohq�r9�<��k߅��B��"+f {I꟒G�t��H��������YZ����?A��<J��l����H[5V9¾����4%��'cI?��ܙ�����ޓ(�Q���e�JP��|c��%ul.`1+��xg��yq	���풺@��*�%T�b%��glV`� �X���9sx�o�A�3jG����m�:��C;�ℾ6ebNgY�\�tw]/+8�X^�:�gŕ����6��"�5ج�f6��Y�/7��]h(Pl_bH��:�l��~[��i-��i ��h�[*�r���j�O��>��ek�:BH9��5;^���,�"�9��!d"���FSW�߮���XE~������8�� G���w	�s��%P���i�ak�w4䄑���<�xZ��gT�-=��2��,�*�yQ�^��/�4O����c�j	+!��=�A:)�H�|�e�$��;nrU7Œl�G�N��H�Ѥ�~�7;D�.��m���o����"���Rv'F�=`M�]E.�z��eh��5CXkx6�C8n���ܭ�|@�Ϳu4��+Ց �5����?Ő���N����� ���KN�NGY"��I��/_�Am]qG'?��N�^��;�e��oW�wh�&�w�e$Πy�{a���9���`D͠�~�+��w�)K��RW��;�w���M�v�����'6��3�`v������]?G1c�>�6��{B�� Fx�Ѩ}�cBG��O�T��W�J(�ϰ�b9dI����;�?�4���]��5���@ZA����|eEu��!R(��}EW;��hځ=��)βv�>N+0oN��l5�P�P�-w�R�s�2��)d������wYV\Ô�BM�,�ʰ�!ݑbqxmźH�^�����!�Pʾ��Aɕض�&T)O�hL2N�u�k���=�1,�4vt��`�t�k������Ώ@���v
Ĥ�D�bQ3fэ���h"A��M¾ù�0y��cBH���E"��D�Ҵ��T���z����؏�d�Ůdw����k����H1���d%:���*D�Z�ҍ�T&%'��>�,����Z��Mr"��PQ->]C�>W)_�l9�T��,���E��m/9!m�/`��`˼x��sKmb�����ۨV�q���d��X��><§҄n�QNH5���|5�V�ܲi�\R5�|��gS�sLe�Pu0˃Y��`���?fY���T�Zт��+��N_=Z����I���Y�#z���$��SįD1L�xŜ���}8��$�pH΍s�G:�at�>���B�޺IN�%�X4^��4q��}P/6�Nc�D�LK׫�a�`�"�~}Ue��]2dzM��S\!.����(LE���9�.��B%�[UT�B"	�Sfvb�Ɨ��m\b���1�0�2��>�W<���ѳO�ʰs�?lޒ�O�g�$�[�L8�T�l��YLi]�\-s��Њ��m���*˴��=>}S��ȩ�8j|��Ti5��G�֍�@ �G�Be��>�����z���������f���7&9&�.2}k>�h{l.)��gF=�F9���Ak�A�j��k���{������W6.^�^`43,yެhd�7�N��?/*����*�mN;e�{s{�5i'�0�Z�K);i������~?���>o�)�T�ǫ5��Iy�l���8`�����'�ӝMֺ(�o�:~�eEXd;���*ػ��i=���E�������J/|��t	>�O~x\K�G�M9ٽb3�ֶ	tgtg{���:~jL��<���>�<~��O���$9_��|��*�?{*�|紋����k%;�����7q��	�e[�YL���m}�J�q{���`���]���I���'��
�t �|�Wz�}�]���b%x�L��f+��I1������fs��#������<�t��ʔ�3��}���=��,��9�z	�
G#���kW}][�6����y݀eY�c"���]�g��&W���b��gnwp�_����J���r?Ni�+�n��$�-B#�g���yA�����h�Ҕ�զ!V���<�� �����^d�ͨk]�M�H�ַŌ|�y��k��w0zS���/��r����}r���v���6,��2
�Uv��=G�L�����J���;z.��q�Q����C�D�ͻ�j�̹��TT�ǧ��)�G=)K�
#LQ3�_����f`1��rW5&�~���II��1�&p��!�҆���3N8�7�sg�F���'Û�*�Yԋ��Ԥð\�ڬJ#�������=̋u�9z*�%fY� �}k�b���[�������������[[/��(a�=zG`da/�����J��b�>k`�>0��H�A����S�IG�K��h�(�����K�W��{޵DH���X���X8�e��\�џ�z��@_��XA��h��Ү1\���P�;�	�w�|!��EY����<���r|�����-9�ATzt�*�/$0�]C�Mr���N�IC���޼u�x�2�a3)"��PP�aO��8~�(�E�5�Q�j��Q���hj�c��G|l�=�zdo;qMO��]uڕ�1]�f:�zeF��lV�cX��i6���6�(��;G��p�d �  ,j�����,�0AJ|��nJ�KZ1�JQ�d��T�=Z��xYz^zh�u	{y�u�xJ/���ؔ[�I�֧/נ&�9r��;���1 ֲo'Y�5�	��:���d��)��Ȉ��C��cT?W��hLm9~�����'����x��쑢|Z�Zn.�,��>�ԩ�DE��tU��n��Ö���P����.����T�Rw�(�k�,결u�*��H7Uy���h7yXzb���c8��|�4�� t]Tycgb�v۫��f*AHŨ��5V˝=x�������n[MId,�"�ƾ[5�[x�9$c�個=�������������Նݴ��M�W3�p�fQ������"� �?��J{	��#89��Ҟb��|�C�o��E��*����q3USz_p��3�j5L���X�{��n�}>$xp�W�6�������+A�gG�{���8'&�u����1��WFQ�a5u���V���(��+9�	?�����Ua/g4�Q��.�dY/¡�.��8��Q��Y�9X�E��j`��E^���h5��8��*vO��n2 �H�ҍ����T?��?JÍ�J�5pY���GV��1J�h�7y26>[�WŒ�˙�׶��c����Q���q^L*Xf7�Ej��cvD����TT#M����-ae���'�^k;����p��ҕ��hFX�FYQ�?*����^�͈ޱF+����˟��#��a?�i�����o3�&5�2�oL(�&~����;�#�5ň����	��I��׿�޿}5��O�I�f���>�ۯ������/�#�l,O�M�6���.�*Y��rRZ�
��&I�ʛ�Ř1s��t��E��������Cfb� sN��:mw�sR��2�d%J.G�d��\a8*�����(�,=�˯�dk޳���
�	Lɪ�~{)F�� ��pZ�h �X�K�l=&C�k�b�q�G�X-�����t��PB3��A��c��������� K�=�������GO|L�X/�1%;�����t�{����[)�
��w_��7��T�����=��,�DY����1�MU�l�*��Z��4�Z�AI�FIȌ�L�U�����"�UYf��˳��U�����D��ʱ��pq/��"�{	w1�[��!%�)#��r��a��Usk�ܞ�.�>b���!��+T�`p{Q4^�c���s��__�ݐ�n����{E��N�hŽ�1��M�����w���u4x�AB�cr,[�v*A+���w�!���m��
��+y��҄zn�Ӗ��j�P�j��;�i��F�[pA��n^���t�|�|J�HΪ"x��S�c�m�SW��:'܅s���s�������]�G֟w�J��¬=2�{�Ș|��g�ȋ�A�v��iTұ
%�.>{�yU���[�|w�y�&$�F߸򾳐�d�����>��� �Z�~A?������!	���ܗ����\n;���Ɗ��q����Ty�۴s���ٯ�&��W��u=|��������Z\�����̈�\՟�J]�&�2.��Ve��d�s<�W�~�]��c�NQA����^N�.��k�6��+�AA9��D��~֔�t��C�:K�����9���L��2��pT�:�f�����D~h��{9���H��K����2����i���N�{?Zi?�I���I��i����T8(m�J}r����"5/���PekqƇT>~���c�4�î�.y������G�t����N�*�ӡ =?Oz<�ty
5oǷv����/Ȧ���G���y�03eh������X�iK�Z�~*lpx0�1�I}�u�L���+�/��.�D�d/�%��.��8��(����l-ʔ-P�V��Ģ��ڋtuP`��ܕ����_���˻)�f��	3\u;y3
�<�^a���W�6�-�R�m��6Gg���ft�,?ʊx"�Z�`���.��j�}����/�	�};��/�W�r�W���'��:Tew�,�m��3��F=6%M�SY�W:�|�7,�\�3�W�Ib���aI���j�J���m%��>MHH�ǹ,�a�x�')����.ZEcq��{q�NY�9�`�
�+��Ļ3f��i�nd�V��[�=��K;��Z���\8�Fܽ��z�����AV��g����E�^ so�U��]�2��O�g�w��,PK�o�m�M<�p�9�-aγ�2���M��b@O�c7��j�션K
������s�˯�]�˓~$|19}x�c��� O��b��JH�!��n�%H�E�x2:~::~0���\��Ik��z��|�����G��>y�����f�݇o�$�q��Lr�|� ν��s�S�~-�H�5���y�v1���0~𡾵t���uJ
G7��#l�<Wx�T��$�z���|���B��R��$�oy�\��J�,���}�ef�2�z��!۸[��u��#����+�%�t�k[$�c�|�����Z�g�4Z��7�X?[5��w�g��8�W�=��H��+��B����
�{�qI���ޅ�擽���|���e�2��}+=����mw��������o���»c��Ԩ��\o��''�̊�&fi���gk������Ti/॓��ꯖ3X��k�^�$s��z������6�=���o�[u��Qd5�0�s�{Y�4+⑧(�ހ�ᳮ^as�ϋچ��}b-��W��j>Q��9�3�z��Z�Eo�r�Ɓk#x��*&����u'�`]<v�p	��|,��N�����c�M�z+�ݱfi��3�.�jWy�%�������֐p�������Ԇ����]�j��u�c5N�zx�1��X��^c.d}�۲�1�xN��ث�2���~�	}���˗8o���̀�_������O4��}��8�����W�      i   �
  x��I�۶����H񬤬�x��RN��r���=$!	����x���&n �h�P�!�-���A,|��_'E^����::b��I������IZ��ӔD���8$
��"�獳c�>�?U?�4̎QG	X���T�=�c|�Q�KB�Lx���O�]gxS��	-���x��0�D��(Í��O����:_%�8w;&���l�=u������?)��&���7
R�5m�;!���O�
 ���(o H5)ڛ����r�G�(�_���l�,�p�F��F��	�<�n�P���(O�����Ȭע�H"���#IB��ߎ's�w�������;m�v:O�B7;I��LҠ+��q��x�c�8�T�_%2KJWj�l��Yi�q�����O����?�p�ڼi/�?�OY�@(ɼ��:֜b��:%�>��V]LI�GP��r�LI1L�������N1�I���ݻi��3���Fti��&)��xN�gXZ EC��~�`&�KfQ�a<�5
zExߑ8I�c����[Z>"��S(Ii@�1�ǻ�&7��tx���S�|d��F7�XZ~`,Lo�x!��A�혥`L��(�gh��6����"�!�E��aE)�lX�a|X�Q�+
+�Gb�����19AO}-v/�����"��� �6���L�x���8�Yh�Az��>Nx�0��.����_O���׈��prB-������D���5�Ӌh��a��5s�/94�7�Q~��b�
0����%d���s��gz��] w��E���鈝.��'/d���3�g3;zB�L�a�1��#�<��z�8KttZ�P���ol�X��Eb�^����|y~����	����Irxn3.��!��M�ڏm�$ѦW��1`�m�#���^�x`g����B�X��S�;l�yB��-�v{i�q��J�s�:�j�k��'���R�/�Ik�����7��"�����Õ��.'��H<U���߭X��[�s[ ��]�@=�@a�Dɏ ��| �_�x$��I*�5X�:��*X�="г�� �ؑ��SCA˰@��F�����@�Þ͊���.��@����u�G�"6 �����h�k�u�X��D_�����WV��ؒ�&_2�j�
t� �rt֞S��� C�9ŵ�����eG�����`���l?DnH}T��pF�Vm��e�"��]���.�e�jN�Z^2����n�!)�޴9����vי��3�� �SR?�-�7��Y*{7��;�>o9{�\3Y?��Y�L�Y�Y{����ȸ�r�����hG�U�En}���ȸĭ�vԽ�Qק��rہ]�ь�ʘ����)I/ଅ���,M�����>,#AvĈڃ���'�a�k�������H�#��[/�>���̻|`����<�u��@S%���Hj�/;z8vI�0}���'�]*y���@�y8�;�.Ғ~�%�I:X>\�����^k�+J�/�l�r?�Z[	��P��Œ��b�e��������L�{.���d*���tkn���ZS�5;GҬ�u
�Xq)������M�B��s��q��/KW��0�����S��1X�o��@�!��@T�XEHuM`Ϧ*8�&TB�x3����H���h�J��n��&��Y���>��˯� l*-���<�^lO�;�rm]��*�۬����lUc��-7nN�g�x��(�;��w�y�X3���L�_0C�%[���D��+da�,��\���ۿdH�؆����֌����O����&�L�� w����ˡ����p^�jr�J�as��MO�����ǹȵb���K\��ՠ7�4{u��Z0Dv*|=�Ƅӷ�ˢSN���G���`����Β�c��(��i�J�3��q��9Ҳz�~CC
�f��D)VG�)?�B���S��D��������J�#8��?U<��t��͓q/�������i���������696-��Eی�vF�`�-m����п�~ݮm�~�k��@_�=L<pz�O`��Z>#*�"�+V	D���Ǒ��P�s��ɢih*��qX��;��t�/����nY����/���Յ�|]U�2ZlǓ�xեʂ�?�t�N'ϝsW	�3����m[b�\8b�_�§ߡ�T�A�̩hE3W&[�u��T-���'����<��A�A���$�<��MY����IPD�E��R�4P4+�Sk��"�8�V0<ܖ ������
'�e��d�`j��C�%�+R�S+-�h���Q�ܞd�Hμ�N�/��R{#y�h2�;O$O�쭌Jգ�)��0*�����26/.��p䂛�U��|��%�f�]9S���2&d����(B`��U1���\�^��@ʘ��6��L#��f�����E�	��S��+Da�����B%��O=A�p���"�<�<�qߴ�	�j��'�*M��R��3���ˁ�sZ�.p���	w��\��J�����L���@��q�0�Q�@Ӭ@q ��cE��`뢯U�F�6b^����"�a.v�bb��I/���3����>�@��3��FQ�u~�$��Z���^�g��͵���+cuM�6����80
��"#`���0���kw--W��Ym.V�c�o+=F�X�z9L�.�!$��"�D�D|�D����͛�����~�������������^�w��?�[���/������������������ׯ�^��      g      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      m      x������ � �      �   �   x����n� �>E_@"?�ȶ��̆�!ŋL_�c�M':4�		�,�7�f���A)� >�ф`�$d����%/(���LV5��ϯו����t��U_��[x�EY����M�������H��x��R��v���-M�Ń6!�?��i?�_qJ����}v8?�x���� ؿ�S-35)�yr���c�d-���7��ox��m�մ
{������qa�$�IӜv�?�<Ͽ�]9l      �   F   x�%��	�PD��;ń�����_G����a�^�M�d;�d��Y�6�=��n�����SԎ�sIz�V      �   �   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�kh�`h`ehdej�gbj�S<����8J�r2�qX[������&����[�Cm����� AjE<      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �     