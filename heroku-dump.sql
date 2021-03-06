PGDMP         	                 y            d9itl881reo22g "   10.15 (Ubuntu 10.15-1.pgdg16.04+1)    10.3     {           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            |           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            }           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ~           1262    17144    d9itl881reo22g    DATABASE     �   CREATE DATABASE "d9itl881reo22g" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE "d9itl881reo22g";
             odbmupfdwvhpbr    false                        2615    2200    public    SCHEMA        CREATE SCHEMA "public";
    DROP SCHEMA "public";
             odbmupfdwvhpbr    false                       0    0    SCHEMA "public"    COMMENT     8   COMMENT ON SCHEMA "public" IS 'standard public schema';
                  odbmupfdwvhpbr    false    3                        3079    13809    plpgsql 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";
    DROP EXTENSION "plpgsql";
                  false            �           0    0    EXTENSION "plpgsql"    COMMENT     B   COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17149    pages    TABLE     �  CREATE TABLE "public"."pages" (
    "id" integer NOT NULL,
    "content1" "text",
    "name" character varying,
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL,
    "title" character varying,
    "slug" character varying,
    "heading" character varying,
    "content2" "text",
    "content3" "text",
    "background_image" character varying,
    "template" character varying
);
    DROP TABLE "public"."pages";
       public         odbmupfdwvhpbr    false    3            �            1259    17155    pages_id_seq    SEQUENCE     y   CREATE SEQUENCE "public"."pages_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE "public"."pages_id_seq";
       public       odbmupfdwvhpbr    false    3    196            �           0    0    pages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "public"."pages_id_seq" OWNED BY "public"."pages"."id";
            public       odbmupfdwvhpbr    false    197            �            1259    17157    schema_migrations    TABLE     X   CREATE TABLE "public"."schema_migrations" (
    "version" character varying NOT NULL
);
 )   DROP TABLE "public"."schema_migrations";
       public         odbmupfdwvhpbr    false    3            �            1259    17163    users    TABLE     �  CREATE TABLE "public"."users" (
    "id" integer NOT NULL,
    "email" character varying DEFAULT ''::character varying NOT NULL,
    "encrypted_password" character varying DEFAULT ''::character varying NOT NULL,
    "reset_password_token" character varying,
    "reset_password_sent_at" timestamp without time zone,
    "remember_created_at" timestamp without time zone,
    "sign_in_count" integer DEFAULT 0 NOT NULL,
    "current_sign_in_at" timestamp without time zone,
    "last_sign_in_at" timestamp without time zone,
    "current_sign_in_ip" "inet",
    "last_sign_in_ip" "inet",
    "created_at" timestamp without time zone NOT NULL,
    "updated_at" timestamp without time zone NOT NULL
);
    DROP TABLE "public"."users";
       public         odbmupfdwvhpbr    false    3            �            1259    17172    users_id_seq    SEQUENCE     y   CREATE SEQUENCE "public"."users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE "public"."users_id_seq";
       public       odbmupfdwvhpbr    false    199    3            �           0    0    users_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "public"."users_id_seq" OWNED BY "public"."users"."id";
            public       odbmupfdwvhpbr    false    200            �           2604    17174    pages id    DEFAULT     r   ALTER TABLE ONLY "public"."pages" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_id_seq"'::"regclass");
 =   ALTER TABLE "public"."pages" ALTER COLUMN "id" DROP DEFAULT;
       public       odbmupfdwvhpbr    false    197    196            �           2604    17175    users id    DEFAULT     r   ALTER TABLE ONLY "public"."users" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_id_seq"'::"regclass");
 =   ALTER TABLE "public"."users" ALTER COLUMN "id" DROP DEFAULT;
       public       odbmupfdwvhpbr    false    200    199            t          0    17149    pages 
   TABLE DATA               �   COPY "public"."pages" ("id", "content1", "name", "created_at", "updated_at", "title", "slug", "heading", "content2", "content3", "background_image", "template") FROM stdin;
    public       odbmupfdwvhpbr    false    196            v          0    17157    schema_migrations 
   TABLE DATA               :   COPY "public"."schema_migrations" ("version") FROM stdin;
    public       odbmupfdwvhpbr    false    198            w          0    17163    users 
   TABLE DATA                 COPY "public"."users" ("id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "created_at", "updated_at") FROM stdin;
    public       odbmupfdwvhpbr    false    199            �           0    0    pages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"public"."pages_id_seq"', 40, true);
            public       odbmupfdwvhpbr    false    197            �           0    0    users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"public"."users_id_seq"', 1, true);
            public       odbmupfdwvhpbr    false    200            �           2606    17181    pages pages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "public"."pages"
    ADD CONSTRAINT "pages_pkey" PRIMARY KEY ("id");
 @   ALTER TABLE ONLY "public"."pages" DROP CONSTRAINT "pages_pkey";
       public         odbmupfdwvhpbr    false    196            �           2606    17183    users users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
 @   ALTER TABLE ONLY "public"."users" DROP CONSTRAINT "users_pkey";
       public         odbmupfdwvhpbr    false    199            �           1259    17184    index_users_on_email    INDEX     X   CREATE UNIQUE INDEX "index_users_on_email" ON "public"."users" USING "btree" ("email");
 ,   DROP INDEX "public"."index_users_on_email";
       public         odbmupfdwvhpbr    false    199            �           1259    17185 #   index_users_on_reset_password_token    INDEX     v   CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "public"."users" USING "btree" ("reset_password_token");
 ;   DROP INDEX "public"."index_users_on_reset_password_token";
       public         odbmupfdwvhpbr    false    199            �           1259    17186    unique_schema_migrations    INDEX     j   CREATE UNIQUE INDEX "unique_schema_migrations" ON "public"."schema_migrations" USING "btree" ("version");
 0   DROP INDEX "public"."unique_schema_migrations";
       public         odbmupfdwvhpbr    false    198            t      x��}�r�H���+vo�d���[KKʽ�K�ԕS7��$�$R ��"&��C�Ƙ�<�������w @R����0=mV�"	"<<܏���<x��\Ϭ�
��fya�м�yڤȿ6gy���������g��ˮ6Qn��(���$ir�H㨈�Al�^�&��"Ȣ i��_dќ���i2�YbC����)�QR���En҉��3���L�<�]�g��	?)?�Q%Sd6��4_�tZf���,��y�|�Ӏ�4+~y�h���I���.���f�b�Q0�� 7#<,Jn���M9�c�_�j;���ϲ�����a���� �ͤ�*n�(F�5EJtJo�.3��x�y�s���t�G�n�nlڻ3�n���L�i�D9?:�u`�Qf�iv��hC��2���UbAF[Y�AF?�9Mjff�_lc�v���UZ&��Ø�Ly/�EtK�`����X�-󬤥�rop�k�4\�c�Պ�[�y�V�c�>�"����ڒ��TVCě�I�?!�����A(�.,��m��u�l�����!5}��mdOZf�Y��h��BKO���Vx�?ÊR�P�H�3̷�@*ҩ�k3� Y�]����&Q$�C1����ฃN#_�	ef��y���/r�t���y��Ak��vyC���tzs|8<2��q��b�4��%o�r /m���"'���|0",WN�t.�y��G$L�����^d�*�_.�tg���{2��@��1�2MC|LD�t��˄���߿��t6���э<<_a����m)�C�����$Ț\2�騼��4���^�A�D���̉1b%"!ó8��23��#���x����
���m������U���/���0#1Z�@����7�a�/�`e��0}��h��j�|�mA��y��d�/��%��`n��4�yO[��m��$�ϭ�d��,ʋ9	�K"tQɁ�8��&�󻘕�7O���犄M�m�>�e	Q����>����c�?�}���{��R>E�J�8��}�šy�G)� ���xM�ߟ1�8v9=+���8�3�N�fqe�,V>�]FEA�i�#�KLK��I�4�g�W��/��e�_lp����o�1d5�ð�ł���|�X��!b:��c���O��v��u����N�������N�}x�9����Y����<��f�.�ڤ�z�=w�_���1G��ge��QƊY�.Jx��v���J��d>KK:a�p8�eۄd2sƒ��O�w�F�$M�d:��b�&�UK���a��K>�$Y�BZ�\>T˾*G�8���H�]�>�'��e���E�:V����'M�X�����+
��wtxD�@Gx�B��N���Բ�ЍqJ�}�Q�}N��Z�j(&ՋZ��B���"�V{���QL���O8S�$G1#�/��m"R��Ԛ�iIG>�np!ῂ6�)7
��U�v�G����ӊ~#�V�LJ����l� �	��ʁD�Dn�����c�5�� ����K�X�a��h�l���	ʢ�'4sR=폋)��9��v���x>�p��&�����t��M�����I!_FA�c�,����h}�X�b���ܼr�X�=,H����zU1t�D�j^���6/!����M�t;����0_�Y���8Hx.�v��w�+��\�y����i^�p�UA'�)�4/�*�s�Om��L����{�_8�^�D|�s�뵻�Gݓ��O����u���'�v ���=���;�M`�`n��-���w�<
��{��;���3 t��T7��7b��OHZ�%$�b��&6�_Y����$�������5����A4E4�ǂ���
��E�1?F�2t�" � 
Omp���ګ-еc�;�P&I����҄@�ǒ��Q:�D�R�M{IpvHa��͜ ےEYE���B�Y��%x��"��RtE�QL�oJg��\��6�2\����$7j����)��V�;I�d�*��l�%���ҳ�zN ���S�opS/��i���lL��r��p�9H�j�i��"%iae�e�UT:�_ӝSk�+`:�<�6��0J�<�xl�H����Y��rSX�K,��Z�OD���΃H�G	,fuA���y M[�����8TS���Y�#������N1)�=��I؍k�]N-l�����i�{͏!�~�e���--�B�|��Ea�@�dF�)�v@J��
[k�+~%B��bM�HH��^=��ߦ!�+�M-��+�x�}{aӟ+sM�}�N���zC�����$� �i\�9f�����,�!�ʇiˠ�xfLtdɼ��]���_~�3F<�	7�܌�ٱCwNRb<��%���+m'��+X�Ռ����ڼq`Y��Ov�����y#lvl�z]�u��ϕ�}��']�('TJSg��}I�z��IIG���\W�#P}�#!`�<6��c��-��`=6'$=ĩ'�}&$�؅r��m~�� ��,39y,��y�cL��H��O�!`]����"h�ь�*��� �M����(4o�f�e���
2b��YjG�����꙾|v���D0vc.i�n��8��'I+���\���Eh�+E��}���,`�̒<ƿe8�d�T����Ǭ}U �d|�t��-�kV8���`��sh��$�&$�O���i2����1�.�W�-�S8��ZY"� l�1�ܐ���H69{h{w�W�Ɂ�M����{��c��　4�'4����d��j�5]YN�,�@g��뼌�|��7|IBT.֌D�B���6B ;\}��G�KF�C��xB�����	i2w-vi���#�� �2#�9��TXF	�!�(�� _�`�AO��2G�v<(Ii[��!q���2����X k;�� f��˓��Dޜ�Kإ�X���?�g��X��xV�ϕ�$��K�;������c��8#*z		�g�(�=�	�X��cz��4g�jz�5ĠҞ6���n���!іd�U��:Y�&�H7�����AE_ /�����!�s�3N ]�+��Fm �c*�7J�h�����m���O�8�da����X��\D~�H�[���:w���0����n�O�Fޒ��/�A����+B���X��m� �b�����rF�y��t1>�8�㌝z���c�p�H������F�"����y��|?G��e�1�m�P�l��~���P ��D�XB�Y7�`|b�L�2�U\����Fz��OY�YPN������ZISMLD|F!����������j ��	�se$�%FW@��pԈ�ڰ���Ƈ���d���]�K'�ĞQ�̨ܩ� �d!J�H8��l�q<��$���C	�d�T��B�ҐJG�
"T}��ޔ�å^L���C?��,C:g"���Z`i�GU���ɶ�29��b|2��O)�C�^nQ �:'��q�%p�-ݩ� 2&c�f|�J��<@mw쇮����(�8��|�׼��r�w��+!ʛ�����0&	?��n�.~���V$���݆g���q4��?�����'�L�1�n��]RA#��x�6���䧮����9԰?�NI���0�ɶ�3B��x݅���r���r�vo�\��u��v�@�br\�� #�A�'�����`�0��A鎋�˞��m�����#,��"wf�>���|!Ot0��đa�p�DǴ7P�7�(5��)�/�<��u�^tO�ӡPI��1�u���/rqW3��⇬VǤ��-m=�n1[�A����U��0S�q�&"����+kg\���Fb������)C�'ĖQ��_ ���9�\x�b���Ξ��L\��YJ���Yp�Io;A�s��XkDқx8�.��F�:�0�Ak����~=����v�l	�z�댤)��`	-�k������
�y��p`��2��H"D/}�\T=B��f>%Z�j�V[uA�MA�D!HC�6'�"��J:&4�B�K!V{�FD��6�9����Y�7``1af�    ˵D�ϚKr�;������RQ���1�NLՊ���L�\h'no��F] �<�0��dqd��]+찌&$�H�$Q1�r������kt6ɢ����σ$wKo(�]!�GMgd����D,	�T�=ƇG6�% U�w��j$r"�D	���-�*�mDvl<!�������B�Y�a���wK�;g�8�=ߤ�Du,j\3R�]�\Ԑ��&��XP ����K�����q��A�V�~Y>_6�&�\,H=d��"���H��>Kc9bu }=ŎHz��TT��M*rgʷ�F)��� j�o$��e��#k�sbM����-�LQ��F*4��u^�L�q)��}��%{D�/	}-p<=�ƌd�;l��ɉG��S�[l1�k��,��<8\l���NAC�լ���a��� 
�Kp.��Kr?�|�M���~:[�y�\|
���d���]�2�8�Ŀٺ���d2�*32�nGy�J#*�gGъs�@�M�Z^Αl�[��`Q�1��&�?�0 =�M�F_>�ST�P4E@���NR�E�h��nmCl���.s���6�@�DCe�Tlp'M���l���d��d�+�
�d�#+����F���͖9�����Eá�s����D
�o���P(�a�p���Ĺ�������8�����f���`�{"yHоz�f�Cyā|�r�f�OL�kp��X���[Bً
�"�:%!:6��
�ò�3�gi�s�'�"�:E�e;�x@�e��hq���R��6��ġ9m��:W����F��7�$P�6�Y�b�N�E��֐�?���y(4rJ�9��gBj!�D���s�b�"͛	3�b����,P��o8oq�f�����5q�P��B}��1� B���"U�ԅ����`mV��>m��1�}E� s��u�ޅ3�����,�2�>$-��m3xK�q�T!�!_�U�ďf�3�#.�w��G�dձ'�a�٭*�
&Vn/ì��R!{�%t��IHX:<wU�#�D�I�W�81qx�ru��X'#���z��PzM��H㎒0���Y�4���A�\G��d��*Xhڻ���	nX9����\��e���(��8�I�	���ƧYD0�0�QZ���E
"or0W`���Z	6�fBjI�ŀz��3��㝲*0�$%�Ю���.�Xy�86�w�c@3�9����&��D8��ٚ�Y�`�Z�@O7�����0@��J��	#�A��U=ud \d�$H���Y��l c�X��ن�8�G �Z���	A,���"�\����ˊIY(�X��
���D��g!�>v����z�ip���Ǥr��~KNҟK��;�`v^�攸'/x�|�	8L0��A�Њ��¦ 3����J�76�%S�����O�L�)��z�b	�أ�;#X�; !�������~�PW�Gh�T�ت�!F�C��A����y��%K��YǴnu�U�W "�}C��:da9vO��7j�;S�_��Ю6�F�<���!���b|u�"�n�f�6�fl�渳�qX�r�~p*ɤe����F��}��G����#ǝ��h5���|�+���ԑ�{֛�l�^ �\8!�:��=cw)=š&`�D���:����t�=�g-fiW�bF��Sᜍ3!�7�"��B|#|�\�1<��3ۄ��p*6T
�D�9��p��k����D3>+�t�*��DV(�M� ��C�t!I[�}�2 H\iC��<�S$��#[1z��V���	�Vo�/#f%������F�L���r%��j�^0'M	1^  Xv�>���O��
�L�M�`	���Bb}7�EGb��,�L㌎��í��t�T'Xdp� �\HCۜ�"Uo��*��1_���fUe=�-��(�h�N�ִ�jA�_dEtڈ��-��ƀq��=�w(�nUf*=n��TN����r5)ٯ�qH1��0��#
b�\@fhcgs,B@.<�iP%B��p16d�Ԟ@b�Bb��3Za��"�.�~�>2Z��{G�=k���l���9�̹�q����Pz��Bb�W�8�Ŋ��,x�&q]����� 8�f*�5�@�Mc�q��r��	�1`��uO{9p-=�����)D�~`@���p��Yβ(��9���X}Ļ|���\29��Y��LLg$ƭ�ܩr�X�4�r>J�@�f�D+4�;*WUVb��i�
�D���5�CG���1��ㅕ���^|a렊q�e�ϐm5�|�B��8�(QV���%����3����]��\p��F$rPH#w&X�Z�cͧ��Às+�p�N�c/��+iq�]]YrE�)�h���>�#��&]�������NV'H�*�;v�����;g�8@F��VN��S/�Թ=@CWs����u_�.o�5�e�^�?�fi�$����R��Mp̓�a*��8�2��F2��䟩���EA�_"��HO���� � ��PSd�W�yI���d�˟Տ�%�3֚@|���;�"���WU�U��
��f�m�r���v:��{�\��I��srx���uN���A��;��wo�o��>�Z5B<�	�&xN�=�M�Y)UW|�JF6|��>! �1���r��W�y��?<<i�8����a����I�H�a���dcm[��}��B��'�e{���X�>z��g�<�M6��n�I�7��]�Dw�����l#Ű{2$������u^����￬����[Bh��[m<���{݊�G��`8�w�{���t�I3�u���7J���o{G�ݓ���_�v\�H�uZ8���?N��I]F��c��U_3�a��[!��B�>C��6Q<z�_�k�2=���,[��cDa�$h�w�������L��<�@m�ye�:ߐL�ȨfsE��>M�L<�Sg�#8��������*oӍ�izK�|�~yκ�~��6�9بr��OPׅ�{AH:b���+3���I[���4RE]����V|�ͱ&���;��U�h�i���m⻓n�T���N{��A�=�v���D�ݹ��z_������Ő���Aw�2T�z������z$1��Q���v�{r�?�ٙ��{������%�����]��,�v������Jp�/Hz�t&�VJ�e����?��pЕ=�⵪Su���;����]�Q� F:�P��[�7
�����uP�9K�
b2�#�ѧv��,Tc7#NQü�f!Јc�C���e�F��Nٱ)K� %��9�A��#����G|����7كl��{��)c��7q��7���	�h��,�����G4�7dY�H���U	�j�:�h�F�~S�De	�sV��)5 �`��K-�GЄ�l�1�˪�����AF�z�g�d氏 �����qMp��HI��	�W�L�ө1<Y�f��a
B�b^)�{��k5*�]eaSb����6�\�K
fx؇n��a���_�g�?a�E��D'ϣiB�~6�f��Pp�c�C�B�c�9���;������S��f�P���{�I[\3?jH`1���,b;nD,S��j�t��g��r>`�M��79/r�ؔa݁Ҷ6�+��4+�8$��5�%<�(K����t�^1ž�y	�&?���@o�>v�A�zۜ�i!�;�SP�r6c��P�᪥yL$�H�����I��=�6��)|"=�@Z'���)�ݢDq�M�7W?ɬ8t����|Se�V\��d��N�e�{�ڊW�&�<�Y���i���7�g괞ю�H�],H�/gf��?��`�hq�'�~(܌2$��iƙ؎����6�L&���!0\�j�;:�d�����/�$_�#.��6RF�%��.4�����2ǜ�r�M��1�{�}�����kdǴ��.��p��0b��
dw=��da���6���1~p���A-�t%�އ�rB������"4�1ܕd�y�Mq*�/礑m�R�8Vh��M�J7��g�ƞWe��v��Ξ�j!�%�+�Iy�0�C�_6N��Ʊxt����~04��9;�$9t�&�����w=s    rv�|��aA3EZS>eӹ�����D��vwH�U��{ӞF\�tL���<o��GC{L[i��IM����	�$��3�r'���K���!��Z"��p��ZR��`ƌm��h�Ú(X�DU��a�EZh�_�~)�L4h��z�p���8/�1vO�t���:�g���Km>֨uYg-�br�Jմ���9�|\�����^Su���_]"�Wgm�������fr�2ղ� F1]e�h��4�r�q��|�mm{8�O�2�9��FOdǜ6�5��7��-ʠ�_i��ϴb�ܮ���~�/'7�	�)q"��8���5-�EM����Qo���IQI����2/��#�+wf�8+GuApf5}ZCw��.����2��t�_�ɝ$���-r��p_Z����i����Z��=� ���R겤/���Ĩ��e�?�P[�S�l���y�n�u^r����η�El�ؽ.Xע
J�����˸�q�8s֢$Jr�Gs�^ˎ�ʰ�k�$�=w��(	�����N����]�w������N�G��N���]���v��s���i1�>6w>|�I�g�ow�pů��G���q>�A4G��#8���(N:�Q��'ݡ���c�F��n���˻K�+��ek�N����vhU����������h~�c�H�[{Nv��[7a��������7��Ρ�y�� _E�_A�n�C˻-���좴�i��2_�I�����3��d��������ƍp~���G��J6���)'Lx���"˾j������$b��Lq�=J�\��V����${ �Iq��s�%,Wz�̳h��Ȩ�L.#���\�F�D�B|��8w]�V%U�Zn?�Hb;�*i5j�9�rb�f���IML���m�B��}d��V���I�6��}�9�_&#�M�
�^r	>򼐥L��"P��=��5�)q$�+ű��4Vd���o�S�<⚬�dr}�Di�nl�9KV�\h�C�4֐ٹ��z�����#���48@��2�k�?�K}�ߨkg��\hH��v'��|�~ki+���fh�ڑJ(Ώ�����iۆ-�G&���^(�FG��k��g=�ꣻ�m!~H�_����rE����B�
��@j���p�����ވ5���P	$��-(�L���}&��[6�5A�y����:��G����%�ʎ3+]�ֻƢ�Y��|����\ϴ����Lʌ���ٲ0���\u���l�T�4�6�Ǿל�������@�� ����+i��t"e��X����Aհʥ�A��T⫪�I�ɚ�sL,U\p�]�R�E+�z�Yiy��ɴ�}⭟�c|iS���P]���Z�%��4��C�B[5�t}��+�Q��~��>hz?�#::o8�T��!���.,��F�Q��2+�&�ʝ}��m܅�R-��U�:��G�4r���Y�� ����>�3=1�8�J�=JýJ6�6��%M�6-�Z�s]�]f\��NN
;0&��g����՛+d��~u�۽�G�7�6��f̆Q�0� R��F���w�����8}����bF;�M��L��3C���U�y�I�O�uZu�ZSqSҊ��u:T+��C`��O �ɲ���j�9gpw\ �d�����6�	�� �j�G�1O��}	���ɢ.A�[�Tk�~}�rBU'g���e�aQ>o�)�]�2��������b�/X��E��+��t�2qgU�`���^HKNLPz�8���c�J�_��1���X�i�6�9��K7�	�O�Ag"��LǼ��Ȣ%B>�`7�-r$8�Ώ��2"A<�(��HC-X#ͥ-"���,��9�{N�5�B CWz��
�P��X��1j��6���ʺ����-�%�q������PN��j�"���q�If_�{����q�"q�"�����G�T՜5#p�hRc���5O7@MK���jo����������s�
s�/��T��� �|����ԝ���J�@l�y�K�ST��b�eOZ?�Y��)٢������Ѫ�\�E�KF�J���ݯ f�����:Ͷ%��`�i@�:��X[z7��u���;ܭn�-��F��������*p�R�/�[�IQ��5�*���!�e�,�ゼ)�<���(���y<��"�p��f6�+�
iVr��o^�=�l=�u�69��8��d�;�WQRbq)��&�v\giz�!tl�H�=.h��L�,�Y��5x�]_C�ݴ���v%�6��ɢ�jȦ�]����xF��,�SK���H�3���EU����8�_���T=O�%��+�ȇD*� �K����<D����F�V3��c�[�ә:����avBZ����z���}Wu���d%�F�f�N����gI��c��6�`��|��S/���E�򵸻k�Yͣ�m�=��a��y��d��U���>'�TA���̸(x�*��b�+��EW���p�]2�� ��5O{Bo���.%JiM�?`Y��J�I'���Z��V��ț}��$ͨ�1�{��)&��,׏(�
�۽�-��SRJ-w����'9���0��.҃_ U�	�Z�h�E�d��8=	l��;)�5���Y{�������g���ʫ�|*�V�;iS$ԏ:q�%~��ڬMx�F4��;h�<o9�](���=�j�s*���1L�ȓ�M�i�B^����D��@6mjj��-���	�p�I��%b?�(J[ofK�g__cOK(Y�L8K�ۇ�M���^��Z�xSKgp�����p����i��������!|���ۚ�wg���tPL�b�EK��g�� �����;�q��r��H��f�o��X_�g҄l{�?uo�+-z`�Q�n���%�u֍xQ�M�{d��� �u�i>O�"\�٠�82��m�����Ȍ���90��y�%��}��j��'V��kRz�G�������?]��2������S$�t�O��Km��;r�
���u��m���� ��ct���`�..���U� ��iQ�U��	у�"��-�@��+��%�-n�����;����0͸/������#�;(�7����I���;�z=�n��'\b.�J��n�{�}x,#���{�|����k�������?^^�x�y������d<8꘳�f)1$(T{�!�ȶ�%Њ��Nt���Bu�l��C3����?��i�2��ށv&s˱�Z�+ \30�-��l�s����4
�$~�]�eҝA�3�	�y�*���E���n.Ğ�,��!���rt�!=7��1NH��QKU1�����A
k�bk�[�m���2wU�h4�f7��9.{����˗�?<����36���<G�An�^��1Z_8��8�s|��q,#&w�a��]*��P*��)�0�쑌F[�1��o�`����-nN�>�#���*���41_ەu#[�)l f|
5�	�0��\h�߹��Ǘ$E^�?߾����=2�T�<xi��"a*�Lv[��iC��M���{>�٥s*˫�+}:xs�uV�D�iv;}�^����}����Pk�u���=�I_���B�<j^"Ւ���Kͪ������H,O�I��	.Ρ䘈'�6�$�:]�N�(z�g�ΥO]��}s9��-L���h�^����p'���80����'O��f�wv��ا�����l@��2?% �>Ey��Kۆ��t�\n׫�=��ߙ�}v-��x��ߌx�V�E�����I���wMm���XP�lI�T�RC�&���H�/fȪ���֍��oH�lY���{�x��kb��j����""S���6L�To�(cי�W��!��~���4��!�����뗗�'íB���]����8�N谖ݥ~�Ɏ���R����O�ǡ�����y��i;��h�)�\�����ki��z�rT��Qr�wV�kν�38<����� �|�>�V������}�<��U�j�4�� "�ۼ����j�:DpS�Ļ�w~Ӎ�*M���TX)1��������>�Ŀ�||��ߟ��7��qSG:�k���6C�c�MSo����f��̷R#�q��t�c�p���)���񦇧 �   ���"H������E��0u4&�Ob� ��mvc�%�Zb�̓��O��msmc�^�M�C�i0���,l0N�7�fh?��F65�Xpo4�����_�$�
=(����O�пF"֒or�~��<���k��!��q.kXz�P��{g���ܽ".+��w�4߁�A����/���F����t��+��{��N���'���4V���������W_}� ��l      v   G   x�U���0���A�]ǽ� �#h^CxBܽh��K=>2�����-�� �k����r��a�ff'Tg&      w   �   x�m�AK�@���W��>߼d7y{R[�Q�-���(��B6���MA�"̜>��y:��;�����Ե�]7���}��L��}����=Ʒ�O�a}ѷ�������n1��+}�m�������e3]-��loN��.�%�rUa�:!,c�e��K�+U��t�y �P8_ 0H���\��|�YV˒
��JP�����k��$I~ �j@'     