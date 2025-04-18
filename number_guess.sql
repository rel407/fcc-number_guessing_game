--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    total_guesses integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (223, 89, 152);
INSERT INTO public.games VALUES (224, 90, 39);
INSERT INTO public.games VALUES (225, 89, 115);
INSERT INTO public.games VALUES (226, 89, 133);
INSERT INTO public.games VALUES (227, 89, 802);
INSERT INTO public.games VALUES (228, 91, 154);
INSERT INTO public.games VALUES (7, 1, 9);
INSERT INTO public.games VALUES (229, 92, 35);
INSERT INTO public.games VALUES (230, 91, 149);
INSERT INTO public.games VALUES (231, 91, 658);
INSERT INTO public.games VALUES (232, 91, 443);
INSERT INTO public.games VALUES (233, 93, 357);
INSERT INTO public.games VALUES (234, 94, 983);
INSERT INTO public.games VALUES (235, 93, 487);
INSERT INTO public.games VALUES (236, 93, 805);
INSERT INTO public.games VALUES (237, 93, 330);
INSERT INTO public.games VALUES (238, 95, 37);
INSERT INTO public.games VALUES (239, 96, 146);
INSERT INTO public.games VALUES (240, 95, 472);
INSERT INTO public.games VALUES (241, 95, 655);
INSERT INTO public.games VALUES (242, 95, 101);
INSERT INTO public.games VALUES (243, 97, 266);
INSERT INTO public.games VALUES (244, 98, 760);
INSERT INTO public.games VALUES (245, 97, 123);
INSERT INTO public.games VALUES (246, 97, 728);
INSERT INTO public.games VALUES (247, 97, 124);
INSERT INTO public.games VALUES (248, 99, 569);
INSERT INTO public.games VALUES (249, 100, 985);
INSERT INTO public.games VALUES (250, 99, 936);
INSERT INTO public.games VALUES (251, 99, 615);
INSERT INTO public.games VALUES (252, 99, 772);
INSERT INTO public.games VALUES (253, 101, 542);
INSERT INTO public.games VALUES (254, 102, 199);
INSERT INTO public.games VALUES (255, 101, 994);
INSERT INTO public.games VALUES (256, 101, 500);
INSERT INTO public.games VALUES (257, 101, 583);
INSERT INTO public.games VALUES (258, 103, 583);
INSERT INTO public.games VALUES (259, 104, 523);
INSERT INTO public.games VALUES (260, 103, 308);
INSERT INTO public.games VALUES (261, 103, 666);
INSERT INTO public.games VALUES (262, 103, 334);
INSERT INTO public.games VALUES (263, 105, 471);
INSERT INTO public.games VALUES (264, 106, 797);
INSERT INTO public.games VALUES (265, 105, 794);
INSERT INTO public.games VALUES (266, 105, 442);
INSERT INTO public.games VALUES (267, 105, 995);
INSERT INTO public.games VALUES (268, 107, 232);
INSERT INTO public.games VALUES (269, 108, 112);
INSERT INTO public.games VALUES (270, 107, 39);
INSERT INTO public.games VALUES (271, 107, 651);
INSERT INTO public.games VALUES (272, 107, 788);
INSERT INTO public.games VALUES (273, 109, 777);
INSERT INTO public.games VALUES (274, 110, 702);
INSERT INTO public.games VALUES (275, 109, 392);
INSERT INTO public.games VALUES (276, 109, 874);
INSERT INTO public.games VALUES (277, 109, 689);
INSERT INTO public.games VALUES (278, 111, 617);
INSERT INTO public.games VALUES (279, 112, 568);
INSERT INTO public.games VALUES (280, 111, 393);
INSERT INTO public.games VALUES (281, 111, 391);
INSERT INTO public.games VALUES (282, 111, 498);
INSERT INTO public.games VALUES (283, 113, 771);
INSERT INTO public.games VALUES (284, 114, 143);
INSERT INTO public.games VALUES (285, 113, 322);
INSERT INTO public.games VALUES (286, 113, 828);
INSERT INTO public.games VALUES (287, 113, 495);
INSERT INTO public.games VALUES (288, 115, 331);
INSERT INTO public.games VALUES (289, 116, 930);
INSERT INTO public.games VALUES (290, 115, 446);
INSERT INTO public.games VALUES (291, 115, 326);
INSERT INTO public.games VALUES (292, 115, 718);
INSERT INTO public.games VALUES (293, 117, 595);
INSERT INTO public.games VALUES (294, 118, 91);
INSERT INTO public.games VALUES (295, 117, 267);
INSERT INTO public.games VALUES (296, 117, 75);
INSERT INTO public.games VALUES (297, 117, 732);
INSERT INTO public.games VALUES (298, 119, 575);
INSERT INTO public.games VALUES (299, 120, 681);
INSERT INTO public.games VALUES (300, 119, 107);
INSERT INTO public.games VALUES (301, 119, 317);
INSERT INTO public.games VALUES (302, 119, 630);
INSERT INTO public.games VALUES (303, 121, 643);
INSERT INTO public.games VALUES (83, 1, 8);
INSERT INTO public.games VALUES (84, 1, 11);
INSERT INTO public.games VALUES (85, 1, 4);
INSERT INTO public.games VALUES (304, 122, 139);
INSERT INTO public.games VALUES (305, 121, 905);
INSERT INTO public.games VALUES (306, 121, 605);
INSERT INTO public.games VALUES (307, 121, 164);
INSERT INTO public.games VALUES (308, 40, 9);
INSERT INTO public.games VALUES (309, 123, 74);
INSERT INTO public.games VALUES (310, 124, 66);
INSERT INTO public.games VALUES (311, 123, 364);
INSERT INTO public.games VALUES (312, 123, 620);
INSERT INTO public.games VALUES (313, 123, 513);
INSERT INTO public.games VALUES (314, 125, 367);
INSERT INTO public.games VALUES (315, 126, 800);
INSERT INTO public.games VALUES (316, 125, 445);
INSERT INTO public.games VALUES (317, 125, 930);
INSERT INTO public.games VALUES (318, 125, 953);
INSERT INTO public.games VALUES (101, 1, 7);
INSERT INTO public.games VALUES (102, 40, 9);
INSERT INTO public.games VALUES (319, 127, 36);
INSERT INTO public.games VALUES (320, 128, 77);
INSERT INTO public.games VALUES (321, 127, 985);
INSERT INTO public.games VALUES (322, 127, 192);
INSERT INTO public.games VALUES (323, 127, 505);
INSERT INTO public.games VALUES (324, 129, 408);
INSERT INTO public.games VALUES (325, 130, 300);
INSERT INTO public.games VALUES (326, 129, 655);
INSERT INTO public.games VALUES (327, 129, 819);
INSERT INTO public.games VALUES (328, 129, 806);
INSERT INTO public.games VALUES (329, 131, 784);
INSERT INTO public.games VALUES (330, 132, 403);
INSERT INTO public.games VALUES (331, 131, 329);
INSERT INTO public.games VALUES (332, 131, 627);
INSERT INTO public.games VALUES (333, 131, 290);
INSERT INTO public.games VALUES (334, 133, 262);
INSERT INTO public.games VALUES (335, 134, 820);
INSERT INTO public.games VALUES (336, 133, 296);
INSERT INTO public.games VALUES (337, 133, 166);
INSERT INTO public.games VALUES (338, 133, 62);
INSERT INTO public.games VALUES (339, 135, 508);
INSERT INTO public.games VALUES (340, 136, 298);
INSERT INTO public.games VALUES (341, 135, 21);
INSERT INTO public.games VALUES (342, 135, 914);
INSERT INTO public.games VALUES (343, 135, 55);
INSERT INTO public.games VALUES (344, 137, 588);
INSERT INTO public.games VALUES (345, 138, 110);
INSERT INTO public.games VALUES (346, 137, 176);
INSERT INTO public.games VALUES (347, 137, 683);
INSERT INTO public.games VALUES (348, 137, 86);
INSERT INTO public.games VALUES (349, 139, 46);
INSERT INTO public.games VALUES (350, 140, 612);
INSERT INTO public.games VALUES (351, 139, 723);
INSERT INTO public.games VALUES (352, 139, 675);
INSERT INTO public.games VALUES (353, 139, 682);
INSERT INTO public.games VALUES (354, 141, 179);
INSERT INTO public.games VALUES (355, 142, 391);
INSERT INTO public.games VALUES (356, 141, 104);
INSERT INTO public.games VALUES (357, 141, 451);
INSERT INTO public.games VALUES (358, 141, 786);
INSERT INTO public.games VALUES (359, 143, 714);
INSERT INTO public.games VALUES (360, 144, 891);
INSERT INTO public.games VALUES (361, 143, 665);
INSERT INTO public.games VALUES (362, 143, 213);
INSERT INTO public.games VALUES (363, 143, 633);
INSERT INTO public.games VALUES (364, 145, 348);
INSERT INTO public.games VALUES (365, 146, 878);
INSERT INTO public.games VALUES (366, 145, 760);
INSERT INTO public.games VALUES (367, 145, 234);
INSERT INTO public.games VALUES (368, 145, 559);
INSERT INTO public.games VALUES (369, 147, 655);
INSERT INTO public.games VALUES (370, 148, 811);
INSERT INTO public.games VALUES (371, 147, 745);
INSERT INTO public.games VALUES (372, 147, 130);
INSERT INTO public.games VALUES (373, 147, 148);
INSERT INTO public.games VALUES (374, 151, 10);
INSERT INTO public.games VALUES (375, 152, 982);
INSERT INTO public.games VALUES (376, 152, 103);
INSERT INTO public.games VALUES (377, 153, 848);
INSERT INTO public.games VALUES (378, 153, 140);
INSERT INTO public.games VALUES (379, 152, 327);
INSERT INTO public.games VALUES (380, 152, 52);
INSERT INTO public.games VALUES (381, 152, 661);
INSERT INTO public.games VALUES (382, 154, 135);
INSERT INTO public.games VALUES (383, 154, 880);
INSERT INTO public.games VALUES (384, 155, 57);
INSERT INTO public.games VALUES (385, 155, 91);
INSERT INTO public.games VALUES (386, 154, 608);
INSERT INTO public.games VALUES (387, 154, 526);
INSERT INTO public.games VALUES (388, 154, 537);
INSERT INTO public.games VALUES (389, 156, 751);
INSERT INTO public.games VALUES (390, 156, 833);
INSERT INTO public.games VALUES (391, 157, 450);
INSERT INTO public.games VALUES (392, 157, 142);
INSERT INTO public.games VALUES (393, 156, 737);
INSERT INTO public.games VALUES (394, 156, 374);
INSERT INTO public.games VALUES (395, 156, 736);
INSERT INTO public.games VALUES (396, 158, 988);
INSERT INTO public.games VALUES (397, 158, 108);
INSERT INTO public.games VALUES (398, 159, 917);
INSERT INTO public.games VALUES (399, 159, 196);
INSERT INTO public.games VALUES (400, 158, 230);
INSERT INTO public.games VALUES (401, 158, 4);
INSERT INTO public.games VALUES (402, 158, 584);
INSERT INTO public.games VALUES (403, 160, 983);
INSERT INTO public.games VALUES (404, 160, 898);
INSERT INTO public.games VALUES (405, 161, 34);
INSERT INTO public.games VALUES (406, 161, 389);
INSERT INTO public.games VALUES (407, 160, 95);
INSERT INTO public.games VALUES (408, 160, 62);
INSERT INTO public.games VALUES (409, 160, 664);
INSERT INTO public.games VALUES (410, 162, 269);
INSERT INTO public.games VALUES (411, 162, 480);
INSERT INTO public.games VALUES (412, 163, 881);
INSERT INTO public.games VALUES (413, 163, 976);
INSERT INTO public.games VALUES (414, 162, 122);
INSERT INTO public.games VALUES (415, 162, 75);
INSERT INTO public.games VALUES (416, 162, 684);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (89, 'user_1744999393334');
INSERT INTO public.users VALUES (90, 'user_1744999393333');
INSERT INTO public.users VALUES (91, 'user_1745000154611');
INSERT INTO public.users VALUES (92, 'user_1745000154610');
INSERT INTO public.users VALUES (93, 'user_1745000168602');
INSERT INTO public.users VALUES (94, 'user_1745000168601');
INSERT INTO public.users VALUES (95, 'user_1745000181349');
INSERT INTO public.users VALUES (96, 'user_1745000181348');
INSERT INTO public.users VALUES (97, 'user_1745000220367');
INSERT INTO public.users VALUES (98, 'user_1745000220366');
INSERT INTO public.users VALUES (99, 'user_1745000282039');
INSERT INTO public.users VALUES (100, 'user_1745000282038');
INSERT INTO public.users VALUES (101, 'user_1745000297206');
INSERT INTO public.users VALUES (102, 'user_1745000297205');
INSERT INTO public.users VALUES (103, 'user_1745000311071');
INSERT INTO public.users VALUES (104, 'user_1745000311070');
INSERT INTO public.users VALUES (105, 'user_1745000516859');
INSERT INTO public.users VALUES (106, 'user_1745000516858');
INSERT INTO public.users VALUES (107, 'user_1745000533967');
INSERT INTO public.users VALUES (108, 'user_1745000533966');
INSERT INTO public.users VALUES (109, 'user_1745000557581');
INSERT INTO public.users VALUES (110, 'user_1745000557580');
INSERT INTO public.users VALUES (111, 'user_1745000642655');
INSERT INTO public.users VALUES (112, 'user_1745000642654');
INSERT INTO public.users VALUES (113, 'user_1745000663034');
INSERT INTO public.users VALUES (114, 'user_1745000663033');
INSERT INTO public.users VALUES (115, 'user_1745000678133');
INSERT INTO public.users VALUES (116, 'user_1745000678132');
INSERT INTO public.users VALUES (117, 'user_1745000701151');
INSERT INTO public.users VALUES (118, 'user_1745000701150');
INSERT INTO public.users VALUES (119, 'user_1745000726240');
INSERT INTO public.users VALUES (120, 'user_1745000726239');
INSERT INTO public.users VALUES (121, 'user_1745000797792');
INSERT INTO public.users VALUES (122, 'user_1745000797791');
INSERT INTO public.users VALUES (123, 'user_1745000859572');
INSERT INTO public.users VALUES (124, 'user_1745000859571');
INSERT INTO public.users VALUES (125, 'user_1745002472038');
INSERT INTO public.users VALUES (126, 'user_1745002472037');
INSERT INTO public.users VALUES (127, 'user_1745002483921');
INSERT INTO public.users VALUES (128, 'user_1745002483920');
INSERT INTO public.users VALUES (129, 'user_1745002525639');
INSERT INTO public.users VALUES (130, 'user_1745002525638');
INSERT INTO public.users VALUES (131, 'user_1745002542941');
INSERT INTO public.users VALUES (132, 'user_1745002542940');
INSERT INTO public.users VALUES (133, 'user_1745002618651');
INSERT INTO public.users VALUES (134, 'user_1745002618650');
INSERT INTO public.users VALUES (135, 'user_1745002631137');
INSERT INTO public.users VALUES (136, 'user_1745002631136');
INSERT INTO public.users VALUES (137, 'user_1745002644122');
INSERT INTO public.users VALUES (138, 'user_1745002644121');
INSERT INTO public.users VALUES (139, 'user_1745002829666');
INSERT INTO public.users VALUES (140, 'user_1745002829665');
INSERT INTO public.users VALUES (141, 'user_1745002859981');
INSERT INTO public.users VALUES (142, 'user_1745002859980');
INSERT INTO public.users VALUES (143, 'user_1745002875642');
INSERT INTO public.users VALUES (144, 'user_1745002875641');
INSERT INTO public.users VALUES (145, 'user_1745002894687');
INSERT INTO public.users VALUES (146, 'user_1745002894686');
INSERT INTO public.users VALUES (147, 'user_1745006008259');
INSERT INTO public.users VALUES (148, 'user_1745006008258');
INSERT INTO public.users VALUES (149, 'Aaron');
INSERT INTO public.users VALUES (150, 'Katrina');
INSERT INTO public.users VALUES (151, 'Kemden');
INSERT INTO public.users VALUES (152, 'user_1745006411755');
INSERT INTO public.users VALUES (153, 'user_1745006411754');
INSERT INTO public.users VALUES (154, 'user_1745006493777');
INSERT INTO public.users VALUES (155, 'user_1745006493776');
INSERT INTO public.users VALUES (156, 'user_1745006505311');
INSERT INTO public.users VALUES (157, 'user_1745006505310');
INSERT INTO public.users VALUES (158, 'user_1745006522366');
INSERT INTO public.users VALUES (159, 'user_1745006522365');
INSERT INTO public.users VALUES (160, 'user_1745006539266');
INSERT INTO public.users VALUES (161, 'user_1745006539265');
INSERT INTO public.users VALUES (162, 'user_1745006590986');
INSERT INTO public.users VALUES (163, 'user_1745006590985');
INSERT INTO public.users VALUES (1, 'Jerrel');
INSERT INTO public.users VALUES (40, 'Kyler');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 416, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 163, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

