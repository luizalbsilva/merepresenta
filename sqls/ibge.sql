--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: ibge; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ibge;


ALTER SCHEMA ibge OWNER TO postgres;

SET search_path = ibge, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cidade; Type: TABLE; Schema: ibge; Owner: postgres; Tablespace: 
--

CREATE TABLE cidade (
    codigo_composto integer NOT NULL,
    codigo integer NOT NULL,
    nome character varying(35) NOT NULL,
    version integer NOT NULL,
    estado_codigo integer NOT NULL,
    meso_regiao_codigo_completo integer NOT NULL,
    micro_regiao_codigo_completo integer NOT NULL,
    uf character(2),
    nome_norm character varying(255)
);


ALTER TABLE cidade OWNER TO postgres;

--
-- Name: estado; Type: TABLE; Schema: ibge; Owner: postgres; Tablespace: 
--

CREATE TABLE estado (
    codigo integer NOT NULL,
    nome character varying(25) NOT NULL,
    version integer NOT NULL,
    uf character(2)
);


ALTER TABLE estado OWNER TO postgres;

--
-- Name: meso_regiao; Type: TABLE; Schema: ibge; Owner: postgres; Tablespace: 
--

CREATE TABLE meso_regiao (
    codigo_completo integer NOT NULL,
    codigo integer NOT NULL,
    nome character varying(40) NOT NULL,
    version integer NOT NULL,
    estado_codigo_completo integer NOT NULL
);


ALTER TABLE meso_regiao OWNER TO postgres;

--
-- Name: micro_regiao; Type: TABLE; Schema: ibge; Owner: postgres; Tablespace: 
--

CREATE TABLE micro_regiao (
    codigo_completo integer NOT NULL,
    codigo integer NOT NULL,
    nome character varying(40) NOT NULL,
    version integer NOT NULL,
    estado_codigo_completo integer NOT NULL,
    meso_regiao_codigo_completo integer NOT NULL
);


ALTER TABLE micro_regiao OWNER TO postgres;

--
-- Data for Name: cidade; Type: TABLE DATA; Schema: ibge; Owner: postgres
--

COPY cidade (codigo_composto, codigo, nome, version, estado_codigo, meso_regiao_codigo_completo, micro_regiao_codigo_completo, uf, nome_norm) FROM stdin;
1100403	403	Alto Paraíso	1	11	1102	11003	RO	Alto Paraiso
1100346	346	Alvorada D'Oeste	1	11	1102	11005	RO	Alvorada D'Oeste
1100023	23	Ariquemes	1	11	1102	11003	RO	Ariquemes
1100452	452	Buritis	1	11	1101	11001	RO	Buritis
1100031	31	Cabixi	1	11	1102	11008	RO	Cabixi
1100601	601	Cacaulândia	1	11	1102	11003	RO	Cacaulandia
1100049	49	Cacoal	1	11	1102	11006	RO	Cacoal
1100700	700	Campo Novo de Rondônia	1	11	1101	11001	RO	Campo Novo de Rondonia
1100809	809	Candeias do Jamari	1	11	1101	11001	RO	Candeias do Jamari
1100908	908	Castanheiras	1	11	1102	11006	RO	Castanheiras
1100056	56	Cerejeiras	1	11	1102	11008	RO	Cerejeiras
1100924	924	Chupinguaia	1	11	1102	11007	RO	Chupinguaia
1100064	64	Colorado do Oeste	1	11	1102	11008	RO	Colorado do Oeste
1100072	72	Corumbiara	1	11	1102	11008	RO	Corumbiara
1100080	80	Costa Marques	1	11	1101	11002	RO	Costa Marques
1100940	940	Cujubim	1	11	1101	11001	RO	Cujubim
1100098	98	Espigão D'Oeste	1	11	1102	11006	RO	Espigao D'Oeste
1101005	1005	Governador Jorge Teixeira	1	11	1102	11004	RO	Governador Jorge Teixeira
1100106	106	Guajará-Mirim	1	11	1101	11002	RO	Guajara-Mirim
1101104	1104	Itapuã do Oeste	1	11	1101	11001	RO	Itapua do Oeste
1100114	114	Jaru	1	11	1102	11004	RO	Jaru
1100122	122	Ji-Paraná	1	11	1102	11004	RO	Ji-Parana
1100130	130	Machadinho D'Oeste	1	11	1102	11003	RO	Machadinho D'Oeste
1101203	1203	Ministro Andreazza	1	11	1102	11006	RO	Ministro Andreazza
1101302	1302	Mirante da Serra	1	11	1102	11004	RO	Mirante da Serra
1101401	1401	Monte Negro	1	11	1102	11003	RO	Monte Negro
1100148	148	Nova Brasilândia D'Oeste	1	11	1102	11005	RO	Nova Brasilandia D'Oeste
1100338	338	Nova Mamoré	1	11	1101	11001	RO	Nova Mamore
1101435	1435	Nova União	1	11	1102	11004	RO	Nova Uniao
1100502	502	Novo Horizonte do Oeste	1	11	1102	11006	RO	Novo Horizonte do Oeste
1100155	155	Ouro Preto do Oeste	1	11	1102	11004	RO	Ouro Preto do Oeste
1101450	1450	Parecis	1	11	1102	11007	RO	Parecis
1100189	189	Pimenta Bueno	1	11	1102	11007	RO	Pimenta Bueno
1101468	1468	Pimenteiras do Oeste	1	11	1102	11008	RO	Pimenteiras do Oeste
1100205	205	Porto Velho	1	11	1101	11001	RO	Porto Velho
1100254	254	Presidente Médici	1	11	1102	11004	RO	Presidente Medici
1101476	1476	Primavera de Rondônia	1	11	1102	11007	RO	Primavera de Rondonia
1100262	262	Rio Crespo	1	11	1102	11003	RO	Rio Crespo
1100288	288	Rolim de Moura	1	11	1102	11006	RO	Rolim de Moura
1100296	296	Santa Luzia D'Oeste	1	11	1102	11006	RO	Santa Luzia D'Oeste
1101484	1484	São Felipe D'Oeste	1	11	1102	11007	RO	Sao Felipe D'Oeste
1101492	1492	São Francisco do Guaporé	1	11	1101	11002	RO	Sao Francisco do Guapore
1100320	320	São Miguel do Guaporé	1	11	1102	11005	RO	Sao Miguel do Guapore
1101500	1500	Seringueiras	1	11	1102	11005	RO	Seringueiras
1101559	1559	Teixeirópolis	1	11	1102	11004	RO	Teixeiropolis
1101609	1609	Theobroma	1	11	1102	11004	RO	Theobroma
1101708	1708	Urupá	1	11	1102	11004	RO	Urupa
1101757	1757	Vale do Anari	1	11	1102	11003	RO	Vale do Anari
1101807	1807	Vale do Paraíso	1	11	1102	11004	RO	Vale do Paraiso
1100304	304	Vilhena	1	11	1102	11007	RO	Vilhena
1200013	13	Acrelândia	1	12	1202	12004	AC	Acrelandia
1200054	54	Assis Brasil	1	12	1202	12005	AC	Assis Brasil
1200104	104	Brasiléia	1	12	1202	12005	AC	Brasileia
1200138	138	Bujari	1	12	1202	12004	AC	Bujari
1200179	179	Capixaba	1	12	1202	12004	AC	Capixaba
1200203	203	Cruzeiro do Sul	1	12	1201	12001	AC	Cruzeiro do Sul
1200252	252	Epitaciolândia	1	12	1202	12005	AC	Epitaciolandia
1200302	302	Feijó	1	12	1201	12002	AC	Feijo
1200328	328	Jordão	1	12	1201	12002	AC	Jordao
1200336	336	Mâncio Lima	1	12	1201	12001	AC	Mancio Lima
1200344	344	Manoel Urbano	1	12	1202	12003	AC	Manoel Urbano
1200351	351	Marechal Thaumaturgo	1	12	1201	12001	AC	Marechal Thaumaturgo
1200385	385	Plácido de Castro	1	12	1202	12004	AC	Placido de Castro
1200807	807	Porto Acre	1	12	1202	12004	AC	Porto Acre
1200393	393	Porto Walter	1	12	1201	12001	AC	Porto Walter
1200401	401	Rio Branco	1	12	1202	12004	AC	Rio Branco
1200427	427	Rodrigues Alves	1	12	1201	12001	AC	Rodrigues Alves
1200435	435	Santa Rosa do Purus	1	12	1202	12003	AC	Santa Rosa do Purus
1200500	500	Sena Madureira	1	12	1202	12003	AC	Sena Madureira
1200450	450	Senador Guiomard	1	12	1202	12004	AC	Senador Guiomard
1200609	609	Tarauacá	1	12	1201	12002	AC	Tarauaca
1200708	708	Xapuri	1	12	1202	12005	AC	Xapuri
1300029	29	Alvarães	1	13	1303	13005	AM	Alvaraes
1300060	60	Amaturá	1	13	1302	13003	AM	Amatura
1300086	86	Anamã	1	13	1303	13006	AM	Anama
1300102	102	Anori	1	13	1303	13006	AM	Anori
1300144	144	Apuí	1	13	1304	13013	AM	Apui
1300201	201	Atalaia do Norte	1	13	1302	13003	AM	Atalaia do Norte
1300300	300	Autazes	1	13	1303	13007	AM	Autazes
1300409	409	Barcelos	1	13	1301	13001	AM	Barcelos
1300508	508	Barreirinha	1	13	1303	13010	AM	Barreirinha
1300607	607	Benjamin Constant	1	13	1302	13003	AM	Benjamin Constant
1300631	631	Beruri	1	13	1303	13006	AM	Beruri
1300680	680	Boa Vista do Ramos	1	13	1303	13010	AM	Boa Vista do Ramos
1300706	706	Boca do Acre	1	13	1304	13011	AM	Boca do Acre
1300805	805	Borba	1	13	1304	13013	AM	Borba
1300839	839	Caapiranga	1	13	1303	13006	AM	Caapiranga
1300904	904	Canutama	1	13	1304	13012	AM	Canutama
1301001	1001	Carauari	1	13	1302	13004	AM	Carauari
1301100	1100	Careiro	1	13	1303	13007	AM	Careiro
1301159	1159	Careiro da Várzea	1	13	1303	13007	AM	Careiro da Varzea
1301209	1209	Coari	1	13	1303	13006	AM	Coari
1301308	1308	Codajás	1	13	1303	13006	AM	Codajas
1301407	1407	Eirunepé	1	13	1302	13004	AM	Eirunepe
1301506	1506	Envira	1	13	1302	13004	AM	Envira
1301605	1605	Fonte Boa	1	13	1302	13003	AM	Fonte Boa
1301654	1654	Guajará	1	13	1302	13004	AM	Guajara
1301704	1704	Humaitá	1	13	1304	13013	AM	Humaita
1301803	1803	Ipixuna	1	13	1302	13004	AM	Ipixuna
1301852	1852	Iranduba	1	13	1303	13007	AM	Iranduba
1301902	1902	Itacoatiara	1	13	1303	13009	AM	Itacoatiara
1301951	1951	Itamarati	1	13	1302	13004	AM	Itamarati
1302009	2009	Itapiranga	1	13	1303	13009	AM	Itapiranga
1302108	2108	Japurá	1	13	1301	13002	AM	Japura
1302207	2207	Juruá	1	13	1302	13004	AM	Jurua
1302306	2306	Jutaí	1	13	1302	13003	AM	Jutai
1302405	2405	Lábrea	1	13	1304	13012	AM	Labrea
1302504	2504	Manacapuru	1	13	1303	13007	AM	Manacapuru
1302553	2553	Manaquiri	1	13	1303	13007	AM	Manaquiri
1302603	2603	Manaus	1	13	1303	13007	AM	Manaus
1302702	2702	Manicoré	1	13	1304	13013	AM	Manicore
1302801	2801	Maraã	1	13	1301	13002	AM	Maraa
1302900	2900	Maués	1	13	1303	13010	AM	Maues
1303007	3007	Nhamundá	1	13	1303	13010	AM	Nhamunda
1303106	3106	Nova Olinda do Norte	1	13	1303	13009	AM	Nova Olinda do Norte
1303205	3205	Novo Airão	1	13	1301	13001	AM	Novo Airao
1303304	3304	Novo Aripuanã	1	13	1304	13013	AM	Novo Aripuana
1303403	3403	Parintins	1	13	1303	13010	AM	Parintins
1303502	3502	Pauini	1	13	1304	13011	AM	Pauini
1303536	3536	Presidente Figueiredo	1	13	1303	13008	AM	Presidente Figueiredo
1303569	3569	Rio Preto da Eva	1	13	1303	13008	AM	Rio Preto da Eva
1303601	3601	Santa Isabel do Rio Negro	1	13	1301	13001	AM	Santa Isabel do Rio Negro
1303700	3700	Santo Antônio do Içá	1	13	1302	13003	AM	Santo Antonio do Ica
1303809	3809	São Gabriel da Cachoeira	1	13	1301	13001	AM	Sao Gabriel da Cachoeira
1303908	3908	São Paulo de Olivença	1	13	1302	13003	AM	Sao Paulo de Olivenca
1303957	3957	São Sebastião do Uatumã	1	13	1303	13010	AM	Sao Sebastiao do Uatuma
1304005	4005	Silves	1	13	1303	13009	AM	Silves
1304062	4062	Tabatinga	1	13	1302	13003	AM	Tabatinga
1304104	4104	Tapauá	1	13	1304	13012	AM	Tapaua
1304203	4203	Tefé	1	13	1303	13005	AM	Tefe
1304237	4237	Tonantins	1	13	1302	13003	AM	Tonantins
1304260	4260	Uarini	1	13	1303	13005	AM	Uarini
1304302	4302	Urucará	1	13	1303	13010	AM	Urucara
1304401	4401	Urucurituba	1	13	1303	13009	AM	Urucurituba
1400050	50	Alto Alegre	1	14	1401	14001	RR	Alto Alegre
1400027	27	Amajari	1	14	1401	14001	RR	Amajari
1400100	100	Boa Vista	1	14	1401	14001	RR	Boa Vista
1400159	159	Bonfim	1	14	1401	14002	RR	Bonfim
1400175	175	Cantá	1	14	1401	14002	RR	Canta
1400209	209	Caracaraí	1	14	1402	14003	RR	Caracarai
1400233	233	Caroebe	1	14	1402	14004	RR	Caroebe
1400282	282	Iracema	1	14	1402	14003	RR	Iracema
1400308	308	Mucajaí	1	14	1402	14003	RR	Mucajai
1400407	407	Normandia	1	14	1401	14002	RR	Normandia
1400456	456	Pacaraima	1	14	1401	14001	RR	Pacaraima
1400472	472	Rorainópolis	1	14	1402	14004	RR	Rorainopolis
1400506	506	São João da Baliza	1	14	1402	14004	RR	Sao Joao da Baliza
1400605	605	São Luiz	1	14	1402	14004	RR	Sao Luiz
1400704	704	Uiramutã	1	14	1401	14002	RR	Uiramuta
1500107	107	Abaetetuba	1	15	1504	15011	PA	Abaetetuba
1500131	131	Abel Figueiredo	1	15	1506	15017	PA	Abel Figueiredo
1500206	206	Acará	1	15	1504	15012	PA	Acara
1500305	305	Afuá	1	15	1502	15005	PA	Afua
1500347	347	Água Azul do Norte	1	15	1506	15019	PA	Agua Azul do Norte
1500404	404	Alenquer	1	15	1501	15002	PA	Alenquer
1500503	503	Almeirim	1	15	1501	15003	PA	Almeirim
1500602	602	Altamira	1	15	1505	15015	PA	Altamira
1500701	701	Anajás	1	15	1502	15005	PA	Anajas
1500800	800	Ananindeua	1	15	1503	15007	PA	Ananindeua
1500859	859	Anapu	1	15	1505	15015	PA	Anapu
1500909	909	Augusto Corrêa	1	15	1504	15010	PA	Augusto Correa
1500958	958	Aurora do Pará	1	15	1504	15013	PA	Aurora do Para
1501006	1006	Aveiro	1	15	1505	15014	PA	Aveiro
1501105	1105	Bagre	1	15	1502	15004	PA	Bagre
1501204	1204	Baião	1	15	1504	15011	PA	Baiao
1501253	1253	Bannach	1	15	1506	15018	PA	Bannach
1501303	1303	Barcarena	1	15	1503	15007	PA	Barcarena
1501402	1402	Belém	1	15	1503	15007	PA	Belem
1501451	1451	Belterra	1	15	1501	15002	PA	Belterra
1501501	1501	Benevides	1	15	1503	15007	PA	Benevides
1501576	1576	Bom Jesus do Tocantins	1	15	1506	15017	PA	Bom Jesus do Tocantins
1501600	1600	Bonito	1	15	1504	15010	PA	Bonito
1501709	1709	Bragança	1	15	1504	15010	PA	Braganca
1501725	1725	Brasil Novo	1	15	1505	15015	PA	Brasil Novo
1501758	1758	Brejo Grande do Araguaia	1	15	1506	15020	PA	Brejo Grande do Araguaia
1501782	1782	Breu Branco	1	15	1506	15016	PA	Breu Branco
1501808	1808	Breves	1	15	1502	15005	PA	Breves
1501907	1907	Bujaru	1	15	1503	15008	PA	Bujaru
1502004	2004	Cachoeira do Arari	1	15	1502	15006	PA	Cachoeira do Arari
1501956	1956	Cachoeira do Piriá	1	15	1504	15013	PA	Cachoeira do Piria
1502103	2103	Cametá	1	15	1504	15011	PA	Cameta
1502152	2152	Canaã dos Carajás	1	15	1506	15019	PA	Canaa dos Carajas
1502202	2202	Capanema	1	15	1504	15010	PA	Capanema
1502301	2301	Capitão Poço	1	15	1504	15013	PA	Capitao Poco
1502400	2400	Castanhal	1	15	1503	15008	PA	Castanhal
1502509	2509	Chaves	1	15	1502	15006	PA	Chaves
1502608	2608	Colares	1	15	1504	15009	PA	Colares
1502707	2707	Conceição do Araguaia	1	15	1506	15022	PA	Conceicao do Araguaia
1502756	2756	Concórdia do Pará	1	15	1504	15012	PA	Concordia do Para
1502764	2764	Cumaru do Norte	1	15	1506	15018	PA	Cumaru do Norte
1502772	2772	Curionópolis	1	15	1506	15019	PA	Curionopolis
1502806	2806	Curralinho	1	15	1502	15005	PA	Curralinho
1502855	2855	Curuá	1	15	1501	15002	PA	Curua
1502905	2905	Curuçá	1	15	1504	15009	PA	Curuca
1502939	2939	Dom Eliseu	1	15	1506	15017	PA	Dom Eliseu
1502954	2954	Eldorado do Carajás	1	15	1506	15019	PA	Eldorado do Carajas
1503002	3002	Faro	1	15	1501	15001	PA	Faro
1503044	3044	Floresta do Araguaia	1	15	1506	15022	PA	Floresta do Araguaia
1503077	3077	Garrafão do Norte	1	15	1504	15013	PA	Garrafao do Norte
1503093	3093	Goianésia do Pará	1	15	1506	15017	PA	Goianesia do Para
1503101	3101	Gurupá	1	15	1502	15004	PA	Gurupa
1503200	3200	Igarapé-Açu	1	15	1504	15010	PA	Igarape-Acu
1503309	3309	Igarapé-Miri	1	15	1504	15011	PA	Igarape-Miri
1503408	3408	Inhangapi	1	15	1503	15008	PA	Inhangapi
1503457	3457	Ipixuna do Pará	1	15	1504	15013	PA	Ipixuna do Para
1503507	3507	Irituia	1	15	1504	15013	PA	Irituia
1503606	3606	Itaituba	1	15	1505	15014	PA	Itaituba
1503705	3705	Itupiranga	1	15	1506	15016	PA	Itupiranga
1503754	3754	Jacareacanga	1	15	1505	15014	PA	Jacareacanga
1503804	3804	Jacundá	1	15	1506	15016	PA	Jacunda
1503903	3903	Juruti	1	15	1501	15001	PA	Juruti
1504000	4000	Limoeiro do Ajuru	1	15	1504	15011	PA	Limoeiro do Ajuru
1504059	4059	Mãe do Rio	1	15	1504	15013	PA	Mae do Rio
1504109	4109	Magalhães Barata	1	15	1504	15009	PA	Magalhaes Barata
1504208	4208	Marabá	1	15	1506	15020	PA	Maraba
1504307	4307	Maracanã	1	15	1504	15009	PA	Maracana
1504406	4406	Marapanim	1	15	1504	15009	PA	Marapanim
1504422	4422	Marituba	1	15	1503	15007	PA	Marituba
1504455	4455	Medicilândia	1	15	1505	15015	PA	Medicilandia
1504505	4505	Melgaço	1	15	1502	15004	PA	Melgaco
1504604	4604	Mocajuba	1	15	1504	15011	PA	Mocajuba
1504703	4703	Moju	1	15	1504	15012	PA	Moju
1504752	4752	Mojuí dos Campos	1	15	1501	15002	PA	Mojui dos Campos
1504802	4802	Monte Alegre	1	15	1501	15002	PA	Monte Alegre
1504901	4901	Muaná	1	15	1502	15006	PA	Muana
1504950	4950	Nova Esperança do Piriá	1	15	1504	15013	PA	Nova Esperanca do Piria
1504976	4976	Nova Ipixuna	1	15	1506	15016	PA	Nova Ipixuna
1505007	5007	Nova Timboteua	1	15	1504	15010	PA	Nova Timboteua
1505031	5031	Novo Progresso	1	15	1505	15014	PA	Novo Progresso
1505064	5064	Novo Repartimento	1	15	1506	15016	PA	Novo Repartimento
1505106	5106	Óbidos	1	15	1501	15001	PA	Obidos
1505205	5205	Oeiras do Pará	1	15	1504	15011	PA	Oeiras do Para
1505304	5304	Oriximiná	1	15	1501	15001	PA	Oriximina
1505403	5403	Ourém	1	15	1504	15013	PA	Ourem
1505437	5437	Ourilândia do Norte	1	15	1506	15018	PA	Ourilandia do Norte
1505486	5486	Pacajá	1	15	1505	15015	PA	Pacaja
1505494	5494	Palestina do Pará	1	15	1506	15020	PA	Palestina do Para
1505502	5502	Paragominas	1	15	1506	15017	PA	Paragominas
1505536	5536	Parauapebas	1	15	1506	15019	PA	Parauapebas
1505551	5551	Pau D'Arco	1	15	1506	15021	PA	Pau D'Arco
1505601	5601	Peixe-Boi	1	15	1504	15010	PA	Peixe-Boi
1505635	5635	Piçarra	1	15	1506	15021	PA	Picarra
1505650	5650	Placas	1	15	1501	15002	PA	Placas
1505700	5700	Ponta de Pedras	1	15	1502	15006	PA	Ponta de Pedras
1505809	5809	Portel	1	15	1502	15004	PA	Portel
1505908	5908	Porto de Moz	1	15	1501	15003	PA	Porto de Moz
1506005	6005	Prainha	1	15	1501	15002	PA	Prainha
1506104	6104	Primavera	1	15	1504	15010	PA	Primavera
1506112	6112	Quatipuru	1	15	1504	15010	PA	Quatipuru
1506138	6138	Redenção	1	15	1506	15021	PA	Redencao
1506161	6161	Rio Maria	1	15	1506	15021	PA	Rio Maria
1506187	6187	Rondon do Pará	1	15	1506	15017	PA	Rondon do Para
1506195	6195	Rurópolis	1	15	1505	15014	PA	Ruropolis
1506203	6203	Salinópolis	1	15	1504	15009	PA	Salinopolis
1506302	6302	Salvaterra	1	15	1502	15006	PA	Salvaterra
1506351	6351	Santa Bárbara do Pará	1	15	1503	15007	PA	Santa Barbara do Para
1506401	6401	Santa Cruz do Arari	1	15	1502	15006	PA	Santa Cruz do Arari
1506500	6500	Santa Izabel do Pará	1	15	1503	15008	PA	Santa Izabel do Para
1506559	6559	Santa Luzia do Pará	1	15	1504	15013	PA	Santa Luzia do Para
1506583	6583	Santa Maria das Barreiras	1	15	1506	15022	PA	Santa Maria das Barreiras
1506609	6609	Santa Maria do Pará	1	15	1504	15010	PA	Santa Maria do Para
1506708	6708	Santana do Araguaia	1	15	1506	15022	PA	Santana do Araguaia
1506807	6807	Santarém	1	15	1501	15002	PA	Santarem
1506906	6906	Santarém Novo	1	15	1504	15010	PA	Santarem Novo
1507003	7003	Santo Antônio do Tauá	1	15	1503	15008	PA	Santo Antonio do Taua
1507102	7102	São Caetano de Odivelas	1	15	1504	15009	PA	Sao Caetano de Odivelas
1507151	7151	São Domingos do Araguaia	1	15	1506	15020	PA	Sao Domingos do Araguaia
1507201	7201	São Domingos do Capim	1	15	1504	15013	PA	Sao Domingos do Capim
1507300	7300	São Félix do Xingu	1	15	1506	15018	PA	Sao Felix do Xingu
1507409	7409	São Francisco do Pará	1	15	1504	15010	PA	Sao Francisco do Para
1507458	7458	São Geraldo do Araguaia	1	15	1506	15021	PA	Sao Geraldo do Araguaia
1507466	7466	São João da Ponta	1	15	1504	15009	PA	Sao Joao da Ponta
1507474	7474	São João de Pirabas	1	15	1504	15009	PA	Sao Joao de Pirabas
1507508	7508	São João do Araguaia	1	15	1506	15020	PA	Sao Joao do Araguaia
1507607	7607	São Miguel do Guamá	1	15	1504	15013	PA	Sao Miguel do Guama
1507706	7706	São Sebastião da Boa Vista	1	15	1502	15005	PA	Sao Sebastiao da Boa Vista
1507755	7755	Sapucaia	1	15	1506	15021	PA	Sapucaia
1507805	7805	Senador José Porfírio	1	15	1505	15015	PA	Senador Jose Porfirio
1507904	7904	Soure	1	15	1502	15006	PA	Soure
1507953	7953	Tailândia	1	15	1504	15012	PA	Tailandia
1507961	7961	Terra Alta	1	15	1504	15009	PA	Terra Alta
1507979	7979	Terra Santa	1	15	1501	15001	PA	Terra Santa
1508001	8001	Tomé-Açu	1	15	1504	15012	PA	Tome-Acu
1508035	8035	Tracuateua	1	15	1504	15010	PA	Tracuateua
1508050	8050	Trairão	1	15	1505	15014	PA	Trairao
1508084	8084	Tucumã	1	15	1506	15018	PA	Tucuma
1508100	8100	Tucuruí	1	15	1506	15016	PA	Tucurui
1508126	8126	Ulianópolis	1	15	1506	15017	PA	Ulianopolis
1508159	8159	Uruará	1	15	1505	15015	PA	Uruara
1508209	8209	Vigia	1	15	1504	15009	PA	Vigia
1508308	8308	Viseu	1	15	1504	15013	PA	Viseu
1508357	8357	Vitória do Xingu	1	15	1505	15015	PA	Vitoria do Xingu
1508407	8407	Xinguara	1	15	1506	15021	PA	Xinguara
1600105	105	Amapá	1	16	1601	16002	AP	Amapa
1600204	204	Calçoene	1	16	1601	16001	AP	Calcoene
1600212	212	Cutias	1	16	1602	16003	AP	Cutias
1600238	238	Ferreira Gomes	1	16	1602	16003	AP	Ferreira Gomes
1600253	253	Itaubal	1	16	1602	16003	AP	Itaubal
1600279	279	Laranjal do Jari	1	16	1602	16004	AP	Laranjal do Jari
1600303	303	Macapá	1	16	1602	16003	AP	Macapa
1600402	402	Mazagão	1	16	1602	16004	AP	Mazagao
1600501	501	Oiapoque	1	16	1601	16001	AP	Oiapoque
1600154	154	Pedra Branca do Amapari	1	16	1602	16003	AP	Pedra Branca do Amapari
1600535	535	Porto Grande	1	16	1602	16003	AP	Porto Grande
1600550	550	Pracuúba	1	16	1601	16002	AP	Pracuuba
1600600	600	Santana	1	16	1602	16003	AP	Santana
1600055	55	Serra do Navio	1	16	1602	16003	AP	Serra do Navio
1600709	709	Tartarugalzinho	1	16	1601	16002	AP	Tartarugalzinho
1600808	808	Vitória do Jari	1	16	1602	16004	AP	Vitoria do Jari
1700251	251	Abreulândia	1	17	1701	17003	TO	Abreulandia
1700301	301	Aguiarnópolis	1	17	1701	17001	TO	Aguiarnopolis
1700350	350	Aliança do Tocantins	1	17	1701	17005	TO	Alianca do Tocantins
1700400	400	Almas	1	17	1702	17008	TO	Almas
1700707	707	Alvorada	1	17	1701	17005	TO	Alvorada
1701002	1002	Ananás	1	17	1701	17001	TO	Ananas
1701051	1051	Angico	1	17	1701	17001	TO	Angico
1701101	1101	Aparecida do Rio Negro	1	17	1702	17006	TO	Aparecida do Rio Negro
1701309	1309	Aragominas	1	17	1701	17002	TO	Aragominas
1701903	1903	Araguacema	1	17	1701	17003	TO	Araguacema
1702000	2000	Araguaçu	1	17	1701	17004	TO	Araguacu
1702109	2109	Araguaína	1	17	1701	17002	TO	Araguaina
1702158	2158	Araguanã	1	17	1701	17002	TO	Araguana
1702208	2208	Araguatins	1	17	1701	17001	TO	Araguatins
1702307	2307	Arapoema	1	17	1701	17002	TO	Arapoema
1702406	2406	Arraias	1	17	1702	17008	TO	Arraias
1702554	2554	Augustinópolis	1	17	1701	17001	TO	Augustinopolis
1702703	2703	Aurora do Tocantins	1	17	1702	17008	TO	Aurora do Tocantins
1702901	2901	Axixá do Tocantins	1	17	1701	17001	TO	Axixa do Tocantins
1703008	3008	Babaçulândia	1	17	1701	17002	TO	Babaculandia
1703057	3057	Bandeirantes do Tocantins	1	17	1701	17002	TO	Bandeirantes do Tocantins
1703073	3073	Barra do Ouro	1	17	1702	17007	TO	Barra do Ouro
1703107	3107	Barrolândia	1	17	1701	17003	TO	Barrolandia
1703206	3206	Bernardo Sayão	1	17	1701	17003	TO	Bernardo Sayao
1703305	3305	Bom Jesus do Tocantins	1	17	1702	17006	TO	Bom Jesus do Tocantins
1703602	3602	Brasilândia do Tocantins	1	17	1701	17003	TO	Brasilandia do Tocantins
1703701	3701	Brejinho de Nazaré	1	17	1701	17005	TO	Brejinho de Nazare
1703800	3800	Buriti do Tocantins	1	17	1701	17001	TO	Buriti do Tocantins
1703826	3826	Cachoeirinha	1	17	1701	17001	TO	Cachoeirinha
1703842	3842	Campos Lindos	1	17	1702	17007	TO	Campos Lindos
1703867	3867	Cariri do Tocantins	1	17	1701	17005	TO	Cariri do Tocantins
1703883	3883	Carmolândia	1	17	1701	17002	TO	Carmolandia
1703891	3891	Carrasco Bonito	1	17	1701	17001	TO	Carrasco Bonito
1703909	3909	Caseara	1	17	1701	17003	TO	Caseara
1704105	4105	Centenário	1	17	1702	17007	TO	Centenario
1705102	5102	Chapada da Natividade	1	17	1702	17008	TO	Chapada da Natividade
1704600	4600	Chapada de Areia	1	17	1701	17004	TO	Chapada de Areia
1705508	5508	Colinas do Tocantins	1	17	1701	17002	TO	Colinas do Tocantins
1716703	16703	Colméia	1	17	1701	17003	TO	Colmeia
1705557	5557	Combinado	1	17	1702	17008	TO	Combinado
1705607	5607	Conceição do Tocantins	1	17	1702	17008	TO	Conceicao do Tocantins
1706100	6100	Cristalândia	1	17	1701	17004	TO	Cristalandia
1706258	6258	Crixás do Tocantins	1	17	1701	17005	TO	Crixas do Tocantins
1706506	6506	Darcinópolis	1	17	1701	17001	TO	Darcinopolis
1707009	7009	Dianópolis	1	17	1702	17008	TO	Dianopolis
1707108	7108	Divinópolis do Tocantins	1	17	1701	17003	TO	Divinopolis do Tocantins
1707207	7207	Dois Irmãos do Tocantins	1	17	1701	17003	TO	Dois Irmaos do Tocantins
1707306	7306	Dueré	1	17	1701	17004	TO	Duere
1707405	7405	Esperantina	1	17	1701	17001	TO	Esperantina
1707553	7553	Fátima	1	17	1701	17004	TO	Fatima
1707652	7652	Figueirópolis	1	17	1701	17005	TO	Figueiropolis
1707702	7702	Filadélfia	1	17	1701	17002	TO	Filadelfia
1708205	8205	Formoso do Araguaia	1	17	1701	17004	TO	Formoso do Araguaia
1708254	8254	Fortaleza do Tabocão	1	17	1701	17003	TO	Fortaleza do Tabocao
1708304	8304	Goianorte	1	17	1701	17003	TO	Goianorte
1709005	9005	Goiatins	1	17	1702	17007	TO	Goiatins
1709302	9302	Guaraí	1	17	1701	17003	TO	Guarai
1709500	9500	Gurupi	1	17	1701	17005	TO	Gurupi
1709807	9807	Ipueiras	1	17	1702	17006	TO	Ipueiras
1710508	10508	Itacajá	1	17	1702	17007	TO	Itacaja
1710706	10706	Itaguatins	1	17	1701	17001	TO	Itaguatins
1710904	10904	Itapiratins	1	17	1702	17007	TO	Itapiratins
1711100	11100	Itaporã do Tocantins	1	17	1701	17003	TO	Itapora do Tocantins
1711506	11506	Jaú do Tocantins	1	17	1701	17005	TO	Jau do Tocantins
1711803	11803	Juarina	1	17	1701	17003	TO	Juarina
1711902	11902	Lagoa da Confusão	1	17	1701	17004	TO	Lagoa da Confusao
1711951	11951	Lagoa do Tocantins	1	17	1702	17007	TO	Lagoa do Tocantins
1712009	12009	Lajeado	1	17	1702	17006	TO	Lajeado
1712157	12157	Lavandeira	1	17	1702	17008	TO	Lavandeira
1712405	12405	Lizarda	1	17	1702	17007	TO	Lizarda
1712454	12454	Luzinópolis	1	17	1701	17001	TO	Luzinopolis
1712504	12504	Marianópolis do Tocantins	1	17	1701	17003	TO	Marianopolis do Tocantins
1712702	12702	Mateiros	1	17	1702	17007	TO	Mateiros
1712801	12801	Maurilândia do Tocantins	1	17	1701	17001	TO	Maurilandia do Tocantins
1713205	13205	Miracema do Tocantins	1	17	1701	17003	TO	Miracema do Tocantins
1713304	13304	Miranorte	1	17	1701	17003	TO	Miranorte
1713601	13601	Monte do Carmo	1	17	1702	17006	TO	Monte do Carmo
1713700	13700	Monte Santo do Tocantins	1	17	1701	17003	TO	Monte Santo do Tocantins
1713957	13957	Muricilândia	1	17	1701	17002	TO	Muricilandia
1714203	14203	Natividade	1	17	1702	17008	TO	Natividade
1714302	14302	Nazaré	1	17	1701	17001	TO	Nazare
1714880	14880	Nova Olinda	1	17	1701	17002	TO	Nova Olinda
1715002	15002	Nova Rosalândia	1	17	1701	17004	TO	Nova Rosalandia
1715101	15101	Novo Acordo	1	17	1702	17007	TO	Novo Acordo
1715150	15150	Novo Alegre	1	17	1702	17008	TO	Novo Alegre
1715259	15259	Novo Jardim	1	17	1702	17008	TO	Novo Jardim
1715507	15507	Oliveira de Fátima	1	17	1701	17004	TO	Oliveira de Fatima
1721000	21000	Palmas	1	17	1702	17006	TO	Palmas
1715705	15705	Palmeirante	1	17	1701	17002	TO	Palmeirante
1713809	13809	Palmeiras do Tocantins	1	17	1701	17001	TO	Palmeiras do Tocantins
1715754	15754	Palmeirópolis	1	17	1701	17005	TO	Palmeiropolis
1716109	16109	Paraíso do Tocantins	1	17	1701	17004	TO	Paraiso do Tocantins
1716208	16208	Paranã	1	17	1702	17008	TO	Parana
1716307	16307	Pau D'Arco	1	17	1701	17002	TO	Pau D'Arco
1716505	16505	Pedro Afonso	1	17	1702	17006	TO	Pedro Afonso
1716604	16604	Peixe	1	17	1701	17005	TO	Peixe
1716653	16653	Pequizeiro	1	17	1701	17003	TO	Pequizeiro
1717008	17008	Pindorama do Tocantins	1	17	1702	17008	TO	Pindorama do Tocantins
1717206	17206	Piraquê	1	17	1701	17002	TO	Piraque
1717503	17503	Pium	1	17	1701	17004	TO	Pium
1717800	17800	Ponte Alta do Bom Jesus	1	17	1702	17008	TO	Ponte Alta do Bom Jesus
1717909	17909	Ponte Alta do Tocantins	1	17	1702	17007	TO	Ponte Alta do Tocantins
1718006	18006	Porto Alegre do Tocantins	1	17	1702	17008	TO	Porto Alegre do Tocantins
1718204	18204	Porto Nacional	1	17	1702	17006	TO	Porto Nacional
1718303	18303	Praia Norte	1	17	1701	17001	TO	Praia Norte
1718402	18402	Presidente Kennedy	1	17	1701	17003	TO	Presidente Kennedy
1718451	18451	Pugmil	1	17	1701	17004	TO	Pugmil
1718501	18501	Recursolândia	1	17	1702	17007	TO	Recursolandia
1718550	18550	Riachinho	1	17	1701	17001	TO	Riachinho
1718659	18659	Rio da Conceição	1	17	1702	17008	TO	Rio da Conceicao
1718709	18709	Rio dos Bois	1	17	1701	17003	TO	Rio dos Bois
1718758	18758	Rio Sono	1	17	1702	17007	TO	Rio Sono
1718808	18808	Sampaio	1	17	1701	17001	TO	Sampaio
1718840	18840	Sandolândia	1	17	1701	17004	TO	Sandolandia
1718865	18865	Santa Fé do Araguaia	1	17	1701	17002	TO	Santa Fe do Araguaia
1718881	18881	Santa Maria do Tocantins	1	17	1702	17006	TO	Santa Maria do Tocantins
1718899	18899	Santa Rita do Tocantins	1	17	1701	17005	TO	Santa Rita do Tocantins
1718907	18907	Santa Rosa do Tocantins	1	17	1702	17008	TO	Santa Rosa do Tocantins
1719004	19004	Santa Tereza do Tocantins	1	17	1702	17007	TO	Santa Tereza do Tocantins
1720002	20002	Santa Terezinha do Tocantins	1	17	1701	17001	TO	Santa Terezinha do Tocantins
1720101	20101	São Bento do Tocantins	1	17	1701	17001	TO	Sao Bento do Tocantins
1720150	20150	São Félix do Tocantins	1	17	1702	17007	TO	Sao Felix do Tocantins
1720200	20200	São Miguel do Tocantins	1	17	1701	17001	TO	Sao Miguel do Tocantins
1720259	20259	São Salvador do Tocantins	1	17	1701	17005	TO	Sao Salvador do Tocantins
1720309	20309	São Sebastião do Tocantins	1	17	1701	17001	TO	Sao Sebastiao do Tocantins
1720499	20499	São Valério	1	17	1702	17008	TO	Sao Valerio
1720655	20655	Silvanópolis	1	17	1702	17006	TO	Silvanopolis
1720804	20804	Sítio Novo do Tocantins	1	17	1701	17001	TO	Sitio Novo do Tocantins
1720853	20853	Sucupira	1	17	1701	17005	TO	Sucupira
1720903	20903	Taguatinga	1	17	1702	17008	TO	Taguatinga
1720937	20937	Taipas do Tocantins	1	17	1702	17008	TO	Taipas do Tocantins
1720978	20978	Talismã	1	17	1701	17005	TO	Talisma
1721109	21109	Tocantínia	1	17	1702	17006	TO	Tocantinia
1721208	21208	Tocantinópolis	1	17	1701	17001	TO	Tocantinopolis
1721257	21257	Tupirama	1	17	1701	17003	TO	Tupirama
1721307	21307	Tupiratins	1	17	1701	17003	TO	Tupiratins
1722081	22081	Wanderlândia	1	17	1701	17002	TO	Wanderlandia
1722107	22107	Xambioá	1	17	1701	17002	TO	Xambioa
2100055	55	Açailândia	1	21	2102	21009	MA	Acailandia
2100105	105	Afonso Cunha	1	21	2104	21016	MA	Afonso Cunha
2100154	154	Água Doce do Maranhão	1	21	2104	21013	MA	Agua Doce do Maranhao
2100204	204	Alcântara	1	21	2101	21001	MA	Alcantara
2100303	303	Aldeias Altas	1	21	2104	21016	MA	Aldeias Altas
2100402	402	Altamira do Maranhão	1	21	2102	21008	MA	Altamira do Maranhao
2100436	436	Alto Alegre do Maranhão	1	21	2104	21015	MA	Alto Alegre do Maranhao
2100477	477	Alto Alegre do Pindaré	1	21	2102	21008	MA	Alto Alegre do Pindare
2100501	501	Alto Parnaíba	1	21	2105	21020	MA	Alto Parnaiba
2100550	550	Amapá do Maranhão	1	21	2102	21007	MA	Amapa do Maranhao
2100600	600	Amarante do Maranhão	1	21	2102	21009	MA	Amarante do Maranhao
2100709	709	Anajatuba	1	21	2101	21005	MA	Anajatuba
2100808	808	Anapurus	1	21	2104	21014	MA	Anapurus
2100832	832	Apicum-Açu	1	21	2101	21001	MA	Apicum-Acu
2100873	873	Araguanã	1	21	2102	21008	MA	Araguana
2100907	907	Araioses	1	21	2104	21013	MA	Araioses
2100956	956	Arame	1	21	2103	21011	MA	Arame
2101004	1004	Arari	1	21	2101	21005	MA	Arari
2101103	1103	Axixá	1	21	2101	21003	MA	Axixa
2101202	1202	Bacabal	1	21	2103	21010	MA	Bacabal
2101251	1251	Bacabeira	1	21	2101	21003	MA	Bacabeira
2101301	1301	Bacuri	1	21	2101	21001	MA	Bacuri
2101350	1350	Bacurituba	1	21	2101	21001	MA	Bacurituba
2101400	1400	Balsas	1	21	2105	21020	MA	Balsas
2101509	1509	Barão de Grajaú	1	21	2104	21018	MA	Barao de Grajau
2101608	1608	Barra do Corda	1	21	2103	21011	MA	Barra do Corda
2101707	1707	Barreirinhas	1	21	2101	21004	MA	Barreirinhas
2101772	1772	Bela Vista do Maranhão	1	21	2101	21005	MA	Bela Vista do Maranhao
2101731	1731	Belágua	1	21	2104	21014	MA	Belagua
2101806	1806	Benedito Leite	1	21	2105	21021	MA	Benedito Leite
2101905	1905	Bequimão	1	21	2101	21001	MA	Bequimao
2101939	1939	Bernardo do Mearim	1	21	2103	21010	MA	Bernardo do Mearim
2101970	1970	Boa Vista do Gurupi	1	21	2102	21007	MA	Boa Vista do Gurupi
2102002	2002	Bom Jardim	1	21	2102	21008	MA	Bom Jardim
2102036	2036	Bom Jesus das Selvas	1	21	2102	21008	MA	Bom Jesus das Selvas
2102077	2077	Bom Lugar	1	21	2103	21010	MA	Bom Lugar
2102101	2101	Brejo	1	21	2104	21014	MA	Brejo
2102150	2150	Brejo de Areia	1	21	2102	21008	MA	Brejo de Areia
2102200	2200	Buriti	1	21	2104	21014	MA	Buriti
2102309	2309	Buriti Bravo	1	21	2104	21017	MA	Buriti Bravo
2102325	2325	Buriticupu	1	21	2102	21008	MA	Buriticupu
2102358	2358	Buritirana	1	21	2102	21009	MA	Buritirana
2102374	2374	Cachoeira Grande	1	21	2101	21003	MA	Cachoeira Grande
2102408	2408	Cajapió	1	21	2101	21001	MA	Cajapio
2102507	2507	Cajari	1	21	2101	21005	MA	Cajari
2102556	2556	Campestre do Maranhão	1	21	2105	21019	MA	Campestre do Maranhao
2102606	2606	Cândido Mendes	1	21	2102	21007	MA	Candido Mendes
2102705	2705	Cantanhede	1	21	2101	21006	MA	Cantanhede
2102754	2754	Capinzal do Norte	1	21	2104	21015	MA	Capinzal do Norte
2102804	2804	Carolina	1	21	2105	21019	MA	Carolina
2102903	2903	Carutapera	1	21	2102	21007	MA	Carutapera
2103000	3000	Caxias	1	21	2104	21017	MA	Caxias
2103109	3109	Cedral	1	21	2101	21001	MA	Cedral
2103125	3125	Central do Maranhão	1	21	2101	21001	MA	Central do Maranhao
2103158	3158	Centro do Guilherme	1	21	2102	21007	MA	Centro do Guilherme
2103174	3174	Centro Novo do Maranhão	1	21	2102	21007	MA	Centro Novo do Maranhao
2103208	3208	Chapadinha	1	21	2104	21014	MA	Chapadinha
2103257	3257	Cidelândia	1	21	2102	21009	MA	Cidelandia
2103307	3307	Codó	1	21	2104	21015	MA	Codo
2103406	3406	Coelho Neto	1	21	2104	21016	MA	Coelho Neto
2103505	3505	Colinas	1	21	2104	21018	MA	Colinas
2103554	3554	Conceição do Lago-Açu	1	21	2101	21005	MA	Conceicao do Lago-Acu
2103604	3604	Coroatá	1	21	2104	21015	MA	Coroata
2103703	3703	Cururupu	1	21	2101	21001	MA	Cururupu
2103752	3752	Davinópolis	1	21	2102	21009	MA	Davinopolis
2103802	3802	Dom Pedro	1	21	2103	21012	MA	Dom Pedro
2103901	3901	Duque Bacelar	1	21	2104	21016	MA	Duque Bacelar
2104008	4008	Esperantinópolis	1	21	2103	21010	MA	Esperantinopolis
2104057	4057	Estreito	1	21	2105	21019	MA	Estreito
2104073	4073	Feira Nova do Maranhão	1	21	2105	21020	MA	Feira Nova do Maranhao
2104081	4081	Fernando Falcão	1	21	2103	21011	MA	Fernando Falcao
2104099	4099	Formosa da Serra Negra	1	21	2103	21011	MA	Formosa da Serra Negra
2104107	4107	Fortaleza dos Nogueiras	1	21	2105	21021	MA	Fortaleza dos Nogueiras
2104206	4206	Fortuna	1	21	2103	21012	MA	Fortuna
2104305	4305	Godofredo Viana	1	21	2102	21007	MA	Godofredo Viana
2104404	4404	Gonçalves Dias	1	21	2103	21012	MA	Goncalves Dias
2104503	4503	Governador Archer	1	21	2103	21012	MA	Governador Archer
2104552	4552	Governador Edison Lobão	1	21	2102	21009	MA	Governador Edison Lobao
2104602	4602	Governador Eugênio Barros	1	21	2103	21012	MA	Governador Eugenio Barros
2104628	4628	Governador Luiz Rocha	1	21	2103	21012	MA	Governador Luiz Rocha
2104651	4651	Governador Newton Bello	1	21	2102	21008	MA	Governador Newton Bello
2104677	4677	Governador Nunes Freire	1	21	2102	21007	MA	Governador Nunes Freire
2104701	4701	Graça Aranha	1	21	2103	21012	MA	Graca Aranha
2104800	4800	Grajaú	1	21	2103	21011	MA	Grajau
2104909	4909	Guimarães	1	21	2101	21001	MA	Guimaraes
2105005	5005	Humberto de Campos	1	21	2101	21004	MA	Humberto de Campos
2105104	5104	Icatu	1	21	2101	21003	MA	Icatu
2105153	5153	Igarapé do Meio	1	21	2101	21005	MA	Igarape do Meio
2105203	5203	Igarapé Grande	1	21	2103	21010	MA	Igarape Grande
2105302	5302	Imperatriz	1	21	2102	21009	MA	Imperatriz
2105351	5351	Itaipava do Grajaú	1	21	2103	21011	MA	Itaipava do Grajau
2105401	5401	Itapecuru Mirim	1	21	2101	21006	MA	Itapecuru Mirim
2105427	5427	Itinga do Maranhão	1	21	2102	21009	MA	Itinga do Maranhao
2105450	5450	Jatobá	1	21	2104	21018	MA	Jatoba
2105476	5476	Jenipapo dos Vieiras	1	21	2103	21011	MA	Jenipapo dos Vieiras
2105500	5500	João Lisboa	1	21	2102	21009	MA	Joao Lisboa
2105609	5609	Joselândia	1	21	2103	21011	MA	Joselandia
2105658	5658	Junco do Maranhão	1	21	2102	21007	MA	Junco do Maranhao
2105708	5708	Lago da Pedra	1	21	2102	21008	MA	Lago da Pedra
2105807	5807	Lago do Junco	1	21	2103	21010	MA	Lago do Junco
2105948	5948	Lago dos Rodrigues	1	21	2103	21010	MA	Lago dos Rodrigues
2105906	5906	Lago Verde	1	21	2103	21010	MA	Lago Verde
2105922	5922	Lagoa do Mato	1	21	2104	21018	MA	Lagoa do Mato
2105963	5963	Lagoa Grande do Maranhão	1	21	2102	21008	MA	Lagoa Grande do Maranhao
2105989	5989	Lajeado Novo	1	21	2102	21009	MA	Lajeado Novo
2106003	6003	Lima Campos	1	21	2103	21010	MA	Lima Campos
2106102	6102	Loreto	1	21	2105	21021	MA	Loreto
2106201	6201	Luís Domingues	1	21	2102	21007	MA	Luis Domingues
2106300	6300	Magalhães de Almeida	1	21	2104	21013	MA	Magalhaes de Almeida
2106326	6326	Maracaçumé	1	21	2102	21007	MA	Maracacume
2106359	6359	Marajá do Sena	1	21	2102	21008	MA	Maraja do Sena
2106375	6375	Maranhãozinho	1	21	2102	21007	MA	Maranhaozinho
2106409	6409	Mata Roma	1	21	2104	21014	MA	Mata Roma
2106508	6508	Matinha	1	21	2101	21005	MA	Matinha
2106607	6607	Matões	1	21	2104	21017	MA	Matoes
2106631	6631	Matões do Norte	1	21	2101	21006	MA	Matoes do Norte
2106672	6672	Milagres do Maranhão	1	21	2104	21014	MA	Milagres do Maranhao
2106706	6706	Mirador	1	21	2104	21018	MA	Mirador
2106755	6755	Miranda do Norte	1	21	2101	21006	MA	Miranda do Norte
2106805	6805	Mirinzal	1	21	2101	21001	MA	Mirinzal
2106904	6904	Monção	1	21	2101	21005	MA	Moncao
2107001	7001	Montes Altos	1	21	2102	21009	MA	Montes Altos
2107100	7100	Morros	1	21	2101	21003	MA	Morros
2107209	7209	Nina Rodrigues	1	21	2101	21006	MA	Nina Rodrigues
2107258	7258	Nova Colinas	1	21	2105	21021	MA	Nova Colinas
2107308	7308	Nova Iorque	1	21	2104	21018	MA	Nova Iorque
2107357	7357	Nova Olinda do Maranhão	1	21	2102	21008	MA	Nova Olinda do Maranhao
2107407	7407	Olho d'Água das Cunhãs	1	21	2103	21010	MA	Olho d'Agua das Cunhas
2107456	7456	Olinda Nova do Maranhão	1	21	2101	21005	MA	Olinda Nova do Maranhao
2107506	7506	Paço do Lumiar	1	21	2101	21002	MA	Paco do Lumiar
2107605	7605	Palmeirândia	1	21	2101	21005	MA	Palmeirandia
2107704	7704	Paraibano	1	21	2104	21018	MA	Paraibano
2107803	7803	Parnarama	1	21	2104	21017	MA	Parnarama
2107902	7902	Passagem Franca	1	21	2104	21018	MA	Passagem Franca
2108009	8009	Pastos Bons	1	21	2104	21018	MA	Pastos Bons
2108058	8058	Paulino Neves	1	21	2101	21004	MA	Paulino Neves
2108108	8108	Paulo Ramos	1	21	2102	21008	MA	Paulo Ramos
2108207	8207	Pedreiras	1	21	2103	21010	MA	Pedreiras
2108256	8256	Pedro do Rosário	1	21	2101	21005	MA	Pedro do Rosario
2108306	8306	Penalva	1	21	2101	21005	MA	Penalva
2108405	8405	Peri Mirim	1	21	2101	21005	MA	Peri Mirim
2108454	8454	Peritoró	1	21	2104	21015	MA	Peritoro
2108504	8504	Pindaré-Mirim	1	21	2102	21008	MA	Pindare-Mirim
2108603	8603	Pinheiro	1	21	2101	21005	MA	Pinheiro
2108702	8702	Pio XII	1	21	2103	21010	MA	Pio XII
2108801	8801	Pirapemas	1	21	2101	21006	MA	Pirapemas
2108900	8900	Poção de Pedras	1	21	2103	21010	MA	Pocao de Pedras
2109007	9007	Porto Franco	1	21	2105	21019	MA	Porto Franco
2109056	9056	Porto Rico do Maranhão	1	21	2101	21001	MA	Porto Rico do Maranhao
2109106	9106	Presidente Dutra	1	21	2103	21012	MA	Presidente Dutra
2109205	9205	Presidente Juscelino	1	21	2101	21003	MA	Presidente Juscelino
2109239	9239	Presidente Médici	1	21	2102	21008	MA	Presidente Medici
2109270	9270	Presidente Sarney	1	21	2101	21005	MA	Presidente Sarney
2109304	9304	Presidente Vargas	1	21	2101	21006	MA	Presidente Vargas
2109403	9403	Primeira Cruz	1	21	2101	21004	MA	Primeira Cruz
2109452	9452	Raposa	1	21	2101	21002	MA	Raposa
2109502	9502	Riachão	1	21	2105	21020	MA	Riachao
2109551	9551	Ribamar Fiquene	1	21	2102	21009	MA	Ribamar Fiquene
2109601	9601	Rosário	1	21	2101	21003	MA	Rosario
2109700	9700	Sambaíba	1	21	2105	21021	MA	Sambaiba
2109759	9759	Santa Filomena do Maranhão	1	21	2103	21011	MA	Santa Filomena do Maranhao
2109809	9809	Santa Helena	1	21	2101	21005	MA	Santa Helena
2109908	9908	Santa Inês	1	21	2102	21008	MA	Santa Ines
2110005	10005	Santa Luzia	1	21	2102	21008	MA	Santa Luzia
2110039	10039	Santa Luzia do Paruá	1	21	2102	21008	MA	Santa Luzia do Parua
2110104	10104	Santa Quitéria do Maranhão	1	21	2104	21013	MA	Santa Quiteria do Maranhao
2110203	10203	Santa Rita	1	21	2101	21003	MA	Santa Rita
2110237	10237	Santana do Maranhão	1	21	2104	21013	MA	Santana do Maranhao
2110278	10278	Santo Amaro do Maranhão	1	21	2101	21004	MA	Santo Amaro do Maranhao
2110302	10302	Santo Antônio dos Lopes	1	21	2103	21010	MA	Santo Antonio dos Lopes
2110401	10401	São Benedito do Rio Preto	1	21	2104	21014	MA	Sao Benedito do Rio Preto
2110500	10500	São Bento	1	21	2101	21005	MA	Sao Bento
2110609	10609	São Bernardo	1	21	2104	21013	MA	Sao Bernardo
2110658	10658	São Domingos do Azeitão	1	21	2105	21021	MA	Sao Domingos do Azeitao
2110708	10708	São Domingos do Maranhão	1	21	2103	21012	MA	Sao Domingos do Maranhao
2110807	10807	São Félix de Balsas	1	21	2105	21021	MA	Sao Felix de Balsas
2110856	10856	São Francisco do Brejão	1	21	2102	21009	MA	Sao Francisco do Brejao
2110906	10906	São Francisco do Maranhão	1	21	2104	21018	MA	Sao Francisco do Maranhao
2111003	11003	São João Batista	1	21	2101	21005	MA	Sao Joao Batista
2111029	11029	São João do Carú	1	21	2102	21008	MA	Sao Joao do Caru
2111052	11052	São João do Paraíso	1	21	2105	21019	MA	Sao Joao do Paraiso
2111078	11078	São João do Soter	1	21	2104	21017	MA	Sao Joao do Soter
2111102	11102	São João dos Patos	1	21	2104	21018	MA	Sao Joao dos Patos
2111201	11201	São José de Ribamar	1	21	2101	21002	MA	Sao Jose de Ribamar
2111250	11250	São José dos Basílios	1	21	2103	21012	MA	Sao Jose dos Basilios
2111300	11300	São Luís	1	21	2101	21002	MA	Sao Luis
2111409	11409	São Luís Gonzaga do Maranhão	1	21	2103	21010	MA	Sao Luis Gonzaga do Maranhao
2111508	11508	São Mateus do Maranhão	1	21	2103	21010	MA	Sao Mateus do Maranhao
2111532	11532	São Pedro da Água Branca	1	21	2102	21009	MA	Sao Pedro da Agua Branca
2111573	11573	São Pedro dos Crentes	1	21	2105	21019	MA	Sao Pedro dos Crentes
2111607	11607	São Raimundo das Mangabeiras	1	21	2105	21021	MA	Sao Raimundo das Mangabeiras
2111631	11631	São Raimundo do Doca Bezerra	1	21	2103	21010	MA	Sao Raimundo do Doca Bezerra
2111672	11672	São Roberto	1	21	2103	21010	MA	Sao Roberto
2111706	11706	São Vicente Ferrer	1	21	2101	21005	MA	Sao Vicente Ferrer
2111722	11722	Satubinha	1	21	2103	21010	MA	Satubinha
2111748	11748	Senador Alexandre Costa	1	21	2103	21012	MA	Senador Alexandre Costa
2111763	11763	Senador La Rocque	1	21	2102	21009	MA	Senador La Rocque
2111789	11789	Serrano do Maranhão	1	21	2101	21001	MA	Serrano do Maranhao
2111805	11805	Sítio Novo	1	21	2103	21011	MA	Sitio Novo
2111904	11904	Sucupira do Norte	1	21	2104	21018	MA	Sucupira do Norte
2111953	11953	Sucupira do Riachão	1	21	2104	21018	MA	Sucupira do Riachao
2112001	12001	Tasso Fragoso	1	21	2105	21020	MA	Tasso Fragoso
2112100	12100	Timbiras	1	21	2104	21015	MA	Timbiras
2112209	12209	Timon	1	21	2104	21017	MA	Timon
2112233	12233	Trizidela do Vale	1	21	2103	21010	MA	Trizidela do Vale
2112274	12274	Tufilândia	1	21	2102	21008	MA	Tufilandia
2112308	12308	Tuntum	1	21	2103	21011	MA	Tuntum
2112407	12407	Turiaçu	1	21	2102	21007	MA	Turiacu
2112456	12456	Turilândia	1	21	2102	21007	MA	Turilandia
2112506	12506	Tutóia	1	21	2101	21004	MA	Tutoia
2112605	12605	Urbano Santos	1	21	2104	21014	MA	Urbano Santos
2112704	12704	Vargem Grande	1	21	2101	21006	MA	Vargem Grande
2112803	12803	Viana	1	21	2101	21005	MA	Viana
2112852	12852	Vila Nova dos Martírios	1	21	2102	21009	MA	Vila Nova dos Martirios
2112902	12902	Vitória do Mearim	1	21	2101	21005	MA	Vitoria do Mearim
2113009	13009	Vitorino Freire	1	21	2102	21008	MA	Vitorino Freire
2114007	14007	Zé Doca	1	21	2102	21008	MA	Ze Doca
2200053	53	Acauã	1	22	2204	22015	PI	Acaua
2200103	103	Agricolândia	1	22	2202	22005	PI	Agricolandia
2200202	202	Água Branca	1	22	2202	22005	PI	Agua Branca
2200251	251	Alagoinha do Piauí	1	22	2204	22014	PI	Alagoinha do Piaui
2200277	277	Alegrete do Piauí	1	22	2204	22014	PI	Alegrete do Piaui
2200301	301	Alto Longá	1	22	2202	22004	PI	Alto Longa
2200400	400	Altos	1	22	2202	22003	PI	Altos
2200459	459	Alvorada do Gurguéia	1	22	2203	22010	PI	Alvorada do Gurgueia
2200509	509	Amarante	1	22	2202	22005	PI	Amarante
2200608	608	Angical do Piauí	1	22	2202	22005	PI	Angical do Piaui
2200707	707	Anísio de Abreu	1	22	2203	22011	PI	Anisio de Abreu
2200806	806	Antônio Almeida	1	22	2203	22008	PI	Antonio Almeida
2200905	905	Aroazes	1	22	2202	22006	PI	Aroazes
2200954	954	Aroeiras do Itaim	1	22	2204	22013	PI	Aroeiras do Itaim
2201002	1002	Arraial	1	22	2202	22005	PI	Arraial
2201051	1051	Assunção do Piauí	1	22	2202	22004	PI	Assuncao do Piaui
2201101	1101	Avelino Lopes	1	22	2203	22012	PI	Avelino Lopes
2201150	1150	Baixa Grande do Ribeiro	1	22	2203	22007	PI	Baixa Grande do Ribeiro
2201176	1176	Barra D'Alcântara	1	22	2202	22006	PI	Barra D'Alcantara
2201200	1200	Barras	1	22	2201	22001	PI	Barras
2201309	1309	Barreiras do Piauí	1	22	2203	22010	PI	Barreiras do Piaui
2201408	1408	Barro Duro	1	22	2202	22005	PI	Barro Duro
2201507	1507	Batalha	1	22	2201	22001	PI	Batalha
2201556	1556	Bela Vista do Piauí	1	22	2204	22015	PI	Bela Vista do Piaui
2201572	1572	Belém do Piauí	1	22	2204	22015	PI	Belem do Piaui
2201606	1606	Beneditinos	1	22	2202	22003	PI	Beneditinos
2201705	1705	Bertolínia	1	22	2203	22008	PI	Bertolinia
2201739	1739	Betânia do Piauí	1	22	2204	22015	PI	Betania do Piaui
2201770	1770	Boa Hora	1	22	2201	22001	PI	Boa Hora
2201804	1804	Bocaina	1	22	2204	22013	PI	Bocaina
2201903	1903	Bom Jesus	1	22	2203	22010	PI	Bom Jesus
2201919	1919	Bom Princípio do Piauí	1	22	2201	22002	PI	Bom Principio do Piaui
2201929	1929	Bonfim do Piauí	1	22	2203	22011	PI	Bonfim do Piaui
2201945	1945	Boqueirão do Piauí	1	22	2202	22004	PI	Boqueirao do Piaui
2201960	1960	Brasileira	1	22	2201	22001	PI	Brasileira
2201988	1988	Brejo do Piauí	1	22	2203	22011	PI	Brejo do Piaui
2202000	2000	Buriti dos Lopes	1	22	2201	22002	PI	Buriti dos Lopes
2202026	2026	Buriti dos Montes	1	22	2202	22004	PI	Buriti dos Montes
2202059	2059	Cabeceiras do Piauí	1	22	2201	22001	PI	Cabeceiras do Piaui
2202075	2075	Cajazeiras do Piauí	1	22	2204	22013	PI	Cajazeiras do Piaui
2202083	2083	Cajueiro da Praia	1	22	2201	22002	PI	Cajueiro da Praia
2202091	2091	Caldeirão Grande do Piauí	1	22	2204	22015	PI	Caldeirao Grande do Piaui
2202109	2109	Campinas do Piauí	1	22	2204	22015	PI	Campinas do Piaui
2202117	2117	Campo Alegre do Fidalgo	1	22	2204	22015	PI	Campo Alegre do Fidalgo
2202133	2133	Campo Grande do Piauí	1	22	2204	22015	PI	Campo Grande do Piaui
2202174	2174	Campo Largo do Piauí	1	22	2201	22001	PI	Campo Largo do Piaui
2202208	2208	Campo Maior	1	22	2202	22004	PI	Campo Maior
2202251	2251	Canavieira	1	22	2203	22009	PI	Canavieira
2202307	2307	Canto do Buriti	1	22	2203	22011	PI	Canto do Buriti
2202406	2406	Capitão de Campos	1	22	2202	22004	PI	Capitao de Campos
2202455	2455	Capitão Gervásio Oliveira	1	22	2204	22015	PI	Capitao Gervasio Oliveira
2202505	2505	Caracol	1	22	2203	22011	PI	Caracol
2202539	2539	Caraúbas do Piauí	1	22	2201	22002	PI	Caraubas do Piaui
2202554	2554	Caridade do Piauí	1	22	2204	22015	PI	Caridade do Piaui
2202604	2604	Castelo do Piauí	1	22	2202	22004	PI	Castelo do Piaui
2202653	2653	Caxingó	1	22	2201	22002	PI	Caxingo
2202703	2703	Cocal	1	22	2201	22002	PI	Cocal
2202711	2711	Cocal de Telha	1	22	2202	22004	PI	Cocal de Telha
2202729	2729	Cocal dos Alves	1	22	2201	22002	PI	Cocal dos Alves
2202737	2737	Coivaras	1	22	2202	22003	PI	Coivaras
2202752	2752	Colônia do Gurguéia	1	22	2203	22008	PI	Colonia do Gurgueia
2202778	2778	Colônia do Piauí	1	22	2204	22013	PI	Colonia do Piaui
2202802	2802	Conceição do Canindé	1	22	2204	22015	PI	Conceicao do Caninde
2202851	2851	Coronel José Dias	1	22	2203	22011	PI	Coronel Jose Dias
2202901	2901	Corrente	1	22	2203	22012	PI	Corrente
2203008	3008	Cristalândia do Piauí	1	22	2203	22012	PI	Cristalandia do Piaui
2203107	3107	Cristino Castro	1	22	2203	22010	PI	Cristino Castro
2203206	3206	Curimatá	1	22	2203	22012	PI	Curimata
2203230	3230	Currais	1	22	2203	22010	PI	Currais
2203271	3271	Curral Novo do Piauí	1	22	2204	22015	PI	Curral Novo do Piaui
2203255	3255	Curralinhos	1	22	2202	22003	PI	Curralinhos
2203305	3305	Demerval Lobão	1	22	2202	22003	PI	Demerval Lobao
2203354	3354	Dirceu Arcoverde	1	22	2203	22011	PI	Dirceu Arcoverde
2203404	3404	Dom Expedito Lopes	1	22	2204	22013	PI	Dom Expedito Lopes
2203453	3453	Dom Inocêncio	1	22	2203	22011	PI	Dom Inocencio
2203420	3420	Domingos Mourão	1	22	2202	22004	PI	Domingos Mourao
2203503	3503	Elesbão Veloso	1	22	2202	22006	PI	Elesbao Veloso
2203602	3602	Eliseu Martins	1	22	2203	22008	PI	Eliseu Martins
2203701	3701	Esperantina	1	22	2201	22001	PI	Esperantina
2203750	3750	Fartura do Piauí	1	22	2203	22011	PI	Fartura do Piaui
2203800	3800	Flores do Piauí	1	22	2203	22009	PI	Flores do Piaui
2203859	3859	Floresta do Piauí	1	22	2204	22015	PI	Floresta do Piaui
2203909	3909	Floriano	1	22	2203	22009	PI	Floriano
2204006	4006	Francinópolis	1	22	2202	22006	PI	Francinopolis
2204105	4105	Francisco Ayres	1	22	2202	22005	PI	Francisco Ayres
2204154	4154	Francisco Macedo	1	22	2204	22015	PI	Francisco Macedo
2204204	4204	Francisco Santos	1	22	2204	22014	PI	Francisco Santos
2204303	4303	Fronteiras	1	22	2204	22015	PI	Fronteiras
2204352	4352	Geminiano	1	22	2204	22013	PI	Geminiano
2204402	4402	Gilbués	1	22	2203	22010	PI	Gilbues
2204501	4501	Guadalupe	1	22	2203	22009	PI	Guadalupe
2204550	4550	Guaribas	1	22	2203	22011	PI	Guaribas
2204600	4600	Hugo Napoleão	1	22	2202	22005	PI	Hugo Napoleao
2204659	4659	Ilha Grande	1	22	2201	22002	PI	Ilha Grande
2204709	4709	Inhuma	1	22	2202	22006	PI	Inhuma
2204808	4808	Ipiranga do Piauí	1	22	2204	22013	PI	Ipiranga do Piaui
2204907	4907	Isaías Coelho	1	22	2204	22015	PI	Isaias Coelho
2205003	5003	Itainópolis	1	22	2204	22015	PI	Itainopolis
2205102	5102	Itaueira	1	22	2203	22009	PI	Itaueira
2205151	5151	Jacobina do Piauí	1	22	2204	22015	PI	Jacobina do Piaui
2205201	5201	Jaicós	1	22	2204	22015	PI	Jaicos
2205250	5250	Jardim do Mulato	1	22	2202	22005	PI	Jardim do Mulato
2205276	5276	Jatobá do Piauí	1	22	2202	22004	PI	Jatoba do Piaui
2205300	5300	Jerumenha	1	22	2203	22009	PI	Jerumenha
2205359	5359	João Costa	1	22	2204	22015	PI	Joao Costa
2205409	5409	Joaquim Pires	1	22	2201	22001	PI	Joaquim Pires
2205458	5458	Joca Marques	1	22	2201	22001	PI	Joca Marques
2205508	5508	José de Freitas	1	22	2202	22003	PI	Jose de Freitas
2205516	5516	Juazeiro do Piauí	1	22	2202	22004	PI	Juazeiro do Piaui
2205524	5524	Júlio Borges	1	22	2203	22012	PI	Julio Borges
2205532	5532	Jurema	1	22	2203	22011	PI	Jurema
2205557	5557	Lagoa Alegre	1	22	2202	22003	PI	Lagoa Alegre
2205573	5573	Lagoa de São Francisco	1	22	2202	22004	PI	Lagoa de Sao Francisco
2205565	5565	Lagoa do Barro do Piauí	1	22	2204	22015	PI	Lagoa do Barro do Piaui
2205581	5581	Lagoa do Piauí	1	22	2202	22003	PI	Lagoa do Piaui
2205599	5599	Lagoa do Sítio	1	22	2202	22006	PI	Lagoa do Sitio
2205540	5540	Lagoinha do Piauí	1	22	2202	22005	PI	Lagoinha do Piaui
2205607	5607	Landri Sales	1	22	2203	22008	PI	Landri Sales
2205706	5706	Luís Correia	1	22	2201	22002	PI	Luis Correia
2205805	5805	Luzilândia	1	22	2201	22001	PI	Luzilandia
2205854	5854	Madeiro	1	22	2201	22001	PI	Madeiro
2205904	5904	Manoel Emídio	1	22	2203	22008	PI	Manoel Emidio
2205953	5953	Marcolândia	1	22	2204	22015	PI	Marcolandia
2206001	6001	Marcos Parente	1	22	2203	22008	PI	Marcos Parente
2206050	6050	Massapê do Piauí	1	22	2204	22015	PI	Massape do Piaui
2206100	6100	Matias Olímpio	1	22	2201	22001	PI	Matias Olimpio
2206209	6209	Miguel Alves	1	22	2201	22001	PI	Miguel Alves
2206308	6308	Miguel Leão	1	22	2202	22003	PI	Miguel Leao
2206357	6357	Milton Brandão	1	22	2202	22004	PI	Milton Brandao
2206407	6407	Monsenhor Gil	1	22	2202	22003	PI	Monsenhor Gil
2206506	6506	Monsenhor Hipólito	1	22	2204	22014	PI	Monsenhor Hipolito
2206605	6605	Monte Alegre do Piauí	1	22	2203	22010	PI	Monte Alegre do Piaui
2206654	6654	Morro Cabeça no Tempo	1	22	2203	22012	PI	Morro Cabeca no Tempo
2206670	6670	Morro do Chapéu do Piauí	1	22	2201	22001	PI	Morro do Chapeu do Piaui
2206696	6696	Murici dos Portelas	1	22	2201	22002	PI	Murici dos Portelas
2206704	6704	Nazaré do Piauí	1	22	2203	22009	PI	Nazare do Piaui
2206720	6720	Nazária	1	22	2202	22003	PI	Nazaria
2206753	6753	Nossa Senhora de Nazaré	1	22	2202	22004	PI	Nossa Senhora de Nazare
2206803	6803	Nossa Senhora dos Remédios	1	22	2201	22001	PI	Nossa Senhora dos Remedios
2207959	7959	Nova Santa Rita	1	22	2204	22015	PI	Nova Santa Rita
2206902	6902	Novo Oriente do Piauí	1	22	2202	22006	PI	Novo Oriente do Piaui
2206951	6951	Novo Santo Antônio	1	22	2202	22004	PI	Novo Santo Antonio
2207009	7009	Oeiras	1	22	2204	22013	PI	Oeiras
2207108	7108	Olho D'Água do Piauí	1	22	2202	22005	PI	Olho D'Agua do Piaui
2207207	7207	Padre Marcos	1	22	2204	22015	PI	Padre Marcos
2207306	7306	Paes Landim	1	22	2204	22015	PI	Paes Landim
2207355	7355	Pajeú do Piauí	1	22	2203	22011	PI	Pajeu do Piaui
2207405	7405	Palmeira do Piauí	1	22	2203	22010	PI	Palmeira do Piaui
2207504	7504	Palmeirais	1	22	2202	22005	PI	Palmeirais
2207553	7553	Paquetá	1	22	2204	22013	PI	Paqueta
2207603	7603	Parnaguá	1	22	2203	22012	PI	Parnagua
2207702	7702	Parnaíba	1	22	2201	22002	PI	Parnaiba
2207751	7751	Passagem Franca do Piauí	1	22	2202	22005	PI	Passagem Franca do Piaui
2207777	7777	Patos do Piauí	1	22	2204	22015	PI	Patos do Piaui
2207793	7793	Pau D'Arco do Piauí	1	22	2202	22003	PI	Pau D'Arco do Piaui
2207801	7801	Paulistana	1	22	2204	22015	PI	Paulistana
2207850	7850	Pavussu	1	22	2203	22009	PI	Pavussu
2207900	7900	Pedro II	1	22	2202	22004	PI	Pedro II
2207934	7934	Pedro Laurentino	1	22	2204	22015	PI	Pedro Laurentino
2208007	8007	Picos	1	22	2204	22013	PI	Picos
2208106	8106	Pimenteiras	1	22	2202	22006	PI	Pimenteiras
2208205	8205	Pio IX	1	22	2204	22014	PI	Pio IX
2208304	8304	Piracuruca	1	22	2201	22002	PI	Piracuruca
2208403	8403	Piripiri	1	22	2201	22001	PI	Piripiri
2208502	8502	Porto	1	22	2201	22001	PI	Porto
2208551	8551	Porto Alegre do Piauí	1	22	2203	22008	PI	Porto Alegre do Piaui
2208601	8601	Prata do Piauí	1	22	2202	22006	PI	Prata do Piaui
2208650	8650	Queimada Nova	1	22	2204	22015	PI	Queimada Nova
2208700	8700	Redenção do Gurguéia	1	22	2203	22010	PI	Redencao do Gurgueia
2208809	8809	Regeneração	1	22	2202	22005	PI	Regeneracao
2208858	8858	Riacho Frio	1	22	2203	22012	PI	Riacho Frio
2208874	8874	Ribeira do Piauí	1	22	2204	22015	PI	Ribeira do Piaui
2208908	8908	Ribeiro Gonçalves	1	22	2203	22007	PI	Ribeiro Goncalves
2209005	9005	Rio Grande do Piauí	1	22	2203	22009	PI	Rio Grande do Piaui
2209104	9104	Santa Cruz do Piauí	1	22	2204	22013	PI	Santa Cruz do Piaui
2209153	9153	Santa Cruz dos Milagres	1	22	2202	22006	PI	Santa Cruz dos Milagres
2209203	9203	Santa Filomena	1	22	2203	22007	PI	Santa Filomena
2209302	9302	Santa Luz	1	22	2203	22010	PI	Santa Luz
2209377	9377	Santa Rosa do Piauí	1	22	2204	22013	PI	Santa Rosa do Piaui
2209351	9351	Santana do Piauí	1	22	2204	22013	PI	Santana do Piaui
2209401	9401	Santo Antônio de Lisboa	1	22	2204	22014	PI	Santo Antonio de Lisboa
2209450	9450	Santo Antônio dos Milagres	1	22	2202	22005	PI	Santo Antonio dos Milagres
2209500	9500	Santo Inácio do Piauí	1	22	2204	22015	PI	Santo Inacio do Piaui
2209559	9559	São Braz do Piauí	1	22	2203	22011	PI	Sao Braz do Piaui
2209609	9609	São Félix do Piauí	1	22	2202	22006	PI	Sao Felix do Piaui
2209658	9658	São Francisco de Assis do Piauí	1	22	2204	22015	PI	Sao Francisco de Assis do Piaui
2209708	9708	São Francisco do Piauí	1	22	2203	22009	PI	Sao Francisco do Piaui
2209757	9757	São Gonçalo do Gurguéia	1	22	2203	22010	PI	Sao Goncalo do Gurgueia
2209807	9807	São Gonçalo do Piauí	1	22	2202	22005	PI	Sao Goncalo do Piaui
2209856	9856	São João da Canabrava	1	22	2204	22013	PI	Sao Joao da Canabrava
2209872	9872	São João da Fronteira	1	22	2201	22002	PI	Sao Joao da Fronteira
2209906	9906	São João da Serra	1	22	2202	22004	PI	Sao Joao da Serra
2209955	9955	São João da Varjota	1	22	2204	22013	PI	Sao Joao da Varjota
2209971	9971	São João do Arraial	1	22	2201	22001	PI	Sao Joao do Arraial
2210003	10003	São João do Piauí	1	22	2204	22015	PI	Sao Joao do Piaui
2210052	10052	São José do Divino	1	22	2201	22002	PI	Sao Jose do Divino
2210102	10102	São José do Peixe	1	22	2203	22009	PI	Sao Jose do Peixe
2210201	10201	São José do Piauí	1	22	2204	22013	PI	Sao Jose do Piaui
2210300	10300	São Julião	1	22	2204	22014	PI	Sao Juliao
2210359	10359	São Lourenço do Piauí	1	22	2203	22011	PI	Sao Lourenco do Piaui
2210375	10375	São Luis do Piauí	1	22	2204	22013	PI	Sao Luis do Piaui
2210383	10383	São Miguel da Baixa Grande	1	22	2202	22006	PI	Sao Miguel da Baixa Grande
2210391	10391	São Miguel do Fidalgo	1	22	2203	22009	PI	Sao Miguel do Fidalgo
2210409	10409	São Miguel do Tapuio	1	22	2202	22004	PI	Sao Miguel do Tapuio
2210508	10508	São Pedro do Piauí	1	22	2202	22005	PI	Sao Pedro do Piaui
2210607	10607	São Raimundo Nonato	1	22	2203	22011	PI	Sao Raimundo Nonato
2210623	10623	Sebastião Barros	1	22	2203	22012	PI	Sebastiao Barros
2210631	10631	Sebastião Leal	1	22	2203	22008	PI	Sebastiao Leal
2210656	10656	Sigefredo Pacheco	1	22	2202	22004	PI	Sigefredo Pacheco
2210706	10706	Simões	1	22	2204	22015	PI	Simoes
2210805	10805	Simplício Mendes	1	22	2204	22015	PI	Simplicio Mendes
2210904	10904	Socorro do Piauí	1	22	2204	22015	PI	Socorro do Piaui
2210938	10938	Sussuapara	1	22	2204	22013	PI	Sussuapara
2210953	10953	Tamboril do Piauí	1	22	2203	22011	PI	Tamboril do Piaui
2210979	10979	Tanque do Piauí	1	22	2204	22013	PI	Tanque do Piaui
2211001	11001	Teresina	1	22	2202	22003	PI	Teresina
2211100	11100	União	1	22	2202	22003	PI	Uniao
2211209	11209	Uruçuí	1	22	2203	22007	PI	Urucui
2211308	11308	Valença do Piauí	1	22	2202	22006	PI	Valenca do Piaui
2211357	11357	Várzea Branca	1	22	2203	22011	PI	Varzea Branca
2211407	11407	Várzea Grande	1	22	2202	22006	PI	Varzea Grande
2211506	11506	Vera Mendes	1	22	2204	22015	PI	Vera Mendes
2211605	11605	Vila Nova do Piauí	1	22	2204	22015	PI	Vila Nova do Piaui
2211704	11704	Wall Ferraz	1	22	2204	22013	PI	Wall Ferraz
2300101	101	Abaiara	1	23	2307	23033	CE	Abaiara
2300150	150	Acarape	1	23	2302	23013	CE	Acarape
2300200	200	Acaraú	1	23	2301	23001	CE	Acarau
2300309	309	Acopiara	1	23	2304	23021	CE	Acopiara
2300408	408	Aiuaba	1	23	2304	23020	CE	Aiuaba
2300507	507	Alcântaras	1	23	2301	23004	CE	Alcantaras
2300606	606	Altaneira	1	23	2307	23030	CE	Altaneira
2300705	705	Alto Santo	1	23	2305	23023	CE	Alto Santo
2300754	754	Amontada	1	23	2302	23008	CE	Amontada
2300804	804	Antonina do Norte	1	23	2306	23027	CE	Antonina do Norte
2300903	903	Apuiarés	1	23	2302	23011	CE	Apuiares
2301000	1000	Aquiraz	1	23	2303	23016	CE	Aquiraz
2301109	1109	Aracati	1	23	2305	23022	CE	Aracati
2301208	1208	Aracoiaba	1	23	2302	23013	CE	Aracoiaba
2301257	1257	Ararendá	1	23	2304	23018	CE	Ararenda
2301307	1307	Araripe	1	23	2307	23029	CE	Araripe
2301406	1406	Aratuba	1	23	2302	23013	CE	Aratuba
2301505	1505	Arneiroz	1	23	2304	23020	CE	Arneiroz
2301604	1604	Assaré	1	23	2307	23029	CE	Assare
2301703	1703	Aurora	1	23	2307	23031	CE	Aurora
2301802	1802	Baixio	1	23	2306	23028	CE	Baixio
2301851	1851	Banabuiú	1	23	2304	23019	CE	Banabuiu
2301901	1901	Barbalha	1	23	2307	23032	CE	Barbalha
2301950	1950	Barreira	1	23	2302	23014	CE	Barreira
2302008	2008	Barro	1	23	2307	23031	CE	Barro
2302057	2057	Barroquinha	1	23	2301	23001	CE	Barroquinha
2302107	2107	Baturité	1	23	2302	23013	CE	Baturite
2302206	2206	Beberibe	1	23	2302	23015	CE	Beberibe
2302305	2305	Bela Cruz	1	23	2301	23001	CE	Bela Cruz
2302404	2404	Boa Viagem	1	23	2304	23019	CE	Boa Viagem
2302503	2503	Brejo Santo	1	23	2307	23033	CE	Brejo Santo
2302602	2602	Camocim	1	23	2301	23001	CE	Camocim
2302701	2701	Campos Sales	1	23	2307	23029	CE	Campos Sales
2302800	2800	Canindé	1	23	2302	23012	CE	Caninde
2302909	2909	Capistrano	1	23	2302	23013	CE	Capistrano
2303006	3006	Caridade	1	23	2302	23012	CE	Caridade
2303105	3105	Cariré	1	23	2301	23005	CE	Carire
2303204	3204	Caririaçu	1	23	2307	23030	CE	Caririacu
2303303	3303	Cariús	1	23	2306	23027	CE	Carius
2303402	3402	Carnaubal	1	23	2301	23002	CE	Carnaubal
2303501	3501	Cascavel	1	23	2302	23015	CE	Cascavel
2303600	3600	Catarina	1	23	2304	23020	CE	Catarina
2303659	3659	Catunda	1	23	2301	23007	CE	Catunda
2303709	3709	Caucaia	1	23	2303	23016	CE	Caucaia
2303808	3808	Cedro	1	23	2306	23026	CE	Cedro
2303907	3907	Chaval	1	23	2301	23001	CE	Chaval
2303931	3931	Choró	1	23	2304	23019	CE	Choro
2303956	3956	Chorozinho	1	23	2302	23014	CE	Chorozinho
2304004	4004	Coreaú	1	23	2301	23003	CE	Coreau
2304103	4103	Crateús	1	23	2304	23018	CE	Crateus
2304202	4202	Crato	1	23	2307	23032	CE	Crato
2304236	4236	Croatá	1	23	2301	23002	CE	Croata
2304251	4251	Cruz	1	23	2301	23001	CE	Cruz
2304269	4269	Deputado Irapuan Pinheiro	1	23	2304	23021	CE	Deputado Irapuan Pinheiro
2304277	4277	Ererê	1	23	2305	23025	CE	Erere
2304285	4285	Eusébio	1	23	2303	23016	CE	Eusebio
2304301	4301	Farias Brito	1	23	2307	23030	CE	Farias Brito
2304350	4350	Forquilha	1	23	2301	23005	CE	Forquilha
2304400	4400	Fortaleza	1	23	2303	23016	CE	Fortaleza
2304459	4459	Fortim	1	23	2305	23022	CE	Fortim
2304509	4509	Frecheirinha	1	23	2301	23003	CE	Frecheirinha
2304608	4608	General Sampaio	1	23	2302	23011	CE	General Sampaio
2304657	4657	Graça	1	23	2301	23005	CE	Graca
2304707	4707	Granja	1	23	2301	23001	CE	Granja
2304806	4806	Granjeiro	1	23	2307	23030	CE	Granjeiro
2304905	4905	Groaíras	1	23	2301	23005	CE	Groairas
2304954	4954	Guaiúba	1	23	2303	23016	CE	Guaiuba
2305001	5001	Guaraciaba do Norte	1	23	2301	23002	CE	Guaraciaba do Norte
2305100	5100	Guaramiranga	1	23	2302	23013	CE	Guaramiranga
2305209	5209	Hidrolândia	1	23	2301	23007	CE	Hidrolandia
2305233	5233	Horizonte	1	23	2303	23017	CE	Horizonte
2305266	5266	Ibaretama	1	23	2304	23019	CE	Ibaretama
2305308	5308	Ibiapina	1	23	2301	23002	CE	Ibiapina
2305332	5332	Ibicuitinga	1	23	2305	23023	CE	Ibicuitinga
2305357	5357	Icapuí	1	23	2305	23022	CE	Icapui
2305407	5407	Icó	1	23	2306	23026	CE	Ico
2305506	5506	Iguatu	1	23	2306	23026	CE	Iguatu
2305605	5605	Independência	1	23	2304	23018	CE	Independencia
2305654	5654	Ipaporanga	1	23	2304	23018	CE	Ipaporanga
2305704	5704	Ipaumirim	1	23	2306	23028	CE	Ipaumirim
2305803	5803	Ipu	1	23	2301	23006	CE	Ipu
2305902	5902	Ipueiras	1	23	2301	23006	CE	Ipueiras
2306009	6009	Iracema	1	23	2305	23025	CE	Iracema
2306108	6108	Irauçuba	1	23	2301	23005	CE	Iraucuba
2306207	6207	Itaiçaba	1	23	2305	23022	CE	Itaicaba
2306256	6256	Itaitinga	1	23	2303	23016	CE	Itaitinga
2306306	6306	Itapajé	1	23	2302	23010	CE	Itapaje
2306405	6405	Itapipoca	1	23	2302	23008	CE	Itapipoca
2306504	6504	Itapiúna	1	23	2302	23013	CE	Itapiuna
2306553	6553	Itarema	1	23	2301	23001	CE	Itarema
2306603	6603	Itatira	1	23	2302	23012	CE	Itatira
2306702	6702	Jaguaretama	1	23	2305	23024	CE	Jaguaretama
2306801	6801	Jaguaribara	1	23	2305	23024	CE	Jaguaribara
2306900	6900	Jaguaribe	1	23	2305	23024	CE	Jaguaribe
2307007	7007	Jaguaruana	1	23	2305	23023	CE	Jaguaruana
2307106	7106	Jardim	1	23	2307	23032	CE	Jardim
2307205	7205	Jati	1	23	2307	23033	CE	Jati
2307254	7254	Jijoca de Jericoacoara	1	23	2301	23001	CE	Jijoca de Jericoacoara
2307304	7304	Juazeiro do Norte	1	23	2307	23032	CE	Juazeiro do Norte
2307403	7403	Jucás	1	23	2306	23027	CE	Jucas
2307502	7502	Lavras da Mangabeira	1	23	2306	23028	CE	Lavras da Mangabeira
2307601	7601	Limoeiro do Norte	1	23	2305	23023	CE	Limoeiro do Norte
2307635	7635	Madalena	1	23	2304	23019	CE	Madalena
2307650	7650	Maracanaú	1	23	2303	23016	CE	Maracanau
2307700	7700	Maranguape	1	23	2303	23016	CE	Maranguape
2307809	7809	Marco	1	23	2301	23001	CE	Marco
2307908	7908	Martinópole	1	23	2301	23001	CE	Martinopole
2308005	8005	Massapê	1	23	2301	23005	CE	Massape
2308104	8104	Mauriti	1	23	2307	23031	CE	Mauriti
2308203	8203	Meruoca	1	23	2301	23004	CE	Meruoca
2308302	8302	Milagres	1	23	2307	23033	CE	Milagres
2308351	8351	Milhã	1	23	2304	23021	CE	Milha
2308377	8377	Miraíma	1	23	2301	23005	CE	Miraima
2308401	8401	Missão Velha	1	23	2307	23032	CE	Missao Velha
2308500	8500	Mombaça	1	23	2304	23021	CE	Mombaca
2308609	8609	Monsenhor Tabosa	1	23	2304	23018	CE	Monsenhor Tabosa
2308708	8708	Morada Nova	1	23	2305	23023	CE	Morada Nova
2308807	8807	Moraújo	1	23	2301	23003	CE	Moraujo
2308906	8906	Morrinhos	1	23	2301	23001	CE	Morrinhos
2309003	9003	Mucambo	1	23	2301	23005	CE	Mucambo
2309102	9102	Mulungu	1	23	2302	23013	CE	Mulungu
2309201	9201	Nova Olinda	1	23	2307	23032	CE	Nova Olinda
2309300	9300	Nova Russas	1	23	2304	23018	CE	Nova Russas
2309409	9409	Novo Oriente	1	23	2304	23018	CE	Novo Oriente
2309458	9458	Ocara	1	23	2302	23014	CE	Ocara
2309508	9508	Orós	1	23	2306	23026	CE	Oros
2309607	9607	Pacajus	1	23	2303	23017	CE	Pacajus
2309706	9706	Pacatuba	1	23	2303	23016	CE	Pacatuba
2309805	9805	Pacoti	1	23	2302	23013	CE	Pacoti
2309904	9904	Pacujá	1	23	2301	23005	CE	Pacuja
2310001	10001	Palhano	1	23	2305	23023	CE	Palhano
2310100	10100	Palmácia	1	23	2302	23013	CE	Palmacia
2310209	10209	Paracuru	1	23	2302	23009	CE	Paracuru
2310258	10258	Paraipaba	1	23	2302	23009	CE	Paraipaba
2310308	10308	Parambu	1	23	2304	23020	CE	Parambu
2310407	10407	Paramoti	1	23	2302	23012	CE	Paramoti
2310506	10506	Pedra Branca	1	23	2304	23021	CE	Pedra Branca
2310605	10605	Penaforte	1	23	2307	23033	CE	Penaforte
2310704	10704	Pentecoste	1	23	2302	23011	CE	Pentecoste
2310803	10803	Pereiro	1	23	2305	23025	CE	Pereiro
2310852	10852	Pindoretama	1	23	2302	23015	CE	Pindoretama
2310902	10902	Piquet Carneiro	1	23	2304	23021	CE	Piquet Carneiro
2310951	10951	Pires Ferreira	1	23	2301	23006	CE	Pires Ferreira
2311009	11009	Poranga	1	23	2301	23006	CE	Poranga
2311108	11108	Porteiras	1	23	2307	23032	CE	Porteiras
2311207	11207	Potengi	1	23	2307	23029	CE	Potengi
2311231	11231	Potiretama	1	23	2305	23025	CE	Potiretama
2311264	11264	Quiterianópolis	1	23	2304	23018	CE	Quiterianopolis
2311306	11306	Quixadá	1	23	2304	23019	CE	Quixada
2311355	11355	Quixelô	1	23	2306	23026	CE	Quixelo
2311405	11405	Quixeramobim	1	23	2304	23019	CE	Quixeramobim
2311504	11504	Quixeré	1	23	2305	23023	CE	Quixere
2311603	11603	Redenção	1	23	2302	23013	CE	Redencao
2311702	11702	Reriutaba	1	23	2301	23006	CE	Reriutaba
2311801	11801	Russas	1	23	2305	23023	CE	Russas
2311900	11900	Saboeiro	1	23	2304	23020	CE	Saboeiro
2311959	11959	Salitre	1	23	2307	23029	CE	Salitre
2312205	12205	Santa Quitéria	1	23	2301	23007	CE	Santa Quiteria
2312007	12007	Santana do Acaraú	1	23	2301	23005	CE	Santana do Acarau
2312106	12106	Santana do Cariri	1	23	2307	23032	CE	Santana do Cariri
2312304	12304	São Benedito	1	23	2301	23002	CE	Sao Benedito
2312403	12403	São Gonçalo do Amarante	1	23	2302	23009	CE	Sao Goncalo do Amarante
2312502	12502	São João do Jaguaribe	1	23	2305	23023	CE	Sao Joao do Jaguaribe
2312601	12601	São Luís do Curu	1	23	2302	23011	CE	Sao Luis do Curu
2312700	12700	Senador Pompeu	1	23	2304	23021	CE	Senador Pompeu
2312809	12809	Senador Sá	1	23	2301	23005	CE	Senador Sa
2312908	12908	Sobral	1	23	2301	23005	CE	Sobral
2313005	13005	Solonópole	1	23	2304	23021	CE	Solonopole
2313104	13104	Tabuleiro do Norte	1	23	2305	23023	CE	Tabuleiro do Norte
2313203	13203	Tamboril	1	23	2304	23018	CE	Tamboril
2313252	13252	Tarrafas	1	23	2306	23027	CE	Tarrafas
2313302	13302	Tauá	1	23	2304	23020	CE	Taua
2313351	13351	Tejuçuoca	1	23	2302	23011	CE	Tejucuoca
2313401	13401	Tianguá	1	23	2301	23002	CE	Tiangua
2313500	13500	Trairi	1	23	2302	23008	CE	Trairi
2313559	13559	Tururu	1	23	2302	23010	CE	Tururu
2313609	13609	Ubajara	1	23	2301	23002	CE	Ubajara
2313708	13708	Umari	1	23	2306	23028	CE	Umari
2313757	13757	Umirim	1	23	2302	23010	CE	Umirim
2313807	13807	Uruburetama	1	23	2302	23010	CE	Uruburetama
2313906	13906	Uruoca	1	23	2301	23003	CE	Uruoca
2313955	13955	Varjota	1	23	2301	23006	CE	Varjota
2314003	14003	Várzea Alegre	1	23	2306	23027	CE	Varzea Alegre
2314102	14102	Viçosa do Ceará	1	23	2301	23002	CE	Vicosa do Ceara
2400109	109	Acari	1	24	2402	24012	RN	Acari
2400208	208	Açu	1	24	2401	24004	RN	Acu
2400307	307	Afonso Bezerra	1	24	2402	24009	RN	Afonso Bezerra
2400406	406	Água Nova	1	24	2401	24005	RN	Agua Nova
2400505	505	Alexandria	1	24	2401	24006	RN	Alexandria
2400604	604	Almino Afonso	1	24	2401	24007	RN	Almino Afonso
2400703	703	Alto do Rodrigues	1	24	2401	24004	RN	Alto do Rodrigues
2400802	802	Angicos	1	24	2402	24009	RN	Angicos
2400901	901	Antônio Martins	1	24	2401	24007	RN	Antonio Martins
2401008	1008	Apodi	1	24	2401	24002	RN	Apodi
2401107	1107	Areia Branca	1	24	2401	24001	RN	Areia Branca
2401206	1206	Arês	1	24	2404	24019	RN	Ares
2401404	1404	Baía Formosa	1	24	2404	24019	RN	Baia Formosa
2401453	1453	Baraúna	1	24	2401	24001	RN	Barauna
2401503	1503	Barcelona	1	24	2403	24014	RN	Barcelona
2401602	1602	Bento Fernandes	1	24	2403	24013	RN	Bento Fernandes
2401651	1651	Bodó	1	24	2402	24010	RN	Bodo
2401701	1701	Bom Jesus	1	24	2403	24015	RN	Bom Jesus
2401800	1800	Brejinho	1	24	2403	24015	RN	Brejinho
2401859	1859	Caiçara do Norte	1	24	2402	24008	RN	Caicara do Norte
2401909	1909	Caiçara do Rio do Vento	1	24	2402	24009	RN	Caicara do Rio do Vento
2402006	2006	Caicó	1	24	2402	24011	RN	Caico
2402105	2105	Campo Redondo	1	24	2403	24014	RN	Campo Redondo
2402204	2204	Canguaretama	1	24	2404	24019	RN	Canguaretama
2402303	2303	Caraúbas	1	24	2401	24002	RN	Caraubas
2402402	2402	Carnaúba dos Dantas	1	24	2402	24012	RN	Carnauba dos Dantas
2402501	2501	Carnaubais	1	24	2401	24004	RN	Carnaubais
2402600	2600	Ceará-Mirim	1	24	2404	24017	RN	Ceara-Mirim
2402709	2709	Cerro Corá	1	24	2402	24010	RN	Cerro Cora
2402808	2808	Coronel Ezequiel	1	24	2403	24014	RN	Coronel Ezequiel
2402907	2907	Coronel João Pessoa	1	24	2401	24005	RN	Coronel Joao Pessoa
2403004	3004	Cruzeta	1	24	2402	24012	RN	Cruzeta
2403103	3103	Currais Novos	1	24	2402	24012	RN	Currais Novos
2403202	3202	Doutor Severiano	1	24	2401	24005	RN	Doutor Severiano
2403301	3301	Encanto	1	24	2401	24005	RN	Encanto
2403400	3400	Equador	1	24	2402	24012	RN	Equador
2403509	3509	Espírito Santo	1	24	2404	24019	RN	Espirito Santo
2403608	3608	Extremoz	1	24	2404	24018	RN	Extremoz
2403707	3707	Felipe Guerra	1	24	2401	24002	RN	Felipe Guerra
2403756	3756	Fernando Pedroza	1	24	2402	24009	RN	Fernando Pedroza
2403806	3806	Florânia	1	24	2402	24010	RN	Florania
2403905	3905	Francisco Dantas	1	24	2401	24006	RN	Francisco Dantas
2404002	4002	Frutuoso Gomes	1	24	2401	24007	RN	Frutuoso Gomes
2404101	4101	Galinhos	1	24	2402	24008	RN	Galinhos
2404200	4200	Goianinha	1	24	2404	24019	RN	Goianinha
2404309	4309	Governador Dix-Sept Rosado	1	24	2401	24002	RN	Governador Dix-Sept Rosado
2404408	4408	Grossos	1	24	2401	24001	RN	Grossos
2404507	4507	Guamaré	1	24	2402	24008	RN	Guamare
2404606	4606	Ielmo Marinho	1	24	2403	24015	RN	Ielmo Marinho
2404705	4705	Ipanguaçu	1	24	2401	24004	RN	Ipanguacu
2404804	4804	Ipueira	1	24	2402	24011	RN	Ipueira
2404853	4853	Itajá	1	24	2401	24004	RN	Itaja
2404903	4903	Itaú	1	24	2401	24006	RN	Itau
2405009	5009	Jaçanã	1	24	2403	24014	RN	Jacana
2405108	5108	Jandaíra	1	24	2403	24013	RN	Jandaira
2405207	5207	Janduís	1	24	2401	24003	RN	Janduis
2405405	5405	Japi	1	24	2403	24014	RN	Japi
2405504	5504	Jardim de Angicos	1	24	2402	24009	RN	Jardim de Angicos
2405603	5603	Jardim de Piranhas	1	24	2402	24011	RN	Jardim de Piranhas
2405702	5702	Jardim do Seridó	1	24	2402	24012	RN	Jardim do Serido
2405801	5801	João Câmara	1	24	2403	24013	RN	Joao Camara
2405900	5900	João Dias	1	24	2401	24007	RN	Joao Dias
2406007	6007	José da Penha	1	24	2401	24006	RN	Jose da Penha
2406106	6106	Jucurutu	1	24	2401	24004	RN	Jucurutu
2406155	6155	Jundiá	1	24	2403	24015	RN	Jundia
2406205	6205	Lagoa d'Anta	1	24	2403	24015	RN	Lagoa d'Anta
2406304	6304	Lagoa de Pedras	1	24	2403	24015	RN	Lagoa de Pedras
2406403	6403	Lagoa de Velhos	1	24	2403	24014	RN	Lagoa de Velhos
2406502	6502	Lagoa Nova	1	24	2402	24010	RN	Lagoa Nova
2406601	6601	Lagoa Salgada	1	24	2403	24015	RN	Lagoa Salgada
2406700	6700	Lajes	1	24	2402	24009	RN	Lajes
2406809	6809	Lajes Pintadas	1	24	2403	24014	RN	Lajes Pintadas
2406908	6908	Lucrécia	1	24	2401	24007	RN	Lucrecia
2407005	7005	Luís Gomes	1	24	2401	24005	RN	Luis Gomes
2407104	7104	Macaíba	1	24	2404	24017	RN	Macaiba
2407203	7203	Macau	1	24	2402	24008	RN	Macau
2407252	7252	Major Sales	1	24	2401	24005	RN	Major Sales
2407302	7302	Marcelino Vieira	1	24	2401	24006	RN	Marcelino Vieira
2407401	7401	Martins	1	24	2401	24007	RN	Martins
2407500	7500	Maxaranguape	1	24	2404	24016	RN	Maxaranguape
2407609	7609	Messias Targino	1	24	2401	24003	RN	Messias Targino
2407708	7708	Montanhas	1	24	2404	24019	RN	Montanhas
2407807	7807	Monte Alegre	1	24	2403	24015	RN	Monte Alegre
2407906	7906	Monte das Gameleiras	1	24	2403	24014	RN	Monte das Gameleiras
2408003	8003	Mossoró	1	24	2401	24001	RN	Mossoro
2408102	8102	Natal	1	24	2404	24018	RN	Natal
2408201	8201	Nísia Floresta	1	24	2404	24017	RN	Nisia Floresta
2408300	8300	Nova Cruz	1	24	2403	24015	RN	Nova Cruz
2408409	8409	Olho-d'Água do Borges	1	24	2401	24007	RN	Olho-d'Agua do Borges
2408508	8508	Ouro Branco	1	24	2402	24012	RN	Ouro Branco
2408607	8607	Paraná	1	24	2401	24006	RN	Parana
2408706	8706	Paraú	1	24	2401	24003	RN	Parau
2408805	8805	Parazinho	1	24	2403	24013	RN	Parazinho
2408904	8904	Parelhas	1	24	2402	24012	RN	Parelhas
2403251	3251	Parnamirim	1	24	2404	24018	RN	Parnamirim
2409100	9100	Passa e Fica	1	24	2403	24015	RN	Passa e Fica
2409209	9209	Passagem	1	24	2403	24015	RN	Passagem
2409308	9308	Patu	1	24	2401	24007	RN	Patu
2409407	9407	Pau dos Ferros	1	24	2401	24006	RN	Pau dos Ferros
2409506	9506	Pedra Grande	1	24	2404	24016	RN	Pedra Grande
2409605	9605	Pedra Preta	1	24	2402	24009	RN	Pedra Preta
2409704	9704	Pedro Avelino	1	24	2402	24009	RN	Pedro Avelino
2409803	9803	Pedro Velho	1	24	2404	24019	RN	Pedro Velho
2409902	9902	Pendências	1	24	2401	24004	RN	Pendencias
2410009	10009	Pilões	1	24	2401	24006	RN	Piloes
2410108	10108	Poço Branco	1	24	2403	24013	RN	Poco Branco
2410207	10207	Portalegre	1	24	2401	24006	RN	Portalegre
2410256	10256	Porto do Mangue	1	24	2401	24004	RN	Porto do Mangue
2410405	10405	Pureza	1	24	2404	24016	RN	Pureza
2410504	10504	Rafael Fernandes	1	24	2401	24006	RN	Rafael Fernandes
2410603	10603	Rafael Godeiro	1	24	2401	24007	RN	Rafael Godeiro
2410702	10702	Riacho da Cruz	1	24	2401	24006	RN	Riacho da Cruz
2410801	10801	Riacho de Santana	1	24	2401	24005	RN	Riacho de Santana
2410900	10900	Riachuelo	1	24	2403	24015	RN	Riachuelo
2408953	8953	Rio do Fogo	1	24	2404	24016	RN	Rio do Fogo
2411007	11007	Rodolfo Fernandes	1	24	2401	24006	RN	Rodolfo Fernandes
2411106	11106	Ruy Barbosa	1	24	2403	24014	RN	Ruy Barbosa
2411205	11205	Santa Cruz	1	24	2403	24014	RN	Santa Cruz
2409332	9332	Santa Maria	1	24	2403	24015	RN	Santa Maria
2411403	11403	Santana do Matos	1	24	2402	24010	RN	Santana do Matos
2411429	11429	Santana do Seridó	1	24	2402	24012	RN	Santana do Serido
2411502	11502	Santo Antônio	1	24	2403	24015	RN	Santo Antonio
2411601	11601	São Bento do Norte	1	24	2402	24008	RN	Sao Bento do Norte
2411700	11700	São Bento do Trairí	1	24	2403	24014	RN	Sao Bento do Trairi
2411809	11809	São Fernando	1	24	2402	24011	RN	Sao Fernando
2411908	11908	São Francisco do Oeste	1	24	2401	24006	RN	Sao Francisco do Oeste
2412005	12005	São Gonçalo do Amarante	1	24	2404	24017	RN	Sao Goncalo do Amarante
2412104	12104	São João do Sabugi	1	24	2402	24011	RN	Sao Joao do Sabugi
2412203	12203	São José de Mipibu	1	24	2404	24017	RN	Sao Jose de Mipibu
2412302	12302	São José do Campestre	1	24	2403	24014	RN	Sao Jose do Campestre
2412401	12401	São José do Seridó	1	24	2402	24012	RN	Sao Jose do Serido
2412500	12500	São Miguel	1	24	2401	24005	RN	Sao Miguel
2412559	12559	São Miguel do Gostoso	1	24	2404	24016	RN	Sao Miguel do Gostoso
2412609	12609	São Paulo do Potengi	1	24	2403	24015	RN	Sao Paulo do Potengi
2412708	12708	São Pedro	1	24	2403	24015	RN	Sao Pedro
2412807	12807	São Rafael	1	24	2401	24004	RN	Sao Rafael
2412906	12906	São Tomé	1	24	2403	24014	RN	Sao Tome
2413003	13003	São Vicente	1	24	2402	24010	RN	Sao Vicente
2413102	13102	Senador Elói de Souza	1	24	2403	24015	RN	Senador Eloi de Souza
2413201	13201	Senador Georgino Avelino	1	24	2404	24019	RN	Senador Georgino Avelino
2410306	10306	Serra Caiada	1	24	2403	24015	RN	Serra Caiada
2413300	13300	Serra de São Bento	1	24	2403	24014	RN	Serra de Sao Bento
2413359	13359	Serra do Mel	1	24	2401	24001	RN	Serra do Mel
2413409	13409	Serra Negra do Norte	1	24	2402	24011	RN	Serra Negra do Norte
2413508	13508	Serrinha	1	24	2403	24015	RN	Serrinha
2413557	13557	Serrinha dos Pintos	1	24	2401	24007	RN	Serrinha dos Pintos
2413607	13607	Severiano Melo	1	24	2401	24006	RN	Severiano Melo
2413706	13706	Sítio Novo	1	24	2403	24014	RN	Sitio Novo
2413805	13805	Taboleiro Grande	1	24	2401	24006	RN	Taboleiro Grande
2413904	13904	Taipu	1	24	2404	24016	RN	Taipu
2414001	14001	Tangará	1	24	2403	24014	RN	Tangara
2414100	14100	Tenente Ananias	1	24	2401	24006	RN	Tenente Ananias
2414159	14159	Tenente Laurentino Cruz	1	24	2402	24010	RN	Tenente Laurentino Cruz
2411056	11056	Tibau	1	24	2401	24001	RN	Tibau
2414209	14209	Tibau do Sul	1	24	2404	24019	RN	Tibau do Sul
2414308	14308	Timbaúba dos Batistas	1	24	2402	24011	RN	Timbauba dos Batistas
2414407	14407	Touros	1	24	2404	24016	RN	Touros
2414456	14456	Triunfo Potiguar	1	24	2401	24003	RN	Triunfo Potiguar
2414506	14506	Umarizal	1	24	2401	24007	RN	Umarizal
2414605	14605	Upanema	1	24	2401	24003	RN	Upanema
2414704	14704	Várzea	1	24	2403	24015	RN	Varzea
2414753	14753	Venha-Ver	1	24	2401	24005	RN	Venha-Ver
2414803	14803	Vera Cruz	1	24	2403	24015	RN	Vera Cruz
2414902	14902	Viçosa	1	24	2401	24006	RN	Vicosa
2415008	15008	Vila Flor	1	24	2404	24019	RN	Vila Flor
2500106	106	Água Branca	1	25	2501	25007	PB	Agua Branca
2500205	205	Aguiar	1	25	2501	25005	PB	Aguiar
2500304	304	Alagoa Grande	1	25	2503	25015	PB	Alagoa Grande
2500403	403	Alagoa Nova	1	25	2503	25015	PB	Alagoa Nova
2500502	502	Alagoinha	1	25	2503	25016	PB	Alagoinha
2500536	536	Alcantil	1	25	2502	25011	PB	Alcantil
2500577	577	Algodão de Jandaíra	1	25	2503	25012	PB	Algodao de Jandaira
2500601	601	Alhandra	1	25	2504	25023	PB	Alhandra
2500734	734	Amparo	1	25	2502	25010	PB	Amparo
2500775	775	Aparecida	1	25	2501	25003	PB	Aparecida
2500809	809	Araçagi	1	25	2503	25016	PB	Aracagi
2500908	908	Arara	1	25	2503	25012	PB	Arara
2501005	1005	Araruna	1	25	2503	25013	PB	Araruna
2501104	1104	Areia	1	25	2503	25015	PB	Areia
2501153	1153	Areia de Baraúnas	1	25	2501	25004	PB	Areia de Baraunas
2501203	1203	Areial	1	25	2503	25014	PB	Areial
2501302	1302	Aroeiras	1	25	2503	25019	PB	Aroeiras
2501351	1351	Assunção	1	25	2502	25010	PB	Assuncao
2501401	1401	Baía da Traição	1	25	2504	25020	PB	Baia da Traicao
2501500	1500	Bananeiras	1	25	2503	25015	PB	Bananeiras
2501534	1534	Baraúna	1	25	2502	25009	PB	Barauna
2501609	1609	Barra de Santa Rosa	1	25	2503	25012	PB	Barra de Santa Rosa
2501575	1575	Barra de Santana	1	25	2502	25011	PB	Barra de Santana
2501708	1708	Barra de São Miguel	1	25	2502	25011	PB	Barra de Sao Miguel
2501807	1807	Bayeux	1	25	2504	25022	PB	Bayeux
2501906	1906	Belém	1	25	2503	25016	PB	Belem
2502003	2003	Belém do Brejo do Cruz	1	25	2501	25001	PB	Belem do Brejo do Cruz
2502052	2052	Bernardino Batista	1	25	2501	25002	PB	Bernardino Batista
2502102	2102	Boa Ventura	1	25	2501	25006	PB	Boa Ventura
2502151	2151	Boa Vista	1	25	2503	25017	PB	Boa Vista
2502201	2201	Bom Jesus	1	25	2501	25002	PB	Bom Jesus
2502300	2300	Bom Sucesso	1	25	2501	25001	PB	Bom Sucesso
2502409	2409	Bonito de Santa Fé	1	25	2501	25002	PB	Bonito de Santa Fe
2502508	2508	Boqueirão	1	25	2502	25011	PB	Boqueirao
2502706	2706	Borborema	1	25	2503	25015	PB	Borborema
2502805	2805	Brejo do Cruz	1	25	2501	25001	PB	Brejo do Cruz
2502904	2904	Brejo dos Santos	1	25	2501	25001	PB	Brejo dos Santos
2503001	3001	Caaporã	1	25	2504	25023	PB	Caapora
2503100	3100	Cabaceiras	1	25	2502	25011	PB	Cabaceiras
2503209	3209	Cabedelo	1	25	2504	25022	PB	Cabedelo
2503308	3308	Cachoeira dos Índios	1	25	2501	25002	PB	Cachoeira dos Indios
2503407	3407	Cacimba de Areia	1	25	2501	25004	PB	Cacimba de Areia
2503506	3506	Cacimba de Dentro	1	25	2503	25013	PB	Cacimba de Dentro
2503555	3555	Cacimbas	1	25	2501	25007	PB	Cacimbas
2503605	3605	Caiçara	1	25	2503	25016	PB	Caicara
2503704	3704	Cajazeiras	1	25	2501	25002	PB	Cajazeiras
2503753	3753	Cajazeirinhas	1	25	2501	25003	PB	Cajazeirinhas
2503803	3803	Caldas Brandão	1	25	2503	25018	PB	Caldas Brandao
2503902	3902	Camalaú	1	25	2502	25010	PB	Camalau
2504009	4009	Campina Grande	1	25	2503	25017	PB	Campina Grande
2504033	4033	Capim	1	25	2504	25020	PB	Capim
2504074	4074	Caraúbas	1	25	2502	25011	PB	Caraubas
2504108	4108	Carrapateira	1	25	2501	25002	PB	Carrapateira
2504157	4157	Casserengue	1	25	2503	25013	PB	Casserengue
2504207	4207	Catingueira	1	25	2501	25005	PB	Catingueira
2504306	4306	Catolé do Rocha	1	25	2501	25001	PB	Catole do Rocha
2504355	4355	Caturité	1	25	2502	25011	PB	Caturite
2504405	4405	Conceição	1	25	2501	25006	PB	Conceicao
2504504	4504	Condado	1	25	2501	25003	PB	Condado
2504603	4603	Conde	1	25	2504	25022	PB	Conde
2504702	4702	Congo	1	25	2502	25010	PB	Congo
2504801	4801	Coremas	1	25	2501	25005	PB	Coremas
2504850	4850	Coxixola	1	25	2502	25010	PB	Coxixola
2504900	4900	Cruz do Espírito Santo	1	25	2504	25021	PB	Cruz do Espirito Santo
2505006	5006	Cubati	1	25	2502	25009	PB	Cubati
2505105	5105	Cuité	1	25	2503	25012	PB	Cuite
2505238	5238	Cuité de Mamanguape	1	25	2504	25020	PB	Cuite de Mamanguape
2505204	5204	Cuitegi	1	25	2503	25016	PB	Cuitegi
2505279	5279	Curral de Cima	1	25	2504	25020	PB	Curral de Cima
2505303	5303	Curral Velho	1	25	2501	25006	PB	Curral Velho
2505352	5352	Damião	1	25	2503	25012	PB	Damiao
2505402	5402	Desterro	1	25	2501	25007	PB	Desterro
2505600	5600	Diamante	1	25	2501	25006	PB	Diamante
2505709	5709	Dona Inês	1	25	2503	25013	PB	Dona Ines
2505808	5808	Duas Estradas	1	25	2503	25016	PB	Duas Estradas
2505907	5907	Emas	1	25	2501	25005	PB	Emas
2506004	6004	Esperança	1	25	2503	25014	PB	Esperanca
2506103	6103	Fagundes	1	25	2503	25017	PB	Fagundes
2506202	6202	Frei Martinho	1	25	2502	25009	PB	Frei Martinho
2506251	6251	Gado Bravo	1	25	2503	25019	PB	Gado Bravo
2506301	6301	Guarabira	1	25	2503	25016	PB	Guarabira
2506400	6400	Gurinhém	1	25	2503	25018	PB	Gurinhem
2506509	6509	Gurjão	1	25	2502	25011	PB	Gurjao
2506608	6608	Ibiara	1	25	2501	25006	PB	Ibiara
2502607	2607	Igaracy	1	25	2501	25005	PB	Igaracy
2506707	6707	Imaculada	1	25	2501	25007	PB	Imaculada
2506806	6806	Ingá	1	25	2503	25018	PB	Inga
2506905	6905	Itabaiana	1	25	2503	25018	PB	Itabaiana
2507002	7002	Itaporanga	1	25	2501	25006	PB	Itaporanga
2507101	7101	Itapororoca	1	25	2504	25020	PB	Itapororoca
2507200	7200	Itatuba	1	25	2503	25018	PB	Itatuba
2507309	7309	Jacaraú	1	25	2504	25020	PB	Jacarau
2507408	7408	Jericó	1	25	2501	25001	PB	Jerico
2515906	15906	Serraria	1	25	2503	25015	PB	Serraria
2507507	7507	João Pessoa	1	25	2504	25022	PB	Joao Pessoa
2513653	13653	Joca Claudino	1	25	2501	25002	PB	Joca Claudino
2507606	7606	Juarez Távora	1	25	2503	25018	PB	Juarez Tavora
2507705	7705	Juazeirinho	1	25	2502	25009	PB	Juazeirinho
2507804	7804	Junco do Seridó	1	25	2502	25008	PB	Junco do Serido
2507903	7903	Juripiranga	1	25	2504	25021	PB	Juripiranga
2508000	8000	Juru	1	25	2501	25007	PB	Juru
2508109	8109	Lagoa	1	25	2501	25001	PB	Lagoa
2508208	8208	Lagoa de Dentro	1	25	2503	25016	PB	Lagoa de Dentro
2508307	8307	Lagoa Seca	1	25	2503	25017	PB	Lagoa Seca
2508406	8406	Lastro	1	25	2501	25003	PB	Lastro
2508505	8505	Livramento	1	25	2502	25010	PB	Livramento
2508554	8554	Logradouro	1	25	2503	25016	PB	Logradouro
2508604	8604	Lucena	1	25	2504	25022	PB	Lucena
2508703	8703	Mãe d'Água	1	25	2501	25004	PB	Mae d'Agua
2508802	8802	Malta	1	25	2501	25003	PB	Malta
2508901	8901	Mamanguape	1	25	2504	25020	PB	Mamanguape
2509008	9008	Manaíra	1	25	2501	25007	PB	Manaira
2509057	9057	Marcação	1	25	2504	25020	PB	Marcacao
2509107	9107	Mari	1	25	2504	25021	PB	Mari
2509156	9156	Marizópolis	1	25	2501	25003	PB	Marizopolis
2509206	9206	Massaranduba	1	25	2503	25017	PB	Massaranduba
2509305	9305	Mataraca	1	25	2504	25020	PB	Mataraca
2509339	9339	Matinhas	1	25	2503	25015	PB	Matinhas
2509370	9370	Mato Grosso	1	25	2501	25001	PB	Mato Grosso
2509396	9396	Maturéia	1	25	2501	25007	PB	Matureia
2509404	9404	Mogeiro	1	25	2503	25018	PB	Mogeiro
2509503	9503	Montadas	1	25	2503	25014	PB	Montadas
2509602	9602	Monte Horebe	1	25	2501	25002	PB	Monte Horebe
2509701	9701	Monteiro	1	25	2502	25010	PB	Monteiro
2509800	9800	Mulungu	1	25	2503	25016	PB	Mulungu
2509909	9909	Natuba	1	25	2503	25019	PB	Natuba
2510006	10006	Nazarezinho	1	25	2501	25003	PB	Nazarezinho
2510105	10105	Nova Floresta	1	25	2503	25012	PB	Nova Floresta
2510204	10204	Nova Olinda	1	25	2501	25005	PB	Nova Olinda
2510303	10303	Nova Palmeira	1	25	2502	25009	PB	Nova Palmeira
2510402	10402	Olho d'Água	1	25	2501	25005	PB	Olho d'Agua
2510501	10501	Olivedos	1	25	2503	25012	PB	Olivedos
2510600	10600	Ouro Velho	1	25	2502	25010	PB	Ouro Velho
2510659	10659	Parari	1	25	2502	25010	PB	Parari
2510709	10709	Passagem	1	25	2501	25004	PB	Passagem
2510808	10808	Patos	1	25	2501	25004	PB	Patos
2510907	10907	Paulista	1	25	2501	25003	PB	Paulista
2511004	11004	Pedra Branca	1	25	2501	25006	PB	Pedra Branca
2511103	11103	Pedra Lavrada	1	25	2502	25009	PB	Pedra Lavrada
2511202	11202	Pedras de Fogo	1	25	2504	25023	PB	Pedras de Fogo
2512721	12721	Pedro Régis	1	25	2504	25020	PB	Pedro Regis
2511301	11301	Piancó	1	25	2501	25005	PB	Pianco
2511400	11400	Picuí	1	25	2502	25009	PB	Picui
2511509	11509	Pilar	1	25	2504	25021	PB	Pilar
2511608	11608	Pilões	1	25	2503	25015	PB	Piloes
2511707	11707	Pilõezinhos	1	25	2503	25016	PB	Piloezinhos
2511806	11806	Pirpirituba	1	25	2503	25016	PB	Pirpirituba
2511905	11905	Pitimbu	1	25	2504	25023	PB	Pitimbu
2512002	12002	Pocinhos	1	25	2503	25012	PB	Pocinhos
2512036	12036	Poço Dantas	1	25	2501	25002	PB	Poco Dantas
2512077	12077	Poço de José de Moura	1	25	2501	25002	PB	Poco de Jose de Moura
2512101	12101	Pombal	1	25	2501	25003	PB	Pombal
2512200	12200	Prata	1	25	2502	25010	PB	Prata
2512309	12309	Princesa Isabel	1	25	2501	25007	PB	Princesa Isabel
2512408	12408	Puxinanã	1	25	2503	25017	PB	Puxinana
2512507	12507	Queimadas	1	25	2503	25017	PB	Queimadas
2512606	12606	Quixaba	1	25	2501	25004	PB	Quixaba
2512705	12705	Remígio	1	25	2503	25012	PB	Remigio
2512747	12747	Riachão	1	25	2503	25013	PB	Riachao
2512754	12754	Riachão do Bacamarte	1	25	2503	25018	PB	Riachao do Bacamarte
2512762	12762	Riachão do Poço	1	25	2504	25021	PB	Riachao do Poco
2512788	12788	Riacho de Santo Antônio	1	25	2502	25011	PB	Riacho de Santo Antonio
2512804	12804	Riacho dos Cavalos	1	25	2501	25001	PB	Riacho dos Cavalos
2512903	12903	Rio Tinto	1	25	2504	25020	PB	Rio Tinto
2513000	13000	Salgadinho	1	25	2502	25008	PB	Salgadinho
2513109	13109	Salgado de São Félix	1	25	2503	25018	PB	Salgado de Sao Felix
2513158	13158	Santa Cecília	1	25	2503	25019	PB	Santa Cecilia
2513208	13208	Santa Cruz	1	25	2501	25003	PB	Santa Cruz
2513307	13307	Santa Helena	1	25	2501	25002	PB	Santa Helena
2513356	13356	Santa Inês	1	25	2501	25006	PB	Santa Ines
2513406	13406	Santa Luzia	1	25	2502	25008	PB	Santa Luzia
2513703	13703	Santa Rita	1	25	2504	25022	PB	Santa Rita
2513802	13802	Santa Teresinha	1	25	2501	25004	PB	Santa Teresinha
2513505	13505	Santana de Mangueira	1	25	2501	25006	PB	Santana de Mangueira
2513604	13604	Santana dos Garrotes	1	25	2501	25005	PB	Santana dos Garrotes
2513851	13851	Santo André	1	25	2502	25011	PB	Santo Andre
2513927	13927	São Bentinho	1	25	2501	25003	PB	Sao Bentinho
2513901	13901	São Bento	1	25	2501	25001	PB	Sao Bento
2513943	13943	São Domingos do Cariri	1	25	2502	25011	PB	Sao Domingos do Cariri
2513984	13984	São Francisco	1	25	2501	25003	PB	Sao Francisco
2514008	14008	São João do Cariri	1	25	2502	25011	PB	Sao Joao do Cariri
2500700	700	São João do Rio do Peixe	1	25	2501	25002	PB	Sao Joao do Rio do Peixe
2514107	14107	São João do Tigre	1	25	2502	25010	PB	Sao Joao do Tigre
2514206	14206	São José da Lagoa Tapada	1	25	2501	25003	PB	Sao Jose da Lagoa Tapada
2514305	14305	São José de Caiana	1	25	2501	25006	PB	Sao Jose de Caiana
2514404	14404	São José de Espinharas	1	25	2501	25004	PB	Sao Jose de Espinharas
2514503	14503	São José de Piranhas	1	25	2501	25002	PB	Sao Jose de Piranhas
2514552	14552	São José de Princesa	1	25	2501	25007	PB	Sao Jose de Princesa
2514602	14602	São José do Bonfim	1	25	2501	25004	PB	Sao Jose do Bonfim
2514651	14651	São José do Brejo do Cruz	1	25	2501	25001	PB	Sao Jose do Brejo do Cruz
2514701	14701	São José do Sabugi	1	25	2502	25008	PB	Sao Jose do Sabugi
2514800	14800	São José dos Cordeiros	1	25	2502	25010	PB	Sao Jose dos Cordeiros
2514453	14453	São José dos Ramos	1	25	2504	25021	PB	Sao Jose dos Ramos
2514909	14909	São Mamede	1	25	2502	25008	PB	Sao Mamede
2515005	15005	São Miguel de Taipu	1	25	2504	25021	PB	Sao Miguel de Taipu
2515104	15104	São Sebastião de Lagoa de Roça	1	25	2503	25014	PB	Sao Sebastiao de Lagoa de Roca
2515203	15203	São Sebastião do Umbuzeiro	1	25	2502	25010	PB	Sao Sebastiao do Umbuzeiro
2515401	15401	São Vicente do Seridó	1	25	2502	25009	PB	Sao Vicente do Serido
2515302	15302	Sapé	1	25	2504	25021	PB	Sape
2515500	15500	Serra Branca	1	25	2502	25010	PB	Serra Branca
2515609	15609	Serra da Raiz	1	25	2503	25016	PB	Serra da Raiz
2515708	15708	Serra Grande	1	25	2501	25006	PB	Serra Grande
2515807	15807	Serra Redonda	1	25	2503	25017	PB	Serra Redonda
2515930	15930	Sertãozinho	1	25	2503	25016	PB	Sertaozinho
2515971	15971	Sobrado	1	25	2504	25021	PB	Sobrado
2516003	16003	Solânea	1	25	2503	25013	PB	Solanea
2516102	16102	Soledade	1	25	2503	25012	PB	Soledade
2516151	16151	Sossêgo	1	25	2503	25012	PB	Sossego
2516201	16201	Sousa	1	25	2501	25003	PB	Sousa
2516300	16300	Sumé	1	25	2502	25010	PB	Sume
2516409	16409	Tacima	1	25	2503	25013	PB	Tacima
2516508	16508	Taperoá	1	25	2502	25010	PB	Taperoa
2516607	16607	Tavares	1	25	2501	25007	PB	Tavares
2516706	16706	Teixeira	1	25	2501	25007	PB	Teixeira
2516755	16755	Tenório	1	25	2502	25009	PB	Tenorio
2516805	16805	Triunfo	1	25	2501	25002	PB	Triunfo
2516904	16904	Uiraúna	1	25	2501	25002	PB	Uirauna
2517001	17001	Umbuzeiro	1	25	2503	25019	PB	Umbuzeiro
2517100	17100	Várzea	1	25	2502	25008	PB	Varzea
2517209	17209	Vieirópolis	1	25	2501	25003	PB	Vieiropolis
2505501	5501	Vista Serrana	1	25	2501	25003	PB	Vista Serrana
2517407	17407	Zabelê	1	25	2502	25010	PB	Zabele
2600054	54	Abreu e Lima	1	26	2605	26017	PE	Abreu e Lima
2600104	104	Afogados da Ingazeira	1	26	2601	26003	PE	Afogados da Ingazeira
2600203	203	Afrânio	1	26	2602	26005	PE	Afranio
2600302	302	Agrestina	1	26	2603	26012	PE	Agrestina
2600401	401	Água Preta	1	26	2604	26015	PE	Agua Preta
2600500	500	Águas Belas	1	26	2603	26007	PE	Aguas Belas
2600609	609	Alagoinha	1	26	2603	26008	PE	Alagoinha
2600708	708	Aliança	1	26	2604	26013	PE	Alianca
2600807	807	Altinho	1	26	2603	26012	PE	Altinho
2600906	906	Amaraji	1	26	2604	26015	PE	Amaraji
2601003	1003	Angelim	1	26	2603	26011	PE	Angelim
2601052	1052	Araçoiaba	1	26	2605	26016	PE	Aracoiaba
2601102	1102	Araripina	1	26	2601	26001	PE	Araripina
2601201	1201	Arcoverde	1	26	2601	26004	PE	Arcoverde
2601300	1300	Barra de Guabiraba	1	26	2603	26012	PE	Barra de Guabiraba
2601409	1409	Barreiros	1	26	2604	26015	PE	Barreiros
2601508	1508	Belém de Maria	1	26	2604	26015	PE	Belem de Maria
2601607	1607	Belém do São Francisco	1	26	2602	26006	PE	Belem do Sao Francisco
2601706	1706	Belo Jardim	1	26	2603	26008	PE	Belo Jardim
2601805	1805	Betânia	1	26	2601	26004	PE	Betania
2601904	1904	Bezerros	1	26	2603	26008	PE	Bezerros
2602001	2001	Bodocó	1	26	2601	26001	PE	Bodoco
2602100	2100	Bom Conselho	1	26	2603	26011	PE	Bom Conselho
2602209	2209	Bom Jardim	1	26	2603	26010	PE	Bom Jardim
2602308	2308	Bonito	1	26	2603	26012	PE	Bonito
2602407	2407	Brejão	1	26	2603	26011	PE	Brejao
2602506	2506	Brejinho	1	26	2601	26003	PE	Brejinho
2602605	2605	Brejo da Madre de Deus	1	26	2603	26008	PE	Brejo da Madre de Deus
2602704	2704	Buenos Aires	1	26	2604	26013	PE	Buenos Aires
2602803	2803	Buíque	1	26	2603	26007	PE	Buique
2602902	2902	Cabo de Santo Agostinho	1	26	2605	26018	PE	Cabo de Santo Agostinho
2603009	3009	Cabrobó	1	26	2602	26005	PE	Cabrobo
2603108	3108	Cachoeirinha	1	26	2603	26008	PE	Cachoeirinha
2603207	3207	Caetés	1	26	2603	26011	PE	Caetes
2603306	3306	Calçado	1	26	2603	26011	PE	Calcado
2603405	3405	Calumbi	1	26	2601	26003	PE	Calumbi
2603454	3454	Camaragibe	1	26	2605	26017	PE	Camaragibe
2603504	3504	Camocim de São Félix	1	26	2603	26012	PE	Camocim de Sao Felix
2603603	3603	Camutanga	1	26	2604	26013	PE	Camutanga
2603702	3702	Canhotinho	1	26	2603	26011	PE	Canhotinho
2603801	3801	Capoeiras	1	26	2603	26008	PE	Capoeiras
2603900	3900	Carnaíba	1	26	2601	26003	PE	Carnaiba
2603926	3926	Carnaubeira da Penha	1	26	2602	26006	PE	Carnaubeira da Penha
2604007	4007	Carpina	1	26	2604	26013	PE	Carpina
2604106	4106	Caruaru	1	26	2603	26008	PE	Caruaru
2604155	4155	Casinhas	1	26	2603	26009	PE	Casinhas
2604205	4205	Catende	1	26	2604	26015	PE	Catende
2604304	4304	Cedro	1	26	2601	26002	PE	Cedro
2604403	4403	Chã de Alegria	1	26	2604	26014	PE	Cha de Alegria
2604502	4502	Chã Grande	1	26	2604	26014	PE	Cha Grande
2604601	4601	Condado	1	26	2604	26013	PE	Condado
2604700	4700	Correntes	1	26	2603	26011	PE	Correntes
2604809	4809	Cortês	1	26	2604	26015	PE	Cortes
2604908	4908	Cumaru	1	26	2603	26010	PE	Cumaru
2605004	5004	Cupira	1	26	2603	26012	PE	Cupira
2605103	5103	Custódia	1	26	2601	26004	PE	Custodia
2605152	5152	Dormentes	1	26	2602	26005	PE	Dormentes
2605202	5202	Escada	1	26	2604	26015	PE	Escada
2605301	5301	Exu	1	26	2601	26001	PE	Exu
2605400	5400	Feira Nova	1	26	2603	26010	PE	Feira Nova
2605459	5459	Fernando de Noronha	1	26	2605	26019	PE	Fernando de Noronha
2605509	5509	Ferreiros	1	26	2604	26013	PE	Ferreiros
2605608	5608	Flores	1	26	2601	26003	PE	Flores
2605707	5707	Floresta	1	26	2602	26006	PE	Floresta
2605806	5806	Frei Miguelinho	1	26	2603	26009	PE	Frei Miguelinho
2605905	5905	Gameleira	1	26	2604	26015	PE	Gameleira
2606002	6002	Garanhuns	1	26	2603	26011	PE	Garanhuns
2606101	6101	Glória do Goitá	1	26	2604	26014	PE	Gloria do Goita
2606200	6200	Goiana	1	26	2604	26013	PE	Goiana
2606309	6309	Granito	1	26	2601	26001	PE	Granito
2606408	6408	Gravatá	1	26	2603	26008	PE	Gravata
2606507	6507	Iati	1	26	2603	26011	PE	Iati
2606606	6606	Ibimirim	1	26	2601	26004	PE	Ibimirim
2606705	6705	Ibirajuba	1	26	2603	26012	PE	Ibirajuba
2606804	6804	Igarassu	1	26	2605	26016	PE	Igarassu
2606903	6903	Iguaracy	1	26	2601	26003	PE	Iguaracy
2607604	7604	Ilha de Itamaracá	1	26	2605	26016	PE	Ilha de Itamaraca
2607000	7000	Inajá	1	26	2601	26004	PE	Inaja
2607109	7109	Ingazeira	1	26	2601	26003	PE	Ingazeira
2607208	7208	Ipojuca	1	26	2605	26018	PE	Ipojuca
2607307	7307	Ipubi	1	26	2601	26001	PE	Ipubi
2607406	7406	Itacuruba	1	26	2602	26006	PE	Itacuruba
2607505	7505	Itaíba	1	26	2603	26007	PE	Itaiba
2607653	7653	Itambé	1	26	2604	26013	PE	Itambe
2607703	7703	Itapetim	1	26	2601	26003	PE	Itapetim
2607752	7752	Itapissuma	1	26	2605	26016	PE	Itapissuma
2607802	7802	Itaquitinga	1	26	2604	26013	PE	Itaquitinga
2607901	7901	Jaboatão dos Guararapes	1	26	2605	26017	PE	Jaboatao dos Guararapes
2607950	7950	Jaqueira	1	26	2604	26015	PE	Jaqueira
2608008	8008	Jataúba	1	26	2603	26008	PE	Jatauba
2608057	8057	Jatobá	1	26	2602	26006	PE	Jatoba
2608107	8107	João Alfredo	1	26	2603	26010	PE	Joao Alfredo
2608206	8206	Joaquim Nabuco	1	26	2604	26015	PE	Joaquim Nabuco
2608255	8255	Jucati	1	26	2603	26011	PE	Jucati
2608305	8305	Jupi	1	26	2603	26011	PE	Jupi
2608404	8404	Jurema	1	26	2603	26011	PE	Jurema
2608503	8503	Lagoa de Itaenga	1	26	2604	26013	PE	Lagoa de Itaenga
2608453	8453	Lagoa do Carro	1	26	2604	26013	PE	Lagoa do Carro
2608602	8602	Lagoa do Ouro	1	26	2603	26011	PE	Lagoa do Ouro
2608701	8701	Lagoa dos Gatos	1	26	2603	26012	PE	Lagoa dos Gatos
2608750	8750	Lagoa Grande	1	26	2602	26005	PE	Lagoa Grande
2608800	8800	Lajedo	1	26	2603	26011	PE	Lajedo
2608909	8909	Limoeiro	1	26	2603	26010	PE	Limoeiro
2609006	9006	Macaparana	1	26	2604	26013	PE	Macaparana
2609105	9105	Machados	1	26	2603	26010	PE	Machados
2609154	9154	Manari	1	26	2601	26004	PE	Manari
2609204	9204	Maraial	1	26	2604	26015	PE	Maraial
2609303	9303	Mirandiba	1	26	2601	26002	PE	Mirandiba
2614303	14303	Moreilândia	1	26	2601	26001	PE	Moreilandia
2609402	9402	Moreno	1	26	2605	26017	PE	Moreno
2609501	9501	Nazaré da Mata	1	26	2604	26013	PE	Nazare da Mata
2609600	9600	Olinda	1	26	2605	26017	PE	Olinda
2609709	9709	Orobó	1	26	2603	26010	PE	Orobo
2609808	9808	Orocó	1	26	2602	26005	PE	Oroco
2609907	9907	Ouricuri	1	26	2601	26001	PE	Ouricuri
2610004	10004	Palmares	1	26	2604	26015	PE	Palmares
2610103	10103	Palmeirina	1	26	2603	26011	PE	Palmeirina
2610202	10202	Panelas	1	26	2603	26012	PE	Panelas
2610301	10301	Paranatama	1	26	2603	26011	PE	Paranatama
2610400	10400	Parnamirim	1	26	2601	26002	PE	Parnamirim
2610509	10509	Passira	1	26	2603	26010	PE	Passira
2610608	10608	Paudalho	1	26	2604	26013	PE	Paudalho
2610707	10707	Paulista	1	26	2605	26017	PE	Paulista
2610806	10806	Pedra	1	26	2603	26007	PE	Pedra
2610905	10905	Pesqueira	1	26	2603	26008	PE	Pesqueira
2611002	11002	Petrolândia	1	26	2602	26006	PE	Petrolandia
2611101	11101	Petrolina	1	26	2602	26005	PE	Petrolina
2611200	11200	Poção	1	26	2603	26008	PE	Pocao
2611309	11309	Pombos	1	26	2604	26014	PE	Pombos
2611408	11408	Primavera	1	26	2604	26015	PE	Primavera
2611507	11507	Quipapá	1	26	2604	26015	PE	Quipapa
2611533	11533	Quixaba	1	26	2601	26003	PE	Quixaba
2611606	11606	Recife	1	26	2605	26017	PE	Recife
2611705	11705	Riacho das Almas	1	26	2603	26008	PE	Riacho das Almas
2611804	11804	Ribeirão	1	26	2604	26015	PE	Ribeirao
2611903	11903	Rio Formoso	1	26	2604	26015	PE	Rio Formoso
2612000	12000	Sairé	1	26	2603	26012	PE	Saire
2612109	12109	Salgadinho	1	26	2603	26010	PE	Salgadinho
2612208	12208	Salgueiro	1	26	2601	26002	PE	Salgueiro
2612307	12307	Saloá	1	26	2603	26011	PE	Saloa
2612406	12406	Sanharó	1	26	2603	26008	PE	Sanharo
2612455	12455	Santa Cruz	1	26	2601	26001	PE	Santa Cruz
2612471	12471	Santa Cruz da Baixa Verde	1	26	2601	26003	PE	Santa Cruz da Baixa Verde
2612505	12505	Santa Cruz do Capibaribe	1	26	2603	26009	PE	Santa Cruz do Capibaribe
2612554	12554	Santa Filomena	1	26	2601	26001	PE	Santa Filomena
2612604	12604	Santa Maria da Boa Vista	1	26	2602	26005	PE	Santa Maria da Boa Vista
2612703	12703	Santa Maria do Cambucá	1	26	2603	26009	PE	Santa Maria do Cambuca
2612802	12802	Santa Terezinha	1	26	2601	26003	PE	Santa Terezinha
2612901	12901	São Benedito do Sul	1	26	2604	26015	PE	Sao Benedito do Sul
2613008	13008	São Bento do Una	1	26	2603	26008	PE	Sao Bento do Una
2613107	13107	São Caitano	1	26	2603	26008	PE	Sao Caitano
2613206	13206	São João	1	26	2603	26011	PE	Sao Joao
2613305	13305	São Joaquim do Monte	1	26	2603	26012	PE	Sao Joaquim do Monte
2613404	13404	São José da Coroa Grande	1	26	2604	26015	PE	Sao Jose da Coroa Grande
2613503	13503	São José do Belmonte	1	26	2601	26002	PE	Sao Jose do Belmonte
2613602	13602	São José do Egito	1	26	2601	26003	PE	Sao Jose do Egito
2613701	13701	São Lourenço da Mata	1	26	2605	26017	PE	Sao Lourenco da Mata
2613800	13800	São Vicente Ferrer	1	26	2603	26010	PE	Sao Vicente Ferrer
2613909	13909	Serra Talhada	1	26	2601	26003	PE	Serra Talhada
2614006	14006	Serrita	1	26	2601	26002	PE	Serrita
2614105	14105	Sertânia	1	26	2601	26004	PE	Sertania
2614204	14204	Sirinhaém	1	26	2604	26015	PE	Sirinhaem
2614402	14402	Solidão	1	26	2601	26003	PE	Solidao
2614501	14501	Surubim	1	26	2603	26009	PE	Surubim
2614600	14600	Tabira	1	26	2601	26003	PE	Tabira
2614709	14709	Tacaimbó	1	26	2603	26008	PE	Tacaimbo
2614808	14808	Tacaratu	1	26	2602	26006	PE	Tacaratu
2614857	14857	Tamandaré	1	26	2604	26015	PE	Tamandare
2615003	15003	Taquaritinga do Norte	1	26	2603	26009	PE	Taquaritinga do Norte
2615102	15102	Terezinha	1	26	2603	26011	PE	Terezinha
2615201	15201	Terra Nova	1	26	2602	26005	PE	Terra Nova
2615300	15300	Timbaúba	1	26	2604	26013	PE	Timbauba
2615409	15409	Toritama	1	26	2603	26009	PE	Toritama
2615508	15508	Tracunhaém	1	26	2604	26013	PE	Tracunhaem
2615607	15607	Trindade	1	26	2601	26001	PE	Trindade
2615706	15706	Triunfo	1	26	2601	26003	PE	Triunfo
2615805	15805	Tupanatinga	1	26	2603	26007	PE	Tupanatinga
2615904	15904	Tuparetama	1	26	2601	26003	PE	Tuparetama
2616001	16001	Venturosa	1	26	2603	26007	PE	Venturosa
2616100	16100	Verdejante	1	26	2601	26002	PE	Verdejante
2616183	16183	Vertente do Lério	1	26	2603	26009	PE	Vertente do Lerio
2616209	16209	Vertentes	1	26	2603	26009	PE	Vertentes
2616308	16308	Vicência	1	26	2604	26013	PE	Vicencia
2616407	16407	Vitória de Santo Antão	1	26	2604	26014	PE	Vitoria de Santo Antao
2616506	16506	Xexéu	1	26	2604	26015	PE	Xexeu
2700102	102	Água Branca	1	27	2701	27001	AL	Agua Branca
2700201	201	Anadia	1	27	2703	27012	AL	Anadia
2700300	300	Arapiraca	1	27	2702	27006	AL	Arapiraca
2700409	409	Atalaia	1	27	2703	27009	AL	Atalaia
2700508	508	Barra de Santo Antônio	1	27	2703	27011	AL	Barra de Santo Antonio
2700607	607	Barra de São Miguel	1	27	2703	27011	AL	Barra de Sao Miguel
2700706	706	Batalha	1	27	2701	27004	AL	Batalha
2700805	805	Belém	1	27	2702	27005	AL	Belem
2700904	904	Belo Monte	1	27	2701	27004	AL	Belo Monte
2701001	1001	Boca da Mata	1	27	2703	27012	AL	Boca da Mata
2701100	1100	Branquinha	1	27	2703	27009	AL	Branquinha
2701209	1209	Cacimbinhas	1	27	2702	27005	AL	Cacimbinhas
2701308	1308	Cajueiro	1	27	2703	27009	AL	Cajueiro
2701357	1357	Campestre	1	27	2703	27009	AL	Campestre
2701407	1407	Campo Alegre	1	27	2703	27012	AL	Campo Alegre
2701506	1506	Campo Grande	1	27	2702	27006	AL	Campo Grande
2701605	1605	Canapi	1	27	2701	27001	AL	Canapi
2701704	1704	Capela	1	27	2703	27009	AL	Capela
2701803	1803	Carneiros	1	27	2701	27003	AL	Carneiros
2701902	1902	Chã Preta	1	27	2703	27008	AL	Cha Preta
2702009	2009	Coité do Nóia	1	27	2702	27006	AL	Coite do Noia
2702108	2108	Colônia Leopoldina	1	27	2703	27009	AL	Colonia Leopoldina
2702207	2207	Coqueiro Seco	1	27	2703	27011	AL	Coqueiro Seco
2702306	2306	Coruripe	1	27	2703	27012	AL	Coruripe
2702355	2355	Craíbas	1	27	2702	27006	AL	Craibas
2702405	2405	Delmiro Gouveia	1	27	2701	27002	AL	Delmiro Gouveia
2702504	2504	Dois Riachos	1	27	2701	27003	AL	Dois Riachos
2702553	2553	Estrela de Alagoas	1	27	2702	27005	AL	Estrela de Alagoas
2702603	2603	Feira Grande	1	27	2702	27006	AL	Feira Grande
2702702	2702	Feliz Deserto	1	27	2703	27013	AL	Feliz Deserto
2702801	2801	Flexeiras	1	27	2703	27009	AL	Flexeiras
2702900	2900	Girau do Ponciano	1	27	2702	27006	AL	Girau do Ponciano
2703007	3007	Ibateguara	1	27	2703	27008	AL	Ibateguara
2703106	3106	Igaci	1	27	2702	27005	AL	Igaci
2703205	3205	Igreja Nova	1	27	2703	27013	AL	Igreja Nova
2703304	3304	Inhapi	1	27	2701	27001	AL	Inhapi
2703403	3403	Jacaré dos Homens	1	27	2701	27004	AL	Jacare dos Homens
2703502	3502	Jacuípe	1	27	2703	27009	AL	Jacuipe
2703601	3601	Japaratinga	1	27	2703	27010	AL	Japaratinga
2703700	3700	Jaramataia	1	27	2701	27004	AL	Jaramataia
2703759	3759	Jequiá da Praia	1	27	2703	27012	AL	Jequia da Praia
2703809	3809	Joaquim Gomes	1	27	2703	27009	AL	Joaquim Gomes
2703908	3908	Jundiá	1	27	2703	27009	AL	Jundia
2704005	4005	Junqueiro	1	27	2703	27012	AL	Junqueiro
2704104	4104	Lagoa da Canoa	1	27	2702	27006	AL	Lagoa da Canoa
2704203	4203	Limoeiro de Anadia	1	27	2702	27006	AL	Limoeiro de Anadia
2704302	4302	Maceió	1	27	2703	27011	AL	Maceio
2704401	4401	Major Isidoro	1	27	2701	27004	AL	Major Isidoro
2704906	4906	Mar Vermelho	1	27	2702	27005	AL	Mar Vermelho
2704500	4500	Maragogi	1	27	2703	27010	AL	Maragogi
2704609	4609	Maravilha	1	27	2701	27003	AL	Maravilha
2704708	4708	Marechal Deodoro	1	27	2703	27011	AL	Marechal Deodoro
2704807	4807	Maribondo	1	27	2702	27005	AL	Maribondo
2705002	5002	Mata Grande	1	27	2701	27001	AL	Mata Grande
2705101	5101	Matriz de Camaragibe	1	27	2703	27009	AL	Matriz de Camaragibe
2705200	5200	Messias	1	27	2703	27009	AL	Messias
2705309	5309	Minador do Negrão	1	27	2702	27005	AL	Minador do Negrao
2705408	5408	Monteirópolis	1	27	2701	27004	AL	Monteiropolis
2705507	5507	Murici	1	27	2703	27009	AL	Murici
2705606	5606	Novo Lino	1	27	2703	27009	AL	Novo Lino
2705705	5705	Olho d'Água das Flores	1	27	2701	27004	AL	Olho d'Agua das Flores
2705804	5804	Olho d'Água do Casado	1	27	2701	27002	AL	Olho d'Agua do Casado
2705903	5903	Olho d'Água Grande	1	27	2702	27007	AL	Olho d'Agua Grande
2706000	6000	Olivença	1	27	2701	27004	AL	Olivenca
2706109	6109	Ouro Branco	1	27	2701	27003	AL	Ouro Branco
2706208	6208	Palestina	1	27	2701	27003	AL	Palestina
2706307	6307	Palmeira dos Índios	1	27	2702	27005	AL	Palmeira dos Indios
2706406	6406	Pão de Açúcar	1	27	2701	27003	AL	Pao de Acucar
2706422	6422	Pariconha	1	27	2701	27001	AL	Pariconha
2706448	6448	Paripueira	1	27	2703	27011	AL	Paripueira
2706505	6505	Passo de Camaragibe	1	27	2703	27010	AL	Passo de Camaragibe
2706604	6604	Paulo Jacinto	1	27	2702	27005	AL	Paulo Jacinto
2706703	6703	Penedo	1	27	2703	27013	AL	Penedo
2706802	6802	Piaçabuçu	1	27	2703	27013	AL	Piacabucu
2706901	6901	Pilar	1	27	2703	27011	AL	Pilar
2707008	7008	Pindoba	1	27	2703	27008	AL	Pindoba
2707107	7107	Piranhas	1	27	2701	27002	AL	Piranhas
2707206	7206	Poço das Trincheiras	1	27	2701	27003	AL	Poco das Trincheiras
2707305	7305	Porto Calvo	1	27	2703	27009	AL	Porto Calvo
2707404	7404	Porto de Pedras	1	27	2703	27010	AL	Porto de Pedras
2707503	7503	Porto Real do Colégio	1	27	2703	27013	AL	Porto Real do Colegio
2707602	7602	Quebrangulo	1	27	2702	27005	AL	Quebrangulo
2707701	7701	Rio Largo	1	27	2703	27011	AL	Rio Largo
2707800	7800	Roteiro	1	27	2703	27012	AL	Roteiro
2707909	7909	Santa Luzia do Norte	1	27	2703	27011	AL	Santa Luzia do Norte
2708006	8006	Santana do Ipanema	1	27	2701	27003	AL	Santana do Ipanema
2708105	8105	Santana do Mundaú	1	27	2703	27008	AL	Santana do Mundau
2708204	8204	São Brás	1	27	2702	27007	AL	Sao Bras
2708303	8303	São José da Laje	1	27	2703	27008	AL	Sao Jose da Laje
2708402	8402	São José da Tapera	1	27	2701	27003	AL	Sao Jose da Tapera
2708501	8501	São Luís do Quitunde	1	27	2703	27009	AL	Sao Luis do Quitunde
2708600	8600	São Miguel dos Campos	1	27	2703	27012	AL	Sao Miguel dos Campos
2708709	8709	São Miguel dos Milagres	1	27	2703	27010	AL	Sao Miguel dos Milagres
2708808	8808	São Sebastião	1	27	2702	27006	AL	Sao Sebastiao
2708907	8907	Satuba	1	27	2703	27011	AL	Satuba
2708956	8956	Senador Rui Palmeira	1	27	2701	27003	AL	Senador Rui Palmeira
2709004	9004	Tanque d'Arca	1	27	2702	27005	AL	Tanque d'Arca
2709103	9103	Taquarana	1	27	2702	27006	AL	Taquarana
2709152	9152	Teotônio Vilela	1	27	2703	27012	AL	Teotonio Vilela
2709202	9202	Traipu	1	27	2702	27007	AL	Traipu
2709301	9301	União dos Palmares	1	27	2703	27008	AL	Uniao dos Palmares
2709400	9400	Viçosa	1	27	2703	27008	AL	Vicosa
2800100	100	Amparo de São Francisco	1	28	2803	28007	SE	Amparo de Sao Francisco
2800209	209	Aquidabã	1	28	2802	28003	SE	Aquidaba
2800308	308	Aracaju	1	28	2803	28011	SE	Aracaju
2800407	407	Arauá	1	28	2803	28012	SE	Araua
2800506	506	Areia Branca	1	28	2802	28004	SE	Areia Branca
2800605	605	Barra dos Coqueiros	1	28	2803	28011	SE	Barra dos Coqueiros
2800670	670	Boquim	1	28	2803	28012	SE	Boquim
2800704	704	Brejo Grande	1	28	2803	28007	SE	Brejo Grande
2801009	1009	Campo do Brito	1	28	2802	28004	SE	Campo do Brito
2801108	1108	Canhoba	1	28	2803	28007	SE	Canhoba
2801207	1207	Canindé de São Francisco	1	28	2801	28001	SE	Caninde de Sao Francisco
2801306	1306	Capela	1	28	2803	28008	SE	Capela
2801405	1405	Carira	1	28	2801	28002	SE	Carira
2801504	1504	Carmópolis	1	28	2803	28010	SE	Carmopolis
2801603	1603	Cedro de São João	1	28	2803	28007	SE	Cedro de Sao Joao
2801702	1702	Cristinápolis	1	28	2803	28012	SE	Cristinapolis
2801900	1900	Cumbe	1	28	2802	28003	SE	Cumbe
2802007	2007	Divina Pastora	1	28	2803	28008	SE	Divina Pastora
2802106	2106	Estância	1	28	2803	28013	SE	Estancia
2802205	2205	Feira Nova	1	28	2801	28001	SE	Feira Nova
2802304	2304	Frei Paulo	1	28	2801	28002	SE	Frei Paulo
2802403	2403	Gararu	1	28	2801	28001	SE	Gararu
2802502	2502	General Maynard	1	28	2803	28010	SE	General Maynard
2802601	2601	Gracho Cardoso	1	28	2801	28001	SE	Gracho Cardoso
2802700	2700	Ilha das Flores	1	28	2803	28007	SE	Ilha das Flores
2802809	2809	Indiaroba	1	28	2803	28013	SE	Indiaroba
2802908	2908	Itabaiana	1	28	2802	28004	SE	Itabaiana
2803005	3005	Itabaianinha	1	28	2803	28012	SE	Itabaianinha
2803104	3104	Itabi	1	28	2801	28001	SE	Itabi
2803203	3203	Itaporanga d'Ajuda	1	28	2803	28013	SE	Itaporanga d'Ajuda
2803302	3302	Japaratuba	1	28	2803	28009	SE	Japaratuba
2803401	3401	Japoatã	1	28	2803	28009	SE	Japoata
2803500	3500	Lagarto	1	28	2802	28006	SE	Lagarto
2803609	3609	Laranjeiras	1	28	2803	28010	SE	Laranjeiras
2803708	3708	Macambira	1	28	2802	28004	SE	Macambira
2803807	3807	Malhada dos Bois	1	28	2802	28003	SE	Malhada dos Bois
2803906	3906	Malhador	1	28	2802	28004	SE	Malhador
2804003	4003	Maruim	1	28	2803	28010	SE	Maruim
2804102	4102	Moita Bonita	1	28	2802	28004	SE	Moita Bonita
2804201	4201	Monte Alegre de Sergipe	1	28	2801	28001	SE	Monte Alegre de Sergipe
2804300	4300	Muribeca	1	28	2802	28003	SE	Muribeca
2804409	4409	Neópolis	1	28	2803	28007	SE	Neopolis
2804458	4458	Nossa Senhora Aparecida	1	28	2801	28002	SE	Nossa Senhora Aparecida
2804508	4508	Nossa Senhora da Glória	1	28	2801	28001	SE	Nossa Senhora da Gloria
2804607	4607	Nossa Senhora das Dores	1	28	2802	28003	SE	Nossa Senhora das Dores
2804706	4706	Nossa Senhora de Lourdes	1	28	2803	28007	SE	Nossa Senhora de Lourdes
2804805	4805	Nossa Senhora do Socorro	1	28	2803	28011	SE	Nossa Senhora do Socorro
2804904	4904	Pacatuba	1	28	2803	28009	SE	Pacatuba
2805000	5000	Pedra Mole	1	28	2801	28002	SE	Pedra Mole
2805109	5109	Pedrinhas	1	28	2803	28012	SE	Pedrinhas
2805208	5208	Pinhão	1	28	2801	28002	SE	Pinhao
2805307	5307	Pirambu	1	28	2803	28009	SE	Pirambu
2805406	5406	Poço Redondo	1	28	2801	28001	SE	Poco Redondo
2805505	5505	Poço Verde	1	28	2802	28005	SE	Poco Verde
2805604	5604	Porto da Folha	1	28	2801	28001	SE	Porto da Folha
2805703	5703	Propriá	1	28	2803	28007	SE	Propria
2805802	5802	Riachão do Dantas	1	28	2802	28006	SE	Riachao do Dantas
2805901	5901	Riachuelo	1	28	2803	28010	SE	Riachuelo
2806008	6008	Ribeirópolis	1	28	2801	28002	SE	Ribeiropolis
2806107	6107	Rosário do Catete	1	28	2803	28010	SE	Rosario do Catete
2806206	6206	Salgado	1	28	2803	28012	SE	Salgado
2806305	6305	Santa Luzia do Itanhy	1	28	2803	28013	SE	Santa Luzia do Itanhy
2806503	6503	Santa Rosa de Lima	1	28	2803	28008	SE	Santa Rosa de Lima
2806404	6404	Santana do São Francisco	1	28	2803	28007	SE	Santana do Sao Francisco
2806602	6602	Santo Amaro das Brotas	1	28	2803	28010	SE	Santo Amaro das Brotas
2806701	6701	São Cristóvão	1	28	2803	28011	SE	Sao Cristovao
2806800	6800	São Domingos	1	28	2802	28004	SE	Sao Domingos
2806909	6909	São Francisco	1	28	2803	28009	SE	Sao Francisco
2807006	7006	São Miguel do Aleixo	1	28	2802	28003	SE	Sao Miguel do Aleixo
2807105	7105	Simão Dias	1	28	2802	28005	SE	Simao Dias
2807204	7204	Siriri	1	28	2803	28008	SE	Siriri
2807303	7303	Telha	1	28	2803	28007	SE	Telha
2807402	7402	Tobias Barreto	1	28	2802	28005	SE	Tobias Barreto
2807501	7501	Tomar do Geru	1	28	2803	28012	SE	Tomar do Geru
2807600	7600	Umbaúba	1	28	2803	28012	SE	Umbauba
2900108	108	Abaíra	1	29	2906	29023	BA	Abaira
2900207	207	Abaré	1	29	2902	29005	BA	Abare
2900306	306	Acajutiba	1	29	2904	29017	BA	Acajutiba
2900355	355	Adustina	1	29	2904	29015	BA	Adustina
2900405	405	Água Fria	1	29	2903	29012	BA	Agua Fria
2900603	603	Aiquara	1	29	2906	29024	BA	Aiquara
2900702	702	Alagoinhas	1	29	2904	29017	BA	Alagoinhas
2900801	801	Alcobaça	1	29	2907	29032	BA	Alcobaca
2900900	900	Almadina	1	29	2907	29031	BA	Almadina
2901007	1007	Amargosa	1	29	2906	29024	BA	Amargosa
2901106	1106	Amélia Rodrigues	1	29	2905	29019	BA	Amelia Rodrigues
2901155	1155	América Dourada	1	29	2903	29009	BA	America Dourada
2901205	1205	Anagé	1	29	2906	29028	BA	Anage
2901304	1304	Andaraí	1	29	2906	29023	BA	Andarai
2901353	1353	Andorinha	1	29	2903	29008	BA	Andorinha
2901403	1403	Angical	1	29	2901	29002	BA	Angical
2901502	1502	Anguera	1	29	2903	29012	BA	Anguera
2901601	1601	Antas	1	29	2904	29015	BA	Antas
2901700	1700	Antônio Cardoso	1	29	2903	29012	BA	Antonio Cardoso
2901809	1809	Antônio Gonçalves	1	29	2903	29008	BA	Antonio Goncalves
2901908	1908	Aporá	1	29	2904	29017	BA	Apora
2901957	1957	Apuarema	1	29	2906	29024	BA	Apuarema
2902054	2054	Araças	1	29	2904	29017	BA	Aracas
2902005	2005	Aracatu	1	29	2906	29027	BA	Aracatu
2902104	2104	Araci	1	29	2904	29016	BA	Araci
2902203	2203	Aramari	1	29	2904	29017	BA	Aramari
2902252	2252	Arataca	1	29	2907	29031	BA	Arataca
2902302	2302	Aratuípe	1	29	2905	29020	BA	Aratuipe
2902401	2401	Aurelino Leal	1	29	2907	29031	BA	Aurelino Leal
2902500	2500	Baianópolis	1	29	2901	29001	BA	Baianopolis
2902609	2609	Baixa Grande	1	29	2903	29011	BA	Baixa Grande
2902658	2658	Banzaê	1	29	2904	29015	BA	Banzae
2902708	2708	Barra	1	29	2902	29006	BA	Barra
2902807	2807	Barra da Estiva	1	29	2906	29023	BA	Barra da Estiva
2902906	2906	Barra do Choça	1	29	2906	29028	BA	Barra do Choca
2903003	3003	Barra do Mendes	1	29	2903	29009	BA	Barra do Mendes
2903102	3102	Barra do Rocha	1	29	2907	29031	BA	Barra do Rocha
2903201	3201	Barreiras	1	29	2901	29001	BA	Barreiras
2903235	3235	Barro Alto	1	29	2903	29009	BA	Barro Alto
2903300	3300	Barro Preto	1	29	2907	29031	BA	Barro Preto
2903276	3276	Barrocas	1	29	2904	29016	BA	Barrocas
2903409	3409	Belmonte	1	29	2907	29031	BA	Belmonte
2903508	3508	Belo Campo	1	29	2906	29028	BA	Belo Campo
2903607	3607	Biritinga	1	29	2904	29016	BA	Biritinga
2903706	3706	Boa Nova	1	29	2906	29028	BA	Boa Nova
2903805	3805	Boa Vista do Tupim	1	29	2903	29011	BA	Boa Vista do Tupim
2903904	3904	Bom Jesus da Lapa	1	29	2902	29007	BA	Bom Jesus da Lapa
2903953	3953	Bom Jesus da Serra	1	29	2906	29028	BA	Bom Jesus da Serra
2904001	4001	Boninal	1	29	2906	29023	BA	Boninal
2904050	4050	Bonito	1	29	2906	29023	BA	Bonito
2904100	4100	Boquira	1	29	2906	29022	BA	Boquira
2904209	4209	Botuporã	1	29	2906	29022	BA	Botupora
2904308	4308	Brejões	1	29	2906	29024	BA	Brejoes
2904407	4407	Brejolândia	1	29	2901	29002	BA	Brejolandia
2904506	4506	Brotas de Macaúbas	1	29	2906	29022	BA	Brotas de Macaubas
2904605	4605	Brumado	1	29	2906	29027	BA	Brumado
2904704	4704	Buerarema	1	29	2907	29031	BA	Buerarema
2904753	4753	Buritirama	1	29	2902	29006	BA	Buritirama
2904803	4803	Caatiba	1	29	2906	29028	BA	Caatiba
2904852	4852	Cabaceiras do Paraguaçu	1	29	2905	29020	BA	Cabaceiras do Paraguacu
2904902	4902	Cachoeira	1	29	2905	29020	BA	Cachoeira
2905008	5008	Caculé	1	29	2906	29026	BA	Cacule
2905107	5107	Caém	1	29	2903	29010	BA	Caem
2905156	5156	Caetanos	1	29	2906	29028	BA	Caetanos
2905206	5206	Caetité	1	29	2906	29026	BA	Caetite
2905305	5305	Cafarnaum	1	29	2903	29009	BA	Cafarnaum
2905404	5404	Cairu	1	29	2907	29030	BA	Cairu
2905503	5503	Caldeirão Grande	1	29	2903	29010	BA	Caldeirao Grande
2905602	5602	Camacan	1	29	2907	29031	BA	Camacan
2905701	5701	Camaçari	1	29	2905	29021	BA	Camacari
2905800	5800	Camamu	1	29	2907	29030	BA	Camamu
2905909	5909	Campo Alegre de Lourdes	1	29	2902	29004	BA	Campo Alegre de Lourdes
2906006	6006	Campo Formoso	1	29	2903	29008	BA	Campo Formoso
2906105	6105	Canápolis	1	29	2901	29003	BA	Canapolis
2906204	6204	Canarana	1	29	2903	29009	BA	Canarana
2906303	6303	Canavieiras	1	29	2907	29031	BA	Canavieiras
2906402	6402	Candeal	1	29	2904	29016	BA	Candeal
2906501	6501	Candeias	1	29	2905	29021	BA	Candeias
2906600	6600	Candiba	1	29	2906	29026	BA	Candiba
2906709	6709	Cândido Sales	1	29	2906	29028	BA	Candido Sales
2906808	6808	Cansanção	1	29	2904	29014	BA	Cansancao
2906824	6824	Canudos	1	29	2904	29014	BA	Canudos
2906857	6857	Capela do Alto Alegre	1	29	2904	29016	BA	Capela do Alto Alegre
2906873	6873	Capim Grosso	1	29	2903	29010	BA	Capim Grosso
2906899	6899	Caraíbas	1	29	2906	29027	BA	Caraibas
2906907	6907	Caravelas	1	29	2907	29032	BA	Caravelas
2907004	7004	Cardeal da Silva	1	29	2904	29018	BA	Cardeal da Silva
2907103	7103	Carinhanha	1	29	2902	29007	BA	Carinhanha
2907202	7202	Casa Nova	1	29	2902	29004	BA	Casa Nova
2907301	7301	Castro Alves	1	29	2905	29020	BA	Castro Alves
2907400	7400	Catolândia	1	29	2901	29001	BA	Catolandia
2907509	7509	Catu	1	29	2905	29019	BA	Catu
2907558	7558	Caturama	1	29	2906	29022	BA	Caturama
2907608	7608	Central	1	29	2903	29009	BA	Central
2907707	7707	Chorrochó	1	29	2902	29005	BA	Chorrocho
2907806	7806	Cícero Dantas	1	29	2904	29015	BA	Cicero Dantas
2907905	7905	Cipó	1	29	2904	29015	BA	Cipo
2908002	8002	Coaraci	1	29	2907	29031	BA	Coaraci
2908101	8101	Cocos	1	29	2901	29003	BA	Cocos
2908200	8200	Conceição da Feira	1	29	2903	29012	BA	Conceicao da Feira
2908309	8309	Conceição do Almeida	1	29	2905	29020	BA	Conceicao do Almeida
2908408	8408	Conceição do Coité	1	29	2904	29016	BA	Conceicao do Coite
2908507	8507	Conceição do Jacuípe	1	29	2903	29012	BA	Conceicao do Jacuipe
2908606	8606	Conde	1	29	2904	29018	BA	Conde
2908705	8705	Condeúba	1	29	2906	29027	BA	Condeuba
2908804	8804	Contendas do Sincorá	1	29	2906	29023	BA	Contendas do Sincora
2908903	8903	Coração de Maria	1	29	2903	29012	BA	Coracao de Maria
2909000	9000	Cordeiros	1	29	2906	29027	BA	Cordeiros
2909109	9109	Coribe	1	29	2901	29003	BA	Coribe
2909208	9208	Coronel João Sá	1	29	2904	29013	BA	Coronel Joao Sa
2909307	9307	Correntina	1	29	2901	29003	BA	Correntina
2909406	9406	Cotegipe	1	29	2901	29002	BA	Cotegipe
2909505	9505	Cravolândia	1	29	2906	29024	BA	Cravolandia
2909604	9604	Crisópolis	1	29	2904	29017	BA	Crisopolis
2909703	9703	Cristópolis	1	29	2901	29002	BA	Cristopolis
2909802	9802	Cruz das Almas	1	29	2905	29020	BA	Cruz das Almas
2909901	9901	Curaçá	1	29	2902	29004	BA	Curaca
2910008	10008	Dário Meira	1	29	2906	29028	BA	Dario Meira
2910057	10057	Dias d'Ávila	1	29	2905	29021	BA	Dias d'Avila
2910107	10107	Dom Basílio	1	29	2906	29025	BA	Dom Basilio
2910206	10206	Dom Macedo Costa	1	29	2905	29020	BA	Dom Macedo Costa
2910305	10305	Elísio Medrado	1	29	2903	29012	BA	Elisio Medrado
2910404	10404	Encruzilhada	1	29	2906	29029	BA	Encruzilhada
2910503	10503	Entre Rios	1	29	2904	29018	BA	Entre Rios
2900504	504	Érico Cardoso	1	29	2906	29025	BA	Erico Cardoso
2910602	10602	Esplanada	1	29	2904	29018	BA	Esplanada
2910701	10701	Euclides da Cunha	1	29	2904	29014	BA	Euclides da Cunha
2910727	10727	Eunápolis	1	29	2907	29032	BA	Eunapolis
2910750	10750	Fátima	1	29	2904	29015	BA	Fatima
2910776	10776	Feira da Mata	1	29	2902	29007	BA	Feira da Mata
2910800	10800	Feira de Santana	1	29	2903	29012	BA	Feira de Santana
2910859	10859	Filadélfia	1	29	2903	29008	BA	Filadelfia
2910909	10909	Firmino Alves	1	29	2907	29031	BA	Firmino Alves
2911006	11006	Floresta Azul	1	29	2907	29031	BA	Floresta Azul
2911105	11105	Formosa do Rio Preto	1	29	2901	29001	BA	Formosa do Rio Preto
2911204	11204	Gandu	1	29	2907	29031	BA	Gandu
2911253	11253	Gavião	1	29	2904	29016	BA	Gaviao
2911303	11303	Gentio do Ouro	1	29	2903	29009	BA	Gentio do Ouro
2911402	11402	Glória	1	29	2902	29005	BA	Gloria
2911501	11501	Gongogi	1	29	2907	29031	BA	Gongogi
2911600	11600	Governador Mangabeira	1	29	2905	29020	BA	Governador Mangabeira
2911659	11659	Guajeru	1	29	2906	29027	BA	Guajeru
2911709	11709	Guanambi	1	29	2906	29026	BA	Guanambi
2911808	11808	Guaratinga	1	29	2907	29032	BA	Guaratinga
2911857	11857	Heliópolis	1	29	2904	29015	BA	Heliopolis
2911907	11907	Iaçu	1	29	2903	29011	BA	Iacu
2912004	12004	Ibiassucê	1	29	2906	29026	BA	Ibiassuce
2912103	12103	Ibicaraí	1	29	2907	29031	BA	Ibicarai
2912202	12202	Ibicoara	1	29	2906	29023	BA	Ibicoara
2912301	12301	Ibicuí	1	29	2906	29028	BA	Ibicui
2912400	12400	Ibipeba	1	29	2903	29009	BA	Ibipeba
2912509	12509	Ibipitanga	1	29	2906	29022	BA	Ibipitanga
2912608	12608	Ibiquera	1	29	2903	29011	BA	Ibiquera
2912707	12707	Ibirapitanga	1	29	2907	29031	BA	Ibirapitanga
2912806	12806	Ibirapuã	1	29	2907	29032	BA	Ibirapua
2912905	12905	Ibirataia	1	29	2907	29031	BA	Ibirataia
2913002	13002	Ibitiara	1	29	2906	29022	BA	Ibitiara
2913101	13101	Ibititá	1	29	2903	29009	BA	Ibitita
2913200	13200	Ibotirama	1	29	2902	29006	BA	Ibotirama
2913309	13309	Ichu	1	29	2904	29016	BA	Ichu
2913408	13408	Igaporã	1	29	2906	29026	BA	Igapora
2913457	13457	Igrapiúna	1	29	2907	29030	BA	Igrapiuna
2913507	13507	Iguaí	1	29	2906	29028	BA	Iguai
2913606	13606	Ilhéus	1	29	2907	29031	BA	Ilheus
2913705	13705	Inhambupe	1	29	2904	29017	BA	Inhambupe
2913804	13804	Ipecaetá	1	29	2903	29012	BA	Ipecaeta
2913903	13903	Ipiaú	1	29	2907	29031	BA	Ipiau
2914000	14000	Ipirá	1	29	2903	29012	BA	Ipira
2914109	14109	Ipupiara	1	29	2906	29022	BA	Ipupiara
2914208	14208	Irajuba	1	29	2906	29024	BA	Irajuba
2914307	14307	Iramaia	1	29	2906	29024	BA	Iramaia
2914406	14406	Iraquara	1	29	2903	29009	BA	Iraquara
2914505	14505	Irará	1	29	2903	29012	BA	Irara
2914604	14604	Irecê	1	29	2903	29009	BA	Irece
2914653	14653	Itabela	1	29	2907	29032	BA	Itabela
2914703	14703	Itaberaba	1	29	2903	29011	BA	Itaberaba
2914802	14802	Itabuna	1	29	2907	29031	BA	Itabuna
2914901	14901	Itacaré	1	29	2907	29031	BA	Itacare
2915007	15007	Itaeté	1	29	2906	29023	BA	Itaete
2915106	15106	Itagi	1	29	2906	29024	BA	Itagi
2915205	15205	Itagibá	1	29	2907	29031	BA	Itagiba
2915304	15304	Itagimirim	1	29	2907	29032	BA	Itagimirim
2915353	15353	Itaguaçu da Bahia	1	29	2902	29006	BA	Itaguacu da Bahia
2915403	15403	Itaju do Colônia	1	29	2907	29031	BA	Itaju do Colonia
2915502	15502	Itajuípe	1	29	2907	29031	BA	Itajuipe
2915601	15601	Itamaraju	1	29	2907	29032	BA	Itamaraju
2915700	15700	Itamari	1	29	2907	29031	BA	Itamari
2915809	15809	Itambé	1	29	2906	29029	BA	Itambe
2915908	15908	Itanagra	1	29	2905	29019	BA	Itanagra
2916005	16005	Itanhém	1	29	2907	29032	BA	Itanhem
2916104	16104	Itaparica	1	29	2905	29021	BA	Itaparica
2916203	16203	Itapé	1	29	2907	29031	BA	Itape
2916302	16302	Itapebi	1	29	2907	29031	BA	Itapebi
2916401	16401	Itapetinga	1	29	2906	29029	BA	Itapetinga
2916500	16500	Itapicuru	1	29	2904	29015	BA	Itapicuru
2916609	16609	Itapitanga	1	29	2907	29031	BA	Itapitanga
2916708	16708	Itaquara	1	29	2906	29024	BA	Itaquara
2916807	16807	Itarantim	1	29	2906	29029	BA	Itarantim
2916856	16856	Itatim	1	29	2903	29012	BA	Itatim
2916906	16906	Itiruçu	1	29	2906	29024	BA	Itirucu
2917003	17003	Itiúba	1	29	2903	29008	BA	Itiuba
2917102	17102	Itororó	1	29	2906	29029	BA	Itororo
2917201	17201	Ituaçu	1	29	2906	29027	BA	Ituacu
2917300	17300	Ituberá	1	29	2907	29030	BA	Itubera
2917334	17334	Iuiú	1	29	2906	29026	BA	Iuiu
2917359	17359	Jaborandi	1	29	2901	29003	BA	Jaborandi
2917409	17409	Jacaraci	1	29	2906	29026	BA	Jacaraci
2917508	17508	Jacobina	1	29	2903	29010	BA	Jacobina
2917607	17607	Jaguaquara	1	29	2906	29024	BA	Jaguaquara
2917706	17706	Jaguarari	1	29	2903	29008	BA	Jaguarari
2917805	17805	Jaguaripe	1	29	2905	29020	BA	Jaguaripe
2917904	17904	Jandaíra	1	29	2904	29018	BA	Jandaira
2918001	18001	Jequié	1	29	2906	29024	BA	Jequie
2918100	18100	Jeremoabo	1	29	2904	29013	BA	Jeremoabo
2918209	18209	Jiquiriçá	1	29	2906	29024	BA	Jiquirica
2918308	18308	Jitaúna	1	29	2906	29024	BA	Jitauna
2918357	18357	João Dourado	1	29	2903	29009	BA	Joao Dourado
2918407	18407	Juazeiro	1	29	2902	29004	BA	Juazeiro
2918456	18456	Jucuruçu	1	29	2907	29032	BA	Jucurucu
2918506	18506	Jussara	1	29	2903	29009	BA	Jussara
2918555	18555	Jussari	1	29	2907	29031	BA	Jussari
2918605	18605	Jussiape	1	29	2906	29023	BA	Jussiape
2918704	18704	Lafaiete Coutinho	1	29	2906	29024	BA	Lafaiete Coutinho
2918753	18753	Lagoa Real	1	29	2906	29026	BA	Lagoa Real
2918803	18803	Laje	1	29	2906	29024	BA	Laje
2918902	18902	Lajedão	1	29	2907	29032	BA	Lajedao
2919009	19009	Lajedinho	1	29	2903	29011	BA	Lajedinho
2919058	19058	Lajedo do Tabocal	1	29	2906	29024	BA	Lajedo do Tabocal
2919108	19108	Lamarão	1	29	2904	29016	BA	Lamarao
2919157	19157	Lapão	1	29	2903	29009	BA	Lapao
2919207	19207	Lauro de Freitas	1	29	2905	29021	BA	Lauro de Freitas
2919306	19306	Lençóis	1	29	2906	29023	BA	Lencois
2919405	19405	Licínio de Almeida	1	29	2906	29026	BA	Licinio de Almeida
2919504	19504	Livramento de Nossa Senhora	1	29	2906	29025	BA	Livramento de Nossa Senhora
2919553	19553	Luís Eduardo Magalhães	1	29	2901	29001	BA	Luis Eduardo Magalhaes
2919603	19603	Macajuba	1	29	2903	29011	BA	Macajuba
2919702	19702	Macarani	1	29	2906	29029	BA	Macarani
2919801	19801	Macaúbas	1	29	2906	29022	BA	Macaubas
2919900	19900	Macururé	1	29	2902	29005	BA	Macurure
2919926	19926	Madre de Deus	1	29	2905	29021	BA	Madre de Deus
2919959	19959	Maetinga	1	29	2906	29027	BA	Maetinga
2920007	20007	Maiquinique	1	29	2906	29029	BA	Maiquinique
2920106	20106	Mairi	1	29	2903	29011	BA	Mairi
2920205	20205	Malhada	1	29	2906	29026	BA	Malhada
2920304	20304	Malhada de Pedras	1	29	2906	29027	BA	Malhada de Pedras
2920403	20403	Manoel Vitorino	1	29	2906	29028	BA	Manoel Vitorino
2920452	20452	Mansidão	1	29	2901	29002	BA	Mansidao
2920502	20502	Maracás	1	29	2906	29024	BA	Maracas
2920601	20601	Maragogipe	1	29	2905	29020	BA	Maragogipe
2920700	20700	Maraú	1	29	2907	29030	BA	Marau
2920809	20809	Marcionílio Souza	1	29	2906	29024	BA	Marcionilio Souza
2920908	20908	Mascote	1	29	2907	29031	BA	Mascote
2921005	21005	Mata de São João	1	29	2905	29019	BA	Mata de Sao Joao
2921054	21054	Matina	1	29	2906	29026	BA	Matina
2921104	21104	Medeiros Neto	1	29	2907	29032	BA	Medeiros Neto
2921203	21203	Miguel Calmon	1	29	2903	29010	BA	Miguel Calmon
2921302	21302	Milagres	1	29	2906	29024	BA	Milagres
2921401	21401	Mirangaba	1	29	2903	29010	BA	Mirangaba
2921450	21450	Mirante	1	29	2906	29028	BA	Mirante
2921500	21500	Monte Santo	1	29	2904	29014	BA	Monte Santo
2921609	21609	Morpará	1	29	2902	29006	BA	Morpara
2921708	21708	Morro do Chapéu	1	29	2903	29010	BA	Morro do Chapeu
2921807	21807	Mortugaba	1	29	2906	29026	BA	Mortugaba
2921906	21906	Mucugê	1	29	2906	29023	BA	Mucuge
2922003	22003	Mucuri	1	29	2907	29032	BA	Mucuri
2922052	22052	Mulungu do Morro	1	29	2903	29009	BA	Mulungu do Morro
2922102	22102	Mundo Novo	1	29	2903	29011	BA	Mundo Novo
2922201	22201	Muniz Ferreira	1	29	2905	29020	BA	Muniz Ferreira
2922250	22250	Muquém de São Francisco	1	29	2902	29006	BA	Muquem de Sao Francisco
2922300	22300	Muritiba	1	29	2905	29020	BA	Muritiba
2922409	22409	Mutuípe	1	29	2906	29024	BA	Mutuipe
2922508	22508	Nazaré	1	29	2905	29020	BA	Nazare
2922607	22607	Nilo Peçanha	1	29	2907	29030	BA	Nilo Pecanha
2922656	22656	Nordestina	1	29	2904	29014	BA	Nordestina
2922706	22706	Nova Canaã	1	29	2906	29028	BA	Nova Canaa
2922730	22730	Nova Fátima	1	29	2904	29016	BA	Nova Fatima
2922755	22755	Nova Ibiá	1	29	2907	29031	BA	Nova Ibia
2922805	22805	Nova Itarana	1	29	2906	29024	BA	Nova Itarana
2922854	22854	Nova Redenção	1	29	2906	29023	BA	Nova Redencao
2922904	22904	Nova Soure	1	29	2904	29015	BA	Nova Soure
2923001	23001	Nova Viçosa	1	29	2907	29032	BA	Nova Vicosa
2923035	23035	Novo Horizonte	1	29	2906	29022	BA	Novo Horizonte
2923050	23050	Novo Triunfo	1	29	2904	29015	BA	Novo Triunfo
2923100	23100	Olindina	1	29	2904	29015	BA	Olindina
2923209	23209	Oliveira dos Brejinhos	1	29	2906	29022	BA	Oliveira dos Brejinhos
2923308	23308	Ouriçangas	1	29	2903	29012	BA	Ouricangas
2923357	23357	Ourolândia	1	29	2903	29010	BA	Ourolandia
2923407	23407	Palmas de Monte Alto	1	29	2906	29026	BA	Palmas de Monte Alto
2923506	23506	Palmeiras	1	29	2906	29023	BA	Palmeiras
2923605	23605	Paramirim	1	29	2906	29025	BA	Paramirim
2923704	23704	Paratinga	1	29	2902	29007	BA	Paratinga
2923803	23803	Paripiranga	1	29	2904	29015	BA	Paripiranga
2923902	23902	Pau Brasil	1	29	2907	29031	BA	Pau Brasil
2924009	24009	Paulo Afonso	1	29	2902	29005	BA	Paulo Afonso
2924058	24058	Pé de Serra	1	29	2904	29016	BA	Pe de Serra
2924108	24108	Pedrão	1	29	2903	29012	BA	Pedrao
2924207	24207	Pedro Alexandre	1	29	2904	29013	BA	Pedro Alexandre
2924306	24306	Piatã	1	29	2906	29023	BA	Piata
2924405	24405	Pilão Arcado	1	29	2902	29004	BA	Pilao Arcado
2924504	24504	Pindaí	1	29	2906	29026	BA	Pindai
2924603	24603	Pindobaçu	1	29	2903	29008	BA	Pindobacu
2924652	24652	Pintadas	1	29	2903	29012	BA	Pintadas
2924678	24678	Piraí do Norte	1	29	2907	29030	BA	Pirai do Norte
2924702	24702	Piripá	1	29	2906	29027	BA	Piripa
2924801	24801	Piritiba	1	29	2903	29010	BA	Piritiba
2924900	24900	Planaltino	1	29	2906	29024	BA	Planaltino
2925006	25006	Planalto	1	29	2906	29028	BA	Planalto
2925105	25105	Poções	1	29	2906	29028	BA	Pocoes
2925204	25204	Pojuca	1	29	2905	29019	BA	Pojuca
2925253	25253	Ponto Novo	1	29	2903	29010	BA	Ponto Novo
2925303	25303	Porto Seguro	1	29	2907	29032	BA	Porto Seguro
2925402	25402	Potiraguá	1	29	2906	29029	BA	Potiragua
2925501	25501	Prado	1	29	2907	29032	BA	Prado
2925600	25600	Presidente Dutra	1	29	2903	29009	BA	Presidente Dutra
2925709	25709	Presidente Jânio Quadros	1	29	2906	29027	BA	Presidente Janio Quadros
2925758	25758	Presidente Tancredo Neves	1	29	2907	29030	BA	Presidente Tancredo Neves
2925808	25808	Queimadas	1	29	2904	29014	BA	Queimadas
2925907	25907	Quijingue	1	29	2904	29014	BA	Quijingue
2925931	25931	Quixabeira	1	29	2903	29010	BA	Quixabeira
2925956	25956	Rafael Jambeiro	1	29	2903	29012	BA	Rafael Jambeiro
2926004	26004	Remanso	1	29	2902	29004	BA	Remanso
2926103	26103	Retirolândia	1	29	2904	29016	BA	Retirolandia
2926202	26202	Riachão das Neves	1	29	2901	29001	BA	Riachao das Neves
2926301	26301	Riachão do Jacuípe	1	29	2904	29016	BA	Riachao do Jacuipe
2926400	26400	Riacho de Santana	1	29	2906	29026	BA	Riacho de Santana
2926509	26509	Ribeira do Amparo	1	29	2904	29015	BA	Ribeira do Amparo
2926608	26608	Ribeira do Pombal	1	29	2904	29015	BA	Ribeira do Pombal
2926657	26657	Ribeirão do Largo	1	29	2906	29029	BA	Ribeirao do Largo
2926707	26707	Rio de Contas	1	29	2906	29023	BA	Rio de Contas
2926806	26806	Rio do Antônio	1	29	2906	29027	BA	Rio do Antonio
2926905	26905	Rio do Pires	1	29	2906	29025	BA	Rio do Pires
2927002	27002	Rio Real	1	29	2904	29017	BA	Rio Real
2927101	27101	Rodelas	1	29	2902	29005	BA	Rodelas
2927200	27200	Ruy Barbosa	1	29	2903	29011	BA	Ruy Barbosa
2927309	27309	Salinas da Margarida	1	29	2905	29020	BA	Salinas da Margarida
2927408	27408	Salvador	1	29	2905	29021	BA	Salvador
2927507	27507	Santa Bárbara	1	29	2903	29012	BA	Santa Barbara
2927606	27606	Santa Brígida	1	29	2904	29013	BA	Santa Brigida
2927705	27705	Santa Cruz Cabrália	1	29	2907	29032	BA	Santa Cruz Cabralia
2927804	27804	Santa Cruz da Vitória	1	29	2907	29031	BA	Santa Cruz da Vitoria
2927903	27903	Santa Inês	1	29	2906	29024	BA	Santa Ines
2928059	28059	Santa Luzia	1	29	2907	29031	BA	Santa Luzia
2928109	28109	Santa Maria da Vitória	1	29	2901	29003	BA	Santa Maria da Vitoria
2928406	28406	Santa Rita de Cássia	1	29	2901	29002	BA	Santa Rita de Cassia
2928505	28505	Santa Teresinha	1	29	2903	29012	BA	Santa Teresinha
2928000	28000	Santaluz	1	29	2904	29016	BA	Santaluz
2928208	28208	Santana	1	29	2901	29003	BA	Santana
2928307	28307	Santanópolis	1	29	2903	29012	BA	Santanopolis
2928604	28604	Santo Amaro	1	29	2905	29020	BA	Santo Amaro
2928703	28703	Santo Antônio de Jesus	1	29	2905	29020	BA	Santo Antonio de Jesus
2928802	28802	Santo Estêvão	1	29	2903	29012	BA	Santo Estevao
2928901	28901	São Desidério	1	29	2901	29001	BA	Sao Desiderio
2928950	28950	São Domingos	1	29	2904	29016	BA	Sao Domingos
2929107	29107	São Felipe	1	29	2905	29020	BA	Sao Felipe
2929008	29008	São Félix	1	29	2905	29020	BA	Sao Felix
2929057	29057	São Félix do Coribe	1	29	2901	29003	BA	Sao Felix do Coribe
2929206	29206	São Francisco do Conde	1	29	2905	29021	BA	Sao Francisco do Conde
2929255	29255	São Gabriel	1	29	2903	29009	BA	Sao Gabriel
2929305	29305	São Gonçalo dos Campos	1	29	2903	29012	BA	Sao Goncalo dos Campos
2929354	29354	São José da Vitória	1	29	2907	29031	BA	Sao Jose da Vitoria
2929370	29370	São José do Jacuípe	1	29	2903	29010	BA	Sao Jose do Jacuipe
2929404	29404	São Miguel das Matas	1	29	2906	29024	BA	Sao Miguel das Matas
2929503	29503	São Sebastião do Passé	1	29	2905	29019	BA	Sao Sebastiao do Passe
2929602	29602	Sapeaçu	1	29	2905	29020	BA	Sapeacu
2929701	29701	Sátiro Dias	1	29	2904	29017	BA	Satiro Dias
2929750	29750	Saubara	1	29	2905	29020	BA	Saubara
2929800	29800	Saúde	1	29	2903	29010	BA	Saude
2929909	29909	Seabra	1	29	2906	29023	BA	Seabra
2930006	30006	Sebastião Laranjeiras	1	29	2906	29026	BA	Sebastiao Laranjeiras
2930105	30105	Senhor do Bonfim	1	29	2903	29008	BA	Senhor do Bonfim
2930204	30204	Sento Sé	1	29	2902	29004	BA	Sento Se
2930154	30154	Serra do Ramalho	1	29	2902	29007	BA	Serra do Ramalho
2930303	30303	Serra Dourada	1	29	2901	29003	BA	Serra Dourada
2930402	30402	Serra Preta	1	29	2903	29012	BA	Serra Preta
2930501	30501	Serrinha	1	29	2904	29016	BA	Serrinha
2930600	30600	Serrolândia	1	29	2903	29010	BA	Serrolandia
2930709	30709	Simões Filho	1	29	2905	29021	BA	Simoes Filho
2930758	30758	Sítio do Mato	1	29	2902	29007	BA	Sitio do Mato
2930766	30766	Sítio do Quinto	1	29	2904	29013	BA	Sitio do Quinto
2930774	30774	Sobradinho	1	29	2902	29004	BA	Sobradinho
2930808	30808	Souto Soares	1	29	2903	29009	BA	Souto Soares
2930907	30907	Tabocas do Brejo Velho	1	29	2901	29002	BA	Tabocas do Brejo Velho
2931004	31004	Tanhaçu	1	29	2906	29027	BA	Tanhacu
2931053	31053	Tanque Novo	1	29	2906	29022	BA	Tanque Novo
2931103	31103	Tanquinho	1	29	2903	29012	BA	Tanquinho
2931202	31202	Taperoá	1	29	2907	29030	BA	Taperoa
2931301	31301	Tapiramutá	1	29	2903	29011	BA	Tapiramuta
2931350	31350	Teixeira de Freitas	1	29	2907	29032	BA	Teixeira de Freitas
2931400	31400	Teodoro Sampaio	1	29	2903	29012	BA	Teodoro Sampaio
2931509	31509	Teofilândia	1	29	2904	29016	BA	Teofilandia
2931608	31608	Teolândia	1	29	2907	29031	BA	Teolandia
2931707	31707	Terra Nova	1	29	2905	29019	BA	Terra Nova
2931806	31806	Tremedal	1	29	2906	29027	BA	Tremedal
2931905	31905	Tucano	1	29	2904	29014	BA	Tucano
2932002	32002	Uauá	1	29	2904	29014	BA	Uaua
2932101	32101	Ubaíra	1	29	2906	29024	BA	Ubaira
2932200	32200	Ubaitaba	1	29	2907	29031	BA	Ubaitaba
2932309	32309	Ubatã	1	29	2907	29031	BA	Ubata
2932408	32408	Uibaí	1	29	2903	29009	BA	Uibai
2932457	32457	Umburanas	1	29	2903	29008	BA	Umburanas
2932507	32507	Una	1	29	2907	29031	BA	Una
2932606	32606	Urandi	1	29	2906	29026	BA	Urandi
2932705	32705	Uruçuca	1	29	2907	29031	BA	Urucuca
2932804	32804	Utinga	1	29	2906	29023	BA	Utinga
2932903	32903	Valença	1	29	2907	29030	BA	Valenca
2933000	33000	Valente	1	29	2904	29016	BA	Valente
2933059	33059	Várzea da Roça	1	29	2903	29011	BA	Varzea da Roca
2933109	33109	Várzea do Poço	1	29	2903	29010	BA	Varzea do Poco
2933158	33158	Várzea Nova	1	29	2903	29010	BA	Varzea Nova
2933174	33174	Varzedo	1	29	2905	29020	BA	Varzedo
2933208	33208	Vera Cruz	1	29	2905	29021	BA	Vera Cruz
2933257	33257	Vereda	1	29	2907	29032	BA	Vereda
2933307	33307	Vitória da Conquista	1	29	2906	29028	BA	Vitoria da Conquista
2933406	33406	Wagner	1	29	2906	29023	BA	Wagner
2933455	33455	Wanderley	1	29	2901	29002	BA	Wanderley
2933505	33505	Wenceslau Guimarães	1	29	2907	29031	BA	Wenceslau Guimaraes
2933604	33604	Xique-Xique	1	29	2902	29006	BA	Xique-Xique
3100104	104	Abadia dos Dourados	1	31	3105	31019	MG	Abadia dos Dourados
3100203	203	Abaeté	1	31	3106	31024	MG	Abaete
3100302	302	Abre Campo	1	31	3112	31061	MG	Abre Campo
3100401	401	Acaiaca	1	31	3112	31060	MG	Acaiaca
3100500	500	Açucena	1	31	3108	31039	MG	Acucena
3100609	609	Água Boa	1	31	3108	31036	MG	Agua Boa
3100708	708	Água Comprida	1	31	3105	31022	MG	Agua Comprida
3100807	807	Aguanil	1	31	3109	31045	MG	Aguanil
3100906	906	Águas Formosas	1	31	3104	31016	MG	Aguas Formosas
3101003	1003	Águas Vermelhas	1	31	3102	31005	MG	Aguas Vermelhas
3101102	1102	Aimorés	1	31	3108	31041	MG	Aimores
3101201	1201	Aiuruoca	1	31	3110	31055	MG	Aiuruoca
3101300	1300	Alagoa	1	31	3110	31054	MG	Alagoa
3101409	1409	Albertina	1	31	3110	31051	MG	Albertina
3101508	1508	Além Paraíba	1	31	3112	31066	MG	Alem Paraiba
3101607	1607	Alfenas	1	31	3110	31049	MG	Alfenas
3101631	1631	Alfredo Vasconcelos	1	31	3111	31059	MG	Alfredo Vasconcelos
3101706	1706	Almenara	1	31	3103	31014	MG	Almenara
3101805	1805	Alpercata	1	31	3108	31037	MG	Alpercata
3101904	1904	Alpinópolis	1	31	3110	31047	MG	Alpinopolis
3102001	2001	Alterosa	1	31	3110	31049	MG	Alterosa
3102050	2050	Alto Caparaó	1	31	3112	31061	MG	Alto Caparao
3153509	53509	Alto Jequitibá	1	31	3112	31061	MG	Alto Jequitiba
3102100	2100	Alto Rio Doce	1	31	3112	31062	MG	Alto Rio Doce
3102209	2209	Alvarenga	1	31	3108	31041	MG	Alvarenga
3102308	2308	Alvinópolis	1	31	3107	31031	MG	Alvinopolis
3102407	2407	Alvorada de Minas	1	31	3107	31028	MG	Alvorada de Minas
3102506	2506	Amparo do Serra	1	31	3112	31062	MG	Amparo do Serra
3102605	2605	Andradas	1	31	3110	31051	MG	Andradas
3102803	2803	Andrelândia	1	31	3110	31055	MG	Andrelandia
3102852	2852	Angelândia	1	31	3103	31011	MG	Angelandia
3102902	2902	Antônio Carlos	1	31	3111	31059	MG	Antonio Carlos
3103009	3009	Antônio Dias	1	31	3108	31039	MG	Antonio Dias
3103108	3108	Antônio Prado de Minas	1	31	3112	31063	MG	Antonio Prado de Minas
3103207	3207	Araçaí	1	31	3107	31027	MG	Aracai
3103306	3306	Aracitaba	1	31	3112	31065	MG	Aracitaba
3103405	3405	Araçuaí	1	31	3103	31012	MG	Aracuai
3103504	3504	Araguari	1	31	3105	31018	MG	Araguari
3103603	3603	Arantina	1	31	3110	31055	MG	Arantina
3103702	3702	Araponga	1	31	3112	31062	MG	Araponga
3103751	3751	Araporã	1	31	3105	31018	MG	Arapora
3103801	3801	Arapuá	1	31	3105	31020	MG	Arapua
3103900	3900	Araújos	1	31	3106	31026	MG	Araujos
3104007	4007	Araxá	1	31	3105	31023	MG	Araxa
3104106	4106	Arceburgo	1	31	3110	31048	MG	Arceburgo
3104205	4205	Arcos	1	31	3109	31044	MG	Arcos
3104304	4304	Areado	1	31	3110	31049	MG	Areado
3104403	4403	Argirita	1	31	3112	31066	MG	Argirita
3104452	4452	Aricanduva	1	31	3103	31011	MG	Aricanduva
3104502	4502	Arinos	1	31	3101	31001	MG	Arinos
3104601	4601	Astolfo Dutra	1	31	3112	31064	MG	Astolfo Dutra
3104700	4700	Ataléia	1	31	3104	31015	MG	Ataleia
3104809	4809	Augusto de Lima	1	31	3106	31025	MG	Augusto de Lima
3104908	4908	Baependi	1	31	3110	31054	MG	Baependi
3105004	5004	Baldim	1	31	3107	31027	MG	Baldim
3105103	5103	Bambuí	1	31	3109	31042	MG	Bambui
3105202	5202	Bandeira	1	31	3103	31014	MG	Bandeira
3105301	5301	Bandeira do Sul	1	31	3110	31051	MG	Bandeira do Sul
3105400	5400	Barão de Cocais	1	31	3107	31031	MG	Barao de Cocais
3105509	5509	Barão de Monte Alto	1	31	3112	31063	MG	Barao de Monte Alto
3105608	5608	Barbacena	1	31	3111	31059	MG	Barbacena
3105707	5707	Barra Longa	1	31	3112	31060	MG	Barra Longa
3105905	5905	Barroso	1	31	3111	31059	MG	Barroso
3106002	6002	Bela Vista de Minas	1	31	3107	31031	MG	Bela Vista de Minas
3106101	6101	Belmiro Braga	1	31	3112	31065	MG	Belmiro Braga
3106200	6200	Belo Horizonte	1	31	3107	31030	MG	Belo Horizonte
3106309	6309	Belo Oriente	1	31	3108	31039	MG	Belo Oriente
3106408	6408	Belo Vale	1	31	3107	31032	MG	Belo Vale
3106507	6507	Berilo	1	31	3103	31011	MG	Berilo
3106655	6655	Berizal	1	31	3102	31005	MG	Berizal
3106606	6606	Bertópolis	1	31	3104	31016	MG	Bertopolis
3106705	6705	Betim	1	31	3107	31030	MG	Betim
3106804	6804	Bias Fortes	1	31	3112	31065	MG	Bias Fortes
3106903	6903	Bicas	1	31	3112	31065	MG	Bicas
3107000	7000	Biquinhas	1	31	3106	31024	MG	Biquinhas
3107109	7109	Boa Esperança	1	31	3110	31050	MG	Boa Esperanca
3107208	7208	Bocaina de Minas	1	31	3110	31055	MG	Bocaina de Minas
3107307	7307	Bocaiúva	1	31	3102	31009	MG	Bocaiuva
3107406	7406	Bom Despacho	1	31	3106	31026	MG	Bom Despacho
3107505	7505	Bom Jardim de Minas	1	31	3110	31055	MG	Bom Jardim de Minas
3107604	7604	Bom Jesus da Penha	1	31	3110	31047	MG	Bom Jesus da Penha
3107703	7703	Bom Jesus do Amparo	1	31	3107	31031	MG	Bom Jesus do Amparo
3107802	7802	Bom Jesus do Galho	1	31	3108	31040	MG	Bom Jesus do Galho
3107901	7901	Bom Repouso	1	31	3110	31052	MG	Bom Repouso
3108008	8008	Bom Sucesso	1	31	3109	31046	MG	Bom Sucesso
3108107	8107	Bonfim	1	31	3107	31032	MG	Bonfim
3108206	8206	Bonfinópolis de Minas	1	31	3101	31001	MG	Bonfinopolis de Minas
3108255	8255	Bonito de Minas	1	31	3102	31003	MG	Bonito de Minas
3108305	8305	Borda da Mata	1	31	3110	31052	MG	Borda da Mata
3108404	8404	Botelhos	1	31	3110	31051	MG	Botelhos
3108503	8503	Botumirim	1	31	3102	31008	MG	Botumirim
3108701	8701	Brás Pires	1	31	3112	31062	MG	Bras Pires
3108552	8552	Brasilândia de Minas	1	31	3101	31002	MG	Brasilandia de Minas
3108602	8602	Brasília de Minas	1	31	3102	31007	MG	Brasilia de Minas
3108800	8800	Braúnas	1	31	3108	31035	MG	Braunas
3108909	8909	Brazópolis	1	31	3110	31056	MG	Brazopolis
3109006	9006	Brumadinho	1	31	3107	31030	MG	Brumadinho
3109105	9105	Bueno Brandão	1	31	3110	31052	MG	Bueno Brandao
3109204	9204	Buenópolis	1	31	3106	31025	MG	Buenopolis
3109253	9253	Bugre	1	31	3108	31040	MG	Bugre
3109303	9303	Buritis	1	31	3101	31001	MG	Buritis
3109402	9402	Buritizeiro	1	31	3102	31006	MG	Buritizeiro
3109451	9451	Cabeceira Grande	1	31	3101	31001	MG	Cabeceira Grande
3109501	9501	Cabo Verde	1	31	3110	31048	MG	Cabo Verde
3109600	9600	Cachoeira da Prata	1	31	3107	31027	MG	Cachoeira da Prata
3109709	9709	Cachoeira de Minas	1	31	3110	31053	MG	Cachoeira de Minas
3102704	2704	Cachoeira de Pajeú	1	31	3103	31013	MG	Cachoeira de Pajeu
3109808	9808	Cachoeira Dourada	1	31	3105	31017	MG	Cachoeira Dourada
3109907	9907	Caetanópolis	1	31	3107	31027	MG	Caetanopolis
3110004	10004	Caeté	1	31	3107	31030	MG	Caete
3110103	10103	Caiana	1	31	3112	31063	MG	Caiana
3110202	10202	Cajuri	1	31	3112	31062	MG	Cajuri
3110301	10301	Caldas	1	31	3110	31051	MG	Caldas
3110400	10400	Camacho	1	31	3109	31044	MG	Camacho
3110509	10509	Camanducaia	1	31	3110	31052	MG	Camanducaia
3110608	10608	Cambuí	1	31	3110	31052	MG	Cambui
3110707	10707	Cambuquira	1	31	3110	31054	MG	Cambuquira
3110806	10806	Campanário	1	31	3108	31037	MG	Campanario
3110905	10905	Campanha	1	31	3110	31050	MG	Campanha
3111002	11002	Campestre	1	31	3110	31051	MG	Campestre
3111101	11101	Campina Verde	1	31	3105	31021	MG	Campina Verde
3111150	11150	Campo Azul	1	31	3102	31007	MG	Campo Azul
3111200	11200	Campo Belo	1	31	3109	31045	MG	Campo Belo
3111309	11309	Campo do Meio	1	31	3110	31050	MG	Campo do Meio
3111408	11408	Campo Florido	1	31	3105	31022	MG	Campo Florido
3111507	11507	Campos Altos	1	31	3105	31023	MG	Campos Altos
3111606	11606	Campos Gerais	1	31	3110	31050	MG	Campos Gerais
3111903	11903	Cana Verde	1	31	3109	31045	MG	Cana Verde
3111705	11705	Canaã	1	31	3112	31062	MG	Canaa
3111804	11804	Canápolis	1	31	3105	31018	MG	Canapolis
3112000	12000	Candeias	1	31	3109	31045	MG	Candeias
3112059	12059	Cantagalo	1	31	3108	31036	MG	Cantagalo
3112109	12109	Caparaó	1	31	3112	31061	MG	Caparao
3112208	12208	Capela Nova	1	31	3111	31059	MG	Capela Nova
3112307	12307	Capelinha	1	31	3103	31011	MG	Capelinha
3112406	12406	Capetinga	1	31	3110	31047	MG	Capetinga
3112505	12505	Capim Branco	1	31	3107	31027	MG	Capim Branco
3112604	12604	Capinópolis	1	31	3105	31017	MG	Capinopolis
3112653	12653	Capitão Andrade	1	31	3108	31037	MG	Capitao Andrade
3112703	12703	Capitão Enéas	1	31	3102	31007	MG	Capitao Eneas
3112802	12802	Capitólio	1	31	3110	31047	MG	Capitolio
3112901	12901	Caputira	1	31	3112	31061	MG	Caputira
3113008	13008	Caraí	1	31	3103	31012	MG	Carai
3113107	13107	Caranaíba	1	31	3111	31059	MG	Caranaiba
3113206	13206	Carandaí	1	31	3111	31059	MG	Carandai
3113305	13305	Carangola	1	31	3112	31063	MG	Carangola
3113404	13404	Caratinga	1	31	3108	31040	MG	Caratinga
3113503	13503	Carbonita	1	31	3103	31011	MG	Carbonita
3113602	13602	Careaçu	1	31	3110	31053	MG	Careacu
3113701	13701	Carlos Chagas	1	31	3104	31016	MG	Carlos Chagas
3113800	13800	Carmésia	1	31	3108	31035	MG	Carmesia
3113909	13909	Carmo da Cachoeira	1	31	3110	31050	MG	Carmo da Cachoeira
3114006	14006	Carmo da Mata	1	31	3109	31046	MG	Carmo da Mata
3114105	14105	Carmo de Minas	1	31	3110	31054	MG	Carmo de Minas
3114204	14204	Carmo do Cajuru	1	31	3109	31043	MG	Carmo do Cajuru
3114303	14303	Carmo do Paranaíba	1	31	3105	31020	MG	Carmo do Paranaiba
3114402	14402	Carmo do Rio Claro	1	31	3110	31049	MG	Carmo do Rio Claro
3114501	14501	Carmópolis de Minas	1	31	3109	31046	MG	Carmopolis de Minas
3114550	14550	Carneirinho	1	31	3105	31021	MG	Carneirinho
3114600	14600	Carrancas	1	31	3111	31057	MG	Carrancas
3114709	14709	Carvalhópolis	1	31	3110	31049	MG	Carvalhopolis
3114808	14808	Carvalhos	1	31	3110	31055	MG	Carvalhos
3114907	14907	Casa Grande	1	31	3107	31034	MG	Casa Grande
3115003	15003	Cascalho Rico	1	31	3105	31018	MG	Cascalho Rico
3115102	15102	Cássia	1	31	3110	31047	MG	Cassia
3115300	15300	Cataguases	1	31	3112	31066	MG	Cataguases
3115359	15359	Catas Altas	1	31	3107	31031	MG	Catas Altas
3115409	15409	Catas Altas da Noruega	1	31	3107	31034	MG	Catas Altas da Noruega
3115458	15458	Catuji	1	31	3104	31015	MG	Catuji
3115474	15474	Catuti	1	31	3102	31004	MG	Catuti
3115508	15508	Caxambu	1	31	3110	31054	MG	Caxambu
3115607	15607	Cedro do Abaeté	1	31	3106	31024	MG	Cedro do Abaete
3115706	15706	Central de Minas	1	31	3108	31038	MG	Central de Minas
3115805	15805	Centralina	1	31	3105	31018	MG	Centralina
3115904	15904	Chácara	1	31	3112	31065	MG	Chacara
3116001	16001	Chalé	1	31	3112	31061	MG	Chale
3116100	16100	Chapada do Norte	1	31	3103	31011	MG	Chapada do Norte
3116159	16159	Chapada Gaúcha	1	31	3102	31003	MG	Chapada Gaucha
3116209	16209	Chiador	1	31	3112	31065	MG	Chiador
3116308	16308	Cipotânea	1	31	3112	31062	MG	Cipotanea
3116407	16407	Claraval	1	31	3110	31047	MG	Claraval
3116506	16506	Claro dos Poções	1	31	3102	31007	MG	Claro dos Pocoes
3116605	16605	Cláudio	1	31	3109	31043	MG	Claudio
3116704	16704	Coimbra	1	31	3112	31062	MG	Coimbra
3116803	16803	Coluna	1	31	3108	31035	MG	Coluna
3116902	16902	Comendador Gomes	1	31	3105	31021	MG	Comendador Gomes
3117009	17009	Comercinho	1	31	3103	31013	MG	Comercinho
3117108	17108	Conceição da Aparecida	1	31	3110	31049	MG	Conceicao da Aparecida
3115201	15201	Conceição da Barra de Minas	1	31	3111	31058	MG	Conceicao da Barra de Minas
3117306	17306	Conceição das Alagoas	1	31	3105	31022	MG	Conceicao das Alagoas
3117207	17207	Conceição das Pedras	1	31	3110	31053	MG	Conceicao das Pedras
3117405	17405	Conceição de Ipanema	1	31	3108	31041	MG	Conceicao de Ipanema
3117504	17504	Conceição do Mato Dentro	1	31	3107	31028	MG	Conceicao do Mato Dentro
3117603	17603	Conceição do Pará	1	31	3109	31043	MG	Conceicao do Para
3117702	17702	Conceição do Rio Verde	1	31	3110	31054	MG	Conceicao do Rio Verde
3117801	17801	Conceição dos Ouros	1	31	3110	31053	MG	Conceicao dos Ouros
3117836	17836	Cônego Marinho	1	31	3102	31003	MG	Conego Marinho
3117876	17876	Confins	1	31	3107	31030	MG	Confins
3117900	17900	Congonhal	1	31	3110	31052	MG	Congonhal
3118007	18007	Congonhas	1	31	3107	31034	MG	Congonhas
3118106	18106	Congonhas do Norte	1	31	3107	31028	MG	Congonhas do Norte
3118205	18205	Conquista	1	31	3105	31022	MG	Conquista
3118304	18304	Conselheiro Lafaiete	1	31	3107	31034	MG	Conselheiro Lafaiete
3118403	18403	Conselheiro Pena	1	31	3108	31041	MG	Conselheiro Pena
3118502	18502	Consolação	1	31	3110	31056	MG	Consolacao
3118601	18601	Contagem	1	31	3107	31030	MG	Contagem
3118700	18700	Coqueiral	1	31	3110	31050	MG	Coqueiral
3118809	18809	Coração de Jesus	1	31	3102	31007	MG	Coracao de Jesus
3118908	18908	Cordisburgo	1	31	3107	31027	MG	Cordisburgo
3119005	19005	Cordislândia	1	31	3110	31053	MG	Cordislandia
3119104	19104	Corinto	1	31	3106	31025	MG	Corinto
3119203	19203	Coroaci	1	31	3108	31037	MG	Coroaci
3119302	19302	Coromandel	1	31	3105	31019	MG	Coromandel
3119401	19401	Coronel Fabriciano	1	31	3108	31039	MG	Coronel Fabriciano
3119500	19500	Coronel Murta	1	31	3103	31012	MG	Coronel Murta
3119609	19609	Coronel Pacheco	1	31	3112	31065	MG	Coronel Pacheco
3119708	19708	Coronel Xavier Chaves	1	31	3111	31058	MG	Coronel Xavier Chaves
3119807	19807	Córrego Danta	1	31	3109	31042	MG	Corrego Danta
3119906	19906	Córrego do Bom Jesus	1	31	3110	31052	MG	Corrego do Bom Jesus
3119955	19955	Córrego Fundo	1	31	3109	31044	MG	Corrego Fundo
3120003	20003	Córrego Novo	1	31	3108	31040	MG	Corrego Novo
3120102	20102	Couto de Magalhães de Minas	1	31	3103	31010	MG	Couto de Magalhaes de Minas
3120151	20151	Crisólita	1	31	3104	31016	MG	Crisolita
3120201	20201	Cristais	1	31	3109	31045	MG	Cristais
3120300	20300	Cristália	1	31	3102	31008	MG	Cristalia
3120409	20409	Cristiano Otoni	1	31	3107	31034	MG	Cristiano Otoni
3120508	20508	Cristina	1	31	3110	31056	MG	Cristina
3120607	20607	Crucilândia	1	31	3107	31032	MG	Crucilandia
3120706	20706	Cruzeiro da Fortaleza	1	31	3105	31019	MG	Cruzeiro da Fortaleza
3120805	20805	Cruzília	1	31	3110	31055	MG	Cruzilia
3120839	20839	Cuparaque	1	31	3108	31041	MG	Cuparaque
3120870	20870	Curral de Dentro	1	31	3102	31005	MG	Curral de Dentro
3120904	20904	Curvelo	1	31	3106	31025	MG	Curvelo
3121001	21001	Datas	1	31	3103	31010	MG	Datas
3121100	21100	Delfim Moreira	1	31	3110	31056	MG	Delfim Moreira
3121209	21209	Delfinópolis	1	31	3110	31047	MG	Delfinopolis
3121258	21258	Delta	1	31	3105	31022	MG	Delta
3121308	21308	Descoberto	1	31	3112	31065	MG	Descoberto
3121407	21407	Desterro de Entre Rios	1	31	3107	31034	MG	Desterro de Entre Rios
3121506	21506	Desterro do Melo	1	31	3111	31059	MG	Desterro do Melo
3121605	21605	Diamantina	1	31	3103	31010	MG	Diamantina
3121704	21704	Diogo de Vasconcelos	1	31	3107	31033	MG	Diogo de Vasconcelos
3121803	21803	Dionísio	1	31	3107	31031	MG	Dionisio
3121902	21902	Divinésia	1	31	3112	31064	MG	Divinesia
3122009	22009	Divino	1	31	3112	31063	MG	Divino
3122108	22108	Divino das Laranjeiras	1	31	3108	31037	MG	Divino das Laranjeiras
3122207	22207	Divinolândia de Minas	1	31	3108	31035	MG	Divinolandia de Minas
3122306	22306	Divinópolis	1	31	3109	31043	MG	Divinopolis
3122355	22355	Divisa Alegre	1	31	3102	31005	MG	Divisa Alegre
3122405	22405	Divisa Nova	1	31	3110	31049	MG	Divisa Nova
3122454	22454	Divisópolis	1	31	3103	31014	MG	Divisopolis
3122470	22470	Dom Bosco	1	31	3101	31001	MG	Dom Bosco
3122504	22504	Dom Cavati	1	31	3108	31040	MG	Dom Cavati
3122603	22603	Dom Joaquim	1	31	3107	31028	MG	Dom Joaquim
3122702	22702	Dom Silvério	1	31	3112	31060	MG	Dom Silverio
3122801	22801	Dom Viçoso	1	31	3110	31056	MG	Dom Vicoso
3122900	22900	Dona Eusébia	1	31	3112	31066	MG	Dona Eusebia
3123007	23007	Dores de Campos	1	31	3111	31058	MG	Dores de Campos
3123106	23106	Dores de Guanhães	1	31	3108	31035	MG	Dores de Guanhaes
3123205	23205	Dores do Indaiá	1	31	3106	31026	MG	Dores do Indaia
3123304	23304	Dores do Turvo	1	31	3112	31064	MG	Dores do Turvo
3123403	23403	Doresópolis	1	31	3109	31042	MG	Doresopolis
3123502	23502	Douradoquara	1	31	3105	31019	MG	Douradoquara
3123528	23528	Durandé	1	31	3112	31061	MG	Durande
3123601	23601	Elói Mendes	1	31	3110	31050	MG	Eloi Mendes
3123700	23700	Engenheiro Caldas	1	31	3108	31037	MG	Engenheiro Caldas
3123809	23809	Engenheiro Navarro	1	31	3102	31009	MG	Engenheiro Navarro
3123858	23858	Entre Folhas	1	31	3108	31040	MG	Entre Folhas
3123908	23908	Entre Rios de Minas	1	31	3107	31034	MG	Entre Rios de Minas
3124005	24005	Ervália	1	31	3112	31062	MG	Ervalia
3124104	24104	Esmeraldas	1	31	3107	31030	MG	Esmeraldas
3124203	24203	Espera Feliz	1	31	3112	31063	MG	Espera Feliz
3124302	24302	Espinosa	1	31	3102	31004	MG	Espinosa
3124401	24401	Espírito Santo do Dourado	1	31	3110	31052	MG	Espirito Santo do Dourado
3124500	24500	Estiva	1	31	3110	31052	MG	Estiva
3124609	24609	Estrela Dalva	1	31	3112	31066	MG	Estrela Dalva
3124708	24708	Estrela do Indaiá	1	31	3106	31026	MG	Estrela do Indaia
3124807	24807	Estrela do Sul	1	31	3105	31019	MG	Estrela do Sul
3124906	24906	Eugenópolis	1	31	3112	31063	MG	Eugenopolis
3125002	25002	Ewbank da Câmara	1	31	3112	31065	MG	Ewbank da Camara
3125101	25101	Extrema	1	31	3110	31052	MG	Extrema
3125200	25200	Fama	1	31	3110	31049	MG	Fama
3125309	25309	Faria Lemos	1	31	3112	31063	MG	Faria Lemos
3125408	25408	Felício dos Santos	1	31	3103	31010	MG	Felicio dos Santos
3125606	25606	Felisburgo	1	31	3103	31014	MG	Felisburgo
3125705	25705	Felixlândia	1	31	3106	31025	MG	Felixlandia
3125804	25804	Fernandes Tourinho	1	31	3108	31037	MG	Fernandes Tourinho
3125903	25903	Ferros	1	31	3107	31031	MG	Ferros
3125952	25952	Fervedouro	1	31	3112	31063	MG	Fervedouro
3126000	26000	Florestal	1	31	3107	31029	MG	Florestal
3126109	26109	Formiga	1	31	3109	31044	MG	Formiga
3126208	26208	Formoso	1	31	3101	31001	MG	Formoso
3126307	26307	Fortaleza de Minas	1	31	3110	31047	MG	Fortaleza de Minas
3126406	26406	Fortuna de Minas	1	31	3107	31027	MG	Fortuna de Minas
3126505	26505	Francisco Badaró	1	31	3103	31011	MG	Francisco Badaro
3126604	26604	Francisco Dumont	1	31	3102	31009	MG	Francisco Dumont
3126703	26703	Francisco Sá	1	31	3102	31007	MG	Francisco Sa
3126752	26752	Franciscópolis	1	31	3104	31015	MG	Franciscopolis
3126802	26802	Frei Gaspar	1	31	3104	31015	MG	Frei Gaspar
3126901	26901	Frei Inocêncio	1	31	3108	31037	MG	Frei Inocencio
3126950	26950	Frei Lagonegro	1	31	3108	31036	MG	Frei Lagonegro
3127008	27008	Fronteira	1	31	3105	31021	MG	Fronteira
3127057	27057	Fronteira dos Vales	1	31	3104	31016	MG	Fronteira dos Vales
3127073	27073	Fruta de Leite	1	31	3102	31005	MG	Fruta de Leite
3127107	27107	Frutal	1	31	3105	31021	MG	Frutal
3127206	27206	Funilândia	1	31	3107	31027	MG	Funilandia
3127305	27305	Galiléia	1	31	3108	31037	MG	Galileia
3127339	27339	Gameleiras	1	31	3102	31004	MG	Gameleiras
3127354	27354	Glaucilândia	1	31	3102	31007	MG	Glaucilandia
3127370	27370	Goiabeira	1	31	3108	31041	MG	Goiabeira
3127388	27388	Goianá	1	31	3112	31065	MG	Goiana
3127404	27404	Gonçalves	1	31	3110	31052	MG	Goncalves
3127503	27503	Gonzaga	1	31	3108	31035	MG	Gonzaga
3127602	27602	Gouveia	1	31	3103	31010	MG	Gouveia
3127701	27701	Governador Valadares	1	31	3108	31037	MG	Governador Valadares
3127800	27800	Grão Mogol	1	31	3102	31008	MG	Grao Mogol
3127909	27909	Grupiara	1	31	3105	31019	MG	Grupiara
3128006	28006	Guanhães	1	31	3108	31035	MG	Guanhaes
3128105	28105	Guapé	1	31	3110	31050	MG	Guape
3128204	28204	Guaraciaba	1	31	3112	31060	MG	Guaraciaba
3128253	28253	Guaraciama	1	31	3102	31009	MG	Guaraciama
3128303	28303	Guaranésia	1	31	3110	31048	MG	Guaranesia
3128402	28402	Guarani	1	31	3112	31064	MG	Guarani
3128501	28501	Guarará	1	31	3112	31065	MG	Guarara
3128600	28600	Guarda-Mor	1	31	3101	31002	MG	Guarda-Mor
3128709	28709	Guaxupé	1	31	3110	31048	MG	Guaxupe
3128808	28808	Guidoval	1	31	3112	31064	MG	Guidoval
3128907	28907	Guimarânia	1	31	3105	31020	MG	Guimarania
3129004	29004	Guiricema	1	31	3112	31064	MG	Guiricema
3129103	29103	Gurinhatã	1	31	3105	31017	MG	Gurinhata
3129202	29202	Heliodora	1	31	3110	31053	MG	Heliodora
3129301	29301	Iapu	1	31	3108	31040	MG	Iapu
3129400	29400	Ibertioga	1	31	3111	31059	MG	Ibertioga
3129509	29509	Ibiá	1	31	3105	31023	MG	Ibia
3129608	29608	Ibiaí	1	31	3102	31006	MG	Ibiai
3129657	29657	Ibiracatu	1	31	3102	31007	MG	Ibiracatu
3129707	29707	Ibiraci	1	31	3110	31047	MG	Ibiraci
3129806	29806	Ibirité	1	31	3107	31030	MG	Ibirite
3129905	29905	Ibitiúra de Minas	1	31	3110	31051	MG	Ibitiura de Minas
3130002	30002	Ibituruna	1	31	3109	31046	MG	Ibituruna
3130051	30051	Icaraí de Minas	1	31	3102	31003	MG	Icarai de Minas
3130101	30101	Igarapé	1	31	3107	31030	MG	Igarape
3130200	30200	Igaratinga	1	31	3109	31043	MG	Igaratinga
3130309	30309	Iguatama	1	31	3109	31042	MG	Iguatama
3130408	30408	Ijaci	1	31	3111	31057	MG	Ijaci
3130507	30507	Ilicínea	1	31	3110	31050	MG	Ilicinea
3130556	30556	Imbé de Minas	1	31	3108	31040	MG	Imbe de Minas
3130606	30606	Inconfidentes	1	31	3110	31051	MG	Inconfidentes
3130655	30655	Indaiabira	1	31	3102	31005	MG	Indaiabira
3130705	30705	Indianópolis	1	31	3105	31018	MG	Indianopolis
3130804	30804	Ingaí	1	31	3111	31057	MG	Ingai
3130903	30903	Inhapim	1	31	3108	31040	MG	Inhapim
3131000	31000	Inhaúma	1	31	3107	31027	MG	Inhauma
3131109	31109	Inimutaba	1	31	3106	31025	MG	Inimutaba
3131158	31158	Ipaba	1	31	3108	31040	MG	Ipaba
3131208	31208	Ipanema	1	31	3108	31041	MG	Ipanema
3131307	31307	Ipatinga	1	31	3108	31039	MG	Ipatinga
3131406	31406	Ipiaçu	1	31	3105	31017	MG	Ipiacu
3131505	31505	Ipuiúna	1	31	3110	31052	MG	Ipuiuna
3131604	31604	Iraí de Minas	1	31	3105	31019	MG	Irai de Minas
3131703	31703	Itabira	1	31	3107	31031	MG	Itabira
3131802	31802	Itabirinha	1	31	3108	31038	MG	Itabirinha
3131901	31901	Itabirito	1	31	3107	31033	MG	Itabirito
3132008	32008	Itacambira	1	31	3102	31008	MG	Itacambira
3132107	32107	Itacarambi	1	31	3102	31003	MG	Itacarambi
3132206	32206	Itaguara	1	31	3107	31032	MG	Itaguara
3132305	32305	Itaipé	1	31	3104	31015	MG	Itaipe
3132404	32404	Itajubá	1	31	3110	31056	MG	Itajuba
3132503	32503	Itamarandiba	1	31	3103	31011	MG	Itamarandiba
3132602	32602	Itamarati de Minas	1	31	3112	31066	MG	Itamarati de Minas
3132701	32701	Itambacuri	1	31	3108	31037	MG	Itambacuri
3132800	32800	Itambé do Mato Dentro	1	31	3107	31028	MG	Itambe do Mato Dentro
3132909	32909	Itamogi	1	31	3110	31048	MG	Itamogi
3133006	33006	Itamonte	1	31	3110	31054	MG	Itamonte
3133105	33105	Itanhandu	1	31	3110	31054	MG	Itanhandu
3133204	33204	Itanhomi	1	31	3108	31037	MG	Itanhomi
3133303	33303	Itaobim	1	31	3103	31013	MG	Itaobim
3133402	33402	Itapagipe	1	31	3105	31021	MG	Itapagipe
3133501	33501	Itapecerica	1	31	3109	31044	MG	Itapecerica
3133600	33600	Itapeva	1	31	3110	31052	MG	Itapeva
3133709	33709	Itatiaiuçu	1	31	3107	31032	MG	Itatiaiucu
3133758	33758	Itaú de Minas	1	31	3110	31047	MG	Itau de Minas
3133808	33808	Itaúna	1	31	3109	31043	MG	Itauna
3133907	33907	Itaverava	1	31	3107	31034	MG	Itaverava
3134004	34004	Itinga	1	31	3103	31012	MG	Itinga
3134103	34103	Itueta	1	31	3108	31041	MG	Itueta
3134202	34202	Ituiutaba	1	31	3105	31017	MG	Ituiutaba
3134301	34301	Itumirim	1	31	3111	31057	MG	Itumirim
3134400	34400	Iturama	1	31	3105	31021	MG	Iturama
3134509	34509	Itutinga	1	31	3111	31057	MG	Itutinga
3134608	34608	Jaboticatubas	1	31	3107	31027	MG	Jaboticatubas
3134707	34707	Jacinto	1	31	3103	31014	MG	Jacinto
3134806	34806	Jacuí	1	31	3110	31048	MG	Jacui
3134905	34905	Jacutinga	1	31	3110	31051	MG	Jacutinga
3135001	35001	Jaguaraçu	1	31	3108	31039	MG	Jaguaracu
3135050	35050	Jaíba	1	31	3102	31004	MG	Jaiba
3135076	35076	Jampruca	1	31	3108	31037	MG	Jampruca
3135100	35100	Janaúba	1	31	3102	31004	MG	Janauba
3135209	35209	Januária	1	31	3102	31003	MG	Januaria
3135308	35308	Japaraíba	1	31	3106	31026	MG	Japaraiba
3135357	35357	Japonvar	1	31	3102	31007	MG	Japonvar
3135407	35407	Jeceaba	1	31	3107	31032	MG	Jeceaba
3135456	35456	Jenipapo de Minas	1	31	3103	31011	MG	Jenipapo de Minas
3135506	35506	Jequeri	1	31	3112	31060	MG	Jequeri
3135605	35605	Jequitaí	1	31	3102	31006	MG	Jequitai
3135704	35704	Jequitibá	1	31	3107	31027	MG	Jequitiba
3135803	35803	Jequitinhonha	1	31	3103	31014	MG	Jequitinhonha
3135902	35902	Jesuânia	1	31	3110	31054	MG	Jesuania
3136009	36009	Joaíma	1	31	3103	31014	MG	Joaima
3136108	36108	Joanésia	1	31	3108	31039	MG	Joanesia
3136207	36207	João Monlevade	1	31	3107	31031	MG	Joao Monlevade
3136306	36306	João Pinheiro	1	31	3101	31002	MG	Joao Pinheiro
3136405	36405	Joaquim Felício	1	31	3106	31025	MG	Joaquim Felicio
3136504	36504	Jordânia	1	31	3103	31014	MG	Jordania
3136520	36520	José Gonçalves de Minas	1	31	3103	31011	MG	Jose Goncalves de Minas
3136553	36553	José Raydan	1	31	3108	31036	MG	Jose Raydan
3136579	36579	Josenópolis	1	31	3102	31008	MG	Josenopolis
3136652	36652	Juatuba	1	31	3107	31030	MG	Juatuba
3136702	36702	Juiz de Fora	1	31	3112	31065	MG	Juiz de Fora
3136801	36801	Juramento	1	31	3102	31007	MG	Juramento
3136900	36900	Juruaia	1	31	3110	31048	MG	Juruaia
3136959	36959	Juvenília	1	31	3102	31003	MG	Juvenilia
3137007	37007	Ladainha	1	31	3104	31015	MG	Ladainha
3137106	37106	Lagamar	1	31	3101	31002	MG	Lagamar
3137205	37205	Lagoa da Prata	1	31	3106	31026	MG	Lagoa da Prata
3137304	37304	Lagoa dos Patos	1	31	3102	31006	MG	Lagoa dos Patos
3137403	37403	Lagoa Dourada	1	31	3111	31058	MG	Lagoa Dourada
3137502	37502	Lagoa Formosa	1	31	3105	31020	MG	Lagoa Formosa
3137536	37536	Lagoa Grande	1	31	3101	31002	MG	Lagoa Grande
3137601	37601	Lagoa Santa	1	31	3107	31030	MG	Lagoa Santa
3137700	37700	Lajinha	1	31	3112	31061	MG	Lajinha
3137809	37809	Lambari	1	31	3110	31054	MG	Lambari
3137908	37908	Lamim	1	31	3112	31062	MG	Lamim
3138005	38005	Laranjal	1	31	3112	31066	MG	Laranjal
3138104	38104	Lassance	1	31	3102	31006	MG	Lassance
3138203	38203	Lavras	1	31	3111	31057	MG	Lavras
3138302	38302	Leandro Ferreira	1	31	3106	31026	MG	Leandro Ferreira
3138351	38351	Leme do Prado	1	31	3103	31011	MG	Leme do Prado
3138401	38401	Leopoldina	1	31	3112	31066	MG	Leopoldina
3138500	38500	Liberdade	1	31	3110	31055	MG	Liberdade
3138609	38609	Lima Duarte	1	31	3112	31065	MG	Lima Duarte
3138625	38625	Limeira do Oeste	1	31	3105	31021	MG	Limeira do Oeste
3138658	38658	Lontra	1	31	3102	31007	MG	Lontra
3138674	38674	Luisburgo	1	31	3112	31061	MG	Luisburgo
3138682	38682	Luislândia	1	31	3102	31007	MG	Luislandia
3138708	38708	Luminárias	1	31	3111	31057	MG	Luminarias
3138807	38807	Luz	1	31	3106	31026	MG	Luz
3138906	38906	Machacalis	1	31	3104	31016	MG	Machacalis
3139003	39003	Machado	1	31	3110	31049	MG	Machado
3139102	39102	Madre de Deus de Minas	1	31	3111	31058	MG	Madre de Deus de Minas
3139201	39201	Malacacheta	1	31	3104	31015	MG	Malacacheta
3139250	39250	Mamonas	1	31	3102	31004	MG	Mamonas
3139300	39300	Manga	1	31	3102	31003	MG	Manga
3139409	39409	Manhuaçu	1	31	3112	31061	MG	Manhuacu
3139508	39508	Manhumirim	1	31	3112	31061	MG	Manhumirim
3139607	39607	Mantena	1	31	3108	31038	MG	Mantena
3139805	39805	Mar de Espanha	1	31	3112	31065	MG	Mar de Espanha
3139706	39706	Maravilhas	1	31	3107	31027	MG	Maravilhas
3139904	39904	Maria da Fé	1	31	3110	31056	MG	Maria da Fe
3140001	40001	Mariana	1	31	3107	31033	MG	Mariana
3140100	40100	Marilac	1	31	3108	31037	MG	Marilac
3140159	40159	Mário Campos	1	31	3107	31030	MG	Mario Campos
3140209	40209	Maripá de Minas	1	31	3112	31065	MG	Maripa de Minas
3140308	40308	Marliéria	1	31	3108	31039	MG	Marlieria
3140407	40407	Marmelópolis	1	31	3110	31056	MG	Marmelopolis
3140506	40506	Martinho Campos	1	31	3106	31026	MG	Martinho Campos
3140530	40530	Martins Soares	1	31	3112	31061	MG	Martins Soares
3140555	40555	Mata Verde	1	31	3103	31014	MG	Mata Verde
3140605	40605	Materlândia	1	31	3108	31035	MG	Materlandia
3140704	40704	Mateus Leme	1	31	3107	31030	MG	Mateus Leme
3171501	71501	Mathias Lobato	1	31	3108	31037	MG	Mathias Lobato
3140803	40803	Matias Barbosa	1	31	3112	31065	MG	Matias Barbosa
3140852	40852	Matias Cardoso	1	31	3102	31003	MG	Matias Cardoso
3140902	40902	Matipó	1	31	3112	31061	MG	Matipo
3141009	41009	Mato Verde	1	31	3102	31004	MG	Mato Verde
3141108	41108	Matozinhos	1	31	3107	31027	MG	Matozinhos
3141207	41207	Matutina	1	31	3105	31020	MG	Matutina
3141306	41306	Medeiros	1	31	3109	31042	MG	Medeiros
3141405	41405	Medina	1	31	3103	31013	MG	Medina
3141504	41504	Mendes Pimentel	1	31	3108	31038	MG	Mendes Pimentel
3141603	41603	Mercês	1	31	3112	31064	MG	Merces
3141702	41702	Mesquita	1	31	3108	31039	MG	Mesquita
3141801	41801	Minas Novas	1	31	3103	31011	MG	Minas Novas
3141900	41900	Minduri	1	31	3110	31055	MG	Minduri
3142007	42007	Mirabela	1	31	3102	31007	MG	Mirabela
3142106	42106	Miradouro	1	31	3112	31063	MG	Miradouro
3142205	42205	Miraí	1	31	3112	31063	MG	Mirai
3142254	42254	Miravânia	1	31	3102	31003	MG	Miravania
3142304	42304	Moeda	1	31	3107	31032	MG	Moeda
3142403	42403	Moema	1	31	3106	31026	MG	Moema
3142502	42502	Monjolos	1	31	3106	31025	MG	Monjolos
3142601	42601	Monsenhor Paulo	1	31	3110	31050	MG	Monsenhor Paulo
3142700	42700	Montalvânia	1	31	3102	31003	MG	Montalvania
3142809	42809	Monte Alegre de Minas	1	31	3105	31018	MG	Monte Alegre de Minas
3142908	42908	Monte Azul	1	31	3102	31004	MG	Monte Azul
3143005	43005	Monte Belo	1	31	3110	31048	MG	Monte Belo
3143104	43104	Monte Carmelo	1	31	3105	31019	MG	Monte Carmelo
3143153	43153	Monte Formoso	1	31	3103	31014	MG	Monte Formoso
3143203	43203	Monte Santo de Minas	1	31	3110	31048	MG	Monte Santo de Minas
3143401	43401	Monte Sião	1	31	3110	31051	MG	Monte Siao
3143302	43302	Montes Claros	1	31	3102	31007	MG	Montes Claros
3143450	43450	Montezuma	1	31	3102	31005	MG	Montezuma
3143500	43500	Morada Nova de Minas	1	31	3106	31024	MG	Morada Nova de Minas
3143609	43609	Morro da Garça	1	31	3106	31025	MG	Morro da Garca
3143708	43708	Morro do Pilar	1	31	3107	31028	MG	Morro do Pilar
3143807	43807	Munhoz	1	31	3110	31052	MG	Munhoz
3143906	43906	Muriaé	1	31	3112	31063	MG	Muriae
3144003	44003	Mutum	1	31	3108	31041	MG	Mutum
3144102	44102	Muzambinho	1	31	3110	31048	MG	Muzambinho
3144201	44201	Nacip Raydan	1	31	3108	31037	MG	Nacip Raydan
3144300	44300	Nanuque	1	31	3104	31016	MG	Nanuque
3144359	44359	Naque	1	31	3108	31039	MG	Naque
3144375	44375	Natalândia	1	31	3101	31001	MG	Natalandia
3144409	44409	Natércia	1	31	3110	31053	MG	Natercia
3144508	44508	Nazareno	1	31	3111	31058	MG	Nazareno
3144607	44607	Nepomuceno	1	31	3111	31057	MG	Nepomuceno
3144656	44656	Ninheira	1	31	3102	31005	MG	Ninheira
3144672	44672	Nova Belém	1	31	3108	31038	MG	Nova Belem
3144706	44706	Nova Era	1	31	3107	31031	MG	Nova Era
3144805	44805	Nova Lima	1	31	3107	31030	MG	Nova Lima
3144904	44904	Nova Módica	1	31	3108	31037	MG	Nova Modica
3145000	45000	Nova Ponte	1	31	3105	31023	MG	Nova Ponte
3145059	45059	Nova Porteirinha	1	31	3102	31004	MG	Nova Porteirinha
3145109	45109	Nova Resende	1	31	3110	31048	MG	Nova Resende
3145208	45208	Nova Serrana	1	31	3109	31043	MG	Nova Serrana
3136603	36603	Nova União	1	31	3107	31031	MG	Nova Uniao
3145307	45307	Novo Cruzeiro	1	31	3103	31012	MG	Novo Cruzeiro
3145356	45356	Novo Oriente de Minas	1	31	3104	31015	MG	Novo Oriente de Minas
3145372	45372	Novorizonte	1	31	3102	31005	MG	Novorizonte
3145406	45406	Olaria	1	31	3112	31065	MG	Olaria
3145455	45455	Olhos-d'Água	1	31	3102	31009	MG	Olhos-d'Agua
3145505	45505	Olímpio Noronha	1	31	3110	31054	MG	Olimpio Noronha
3145604	45604	Oliveira	1	31	3109	31046	MG	Oliveira
3145703	45703	Oliveira Fortes	1	31	3112	31065	MG	Oliveira Fortes
3145802	45802	Onça de Pitangui	1	31	3107	31029	MG	Onca de Pitangui
3145851	45851	Oratórios	1	31	3112	31060	MG	Oratorios
3145877	45877	Orizânia	1	31	3112	31063	MG	Orizania
3145901	45901	Ouro Branco	1	31	3107	31034	MG	Ouro Branco
3146008	46008	Ouro Fino	1	31	3110	31051	MG	Ouro Fino
3146107	46107	Ouro Preto	1	31	3107	31033	MG	Ouro Preto
3146206	46206	Ouro Verde de Minas	1	31	3104	31015	MG	Ouro Verde de Minas
3146255	46255	Padre Carvalho	1	31	3102	31008	MG	Padre Carvalho
3146305	46305	Padre Paraíso	1	31	3103	31012	MG	Padre Paraiso
3146552	46552	Pai Pedro	1	31	3102	31004	MG	Pai Pedro
3146404	46404	Paineiras	1	31	3106	31024	MG	Paineiras
3146503	46503	Pains	1	31	3109	31044	MG	Pains
3146602	46602	Paiva	1	31	3112	31065	MG	Paiva
3146701	46701	Palma	1	31	3112	31066	MG	Palma
3146750	46750	Palmópolis	1	31	3103	31014	MG	Palmopolis
3146909	46909	Papagaios	1	31	3107	31027	MG	Papagaios
3147105	47105	Pará de Minas	1	31	3107	31029	MG	Para de Minas
3147006	47006	Paracatu	1	31	3101	31002	MG	Paracatu
3147204	47204	Paraguaçu	1	31	3110	31049	MG	Paraguacu
3147303	47303	Paraisópolis	1	31	3110	31056	MG	Paraisopolis
3147402	47402	Paraopeba	1	31	3107	31027	MG	Paraopeba
3147600	47600	Passa Quatro	1	31	3110	31054	MG	Passa Quatro
3147709	47709	Passa Tempo	1	31	3109	31046	MG	Passa Tempo
3147501	47501	Passabém	1	31	3107	31028	MG	Passabem
3147808	47808	Passa-Vinte	1	31	3110	31055	MG	Passa-Vinte
3147907	47907	Passos	1	31	3110	31047	MG	Passos
3147956	47956	Patis	1	31	3102	31007	MG	Patis
3148004	48004	Patos de Minas	1	31	3105	31020	MG	Patos de Minas
3148103	48103	Patrocínio	1	31	3105	31019	MG	Patrocinio
3148202	48202	Patrocínio do Muriaé	1	31	3112	31063	MG	Patrocinio do Muriae
3148301	48301	Paula Cândido	1	31	3112	31062	MG	Paula Candido
3148400	48400	Paulistas	1	31	3108	31035	MG	Paulistas
3148509	48509	Pavão	1	31	3104	31015	MG	Pavao
3148608	48608	Peçanha	1	31	3108	31036	MG	Pecanha
3148707	48707	Pedra Azul	1	31	3103	31013	MG	Pedra Azul
3148756	48756	Pedra Bonita	1	31	3112	31061	MG	Pedra Bonita
3148806	48806	Pedra do Anta	1	31	3112	31062	MG	Pedra do Anta
3148905	48905	Pedra do Indaiá	1	31	3109	31044	MG	Pedra do Indaia
3149002	49002	Pedra Dourada	1	31	3112	31063	MG	Pedra Dourada
3149101	49101	Pedralva	1	31	3110	31053	MG	Pedralva
3149150	49150	Pedras de Maria da Cruz	1	31	3102	31003	MG	Pedras de Maria da Cruz
3149200	49200	Pedrinópolis	1	31	3105	31023	MG	Pedrinopolis
3149309	49309	Pedro Leopoldo	1	31	3107	31030	MG	Pedro Leopoldo
3149408	49408	Pedro Teixeira	1	31	3112	31065	MG	Pedro Teixeira
3149507	49507	Pequeri	1	31	3112	31065	MG	Pequeri
3149606	49606	Pequi	1	31	3107	31027	MG	Pequi
3149705	49705	Perdigão	1	31	3109	31043	MG	Perdigao
3149804	49804	Perdizes	1	31	3105	31023	MG	Perdizes
3149903	49903	Perdões	1	31	3109	31045	MG	Perdoes
3149952	49952	Periquito	1	31	3108	31039	MG	Periquito
3150000	50000	Pescador	1	31	3108	31037	MG	Pescador
3150109	50109	Piau	1	31	3112	31065	MG	Piau
3150158	50158	Piedade de Caratinga	1	31	3108	31040	MG	Piedade de Caratinga
3150208	50208	Piedade de Ponte Nova	1	31	3112	31060	MG	Piedade de Ponte Nova
3150307	50307	Piedade do Rio Grande	1	31	3111	31058	MG	Piedade do Rio Grande
3150406	50406	Piedade dos Gerais	1	31	3107	31032	MG	Piedade dos Gerais
3150505	50505	Pimenta	1	31	3109	31044	MG	Pimenta
3150539	50539	Pingo-d'Água	1	31	3108	31040	MG	Pingo-d'Agua
3150570	50570	Pintópolis	1	31	3102	31003	MG	Pintopolis
3150604	50604	Piracema	1	31	3109	31046	MG	Piracema
3150703	50703	Pirajuba	1	31	3105	31021	MG	Pirajuba
3150802	50802	Piranga	1	31	3112	31062	MG	Piranga
3150901	50901	Piranguçu	1	31	3110	31056	MG	Pirangucu
3151008	51008	Piranguinho	1	31	3110	31056	MG	Piranguinho
3151107	51107	Pirapetinga	1	31	3112	31066	MG	Pirapetinga
3151206	51206	Pirapora	1	31	3102	31006	MG	Pirapora
3151305	51305	Piraúba	1	31	3112	31064	MG	Pirauba
3151404	51404	Pitangui	1	31	3107	31029	MG	Pitangui
3151503	51503	Piumhi	1	31	3109	31042	MG	Piumhi
3151602	51602	Planura	1	31	3105	31021	MG	Planura
3151701	51701	Poço Fundo	1	31	3110	31049	MG	Poco Fundo
3151800	51800	Poços de Caldas	1	31	3110	31051	MG	Pocos de Caldas
3151909	51909	Pocrane	1	31	3108	31041	MG	Pocrane
3152006	52006	Pompéu	1	31	3106	31024	MG	Pompeu
3152105	52105	Ponte Nova	1	31	3112	31060	MG	Ponte Nova
3152131	52131	Ponto Chique	1	31	3102	31007	MG	Ponto Chique
3152170	52170	Ponto dos Volantes	1	31	3103	31012	MG	Ponto dos Volantes
3152204	52204	Porteirinha	1	31	3102	31004	MG	Porteirinha
3152303	52303	Porto Firme	1	31	3112	31062	MG	Porto Firme
3152402	52402	Poté	1	31	3104	31015	MG	Pote
3152501	52501	Pouso Alegre	1	31	3110	31052	MG	Pouso Alegre
3152600	52600	Pouso Alto	1	31	3110	31054	MG	Pouso Alto
3152709	52709	Prados	1	31	3111	31058	MG	Prados
3152808	52808	Prata	1	31	3105	31018	MG	Prata
3152907	52907	Pratápolis	1	31	3110	31047	MG	Pratapolis
3153004	53004	Pratinha	1	31	3105	31023	MG	Pratinha
3153103	53103	Presidente Bernardes	1	31	3112	31062	MG	Presidente Bernardes
3153202	53202	Presidente Juscelino	1	31	3106	31025	MG	Presidente Juscelino
3153301	53301	Presidente Kubitschek	1	31	3103	31010	MG	Presidente Kubitschek
3153400	53400	Presidente Olegário	1	31	3101	31002	MG	Presidente Olegario
3153608	53608	Prudente de Morais	1	31	3107	31027	MG	Prudente de Morais
3153707	53707	Quartel Geral	1	31	3106	31026	MG	Quartel Geral
3153806	53806	Queluzito	1	31	3107	31034	MG	Queluzito
3153905	53905	Raposos	1	31	3107	31030	MG	Raposos
3154002	54002	Raul Soares	1	31	3112	31060	MG	Raul Soares
3154101	54101	Recreio	1	31	3112	31066	MG	Recreio
3154150	54150	Reduto	1	31	3112	31061	MG	Reduto
3154200	54200	Resende Costa	1	31	3111	31058	MG	Resende Costa
3154309	54309	Resplendor	1	31	3108	31041	MG	Resplendor
3154408	54408	Ressaquinha	1	31	3111	31059	MG	Ressaquinha
3154457	54457	Riachinho	1	31	3102	31006	MG	Riachinho
3154507	54507	Riacho dos Machados	1	31	3102	31004	MG	Riacho dos Machados
3154606	54606	Ribeirão das Neves	1	31	3107	31030	MG	Ribeirao das Neves
3154705	54705	Ribeirão Vermelho	1	31	3111	31057	MG	Ribeirao Vermelho
3154804	54804	Rio Acima	1	31	3107	31030	MG	Rio Acima
3154903	54903	Rio Casca	1	31	3112	31060	MG	Rio Casca
3155108	55108	Rio do Prado	1	31	3103	31014	MG	Rio do Prado
3155009	55009	Rio Doce	1	31	3112	31060	MG	Rio Doce
3155207	55207	Rio Espera	1	31	3112	31062	MG	Rio Espera
3155306	55306	Rio Manso	1	31	3107	31032	MG	Rio Manso
3155405	55405	Rio Novo	1	31	3112	31065	MG	Rio Novo
3155504	55504	Rio Paranaíba	1	31	3105	31020	MG	Rio Paranaiba
3155603	55603	Rio Pardo de Minas	1	31	3102	31005	MG	Rio Pardo de Minas
3155702	55702	Rio Piracicaba	1	31	3107	31031	MG	Rio Piracicaba
3155801	55801	Rio Pomba	1	31	3112	31064	MG	Rio Pomba
3155900	55900	Rio Preto	1	31	3112	31065	MG	Rio Preto
3156007	56007	Rio Vermelho	1	31	3107	31028	MG	Rio Vermelho
3156106	56106	Ritápolis	1	31	3111	31058	MG	Ritapolis
3156205	56205	Rochedo de Minas	1	31	3112	31065	MG	Rochedo de Minas
3156304	56304	Rodeiro	1	31	3112	31064	MG	Rodeiro
3156403	56403	Romaria	1	31	3105	31019	MG	Romaria
3156452	56452	Rosário da Limeira	1	31	3112	31063	MG	Rosario da Limeira
3156502	56502	Rubelita	1	31	3102	31005	MG	Rubelita
3156601	56601	Rubim	1	31	3103	31014	MG	Rubim
3156700	56700	Sabará	1	31	3107	31030	MG	Sabara
3156809	56809	Sabinópolis	1	31	3108	31035	MG	Sabinopolis
3156908	56908	Sacramento	1	31	3105	31023	MG	Sacramento
3157005	57005	Salinas	1	31	3102	31005	MG	Salinas
3157104	57104	Salto da Divisa	1	31	3103	31014	MG	Salto da Divisa
3157203	57203	Santa Bárbara	1	31	3107	31031	MG	Santa Barbara
3157252	57252	Santa Bárbara do Leste	1	31	3108	31040	MG	Santa Barbara do Leste
3157278	57278	Santa Bárbara do Monte Verde	1	31	3112	31065	MG	Santa Barbara do Monte Verde
3157302	57302	Santa Bárbara do Tugúrio	1	31	3111	31059	MG	Santa Barbara do Tugurio
3157336	57336	Santa Cruz de Minas	1	31	3111	31058	MG	Santa Cruz de Minas
3157377	57377	Santa Cruz de Salinas	1	31	3102	31005	MG	Santa Cruz de Salinas
3157401	57401	Santa Cruz do Escalvado	1	31	3112	31060	MG	Santa Cruz do Escalvado
3157500	57500	Santa Efigênia de Minas	1	31	3108	31035	MG	Santa Efigenia de Minas
3157609	57609	Santa Fé de Minas	1	31	3102	31006	MG	Santa Fe de Minas
3157658	57658	Santa Helena de Minas	1	31	3104	31016	MG	Santa Helena de Minas
3157708	57708	Santa Juliana	1	31	3105	31023	MG	Santa Juliana
3157807	57807	Santa Luzia	1	31	3107	31030	MG	Santa Luzia
3157906	57906	Santa Margarida	1	31	3112	31061	MG	Santa Margarida
3158003	58003	Santa Maria de Itabira	1	31	3107	31031	MG	Santa Maria de Itabira
3158102	58102	Santa Maria do Salto	1	31	3103	31014	MG	Santa Maria do Salto
3203056	3056	Jaguaré	1	32	3202	32005	ES	Jaguare
3158201	58201	Santa Maria do Suaçuí	1	31	3108	31036	MG	Santa Maria do Suacui
3159209	59209	Santa Rita de Caldas	1	31	3110	31051	MG	Santa Rita de Caldas
3159407	59407	Santa Rita de Ibitipoca	1	31	3112	31065	MG	Santa Rita de Ibitipoca
3159308	59308	Santa Rita de Jacutinga	1	31	3112	31065	MG	Santa Rita de Jacutinga
3159357	59357	Santa Rita de Minas	1	31	3108	31040	MG	Santa Rita de Minas
3159506	59506	Santa Rita do Itueto	1	31	3108	31041	MG	Santa Rita do Itueto
3159605	59605	Santa Rita do Sapucaí	1	31	3110	31053	MG	Santa Rita do Sapucai
3159704	59704	Santa Rosa da Serra	1	31	3105	31020	MG	Santa Rosa da Serra
3159803	59803	Santa Vitória	1	31	3105	31017	MG	Santa Vitoria
3158300	58300	Santana da Vargem	1	31	3110	31050	MG	Santana da Vargem
3158409	58409	Santana de Cataguases	1	31	3112	31066	MG	Santana de Cataguases
3158508	58508	Santana de Pirapama	1	31	3107	31027	MG	Santana de Pirapama
3158607	58607	Santana do Deserto	1	31	3112	31065	MG	Santana do Deserto
3158706	58706	Santana do Garambéu	1	31	3111	31058	MG	Santana do Garambeu
3158805	58805	Santana do Jacaré	1	31	3109	31045	MG	Santana do Jacare
3158904	58904	Santana do Manhuaçu	1	31	3112	31061	MG	Santana do Manhuacu
3158953	58953	Santana do Paraíso	1	31	3108	31039	MG	Santana do Paraiso
3159001	59001	Santana do Riacho	1	31	3107	31027	MG	Santana do Riacho
3159100	59100	Santana dos Montes	1	31	3107	31034	MG	Santana dos Montes
3159902	59902	Santo Antônio do Amparo	1	31	3109	31046	MG	Santo Antonio do Amparo
3160009	60009	Santo Antônio do Aventureiro	1	31	3112	31066	MG	Santo Antonio do Aventureiro
3160108	60108	Santo Antônio do Grama	1	31	3112	31060	MG	Santo Antonio do Grama
3160207	60207	Santo Antônio do Itambé	1	31	3107	31028	MG	Santo Antonio do Itambe
3160306	60306	Santo Antônio do Jacinto	1	31	3103	31014	MG	Santo Antonio do Jacinto
3160405	60405	Santo Antônio do Monte	1	31	3109	31043	MG	Santo Antonio do Monte
3160454	60454	Santo Antônio do Retiro	1	31	3102	31005	MG	Santo Antonio do Retiro
3160504	60504	Santo Antônio do Rio Abaixo	1	31	3107	31028	MG	Santo Antonio do Rio Abaixo
3160603	60603	Santo Hipólito	1	31	3106	31025	MG	Santo Hipolito
3160702	60702	Santos Dumont	1	31	3112	31065	MG	Santos Dumont
3160801	60801	São Bento Abade	1	31	3110	31050	MG	Sao Bento Abade
3160900	60900	São Brás do Suaçuí	1	31	3107	31034	MG	Sao Bras do Suacui
3160959	60959	São Domingos das Dores	1	31	3108	31040	MG	Sao Domingos das Dores
3161007	61007	São Domingos do Prata	1	31	3107	31031	MG	Sao Domingos do Prata
3161056	61056	São Félix de Minas	1	31	3108	31038	MG	Sao Felix de Minas
3161106	61106	São Francisco	1	31	3102	31003	MG	Sao Francisco
3161205	61205	São Francisco de Paula	1	31	3109	31046	MG	Sao Francisco de Paula
3161304	61304	São Francisco de Sales	1	31	3105	31021	MG	Sao Francisco de Sales
3170438	70438	União de Minas	1	31	3105	31021	MG	Uniao de Minas
3161403	61403	São Francisco do Glória	1	31	3112	31063	MG	Sao Francisco do Gloria
3161502	61502	São Geraldo	1	31	3112	31064	MG	Sao Geraldo
3161601	61601	São Geraldo da Piedade	1	31	3108	31037	MG	Sao Geraldo da Piedade
3161650	61650	São Geraldo do Baixio	1	31	3108	31037	MG	Sao Geraldo do Baixio
3161700	61700	São Gonçalo do Abaeté	1	31	3101	31002	MG	Sao Goncalo do Abaete
3161809	61809	São Gonçalo do Pará	1	31	3109	31043	MG	Sao Goncalo do Para
3161908	61908	São Gonçalo do Rio Abaixo	1	31	3107	31031	MG	Sao Goncalo do Rio Abaixo
3125507	25507	São Gonçalo do Rio Preto	1	31	3103	31010	MG	Sao Goncalo do Rio Preto
3162005	62005	São Gonçalo do Sapucaí	1	31	3110	31053	MG	Sao Goncalo do Sapucai
3162104	62104	São Gotardo	1	31	3105	31020	MG	Sao Gotardo
3162203	62203	São João Batista do Glória	1	31	3110	31047	MG	Sao Joao Batista do Gloria
3162252	62252	São João da Lagoa	1	31	3102	31007	MG	Sao Joao da Lagoa
3162302	62302	São João da Mata	1	31	3110	31053	MG	Sao Joao da Mata
3162401	62401	São João da Ponte	1	31	3102	31007	MG	Sao Joao da Ponte
3162450	62450	São João das Missões	1	31	3102	31003	MG	Sao Joao das Missoes
3162500	62500	São João del Rei	1	31	3111	31058	MG	Sao Joao del Rei
3162559	62559	São João do Manhuaçu	1	31	3112	31061	MG	Sao Joao do Manhuacu
3162575	62575	São João do Manteninha	1	31	3108	31038	MG	Sao Joao do Manteninha
3162609	62609	São João do Oriente	1	31	3108	31040	MG	Sao Joao do Oriente
3162658	62658	São João do Pacuí	1	31	3102	31007	MG	Sao Joao do Pacui
3162708	62708	São João do Paraíso	1	31	3102	31005	MG	Sao Joao do Paraiso
3162807	62807	São João Evangelista	1	31	3108	31035	MG	Sao Joao Evangelista
3162906	62906	São João Nepomuceno	1	31	3112	31065	MG	Sao Joao Nepomuceno
3162922	62922	São Joaquim de Bicas	1	31	3107	31030	MG	Sao Joaquim de Bicas
3162948	62948	São José da Barra	1	31	3110	31047	MG	Sao Jose da Barra
3162955	62955	São José da Lapa	1	31	3107	31030	MG	Sao Jose da Lapa
3163003	63003	São José da Safira	1	31	3108	31037	MG	Sao Jose da Safira
3163102	63102	São José da Varginha	1	31	3107	31029	MG	Sao Jose da Varginha
3163201	63201	São José do Alegre	1	31	3110	31053	MG	Sao Jose do Alegre
3163300	63300	São José do Divino	1	31	3108	31037	MG	Sao Jose do Divino
3163409	63409	São José do Goiabal	1	31	3107	31031	MG	Sao Jose do Goiabal
3163508	63508	São José do Jacuri	1	31	3108	31036	MG	Sao Jose do Jacuri
3163607	63607	São José do Mantimento	1	31	3112	31061	MG	Sao Jose do Mantimento
3163706	63706	São Lourenço	1	31	3110	31054	MG	Sao Lourenco
3163805	63805	São Miguel do Anta	1	31	3112	31062	MG	Sao Miguel do Anta
3163904	63904	São Pedro da União	1	31	3110	31048	MG	Sao Pedro da Uniao
3164100	64100	São Pedro do Suaçuí	1	31	3108	31036	MG	Sao Pedro do Suacui
3164001	64001	São Pedro dos Ferros	1	31	3112	31060	MG	Sao Pedro dos Ferros
3164209	64209	São Romão	1	31	3102	31006	MG	Sao Romao
3164308	64308	São Roque de Minas	1	31	3109	31042	MG	Sao Roque de Minas
3164407	64407	São Sebastião da Bela Vista	1	31	3110	31053	MG	Sao Sebastiao da Bela Vista
3164431	64431	São Sebastião da Vargem Alegre	1	31	3112	31063	MG	Sao Sebastiao da Vargem Alegre
3164472	64472	São Sebastião do Anta	1	31	3108	31040	MG	Sao Sebastiao do Anta
3164506	64506	São Sebastião do Maranhão	1	31	3108	31036	MG	Sao Sebastiao do Maranhao
3164605	64605	São Sebastião do Oeste	1	31	3109	31043	MG	Sao Sebastiao do Oeste
3164704	64704	São Sebastião do Paraíso	1	31	3110	31048	MG	Sao Sebastiao do Paraiso
3164803	64803	São Sebastião do Rio Preto	1	31	3107	31028	MG	Sao Sebastiao do Rio Preto
3164902	64902	São Sebastião do Rio Verde	1	31	3110	31054	MG	Sao Sebastiao do Rio Verde
3165206	65206	São Thomé das Letras	1	31	3110	31050	MG	Sao Thome das Letras
3165008	65008	São Tiago	1	31	3111	31058	MG	Sao Tiago
3165107	65107	São Tomás de Aquino	1	31	3110	31048	MG	Sao Tomas de Aquino
3165305	65305	São Vicente de Minas	1	31	3110	31055	MG	Sao Vicente de Minas
3165404	65404	Sapucaí-Mirim	1	31	3110	31052	MG	Sapucai-Mirim
3165503	65503	Sardoá	1	31	3108	31035	MG	Sardoa
3165537	65537	Sarzedo	1	31	3107	31030	MG	Sarzedo
3165560	65560	Sem-Peixe	1	31	3112	31060	MG	Sem-Peixe
3165578	65578	Senador Amaral	1	31	3110	31052	MG	Senador Amaral
3165602	65602	Senador Cortes	1	31	3112	31065	MG	Senador Cortes
3165701	65701	Senador Firmino	1	31	3112	31064	MG	Senador Firmino
3165800	65800	Senador José Bento	1	31	3110	31052	MG	Senador Jose Bento
3165909	65909	Senador Modestino Gonçalves	1	31	3103	31010	MG	Senador Modestino Goncalves
3166006	66006	Senhora de Oliveira	1	31	3112	31062	MG	Senhora de Oliveira
3166105	66105	Senhora do Porto	1	31	3108	31035	MG	Senhora do Porto
3166204	66204	Senhora dos Remédios	1	31	3111	31059	MG	Senhora dos Remedios
3166303	66303	Sericita	1	31	3112	31060	MG	Sericita
3166402	66402	Seritinga	1	31	3110	31055	MG	Seritinga
3166501	66501	Serra Azul de Minas	1	31	3107	31028	MG	Serra Azul de Minas
3166600	66600	Serra da Saudade	1	31	3106	31026	MG	Serra da Saudade
3166808	66808	Serra do Salitre	1	31	3105	31019	MG	Serra do Salitre
3166709	66709	Serra dos Aimorés	1	31	3104	31016	MG	Serra dos Aimores
3166907	66907	Serrania	1	31	3110	31049	MG	Serrania
3166956	66956	Serranópolis de Minas	1	31	3102	31004	MG	Serranopolis de Minas
3167004	67004	Serranos	1	31	3110	31055	MG	Serranos
3167103	67103	Serro	1	31	3107	31028	MG	Serro
3167202	67202	Sete Lagoas	1	31	3107	31027	MG	Sete Lagoas
3165552	65552	Setubinha	1	31	3104	31015	MG	Setubinha
3167301	67301	Silveirânia	1	31	3112	31064	MG	Silveirania
3167400	67400	Silvianópolis	1	31	3110	31053	MG	Silvianopolis
3167509	67509	Simão Pereira	1	31	3112	31065	MG	Simao Pereira
3167608	67608	Simonésia	1	31	3112	31061	MG	Simonesia
3167707	67707	Sobrália	1	31	3108	31037	MG	Sobralia
3167806	67806	Soledade de Minas	1	31	3110	31054	MG	Soledade de Minas
3167905	67905	Tabuleiro	1	31	3112	31064	MG	Tabuleiro
3168002	68002	Taiobeiras	1	31	3102	31005	MG	Taiobeiras
3168051	68051	Taparuba	1	31	3108	31041	MG	Taparuba
3168101	68101	Tapira	1	31	3105	31023	MG	Tapira
3168200	68200	Tapiraí	1	31	3109	31042	MG	Tapirai
3168309	68309	Taquaraçu de Minas	1	31	3107	31031	MG	Taquaracu de Minas
3168408	68408	Tarumirim	1	31	3108	31040	MG	Tarumirim
3168507	68507	Teixeiras	1	31	3112	31062	MG	Teixeiras
3168606	68606	Teófilo Otoni	1	31	3104	31015	MG	Teofilo Otoni
3168705	68705	Timóteo	1	31	3108	31039	MG	Timoteo
3168804	68804	Tiradentes	1	31	3111	31058	MG	Tiradentes
3168903	68903	Tiros	1	31	3105	31020	MG	Tiros
3169000	69000	Tocantins	1	31	3112	31064	MG	Tocantins
3169059	69059	Tocos do Moji	1	31	3110	31052	MG	Tocos do Moji
3169109	69109	Toledo	1	31	3110	31052	MG	Toledo
3169208	69208	Tombos	1	31	3112	31063	MG	Tombos
3169307	69307	Três Corações	1	31	3110	31050	MG	Tres Coracoes
3169356	69356	Três Marias	1	31	3106	31024	MG	Tres Marias
3169406	69406	Três Pontas	1	31	3110	31050	MG	Tres Pontas
3169505	69505	Tumiritinga	1	31	3108	31037	MG	Tumiritinga
3169604	69604	Tupaciguara	1	31	3105	31018	MG	Tupaciguara
3169703	69703	Turmalina	1	31	3103	31011	MG	Turmalina
3169802	69802	Turvolândia	1	31	3110	31053	MG	Turvolandia
3169901	69901	Ubá	1	31	3112	31064	MG	Uba
3170008	70008	Ubaí	1	31	3102	31007	MG	Ubai
3170057	70057	Ubaporanga	1	31	3108	31040	MG	Ubaporanga
3170107	70107	Uberaba	1	31	3105	31022	MG	Uberaba
3170206	70206	Uberlândia	1	31	3105	31018	MG	Uberlandia
3170305	70305	Umburatiba	1	31	3104	31016	MG	Umburatiba
3170404	70404	Unaí	1	31	3101	31001	MG	Unai
3170479	70479	Uruana de Minas	1	31	3101	31001	MG	Uruana de Minas
3170503	70503	Urucânia	1	31	3112	31060	MG	Urucania
3170529	70529	Urucuia	1	31	3102	31003	MG	Urucuia
3170578	70578	Vargem Alegre	1	31	3108	31040	MG	Vargem Alegre
3170602	70602	Vargem Bonita	1	31	3109	31042	MG	Vargem Bonita
3170651	70651	Vargem Grande do Rio Pardo	1	31	3102	31005	MG	Vargem Grande do Rio Pardo
3170701	70701	Varginha	1	31	3110	31050	MG	Varginha
3170750	70750	Varjão de Minas	1	31	3101	31002	MG	Varjao de Minas
3170800	70800	Várzea da Palma	1	31	3102	31006	MG	Varzea da Palma
3170909	70909	Varzelândia	1	31	3102	31007	MG	Varzelandia
3171006	71006	Vazante	1	31	3101	31002	MG	Vazante
3171030	71030	Verdelândia	1	31	3102	31007	MG	Verdelandia
3171071	71071	Veredinha	1	31	3103	31011	MG	Veredinha
3171105	71105	Veríssimo	1	31	3105	31022	MG	Verissimo
3171154	71154	Vermelho Novo	1	31	3112	31060	MG	Vermelho Novo
3171204	71204	Vespasiano	1	31	3107	31030	MG	Vespasiano
3171303	71303	Viçosa	1	31	3112	31062	MG	Vicosa
3171402	71402	Vieiras	1	31	3112	31063	MG	Vieiras
3171600	71600	Virgem da Lapa	1	31	3103	31012	MG	Virgem da Lapa
3171709	71709	Virgínia	1	31	3110	31056	MG	Virginia
3171808	71808	Virginópolis	1	31	3108	31035	MG	Virginopolis
3171907	71907	Virgolândia	1	31	3108	31037	MG	Virgolandia
3172004	72004	Visconde do Rio Branco	1	31	3112	31064	MG	Visconde do Rio Branco
3172103	72103	Volta Grande	1	31	3112	31066	MG	Volta Grande
3172202	72202	Wenceslau Braz	1	31	3110	31056	MG	Wenceslau Braz
3200102	102	Afonso Cláudio	1	32	3203	32007	ES	Afonso Claudio
3200169	169	Água Doce do Norte	1	32	3201	32001	ES	Agua Doce do Norte
3200136	136	Águia Branca	1	32	3201	32002	ES	Aguia Branca
3200201	201	Alegre	1	32	3204	32011	ES	Alegre
3200300	300	Alfredo Chaves	1	32	3203	32010	ES	Alfredo Chaves
3200359	359	Alto Rio Novo	1	32	3201	32003	ES	Alto Rio Novo
3200409	409	Anchieta	1	32	3203	32010	ES	Anchieta
3200508	508	Apiacá	1	32	3204	32012	ES	Apiaca
3200607	607	Aracruz	1	32	3202	32006	ES	Aracruz
3200706	706	Atilio Vivacqua	1	32	3204	32012	ES	Atilio Vivacqua
3200805	805	Baixo Guandu	1	32	3201	32003	ES	Baixo Guandu
3200904	904	Barra de São Francisco	1	32	3201	32001	ES	Barra de Sao Francisco
3201001	1001	Boa Esperança	1	32	3201	32002	ES	Boa Esperanca
3201100	1100	Bom Jesus do Norte	1	32	3204	32012	ES	Bom Jesus do Norte
3201159	1159	Brejetuba	1	32	3203	32007	ES	Brejetuba
3201209	1209	Cachoeiro de Itapemirim	1	32	3204	32012	ES	Cachoeiro de Itapemirim
3201308	1308	Cariacica	1	32	3203	32009	ES	Cariacica
3201407	1407	Castelo	1	32	3204	32012	ES	Castelo
3201506	1506	Colatina	1	32	3201	32003	ES	Colatina
3201605	1605	Conceição da Barra	1	32	3202	32005	ES	Conceicao da Barra
3201704	1704	Conceição do Castelo	1	32	3203	32007	ES	Conceicao do Castelo
3201803	1803	Divino de São Lourenço	1	32	3204	32011	ES	Divino de Sao Lourenco
3201902	1902	Domingos Martins	1	32	3203	32007	ES	Domingos Martins
3202009	2009	Dores do Rio Preto	1	32	3204	32011	ES	Dores do Rio Preto
3202108	2108	Ecoporanga	1	32	3201	32001	ES	Ecoporanga
3202207	2207	Fundão	1	32	3202	32006	ES	Fundao
3202256	2256	Governador Lindenberg	1	32	3201	32003	ES	Governador Lindenberg
3202306	2306	Guaçuí	1	32	3204	32011	ES	Guacui
3202405	2405	Guarapari	1	32	3203	32010	ES	Guarapari
3202454	2454	Ibatiba	1	32	3204	32011	ES	Ibatiba
3202504	2504	Ibiraçu	1	32	3202	32006	ES	Ibiracu
3202553	2553	Ibitirama	1	32	3204	32011	ES	Ibitirama
3202603	2603	Iconha	1	32	3203	32010	ES	Iconha
3202652	2652	Irupi	1	32	3204	32011	ES	Irupi
3202702	2702	Itaguaçu	1	32	3203	32008	ES	Itaguacu
3202801	2801	Itapemirim	1	32	3204	32013	ES	Itapemirim
3202900	2900	Itarana	1	32	3203	32008	ES	Itarana
3203007	3007	Iúna	1	32	3204	32011	ES	Iuna
3203106	3106	Jerônimo Monteiro	1	32	3204	32012	ES	Jeronimo Monteiro
3203130	3130	João Neiva	1	32	3202	32006	ES	Joao Neiva
3203163	3163	Laranja da Terra	1	32	3203	32007	ES	Laranja da Terra
3203205	3205	Linhares	1	32	3202	32006	ES	Linhares
3203304	3304	Mantenópolis	1	32	3201	32001	ES	Mantenopolis
3203320	3320	Marataízes	1	32	3204	32013	ES	Marataizes
3203346	3346	Marechal Floriano	1	32	3203	32007	ES	Marechal Floriano
3203353	3353	Marilândia	1	32	3201	32003	ES	Marilandia
3203403	3403	Mimoso do Sul	1	32	3204	32012	ES	Mimoso do Sul
3203502	3502	Montanha	1	32	3202	32004	ES	Montanha
3203601	3601	Mucurici	1	32	3202	32004	ES	Mucurici
3203700	3700	Muniz Freire	1	32	3204	32011	ES	Muniz Freire
3203809	3809	Muqui	1	32	3204	32012	ES	Muqui
3203908	3908	Nova Venécia	1	32	3201	32002	ES	Nova Venecia
3204005	4005	Pancas	1	32	3201	32003	ES	Pancas
3204054	4054	Pedro Canário	1	32	3202	32005	ES	Pedro Canario
3204104	4104	Pinheiros	1	32	3202	32004	ES	Pinheiros
3204203	4203	Piúma	1	32	3203	32010	ES	Piuma
3204252	4252	Ponto Belo	1	32	3202	32004	ES	Ponto Belo
3204302	4302	Presidente Kennedy	1	32	3204	32013	ES	Presidente Kennedy
3204351	4351	Rio Bananal	1	32	3202	32006	ES	Rio Bananal
3204401	4401	Rio Novo do Sul	1	32	3203	32010	ES	Rio Novo do Sul
3204500	4500	Santa Leopoldina	1	32	3203	32008	ES	Santa Leopoldina
3204559	4559	Santa Maria de Jetibá	1	32	3203	32008	ES	Santa Maria de Jetiba
3204609	4609	Santa Teresa	1	32	3203	32008	ES	Santa Teresa
3204658	4658	São Domingos do Norte	1	32	3201	32003	ES	Sao Domingos do Norte
3204708	4708	São Gabriel da Palha	1	32	3201	32002	ES	Sao Gabriel da Palha
3204807	4807	São José do Calçado	1	32	3204	32012	ES	Sao Jose do Calcado
3204906	4906	São Mateus	1	32	3202	32005	ES	Sao Mateus
3204955	4955	São Roque do Canaã	1	32	3203	32008	ES	Sao Roque do Canaa
3205002	5002	Serra	1	32	3203	32009	ES	Serra
3205010	5010	Sooretama	1	32	3202	32006	ES	Sooretama
3205036	5036	Vargem Alta	1	32	3204	32012	ES	Vargem Alta
3205069	5069	Venda Nova do Imigrante	1	32	3203	32007	ES	Venda Nova do Imigrante
3205101	5101	Viana	1	32	3203	32009	ES	Viana
3205150	5150	Vila Pavão	1	32	3201	32002	ES	Vila Pavao
3205176	5176	Vila Valério	1	32	3201	32002	ES	Vila Valerio
3205200	5200	Vila Velha	1	32	3203	32009	ES	Vila Velha
3205309	5309	Vitória	1	32	3203	32009	ES	Vitoria
3300100	100	Angra dos Reis	1	33	3305	33013	RJ	Angra dos Reis
3300159	159	Aperibé	1	33	3301	33002	RJ	Aperibe
3300209	209	Araruama	1	33	3304	33010	RJ	Araruama
3300225	225	Areal	1	33	3303	33005	RJ	Areal
3300233	233	Armação dos Búzios	1	33	3304	33010	RJ	Armacao dos Buzios
3300258	258	Arraial do Cabo	1	33	3304	33010	RJ	Arraial do Cabo
3300308	308	Barra do Piraí	1	33	3305	33012	RJ	Barra do Pirai
3300407	407	Barra Mansa	1	33	3305	33011	RJ	Barra Mansa
3300456	456	Belford Roxo	1	33	3306	33018	RJ	Belford Roxo
3300506	506	Bom Jardim	1	33	3303	33007	RJ	Bom Jardim
3300605	605	Bom Jesus do Itabapoana	1	33	3301	33001	RJ	Bom Jesus do Itabapoana
3300704	704	Cabo Frio	1	33	3304	33010	RJ	Cabo Frio
3300803	803	Cachoeiras de Macacu	1	33	3306	33016	RJ	Cachoeiras de Macacu
3300902	902	Cambuci	1	33	3301	33002	RJ	Cambuci
3301009	1009	Campos dos Goytacazes	1	33	3302	33003	RJ	Campos dos Goytacazes
3301108	1108	Cantagalo	1	33	3303	33006	RJ	Cantagalo
3300936	936	Carapebus	1	33	3302	33004	RJ	Carapebus
3301157	1157	Cardoso Moreira	1	33	3302	33003	RJ	Cardoso Moreira
3301207	1207	Carmo	1	33	3303	33006	RJ	Carmo
3301306	1306	Casimiro de Abreu	1	33	3304	33009	RJ	Casimiro de Abreu
3300951	951	Comendador Levy Gasparian	1	33	3303	33005	RJ	Comendador Levy Gasparian
3301405	1405	Conceição de Macabu	1	33	3302	33004	RJ	Conceicao de Macabu
3301504	1504	Cordeiro	1	33	3303	33006	RJ	Cordeiro
3301603	1603	Duas Barras	1	33	3303	33007	RJ	Duas Barras
3301702	1702	Duque de Caxias	1	33	3306	33018	RJ	Duque de Caxias
3301801	1801	Engenheiro Paulo de Frontin	1	33	3306	33014	RJ	Engenheiro Paulo de Frontin
3301850	1850	Guapimirim	1	33	3306	33018	RJ	Guapimirim
3301876	1876	Iguaba Grande	1	33	3304	33010	RJ	Iguaba Grande
3301900	1900	Itaboraí	1	33	3306	33018	RJ	Itaborai
3302007	2007	Itaguaí	1	33	3306	33017	RJ	Itaguai
3302056	2056	Italva	1	33	3301	33001	RJ	Italva
3302106	2106	Itaocara	1	33	3301	33002	RJ	Itaocara
3302205	2205	Itaperuna	1	33	3301	33001	RJ	Itaperuna
3302254	2254	Itatiaia	1	33	3305	33011	RJ	Itatiaia
3302270	2270	Japeri	1	33	3306	33018	RJ	Japeri
3302304	2304	Laje do Muriaé	1	33	3301	33001	RJ	Laje do Muriae
3302403	2403	Macaé	1	33	3302	33004	RJ	Macae
3302452	2452	Macuco	1	33	3303	33006	RJ	Macuco
3302502	2502	Magé	1	33	3306	33018	RJ	Mage
3302601	2601	Mangaratiba	1	33	3306	33017	RJ	Mangaratiba
3302700	2700	Maricá	1	33	3306	33018	RJ	Marica
3302809	2809	Mendes	1	33	3306	33014	RJ	Mendes
3302858	2858	Mesquita	1	33	3306	33018	RJ	Mesquita
3302908	2908	Miguel Pereira	1	33	3306	33014	RJ	Miguel Pereira
3303005	3005	Miracema	1	33	3301	33002	RJ	Miracema
3303104	3104	Natividade	1	33	3301	33001	RJ	Natividade
3303203	3203	Nilópolis	1	33	3306	33018	RJ	Nilopolis
3303302	3302	Niterói	1	33	3306	33018	RJ	Niteroi
3303401	3401	Nova Friburgo	1	33	3303	33007	RJ	Nova Friburgo
3303500	3500	Nova Iguaçu	1	33	3306	33018	RJ	Nova Iguacu
3303609	3609	Paracambi	1	33	3306	33014	RJ	Paracambi
3303708	3708	Paraíba do Sul	1	33	3303	33005	RJ	Paraiba do Sul
3303807	3807	Paraty	1	33	3305	33013	RJ	Paraty
3303856	3856	Paty do Alferes	1	33	3306	33014	RJ	Paty do Alferes
3303906	3906	Petrópolis	1	33	3306	33015	RJ	Petropolis
3303955	3955	Pinheiral	1	33	3305	33011	RJ	Pinheiral
3304003	4003	Piraí	1	33	3305	33011	RJ	Pirai
3304102	4102	Porciúncula	1	33	3301	33001	RJ	Porciuncula
3304110	4110	Porto Real	1	33	3305	33011	RJ	Porto Real
3304128	4128	Quatis	1	33	3305	33011	RJ	Quatis
3304144	4144	Queimados	1	33	3306	33018	RJ	Queimados
3304151	4151	Quissamã	1	33	3302	33004	RJ	Quissama
3304201	4201	Resende	1	33	3305	33011	RJ	Resende
3304300	4300	Rio Bonito	1	33	3306	33016	RJ	Rio Bonito
3304409	4409	Rio Claro	1	33	3305	33011	RJ	Rio Claro
3304508	4508	Rio das Flores	1	33	3305	33012	RJ	Rio das Flores
3304524	4524	Rio das Ostras	1	33	3304	33009	RJ	Rio das Ostras
3304557	4557	Rio de Janeiro	1	33	3306	33018	RJ	Rio de Janeiro
3304607	4607	Santa Maria Madalena	1	33	3303	33008	RJ	Santa Maria Madalena
3304706	4706	Santo Antônio de Pádua	1	33	3301	33002	RJ	Santo Antonio de Padua
3304805	4805	São Fidélis	1	33	3302	33003	RJ	Sao Fidelis
3304755	4755	São Francisco de Itabapoana	1	33	3302	33003	RJ	Sao Francisco de Itabapoana
3304904	4904	São Gonçalo	1	33	3306	33018	RJ	Sao Goncalo
3305000	5000	São João da Barra	1	33	3302	33003	RJ	Sao Joao da Barra
3305109	5109	São João de Meriti	1	33	3306	33018	RJ	Sao Joao de Meriti
3305133	5133	São José de Ubá	1	33	3301	33002	RJ	Sao Jose de Uba
3305158	5158	São José do Vale do Rio Preto	1	33	3306	33015	RJ	Sao Jose do Vale do Rio Preto
3305208	5208	São Pedro da Aldeia	1	33	3304	33010	RJ	Sao Pedro da Aldeia
3305307	5307	São Sebastião do Alto	1	33	3303	33008	RJ	Sao Sebastiao do Alto
3305406	5406	Sapucaia	1	33	3303	33005	RJ	Sapucaia
3305505	5505	Saquarema	1	33	3304	33010	RJ	Saquarema
3305554	5554	Seropédica	1	33	3306	33017	RJ	Seropedica
3305604	5604	Silva Jardim	1	33	3304	33009	RJ	Silva Jardim
3305703	5703	Sumidouro	1	33	3303	33007	RJ	Sumidouro
3305752	5752	Tanguá	1	33	3306	33018	RJ	Tangua
3305802	5802	Teresópolis	1	33	3306	33015	RJ	Teresopolis
3305901	5901	Trajano de Moraes	1	33	3303	33008	RJ	Trajano de Moraes
3306008	6008	Três Rios	1	33	3303	33005	RJ	Tres Rios
3306107	6107	Valença	1	33	3305	33012	RJ	Valenca
3306156	6156	Varre-Sai	1	33	3301	33001	RJ	Varre-Sai
3306206	6206	Vassouras	1	33	3306	33014	RJ	Vassouras
3306305	6305	Volta Redonda	1	33	3305	33011	RJ	Volta Redonda
3500105	105	Adamantina	1	35	3508	35035	SP	Adamantina
3500204	204	Adolfo	1	35	3501	35004	SP	Adolfo
3500303	303	Aguaí	1	35	3507	35029	SP	Aguai
3500402	402	Águas da Prata	1	35	3507	35030	SP	Aguas da Prata
3500501	501	Águas de Lindóia	1	35	3507	35033	SP	Aguas de Lindoia
3500550	550	Águas de Santa Bárbara	1	35	3504	35022	SP	Aguas de Santa Barbara
3500600	600	Águas de São Pedro	1	35	3506	35028	SP	Aguas de Sao Pedro
3500709	709	Agudos	1	35	3504	35020	SP	Agudos
3500758	758	Alambari	1	35	3511	35042	SP	Alambari
3500808	808	Alfredo Marcondes	1	35	3508	35036	SP	Alfredo Marcondes
3500907	907	Altair	1	35	3501	35004	SP	Altair
3501004	1004	Altinópolis	1	35	3502	35015	SP	Altinopolis
3501103	1103	Alto Alegre	1	35	3503	35018	SP	Alto Alegre
3501152	1152	Alumínio	1	35	3512	35046	SP	Aluminio
3501202	1202	Álvares Florence	1	35	3501	35003	SP	Alvares Florence
3501301	1301	Álvares Machado	1	35	3508	35036	SP	Alvares Machado
3501400	1400	Álvaro de Carvalho	1	35	3509	35038	SP	Alvaro de Carvalho
3501509	1509	Alvinlândia	1	35	3509	35038	SP	Alvinlandia
3501608	1608	Americana	1	35	3507	35032	SP	Americana
3501707	1707	Américo Brasiliense	1	35	3505	35024	SP	Americo Brasiliense
3501806	1806	Américo de Campos	1	35	3501	35003	SP	Americo de Campos
3501905	1905	Amparo	1	35	3507	35033	SP	Amparo
3502002	2002	Analândia	1	35	3505	35025	SP	Analandia
3502101	2101	Andradina	1	35	3503	35016	SP	Andradina
3502200	2200	Angatuba	1	35	3511	35042	SP	Angatuba
3502309	2309	Anhembi	1	35	3504	35023	SP	Anhembi
3502408	2408	Anhumas	1	35	3508	35036	SP	Anhumas
3502507	2507	Aparecida	1	35	3513	35051	SP	Aparecida
3502606	2606	Aparecida d'Oeste	1	35	3501	35001	SP	Aparecida d'Oeste
3502705	2705	Apiaí	1	35	3511	35044	SP	Apiai
3502754	2754	Araçariguama	1	35	3512	35046	SP	Aracariguama
3502804	2804	Araçatuba	1	35	3503	35017	SP	Aracatuba
3502903	2903	Araçoiaba da Serra	1	35	3512	35046	SP	Aracoiaba da Serra
3503000	3000	Aramina	1	35	3502	35011	SP	Aramina
3503109	3109	Arandu	1	35	3504	35022	SP	Arandu
3503158	3158	Arapeí	1	35	3513	35052	SP	Arapei
3503208	3208	Araraquara	1	35	3505	35024	SP	Araraquara
3503307	3307	Araras	1	35	3506	35027	SP	Araras
3503356	3356	Arco-Íris	1	35	3509	35037	SP	Arco-Iris
3503406	3406	Arealva	1	35	3504	35020	SP	Arealva
3503505	3505	Areias	1	35	3513	35052	SP	Areias
3503604	3604	Areiópolis	1	35	3504	35020	SP	Areiopolis
3503703	3703	Ariranha	1	35	3501	35005	SP	Ariranha
3503802	3802	Artur Nogueira	1	35	3507	35031	SP	Artur Nogueira
3503901	3901	Arujá	1	35	3515	35059	SP	Aruja
3503950	3950	Aspásia	1	35	3501	35001	SP	Aspasia
3504008	4008	Assis	1	35	3510	35039	SP	Assis
3504107	4107	Atibaia	1	35	3512	35048	SP	Atibaia
3504206	4206	Auriflama	1	35	3501	35006	SP	Auriflama
3504305	4305	Avaí	1	35	3504	35020	SP	Avai
3504404	4404	Avanhandava	1	35	3503	35018	SP	Avanhandava
3504503	4503	Avaré	1	35	3504	35022	SP	Avare
3504602	4602	Bady Bassitt	1	35	3501	35004	SP	Bady Bassitt
3504701	4701	Balbinos	1	35	3504	35020	SP	Balbinos
3504800	4800	Bálsamo	1	35	3501	35004	SP	Balsamo
3504909	4909	Bananal	1	35	3513	35052	SP	Bananal
3505005	5005	Barão de Antonina	1	35	3511	35041	SP	Barao de Antonina
3505104	5104	Barbosa	1	35	3503	35018	SP	Barbosa
3505203	5203	Bariri	1	35	3504	35021	SP	Bariri
3505302	5302	Barra Bonita	1	35	3504	35021	SP	Barra Bonita
3505351	5351	Barra do Chapéu	1	35	3511	35044	SP	Barra do Chapeu
3505401	5401	Barra do Turvo	1	35	3514	35055	SP	Barra do Turvo
3505500	5500	Barretos	1	35	3502	35009	SP	Barretos
3505609	5609	Barrinha	1	35	3502	35014	SP	Barrinha
3505708	5708	Barueri	1	35	3515	35057	SP	Barueri
3505807	5807	Bastos	1	35	3509	35037	SP	Bastos
3505906	5906	Batatais	1	35	3502	35015	SP	Batatais
3506003	6003	Bauru	1	35	3504	35020	SP	Bauru
3506102	6102	Bebedouro	1	35	3502	35013	SP	Bebedouro
3506201	6201	Bento de Abreu	1	35	3503	35017	SP	Bento de Abreu
3506300	6300	Bernardino de Campos	1	35	3510	35040	SP	Bernardino de Campos
3506359	6359	Bertioga	1	35	3515	35063	SP	Bertioga
3506409	6409	Bilac	1	35	3503	35018	SP	Bilac
3506508	6508	Birigui	1	35	3503	35018	SP	Birigui
3506607	6607	Biritiba-Mirim	1	35	3515	35062	SP	Biritiba-Mirim
3506706	6706	Boa Esperança do Sul	1	35	3505	35024	SP	Boa Esperanca do Sul
3506805	6805	Bocaina	1	35	3504	35021	SP	Bocaina
3506904	6904	Bofete	1	35	3504	35023	SP	Bofete
3507001	7001	Boituva	1	35	3511	35043	SP	Boituva
3507100	7100	Bom Jesus dos Perdões	1	35	3512	35048	SP	Bom Jesus dos Perdoes
3507159	7159	Bom Sucesso de Itararé	1	35	3511	35041	SP	Bom Sucesso de Itarare
3507209	7209	Borá	1	35	3510	35039	SP	Bora
3507308	7308	Boracéia	1	35	3504	35021	SP	Boraceia
3507407	7407	Borborema	1	35	3505	35024	SP	Borborema
3507456	7456	Borebi	1	35	3504	35020	SP	Borebi
3507506	7506	Botucatu	1	35	3504	35023	SP	Botucatu
3507605	7605	Bragança Paulista	1	35	3512	35048	SP	Braganca Paulista
3507704	7704	Braúna	1	35	3503	35018	SP	Brauna
3507753	7753	Brejo Alegre	1	35	3503	35018	SP	Brejo Alegre
3507803	7803	Brodowski	1	35	3502	35014	SP	Brodowski
3507902	7902	Brotas	1	35	3506	35026	SP	Brotas
3508009	8009	Buri	1	35	3511	35041	SP	Buri
3508108	8108	Buritama	1	35	3503	35018	SP	Buritama
3508207	8207	Buritizal	1	35	3502	35011	SP	Buritizal
3508306	8306	Cabrália Paulista	1	35	3504	35020	SP	Cabralia Paulista
3508405	8405	Cabreúva	1	35	3512	35046	SP	Cabreuva
3508504	8504	Caçapava	1	35	3513	35050	SP	Cacapava
3508603	8603	Cachoeira Paulista	1	35	3513	35051	SP	Cachoeira Paulista
3508702	8702	Caconde	1	35	3507	35030	SP	Caconde
3508801	8801	Cafelândia	1	35	3504	35019	SP	Cafelandia
3508900	8900	Caiabu	1	35	3508	35036	SP	Caiabu
3509007	9007	Caieiras	1	35	3515	35058	SP	Caieiras
3509106	9106	Caiuá	1	35	3508	35036	SP	Caiua
3509205	9205	Cajamar	1	35	3515	35057	SP	Cajamar
3509254	9254	Cajati	1	35	3514	35055	SP	Cajati
3509304	9304	Cajobi	1	35	3501	35005	SP	Cajobi
3509403	9403	Cajuru	1	35	3502	35015	SP	Cajuru
3509452	9452	Campina do Monte Alegre	1	35	3511	35042	SP	Campina do Monte Alegre
3509502	9502	Campinas	1	35	3507	35032	SP	Campinas
3509601	9601	Campo Limpo Paulista	1	35	3512	35047	SP	Campo Limpo Paulista
3509700	9700	Campos do Jordão	1	35	3513	35049	SP	Campos do Jordao
3509809	9809	Campos Novos Paulista	1	35	3510	35039	SP	Campos Novos Paulista
3509908	9908	Cananéia	1	35	3514	35055	SP	Cananeia
3509957	9957	Canas	1	35	3513	35051	SP	Canas
3510005	10005	Cândido Mota	1	35	3510	35039	SP	Candido Mota
3510104	10104	Cândido Rodrigues	1	35	3502	35013	SP	Candido Rodrigues
3510153	10153	Canitar	1	35	3510	35040	SP	Canitar
3510203	10203	Capão Bonito	1	35	3511	35044	SP	Capao Bonito
3510302	10302	Capela do Alto	1	35	3512	35046	SP	Capela do Alto
3510401	10401	Capivari	1	35	3506	35028	SP	Capivari
3510500	10500	Caraguatatuba	1	35	3513	35054	SP	Caraguatatuba
3510609	10609	Carapicuíba	1	35	3515	35057	SP	Carapicuiba
3510708	10708	Cardoso	1	35	3501	35003	SP	Cardoso
3510807	10807	Casa Branca	1	35	3507	35030	SP	Casa Branca
3510906	10906	Cássia dos Coqueiros	1	35	3502	35015	SP	Cassia dos Coqueiros
3511003	11003	Castilho	1	35	3503	35016	SP	Castilho
3511102	11102	Catanduva	1	35	3501	35005	SP	Catanduva
3511201	11201	Catiguá	1	35	3501	35005	SP	Catigua
3511300	11300	Cedral	1	35	3501	35004	SP	Cedral
3511409	11409	Cerqueira César	1	35	3504	35022	SP	Cerqueira Cesar
3511508	11508	Cerquilho	1	35	3511	35043	SP	Cerquilho
3511607	11607	Cesário Lange	1	35	3511	35043	SP	Cesario Lange
3511706	11706	Charqueada	1	35	3506	35028	SP	Charqueada
3557204	57204	Chavantes	1	35	3510	35040	SP	Chavantes
3511904	11904	Clementina	1	35	3503	35018	SP	Clementina
3512001	12001	Colina	1	35	3502	35009	SP	Colina
3512100	12100	Colômbia	1	35	3502	35009	SP	Colombia
3512209	12209	Conchal	1	35	3506	35027	SP	Conchal
3512308	12308	Conchas	1	35	3504	35023	SP	Conchas
3512407	12407	Cordeirópolis	1	35	3506	35027	SP	Cordeiropolis
3512506	12506	Coroados	1	35	3503	35018	SP	Coroados
3512605	12605	Coronel Macedo	1	35	3511	35041	SP	Coronel Macedo
3512704	12704	Corumbataí	1	35	3506	35026	SP	Corumbatai
3512803	12803	Cosmópolis	1	35	3507	35032	SP	Cosmopolis
3512902	12902	Cosmorama	1	35	3501	35003	SP	Cosmorama
3513009	13009	Cotia	1	35	3515	35060	SP	Cotia
3513108	13108	Cravinhos	1	35	3502	35014	SP	Cravinhos
3513207	13207	Cristais Paulista	1	35	3502	35012	SP	Cristais Paulista
3513306	13306	Cruzália	1	35	3510	35039	SP	Cruzalia
3513405	13405	Cruzeiro	1	35	3513	35051	SP	Cruzeiro
3513504	13504	Cubatão	1	35	3515	35063	SP	Cubatao
3513603	13603	Cunha	1	35	3513	35053	SP	Cunha
3513702	13702	Descalvado	1	35	3505	35025	SP	Descalvado
3513801	13801	Diadema	1	35	3515	35061	SP	Diadema
3513850	13850	Dirce Reis	1	35	3501	35001	SP	Dirce Reis
3513900	13900	Divinolândia	1	35	3507	35030	SP	Divinolandia
3514007	14007	Dobrada	1	35	3505	35024	SP	Dobrada
3514106	14106	Dois Córregos	1	35	3504	35021	SP	Dois Corregos
3514205	14205	Dolcinópolis	1	35	3501	35001	SP	Dolcinopolis
3514304	14304	Dourado	1	35	3505	35025	SP	Dourado
3514403	14403	Dracena	1	35	3508	35034	SP	Dracena
3514502	14502	Duartina	1	35	3504	35020	SP	Duartina
3514601	14601	Dumont	1	35	3502	35014	SP	Dumont
3514700	14700	Echaporã	1	35	3509	35038	SP	Echapora
3514809	14809	Eldorado	1	35	3514	35055	SP	Eldorado
3514908	14908	Elias Fausto	1	35	3507	35032	SP	Elias Fausto
3514924	14924	Elisiário	1	35	3501	35005	SP	Elisiario
3514957	14957	Embaúba	1	35	3501	35005	SP	Embauba
3515004	15004	Embu das Artes	1	35	3515	35060	SP	Embu das Artes
3515103	15103	Embu-Guaçu	1	35	3515	35060	SP	Embu-Guacu
3515129	15129	Emilianópolis	1	35	3508	35036	SP	Emilianopolis
3515152	15152	Engenheiro Coelho	1	35	3507	35031	SP	Engenheiro Coelho
3515186	15186	Espírito Santo do Pinhal	1	35	3507	35030	SP	Espirito Santo do Pinhal
3515194	15194	Espírito Santo do Turvo	1	35	3510	35040	SP	Espirito Santo do Turvo
3557303	57303	Estiva Gerbi	1	35	3507	35031	SP	Estiva Gerbi
3515301	15301	Estrela do Norte	1	35	3508	35036	SP	Estrela do Norte
3515202	15202	Estrela d'Oeste	1	35	3501	35002	SP	Estrela d'Oeste
3515350	15350	Euclides da Cunha Paulista	1	35	3508	35036	SP	Euclides da Cunha Paulista
3515400	15400	Fartura	1	35	3510	35040	SP	Fartura
3515608	15608	Fernando Prestes	1	35	3502	35013	SP	Fernando Prestes
3515509	15509	Fernandópolis	1	35	3501	35002	SP	Fernandopolis
3515657	15657	Fernão	1	35	3509	35038	SP	Fernao
3515707	15707	Ferraz de Vasconcelos	1	35	3515	35062	SP	Ferraz de Vasconcelos
3515806	15806	Flora Rica	1	35	3508	35035	SP	Flora Rica
3515905	15905	Floreal	1	35	3501	35006	SP	Floreal
3516002	16002	Flórida Paulista	1	35	3508	35035	SP	Florida Paulista
3516101	16101	Florínia	1	35	3510	35039	SP	Florinia
3516200	16200	Franca	1	35	3502	35012	SP	Franca
3516309	16309	Francisco Morato	1	35	3515	35058	SP	Francisco Morato
3516408	16408	Franco da Rocha	1	35	3515	35058	SP	Franco da Rocha
3516507	16507	Gabriel Monteiro	1	35	3503	35018	SP	Gabriel Monteiro
3516606	16606	Gália	1	35	3509	35038	SP	Galia
3516705	16705	Garça	1	35	3509	35038	SP	Garca
3516804	16804	Gastão Vidigal	1	35	3501	35006	SP	Gastao Vidigal
3516853	16853	Gavião Peixoto	1	35	3505	35024	SP	Gaviao Peixoto
3516903	16903	General Salgado	1	35	3501	35006	SP	General Salgado
3517000	17000	Getulina	1	35	3504	35019	SP	Getulina
3517109	17109	Glicério	1	35	3503	35018	SP	Glicerio
3517208	17208	Guaiçara	1	35	3504	35019	SP	Guaicara
3517307	17307	Guaimbê	1	35	3504	35019	SP	Guaimbe
3517406	17406	Guaíra	1	35	3502	35010	SP	Guaira
3517505	17505	Guapiaçu	1	35	3501	35004	SP	Guapiacu
3517604	17604	Guapiara	1	35	3511	35044	SP	Guapiara
3517703	17703	Guará	1	35	3502	35011	SP	Guara
3517802	17802	Guaraçaí	1	35	3503	35016	SP	Guaracai
3517901	17901	Guaraci	1	35	3501	35004	SP	Guaraci
3518008	18008	Guarani d'Oeste	1	35	3501	35002	SP	Guarani d'Oeste
3518107	18107	Guarantã	1	35	3504	35020	SP	Guaranta
3518206	18206	Guararapes	1	35	3503	35017	SP	Guararapes
3518305	18305	Guararema	1	35	3515	35062	SP	Guararema
3518404	18404	Guaratinguetá	1	35	3513	35051	SP	Guaratingueta
3518503	18503	Guareí	1	35	3511	35042	SP	Guarei
3518602	18602	Guariba	1	35	3502	35013	SP	Guariba
3518701	18701	Guarujá	1	35	3515	35063	SP	Guaruja
3518800	18800	Guarulhos	1	35	3515	35059	SP	Guarulhos
3518859	18859	Guatapará	1	35	3502	35014	SP	Guatapara
3518909	18909	Guzolândia	1	35	3501	35006	SP	Guzolandia
3519006	19006	Herculândia	1	35	3509	35037	SP	Herculandia
3519055	19055	Holambra	1	35	3507	35032	SP	Holambra
3519071	19071	Hortolândia	1	35	3507	35032	SP	Hortolandia
3519105	19105	Iacanga	1	35	3504	35020	SP	Iacanga
3519204	19204	Iacri	1	35	3509	35037	SP	Iacri
3519253	19253	Iaras	1	35	3504	35022	SP	Iaras
3519303	19303	Ibaté	1	35	3505	35025	SP	Ibate
3519402	19402	Ibirá	1	35	3501	35004	SP	Ibira
3519501	19501	Ibirarema	1	35	3510	35039	SP	Ibirarema
3519600	19600	Ibitinga	1	35	3505	35024	SP	Ibitinga
3519709	19709	Ibiúna	1	35	3512	35045	SP	Ibiuna
3519808	19808	Icém	1	35	3501	35004	SP	Icem
3519907	19907	Iepê	1	35	3510	35039	SP	Iepe
3520004	20004	Igaraçu do Tietê	1	35	3504	35021	SP	Igaracu do Tiete
3520103	20103	Igarapava	1	35	3502	35011	SP	Igarapava
3520202	20202	Igaratá	1	35	3513	35050	SP	Igarata
3520301	20301	Iguape	1	35	3514	35055	SP	Iguape
3520426	20426	Ilha Comprida	1	35	3514	35055	SP	Ilha Comprida
3520442	20442	Ilha Solteira	1	35	3503	35016	SP	Ilha Solteira
3520400	20400	Ilhabela	1	35	3513	35054	SP	Ilhabela
3520509	20509	Indaiatuba	1	35	3507	35032	SP	Indaiatuba
3520608	20608	Indiana	1	35	3508	35036	SP	Indiana
3520707	20707	Indiaporã	1	35	3501	35002	SP	Indiapora
3520806	20806	Inúbia Paulista	1	35	3508	35035	SP	Inubia Paulista
3520905	20905	Ipaussu	1	35	3510	35040	SP	Ipaussu
3521002	21002	Iperó	1	35	3512	35046	SP	Ipero
3521101	21101	Ipeúna	1	35	3506	35026	SP	Ipeuna
3521150	21150	Ipiguá	1	35	3501	35004	SP	Ipigua
3521200	21200	Iporanga	1	35	3511	35044	SP	Iporanga
3521309	21309	Ipuã	1	35	3502	35010	SP	Ipua
3521408	21408	Iracemápolis	1	35	3506	35027	SP	Iracemapolis
3521507	21507	Irapuã	1	35	3501	35008	SP	Irapua
3521606	21606	Irapuru	1	35	3508	35035	SP	Irapuru
3521705	21705	Itaberá	1	35	3511	35041	SP	Itabera
3521804	21804	Itaí	1	35	3504	35022	SP	Itai
3521903	21903	Itajobi	1	35	3501	35008	SP	Itajobi
3522000	22000	Itaju	1	35	3504	35021	SP	Itaju
3522109	22109	Itanhaém	1	35	3514	35056	SP	Itanhaem
3522158	22158	Itaóca	1	35	3511	35044	SP	Itaoca
3522208	22208	Itapecerica da Serra	1	35	3515	35060	SP	Itapecerica da Serra
3522307	22307	Itapetininga	1	35	3511	35042	SP	Itapetininga
3522406	22406	Itapeva	1	35	3511	35041	SP	Itapeva
3522505	22505	Itapevi	1	35	3515	35057	SP	Itapevi
3522604	22604	Itapira	1	35	3507	35031	SP	Itapira
3522653	22653	Itapirapuã Paulista	1	35	3511	35044	SP	Itapirapua Paulista
3522703	22703	Itápolis	1	35	3505	35024	SP	Itapolis
3522802	22802	Itaporanga	1	35	3511	35041	SP	Itaporanga
3522901	22901	Itapuí	1	35	3504	35021	SP	Itapui
3523008	23008	Itapura	1	35	3503	35016	SP	Itapura
3523107	23107	Itaquaquecetuba	1	35	3515	35062	SP	Itaquaquecetuba
3523206	23206	Itararé	1	35	3511	35041	SP	Itarare
3523305	23305	Itariri	1	35	3514	35056	SP	Itariri
3523404	23404	Itatiba	1	35	3512	35048	SP	Itatiba
3523503	23503	Itatinga	1	35	3504	35022	SP	Itatinga
3523602	23602	Itirapina	1	35	3506	35026	SP	Itirapina
3523701	23701	Itirapuã	1	35	3502	35012	SP	Itirapua
3523800	23800	Itobi	1	35	3507	35030	SP	Itobi
3523909	23909	Itu	1	35	3512	35046	SP	Itu
3524006	24006	Itupeva	1	35	3512	35047	SP	Itupeva
3524105	24105	Ituverava	1	35	3502	35011	SP	Ituverava
3524204	24204	Jaborandi	1	35	3502	35010	SP	Jaborandi
3524303	24303	Jaboticabal	1	35	3502	35013	SP	Jaboticabal
3524402	24402	Jacareí	1	35	3513	35050	SP	Jacarei
3524501	24501	Jaci	1	35	3501	35004	SP	Jaci
3524600	24600	Jacupiranga	1	35	3514	35055	SP	Jacupiranga
3524709	24709	Jaguariúna	1	35	3507	35032	SP	Jaguariuna
3524808	24808	Jales	1	35	3501	35001	SP	Jales
3524907	24907	Jambeiro	1	35	3513	35053	SP	Jambeiro
3525003	25003	Jandira	1	35	3515	35057	SP	Jandira
3525102	25102	Jardinópolis	1	35	3502	35014	SP	Jardinopolis
3525201	25201	Jarinu	1	35	3512	35048	SP	Jarinu
3525300	25300	Jaú	1	35	3504	35021	SP	Jau
3525409	25409	Jeriquara	1	35	3502	35012	SP	Jeriquara
3525508	25508	Joanópolis	1	35	3512	35048	SP	Joanopolis
3525607	25607	João Ramalho	1	35	3508	35036	SP	Joao Ramalho
3525706	25706	José Bonifácio	1	35	3501	35004	SP	Jose Bonifacio
3525805	25805	Júlio Mesquita	1	35	3504	35019	SP	Julio Mesquita
3525854	25854	Jumirim	1	35	3506	35028	SP	Jumirim
3525904	25904	Jundiaí	1	35	3512	35047	SP	Jundiai
3526001	26001	Junqueirópolis	1	35	3508	35034	SP	Junqueiropolis
3526100	26100	Juquiá	1	35	3514	35055	SP	Juquia
3526209	26209	Juquitiba	1	35	3515	35060	SP	Juquitiba
3526308	26308	Lagoinha	1	35	3513	35053	SP	Lagoinha
3526407	26407	Laranjal Paulista	1	35	3511	35043	SP	Laranjal Paulista
3526506	26506	Lavínia	1	35	3503	35017	SP	Lavinia
3526605	26605	Lavrinhas	1	35	3513	35051	SP	Lavrinhas
3526704	26704	Leme	1	35	3506	35027	SP	Leme
3526803	26803	Lençóis Paulista	1	35	3504	35020	SP	Lencois Paulista
3526902	26902	Limeira	1	35	3506	35027	SP	Limeira
3527009	27009	Lindóia	1	35	3507	35033	SP	Lindoia
3527108	27108	Lins	1	35	3504	35019	SP	Lins
3527207	27207	Lorena	1	35	3513	35051	SP	Lorena
3527256	27256	Lourdes	1	35	3503	35018	SP	Lourdes
3527306	27306	Louveira	1	35	3512	35047	SP	Louveira
3527405	27405	Lucélia	1	35	3508	35035	SP	Lucelia
3527504	27504	Lucianópolis	1	35	3504	35020	SP	Lucianopolis
3527603	27603	Luís Antônio	1	35	3502	35014	SP	Luis Antonio
3527702	27702	Luiziânia	1	35	3503	35018	SP	Luiziania
3527801	27801	Lupércio	1	35	3509	35038	SP	Lupercio
3527900	27900	Lutécia	1	35	3510	35039	SP	Lutecia
3528007	28007	Macatuba	1	35	3504	35021	SP	Macatuba
3528106	28106	Macaubal	1	35	3501	35007	SP	Macaubal
3528205	28205	Macedônia	1	35	3501	35002	SP	Macedonia
3528304	28304	Magda	1	35	3501	35006	SP	Magda
3528403	28403	Mairinque	1	35	3512	35046	SP	Mairinque
3528502	28502	Mairiporã	1	35	3515	35058	SP	Mairipora
3528601	28601	Manduri	1	35	3510	35040	SP	Manduri
3528700	28700	Marabá Paulista	1	35	3508	35036	SP	Maraba Paulista
3528809	28809	Maracaí	1	35	3510	35039	SP	Maracai
3528858	28858	Marapoama	1	35	3501	35008	SP	Marapoama
3528908	28908	Mariápolis	1	35	3508	35035	SP	Mariapolis
3529005	29005	Marília	1	35	3509	35038	SP	Marilia
3529104	29104	Marinópolis	1	35	3501	35001	SP	Marinopolis
3529203	29203	Martinópolis	1	35	3508	35036	SP	Martinopolis
3529302	29302	Matão	1	35	3505	35024	SP	Matao
3529401	29401	Mauá	1	35	3515	35061	SP	Maua
3529500	29500	Mendonça	1	35	3501	35004	SP	Mendonca
3529609	29609	Meridiano	1	35	3501	35002	SP	Meridiano
3529658	29658	Mesópolis	1	35	3501	35001	SP	Mesopolis
3529708	29708	Miguelópolis	1	35	3502	35010	SP	Miguelopolis
3529807	29807	Mineiros do Tietê	1	35	3504	35021	SP	Mineiros do Tiete
3530003	30003	Mira Estrela	1	35	3501	35002	SP	Mira Estrela
3529906	29906	Miracatu	1	35	3514	35055	SP	Miracatu
3530102	30102	Mirandópolis	1	35	3503	35016	SP	Mirandopolis
3530201	30201	Mirante do Paranapanema	1	35	3508	35036	SP	Mirante do Paranapanema
3530300	30300	Mirassol	1	35	3501	35004	SP	Mirassol
3530409	30409	Mirassolândia	1	35	3501	35004	SP	Mirassolandia
3530508	30508	Mococa	1	35	3507	35030	SP	Mococa
3530607	30607	Mogi das Cruzes	1	35	3515	35062	SP	Mogi das Cruzes
3530706	30706	Mogi Guaçu	1	35	3507	35031	SP	Mogi Guacu
3530805	30805	Mogi Mirim	1	35	3507	35031	SP	Mogi Mirim
3530904	30904	Mombuca	1	35	3506	35028	SP	Mombuca
3531001	31001	Monções	1	35	3501	35007	SP	Moncoes
3531100	31100	Mongaguá	1	35	3514	35056	SP	Mongagua
3531209	31209	Monte Alegre do Sul	1	35	3507	35033	SP	Monte Alegre do Sul
3531308	31308	Monte Alto	1	35	3502	35013	SP	Monte Alto
3531407	31407	Monte Aprazível	1	35	3501	35007	SP	Monte Aprazivel
3531506	31506	Monte Azul Paulista	1	35	3502	35013	SP	Monte Azul Paulista
3531605	31605	Monte Castelo	1	35	3508	35034	SP	Monte Castelo
3531803	31803	Monte Mor	1	35	3507	35032	SP	Monte Mor
3531704	31704	Monteiro Lobato	1	35	3513	35049	SP	Monteiro Lobato
3531902	31902	Morro Agudo	1	35	3502	35010	SP	Morro Agudo
3532009	32009	Morungaba	1	35	3512	35048	SP	Morungaba
3532058	32058	Motuca	1	35	3505	35024	SP	Motuca
3532108	32108	Murutinga do Sul	1	35	3503	35016	SP	Murutinga do Sul
3532157	32157	Nantes	1	35	3510	35039	SP	Nantes
3532207	32207	Narandiba	1	35	3508	35036	SP	Narandiba
3532306	32306	Natividade da Serra	1	35	3513	35053	SP	Natividade da Serra
3532405	32405	Nazaré Paulista	1	35	3512	35048	SP	Nazare Paulista
3532504	32504	Neves Paulista	1	35	3501	35007	SP	Neves Paulista
3532603	32603	Nhandeara	1	35	3501	35007	SP	Nhandeara
3532702	32702	Nipoã	1	35	3501	35007	SP	Nipoa
3532801	32801	Nova Aliança	1	35	3501	35004	SP	Nova Alianca
3532827	32827	Nova Campina	1	35	3511	35041	SP	Nova Campina
3532843	32843	Nova Canaã Paulista	1	35	3501	35001	SP	Nova Canaa Paulista
3532868	32868	Nova Castilho	1	35	3501	35006	SP	Nova Castilho
3532900	32900	Nova Europa	1	35	3505	35024	SP	Nova Europa
3533007	33007	Nova Granada	1	35	3501	35004	SP	Nova Granada
3533106	33106	Nova Guataporanga	1	35	3508	35034	SP	Nova Guataporanga
3533205	33205	Nova Independência	1	35	3503	35016	SP	Nova Independencia
3533304	33304	Nova Luzitânia	1	35	3501	35006	SP	Nova Luzitania
3533403	33403	Nova Odessa	1	35	3507	35032	SP	Nova Odessa
3533254	33254	Novais	1	35	3501	35005	SP	Novais
3533502	33502	Novo Horizonte	1	35	3501	35008	SP	Novo Horizonte
3533601	33601	Nuporanga	1	35	3502	35010	SP	Nuporanga
3533700	33700	Ocauçu	1	35	3509	35038	SP	Ocaucu
3533809	33809	Óleo	1	35	3510	35040	SP	Oleo
3533908	33908	Olímpia	1	35	3501	35004	SP	Olimpia
3534005	34005	Onda Verde	1	35	3501	35004	SP	Onda Verde
3534104	34104	Oriente	1	35	3509	35038	SP	Oriente
3534203	34203	Orindiúva	1	35	3501	35004	SP	Orindiuva
3534302	34302	Orlândia	1	35	3502	35010	SP	Orlandia
3534401	34401	Osasco	1	35	3515	35057	SP	Osasco
3534500	34500	Oscar Bressane	1	35	3509	35038	SP	Oscar Bressane
3534609	34609	Osvaldo Cruz	1	35	3508	35035	SP	Osvaldo Cruz
3534708	34708	Ourinhos	1	35	3510	35040	SP	Ourinhos
3534807	34807	Ouro Verde	1	35	3508	35034	SP	Ouro Verde
3534757	34757	Ouroeste	1	35	3501	35002	SP	Ouroeste
3534906	34906	Pacaembu	1	35	3508	35035	SP	Pacaembu
3535002	35002	Palestina	1	35	3501	35004	SP	Palestina
3535101	35101	Palmares Paulista	1	35	3501	35005	SP	Palmares Paulista
3535200	35200	Palmeira d'Oeste	1	35	3501	35001	SP	Palmeira d'Oeste
3535309	35309	Palmital	1	35	3510	35039	SP	Palmital
3535408	35408	Panorama	1	35	3508	35034	SP	Panorama
3535507	35507	Paraguaçu Paulista	1	35	3510	35039	SP	Paraguacu Paulista
3535606	35606	Paraibuna	1	35	3513	35053	SP	Paraibuna
3535705	35705	Paraíso	1	35	3501	35005	SP	Paraiso
3535804	35804	Paranapanema	1	35	3504	35022	SP	Paranapanema
3535903	35903	Paranapuã	1	35	3501	35001	SP	Paranapua
3536000	36000	Parapuã	1	35	3508	35035	SP	Parapua
3536109	36109	Pardinho	1	35	3504	35023	SP	Pardinho
3536208	36208	Pariquera-Açu	1	35	3514	35055	SP	Pariquera-Acu
3536257	36257	Parisi	1	35	3501	35003	SP	Parisi
3536307	36307	Patrocínio Paulista	1	35	3502	35012	SP	Patrocinio Paulista
3536406	36406	Paulicéia	1	35	3508	35034	SP	Pauliceia
3536505	36505	Paulínia	1	35	3507	35032	SP	Paulinia
3536570	36570	Paulistânia	1	35	3504	35020	SP	Paulistania
3536604	36604	Paulo de Faria	1	35	3501	35004	SP	Paulo de Faria
3536703	36703	Pederneiras	1	35	3504	35021	SP	Pederneiras
3536802	36802	Pedra Bela	1	35	3507	35033	SP	Pedra Bela
3536901	36901	Pedranópolis	1	35	3501	35002	SP	Pedranopolis
3537008	37008	Pedregulho	1	35	3502	35012	SP	Pedregulho
3537107	37107	Pedreira	1	35	3507	35032	SP	Pedreira
3537156	37156	Pedrinhas Paulista	1	35	3510	35039	SP	Pedrinhas Paulista
3537206	37206	Pedro de Toledo	1	35	3514	35056	SP	Pedro de Toledo
3537305	37305	Penápolis	1	35	3503	35018	SP	Penapolis
3537404	37404	Pereira Barreto	1	35	3503	35016	SP	Pereira Barreto
3537503	37503	Pereiras	1	35	3511	35043	SP	Pereiras
3537602	37602	Peruíbe	1	35	3514	35056	SP	Peruibe
3537701	37701	Piacatu	1	35	3503	35018	SP	Piacatu
3537800	37800	Piedade	1	35	3512	35045	SP	Piedade
3537909	37909	Pilar do Sul	1	35	3512	35045	SP	Pilar do Sul
3538006	38006	Pindamonhangaba	1	35	3513	35050	SP	Pindamonhangaba
3538105	38105	Pindorama	1	35	3501	35005	SP	Pindorama
3538204	38204	Pinhalzinho	1	35	3507	35033	SP	Pinhalzinho
3538303	38303	Piquerobi	1	35	3508	35036	SP	Piquerobi
3538501	38501	Piquete	1	35	3513	35051	SP	Piquete
3538600	38600	Piracaia	1	35	3512	35048	SP	Piracaia
3538709	38709	Piracicaba	1	35	3506	35028	SP	Piracicaba
3538808	38808	Piraju	1	35	3510	35040	SP	Piraju
3538907	38907	Pirajuí	1	35	3504	35020	SP	Pirajui
3539004	39004	Pirangi	1	35	3502	35013	SP	Pirangi
3539103	39103	Pirapora do Bom Jesus	1	35	3515	35057	SP	Pirapora do Bom Jesus
3539202	39202	Pirapozinho	1	35	3508	35036	SP	Pirapozinho
3539301	39301	Pirassununga	1	35	3507	35029	SP	Pirassununga
3539400	39400	Piratininga	1	35	3504	35020	SP	Piratininga
3539509	39509	Pitangueiras	1	35	3502	35013	SP	Pitangueiras
3539608	39608	Planalto	1	35	3501	35004	SP	Planalto
3539707	39707	Platina	1	35	3510	35039	SP	Platina
3539806	39806	Poá	1	35	3515	35062	SP	Poa
3539905	39905	Poloni	1	35	3501	35007	SP	Poloni
3540002	40002	Pompéia	1	35	3509	35038	SP	Pompeia
3540101	40101	Pongaí	1	35	3504	35020	SP	Pongai
3540200	40200	Pontal	1	35	3502	35014	SP	Pontal
3540259	40259	Pontalinda	1	35	3501	35001	SP	Pontalinda
3540309	40309	Pontes Gestal	1	35	3501	35003	SP	Pontes Gestal
3540408	40408	Populina	1	35	3501	35001	SP	Populina
3540507	40507	Porangaba	1	35	3511	35043	SP	Porangaba
3540606	40606	Porto Feliz	1	35	3512	35046	SP	Porto Feliz
3540705	40705	Porto Ferreira	1	35	3507	35029	SP	Porto Ferreira
3540754	40754	Potim	1	35	3513	35051	SP	Potim
3540804	40804	Potirendaba	1	35	3501	35004	SP	Potirendaba
3540853	40853	Pracinha	1	35	3508	35035	SP	Pracinha
3540903	40903	Pradópolis	1	35	3502	35014	SP	Pradopolis
3541000	41000	Praia Grande	1	35	3515	35063	SP	Praia Grande
3541059	41059	Pratânia	1	35	3504	35023	SP	Pratania
3541109	41109	Presidente Alves	1	35	3504	35020	SP	Presidente Alves
3541208	41208	Presidente Bernardes	1	35	3508	35036	SP	Presidente Bernardes
3541307	41307	Presidente Epitácio	1	35	3508	35036	SP	Presidente Epitacio
3541406	41406	Presidente Prudente	1	35	3508	35036	SP	Presidente Prudente
3541505	41505	Presidente Venceslau	1	35	3508	35036	SP	Presidente Venceslau
3541604	41604	Promissão	1	35	3504	35019	SP	Promissao
3541653	41653	Quadra	1	35	3511	35043	SP	Quadra
3541703	41703	Quatá	1	35	3510	35039	SP	Quata
3541802	41802	Queiroz	1	35	3509	35037	SP	Queiroz
3541901	41901	Queluz	1	35	3513	35051	SP	Queluz
3542008	42008	Quintana	1	35	3509	35037	SP	Quintana
3542107	42107	Rafard	1	35	3506	35028	SP	Rafard
3542206	42206	Rancharia	1	35	3508	35036	SP	Rancharia
3542305	42305	Redenção da Serra	1	35	3513	35053	SP	Redencao da Serra
3542404	42404	Regente Feijó	1	35	3508	35036	SP	Regente Feijo
3542503	42503	Reginópolis	1	35	3504	35020	SP	Reginopolis
3542602	42602	Registro	1	35	3514	35055	SP	Registro
3542701	42701	Restinga	1	35	3502	35012	SP	Restinga
3542800	42800	Ribeira	1	35	3511	35044	SP	Ribeira
3542909	42909	Ribeirão Bonito	1	35	3505	35025	SP	Ribeirao Bonito
3543006	43006	Ribeirão Branco	1	35	3511	35044	SP	Ribeirao Branco
3543105	43105	Ribeirão Corrente	1	35	3502	35012	SP	Ribeirao Corrente
3543204	43204	Ribeirão do Sul	1	35	3510	35040	SP	Ribeirao do Sul
3543238	43238	Ribeirão dos Índios	1	35	3508	35036	SP	Ribeirao dos Indios
3543253	43253	Ribeirão Grande	1	35	3511	35044	SP	Ribeirao Grande
3543303	43303	Ribeirão Pires	1	35	3515	35061	SP	Ribeirao Pires
3543402	43402	Ribeirão Preto	1	35	3502	35014	SP	Ribeirao Preto
3543600	43600	Rifaina	1	35	3502	35012	SP	Rifaina
3543709	43709	Rincão	1	35	3505	35024	SP	Rincao
3543808	43808	Rinópolis	1	35	3508	35035	SP	Rinopolis
3543907	43907	Rio Claro	1	35	3506	35026	SP	Rio Claro
3544004	44004	Rio das Pedras	1	35	3506	35028	SP	Rio das Pedras
3544103	44103	Rio Grande da Serra	1	35	3515	35061	SP	Rio Grande da Serra
3544202	44202	Riolândia	1	35	3501	35003	SP	Riolandia
3543501	43501	Riversul	1	35	3511	35041	SP	Riversul
3544251	44251	Rosana	1	35	3508	35036	SP	Rosana
3544301	44301	Roseira	1	35	3513	35051	SP	Roseira
3544400	44400	Rubiácea	1	35	3503	35017	SP	Rubiacea
3544509	44509	Rubinéia	1	35	3501	35001	SP	Rubineia
3544608	44608	Sabino	1	35	3504	35019	SP	Sabino
3544707	44707	Sagres	1	35	3508	35035	SP	Sagres
3544806	44806	Sales	1	35	3501	35008	SP	Sales
3544905	44905	Sales Oliveira	1	35	3502	35010	SP	Sales Oliveira
3545001	45001	Salesópolis	1	35	3515	35062	SP	Salesopolis
3545100	45100	Salmourão	1	35	3508	35035	SP	Salmourao
3545159	45159	Saltinho	1	35	3506	35028	SP	Saltinho
3545209	45209	Salto	1	35	3512	35046	SP	Salto
3545308	45308	Salto de Pirapora	1	35	3512	35046	SP	Salto de Pirapora
3545407	45407	Salto Grande	1	35	3510	35040	SP	Salto Grande
3545506	45506	Sandovalina	1	35	3508	35036	SP	Sandovalina
3545605	45605	Santa Adélia	1	35	3501	35005	SP	Santa Adelia
3545704	45704	Santa Albertina	1	35	3501	35001	SP	Santa Albertina
3545803	45803	Santa Bárbara d'Oeste	1	35	3507	35032	SP	Santa Barbara d'Oeste
3546009	46009	Santa Branca	1	35	3513	35050	SP	Santa Branca
3546108	46108	Santa Clara d'Oeste	1	35	3501	35001	SP	Santa Clara d'Oeste
3546207	46207	Santa Cruz da Conceição	1	35	3506	35027	SP	Santa Cruz da Conceicao
3546256	46256	Santa Cruz da Esperança	1	35	3502	35015	SP	Santa Cruz da Esperanca
3546306	46306	Santa Cruz das Palmeiras	1	35	3507	35029	SP	Santa Cruz das Palmeiras
3546405	46405	Santa Cruz do Rio Pardo	1	35	3510	35040	SP	Santa Cruz do Rio Pardo
3546504	46504	Santa Ernestina	1	35	3502	35013	SP	Santa Ernestina
3546603	46603	Santa Fé do Sul	1	35	3501	35001	SP	Santa Fe do Sul
3546702	46702	Santa Gertrudes	1	35	3506	35027	SP	Santa Gertrudes
3546801	46801	Santa Isabel	1	35	3515	35059	SP	Santa Isabel
3546900	46900	Santa Lúcia	1	35	3505	35024	SP	Santa Lucia
3557154	57154	Zacarias	1	35	3501	35004	SP	Zacarias
3547007	47007	Santa Maria da Serra	1	35	3506	35028	SP	Santa Maria da Serra
3547106	47106	Santa Mercedes	1	35	3508	35034	SP	Santa Mercedes
3547502	47502	Santa Rita do Passa Quatro	1	35	3502	35014	SP	Santa Rita do Passa Quatro
3547403	47403	Santa Rita d'Oeste	1	35	3501	35001	SP	Santa Rita d'Oeste
3547601	47601	Santa Rosa de Viterbo	1	35	3502	35014	SP	Santa Rosa de Viterbo
3547650	47650	Santa Salete	1	35	3501	35001	SP	Santa Salete
3547205	47205	Santana da Ponte Pensa	1	35	3501	35001	SP	Santana da Ponte Pensa
3547304	47304	Santana de Parnaíba	1	35	3515	35057	SP	Santana de Parnaiba
3547700	47700	Santo Anastácio	1	35	3508	35036	SP	Santo Anastacio
3547809	47809	Santo André	1	35	3515	35061	SP	Santo Andre
3547908	47908	Santo Antônio da Alegria	1	35	3502	35015	SP	Santo Antonio da Alegria
3548005	48005	Santo Antônio de Posse	1	35	3507	35031	SP	Santo Antonio de Posse
3548054	48054	Santo Antônio do Aracanguá	1	35	3503	35017	SP	Santo Antonio do Aracangua
3548104	48104	Santo Antônio do Jardim	1	35	3507	35030	SP	Santo Antonio do Jardim
3548203	48203	Santo Antônio do Pinhal	1	35	3513	35049	SP	Santo Antonio do Pinhal
3548302	48302	Santo Expedito	1	35	3508	35036	SP	Santo Expedito
3548401	48401	Santópolis do Aguapeí	1	35	3503	35018	SP	Santopolis do Aguapei
3548500	48500	Santos	1	35	3515	35063	SP	Santos
3548609	48609	São Bento do Sapucaí	1	35	3513	35049	SP	Sao Bento do Sapucai
3548708	48708	São Bernardo do Campo	1	35	3515	35061	SP	Sao Bernardo do Campo
3548807	48807	São Caetano do Sul	1	35	3515	35061	SP	Sao Caetano do Sul
3548906	48906	São Carlos	1	35	3505	35025	SP	Sao Carlos
3549003	49003	São Francisco	1	35	3501	35001	SP	Sao Francisco
3549102	49102	São João da Boa Vista	1	35	3507	35030	SP	Sao Joao da Boa Vista
3549201	49201	São João das Duas Pontes	1	35	3501	35002	SP	Sao Joao das Duas Pontes
3549250	49250	São João de Iracema	1	35	3501	35006	SP	Sao Joao de Iracema
3549300	49300	São João do Pau d'Alho	1	35	3508	35034	SP	Sao Joao do Pau d'Alho
3549409	49409	São Joaquim da Barra	1	35	3502	35010	SP	Sao Joaquim da Barra
3549508	49508	São José da Bela Vista	1	35	3502	35012	SP	Sao Jose da Bela Vista
3549607	49607	São José do Barreiro	1	35	3513	35052	SP	Sao Jose do Barreiro
3549706	49706	São José do Rio Pardo	1	35	3507	35030	SP	Sao Jose do Rio Pardo
3549805	49805	São José do Rio Preto	1	35	3501	35004	SP	Sao Jose do Rio Preto
3549904	49904	São José dos Campos	1	35	3513	35050	SP	Sao Jose dos Campos
3549953	49953	São Lourenço da Serra	1	35	3515	35060	SP	Sao Lourenco da Serra
3550001	50001	São Luís do Paraitinga	1	35	3513	35053	SP	Sao Luis do Paraitinga
3550100	50100	São Manuel	1	35	3504	35023	SP	Sao Manuel
3550209	50209	São Miguel Arcanjo	1	35	3512	35045	SP	Sao Miguel Arcanjo
3550308	50308	São Paulo	1	35	3515	35061	SP	Sao Paulo
3550407	50407	São Pedro	1	35	3506	35028	SP	Sao Pedro
3550506	50506	São Pedro do Turvo	1	35	3510	35040	SP	Sao Pedro do Turvo
3550605	50605	São Roque	1	35	3512	35046	SP	Sao Roque
3550704	50704	São Sebastião	1	35	3513	35054	SP	Sao Sebastiao
3550803	50803	São Sebastião da Grama	1	35	3507	35030	SP	Sao Sebastiao da Grama
3550902	50902	São Simão	1	35	3502	35014	SP	Sao Simao
3551009	51009	São Vicente	1	35	3515	35063	SP	Sao Vicente
3551108	51108	Sarapuí	1	35	3512	35046	SP	Sarapui
3551207	51207	Sarutaiá	1	35	3510	35040	SP	Sarutaia
3551306	51306	Sebastianópolis do Sul	1	35	3501	35007	SP	Sebastianopolis do Sul
3551405	51405	Serra Azul	1	35	3502	35014	SP	Serra Azul
3551603	51603	Serra Negra	1	35	3507	35033	SP	Serra Negra
3551504	51504	Serrana	1	35	3502	35014	SP	Serrana
3551702	51702	Sertãozinho	1	35	3502	35014	SP	Sertaozinho
3551801	51801	Sete Barras	1	35	3514	35055	SP	Sete Barras
3551900	51900	Severínia	1	35	3501	35005	SP	Severinia
3552007	52007	Silveiras	1	35	3513	35052	SP	Silveiras
3552106	52106	Socorro	1	35	3507	35033	SP	Socorro
3552205	52205	Sorocaba	1	35	3512	35046	SP	Sorocaba
3552304	52304	Sud Mennucci	1	35	3503	35016	SP	Sud Mennucci
3552403	52403	Sumaré	1	35	3507	35032	SP	Sumare
3552551	52551	Suzanápolis	1	35	3503	35016	SP	Suzanapolis
3552502	52502	Suzano	1	35	3515	35062	SP	Suzano
3552601	52601	Tabapuã	1	35	3501	35005	SP	Tabapua
3552700	52700	Tabatinga	1	35	3505	35024	SP	Tabatinga
3552809	52809	Taboão da Serra	1	35	3515	35060	SP	Taboao da Serra
3552908	52908	Taciba	1	35	3508	35036	SP	Taciba
3553005	53005	Taguaí	1	35	3510	35040	SP	Taguai
3553104	53104	Taiaçu	1	35	3502	35013	SP	Taiacu
3553203	53203	Taiúva	1	35	3502	35013	SP	Taiuva
3553302	53302	Tambaú	1	35	3507	35030	SP	Tambau
3553401	53401	Tanabi	1	35	3501	35004	SP	Tanabi
3553500	53500	Tapiraí	1	35	3512	35045	SP	Tapirai
3553609	53609	Tapiratiba	1	35	3507	35030	SP	Tapiratiba
3553658	53658	Taquaral	1	35	3502	35013	SP	Taquaral
3553708	53708	Taquaritinga	1	35	3502	35013	SP	Taquaritinga
3553807	53807	Taquarituba	1	35	3511	35041	SP	Taquarituba
3553856	53856	Taquarivaí	1	35	3511	35041	SP	Taquarivai
3553906	53906	Tarabai	1	35	3508	35036	SP	Tarabai
3553955	53955	Tarumã	1	35	3510	35039	SP	Taruma
3554003	54003	Tatuí	1	35	3511	35043	SP	Tatui
3554102	54102	Taubaté	1	35	3513	35050	SP	Taubate
3554201	54201	Tejupá	1	35	3510	35040	SP	Tejupa
3554300	54300	Teodoro Sampaio	1	35	3508	35036	SP	Teodoro Sampaio
3554409	54409	Terra Roxa	1	35	3502	35013	SP	Terra Roxa
3554508	54508	Tietê	1	35	3506	35028	SP	Tiete
3554607	54607	Timburi	1	35	3510	35040	SP	Timburi
3554656	54656	Torre de Pedra	1	35	3511	35043	SP	Torre de Pedra
3554706	54706	Torrinha	1	35	3506	35026	SP	Torrinha
3554755	54755	Trabiju	1	35	3505	35024	SP	Trabiju
3554805	54805	Tremembé	1	35	3513	35050	SP	Tremembe
3554904	54904	Três Fronteiras	1	35	3501	35001	SP	Tres Fronteiras
3554953	54953	Tuiuti	1	35	3512	35048	SP	Tuiuti
3555000	55000	Tupã	1	35	3509	35037	SP	Tupa
3555109	55109	Tupi Paulista	1	35	3508	35034	SP	Tupi Paulista
3555208	55208	Turiúba	1	35	3503	35018	SP	Turiuba
3555307	55307	Turmalina	1	35	3501	35002	SP	Turmalina
3555356	55356	Ubarana	1	35	3501	35004	SP	Ubarana
3555406	55406	Ubatuba	1	35	3513	35054	SP	Ubatuba
3555505	55505	Ubirajara	1	35	3504	35020	SP	Ubirajara
3555604	55604	Uchoa	1	35	3501	35004	SP	Uchoa
3555703	55703	União Paulista	1	35	3501	35007	SP	Uniao Paulista
3555802	55802	Urânia	1	35	3501	35001	SP	Urania
3555901	55901	Uru	1	35	3504	35020	SP	Uru
3556008	56008	Urupês	1	35	3501	35008	SP	Urupes
3556107	56107	Valentim Gentil	1	35	3501	35003	SP	Valentim Gentil
3556206	56206	Valinhos	1	35	3507	35032	SP	Valinhos
3556305	56305	Valparaíso	1	35	3503	35017	SP	Valparaiso
3556354	56354	Vargem	1	35	3512	35048	SP	Vargem
3556404	56404	Vargem Grande do Sul	1	35	3507	35030	SP	Vargem Grande do Sul
3556453	56453	Vargem Grande Paulista	1	35	3515	35060	SP	Vargem Grande Paulista
3556503	56503	Várzea Paulista	1	35	3512	35047	SP	Varzea Paulista
3556602	56602	Vera Cruz	1	35	3509	35038	SP	Vera Cruz
3556701	56701	Vinhedo	1	35	3507	35032	SP	Vinhedo
3556800	56800	Viradouro	1	35	3502	35013	SP	Viradouro
3556909	56909	Vista Alegre do Alto	1	35	3502	35013	SP	Vista Alegre do Alto
3556958	56958	Vitória Brasil	1	35	3501	35001	SP	Vitoria Brasil
3557006	57006	Votorantim	1	35	3512	35046	SP	Votorantim
3557105	57105	Votuporanga	1	35	3501	35003	SP	Votuporanga
4100103	103	Abatiá	1	41	4104	41015	PR	Abatia
4100202	202	Adrianópolis	1	41	4110	41035	PR	Adrianopolis
4100301	301	Agudos do Sul	1	41	4110	41039	PR	Agudos do Sul
4100400	400	Almirante Tamandaré	1	41	4110	41037	PR	Almirante Tamandare
4100459	459	Altamira do Paraná	1	41	4102	41004	PR	Altamira do Parana
4128625	28625	Alto Paraíso	1	41	4101	41002	PR	Alto Paraiso
4100608	608	Alto Paraná	1	41	4101	41001	PR	Alto Parana
4100707	707	Alto Piquiri	1	41	4101	41002	PR	Alto Piquiri
4100509	509	Altônia	1	41	4101	41002	PR	Altonia
4100806	806	Alvorada do Sul	1	41	4103	41007	PR	Alvorada do Sul
4100905	905	Amaporã	1	41	4101	41001	PR	Amapora
4101002	1002	Ampére	1	41	4107	41025	PR	Ampere
4101051	1051	Anahy	1	41	4106	41023	PR	Anahy
4101101	1101	Andirá	1	41	4104	41015	PR	Andira
4101150	1150	Ângulo	1	41	4103	41006	PR	Angulo
4101200	1200	Antonina	1	41	4110	41038	PR	Antonina
4101309	1309	Antônio Olinto	1	41	4109	41034	PR	Antonio Olinto
4101408	1408	Apucarana	1	41	4103	41010	PR	Apucarana
4101507	1507	Arapongas	1	41	4103	41010	PR	Arapongas
4101606	1606	Arapoti	1	41	4105	41020	PR	Arapoti
4101655	1655	Arapuã	1	41	4103	41013	PR	Arapua
4101705	1705	Araruna	1	41	4102	41005	PR	Araruna
4101804	1804	Araucária	1	41	4110	41037	PR	Araucaria
4101853	1853	Ariranha do Ivaí	1	41	4103	41013	PR	Ariranha do Ivai
4101903	1903	Assaí	1	41	4104	41014	PR	Assai
4102000	2000	Assis Chateaubriand	1	41	4106	41022	PR	Assis Chateaubriand
4102109	2109	Astorga	1	41	4103	41006	PR	Astorga
4102208	2208	Atalaia	1	41	4103	41006	PR	Atalaia
4102307	2307	Balsa Nova	1	41	4110	41037	PR	Balsa Nova
4102406	2406	Bandeirantes	1	41	4104	41015	PR	Bandeirantes
4102505	2505	Barbosa Ferraz	1	41	4102	41005	PR	Barbosa Ferraz
4102703	2703	Barra do Jacaré	1	41	4104	41016	PR	Barra do Jacare
4102604	2604	Barracão	1	41	4107	41026	PR	Barracao
4102752	2752	Bela Vista da Caroba	1	41	4107	41025	PR	Bela Vista da Caroba
4102802	2802	Bela Vista do Paraíso	1	41	4103	41007	PR	Bela Vista do Paraiso
4102901	2901	Bituruna	1	41	4109	41033	PR	Bituruna
4103008	3008	Boa Esperança	1	41	4102	41004	PR	Boa Esperanca
4103024	3024	Boa Esperança do Iguaçu	1	41	4107	41026	PR	Boa Esperanca do Iguacu
4103040	3040	Boa Ventura de São Roque	1	41	4108	41028	PR	Boa Ventura de Sao Roque
4103057	3057	Boa Vista da Aparecida	1	41	4106	41023	PR	Boa Vista da Aparecida
4103107	3107	Bocaiúva do Sul	1	41	4110	41037	PR	Bocaiuva do Sul
4103156	3156	Bom Jesus do Sul	1	41	4107	41026	PR	Bom Jesus do Sul
4103206	3206	Bom Sucesso	1	41	4103	41012	PR	Bom Sucesso
4103222	3222	Bom Sucesso do Sul	1	41	4107	41027	PR	Bom Sucesso do Sul
4103305	3305	Borrazópolis	1	41	4103	41012	PR	Borrazopolis
4103354	3354	Braganey	1	41	4106	41023	PR	Braganey
4103370	3370	Brasilândia do Sul	1	41	4101	41002	PR	Brasilandia do Sul
4103404	3404	Cafeara	1	41	4103	41006	PR	Cafeara
4103453	3453	Cafelândia	1	41	4106	41023	PR	Cafelandia
4103479	3479	Cafezal do Sul	1	41	4101	41002	PR	Cafezal do Sul
4103503	3503	Califórnia	1	41	4103	41010	PR	California
4103602	3602	Cambará	1	41	4104	41016	PR	Cambara
4103701	3701	Cambé	1	41	4103	41011	PR	Cambe
4103800	3800	Cambira	1	41	4103	41010	PR	Cambira
4103909	3909	Campina da Lagoa	1	41	4102	41004	PR	Campina da Lagoa
4103958	3958	Campina do Simão	1	41	4108	41029	PR	Campina do Simao
4104006	4006	Campina Grande do Sul	1	41	4110	41037	PR	Campina Grande do Sul
4104055	4055	Campo Bonito	1	41	4106	41023	PR	Campo Bonito
4104105	4105	Campo do Tenente	1	41	4110	41039	PR	Campo do Tenente
4104204	4204	Campo Largo	1	41	4110	41037	PR	Campo Largo
4104253	4253	Campo Magro	1	41	4110	41037	PR	Campo Magro
4104303	4303	Campo Mourão	1	41	4102	41005	PR	Campo Mourao
4104402	4402	Cândido de Abreu	1	41	4103	41013	PR	Candido de Abreu
4104428	4428	Candói	1	41	4108	41029	PR	Candoi
4104451	4451	Cantagalo	1	41	4108	41029	PR	Cantagalo
4104501	4501	Capanema	1	41	4107	41025	PR	Capanema
4104600	4600	Capitão Leônidas Marques	1	41	4106	41023	PR	Capitao Leonidas Marques
4104659	4659	Carambeí	1	41	4105	41021	PR	Carambei
4104709	4709	Carlópolis	1	41	4104	41018	PR	Carlopolis
4104808	4808	Cascavel	1	41	4106	41023	PR	Cascavel
4104907	4907	Castro	1	41	4105	41021	PR	Castro
4105003	5003	Catanduvas	1	41	4106	41023	PR	Catanduvas
4105102	5102	Centenário do Sul	1	41	4103	41006	PR	Centenario do Sul
4105201	5201	Cerro Azul	1	41	4110	41035	PR	Cerro Azul
4105300	5300	Céu Azul	1	41	4106	41024	PR	Ceu Azul
4105409	5409	Chopinzinho	1	41	4107	41027	PR	Chopinzinho
4105508	5508	Cianorte	1	41	4101	41003	PR	Cianorte
4105607	5607	Cidade Gaúcha	1	41	4101	41003	PR	Cidade Gaucha
4105706	5706	Clevelândia	1	41	4108	41030	PR	Clevelandia
4105805	5805	Colombo	1	41	4110	41037	PR	Colombo
4105904	5904	Colorado	1	41	4103	41006	PR	Colorado
4106001	6001	Congonhinhas	1	41	4104	41015	PR	Congonhinhas
4106100	6100	Conselheiro Mairinck	1	41	4104	41017	PR	Conselheiro Mairinck
4106209	6209	Contenda	1	41	4110	41037	PR	Contenda
4106308	6308	Corbélia	1	41	4106	41023	PR	Corbelia
4106407	6407	Cornélio Procópio	1	41	4104	41015	PR	Cornelio Procopio
4106456	6456	Coronel Domingos Soares	1	41	4108	41030	PR	Coronel Domingos Soares
4106506	6506	Coronel Vivida	1	41	4107	41027	PR	Coronel Vivida
4106555	6555	Corumbataí do Sul	1	41	4102	41005	PR	Corumbatai do Sul
4106803	6803	Cruz Machado	1	41	4109	41033	PR	Cruz Machado
4106571	6571	Cruzeiro do Iguaçu	1	41	4107	41026	PR	Cruzeiro do Iguacu
4106605	6605	Cruzeiro do Oeste	1	41	4101	41002	PR	Cruzeiro do Oeste
4106704	6704	Cruzeiro do Sul	1	41	4101	41001	PR	Cruzeiro do Sul
4106852	6852	Cruzmaltina	1	41	4103	41012	PR	Cruzmaltina
4106902	6902	Curitiba	1	41	4110	41037	PR	Curitiba
4107009	7009	Curiúva	1	41	4104	41017	PR	Curiuva
4107108	7108	Diamante do Norte	1	41	4101	41001	PR	Diamante do Norte
4107124	7124	Diamante do Sul	1	41	4106	41023	PR	Diamante do Sul
4107157	7157	Diamante D'Oeste	1	41	4106	41022	PR	Diamante D'Oeste
4107207	7207	Dois Vizinhos	1	41	4107	41026	PR	Dois Vizinhos
4107256	7256	Douradina	1	41	4101	41002	PR	Douradina
4107306	7306	Doutor Camargo	1	41	4103	41008	PR	Doutor Camargo
4128633	28633	Doutor Ulysses	1	41	4110	41035	PR	Doutor Ulysses
4107405	7405	Enéas Marques	1	41	4107	41026	PR	Eneas Marques
4107504	7504	Engenheiro Beltrão	1	41	4102	41005	PR	Engenheiro Beltrao
4107538	7538	Entre Rios do Oeste	1	41	4106	41022	PR	Entre Rios do Oeste
4107520	7520	Esperança Nova	1	41	4101	41002	PR	Esperanca Nova
4107546	7546	Espigão Alto do Iguaçu	1	41	4108	41029	PR	Espigao Alto do Iguacu
4107553	7553	Farol	1	41	4102	41005	PR	Farol
4107603	7603	Faxinal	1	41	4103	41012	PR	Faxinal
4107652	7652	Fazenda Rio Grande	1	41	4110	41037	PR	Fazenda Rio Grande
4107702	7702	Fênix	1	41	4102	41005	PR	Fenix
4107736	7736	Fernandes Pinheiro	1	41	4109	41031	PR	Fernandes Pinheiro
4107751	7751	Figueira	1	41	4104	41017	PR	Figueira
4107850	7850	Flor da Serra do Sul	1	41	4107	41026	PR	Flor da Serra do Sul
4107801	7801	Floraí	1	41	4103	41008	PR	Florai
4107900	7900	Floresta	1	41	4103	41008	PR	Floresta
4108007	8007	Florestópolis	1	41	4103	41007	PR	Florestopolis
4108106	8106	Flórida	1	41	4103	41006	PR	Florida
4108205	8205	Formosa do Oeste	1	41	4106	41022	PR	Formosa do Oeste
4108304	8304	Foz do Iguaçu	1	41	4106	41024	PR	Foz do Iguacu
4108452	8452	Foz do Jordão	1	41	4108	41029	PR	Foz do Jordao
4108320	8320	Francisco Alves	1	41	4101	41002	PR	Francisco Alves
4108403	8403	Francisco Beltrão	1	41	4107	41026	PR	Francisco Beltrao
4108502	8502	General Carneiro	1	41	4109	41033	PR	General Carneiro
4108551	8551	Godoy Moreira	1	41	4103	41013	PR	Godoy Moreira
4108601	8601	Goioerê	1	41	4102	41004	PR	Goioere
4108650	8650	Goioxim	1	41	4108	41029	PR	Goioxim
4108700	8700	Grandes Rios	1	41	4103	41013	PR	Grandes Rios
4108809	8809	Guaíra	1	41	4106	41022	PR	Guaira
4108908	8908	Guairaçá	1	41	4101	41001	PR	Guairaca
4108957	8957	Guamiranga	1	41	4109	41031	PR	Guamiranga
4109005	9005	Guapirama	1	41	4104	41018	PR	Guapirama
4109104	9104	Guaporema	1	41	4101	41003	PR	Guaporema
4109203	9203	Guaraci	1	41	4103	41006	PR	Guaraci
4109302	9302	Guaraniaçu	1	41	4106	41023	PR	Guaraniacu
4109401	9401	Guarapuava	1	41	4108	41029	PR	Guarapuava
4109500	9500	Guaraqueçaba	1	41	4110	41038	PR	Guaraquecaba
4109609	9609	Guaratuba	1	41	4110	41038	PR	Guaratuba
4109658	9658	Honório Serpa	1	41	4108	41030	PR	Honorio Serpa
4109708	9708	Ibaiti	1	41	4104	41017	PR	Ibaiti
4109757	9757	Ibema	1	41	4106	41023	PR	Ibema
4109807	9807	Ibiporã	1	41	4103	41011	PR	Ibipora
4109906	9906	Icaraíma	1	41	4101	41002	PR	Icaraima
4110003	10003	Iguaraçu	1	41	4103	41006	PR	Iguaracu
4110052	10052	Iguatu	1	41	4106	41023	PR	Iguatu
4110078	10078	Imbaú	1	41	4105	41019	PR	Imbau
4110102	10102	Imbituva	1	41	4109	41031	PR	Imbituva
4110201	10201	Inácio Martins	1	41	4108	41029	PR	Inacio Martins
4110300	10300	Inajá	1	41	4101	41001	PR	Inaja
4110409	10409	Indianópolis	1	41	4101	41003	PR	Indianopolis
4110508	10508	Ipiranga	1	41	4109	41031	PR	Ipiranga
4110607	10607	Iporã	1	41	4101	41002	PR	Ipora
4110656	10656	Iracema do Oeste	1	41	4106	41022	PR	Iracema do Oeste
4110706	10706	Irati	1	41	4109	41032	PR	Irati
4110805	10805	Iretama	1	41	4102	41005	PR	Iretama
4110904	10904	Itaguajé	1	41	4103	41006	PR	Itaguaje
4110953	10953	Itaipulândia	1	41	4106	41024	PR	Itaipulandia
4111001	11001	Itambaracá	1	41	4104	41015	PR	Itambaraca
4111100	11100	Itambé	1	41	4103	41008	PR	Itambe
4111209	11209	Itapejara d'Oeste	1	41	4107	41027	PR	Itapejara d'Oeste
4111258	11258	Itaperuçu	1	41	4110	41037	PR	Itaperucu
4111308	11308	Itaúna do Sul	1	41	4101	41001	PR	Itauna do Sul
4111407	11407	Ivaí	1	41	4109	41031	PR	Ivai
4111506	11506	Ivaiporã	1	41	4103	41013	PR	Ivaipora
4111555	11555	Ivaté	1	41	4101	41002	PR	Ivate
4111605	11605	Ivatuba	1	41	4103	41008	PR	Ivatuba
4111704	11704	Jaboti	1	41	4104	41017	PR	Jaboti
4111803	11803	Jacarezinho	1	41	4104	41016	PR	Jacarezinho
4111902	11902	Jaguapitã	1	41	4103	41006	PR	Jaguapita
4112009	12009	Jaguariaíva	1	41	4105	41020	PR	Jaguariaiva
4112108	12108	Jandaia do Sul	1	41	4103	41010	PR	Jandaia do Sul
4112207	12207	Janiópolis	1	41	4102	41004	PR	Janiopolis
4112306	12306	Japira	1	41	4104	41017	PR	Japira
4112405	12405	Japurá	1	41	4101	41003	PR	Japura
4112504	12504	Jardim Alegre	1	41	4103	41013	PR	Jardim Alegre
4112603	12603	Jardim Olinda	1	41	4101	41001	PR	Jardim Olinda
4112702	12702	Jataizinho	1	41	4104	41014	PR	Jataizinho
4112751	12751	Jesuítas	1	41	4106	41022	PR	Jesuitas
4112801	12801	Joaquim Távora	1	41	4104	41018	PR	Joaquim Tavora
4112900	12900	Jundiaí do Sul	1	41	4104	41016	PR	Jundiai do Sul
4112959	12959	Juranda	1	41	4102	41004	PR	Juranda
4113007	13007	Jussara	1	41	4101	41003	PR	Jussara
4113106	13106	Kaloré	1	41	4103	41012	PR	Kalore
4113205	13205	Lapa	1	41	4110	41036	PR	Lapa
4113254	13254	Laranjal	1	41	4108	41028	PR	Laranjal
4113304	13304	Laranjeiras do Sul	1	41	4108	41029	PR	Laranjeiras do Sul
4113403	13403	Leópolis	1	41	4104	41015	PR	Leopolis
4113429	13429	Lidianópolis	1	41	4103	41013	PR	Lidianopolis
4113452	13452	Lindoeste	1	41	4106	41023	PR	Lindoeste
4113502	13502	Loanda	1	41	4101	41001	PR	Loanda
4113601	13601	Lobato	1	41	4103	41006	PR	Lobato
4113700	13700	Londrina	1	41	4103	41011	PR	Londrina
4113734	13734	Luiziana	1	41	4102	41005	PR	Luiziana
4113759	13759	Lunardelli	1	41	4103	41013	PR	Lunardelli
4113809	13809	Lupionópolis	1	41	4103	41006	PR	Lupionopolis
4113908	13908	Mallet	1	41	4109	41032	PR	Mallet
4114005	14005	Mamborê	1	41	4102	41005	PR	Mambore
4114104	14104	Mandaguaçu	1	41	4103	41006	PR	Mandaguacu
4114203	14203	Mandaguari	1	41	4103	41009	PR	Mandaguari
4114302	14302	Mandirituba	1	41	4110	41037	PR	Mandirituba
4114351	14351	Manfrinópolis	1	41	4107	41026	PR	Manfrinopolis
4114401	14401	Mangueirinha	1	41	4108	41030	PR	Mangueirinha
4114500	14500	Manoel Ribas	1	41	4103	41013	PR	Manoel Ribas
4114609	14609	Marechal Cândido Rondon	1	41	4106	41022	PR	Marechal Candido Rondon
4114708	14708	Maria Helena	1	41	4101	41002	PR	Maria Helena
4114807	14807	Marialva	1	41	4103	41009	PR	Marialva
4114906	14906	Marilândia do Sul	1	41	4103	41010	PR	Marilandia do Sul
4115002	15002	Marilena	1	41	4101	41001	PR	Marilena
4115101	15101	Mariluz	1	41	4101	41002	PR	Mariluz
4115200	15200	Maringá	1	41	4103	41009	PR	Maringa
4115309	15309	Mariópolis	1	41	4107	41027	PR	Mariopolis
4115358	15358	Maripá	1	41	4106	41022	PR	Maripa
4115408	15408	Marmeleiro	1	41	4107	41026	PR	Marmeleiro
4115457	15457	Marquinho	1	41	4108	41029	PR	Marquinho
4115507	15507	Marumbi	1	41	4103	41012	PR	Marumbi
4115606	15606	Matelândia	1	41	4106	41024	PR	Matelandia
4115705	15705	Matinhos	1	41	4110	41038	PR	Matinhos
4115739	15739	Mato Rico	1	41	4108	41028	PR	Mato Rico
4115754	15754	Mauá da Serra	1	41	4103	41010	PR	Maua da Serra
4115804	15804	Medianeira	1	41	4106	41024	PR	Medianeira
4115853	15853	Mercedes	1	41	4106	41022	PR	Mercedes
4115903	15903	Mirador	1	41	4101	41001	PR	Mirador
4116000	16000	Miraselva	1	41	4103	41007	PR	Miraselva
4116059	16059	Missal	1	41	4106	41024	PR	Missal
4116109	16109	Moreira Sales	1	41	4102	41004	PR	Moreira Sales
4116208	16208	Morretes	1	41	4110	41038	PR	Morretes
4116307	16307	Munhoz de Melo	1	41	4103	41006	PR	Munhoz de Melo
4116406	16406	Nossa Senhora das Graças	1	41	4103	41006	PR	Nossa Senhora das Gracas
4116505	16505	Nova Aliança do Ivaí	1	41	4101	41001	PR	Nova Alianca do Ivai
4116604	16604	Nova América da Colina	1	41	4104	41015	PR	Nova America da Colina
4116703	16703	Nova Aurora	1	41	4106	41023	PR	Nova Aurora
4116802	16802	Nova Cantu	1	41	4102	41004	PR	Nova Cantu
4116901	16901	Nova Esperança	1	41	4103	41006	PR	Nova Esperanca
4116950	16950	Nova Esperança do Sudoeste	1	41	4107	41026	PR	Nova Esperanca do Sudoeste
4117008	17008	Nova Fátima	1	41	4104	41015	PR	Nova Fatima
4117057	17057	Nova Laranjeiras	1	41	4108	41029	PR	Nova Laranjeiras
4117107	17107	Nova Londrina	1	41	4101	41001	PR	Nova Londrina
4117206	17206	Nova Olímpia	1	41	4101	41002	PR	Nova Olimpia
4117255	17255	Nova Prata do Iguaçu	1	41	4107	41026	PR	Nova Prata do Iguacu
4117214	17214	Nova Santa Bárbara	1	41	4104	41014	PR	Nova Santa Barbara
4117222	17222	Nova Santa Rosa	1	41	4106	41022	PR	Nova Santa Rosa
4117271	17271	Nova Tebas	1	41	4103	41013	PR	Nova Tebas
4117297	17297	Novo Itacolomi	1	41	4103	41010	PR	Novo Itacolomi
4117305	17305	Ortigueira	1	41	4105	41019	PR	Ortigueira
4117404	17404	Ourizona	1	41	4103	41008	PR	Ourizona
4117453	17453	Ouro Verde do Oeste	1	41	4106	41022	PR	Ouro Verde do Oeste
4117503	17503	Paiçandu	1	41	4103	41009	PR	Paicandu
4117602	17602	Palmas	1	41	4108	41030	PR	Palmas
4117701	17701	Palmeira	1	41	4105	41021	PR	Palmeira
4117800	17800	Palmital	1	41	4108	41028	PR	Palmital
4117909	17909	Palotina	1	41	4106	41022	PR	Palotina
4118006	18006	Paraíso do Norte	1	41	4101	41001	PR	Paraiso do Norte
4118105	18105	Paranacity	1	41	4101	41001	PR	Paranacity
4118204	18204	Paranaguá	1	41	4110	41038	PR	Paranagua
4118303	18303	Paranapoema	1	41	4101	41001	PR	Paranapoema
4118402	18402	Paranavaí	1	41	4101	41001	PR	Paranavai
4118451	18451	Pato Bragado	1	41	4106	41022	PR	Pato Bragado
4118501	18501	Pato Branco	1	41	4107	41027	PR	Pato Branco
4118600	18600	Paula Freitas	1	41	4109	41033	PR	Paula Freitas
4118709	18709	Paulo Frontin	1	41	4109	41033	PR	Paulo Frontin
4118808	18808	Peabiru	1	41	4102	41005	PR	Peabiru
4118857	18857	Perobal	1	41	4101	41002	PR	Perobal
4118907	18907	Pérola	1	41	4101	41002	PR	Perola
4119004	19004	Pérola d'Oeste	1	41	4107	41025	PR	Perola d'Oeste
4119103	19103	Piên	1	41	4110	41039	PR	Pien
4119152	19152	Pinhais	1	41	4110	41037	PR	Pinhais
4119251	19251	Pinhal de São Bento	1	41	4107	41026	PR	Pinhal de Sao Bento
4119202	19202	Pinhalão	1	41	4104	41017	PR	Pinhalao
4119301	19301	Pinhão	1	41	4108	41029	PR	Pinhao
4119400	19400	Piraí do Sul	1	41	4105	41020	PR	Pirai do Sul
4119509	19509	Piraquara	1	41	4110	41037	PR	Piraquara
4119608	19608	Pitanga	1	41	4108	41028	PR	Pitanga
4119657	19657	Pitangueiras	1	41	4103	41011	PR	Pitangueiras
4119707	19707	Planaltina do Paraná	1	41	4101	41001	PR	Planaltina do Parana
4119806	19806	Planalto	1	41	4107	41025	PR	Planalto
4119905	19905	Ponta Grossa	1	41	4105	41021	PR	Ponta Grossa
4119954	19954	Pontal do Paraná	1	41	4110	41038	PR	Pontal do Parana
4120002	20002	Porecatu	1	41	4103	41007	PR	Porecatu
4120101	20101	Porto Amazonas	1	41	4110	41036	PR	Porto Amazonas
4120150	20150	Porto Barreiro	1	41	4108	41029	PR	Porto Barreiro
4120200	20200	Porto Rico	1	41	4101	41001	PR	Porto Rico
4120309	20309	Porto Vitória	1	41	4109	41033	PR	Porto Vitoria
4120333	20333	Prado Ferreira	1	41	4103	41007	PR	Prado Ferreira
4120358	20358	Pranchita	1	41	4107	41025	PR	Pranchita
4120408	20408	Presidente Castelo Branco	1	41	4103	41006	PR	Presidente Castelo Branco
4120507	20507	Primeiro de Maio	1	41	4103	41007	PR	Primeiro de Maio
4120606	20606	Prudentópolis	1	41	4109	41031	PR	Prudentopolis
4120655	20655	Quarto Centenário	1	41	4102	41004	PR	Quarto Centenario
4120705	20705	Quatiguá	1	41	4104	41018	PR	Quatigua
4120804	20804	Quatro Barras	1	41	4110	41037	PR	Quatro Barras
4120853	20853	Quatro Pontes	1	41	4106	41022	PR	Quatro Pontes
4120903	20903	Quedas do Iguaçu	1	41	4108	41029	PR	Quedas do Iguacu
4121000	21000	Querência do Norte	1	41	4101	41001	PR	Querencia do Norte
4121109	21109	Quinta do Sol	1	41	4102	41005	PR	Quinta do Sol
4121208	21208	Quitandinha	1	41	4110	41039	PR	Quitandinha
4121257	21257	Ramilândia	1	41	4106	41024	PR	Ramilandia
4121307	21307	Rancho Alegre	1	41	4104	41014	PR	Rancho Alegre
4121356	21356	Rancho Alegre D'Oeste	1	41	4102	41004	PR	Rancho Alegre D'Oeste
4121406	21406	Realeza	1	41	4107	41025	PR	Realeza
4121505	21505	Rebouças	1	41	4109	41032	PR	Reboucas
4121604	21604	Renascença	1	41	4107	41026	PR	Renascenca
4121703	21703	Reserva	1	41	4105	41019	PR	Reserva
4121752	21752	Reserva do Iguaçu	1	41	4108	41029	PR	Reserva do Iguacu
4121802	21802	Ribeirão Claro	1	41	4104	41016	PR	Ribeirao Claro
4121901	21901	Ribeirão do Pinhal	1	41	4104	41015	PR	Ribeirao do Pinhal
4122008	22008	Rio Azul	1	41	4109	41032	PR	Rio Azul
4122107	22107	Rio Bom	1	41	4103	41012	PR	Rio Bom
4122156	22156	Rio Bonito do Iguaçu	1	41	4108	41029	PR	Rio Bonito do Iguacu
4122172	22172	Rio Branco do Ivaí	1	41	4103	41013	PR	Rio Branco do Ivai
4122206	22206	Rio Branco do Sul	1	41	4110	41037	PR	Rio Branco do Sul
4122305	22305	Rio Negro	1	41	4110	41039	PR	Rio Negro
4122404	22404	Rolândia	1	41	4103	41011	PR	Rolandia
4122503	22503	Roncador	1	41	4102	41005	PR	Roncador
4122602	22602	Rondon	1	41	4101	41003	PR	Rondon
4122651	22651	Rosário do Ivaí	1	41	4103	41013	PR	Rosario do Ivai
4122701	22701	Sabáudia	1	41	4103	41010	PR	Sabaudia
4122800	22800	Salgado Filho	1	41	4107	41026	PR	Salgado Filho
4122909	22909	Salto do Itararé	1	41	4104	41018	PR	Salto do Itarare
4123006	23006	Salto do Lontra	1	41	4107	41026	PR	Salto do Lontra
4123105	23105	Santa Amélia	1	41	4104	41015	PR	Santa Amelia
4123204	23204	Santa Cecília do Pavão	1	41	4104	41014	PR	Santa Cecilia do Pavao
4123303	23303	Santa Cruz de Monte Castelo	1	41	4101	41001	PR	Santa Cruz de Monte Castelo
4123402	23402	Santa Fé	1	41	4103	41006	PR	Santa Fe
4123501	23501	Santa Helena	1	41	4106	41022	PR	Santa Helena
4123600	23600	Santa Inês	1	41	4103	41006	PR	Santa Ines
4123709	23709	Santa Isabel do Ivaí	1	41	4101	41001	PR	Santa Isabel do Ivai
4123808	23808	Santa Izabel do Oeste	1	41	4107	41025	PR	Santa Izabel do Oeste
4123824	23824	Santa Lúcia	1	41	4106	41023	PR	Santa Lucia
4123857	23857	Santa Maria do Oeste	1	41	4108	41028	PR	Santa Maria do Oeste
4123907	23907	Santa Mariana	1	41	4104	41015	PR	Santa Mariana
4123956	23956	Santa Mônica	1	41	4101	41001	PR	Santa Monica
4124020	24020	Santa Tereza do Oeste	1	41	4106	41023	PR	Santa Tereza do Oeste
4124053	24053	Santa Terezinha de Itaipu	1	41	4106	41024	PR	Santa Terezinha de Itaipu
4124004	24004	Santana do Itararé	1	41	4104	41018	PR	Santana do Itarare
4124103	24103	Santo Antônio da Platina	1	41	4104	41016	PR	Santo Antonio da Platina
4124202	24202	Santo Antônio do Caiuá	1	41	4101	41001	PR	Santo Antonio do Caiua
4124301	24301	Santo Antônio do Paraíso	1	41	4104	41015	PR	Santo Antonio do Paraiso
4124400	24400	Santo Antônio do Sudoeste	1	41	4107	41026	PR	Santo Antonio do Sudoeste
4124509	24509	Santo Inácio	1	41	4103	41006	PR	Santo Inacio
4124608	24608	São Carlos do Ivaí	1	41	4101	41001	PR	Sao Carlos do Ivai
4124707	24707	São Jerônimo da Serra	1	41	4104	41014	PR	Sao Jeronimo da Serra
4124806	24806	São João	1	41	4107	41027	PR	Sao Joao
4124905	24905	São João do Caiuá	1	41	4101	41001	PR	Sao Joao do Caiua
4125001	25001	São João do Ivaí	1	41	4103	41013	PR	Sao Joao do Ivai
4125100	25100	São João do Triunfo	1	41	4109	41034	PR	Sao Joao do Triunfo
4125308	25308	São Jorge do Ivaí	1	41	4103	41008	PR	Sao Jorge do Ivai
4125357	25357	São Jorge do Patrocínio	1	41	4101	41002	PR	Sao Jorge do Patrocinio
4125209	25209	São Jorge d'Oeste	1	41	4107	41026	PR	Sao Jorge d'Oeste
4125407	25407	São José da Boa Vista	1	41	4104	41018	PR	Sao Jose da Boa Vista
4125456	25456	São José das Palmeiras	1	41	4106	41022	PR	Sao Jose das Palmeiras
4125506	25506	São José dos Pinhais	1	41	4110	41037	PR	Sao Jose dos Pinhais
4125555	25555	São Manoel do Paraná	1	41	4101	41003	PR	Sao Manoel do Parana
4125605	25605	São Mateus do Sul	1	41	4109	41034	PR	Sao Mateus do Sul
4125704	25704	São Miguel do Iguaçu	1	41	4106	41024	PR	Sao Miguel do Iguacu
4125753	25753	São Pedro do Iguaçu	1	41	4106	41022	PR	Sao Pedro do Iguacu
4125803	25803	São Pedro do Ivaí	1	41	4103	41013	PR	Sao Pedro do Ivai
4125902	25902	São Pedro do Paraná	1	41	4101	41001	PR	Sao Pedro do Parana
4126009	26009	São Sebastião da Amoreira	1	41	4104	41014	PR	Sao Sebastiao da Amoreira
4126108	26108	São Tomé	1	41	4101	41003	PR	Sao Tome
4126207	26207	Sapopema	1	41	4104	41017	PR	Sapopema
4126256	26256	Sarandi	1	41	4103	41009	PR	Sarandi
4126272	26272	Saudade do Iguaçu	1	41	4107	41027	PR	Saudade do Iguacu
4126306	26306	Sengés	1	41	4105	41020	PR	Senges
4126355	26355	Serranópolis do Iguaçu	1	41	4106	41024	PR	Serranopolis do Iguacu
4126405	26405	Sertaneja	1	41	4104	41015	PR	Sertaneja
4126504	26504	Sertanópolis	1	41	4103	41007	PR	Sertanopolis
4126603	26603	Siqueira Campos	1	41	4104	41018	PR	Siqueira Campos
4126652	26652	Sulina	1	41	4107	41027	PR	Sulina
4126678	26678	Tamarana	1	41	4103	41011	PR	Tamarana
4126702	26702	Tamboara	1	41	4101	41001	PR	Tamboara
1100015	15	Alta Floresta D'Oeste	1	11	1102	11006	RO	Alta Floresta D'Oeste
1100379	379	Alto Alegre dos Parecis	1	11	1102	11006	RO	Alto Alegre dos Parecis
4126801	26801	Tapejara	1	41	4101	41003	PR	Tapejara
4126900	26900	Tapira	1	41	4101	41002	PR	Tapira
4127007	27007	Teixeira Soares	1	41	4109	41031	PR	Teixeira Soares
4127106	27106	Telêmaco Borba	1	41	4105	41019	PR	Telemaco Borba
4127205	27205	Terra Boa	1	41	4102	41005	PR	Terra Boa
4127304	27304	Terra Rica	1	41	4101	41001	PR	Terra Rica
4127403	27403	Terra Roxa	1	41	4106	41022	PR	Terra Roxa
4127502	27502	Tibagi	1	41	4105	41019	PR	Tibagi
4127601	27601	Tijucas do Sul	1	41	4110	41039	PR	Tijucas do Sul
4127700	27700	Toledo	1	41	4106	41022	PR	Toledo
4127809	27809	Tomazina	1	41	4104	41018	PR	Tomazina
4127858	27858	Três Barras do Paraná	1	41	4106	41023	PR	Tres Barras do Parana
4127882	27882	Tunas do Paraná	1	41	4110	41037	PR	Tunas do Parana
4127908	27908	Tuneiras do Oeste	1	41	4101	41003	PR	Tuneiras do Oeste
4127957	27957	Tupãssi	1	41	4106	41022	PR	Tupassi
4127965	27965	Turvo	1	41	4108	41029	PR	Turvo
4128005	28005	Ubiratã	1	41	4102	41004	PR	Ubirata
4128104	28104	Umuarama	1	41	4101	41002	PR	Umuarama
4128203	28203	União da Vitória	1	41	4109	41033	PR	Uniao da Vitoria
4128302	28302	Uniflor	1	41	4103	41006	PR	Uniflor
4128401	28401	Uraí	1	41	4104	41014	PR	Urai
4128534	28534	Ventania	1	41	4105	41019	PR	Ventania
4128559	28559	Vera Cruz do Oeste	1	41	4106	41024	PR	Vera Cruz do Oeste
4128609	28609	Verê	1	41	4107	41026	PR	Vere
4128658	28658	Virmond	1	41	4108	41029	PR	Virmond
4128708	28708	Vitorino	1	41	4107	41027	PR	Vitorino
4128500	28500	Wenceslau Braz	1	41	4104	41018	PR	Wenceslau Braz
4128807	28807	Xambrê	1	41	4101	41002	PR	Xambre
4200051	51	Abdon Batista	1	42	4203	42009	SC	Abdon Batista
4200101	101	Abelardo Luz	1	42	4201	42003	SC	Abelardo Luz
4200200	200	Agrolândia	1	42	4204	42014	SC	Agrolandia
4200309	309	Agronômica	1	42	4204	42011	SC	Agronomica
4200408	408	Água Doce	1	42	4201	42004	SC	Agua Doce
4200507	507	Águas de Chapecó	1	42	4201	42002	SC	Aguas de Chapeco
4200556	556	Águas Frias	1	42	4201	42002	SC	Aguas Frias
4200606	606	Águas Mornas	1	42	4205	42017	SC	Aguas Mornas
4200705	705	Alfredo Wagner	1	42	4205	42017	SC	Alfredo Wagner
4200754	754	Alto Bela Vista	1	42	4201	42005	SC	Alto Bela Vista
4200804	804	Anchieta	1	42	4201	42001	SC	Anchieta
4200903	903	Angelina	1	42	4205	42015	SC	Angelina
4201000	1000	Anita Garibaldi	1	42	4203	42010	SC	Anita Garibaldi
4201109	1109	Anitápolis	1	42	4205	42017	SC	Anitapolis
4201208	1208	Antônio Carlos	1	42	4205	42016	SC	Antonio Carlos
4201257	1257	Apiúna	1	42	4204	42012	SC	Apiuna
4201273	1273	Arabutã	1	42	4201	42005	SC	Arabuta
4201307	1307	Araquari	1	42	4202	42008	SC	Araquari
4201406	1406	Araranguá	1	42	4206	42020	SC	Ararangua
4201505	1505	Armazém	1	42	4206	42018	SC	Armazem
4201604	1604	Arroio Trinta	1	42	4201	42004	SC	Arroio Trinta
4201653	1653	Arvoredo	1	42	4201	42005	SC	Arvoredo
4201703	1703	Ascurra	1	42	4204	42012	SC	Ascurra
4201802	1802	Atalanta	1	42	4204	42014	SC	Atalanta
4201901	1901	Aurora	1	42	4204	42011	SC	Aurora
4201950	1950	Balneário Arroio do Silva	1	42	4206	42020	SC	Balneario Arroio do Silva
4202057	2057	Balneário Barra do Sul	1	42	4202	42008	SC	Balneario Barra do Sul
4202008	2008	Balneário Camboriú	1	42	4204	42013	SC	Balneario Camboriu
4202073	2073	Balneário Gaivota	1	42	4206	42020	SC	Balneario Gaivota
4212809	12809	Balneário Piçarras	1	42	4204	42013	SC	Balneario Picarras
4220000	20000	Balneário Rincão	1	42	4206	42019	SC	Balneario Rincao
4202081	2081	Bandeirante	1	42	4201	42001	SC	Bandeirante
4202099	2099	Barra Bonita	1	42	4201	42001	SC	Barra Bonita
4202107	2107	Barra Velha	1	42	4204	42013	SC	Barra Velha
4202131	2131	Bela Vista do Toldo	1	42	4202	42006	SC	Bela Vista do Toldo
4202156	2156	Belmonte	1	42	4201	42001	SC	Belmonte
4202206	2206	Benedito Novo	1	42	4204	42012	SC	Benedito Novo
4202305	2305	Biguaçu	1	42	4205	42016	SC	Biguacu
4202404	2404	Blumenau	1	42	4204	42012	SC	Blumenau
4202438	2438	Bocaina do Sul	1	42	4203	42010	SC	Bocaina do Sul
4202503	2503	Bom Jardim da Serra	1	42	4203	42010	SC	Bom Jardim da Serra
4202537	2537	Bom Jesus	1	42	4201	42003	SC	Bom Jesus
4202578	2578	Bom Jesus do Oeste	1	42	4201	42002	SC	Bom Jesus do Oeste
4202602	2602	Bom Retiro	1	42	4203	42010	SC	Bom Retiro
4202453	2453	Bombinhas	1	42	4204	42013	SC	Bombinhas
4202701	2701	Botuverá	1	42	4204	42012	SC	Botuvera
4202800	2800	Braço do Norte	1	42	4206	42018	SC	Braco do Norte
4202859	2859	Braço do Trombudo	1	42	4204	42011	SC	Braco do Trombudo
4202875	2875	Brunópolis	1	42	4203	42009	SC	Brunopolis
4202909	2909	Brusque	1	42	4204	42012	SC	Brusque
4203006	3006	Caçador	1	42	4201	42004	SC	Cacador
4203105	3105	Caibi	1	42	4201	42002	SC	Caibi
4203154	3154	Calmon	1	42	4201	42004	SC	Calmon
4203204	3204	Camboriú	1	42	4204	42013	SC	Camboriu
4203303	3303	Campo Alegre	1	42	4202	42007	SC	Campo Alegre
4203402	3402	Campo Belo do Sul	1	42	4203	42010	SC	Campo Belo do Sul
4203501	3501	Campo Erê	1	42	4201	42002	SC	Campo Ere
4203600	3600	Campos Novos	1	42	4203	42009	SC	Campos Novos
4203709	3709	Canelinha	1	42	4205	42015	SC	Canelinha
4203808	3808	Canoinhas	1	42	4202	42006	SC	Canoinhas
4203253	3253	Capão Alto	1	42	4203	42010	SC	Capao Alto
4203907	3907	Capinzal	1	42	4201	42004	SC	Capinzal
2401305	1305	Campo Grande	1	24	2401	24003	RN	Campo Grande
2513968	13968	São Domingos	1	25	2501	25003	PB	Sao Domingos
1706001	6001	Couto de Magalhães	1	17	1701	17003	TO	Couto Magalhaes
2405306	5306	Boa Saúde	1	24	2403	24015	RN	Januario Cicco
4203956	3956	Capivari de Baixo	1	42	4206	42018	SC	Capivari de Baixo
4204004	4004	Catanduvas	1	42	4201	42004	SC	Catanduvas
4204103	4103	Caxambu do Sul	1	42	4201	42002	SC	Caxambu do Sul
4204152	4152	Celso Ramos	1	42	4203	42010	SC	Celso Ramos
4204178	4178	Cerro Negro	1	42	4203	42010	SC	Cerro Negro
4204194	4194	Chapadão do Lageado	1	42	4204	42014	SC	Chapadao do Lageado
4204202	4202	Chapecó	1	42	4201	42002	SC	Chapeco
4204251	4251	Cocal do Sul	1	42	4206	42019	SC	Cocal do Sul
4204301	4301	Concórdia	1	42	4201	42005	SC	Concordia
4204350	4350	Cordilheira Alta	1	42	4201	42002	SC	Cordilheira Alta
4204400	4400	Coronel Freitas	1	42	4201	42002	SC	Coronel Freitas
4204459	4459	Coronel Martins	1	42	4201	42003	SC	Coronel Martins
4204558	4558	Correia Pinto	1	42	4203	42010	SC	Correia Pinto
4204509	4509	Corupá	1	42	4202	42008	SC	Corupa
4204608	4608	Criciúma	1	42	4206	42019	SC	Criciuma
4204707	4707	Cunha Porã	1	42	4201	42002	SC	Cunha Pora
4204756	4756	Cunhataí	1	42	4201	42002	SC	Cunhatai
4204806	4806	Curitibanos	1	42	4203	42009	SC	Curitibanos
4204905	4905	Descanso	1	42	4201	42001	SC	Descanso
4205001	5001	Dionísio Cerqueira	1	42	4201	42001	SC	Dionisio Cerqueira
4205100	5100	Dona Emma	1	42	4204	42011	SC	Dona Emma
4205159	5159	Doutor Pedrinho	1	42	4204	42012	SC	Doutor Pedrinho
4205175	5175	Entre Rios	1	42	4201	42003	SC	Entre Rios
4205191	5191	Ermo	1	42	4206	42020	SC	Ermo
4205209	5209	Erval Velho	1	42	4201	42004	SC	Erval Velho
4205308	5308	Faxinal dos Guedes	1	42	4201	42003	SC	Faxinal dos Guedes
4205357	5357	Flor do Sertão	1	42	4201	42002	SC	Flor do Sertao
4205407	5407	Florianópolis	1	42	4205	42016	SC	Florianopolis
4205431	5431	Formosa do Sul	1	42	4201	42002	SC	Formosa do Sul
4205456	5456	Forquilhinha	1	42	4206	42019	SC	Forquilhinha
4205506	5506	Fraiburgo	1	42	4201	42004	SC	Fraiburgo
4205555	5555	Frei Rogério	1	42	4203	42009	SC	Frei Rogerio
4205605	5605	Galvão	1	42	4201	42003	SC	Galvao
4205704	5704	Garopaba	1	42	4206	42018	SC	Garopaba
4205803	5803	Garuva	1	42	4202	42008	SC	Garuva
4205902	5902	Gaspar	1	42	4204	42012	SC	Gaspar
4206009	6009	Governador Celso Ramos	1	42	4205	42016	SC	Governador Celso Ramos
4206108	6108	Grão Pará	1	42	4206	42018	SC	Grao Para
4206207	6207	Gravatal	1	42	4206	42018	SC	Gravatal
4206306	6306	Guabiruba	1	42	4204	42012	SC	Guabiruba
4206405	6405	Guaraciaba	1	42	4201	42001	SC	Guaraciaba
4206504	6504	Guaramirim	1	42	4202	42008	SC	Guaramirim
4206603	6603	Guarujá do Sul	1	42	4201	42001	SC	Guaruja do Sul
4206652	6652	Guatambú	1	42	4201	42002	SC	Guatambu
4206702	6702	Herval d'Oeste	1	42	4201	42004	SC	Herval d'Oeste
4206751	6751	Ibiam	1	42	4201	42004	SC	Ibiam
4206801	6801	Ibicaré	1	42	4201	42004	SC	Ibicare
4206900	6900	Ibirama	1	42	4204	42011	SC	Ibirama
4207007	7007	Içara	1	42	4206	42019	SC	Icara
4207106	7106	Ilhota	1	42	4204	42013	SC	Ilhota
4207205	7205	Imaruí	1	42	4206	42018	SC	Imarui
4207304	7304	Imbituba	1	42	4206	42018	SC	Imbituba
4207403	7403	Imbuia	1	42	4204	42014	SC	Imbuia
4207502	7502	Indaial	1	42	4204	42012	SC	Indaial
4207577	7577	Iomerê	1	42	4201	42004	SC	Iomere
4207601	7601	Ipira	1	42	4201	42005	SC	Ipira
4207650	7650	Iporã do Oeste	1	42	4201	42001	SC	Ipora do Oeste
4207684	7684	Ipuaçu	1	42	4201	42003	SC	Ipuacu
4207700	7700	Ipumirim	1	42	4201	42005	SC	Ipumirim
4207759	7759	Iraceminha	1	42	4201	42002	SC	Iraceminha
4207809	7809	Irani	1	42	4201	42005	SC	Irani
4207858	7858	Irati	1	42	4201	42002	SC	Irati
4207908	7908	Irineópolis	1	42	4202	42006	SC	Irineopolis
4208005	8005	Itá	1	42	4201	42005	SC	Ita
4208104	8104	Itaiópolis	1	42	4202	42006	SC	Itaiopolis
4208203	8203	Itajaí	1	42	4204	42013	SC	Itajai
4208302	8302	Itapema	1	42	4204	42013	SC	Itapema
4208401	8401	Itapiranga	1	42	4201	42001	SC	Itapiranga
4208450	8450	Itapoá	1	42	4202	42008	SC	Itapoa
4208500	8500	Ituporanga	1	42	4204	42014	SC	Ituporanga
4208609	8609	Jaborá	1	42	4201	42004	SC	Jabora
4208708	8708	Jacinto Machado	1	42	4206	42020	SC	Jacinto Machado
4208807	8807	Jaguaruna	1	42	4206	42018	SC	Jaguaruna
4208906	8906	Jaraguá do Sul	1	42	4202	42008	SC	Jaragua do Sul
4208955	8955	Jardinópolis	1	42	4201	42002	SC	Jardinopolis
4209003	9003	Joaçaba	1	42	4201	42004	SC	Joacaba
4209102	9102	Joinville	1	42	4202	42008	SC	Joinville
4209151	9151	José Boiteux	1	42	4204	42011	SC	Jose Boiteux
4209177	9177	Jupiá	1	42	4201	42003	SC	Jupia
4209201	9201	Lacerdópolis	1	42	4201	42004	SC	Lacerdopolis
4209300	9300	Lages	1	42	4203	42010	SC	Lages
4209409	9409	Laguna	1	42	4206	42018	SC	Laguna
4209458	9458	Lajeado Grande	1	42	4201	42003	SC	Lajeado Grande
4209508	9508	Laurentino	1	42	4204	42011	SC	Laurentino
4209607	9607	Lauro Muller	1	42	4206	42019	SC	Lauro Muller
4209706	9706	Lebon Régis	1	42	4201	42004	SC	Lebon Regis
4209805	9805	Leoberto Leal	1	42	4205	42015	SC	Leoberto Leal
4209854	9854	Lindóia do Sul	1	42	4201	42005	SC	Lindoia do Sul
4209904	9904	Lontras	1	42	4204	42011	SC	Lontras
4210001	10001	Luiz Alves	1	42	4204	42012	SC	Luiz Alves
4210035	10035	Luzerna	1	42	4201	42004	SC	Luzerna
4210050	10050	Macieira	1	42	4201	42004	SC	Macieira
4210100	10100	Mafra	1	42	4202	42006	SC	Mafra
4210209	10209	Major Gercino	1	42	4205	42015	SC	Major Gercino
4210308	10308	Major Vieira	1	42	4202	42006	SC	Major Vieira
4210407	10407	Maracajá	1	42	4206	42020	SC	Maracaja
4210506	10506	Maravilha	1	42	4201	42002	SC	Maravilha
4210555	10555	Marema	1	42	4201	42003	SC	Marema
4210605	10605	Massaranduba	1	42	4202	42008	SC	Massaranduba
4210704	10704	Matos Costa	1	42	4201	42004	SC	Matos Costa
4210803	10803	Meleiro	1	42	4206	42020	SC	Meleiro
4210852	10852	Mirim Doce	1	42	4204	42011	SC	Mirim Doce
4210902	10902	Modelo	1	42	4201	42002	SC	Modelo
4211009	11009	Mondaí	1	42	4201	42001	SC	Mondai
4211058	11058	Monte Carlo	1	42	4203	42009	SC	Monte Carlo
4211108	11108	Monte Castelo	1	42	4202	42006	SC	Monte Castelo
4211207	11207	Morro da Fumaça	1	42	4206	42019	SC	Morro da Fumaca
4211256	11256	Morro Grande	1	42	4206	42020	SC	Morro Grande
4211306	11306	Navegantes	1	42	4204	42013	SC	Navegantes
4211405	11405	Nova Erechim	1	42	4201	42002	SC	Nova Erechim
4211454	11454	Nova Itaberaba	1	42	4201	42002	SC	Nova Itaberaba
4211504	11504	Nova Trento	1	42	4205	42015	SC	Nova Trento
4211603	11603	Nova Veneza	1	42	4206	42019	SC	Nova Veneza
4211652	11652	Novo Horizonte	1	42	4201	42002	SC	Novo Horizonte
4211702	11702	Orleans	1	42	4206	42018	SC	Orleans
4211751	11751	Otacílio Costa	1	42	4203	42010	SC	Otacilio Costa
4211801	11801	Ouro	1	42	4201	42004	SC	Ouro
4211850	11850	Ouro Verde	1	42	4201	42003	SC	Ouro Verde
4211876	11876	Paial	1	42	4201	42005	SC	Paial
4211892	11892	Painel	1	42	4203	42010	SC	Painel
4211900	11900	Palhoça	1	42	4205	42016	SC	Palhoca
4212007	12007	Palma Sola	1	42	4201	42001	SC	Palma Sola
4212056	12056	Palmeira	1	42	4203	42010	SC	Palmeira
4212106	12106	Palmitos	1	42	4201	42002	SC	Palmitos
4212205	12205	Papanduva	1	42	4202	42006	SC	Papanduva
4212239	12239	Paraíso	1	42	4201	42001	SC	Paraiso
4212254	12254	Passo de Torres	1	42	4206	42020	SC	Passo de Torres
4212270	12270	Passos Maia	1	42	4201	42003	SC	Passos Maia
4212304	12304	Paulo Lopes	1	42	4205	42016	SC	Paulo Lopes
4212403	12403	Pedras Grandes	1	42	4206	42018	SC	Pedras Grandes
4212502	12502	Penha	1	42	4204	42013	SC	Penha
4212601	12601	Peritiba	1	42	4201	42005	SC	Peritiba
4212650	12650	Pescaria Brava	1	42	4206	42018	SC	Pescaria Brava
4212700	12700	Petrolândia	1	42	4204	42014	SC	Petrolandia
4212908	12908	Pinhalzinho	1	42	4201	42002	SC	Pinhalzinho
4213005	13005	Pinheiro Preto	1	42	4201	42004	SC	Pinheiro Preto
4213104	13104	Piratuba	1	42	4201	42005	SC	Piratuba
4213153	13153	Planalto Alegre	1	42	4201	42002	SC	Planalto Alegre
4213203	13203	Pomerode	1	42	4204	42012	SC	Pomerode
4213302	13302	Ponte Alta	1	42	4203	42009	SC	Ponte Alta
4213351	13351	Ponte Alta do Norte	1	42	4203	42009	SC	Ponte Alta do Norte
4213401	13401	Ponte Serrada	1	42	4201	42003	SC	Ponte Serrada
4213500	13500	Porto Belo	1	42	4204	42013	SC	Porto Belo
4213609	13609	Porto União	1	42	4202	42006	SC	Porto Uniao
4213708	13708	Pouso Redondo	1	42	4204	42011	SC	Pouso Redondo
4213807	13807	Praia Grande	1	42	4206	42020	SC	Praia Grande
4213906	13906	Presidente Castello Branco	1	42	4201	42005	SC	Presidente Castello Branco
4214003	14003	Presidente Getúlio	1	42	4204	42011	SC	Presidente Getulio
4214102	14102	Presidente Nereu	1	42	4204	42011	SC	Presidente Nereu
4214151	14151	Princesa	1	42	4201	42001	SC	Princesa
4214201	14201	Quilombo	1	42	4201	42002	SC	Quilombo
4214300	14300	Rancho Queimado	1	42	4205	42017	SC	Rancho Queimado
4214409	14409	Rio das Antas	1	42	4201	42004	SC	Rio das Antas
4214508	14508	Rio do Campo	1	42	4204	42011	SC	Rio do Campo
4214607	14607	Rio do Oeste	1	42	4204	42011	SC	Rio do Oeste
4214805	14805	Rio do Sul	1	42	4204	42011	SC	Rio do Sul
4214706	14706	Rio dos Cedros	1	42	4204	42012	SC	Rio dos Cedros
4214904	14904	Rio Fortuna	1	42	4206	42018	SC	Rio Fortuna
4215000	15000	Rio Negrinho	1	42	4202	42007	SC	Rio Negrinho
4215059	15059	Rio Rufino	1	42	4203	42010	SC	Rio Rufino
4215075	15075	Riqueza	1	42	4201	42001	SC	Riqueza
4215109	15109	Rodeio	1	42	4204	42012	SC	Rodeio
4215208	15208	Romelândia	1	42	4201	42001	SC	Romelandia
4215307	15307	Salete	1	42	4204	42011	SC	Salete
4215356	15356	Saltinho	1	42	4201	42002	SC	Saltinho
4215406	15406	Salto Veloso	1	42	4201	42004	SC	Salto Veloso
4215455	15455	Sangão	1	42	4206	42018	SC	Sangao
4215505	15505	Santa Cecília	1	42	4203	42009	SC	Santa Cecilia
4215554	15554	Santa Helena	1	42	4201	42001	SC	Santa Helena
4215604	15604	Santa Rosa de Lima	1	42	4206	42018	SC	Santa Rosa de Lima
4215653	15653	Santa Rosa do Sul	1	42	4206	42020	SC	Santa Rosa do Sul
4215679	15679	Santa Terezinha	1	42	4202	42006	SC	Santa Terezinha
4215687	15687	Santa Terezinha do Progresso	1	42	4201	42002	SC	Santa Terezinha do Progresso
4215695	15695	Santiago do Sul	1	42	4201	42002	SC	Santiago do Sul
4215703	15703	Santo Amaro da Imperatriz	1	42	4205	42016	SC	Santo Amaro da Imperatriz
4215802	15802	São Bento do Sul	1	42	4202	42007	SC	Sao Bento do Sul
4215752	15752	São Bernardino	1	42	4201	42002	SC	Sao Bernardino
4215901	15901	São Bonifácio	1	42	4205	42017	SC	Sao Bonifacio
4216008	16008	São Carlos	1	42	4201	42002	SC	Sao Carlos
4216057	16057	São Cristovão do Sul	1	42	4203	42009	SC	Sao Cristovao do Sul
4216107	16107	São Domingos	1	42	4201	42003	SC	Sao Domingos
4216206	16206	São Francisco do Sul	1	42	4202	42008	SC	Sao Francisco do Sul
4216305	16305	São João Batista	1	42	4205	42015	SC	Sao Joao Batista
4216354	16354	São João do Itaperiú	1	42	4204	42013	SC	Sao Joao do Itaperiu
4216255	16255	São João do Oeste	1	42	4201	42001	SC	Sao Joao do Oeste
4216404	16404	São João do Sul	1	42	4206	42020	SC	Sao Joao do Sul
4216503	16503	São Joaquim	1	42	4203	42010	SC	Sao Joaquim
4216602	16602	São José	1	42	4205	42016	SC	Sao Jose
4216701	16701	São José do Cedro	1	42	4201	42001	SC	Sao Jose do Cedro
4216800	16800	São José do Cerrito	1	42	4203	42010	SC	Sao Jose do Cerrito
4216909	16909	São Lourenço do Oeste	1	42	4201	42002	SC	Sao Lourenco do Oeste
4217006	17006	São Ludgero	1	42	4206	42018	SC	Sao Ludgero
4217105	17105	São Martinho	1	42	4206	42018	SC	Sao Martinho
4217154	17154	São Miguel da Boa Vista	1	42	4201	42002	SC	Sao Miguel da Boa Vista
4217204	17204	São Miguel do Oeste	1	42	4201	42001	SC	Sao Miguel do Oeste
4217253	17253	São Pedro de Alcântara	1	42	4205	42016	SC	Sao Pedro de Alcantara
4217303	17303	Saudades	1	42	4201	42002	SC	Saudades
4217402	17402	Schroeder	1	42	4202	42008	SC	Schroeder
4217501	17501	Seara	1	42	4201	42005	SC	Seara
4217550	17550	Serra Alta	1	42	4201	42002	SC	Serra Alta
4217600	17600	Siderópolis	1	42	4206	42019	SC	Sideropolis
4217709	17709	Sombrio	1	42	4206	42020	SC	Sombrio
4217758	17758	Sul Brasil	1	42	4201	42002	SC	Sul Brasil
4217808	17808	Taió	1	42	4204	42011	SC	Taio
4217907	17907	Tangará	1	42	4201	42004	SC	Tangara
4217956	17956	Tigrinhos	1	42	4201	42002	SC	Tigrinhos
4218004	18004	Tijucas	1	42	4205	42015	SC	Tijucas
4218103	18103	Timbé do Sul	1	42	4206	42020	SC	Timbe do Sul
4218202	18202	Timbó	1	42	4204	42012	SC	Timbo
4218251	18251	Timbó Grande	1	42	4202	42006	SC	Timbo Grande
4218301	18301	Três Barras	1	42	4202	42006	SC	Tres Barras
4218350	18350	Treviso	1	42	4206	42019	SC	Treviso
4218400	18400	Treze de Maio	1	42	4206	42018	SC	Treze de Maio
4218509	18509	Treze Tílias	1	42	4201	42004	SC	Treze Tilias
4218608	18608	Trombudo Central	1	42	4204	42011	SC	Trombudo Central
4218707	18707	Tubarão	1	42	4206	42018	SC	Tubarao
4218756	18756	Tunápolis	1	42	4201	42001	SC	Tunapolis
4218806	18806	Turvo	1	42	4206	42020	SC	Turvo
4218855	18855	União do Oeste	1	42	4201	42002	SC	Uniao do Oeste
4218905	18905	Urubici	1	42	4203	42010	SC	Urubici
4218954	18954	Urupema	1	42	4203	42010	SC	Urupema
4219002	19002	Urussanga	1	42	4206	42019	SC	Urussanga
4219101	19101	Vargeão	1	42	4201	42003	SC	Vargeao
4219150	19150	Vargem	1	42	4203	42009	SC	Vargem
4219176	19176	Vargem Bonita	1	42	4201	42004	SC	Vargem Bonita
4219200	19200	Vidal Ramos	1	42	4204	42014	SC	Vidal Ramos
4219309	19309	Videira	1	42	4201	42004	SC	Videira
4219358	19358	Vitor Meireles	1	42	4204	42011	SC	Vitor Meireles
4219408	19408	Witmarsum	1	42	4204	42011	SC	Witmarsum
4219507	19507	Xanxerê	1	42	4201	42003	SC	Xanxere
4219606	19606	Xavantina	1	42	4201	42005	SC	Xavantina
4219705	19705	Xaxim	1	42	4201	42003	SC	Xaxim
4219853	19853	Zortéa	1	42	4203	42009	SC	Zortea
4300034	34	Aceguá	1	43	4306	43031	RS	Acegua
4300059	59	Água Santa	1	43	4301	43010	RS	Agua Santa
4300109	109	Agudo	1	43	4303	43019	RS	Agudo
4300208	208	Ajuricaba	1	43	4301	43008	RS	Ajuricaba
4300307	307	Alecrim	1	43	4301	43001	RS	Alecrim
4300406	406	Alegrete	1	43	4306	43029	RS	Alegrete
4300455	455	Alegria	1	43	4301	43008	RS	Alegria
4300471	471	Almirante Tamandaré do Sul	1	43	4301	43009	RS	Almirante Tamandare do Sul
4300505	505	Alpestre	1	43	4301	43003	RS	Alpestre
4300554	554	Alto Alegre	1	43	4301	43011	RS	Alto Alegre
4300570	570	Alto Feliz	1	43	4305	43023	RS	Alto Feliz
4300604	604	Alvorada	1	43	4305	43026	RS	Alvorada
4300638	638	Amaral Ferrador	1	43	4307	43032	RS	Amaral Ferrador
4300646	646	Ametista do Sul	1	43	4301	43003	RS	Ametista do Sul
4300661	661	André da Rocha	1	43	4302	43014	RS	Andre da Rocha
4300703	703	Anta Gorda	1	43	4302	43014	RS	Anta Gorda
4300802	802	Antônio Prado	1	43	4302	43016	RS	Antonio Prado
4300851	851	Arambaré	1	43	4305	43028	RS	Arambare
4300877	877	Araricá	1	43	4305	43026	RS	Ararica
4300901	901	Aratiba	1	43	4301	43004	RS	Aratiba
4301008	1008	Arroio do Meio	1	43	4304	43021	RS	Arroio do Meio
4301073	1073	Arroio do Padre	1	43	4307	43033	RS	Arroio do Padre
4301057	1057	Arroio do Sal	1	43	4305	43027	RS	Arroio do Sal
4301206	1206	Arroio do Tigre	1	43	4304	43020	RS	Arroio do Tigre
4301107	1107	Arroio dos Ratos	1	43	4305	43025	RS	Arroio dos Ratos
4301305	1305	Arroio Grande	1	43	4307	43034	RS	Arroio Grande
4301404	1404	Arvorezinha	1	43	4302	43014	RS	Arvorezinha
4301503	1503	Augusto Pestana	1	43	4301	43008	RS	Augusto Pestana
4301552	1552	Áurea	1	43	4301	43004	RS	Aurea
4301602	1602	Bagé	1	43	4306	43031	RS	Bage
4301636	1636	Balneário Pinhal	1	43	4305	43027	RS	Balneario Pinhal
4301651	1651	Barão	1	43	4305	43023	RS	Barao
4301701	1701	Barão de Cotegipe	1	43	4301	43004	RS	Barao de Cotegipe
4301750	1750	Barão do Triunfo	1	43	4305	43025	RS	Barao do Triunfo
4301859	1859	Barra do Guarita	1	43	4301	43002	RS	Barra do Guarita
4301875	1875	Barra do Quaraí	1	43	4306	43029	RS	Barra do Quarai
4301909	1909	Barra do Ribeiro	1	43	4305	43028	RS	Barra do Ribeiro
4301925	1925	Barra do Rio Azul	1	43	4301	43004	RS	Barra do Rio Azul
4301958	1958	Barra Funda	1	43	4301	43009	RS	Barra Funda
4301800	1800	Barracão	1	43	4301	43005	RS	Barracao
4302006	2006	Barros Cassal	1	43	4301	43013	RS	Barros Cassal
4302055	2055	Benjamin Constant do Sul	1	43	4301	43004	RS	Benjamin Constant do Sul
4302105	2105	Bento Gonçalves	1	43	4302	43016	RS	Bento Goncalves
4302154	2154	Boa Vista das Missões	1	43	4301	43009	RS	Boa Vista das Missoes
4302204	2204	Boa Vista do Buricá	1	43	4301	43002	RS	Boa Vista do Burica
4302220	2220	Boa Vista do Cadeado	1	43	4301	43011	RS	Boa Vista do Cadeado
4302238	2238	Boa Vista do Incra	1	43	4301	43011	RS	Boa Vista do Incra
4302253	2253	Boa Vista do Sul	1	43	4302	43016	RS	Boa Vista do Sul
4302303	2303	Bom Jesus	1	43	4302	43015	RS	Bom Jesus
4302352	2352	Bom Princípio	1	43	4305	43023	RS	Bom Principio
4302378	2378	Bom Progresso	1	43	4301	43002	RS	Bom Progresso
4302402	2402	Bom Retiro do Sul	1	43	4304	43021	RS	Bom Retiro do Sul
4302451	2451	Boqueirão do Leão	1	43	4304	43021	RS	Boqueirao do Leao
4302501	2501	Bossoroca	1	43	4301	43007	RS	Bossoroca
4302584	2584	Bozano	1	43	4301	43008	RS	Bozano
4302600	2600	Braga	1	43	4301	43002	RS	Braga
4302659	2659	Brochier	1	43	4305	43023	RS	Brochier
4302709	2709	Butiá	1	43	4305	43025	RS	Butia
4302808	2808	Caçapava do Sul	1	43	4307	43032	RS	Cacapava do Sul
4302907	2907	Cacequi	1	43	4303	43018	RS	Cacequi
4303004	3004	Cachoeira do Sul	1	43	4304	43022	RS	Cachoeira do Sul
4303103	3103	Cachoeirinha	1	43	4305	43026	RS	Cachoeirinha
4303202	3202	Cacique Doble	1	43	4301	43005	RS	Cacique Doble
4303301	3301	Caibaté	1	43	4301	43006	RS	Caibate
4303400	3400	Caiçara	1	43	4301	43003	RS	Caicara
4303509	3509	Camaquã	1	43	4305	43028	RS	Camaqua
4303558	3558	Camargo	1	43	4301	43010	RS	Camargo
4303608	3608	Cambará do Sul	1	43	4302	43015	RS	Cambara do Sul
4303673	3673	Campestre da Serra	1	43	4302	43015	RS	Campestre da Serra
4303707	3707	Campina das Missões	1	43	4301	43006	RS	Campina das Missoes
4303806	3806	Campinas do Sul	1	43	4301	43004	RS	Campinas do Sul
4303905	3905	Campo Bom	1	43	4305	43026	RS	Campo Bom
4304002	4002	Campo Novo	1	43	4301	43002	RS	Campo Novo
4304101	4101	Campos Borges	1	43	4301	43011	RS	Campos Borges
4304200	4200	Candelária	1	43	4304	43020	RS	Candelaria
4304309	4309	Cândido Godói	1	43	4301	43001	RS	Candido Godoi
4304358	4358	Candiota	1	43	4307	43032	RS	Candiota
4304408	4408	Canela	1	43	4305	43024	RS	Canela
4304507	4507	Canguçu	1	43	4307	43033	RS	Cangucu
4304606	4606	Canoas	1	43	4305	43026	RS	Canoas
4304614	4614	Canudos do Vale	1	43	4304	43021	RS	Canudos do Vale
4304622	4622	Capão Bonito do Sul	1	43	4302	43015	RS	Capao Bonito do Sul
4304630	4630	Capão da Canoa	1	43	4305	43027	RS	Capao da Canoa
4304655	4655	Capão do Cipó	1	43	4303	43017	RS	Capao do Cipo
4304663	4663	Capão do Leão	1	43	4307	43033	RS	Capao do Leao
4304689	4689	Capela de Santana	1	43	4305	43023	RS	Capela de Santana
4304697	4697	Capitão	1	43	4304	43021	RS	Capitao
4304671	4671	Capivari do Sul	1	43	4305	43027	RS	Capivari do Sul
4304713	4713	Caraá	1	43	4305	43027	RS	Caraa
4304705	4705	Carazinho	1	43	4301	43009	RS	Carazinho
4304804	4804	Carlos Barbosa	1	43	4302	43016	RS	Carlos Barbosa
4304853	4853	Carlos Gomes	1	43	4301	43004	RS	Carlos Gomes
4304903	4903	Casca	1	43	4301	43010	RS	Casca
4304952	4952	Caseiros	1	43	4301	43010	RS	Caseiros
4305009	5009	Catuípe	1	43	4301	43007	RS	Catuipe
4305108	5108	Caxias do Sul	1	43	4302	43016	RS	Caxias do Sul
4305116	5116	Centenário	1	43	4301	43004	RS	Centenario
4305124	5124	Cerrito	1	43	4307	43033	RS	Cerrito
4305132	5132	Cerro Branco	1	43	4304	43022	RS	Cerro Branco
4305157	5157	Cerro Grande	1	43	4301	43009	RS	Cerro Grande
4305173	5173	Cerro Grande do Sul	1	43	4305	43028	RS	Cerro Grande do Sul
4305207	5207	Cerro Largo	1	43	4301	43006	RS	Cerro Largo
4305306	5306	Chapada	1	43	4301	43009	RS	Chapada
4305355	5355	Charqueadas	1	43	4305	43025	RS	Charqueadas
4305371	5371	Charrua	1	43	4301	43010	RS	Charrua
4305405	5405	Chiapetta	1	43	4301	43008	RS	Chiapetta
4305439	5439	Chuí	1	43	4307	43035	RS	Chui
4305447	5447	Chuvisca	1	43	4305	43028	RS	Chuvisca
4305454	5454	Cidreira	1	43	4305	43027	RS	Cidreira
4305504	5504	Ciríaco	1	43	4301	43010	RS	Ciriaco
4305587	5587	Colinas	1	43	4304	43021	RS	Colinas
4305603	5603	Colorado	1	43	4301	43012	RS	Colorado
4305702	5702	Condor	1	43	4301	43008	RS	Condor
4305801	5801	Constantina	1	43	4301	43003	RS	Constantina
4305835	5835	Coqueiro Baixo	1	43	4304	43021	RS	Coqueiro Baixo
4305850	5850	Coqueiros do Sul	1	43	4301	43009	RS	Coqueiros do Sul
4305871	5871	Coronel Barros	1	43	4301	43008	RS	Coronel Barros
4305900	5900	Coronel Bicaco	1	43	4301	43008	RS	Coronel Bicaco
4305934	5934	Coronel Pilar	1	43	4302	43016	RS	Coronel Pilar
4305959	5959	Cotiporã	1	43	4302	43016	RS	Cotipora
4305975	5975	Coxilha	1	43	4301	43010	RS	Coxilha
4306007	6007	Crissiumal	1	43	4301	43002	RS	Crissiumal
4306056	6056	Cristal	1	43	4307	43033	RS	Cristal
4306072	6072	Cristal do Sul	1	43	4301	43003	RS	Cristal do Sul
4306106	6106	Cruz Alta	1	43	4301	43011	RS	Cruz Alta
4306130	6130	Cruzaltense	1	43	4301	43004	RS	Cruzaltense
4306205	6205	Cruzeiro do Sul	1	43	4304	43021	RS	Cruzeiro do Sul
4306304	6304	David Canabarro	1	43	4301	43010	RS	David Canabarro
4306320	6320	Derrubadas	1	43	4301	43002	RS	Derrubadas
4306353	6353	Dezesseis de Novembro	1	43	4301	43007	RS	Dezesseis de Novembro
4306379	6379	Dilermando de Aguiar	1	43	4303	43018	RS	Dilermando de Aguiar
4306403	6403	Dois Irmãos	1	43	4305	43024	RS	Dois Irmaos
4306429	6429	Dois Irmãos das Missões	1	43	4301	43003	RS	Dois Irmaos das Missoes
4306452	6452	Dois Lajeados	1	43	4302	43014	RS	Dois Lajeados
4306502	6502	Dom Feliciano	1	43	4305	43028	RS	Dom Feliciano
4306601	6601	Dom Pedrito	1	43	4306	43031	RS	Dom Pedrito
4306551	6551	Dom Pedro de Alcântara	1	43	4305	43027	RS	Dom Pedro de Alcantara
4306700	6700	Dona Francisca	1	43	4303	43019	RS	Dona Francisca
4306734	6734	Doutor Maurício Cardoso	1	43	4301	43002	RS	Doutor Mauricio Cardoso
4306759	6759	Doutor Ricardo	1	43	4304	43021	RS	Doutor Ricardo
4306767	6767	Eldorado do Sul	1	43	4305	43026	RS	Eldorado do Sul
4306809	6809	Encantado	1	43	4304	43021	RS	Encantado
4306908	6908	Encruzilhada do Sul	1	43	4307	43032	RS	Encruzilhada do Sul
4306924	6924	Engenho Velho	1	43	4301	43003	RS	Engenho Velho
4306957	6957	Entre Rios do Sul	1	43	4301	43004	RS	Entre Rios do Sul
4306932	6932	Entre-Ijuís	1	43	4301	43007	RS	Entre-Ijuis
4306973	6973	Erebango	1	43	4301	43004	RS	Erebango
4307005	7005	Erechim	1	43	4301	43004	RS	Erechim
4307054	7054	Ernestina	1	43	4301	43010	RS	Ernestina
4307203	7203	Erval Grande	1	43	4301	43004	RS	Erval Grande
4307302	7302	Erval Seco	1	43	4301	43003	RS	Erval Seco
4307401	7401	Esmeralda	1	43	4302	43015	RS	Esmeralda
4307450	7450	Esperança do Sul	1	43	4301	43002	RS	Esperanca do Sul
4307500	7500	Espumoso	1	43	4301	43011	RS	Espumoso
4307559	7559	Estação	1	43	4301	43004	RS	Estacao
4307609	7609	Estância Velha	1	43	4305	43026	RS	Estancia Velha
4307708	7708	Esteio	1	43	4305	43026	RS	Esteio
4307807	7807	Estrela	1	43	4304	43021	RS	Estrela
4307815	7815	Estrela Velha	1	43	4304	43020	RS	Estrela Velha
4307831	7831	Eugênio de Castro	1	43	4301	43007	RS	Eugenio de Castro
4307864	7864	Fagundes Varela	1	43	4302	43016	RS	Fagundes Varela
4307906	7906	Farroupilha	1	43	4302	43016	RS	Farroupilha
4308003	8003	Faxinal do Soturno	1	43	4303	43019	RS	Faxinal do Soturno
4308052	8052	Faxinalzinho	1	43	4301	43004	RS	Faxinalzinho
4308078	8078	Fazenda Vilanova	1	43	4304	43021	RS	Fazenda Vilanova
4308102	8102	Feliz	1	43	4305	43023	RS	Feliz
4308201	8201	Flores da Cunha	1	43	4302	43016	RS	Flores da Cunha
4308250	8250	Floriano Peixoto	1	43	4301	43004	RS	Floriano Peixoto
4308300	8300	Fontoura Xavier	1	43	4301	43013	RS	Fontoura Xavier
4308409	8409	Formigueiro	1	43	4303	43019	RS	Formigueiro
4308433	8433	Forquetinha	1	43	4304	43021	RS	Forquetinha
4308458	8458	Fortaleza dos Valos	1	43	4301	43011	RS	Fortaleza dos Valos
4308508	8508	Frederico Westphalen	1	43	4301	43003	RS	Frederico Westphalen
4308607	8607	Garibaldi	1	43	4302	43016	RS	Garibaldi
4308656	8656	Garruchos	1	43	4306	43029	RS	Garruchos
4308706	8706	Gaurama	1	43	4301	43004	RS	Gaurama
4308805	8805	General Câmara	1	43	4305	43025	RS	General Camara
4308854	8854	Gentil	1	43	4301	43010	RS	Gentil
4308904	8904	Getúlio Vargas	1	43	4301	43004	RS	Getulio Vargas
4309001	9001	Giruá	1	43	4301	43007	RS	Girua
4309050	9050	Glorinha	1	43	4305	43026	RS	Glorinha
4309100	9100	Gramado	1	43	4305	43024	RS	Gramado
4309126	9126	Gramado dos Loureiros	1	43	4301	43003	RS	Gramado dos Loureiros
4309159	9159	Gramado Xavier	1	43	4304	43020	RS	Gramado Xavier
4309209	9209	Gravataí	1	43	4305	43026	RS	Gravatai
4309258	9258	Guabiju	1	43	4302	43014	RS	Guabiju
4309308	9308	Guaíba	1	43	4305	43026	RS	Guaiba
4309407	9407	Guaporé	1	43	4302	43014	RS	Guapore
4309506	9506	Guarani das Missões	1	43	4301	43006	RS	Guarani das Missoes
4309555	9555	Harmonia	1	43	4305	43023	RS	Harmonia
4307104	7104	Herval	1	43	4307	43034	RS	Herval
4309571	9571	Herveiras	1	43	4304	43020	RS	Herveiras
4309605	9605	Horizontina	1	43	4301	43002	RS	Horizontina
4309654	9654	Hulha Negra	1	43	4306	43031	RS	Hulha Negra
4309704	9704	Humaitá	1	43	4301	43002	RS	Humaita
4309753	9753	Ibarama	1	43	4304	43020	RS	Ibarama
4309803	9803	Ibiaçá	1	43	4301	43005	RS	Ibiaca
4309902	9902	Ibiraiaras	1	43	4301	43010	RS	Ibiraiaras
4309951	9951	Ibirapuitã	1	43	4301	43013	RS	Ibirapuita
4310009	10009	Ibirubá	1	43	4301	43011	RS	Ibiruba
4310108	10108	Igrejinha	1	43	4305	43024	RS	Igrejinha
4310207	10207	Ijuí	1	43	4301	43008	RS	Ijui
4310306	10306	Ilópolis	1	43	4302	43014	RS	Ilopolis
4310330	10330	Imbé	1	43	4305	43027	RS	Imbe
4310363	10363	Imigrante	1	43	4304	43021	RS	Imigrante
4310405	10405	Independência	1	43	4301	43001	RS	Independencia
4310413	10413	Inhacorá	1	43	4301	43008	RS	Inhacora
4310439	10439	Ipê	1	43	4302	43015	RS	Ipe
4310462	10462	Ipiranga do Sul	1	43	4301	43004	RS	Ipiranga do Sul
4310504	10504	Iraí	1	43	4301	43003	RS	Irai
4310538	10538	Itaara	1	43	4303	43018	RS	Itaara
4310553	10553	Itacurubi	1	43	4303	43017	RS	Itacurubi
4310579	10579	Itapuca	1	43	4302	43014	RS	Itapuca
4310603	10603	Itaqui	1	43	4306	43029	RS	Itaqui
4310652	10652	Itati	1	43	4305	43027	RS	Itati
4310702	10702	Itatiba do Sul	1	43	4301	43004	RS	Itatiba do Sul
4310751	10751	Ivorá	1	43	4303	43019	RS	Ivora
4310801	10801	Ivoti	1	43	4305	43024	RS	Ivoti
4310850	10850	Jaboticaba	1	43	4301	43009	RS	Jaboticaba
4310876	10876	Jacuizinho	1	43	4301	43011	RS	Jacuizinho
4310900	10900	Jacutinga	1	43	4301	43004	RS	Jacutinga
4311007	11007	Jaguarão	1	43	4307	43034	RS	Jaguarao
4311106	11106	Jaguari	1	43	4303	43018	RS	Jaguari
4311122	11122	Jaquirana	1	43	4302	43015	RS	Jaquirana
4311130	11130	Jari	1	43	4303	43017	RS	Jari
4311155	11155	Jóia	1	43	4301	43011	RS	Joia
4311205	11205	Júlio de Castilhos	1	43	4303	43017	RS	Julio de Castilhos
4311239	11239	Lagoa Bonita do Sul	1	43	4304	43020	RS	Lagoa Bonita do Sul
4311270	11270	Lagoa dos Três Cantos	1	43	4301	43012	RS	Lagoa dos Tres Cantos
4311304	11304	Lagoa Vermelha	1	43	4302	43015	RS	Lagoa Vermelha
4311254	11254	Lagoão	1	43	4301	43013	RS	Lagoao
4311403	11403	Lajeado	1	43	4304	43021	RS	Lajeado
4311429	11429	Lajeado do Bugre	1	43	4301	43009	RS	Lajeado do Bugre
4311502	11502	Lavras do Sul	1	43	4306	43031	RS	Lavras do Sul
4311601	11601	Liberato Salzano	1	43	4301	43003	RS	Liberato Salzano
4311627	11627	Lindolfo Collor	1	43	4305	43024	RS	Lindolfo Collor
4311643	11643	Linha Nova	1	43	4305	43023	RS	Linha Nova
4311718	11718	Maçambará	1	43	4306	43029	RS	Macambara
4311700	11700	Machadinho	1	43	4301	43005	RS	Machadinho
4311734	11734	Mampituba	1	43	4305	43027	RS	Mampituba
4311759	11759	Manoel Viana	1	43	4306	43029	RS	Manoel Viana
4311775	11775	Maquiné	1	43	4305	43027	RS	Maquine
4311791	11791	Maratá	1	43	4305	43023	RS	Marata
4311809	11809	Marau	1	43	4301	43010	RS	Marau
4311908	11908	Marcelino Ramos	1	43	4301	43004	RS	Marcelino Ramos
4311981	11981	Mariana Pimentel	1	43	4305	43026	RS	Mariana Pimentel
4312005	12005	Mariano Moro	1	43	4301	43004	RS	Mariano Moro
4312054	12054	Marques de Souza	1	43	4304	43021	RS	Marques de Souza
4312104	12104	Mata	1	43	4303	43018	RS	Mata
4312138	12138	Mato Castelhano	1	43	4301	43010	RS	Mato Castelhano
4312153	12153	Mato Leitão	1	43	4304	43020	RS	Mato Leitao
4312179	12179	Mato Queimado	1	43	4301	43006	RS	Mato Queimado
4312203	12203	Maximiliano de Almeida	1	43	4301	43005	RS	Maximiliano de Almeida
4312252	12252	Minas do Leão	1	43	4305	43025	RS	Minas do Leao
4312302	12302	Miraguaí	1	43	4301	43002	RS	Miraguai
4312351	12351	Montauri	1	43	4302	43014	RS	Montauri
4312377	12377	Monte Alegre dos Campos	1	43	4302	43015	RS	Monte Alegre dos Campos
4312385	12385	Monte Belo do Sul	1	43	4302	43016	RS	Monte Belo do Sul
4312401	12401	Montenegro	1	43	4305	43023	RS	Montenegro
4312427	12427	Mormaço	1	43	4301	43013	RS	Mormaco
4312443	12443	Morrinhos do Sul	1	43	4305	43027	RS	Morrinhos do Sul
4312450	12450	Morro Redondo	1	43	4307	43033	RS	Morro Redondo
4312476	12476	Morro Reuter	1	43	4305	43024	RS	Morro Reuter
4312500	12500	Mostardas	1	43	4305	43027	RS	Mostardas
4312609	12609	Muçum	1	43	4304	43021	RS	Mucum
4312617	12617	Muitos Capões	1	43	4302	43015	RS	Muitos Capoes
4312625	12625	Muliterno	1	43	4301	43010	RS	Muliterno
4312658	12658	Não-Me-Toque	1	43	4301	43012	RS	Nao-Me-Toque
4312674	12674	Nicolau Vergueiro	1	43	4301	43010	RS	Nicolau Vergueiro
4312708	12708	Nonoai	1	43	4301	43003	RS	Nonoai
4312757	12757	Nova Alvorada	1	43	4302	43014	RS	Nova Alvorada
4312807	12807	Nova Araçá	1	43	4302	43014	RS	Nova Araca
4312906	12906	Nova Bassano	1	43	4302	43014	RS	Nova Bassano
4312955	12955	Nova Boa Vista	1	43	4301	43009	RS	Nova Boa Vista
4313003	13003	Nova Bréscia	1	43	4304	43021	RS	Nova Brescia
4313011	13011	Nova Candelária	1	43	4301	43002	RS	Nova Candelaria
4313037	13037	Nova Esperança do Sul	1	43	4303	43018	RS	Nova Esperanca do Sul
4313060	13060	Nova Hartz	1	43	4305	43026	RS	Nova Hartz
4313086	13086	Nova Pádua	1	43	4302	43016	RS	Nova Padua
4313102	13102	Nova Palma	1	43	4303	43019	RS	Nova Palma
4313201	13201	Nova Petrópolis	1	43	4305	43024	RS	Nova Petropolis
4313300	13300	Nova Prata	1	43	4302	43014	RS	Nova Prata
4313334	13334	Nova Ramada	1	43	4301	43008	RS	Nova Ramada
4313359	13359	Nova Roma do Sul	1	43	4302	43016	RS	Nova Roma do Sul
4313375	13375	Nova Santa Rita	1	43	4305	43026	RS	Nova Santa Rita
4313490	13490	Novo Barreiro	1	43	4301	43009	RS	Novo Barreiro
4313391	13391	Novo Cabrais	1	43	4304	43022	RS	Novo Cabrais
4313409	13409	Novo Hamburgo	1	43	4305	43026	RS	Novo Hamburgo
4313425	13425	Novo Machado	1	43	4301	43001	RS	Novo Machado
4313441	13441	Novo Tiradentes	1	43	4301	43003	RS	Novo Tiradentes
4313466	13466	Novo Xingu	1	43	4301	43003	RS	Novo Xingu
4313508	13508	Osório	1	43	4305	43027	RS	Osorio
4313607	13607	Paim Filho	1	43	4301	43005	RS	Paim Filho
4313656	13656	Palmares do Sul	1	43	4305	43027	RS	Palmares do Sul
4313706	13706	Palmeira das Missões	1	43	4301	43009	RS	Palmeira das Missoes
4313805	13805	Palmitinho	1	43	4301	43003	RS	Palmitinho
4313904	13904	Panambi	1	43	4301	43008	RS	Panambi
4313953	13953	Pantano Grande	1	43	4304	43022	RS	Pantano Grande
4314001	14001	Paraí	1	43	4302	43014	RS	Parai
4314027	14027	Paraíso do Sul	1	43	4304	43022	RS	Paraiso do Sul
4314035	14035	Pareci Novo	1	43	4305	43023	RS	Pareci Novo
4314050	14050	Parobé	1	43	4305	43026	RS	Parobe
4314068	14068	Passa Sete	1	43	4304	43020	RS	Passa Sete
4314076	14076	Passo do Sobrado	1	43	4304	43022	RS	Passo do Sobrado
4314100	14100	Passo Fundo	1	43	4301	43010	RS	Passo Fundo
4314134	14134	Paulo Bento	1	43	4301	43004	RS	Paulo Bento
4314159	14159	Paverama	1	43	4304	43021	RS	Paverama
4314175	14175	Pedras Altas	1	43	4307	43032	RS	Pedras Altas
4314209	14209	Pedro Osório	1	43	4307	43033	RS	Pedro Osorio
4314308	14308	Pejuçara	1	43	4301	43008	RS	Pejucara
4314407	14407	Pelotas	1	43	4307	43033	RS	Pelotas
4314423	14423	Picada Café	1	43	4305	43024	RS	Picada Cafe
4314456	14456	Pinhal	1	43	4301	43009	RS	Pinhal
4314464	14464	Pinhal da Serra	1	43	4302	43015	RS	Pinhal da Serra
4314472	14472	Pinhal Grande	1	43	4303	43017	RS	Pinhal Grande
4314498	14498	Pinheirinho do Vale	1	43	4301	43003	RS	Pinheirinho do Vale
4314506	14506	Pinheiro Machado	1	43	4307	43032	RS	Pinheiro Machado
4314548	14548	Pinto Bandeira	1	43	4302	43016	RS	Pinto Bandeira
4314555	14555	Pirapó	1	43	4301	43007	RS	Pirapo
4314605	14605	Piratini	1	43	4307	43032	RS	Piratini
4314704	14704	Planalto	1	43	4301	43003	RS	Planalto
4314753	14753	Poço das Antas	1	43	4305	43023	RS	Poco das Antas
4314779	14779	Pontão	1	43	4301	43010	RS	Pontao
4314787	14787	Ponte Preta	1	43	4301	43004	RS	Ponte Preta
4314803	14803	Portão	1	43	4305	43023	RS	Portao
4314902	14902	Porto Alegre	1	43	4305	43026	RS	Porto Alegre
4315008	15008	Porto Lucena	1	43	4301	43001	RS	Porto Lucena
4315057	15057	Porto Mauá	1	43	4301	43001	RS	Porto Maua
4315073	15073	Porto Vera Cruz	1	43	4301	43001	RS	Porto Vera Cruz
4315107	15107	Porto Xavier	1	43	4301	43006	RS	Porto Xavier
4315131	15131	Pouso Novo	1	43	4304	43021	RS	Pouso Novo
4315149	15149	Presidente Lucena	1	43	4305	43024	RS	Presidente Lucena
4315156	15156	Progresso	1	43	4304	43021	RS	Progresso
4315172	15172	Protásio Alves	1	43	4302	43014	RS	Protasio Alves
4315206	15206	Putinga	1	43	4302	43014	RS	Putinga
4315305	15305	Quaraí	1	43	4306	43029	RS	Quarai
4315313	15313	Quatro Irmãos	1	43	4301	43004	RS	Quatro Irmaos
4315321	15321	Quevedos	1	43	4303	43017	RS	Quevedos
4315354	15354	Quinze de Novembro	1	43	4301	43011	RS	Quinze de Novembro
4315404	15404	Redentora	1	43	4301	43002	RS	Redentora
4315453	15453	Relvado	1	43	4304	43021	RS	Relvado
4315503	15503	Restinga Sêca	1	43	4303	43019	RS	Restinga Seca
4315552	15552	Rio dos Índios	1	43	4301	43003	RS	Rio dos Indios
4315602	15602	Rio Grande	1	43	4307	43035	RS	Rio Grande
4315701	15701	Rio Pardo	1	43	4304	43022	RS	Rio Pardo
4315750	15750	Riozinho	1	43	4305	43024	RS	Riozinho
4315800	15800	Roca Sales	1	43	4304	43021	RS	Roca Sales
4315909	15909	Rodeio Bonito	1	43	4301	43003	RS	Rodeio Bonito
4315958	15958	Rolador	1	43	4301	43007	RS	Rolador
4316006	16006	Rolante	1	43	4305	43024	RS	Rolante
4316105	16105	Ronda Alta	1	43	4301	43010	RS	Ronda Alta
4316204	16204	Rondinha	1	43	4301	43003	RS	Rondinha
4316303	16303	Roque Gonzales	1	43	4301	43006	RS	Roque Gonzales
4316402	16402	Rosário do Sul	1	43	4306	43030	RS	Rosario do Sul
4316428	16428	Sagrada Família	1	43	4301	43009	RS	Sagrada Familia
4316436	16436	Saldanha Marinho	1	43	4301	43011	RS	Saldanha Marinho
4316451	16451	Salto do Jacuí	1	43	4301	43011	RS	Salto do Jacui
4316477	16477	Salvador das Missões	1	43	4301	43006	RS	Salvador das Missoes
4316501	16501	Salvador do Sul	1	43	4305	43023	RS	Salvador do Sul
4316600	16600	Sananduva	1	43	4301	43005	RS	Sananduva
4316709	16709	Santa Bárbara do Sul	1	43	4301	43011	RS	Santa Barbara do Sul
4316733	16733	Santa Cecília do Sul	1	43	4301	43010	RS	Santa Cecilia do Sul
4316758	16758	Santa Clara do Sul	1	43	4304	43021	RS	Santa Clara do Sul
4316808	16808	Santa Cruz do Sul	1	43	4304	43020	RS	Santa Cruz do Sul
4316972	16972	Santa Margarida do Sul	1	43	4306	43030	RS	Santa Margarida do Sul
4316907	16907	Santa Maria	1	43	4303	43018	RS	Santa Maria
4321667	21667	Três Cachoeiras	1	43	4305	43027	RS	Tres Cachoeiras
4316956	16956	Santa Maria do Herval	1	43	4305	43024	RS	Santa Maria do Herval
4317202	17202	Santa Rosa	1	43	4301	43001	RS	Santa Rosa
4317251	17251	Santa Tereza	1	43	4302	43016	RS	Santa Tereza
4317301	17301	Santa Vitória do Palmar	1	43	4307	43035	RS	Santa Vitoria do Palmar
4317004	17004	Santana da Boa Vista	1	43	4307	43032	RS	Santana da Boa Vista
4317103	17103	Sant'Ana do Livramento	1	43	4306	43030	RS	Sant'Ana do Livramento
4317400	17400	Santiago	1	43	4303	43017	RS	Santiago
4317509	17509	Santo Ângelo	1	43	4301	43007	RS	Santo Angelo
4317608	17608	Santo Antônio da Patrulha	1	43	4305	43027	RS	Santo Antonio da Patrulha
4317707	17707	Santo Antônio das Missões	1	43	4301	43007	RS	Santo Antonio das Missoes
4317558	17558	Santo Antônio do Palma	1	43	4301	43010	RS	Santo Antonio do Palma
4317756	17756	Santo Antônio do Planalto	1	43	4301	43009	RS	Santo Antonio do Planalto
4317806	17806	Santo Augusto	1	43	4301	43008	RS	Santo Augusto
4317905	17905	Santo Cristo	1	43	4301	43001	RS	Santo Cristo
4317954	17954	Santo Expedito do Sul	1	43	4301	43005	RS	Santo Expedito do Sul
4318002	18002	São Borja	1	43	4306	43029	RS	Sao Borja
4318051	18051	São Domingos do Sul	1	43	4301	43010	RS	Sao Domingos do Sul
4318101	18101	São Francisco de Assis	1	43	4306	43029	RS	Sao Francisco de Assis
4318200	18200	São Francisco de Paula	1	43	4302	43015	RS	Sao Francisco de Paula
4318309	18309	São Gabriel	1	43	4306	43030	RS	Sao Gabriel
4318408	18408	São Jerônimo	1	43	4305	43025	RS	Sao Jeronimo
4318424	18424	São João da Urtiga	1	43	4301	43005	RS	Sao Joao da Urtiga
4318432	18432	São João do Polêsine	1	43	4303	43019	RS	Sao Joao do Polesine
4318440	18440	São Jorge	1	43	4302	43014	RS	Sao Jorge
4318457	18457	São José das Missões	1	43	4301	43009	RS	Sao Jose das Missoes
4318465	18465	São José do Herval	1	43	4301	43013	RS	Sao Jose do Herval
4318481	18481	São José do Hortêncio	1	43	4305	43023	RS	Sao Jose do Hortencio
4318499	18499	São José do Inhacorá	1	43	4301	43001	RS	Sao Jose do Inhacora
4318507	18507	São José do Norte	1	43	4307	43035	RS	Sao Jose do Norte
4318606	18606	São José do Ouro	1	43	4301	43005	RS	Sao Jose do Ouro
4318614	18614	São José do Sul	1	43	4305	43023	RS	Sao Jose do Sul
4318622	18622	São José dos Ausentes	1	43	4302	43015	RS	Sao Jose dos Ausentes
4318705	18705	São Leopoldo	1	43	4305	43026	RS	Sao Leopoldo
4318804	18804	São Lourenço do Sul	1	43	4307	43033	RS	Sao Lourenco do Sul
4318903	18903	São Luiz Gonzaga	1	43	4301	43007	RS	Sao Luiz Gonzaga
4319000	19000	São Marcos	1	43	4302	43016	RS	Sao Marcos
4319109	19109	São Martinho	1	43	4301	43002	RS	Sao Martinho
4319125	19125	São Martinho da Serra	1	43	4303	43018	RS	Sao Martinho da Serra
4319158	19158	São Miguel das Missões	1	43	4301	43007	RS	Sao Miguel das Missoes
4319208	19208	São Nicolau	1	43	4301	43007	RS	Sao Nicolau
4319307	19307	São Paulo das Missões	1	43	4301	43006	RS	Sao Paulo das Missoes
4319356	19356	São Pedro da Serra	1	43	4305	43023	RS	Sao Pedro da Serra
4319364	19364	São Pedro das Missões	1	43	4301	43009	RS	Sao Pedro das Missoes
4319372	19372	São Pedro do Butiá	1	43	4301	43006	RS	Sao Pedro do Butia
4319406	19406	São Pedro do Sul	1	43	4303	43018	RS	Sao Pedro do Sul
4319505	19505	São Sebastião do Caí	1	43	4305	43023	RS	Sao Sebastiao do Cai
4319604	19604	São Sepé	1	43	4303	43018	RS	Sao Sepe
4319703	19703	São Valentim	1	43	4301	43004	RS	Sao Valentim
4319711	19711	São Valentim do Sul	1	43	4302	43014	RS	Sao Valentim do Sul
4319737	19737	São Valério do Sul	1	43	4301	43008	RS	Sao Valerio do Sul
4319752	19752	São Vendelino	1	43	4305	43023	RS	Sao Vendelino
4319802	19802	São Vicente do Sul	1	43	4303	43018	RS	Sao Vicente do Sul
4319901	19901	Sapiranga	1	43	4305	43026	RS	Sapiranga
4320008	20008	Sapucaia do Sul	1	43	4305	43026	RS	Sapucaia do Sul
4320107	20107	Sarandi	1	43	4301	43009	RS	Sarandi
4320206	20206	Seberi	1	43	4301	43003	RS	Seberi
4320230	20230	Sede Nova	1	43	4301	43002	RS	Sede Nova
4320263	20263	Segredo	1	43	4304	43020	RS	Segredo
4320305	20305	Selbach	1	43	4301	43012	RS	Selbach
4320321	20321	Senador Salgado Filho	1	43	4301	43007	RS	Senador Salgado Filho
4320354	20354	Sentinela do Sul	1	43	4305	43028	RS	Sentinela do Sul
4320404	20404	Serafina Corrêa	1	43	4302	43014	RS	Serafina Correa
4320453	20453	Sério	1	43	4304	43021	RS	Serio
4320503	20503	Sertão	1	43	4301	43010	RS	Sertao
4320552	20552	Sertão Santana	1	43	4305	43026	RS	Sertao Santana
4320578	20578	Sete de Setembro	1	43	4301	43006	RS	Sete de Setembro
4320602	20602	Severiano de Almeida	1	43	4301	43004	RS	Severiano de Almeida
4320651	20651	Silveira Martins	1	43	4303	43019	RS	Silveira Martins
4320677	20677	Sinimbu	1	43	4304	43020	RS	Sinimbu
4320701	20701	Sobradinho	1	43	4304	43020	RS	Sobradinho
4320800	20800	Soledade	1	43	4301	43013	RS	Soledade
4320859	20859	Tabaí	1	43	4304	43021	RS	Tabai
4320909	20909	Tapejara	1	43	4301	43010	RS	Tapejara
4321006	21006	Tapera	1	43	4301	43012	RS	Tapera
4321105	21105	Tapes	1	43	4305	43028	RS	Tapes
4321204	21204	Taquara	1	43	4305	43024	RS	Taquara
4321303	21303	Taquari	1	43	4304	43021	RS	Taquari
4321329	21329	Taquaruçu do Sul	1	43	4301	43003	RS	Taquarucu do Sul
4321352	21352	Tavares	1	43	4305	43027	RS	Tavares
4321402	21402	Tenente Portela	1	43	4301	43002	RS	Tenente Portela
4321436	21436	Terra de Areia	1	43	4305	43027	RS	Terra de Areia
4321451	21451	Teutônia	1	43	4304	43021	RS	Teutonia
4321469	21469	Tio Hugo	1	43	4301	43012	RS	Tio Hugo
4321477	21477	Tiradentes do Sul	1	43	4301	43002	RS	Tiradentes do Sul
4321493	21493	Toropi	1	43	4303	43018	RS	Toropi
4321501	21501	Torres	1	43	4305	43027	RS	Torres
4321600	21600	Tramandaí	1	43	4305	43027	RS	Tramandai
4321626	21626	Travesseiro	1	43	4304	43021	RS	Travesseiro
4321634	21634	Três Arroios	1	43	4301	43004	RS	Tres Arroios
4321709	21709	Três Coroas	1	43	4305	43024	RS	Tres Coroas
4321808	21808	Três de Maio	1	43	4301	43001	RS	Tres de Maio
4321832	21832	Três Forquilhas	1	43	4305	43027	RS	Tres Forquilhas
4321857	21857	Três Palmeiras	1	43	4301	43003	RS	Tres Palmeiras
4321907	21907	Três Passos	1	43	4301	43002	RS	Tres Passos
4321956	21956	Trindade do Sul	1	43	4301	43003	RS	Trindade do Sul
4322004	22004	Triunfo	1	43	4305	43025	RS	Triunfo
4322103	22103	Tucunduva	1	43	4301	43001	RS	Tucunduva
4322152	22152	Tunas	1	43	4301	43013	RS	Tunas
4322186	22186	Tupanci do Sul	1	43	4301	43005	RS	Tupanci do Sul
4322202	22202	Tupanciretã	1	43	4303	43017	RS	Tupancireta
4322251	22251	Tupandi	1	43	4305	43023	RS	Tupandi
4322301	22301	Tuparendi	1	43	4301	43001	RS	Tuparendi
4322327	22327	Turuçu	1	43	4307	43033	RS	Turucu
4322343	22343	Ubiretama	1	43	4301	43007	RS	Ubiretama
4322350	22350	União da Serra	1	43	4302	43014	RS	Uniao da Serra
4322376	22376	Unistalda	1	43	4303	43017	RS	Unistalda
4322400	22400	Uruguaiana	1	43	4306	43029	RS	Uruguaiana
4322509	22509	Vacaria	1	43	4302	43015	RS	Vacaria
4322533	22533	Vale do Sol	1	43	4304	43020	RS	Vale do Sol
4322541	22541	Vale Real	1	43	4305	43023	RS	Vale Real
4322525	22525	Vale Verde	1	43	4305	43025	RS	Vale Verde
4322558	22558	Vanini	1	43	4301	43010	RS	Vanini
4322608	22608	Venâncio Aires	1	43	4304	43020	RS	Venancio Aires
4322707	22707	Vera Cruz	1	43	4304	43020	RS	Vera Cruz
4322806	22806	Veranópolis	1	43	4302	43016	RS	Veranopolis
4322855	22855	Vespasiano Corrêa	1	43	4304	43021	RS	Vespasiano Correa
4322905	22905	Viadutos	1	43	4301	43004	RS	Viadutos
4323002	23002	Viamão	1	43	4305	43026	RS	Viamao
4323101	23101	Vicente Dutra	1	43	4301	43003	RS	Vicente Dutra
4323200	23200	Victor Graeff	1	43	4301	43012	RS	Victor Graeff
4323309	23309	Vila Flores	1	43	4302	43016	RS	Vila Flores
4323358	23358	Vila Lângaro	1	43	4301	43010	RS	Vila Langaro
4323408	23408	Vila Maria	1	43	4301	43010	RS	Vila Maria
4323457	23457	Vila Nova do Sul	1	43	4303	43018	RS	Vila Nova do Sul
4323507	23507	Vista Alegre	1	43	4301	43003	RS	Vista Alegre
4323606	23606	Vista Alegre do Prata	1	43	4302	43014	RS	Vista Alegre do Prata
4323705	23705	Vista Gaúcha	1	43	4301	43002	RS	Vista Gaucha
4323754	23754	Vitória das Missões	1	43	4301	43007	RS	Vitoria das Missoes
4323770	23770	Westfália	1	43	4304	43021	RS	Westfalia
4323804	23804	Xangri-lá	1	43	4305	43027	RS	Xangri-la
5000203	203	Água Clara	1	50	5003	50007	MS	Agua Clara
5000252	252	Alcinópolis	1	50	5002	50003	MS	Alcinopolis
5000609	609	Amambai	1	50	5004	50010	MS	Amambai
5000708	708	Anastácio	1	50	5001	50002	MS	Anastacio
5000807	807	Anaurilândia	1	50	5003	50008	MS	Anaurilandia
5000856	856	Angélica	1	50	5004	50011	MS	Angelica
5000906	906	Antônio João	1	50	5004	50010	MS	Antonio Joao
5001003	1003	Aparecida do Taboado	1	50	5003	50006	MS	Aparecida do Taboado
5001102	1102	Aquidauana	1	50	5001	50002	MS	Aquidauana
5001243	1243	Aral Moreira	1	50	5004	50010	MS	Aral Moreira
5001508	1508	Bandeirantes	1	50	5002	50004	MS	Bandeirantes
5001904	1904	Bataguassu	1	50	5003	50008	MS	Bataguassu
5002001	2001	Batayporã	1	50	5003	50008	MS	Bataypora
5002100	2100	Bela Vista	1	50	5004	50009	MS	Bela Vista
5002159	2159	Bodoquena	1	50	5004	50009	MS	Bodoquena
5002209	2209	Bonito	1	50	5004	50009	MS	Bonito
5002308	2308	Brasilândia	1	50	5003	50007	MS	Brasilandia
5002407	2407	Caarapó	1	50	5004	50010	MS	Caarapo
5002605	2605	Camapuã	1	50	5002	50003	MS	Camapua
5002704	2704	Campo Grande	1	50	5002	50004	MS	Campo Grande
5002803	2803	Caracol	1	50	5004	50009	MS	Caracol
5002902	2902	Cassilândia	1	50	5003	50005	MS	Cassilandia
5002951	2951	Chapadão do Sul	1	50	5003	50005	MS	Chapadao do Sul
5003108	3108	Corguinho	1	50	5002	50004	MS	Corguinho
5003157	3157	Coronel Sapucaia	1	50	5004	50011	MS	Coronel Sapucaia
5003207	3207	Corumbá	1	50	5001	50001	MS	Corumba
5003256	3256	Costa Rica	1	50	5003	50005	MS	Costa Rica
5003306	3306	Coxim	1	50	5002	50003	MS	Coxim
5003454	3454	Deodápolis	1	50	5004	50011	MS	Deodapolis
5003488	3488	Dois Irmãos do Buriti	1	50	5001	50002	MS	Dois Irmaos do Buriti
5003504	3504	Douradina	1	50	5004	50010	MS	Douradina
5003702	3702	Dourados	1	50	5004	50010	MS	Dourados
5003751	3751	Eldorado	1	50	5004	50011	MS	Eldorado
5003801	3801	Fátima do Sul	1	50	5004	50010	MS	Fatima do Sul
5003900	3900	Figueirão	1	50	5002	50003	MS	Figueirao
5004007	4007	Glória de Dourados	1	50	5004	50011	MS	Gloria de Dourados
5004106	4106	Guia Lopes da Laguna	1	50	5004	50009	MS	Guia Lopes da Laguna
5004304	4304	Iguatemi	1	50	5004	50011	MS	Iguatemi
5004403	4403	Inocência	1	50	5003	50006	MS	Inocencia
5004502	4502	Itaporã	1	50	5004	50010	MS	Itapora
5004601	4601	Itaquiraí	1	50	5004	50011	MS	Itaquirai
5004700	4700	Ivinhema	1	50	5004	50011	MS	Ivinhema
5004809	4809	Japorã	1	50	5004	50011	MS	Japora
5004908	4908	Jaraguari	1	50	5002	50004	MS	Jaraguari
5005004	5004	Jardim	1	50	5004	50009	MS	Jardim
5005103	5103	Jateí	1	50	5004	50011	MS	Jatei
5005152	5152	Juti	1	50	5004	50010	MS	Juti
5005202	5202	Ladário	1	50	5001	50001	MS	Ladario
5005251	5251	Laguna Carapã	1	50	5004	50010	MS	Laguna Carapa
5005400	5400	Maracaju	1	50	5004	50010	MS	Maracaju
5005608	5608	Miranda	1	50	5001	50002	MS	Miranda
5005681	5681	Mundo Novo	1	50	5004	50011	MS	Mundo Novo
5005707	5707	Naviraí	1	50	5004	50011	MS	Navirai
5005806	5806	Nioaque	1	50	5004	50009	MS	Nioaque
5006002	6002	Nova Alvorada do Sul	1	50	5004	50010	MS	Nova Alvorada do Sul
5006200	6200	Nova Andradina	1	50	5003	50008	MS	Nova Andradina
5006259	6259	Novo Horizonte do Sul	1	50	5004	50011	MS	Novo Horizonte do Sul
5006275	6275	Paraíso das Águas	1	50	5003	50005	MS	Paraiso das Aguas
5006309	6309	Paranaíba	1	50	5003	50006	MS	Paranaiba
5006358	6358	Paranhos	1	50	5004	50011	MS	Paranhos
5006408	6408	Pedro Gomes	1	50	5002	50003	MS	Pedro Gomes
5006606	6606	Ponta Porã	1	50	5004	50010	MS	Ponta Pora
5006903	6903	Porto Murtinho	1	50	5001	50001	MS	Porto Murtinho
5007109	7109	Ribas do Rio Pardo	1	50	5003	50007	MS	Ribas do Rio Pardo
5007208	7208	Rio Brilhante	1	50	5004	50010	MS	Rio Brilhante
5007307	7307	Rio Negro	1	50	5002	50004	MS	Rio Negro
5007406	7406	Rio Verde de Mato Grosso	1	50	5002	50003	MS	Rio Verde de Mato Grosso
5007505	7505	Rochedo	1	50	5002	50004	MS	Rochedo
5007554	7554	Santa Rita do Pardo	1	50	5003	50007	MS	Santa Rita do Pardo
5007695	7695	São Gabriel do Oeste	1	50	5002	50003	MS	Sao Gabriel do Oeste
5007802	7802	Selvíria	1	50	5003	50006	MS	Selviria
5007703	7703	Sete Quedas	1	50	5004	50011	MS	Sete Quedas
5007901	7901	Sidrolândia	1	50	5002	50004	MS	Sidrolandia
5007935	7935	Sonora	1	50	5002	50003	MS	Sonora
5007950	7950	Tacuru	1	50	5004	50011	MS	Tacuru
5007976	7976	Taquarussu	1	50	5003	50008	MS	Taquarussu
5008008	8008	Terenos	1	50	5002	50004	MS	Terenos
5008305	8305	Três Lagoas	1	50	5003	50007	MS	Tres Lagoas
5008404	8404	Vicentina	1	50	5004	50010	MS	Vicentina
5100102	102	Acorizal	1	51	5104	51016	MT	Acorizal
5100201	201	Água Boa	1	51	5102	51010	MT	Agua Boa
5100250	250	Alta Floresta	1	51	5101	51002	MT	Alta Floresta
5100300	300	Alto Araguaia	1	51	5105	51022	MT	Alto Araguaia
5100359	359	Alto Boa Vista	1	51	5102	51009	MT	Alto Boa Vista
5100409	409	Alto Garças	1	51	5105	51022	MT	Alto Garcas
5100508	508	Alto Paraguai	1	51	5104	51015	MT	Alto Paraguai
5100607	607	Alto Taquari	1	51	5105	51022	MT	Alto Taquari
5100805	805	Apiacás	1	51	5101	51002	MT	Apiacas
5101001	1001	Araguaiana	1	51	5102	51011	MT	Araguaiana
5101209	1209	Araguainha	1	51	5105	51020	MT	Araguainha
5101258	1258	Araputanga	1	51	5103	51014	MT	Araputanga
5101308	1308	Arenápolis	1	51	5104	51015	MT	Arenapolis
5101407	1407	Aripuanã	1	51	5101	51001	MT	Aripuana
5101605	1605	Barão de Melgaço	1	51	5104	51018	MT	Barao de Melgaco
5101704	1704	Barra do Bugres	1	51	5103	51013	MT	Barra do Bugres
5101803	1803	Barra do Garças	1	51	5102	51011	MT	Barra do Garcas
5101852	1852	Bom Jesus do Araguaia	1	51	5102	51009	MT	Bom Jesus do Araguaia
5101902	1902	Brasnorte	1	51	5101	51001	MT	Brasnorte
5102504	2504	Cáceres	1	51	5104	51018	MT	Caceres
5102603	2603	Campinápolis	1	51	5102	51010	MT	Campinapolis
5102637	2637	Campo Novo do Parecis	1	51	5101	51004	MT	Campo Novo do Parecis
5102678	2678	Campo Verde	1	51	5105	51019	MT	Campo Verde
5102686	2686	Campos de Júlio	1	51	5101	51004	MT	Campos de Julio
5102694	2694	Canabrava do Norte	1	51	5102	51009	MT	Canabrava do Norte
5102702	2702	Canarana	1	51	5102	51010	MT	Canarana
5102793	2793	Carlinda	1	51	5101	51002	MT	Carlinda
5102850	2850	Castanheira	1	51	5101	51001	MT	Castanheira
5103007	3007	Chapada dos Guimarães	1	51	5104	51017	MT	Chapada dos Guimaraes
5103056	3056	Cláudia	1	51	5101	51007	MT	Claudia
5103106	3106	Cocalinho	1	51	5102	51011	MT	Cocalinho
5103205	3205	Colíder	1	51	5101	51003	MT	Colider
5103254	3254	Colniza	1	51	5101	51001	MT	Colniza
5103304	3304	Comodoro	1	51	5101	51004	MT	Comodoro
5103353	3353	Confresa	1	51	5102	51009	MT	Confresa
5103361	3361	Conquista D'Oeste	1	51	5103	51012	MT	Conquista D'Oeste
5103379	3379	Cotriguaçu	1	51	5101	51001	MT	Cotriguacu
5103403	3403	Cuiabá	1	51	5104	51017	MT	Cuiaba
5103437	3437	Curvelândia	1	51	5104	51018	MT	Curvelandia
5103452	3452	Denise	1	51	5103	51013	MT	Denise
5103502	3502	Diamantino	1	51	5101	51004	MT	Diamantino
5103601	3601	Dom Aquino	1	51	5105	51021	MT	Dom Aquino
5103700	3700	Feliz Natal	1	51	5101	51007	MT	Feliz Natal
5103809	3809	Figueirópolis D'Oeste	1	51	5103	51014	MT	Figueiropolis D'Oeste
5103858	3858	Gaúcha do Norte	1	51	5101	51008	MT	Gaucha do Norte
5103908	3908	General Carneiro	1	51	5105	51020	MT	General Carneiro
5103957	3957	Glória D'Oeste	1	51	5103	51014	MT	Gloria D'Oeste
5104104	4104	Guarantã do Norte	1	51	5101	51003	MT	Guaranta do Norte
5104203	4203	Guiratinga	1	51	5105	51020	MT	Guiratinga
5104500	4500	Indiavaí	1	51	5103	51014	MT	Indiavai
5104526	4526	Ipiranga do Norte	1	51	5101	51006	MT	Ipiranga do Norte
5104542	4542	Itanhangá	1	51	5101	51006	MT	Itanhanga
5104559	4559	Itaúba	1	51	5101	51007	MT	Itauba
5104609	4609	Itiquira	1	51	5105	51021	MT	Itiquira
5104807	4807	Jaciara	1	51	5105	51021	MT	Jaciara
5104906	4906	Jangada	1	51	5104	51016	MT	Jangada
5105002	5002	Jauru	1	51	5103	51014	MT	Jauru
5105101	5101	Juara	1	51	5101	51005	MT	Juara
5105150	5150	Juína	1	51	5101	51001	MT	Juina
5105176	5176	Juruena	1	51	5101	51001	MT	Juruena
5105200	5200	Juscimeira	1	51	5105	51021	MT	Juscimeira
5105234	5234	Lambari D'Oeste	1	51	5103	51014	MT	Lambari D'Oeste
5105259	5259	Lucas do Rio Verde	1	51	5101	51006	MT	Lucas do Rio Verde
5105309	5309	Luciara	1	51	5102	51009	MT	Luciara
5105580	5580	Marcelândia	1	51	5101	51007	MT	Marcelandia
5105606	5606	Matupá	1	51	5101	51003	MT	Matupa
5105622	5622	Mirassol d'Oeste	1	51	5103	51014	MT	Mirassol d'Oeste
5105903	5903	Nobres	1	51	5101	51006	MT	Nobres
5106000	6000	Nortelândia	1	51	5104	51015	MT	Nortelandia
5106109	6109	Nossa Senhora do Livramento	1	51	5104	51017	MT	Nossa Senhora do Livramento
5106158	6158	Nova Bandeirantes	1	51	5101	51002	MT	Nova Bandeirantes
5106208	6208	Nova Brasilândia	1	51	5101	51008	MT	Nova Brasilandia
5106216	6216	Nova Canaã do Norte	1	51	5101	51003	MT	Nova Canaa do Norte
5108808	8808	Nova Guarita	1	51	5101	51003	MT	Nova Guarita
5106182	6182	Nova Lacerda	1	51	5103	51012	MT	Nova Lacerda
5108857	8857	Nova Marilândia	1	51	5104	51015	MT	Nova Marilandia
5108907	8907	Nova Maringá	1	51	5101	51005	MT	Nova Maringa
5108956	8956	Nova Monte Verde	1	51	5101	51002	MT	Nova Monte Verde
5106224	6224	Nova Mutum	1	51	5101	51006	MT	Nova Mutum
5106174	6174	Nova Nazaré	1	51	5102	51010	MT	Nova Nazare
5106232	6232	Nova Olímpia	1	51	5103	51013	MT	Nova Olimpia
5106190	6190	Nova Santa Helena	1	51	5101	51007	MT	Nova Santa Helena
5106240	6240	Nova Ubiratã	1	51	5101	51006	MT	Nova Ubirata
5106257	6257	Nova Xavantina	1	51	5102	51010	MT	Nova Xavantina
5106273	6273	Novo Horizonte do Norte	1	51	5101	51005	MT	Novo Horizonte do Norte
5106265	6265	Novo Mundo	1	51	5101	51003	MT	Novo Mundo
5106315	6315	Novo Santo Antônio	1	51	5102	51009	MT	Novo Santo Antonio
5106281	6281	Novo São Joaquim	1	51	5102	51010	MT	Novo Sao Joaquim
5106299	6299	Paranaíta	1	51	5101	51002	MT	Paranaita
5106307	6307	Paranatinga	1	51	5101	51008	MT	Paranatinga
5106372	6372	Pedra Preta	1	51	5105	51021	MT	Pedra Preta
5106422	6422	Peixoto de Azevedo	1	51	5101	51003	MT	Peixoto de Azevedo
5106455	6455	Planalto da Serra	1	51	5101	51008	MT	Planalto da Serra
5106505	6505	Poconé	1	51	5104	51018	MT	Pocone
5106653	6653	Pontal do Araguaia	1	51	5105	51020	MT	Pontal do Araguaia
5106703	6703	Ponte Branca	1	51	5105	51020	MT	Ponte Branca
5106752	6752	Pontes e Lacerda	1	51	5103	51012	MT	Pontes e Lacerda
5106778	6778	Porto Alegre do Norte	1	51	5102	51009	MT	Porto Alegre do Norte
5106802	6802	Porto dos Gaúchos	1	51	5101	51005	MT	Porto dos Gauchos
5106828	6828	Porto Esperidião	1	51	5103	51014	MT	Porto Esperidiao
5106851	6851	Porto Estrela	1	51	5103	51013	MT	Porto Estrela
5107008	7008	Poxoréu	1	51	5105	51020	MT	Poxoreu
5107040	7040	Primavera do Leste	1	51	5105	51019	MT	Primavera do Leste
5107065	7065	Querência	1	51	5102	51010	MT	Querencia
5107156	7156	Reserva do Cabaçal	1	51	5103	51014	MT	Reserva do Cabacal
5107180	7180	Ribeirão Cascalheira	1	51	5102	51009	MT	Ribeirao Cascalheira
5107198	7198	Ribeirãozinho	1	51	5105	51020	MT	Ribeiraozinho
5107206	7206	Rio Branco	1	51	5103	51014	MT	Rio Branco
5107578	7578	Rondolândia	1	51	5101	51001	MT	Rondolandia
5107602	7602	Rondonópolis	1	51	5105	51021	MT	Rondonopolis
5107701	7701	Rosário Oeste	1	51	5104	51016	MT	Rosario Oeste
5107750	7750	Salto do Céu	1	51	5103	51014	MT	Salto do Ceu
5107248	7248	Santa Carmem	1	51	5101	51007	MT	Santa Carmem
5107743	7743	Santa Cruz do Xingu	1	51	5102	51009	MT	Santa Cruz do Xingu
5107768	7768	Santa Rita do Trivelato	1	51	5101	51006	MT	Santa Rita do Trivelato
5107776	7776	Santa Terezinha	1	51	5102	51009	MT	Santa Terezinha
5107263	7263	Santo Afonso	1	51	5104	51015	MT	Santo Afonso
5107792	7792	Santo Antônio do Leste	1	51	5102	51010	MT	Santo Antonio do Leste
5107800	7800	Santo Antônio do Leverger	1	51	5104	51017	MT	Santo Antonio do Leverger
5107859	7859	São Félix do Araguaia	1	51	5102	51009	MT	Sao Felix do Araguaia
5107297	7297	São José do Povo	1	51	5105	51021	MT	Sao Jose do Povo
5107305	7305	São José do Rio Claro	1	51	5101	51005	MT	Sao Jose do Rio Claro
5107354	7354	São José do Xingu	1	51	5102	51009	MT	Sao Jose do Xingu
5107107	7107	São José dos Quatro Marcos	1	51	5103	51014	MT	Sao Jose dos Quatro Marcos
5107404	7404	São Pedro da Cipa	1	51	5105	51021	MT	Sao Pedro da Cipa
5107875	7875	Sapezal	1	51	5101	51004	MT	Sapezal
5107883	7883	Serra Nova Dourada	1	51	5102	51009	MT	Serra Nova Dourada
5107909	7909	Sinop	1	51	5101	51007	MT	Sinop
5107925	7925	Sorriso	1	51	5101	51006	MT	Sorriso
5107941	7941	Tabaporã	1	51	5101	51005	MT	Tabapora
5107958	7958	Tangará da Serra	1	51	5103	51013	MT	Tangara da Serra
5108006	8006	Tapurah	1	51	5101	51006	MT	Tapurah
5108055	8055	Terra Nova do Norte	1	51	5101	51003	MT	Terra Nova do Norte
5108105	8105	Tesouro	1	51	5105	51020	MT	Tesouro
5108204	8204	Torixoréu	1	51	5105	51020	MT	Torixoreu
5108303	8303	União do Sul	1	51	5101	51007	MT	Uniao do Sul
5108352	8352	Vale de São Domingos	1	51	5103	51012	MT	Vale de Sao Domingos
5108402	8402	Várzea Grande	1	51	5104	51017	MT	Varzea Grande
5108501	8501	Vera	1	51	5101	51007	MT	Vera
5105507	5507	Vila Bela da Santíssima Trindade	1	51	5103	51012	MT	Vila Bela da Santissima Trindade
5108600	8600	Vila Rica	1	51	5102	51009	MT	Vila Rica
5200050	50	Abadia de Goiás	1	52	5203	52010	GO	Abadia de Goias
5200100	100	Abadiânia	1	52	5204	52012	GO	Abadiania
5200134	134	Acreúna	1	52	5205	52014	GO	Acreuna
5200159	159	Adelândia	1	52	5203	52009	GO	Adelandia
5200175	175	Água Fria de Goiás	1	52	5204	52012	GO	Agua Fria de Goias
5200209	209	Água Limpa	1	52	5205	52015	GO	Agua Limpa
5200258	258	Águas Lindas de Goiás	1	52	5204	52012	GO	Aguas Lindas de Goias
5200308	308	Alexânia	1	52	5204	52012	GO	Alexania
5200506	506	Aloândia	1	52	5205	52015	GO	Aloandia
5200555	555	Alto Horizonte	1	52	5202	52004	GO	Alto Horizonte
5200605	605	Alto Paraíso de Goiás	1	52	5202	52005	GO	Alto Paraiso de Goias
5200803	803	Alvorada do Norte	1	52	5204	52011	GO	Alvorada do Norte
5200829	829	Amaralina	1	52	5202	52004	GO	Amaralina
5200852	852	Americano do Brasil	1	52	5203	52009	GO	Americano do Brasil
5200902	902	Amorinópolis	1	52	5203	52008	GO	Amorinopolis
5201108	1108	Anápolis	1	52	5203	52007	GO	Anapolis
5201207	1207	Anhanguera	1	52	5205	52017	GO	Anhanguera
5201306	1306	Anicuns	1	52	5203	52009	GO	Anicuns
5201405	1405	Aparecida de Goiânia	1	52	5203	52010	GO	Aparecida de Goiania
5201454	1454	Aparecida do Rio Doce	1	52	5205	52013	GO	Aparecida do Rio Doce
5201504	1504	Aporé	1	52	5205	52013	GO	Apore
5201603	1603	Araçu	1	52	5203	52007	GO	Aracu
5201702	1702	Aragarças	1	52	5201	52003	GO	Aragarcas
5201801	1801	Aragoiânia	1	52	5203	52010	GO	Aragoiania
5202155	2155	Araguapaz	1	52	5201	52002	GO	Araguapaz
5202353	2353	Arenópolis	1	52	5201	52003	GO	Arenopolis
5202502	2502	Aruanã	1	52	5201	52002	GO	Aruana
5202601	2601	Aurilândia	1	52	5203	52009	GO	Aurilandia
5202809	2809	Avelinópolis	1	52	5203	52009	GO	Avelinopolis
5203104	3104	Baliza	1	52	5201	52003	GO	Baliza
5203203	3203	Barro Alto	1	52	5203	52006	GO	Barro Alto
5203302	3302	Bela Vista de Goiás	1	52	5203	52010	GO	Bela Vista de Goias
5203401	3401	Bom Jardim de Goiás	1	52	5201	52003	GO	Bom Jardim de Goias
5203500	3500	Bom Jesus de Goiás	1	52	5205	52015	GO	Bom Jesus de Goias
5203559	3559	Bonfinópolis	1	52	5203	52010	GO	Bonfinopolis
5203575	3575	Bonópolis	1	52	5202	52004	GO	Bonopolis
5203609	3609	Brazabrantes	1	52	5203	52007	GO	Brazabrantes
5203807	3807	Britânia	1	52	5201	52002	GO	Britania
5203906	3906	Buriti Alegre	1	52	5205	52015	GO	Buriti Alegre
5203939	3939	Buriti de Goiás	1	52	5203	52009	GO	Buriti de Goias
5203962	3962	Buritinópolis	1	52	5204	52011	GO	Buritinopolis
5204003	4003	Cabeceiras	1	52	5204	52012	GO	Cabeceiras
5204102	4102	Cachoeira Alta	1	52	5205	52018	GO	Cachoeira Alta
5204201	4201	Cachoeira de Goiás	1	52	5203	52008	GO	Cachoeira de Goias
5204250	4250	Cachoeira Dourada	1	52	5205	52015	GO	Cachoeira Dourada
5204300	4300	Caçu	1	52	5205	52018	GO	Cacu
5204409	4409	Caiapônia	1	52	5205	52013	GO	Caiaponia
5204508	4508	Caldas Novas	1	52	5205	52015	GO	Caldas Novas
5204557	4557	Caldazinha	1	52	5203	52010	GO	Caldazinha
5204607	4607	Campestre de Goiás	1	52	5205	52014	GO	Campestre de Goias
5204656	4656	Campinaçu	1	52	5202	52004	GO	Campinacu
5204706	4706	Campinorte	1	52	5202	52004	GO	Campinorte
5204805	4805	Campo Alegre de Goiás	1	52	5205	52017	GO	Campo Alegre de Goias
5204854	4854	Campo Limpo de Goiás	1	52	5203	52007	GO	Campo Limpo de Goias
5204904	4904	Campos Belos	1	52	5202	52005	GO	Campos Belos
5204953	4953	Campos Verdes	1	52	5202	52004	GO	Campos Verdes
5205000	5000	Carmo do Rio Verde	1	52	5203	52006	GO	Carmo do Rio Verde
5205059	5059	Castelândia	1	52	5205	52013	GO	Castelandia
5205109	5109	Catalão	1	52	5205	52017	GO	Catalao
5205208	5208	Caturaí	1	52	5203	52007	GO	Caturai
5205307	5307	Cavalcante	1	52	5202	52005	GO	Cavalcante
5205406	5406	Ceres	1	52	5203	52006	GO	Ceres
5205455	5455	Cezarina	1	52	5205	52014	GO	Cezarina
5205471	5471	Chapadão do Céu	1	52	5205	52013	GO	Chapadao do Ceu
5205497	5497	Cidade Ocidental	1	52	5204	52012	GO	Cidade Ocidental
5205513	5513	Cocalzinho de Goiás	1	52	5204	52012	GO	Cocalzinho de Goias
5205521	5521	Colinas do Sul	1	52	5202	52005	GO	Colinas do Sul
5205703	5703	Córrego do Ouro	1	52	5203	52008	GO	Corrego do Ouro
5205802	5802	Corumbá de Goiás	1	52	5204	52012	GO	Corumba de Goias
5205901	5901	Corumbaíba	1	52	5205	52017	GO	Corumbaiba
5206206	6206	Cristalina	1	52	5204	52012	GO	Cristalina
5206305	6305	Cristianópolis	1	52	5205	52016	GO	Cristianopolis
5206404	6404	Crixás	1	52	5201	52001	GO	Crixas
5206503	6503	Cromínia	1	52	5205	52015	GO	Crominia
5206602	6602	Cumari	1	52	5205	52017	GO	Cumari
5206701	6701	Damianópolis	1	52	5204	52011	GO	Damianopolis
5206800	6800	Damolândia	1	52	5203	52007	GO	Damolandia
5206909	6909	Davinópolis	1	52	5205	52017	GO	Davinopolis
5207105	7105	Diorama	1	52	5201	52003	GO	Diorama
5208301	8301	Divinópolis de Goiás	1	52	5204	52011	GO	Divinopolis de Goias
5207253	7253	Doverlândia	1	52	5205	52013	GO	Doverlandia
5207352	7352	Edealina	1	52	5205	52014	GO	Edealina
5207402	7402	Edéia	1	52	5205	52014	GO	Edeia
5207501	7501	Estrela do Norte	1	52	5202	52004	GO	Estrela do Norte
5207535	7535	Faina	1	52	5201	52002	GO	Faina
5207600	7600	Fazenda Nova	1	52	5203	52008	GO	Fazenda Nova
5207808	7808	Firminópolis	1	52	5203	52009	GO	Firminopolis
5207907	7907	Flores de Goiás	1	52	5204	52011	GO	Flores de Goias
5208004	8004	Formosa	1	52	5204	52012	GO	Formosa
5208103	8103	Formoso	1	52	5202	52004	GO	Formoso
5208152	8152	Gameleira de Goiás	1	52	5205	52016	GO	Gameleira de Goias
5208400	8400	Goianápolis	1	52	5203	52010	GO	Goianapolis
5208509	8509	Goiandira	1	52	5205	52017	GO	Goiandira
5208608	8608	Goianésia	1	52	5203	52006	GO	Goianesia
5208707	8707	Goiânia	1	52	5203	52010	GO	Goiania
5208806	8806	Goianira	1	52	5203	52010	GO	Goianira
5208905	8905	Goiás	1	52	5201	52002	GO	Goias
5209101	9101	Goiatuba	1	52	5205	52015	GO	Goiatuba
5209150	9150	Gouvelândia	1	52	5205	52018	GO	Gouvelandia
5209200	9200	Guapó	1	52	5203	52010	GO	Guapo
5209291	9291	Guaraíta	1	52	5203	52006	GO	Guaraita
5209408	9408	Guarani de Goiás	1	52	5204	52011	GO	Guarani de Goias
5209457	9457	Guarinos	1	52	5203	52006	GO	Guarinos
5209606	9606	Heitoraí	1	52	5203	52007	GO	Heitorai
5209705	9705	Hidrolândia	1	52	5203	52010	GO	Hidrolandia
5209804	9804	Hidrolina	1	52	5203	52006	GO	Hidrolina
5209903	9903	Iaciara	1	52	5204	52011	GO	Iaciara
5209937	9937	Inaciolândia	1	52	5205	52015	GO	Inaciolandia
5209952	9952	Indiara	1	52	5205	52014	GO	Indiara
5210000	10000	Inhumas	1	52	5203	52007	GO	Inhumas
5210109	10109	Ipameri	1	52	5205	52017	GO	Ipameri
5210158	10158	Ipiranga de Goiás	1	52	5203	52006	GO	Ipiranga de Goias
5210208	10208	Iporá	1	52	5203	52008	GO	Ipora
5210307	10307	Israelândia	1	52	5203	52008	GO	Israelandia
5210406	10406	Itaberaí	1	52	5203	52007	GO	Itaberai
5210562	10562	Itaguari	1	52	5203	52007	GO	Itaguari
5210604	10604	Itaguaru	1	52	5203	52007	GO	Itaguaru
5210802	10802	Itajá	1	52	5205	52018	GO	Itaja
5210901	10901	Itapaci	1	52	5203	52006	GO	Itapaci
5211008	11008	Itapirapuã	1	52	5201	52002	GO	Itapirapua
5211206	11206	Itapuranga	1	52	5203	52006	GO	Itapuranga
5211305	11305	Itarumã	1	52	5205	52018	GO	Itaruma
5211404	11404	Itauçu	1	52	5203	52007	GO	Itaucu
5211503	11503	Itumbiara	1	52	5205	52015	GO	Itumbiara
5211602	11602	Ivolândia	1	52	5203	52008	GO	Ivolandia
5211701	11701	Jandaia	1	52	5205	52014	GO	Jandaia
5211800	11800	Jaraguá	1	52	5203	52007	GO	Jaragua
5211909	11909	Jataí	1	52	5205	52013	GO	Jatai
5212006	12006	Jaupaci	1	52	5203	52008	GO	Jaupaci
5212055	12055	Jesúpolis	1	52	5203	52007	GO	Jesupolis
5212105	12105	Joviânia	1	52	5205	52015	GO	Joviania
5212204	12204	Jussara	1	52	5201	52002	GO	Jussara
5212253	12253	Lagoa Santa	1	52	5205	52018	GO	Lagoa Santa
5212303	12303	Leopoldo de Bulhões	1	52	5203	52010	GO	Leopoldo de Bulhoes
5212501	12501	Luziânia	1	52	5204	52012	GO	Luziania
5212600	12600	Mairipotaba	1	52	5205	52015	GO	Mairipotaba
5212709	12709	Mambaí	1	52	5204	52011	GO	Mambai
5212808	12808	Mara Rosa	1	52	5202	52004	GO	Mara Rosa
5212907	12907	Marzagão	1	52	5205	52015	GO	Marzagao
5212956	12956	Matrinchã	1	52	5201	52002	GO	Matrincha
5213004	13004	Maurilândia	1	52	5205	52013	GO	Maurilandia
5213053	13053	Mimoso de Goiás	1	52	5204	52012	GO	Mimoso de Goias
5213087	13087	Minaçu	1	52	5202	52004	GO	Minacu
5213103	13103	Mineiros	1	52	5205	52013	GO	Mineiros
5213400	13400	Moiporá	1	52	5203	52008	GO	Moipora
5213509	13509	Monte Alegre de Goiás	1	52	5202	52005	GO	Monte Alegre de Goias
5213707	13707	Montes Claros de Goiás	1	52	5201	52003	GO	Montes Claros de Goias
5213756	13756	Montividiu	1	52	5205	52013	GO	Montividiu
5213772	13772	Montividiu do Norte	1	52	5202	52004	GO	Montividiu do Norte
5213806	13806	Morrinhos	1	52	5205	52015	GO	Morrinhos
5213855	13855	Morro Agudo de Goiás	1	52	5203	52006	GO	Morro Agudo de Goias
5213905	13905	Mossâmedes	1	52	5203	52009	GO	Mossamedes
5214002	14002	Mozarlândia	1	52	5201	52001	GO	Mozarlandia
5214051	14051	Mundo Novo	1	52	5201	52001	GO	Mundo Novo
5214101	14101	Mutunópolis	1	52	5202	52004	GO	Mutunopolis
5214408	14408	Nazário	1	52	5203	52009	GO	Nazario
5214507	14507	Nerópolis	1	52	5203	52010	GO	Neropolis
5214606	14606	Niquelândia	1	52	5202	52004	GO	Niquelandia
5214705	14705	Nova América	1	52	5203	52006	GO	Nova America
5214804	14804	Nova Aurora	1	52	5205	52017	GO	Nova Aurora
5214838	14838	Nova Crixás	1	52	5201	52001	GO	Nova Crixas
5214861	14861	Nova Glória	1	52	5203	52006	GO	Nova Gloria
5214879	14879	Nova Iguaçu de Goiás	1	52	5202	52004	GO	Nova Iguacu de Goias
5214903	14903	Nova Roma	1	52	5202	52005	GO	Nova Roma
5215009	15009	Nova Veneza	1	52	5203	52007	GO	Nova Veneza
5215207	15207	Novo Brasil	1	52	5203	52008	GO	Novo Brasil
5215231	15231	Novo Gama	1	52	5204	52012	GO	Novo Gama
5215256	15256	Novo Planalto	1	52	5201	52001	GO	Novo Planalto
5215306	15306	Orizona	1	52	5205	52016	GO	Orizona
5215405	15405	Ouro Verde de Goiás	1	52	5203	52007	GO	Ouro Verde de Goias
5215504	15504	Ouvidor	1	52	5205	52017	GO	Ouvidor
5215603	15603	Padre Bernardo	1	52	5204	52012	GO	Padre Bernardo
5215652	15652	Palestina de Goiás	1	52	5205	52013	GO	Palestina de Goias
5215702	15702	Palmeiras de Goiás	1	52	5205	52014	GO	Palmeiras de Goias
5215801	15801	Palmelo	1	52	5205	52016	GO	Palmelo
5215900	15900	Palminópolis	1	52	5205	52014	GO	Palminopolis
5216007	16007	Panamá	1	52	5205	52015	GO	Panama
5216304	16304	Paranaiguara	1	52	5205	52018	GO	Paranaiguara
5216403	16403	Paraúna	1	52	5205	52014	GO	Parauna
5216452	16452	Perolândia	1	52	5205	52013	GO	Perolandia
5216809	16809	Petrolina de Goiás	1	52	5203	52007	GO	Petrolina de Goias
5216908	16908	Pilar de Goiás	1	52	5203	52006	GO	Pilar de Goias
5217104	17104	Piracanjuba	1	52	5205	52015	GO	Piracanjuba
5217203	17203	Piranhas	1	52	5201	52003	GO	Piranhas
5217302	17302	Pirenópolis	1	52	5204	52012	GO	Pirenopolis
5217401	17401	Pires do Rio	1	52	5205	52016	GO	Pires do Rio
5217609	17609	Planaltina	1	52	5204	52012	GO	Planaltina
5217708	17708	Pontalina	1	52	5205	52015	GO	Pontalina
5218003	18003	Porangatu	1	52	5202	52004	GO	Porangatu
5218052	18052	Porteirão	1	52	5205	52015	GO	Porteirao
5218102	18102	Portelândia	1	52	5205	52013	GO	Portelandia
5218300	18300	Posse	1	52	5204	52011	GO	Posse
5218391	18391	Professor Jamil	1	52	5205	52015	GO	Professor Jamil
5218508	18508	Quirinópolis	1	52	5205	52018	GO	Quirinopolis
5218607	18607	Rialma	1	52	5203	52006	GO	Rialma
5218706	18706	Rianápolis	1	52	5203	52006	GO	Rianapolis
5218789	18789	Rio Quente	1	52	5205	52015	GO	Rio Quente
5218805	18805	Rio Verde	1	52	5205	52013	GO	Rio Verde
5218904	18904	Rubiataba	1	52	5203	52006	GO	Rubiataba
5219001	19001	Sanclerlândia	1	52	5203	52009	GO	Sanclerlandia
5219100	19100	Santa Bárbara de Goiás	1	52	5203	52009	GO	Santa Barbara de Goias
5219209	19209	Santa Cruz de Goiás	1	52	5205	52016	GO	Santa Cruz de Goias
5219258	19258	Santa Fé de Goiás	1	52	5201	52002	GO	Santa Fe de Goias
5219308	19308	Santa Helena de Goiás	1	52	5205	52013	GO	Santa Helena de Goias
5219357	19357	Santa Isabel	1	52	5203	52006	GO	Santa Isabel
5219407	19407	Santa Rita do Araguaia	1	52	5205	52013	GO	Santa Rita do Araguaia
5219456	19456	Santa Rita do Novo Destino	1	52	5203	52006	GO	Santa Rita do Novo Destino
5219506	19506	Santa Rosa de Goiás	1	52	5203	52007	GO	Santa Rosa de Goias
5219605	19605	Santa Tereza de Goiás	1	52	5202	52004	GO	Santa Tereza de Goias
5219704	19704	Santa Terezinha de Goiás	1	52	5202	52004	GO	Santa Terezinha de Goias
5219712	19712	Santo Antônio da Barra	1	52	5205	52013	GO	Santo Antonio da Barra
5219738	19738	Santo Antônio de Goiás	1	52	5203	52010	GO	Santo Antonio de Goias
5219753	19753	Santo Antônio do Descoberto	1	52	5204	52012	GO	Santo Antonio do Descoberto
5219803	19803	São Domingos	1	52	5204	52011	GO	Sao Domingos
5219902	19902	São Francisco de Goiás	1	52	5203	52007	GO	Sao Francisco de Goias
5220058	20058	São João da Paraúna	1	52	5205	52014	GO	Sao Joao da Parauna
5220009	20009	São João d'Aliança	1	52	5202	52005	GO	Sao Joao d'Alianca
5220108	20108	São Luís de Montes Belos	1	52	5203	52009	GO	Sao Luis de Montes Belos
5220157	20157	São Luiz do Norte	1	52	5203	52006	GO	Sao Luiz do Norte
5220207	20207	São Miguel do Araguaia	1	52	5201	52001	GO	Sao Miguel do Araguaia
5220264	20264	São Miguel do Passa Quatro	1	52	5205	52016	GO	Sao Miguel do Passa Quatro
5220280	20280	São Patrício	1	52	5203	52006	GO	Sao Patricio
5220405	20405	São Simão	1	52	5205	52018	GO	Sao Simao
5220454	20454	Senador Canedo	1	52	5203	52010	GO	Senador Canedo
5220504	20504	Serranópolis	1	52	5205	52013	GO	Serranopolis
5220603	20603	Silvânia	1	52	5205	52016	GO	Silvania
5220686	20686	Simolândia	1	52	5204	52011	GO	Simolandia
5220702	20702	Sítio d'Abadia	1	52	5204	52011	GO	Sitio d'Abadia
5221007	21007	Taquaral de Goiás	1	52	5203	52007	GO	Taquaral de Goias
5221080	21080	Teresina de Goiás	1	52	5202	52005	GO	Teresina de Goias
5221197	21197	Terezópolis de Goiás	1	52	5203	52010	GO	Terezopolis de Goias
5221304	21304	Três Ranchos	1	52	5205	52017	GO	Tres Ranchos
5221403	21403	Trindade	1	52	5203	52010	GO	Trindade
5221452	21452	Trombas	1	52	5202	52004	GO	Trombas
5221502	21502	Turvânia	1	52	5203	52009	GO	Turvania
5221551	21551	Turvelândia	1	52	5205	52014	GO	Turvelandia
5221577	21577	Uirapuru	1	52	5201	52001	GO	Uirapuru
5221601	21601	Uruaçu	1	52	5202	52004	GO	Uruacu
5221700	21700	Uruana	1	52	5203	52006	GO	Uruana
5221809	21809	Urutaí	1	52	5205	52016	GO	Urutai
5221858	21858	Valparaíso de Goiás	1	52	5204	52012	GO	Valparaiso de Goias
5221908	21908	Varjão	1	52	5205	52014	GO	Varjao
5222005	22005	Vianópolis	1	52	5205	52016	GO	Vianopolis
5222054	22054	Vicentinópolis	1	52	5205	52015	GO	Vicentinopolis
5222203	22203	Vila Boa	1	52	5204	52012	GO	Vila Boa
5222302	22302	Vila Propício	1	52	5204	52012	GO	Vila Propicio
5300108	108	Brasília	1	53	5301	53001	DF	Brasilia
\.


--
-- Data for Name: estado; Type: TABLE DATA; Schema: ibge; Owner: postgres
--

COPY estado (codigo, nome, version, uf) FROM stdin;
11	Rondônia	0	RO
12	Acre	0	AC
13	Amazonas	0	AM
14	Roraima	0	RR
15	Pará	0	PA
16	Amapá	0	AP
17	Tocantins	0	TO
21	Maranhão	0	MA
22	Piauí	0	PI
23	Ceará	0	CE
24	Rio Grande do Norte	0	RN
25	Paraíba	0	PB
26	Pernambuco	0	PE
27	Alagoas	0	AL
28	Sergipe	0	SE
29	Bahia	0	BA
31	Minas Gerais	0	MG
32	Espírito Santo	0	ES
33	Rio de Janeiro	0	RJ
35	São Paulo	0	SP
41	Paraná	0	PR
42	Santa Catarina	0	SC
43	Rio Grande do Sul	0	RS
50	Mato Grosso do Sul	0	MS
51	Mato Grosso	0	MT
52	Goiás	0	GO
53	Distrito Federal	0	DF
\.


--
-- Data for Name: meso_regiao; Type: TABLE DATA; Schema: ibge; Owner: postgres
--

COPY meso_regiao (codigo_completo, codigo, nome, version, estado_codigo_completo) FROM stdin;
1102	2	Leste Rondoniense	0	11
1101	1	Madeira-Guaporé	0	11
1202	2	Vale do Acre	0	12
1201	1	Vale do Juruá	0	12
1303	3	Centro Amazonense	0	13
1302	2	Sudoeste Amazonense	0	13
1304	4	Sul Amazonense	0	13
1301	1	Norte Amazonense	0	13
1401	1	Norte de Roraima	0	14
1402	2	Sul de Roraima	0	14
1504	4	Nordeste Paraense	0	15
1506	6	Sudeste Paraense	0	15
1502	2	Marajó	0	15
1501	1	Baixo Amazonas	0	15
1505	5	Sudoeste Paraense	0	15
1503	3	Metropolitana de Belém	0	15
1601	1	Norte do Amapá	0	16
1602	2	Sul do Amapá	0	16
1701	1	Ocidental do Tocantins	0	17
1702	2	Oriental do Tocantins	0	17
2102	2	Oeste Maranhense	0	21
2104	4	Leste Maranhense	0	21
2101	1	Norte Maranhense	0	21
2105	5	Sul Maranhense	0	21
2103	3	Centro Maranhense	0	21
2204	4	Sudeste Piauiense	0	22
2202	2	Centro-Norte Piauiense	0	22
2203	3	Sudoeste Piauiense	0	22
2201	1	Norte Piauiense	0	22
2307	7	Sul Cearense	0	23
2302	2	Norte Cearense	0	23
2301	1	Noroeste Cearense	0	23
2304	4	Sertões Cearenses	0	23
2305	5	Jaguaribe	0	23
2306	6	Centro-Sul Cearense	0	23
2303	3	Metropolitana de Fortaleza	0	23
2402	2	Central Potiguar	0	24
2401	1	Oeste Potiguar	0	24
2404	4	Leste Potiguar	0	24
2403	3	Agreste Potiguar	0	24
2501	1	Sertão Paraibano	0	25
2503	3	Agreste Paraibano	0	25
2502	2	Borborema	0	25
2504	4	Mata Paraibana	0	25
2605	5	Metropolitana de Recife	0	26
2601	1	Sertão Pernambucano	0	26
2602	2	São Francisco Pernambucano	0	26
2603	3	Agreste Pernambucano	0	26
2604	4	Mata Pernambucana	0	26
2701	1	Sertão Alagoano	0	27
2703	3	Leste Alagoano	0	27
2702	2	Agreste Alagoano	0	27
2803	3	Leste Sergipano	0	28
2802	2	Agreste Sergipano	0	28
2801	1	Sertão Sergipano	0	28
2906	6	Centro Sul Baiano	0	29
2902	2	Vale São-Franciscano da Bahia	0	29
2904	4	Nordeste Baiano	0	29
2903	3	Centro Norte Baiano	0	29
2907	7	Sul Baiano	0	29
2905	5	Metropolitana de Salvador	0	29
2901	1	Extremo Oeste Baiano	0	29
3105	5	Triângulo Mineiro/Alto Paranaíba	0	31
3106	6	Central Mineira	0	31
3112	12	Zona da Mata	0	31
3108	8	Vale do Rio Doce	0	31
3109	9	Oeste de Minas	0	31
3104	4	Vale do Mucuri	0	31
3102	2	Norte de Minas	0	31
3110	10	Sul/Sudoeste de Minas	0	31
3111	11	Campo das Vertentes	0	31
3103	3	Jequitinhonha	0	31
3107	7	Metropolitana de Belo Horizonte	0	31
3101	1	Noroeste de Minas	0	31
3203	3	Central Espírito-santense	0	32
3201	1	Noroeste Espírito-santense	0	32
3204	4	Sul Espírito-santense	0	32
3202	2	Litoral Norte Espírito-santense	0	32
3305	5	Sul Fluminense	0	33
3301	1	Noroeste Fluminense	0	33
3304	4	Baixadas	0	33
3303	3	Centro Fluminense	0	33
3306	6	Metropolitana do Rio de Janeiro	0	33
3302	2	Norte Fluminense	0	33
3508	8	Presidente Prudente	0	35
3501	1	São José do Rio Preto	0	35
3507	7	Campinas	0	35
3504	4	Bauru	0	35
3506	6	Piracicaba	0	35
3511	11	Itapetininga	0	35
3502	2	Ribeirão Preto	0	35
3503	3	Araçatuba	0	35
3512	12	Macro Metropolitana Paulista	0	35
3509	9	Marília	0	35
3505	5	Araraquara	0	35
3513	13	Vale do Paraíba Paulista	0	35
3515	15	Metropolitana de São Paulo	0	35
3510	10	Assis	0	35
3514	14	Litoral Sul Paulista	0	35
4104	4	Norte Pioneiro Paranaense	0	41
4110	10	Metropolitana de Curitiba	0	41
4102	2	Centro Ocidental Paranaense	0	41
4101	1	Noroeste Paranaense	0	41
4103	3	Norte Central Paranaense	0	41
4107	7	Sudoeste Paranaense	0	41
4106	6	Oeste Paranaense	0	41
4109	9	Sudeste Paranaense	0	41
4105	5	Centro Oriental Paranaense	0	41
4108	8	Centro-Sul Paranaense	0	41
4203	3	Serrana	0	42
4201	1	Oeste Catarinense	0	42
4204	4	Vale do Itajaí	0	42
4205	5	Grande Florianópolis	0	42
4202	2	Norte Catarinense	0	42
4206	6	Sul Catarinense	0	42
4306	6	Sudoeste Rio-grandense	0	43
4301	1	Noroeste Rio-grandense	0	43
4303	3	Centro Ocidental Rio-grandense	0	43
4305	5	Metropolitana de Porto Alegre	0	43
4307	7	Sudeste Rio-grandense	0	43
4302	2	Nordeste Rio-grandense	0	43
4304	4	Centro Oriental Rio-grandense	0	43
5003	3	Leste de Mato Grosso do Sul	0	50
5002	2	Centro Norte de Mato Grosso do Sul	0	50
5004	4	Sudoeste de Mato Grosso do Sul	0	50
5001	1	Pantanais Sul Mato-grossense	0	50
5104	4	Centro-Sul Mato-grossense	0	51
5102	2	Nordeste Mato-grossense	0	51
5101	1	Norte Mato-grossense	0	51
5105	5	Sudeste Mato-grossense	0	51
5103	3	Sudoeste Mato-grossense	0	51
5203	3	Centro Goiano	0	52
5204	4	Leste Goiano	0	52
5205	5	Sul Goiano	0	52
5202	2	Norte Goiano	0	52
5201	1	Noroeste Goiano	0	52
5301	1	Distrito Federal	0	53
\.


--
-- Data for Name: micro_regiao; Type: TABLE DATA; Schema: ibge; Owner: postgres
--

COPY micro_regiao (codigo_completo, codigo, nome, version, estado_codigo_completo, meso_regiao_codigo_completo) FROM stdin;
11006	6	Cacoal	0	11	1102
11003	3	Ariquemes	0	11	1102
11005	5	Alvorada D'Oeste	0	11	1102
11001	1	Porto Velho	0	11	1101
11008	8	Colorado do Oeste	0	11	1102
11007	7	Vilhena	0	11	1102
11002	2	Guajará-Mirim	0	11	1101
11004	4	Ji-Paraná	0	11	1102
12004	4	Rio Branco	0	12	1202
12005	5	Brasiléia	0	12	1202
12001	1	Cruzeiro do Sul	0	12	1201
12002	2	Tarauacá	0	12	1201
12003	3	Sena Madureira	0	12	1202
13005	5	Tefé	0	13	1303
13003	3	Alto Solimões	0	13	1302
13006	6	Coari	0	13	1303
13013	13	Madeira	0	13	1304
13007	7	Manaus	0	13	1303
13001	1	Rio Negro	0	13	1301
13010	10	Parintins	0	13	1303
13011	11	Boca do Acre	0	13	1304
13012	12	Purus	0	13	1304
13004	4	Juruá	0	13	1302
13009	9	Itacoatiara	0	13	1303
13002	2	Japurá	0	13	1301
13008	8	Rio Preto da Eva	0	13	1303
14001	1	Boa Vista	0	14	1401
14002	2	Nordeste de Roraima	0	14	1401
14003	3	Caracaraí	0	14	1402
14004	4	Sudeste de Roraima	0	14	1402
15011	11	Cametá	0	15	1504
15017	17	Paragominas	0	15	1506
15012	12	Tomé-Açu	0	15	1504
15005	5	Furos de Breves	0	15	1502
15019	19	Parauapebas	0	15	1506
15002	2	Santarém	0	15	1501
15003	3	Almeirim	0	15	1501
15015	15	Altamira	0	15	1505
15007	7	Belém	0	15	1503
15010	10	Bragantina	0	15	1504
15013	13	Guamá	0	15	1504
15014	14	Itaituba	0	15	1505
15004	4	Portel	0	15	1502
15018	18	São Félix do Xingu	0	15	1506
15020	20	Marabá	0	15	1506
15016	16	Tucuruí	0	15	1506
15008	8	Castanhal	0	15	1503
15006	6	Arari	0	15	1502
15009	9	Salgado	0	15	1504
15022	22	Conceição do Araguaia	0	15	1506
15001	1	Óbidos	0	15	1501
15021	21	Redenção	0	15	1506
16002	2	Amapá	0	16	1601
16001	1	Oiapoque	0	16	1601
16003	3	Macapá	0	16	1602
16004	4	Mazagão	0	16	1602
17003	3	Miracema do Tocantins	0	17	1701
17001	1	Bico do Papagaio	0	17	1701
17005	5	Gurupi	0	17	1701
17008	8	Dianópolis	0	17	1702
17006	6	Porto Nacional	0	17	1702
17002	2	Araguaína	0	17	1701
17004	4	Rio Formoso	0	17	1701
17007	7	Jalapão	0	17	1702
21009	9	Imperatriz	0	21	2102
21016	16	Coelho Neto	0	21	2104
21013	13	Baixo Parnaíba Maranhense	0	21	2104
21001	1	Litoral Ocidental Maranhense	0	21	2101
21008	8	Pindaré	0	21	2102
21015	15	Codó	0	21	2104
21020	20	Gerais de Balsas	0	21	2105
21007	7	Gurupi	0	21	2102
21005	5	Baixada Maranhense	0	21	2101
21014	14	Chapadinha	0	21	2104
21011	11	Alto Mearim e Grajaú	0	21	2103
21003	3	Rosário	0	21	2101
21010	10	Médio Mearim	0	21	2103
21018	18	Chapadas do Alto Itapecuru	0	21	2104
21004	4	Lençóis Maranhenses	0	21	2101
21021	21	Chapadas das Mangabeiras	0	21	2105
21017	17	Caxias	0	21	2104
21019	19	Porto Franco	0	21	2105
21006	6	Itapecuru Mirim	0	21	2101
21012	12	Presidente Dutra	0	21	2103
21002	2	Aglomeração Urbana de São Luís	0	21	2101
22015	15	Alto Médio Canindé	0	22	2204
22005	5	Médio Parnaíba Piauiense	0	22	2202
22014	14	Pio IX	0	22	2204
22004	4	Campo Maior	0	22	2202
22003	3	Teresina	0	22	2202
22010	10	Alto Médio Gurguéia	0	22	2203
22011	11	São Raimundo Nonato	0	22	2203
22008	8	Bertolínia	0	22	2203
22006	6	Valença do Piauí	0	22	2202
22013	13	Picos	0	22	2204
22012	12	Chapadas do Extremo Sul Piauiense	0	22	2203
22007	7	Alto Parnaíba Piauiense	0	22	2203
22001	1	Baixo Parnaíba Piauiense	0	22	2201
22002	2	Litoral Piauiense	0	22	2201
22009	9	Floriano	0	22	2203
23033	33	Brejo Santo	0	23	2307
23013	13	Baturité	0	23	2302
23001	1	Litoral de Camocim e Acaraú	0	23	2301
23021	21	Sertão de Senador Pompeu	0	23	2304
23020	20	Sertão de Inhamuns	0	23	2304
23004	4	Meruoca	0	23	2301
23030	30	Caririaçu	0	23	2307
23023	23	Baixo Jaguaribe	0	23	2305
23008	8	Itapipoca	0	23	2302
23027	27	Várzea Alegre	0	23	2306
23011	11	Médio Curu	0	23	2302
23016	16	Fortaleza	0	23	2303
23022	22	Litoral de Aracati	0	23	2305
23018	18	Sertão de Cratéus	0	23	2304
23029	29	Chapada do Araripe	0	23	2307
23031	31	Barro	0	23	2307
23028	28	Lavras da Mangabeira	0	23	2306
23019	19	Sertão de Quixeramobim	0	23	2304
23032	32	Cariri	0	23	2307
23014	14	Chorozinho	0	23	2302
23015	15	Cascavel	0	23	2302
23012	12	Canindé	0	23	2302
23005	5	Sobral	0	23	2301
23002	2	Ibiapaba	0	23	2301
23007	7	Santa Quitéria	0	23	2301
23026	26	Iguatu	0	23	2306
23003	3	Coreaú	0	23	2301
23025	25	Serra do Pereiro	0	23	2305
23017	17	Pacajus	0	23	2303
23006	6	Ipu	0	23	2301
23010	10	Uruburetama	0	23	2302
23024	24	Médio Jaguaribe	0	23	2305
23009	9	Baixo Curu	0	23	2302
24012	12	Seridó Oriental	0	24	2402
24004	4	Vale do Açu	0	24	2401
24009	9	Angicos	0	24	2402
24005	5	Serra de São Miguel	0	24	2401
24006	6	Pau dos Ferros	0	24	2401
24007	7	Umarizal	0	24	2401
24002	2	Chapada do Apodi	0	24	2401
24001	1	Mossoró	0	24	2401
24019	19	Litoral Sul	0	24	2404
24003	3	Médio Oeste	0	24	2401
24014	14	Borborema Potiguar	0	24	2403
24013	13	Baixa Verde	0	24	2403
24010	10	Serra de Santana	0	24	2402
24015	15	Agreste Potiguar	0	24	2403
24008	8	Macau	0	24	2402
24011	11	Seridó Ocidental	0	24	2402
24017	17	Macaíba	0	24	2404
24018	18	Natal	0	24	2404
24016	16	Litoral Nordeste	0	24	2404
25007	7	Serra do Teixeira	0	25	2501
25005	5	Piancó	0	25	2501
25015	15	Brejo Paraibano	0	25	2503
25016	16	Guarabira	0	25	2503
25011	11	Cariri Oriental	0	25	2502
25012	12	Curimataú Ocidental	0	25	2503
25023	23	Litoral Sul	0	25	2504
25010	10	Cariri Ocidental	0	25	2502
25003	3	Sousa	0	25	2501
25013	13	Curimataú Oriental	0	25	2503
25004	4	Patos	0	25	2501
25014	14	Esperança	0	25	2503
25019	19	Umbuzeiro	0	25	2503
25020	20	Litoral Norte	0	25	2504
25009	9	Seridó Oriental Paraibano	0	25	2502
25022	22	João Pessoa	0	25	2504
25001	1	Catolé do Rocha	0	25	2501
25002	2	Cajazeiras	0	25	2501
25006	6	Itaporanga	0	25	2501
25017	17	Campina Grande	0	25	2503
25018	18	Itabaiana	0	25	2503
25021	21	Sapé	0	25	2504
25008	8	Seridó Ocidental Paraibano	0	25	2502
26017	17	Recife	0	26	2605
26003	3	Pajeú	0	26	2601
26005	5	Petrolina	0	26	2602
26012	12	Brejo Pernambucano	0	26	2603
26015	15	Mata Meridional Pernambucana	0	26	2604
26007	7	Vale do Ipanema	0	26	2603
26008	8	Vale do Ipojuca	0	26	2603
26013	13	Mata Setentrional Pernambucana	0	26	2604
26011	11	Garanhuns	0	26	2603
26016	16	Itamaracá	0	26	2605
26001	1	Araripina	0	26	2601
26004	4	Sertão do Moxotó	0	26	2601
26006	6	Itaparica	0	26	2602
26010	10	Médio Capibaribe	0	26	2603
26018	18	Suape	0	26	2605
26009	9	Alto Capibaribe	0	26	2603
26002	2	Salgueiro	0	26	2601
26014	14	Vitória de Santo Antão	0	26	2604
26019	19	Fernando de Noronha	0	26	2605
27001	1	Serrana do Sertão Alagoano	0	27	2701
27012	12	São Miguel dos Campos	0	27	2703
27006	6	Arapiraca	0	27	2702
27009	9	Mata Alagoana	0	27	2703
27011	11	Maceió	0	27	2703
27004	4	Batalha	0	27	2701
27005	5	Palmeira dos Índios	0	27	2702
27003	3	Santana do Ipanema	0	27	2701
27008	8	Serrana dos Quilombos	0	27	2703
27002	2	Alagoana do Sertão do São Francisco	0	27	2701
27013	13	Penedo	0	27	2703
27010	10	Litoral Norte Alagoano	0	27	2703
27007	7	Traipu	0	27	2702
28007	7	Propriá	0	28	2803
28003	3	Nossa Senhora das Dores	0	28	2802
28011	11	Aracaju	0	28	2803
28012	12	Boquim	0	28	2803
28004	4	Agreste de Itabaiana	0	28	2802
28001	1	Sergipana do Sertão do São Francisco	0	28	2801
28008	8	Cotinguiba	0	28	2803
28002	2	Carira	0	28	2801
28010	10	Baixo Cotinguiba	0	28	2803
28013	13	Estância	0	28	2803
28009	9	Japaratuba	0	28	2803
28006	6	Agreste de Lagarto	0	28	2802
28005	5	Tobias Barreto	0	28	2802
29023	23	Seabra	0	29	2906
29005	5	Paulo Afonso	0	29	2902
29017	17	Alagoinhas	0	29	2904
29015	15	Ribeira do Pombal	0	29	2904
29012	12	Feira de Santana	0	29	2903
29024	24	Jequié	0	29	2906
29032	32	Porto Seguro	0	29	2907
29031	31	Ilhéus-Itabuna	0	29	2907
29019	19	Catu	0	29	2905
29009	9	Irecê	0	29	2903
29028	28	Vitória da Conquista	0	29	2906
29008	8	Senhor do Bonfim	0	29	2903
29002	2	Cotegipe	0	29	2901
29027	27	Brumado	0	29	2906
29016	16	Serrinha	0	29	2904
29020	20	Santo Antônio de Jesus	0	29	2905
29001	1	Barreiras	0	29	2901
29011	11	Itaberaba	0	29	2903
29006	6	Barra	0	29	2902
29007	7	Bom Jesus da Lapa	0	29	2902
29022	22	Boquira	0	29	2906
29026	26	Guanambi	0	29	2906
29010	10	Jacobina	0	29	2903
29030	30	Valença	0	29	2907
29021	21	Salvador	0	29	2905
29004	4	Juazeiro	0	29	2902
29003	3	Santa Maria da Vitória	0	29	2901
29014	14	Euclides da Cunha	0	29	2904
29018	18	Entre Rios	0	29	2904
29013	13	Jeremoabo	0	29	2904
29025	25	Livramento do Brumado	0	29	2906
29029	29	Itapetinga	0	29	2906
31019	19	Patrocínio	0	31	3105
31024	24	Três Marias	0	31	3106
31061	61	Manhuaçu	0	31	3112
31060	60	Ponte Nova	0	31	3112
31039	39	Ipatinga	0	31	3108
31036	36	Peçanha	0	31	3108
31022	22	Uberaba	0	31	3105
31045	45	Campo Belo	0	31	3109
31016	16	Nanuque	0	31	3104
31005	5	Salinas	0	31	3102
31041	41	Aimorés	0	31	3108
31055	55	Andrelândia	0	31	3110
31054	54	São Lourenço	0	31	3110
31051	51	Poços de Caldas	0	31	3110
31066	66	Cataguases	0	31	3112
31049	49	Alfenas	0	31	3110
31059	59	Barbacena	0	31	3111
31014	14	Almenara	0	31	3103
31037	37	Governador Valadares	0	31	3108
31047	47	Passos	0	31	3110
31062	62	Viçosa	0	31	3112
31031	31	Itabira	0	31	3107
31028	28	Conceição do Mato Dentro	0	31	3107
31011	11	Capelinha	0	31	3103
31063	63	Muriaé	0	31	3112
31027	27	Sete Lagoas	0	31	3107
31065	65	Juiz de Fora	0	31	3112
31012	12	Araçuaí	0	31	3103
31018	18	Uberlândia	0	31	3105
31020	20	Patos de Minas	0	31	3105
31026	26	Bom Despacho	0	31	3106
31023	23	Araxá	0	31	3105
31048	48	São Sebastião do Paraíso	0	31	3110
31044	44	Formiga	0	31	3109
31001	1	Unaí	0	31	3101
31064	64	Ubá	0	31	3112
31015	15	Teófilo Otoni	0	31	3104
31025	25	Curvelo	0	31	3106
31042	42	Piuí	0	31	3109
31030	30	Belo Horizonte	0	31	3107
31032	32	Itaguara	0	31	3107
31050	50	Varginha	0	31	3110
31009	9	Bocaiúva	0	31	3102
31040	40	Caratinga	0	31	3108
31052	52	Pouso Alegre	0	31	3110
31046	46	Oliveira	0	31	3109
31003	3	Januária	0	31	3102
31008	8	Grão Mogol	0	31	3102
31002	2	Paracatu	0	31	3101
31007	7	Montes Claros	0	31	3102
31035	35	Guanhães	0	31	3108
31056	56	Itajubá	0	31	3110
31006	6	Pirapora	0	31	3102
31053	53	Santa Rita do Sapucaí	0	31	3110
31013	13	Pedra Azul	0	31	3103
31017	17	Ituiutaba	0	31	3105
31021	21	Frutal	0	31	3105
31043	43	Divinópolis	0	31	3109
31057	57	Lavras	0	31	3111
31034	34	Conselheiro Lafaiete	0	31	3107
31004	4	Janaúba	0	31	3102
31038	38	Mantena	0	31	3108
31058	58	São João Del Rei	0	31	3111
31010	10	Diamantina	0	31	3103
31033	33	Ouro Preto	0	31	3107
31029	29	Pará de Minas	0	31	3107
32007	7	Afonso Cláudio	0	32	3203
32001	1	Barra de São Francisco	0	32	3201
32002	2	Nova Venécia	0	32	3201
32011	11	Alegre	0	32	3204
32010	10	Guarapari	0	32	3203
32003	3	Colatina	0	32	3201
32012	12	Cachoeiro de Itapemirim	0	32	3204
32006	6	Linhares	0	32	3202
32009	9	Vitória	0	32	3203
32005	5	São Mateus	0	32	3202
32008	8	Santa Teresa	0	32	3203
32013	13	Itapemirim	0	32	3204
32004	4	Montanha	0	32	3202
33013	13	Baía da Ilha Grande	0	33	3305
33002	2	Santo Antônio de Pádua	0	33	3301
33010	10	Lagos	0	33	3304
33005	5	Três Rios	0	33	3303
33012	12	Barra do Piraí	0	33	3305
33011	11	Vale do Paraíba Fluminense	0	33	3305
33018	18	Rio de Janeiro	0	33	3306
33007	7	Nova Friburgo	0	33	3303
33001	1	Itaperuna	0	33	3301
33016	16	Macacu-Caceribu	0	33	3306
33003	3	Campos dos Goytacazes	0	33	3302
33006	6	Cantagalo-Cordeiro	0	33	3303
33004	4	Macaé	0	33	3302
33009	9	Bacia de São João	0	33	3304
33014	14	Vassouras	0	33	3306
33017	17	Itaguaí	0	33	3306
33015	15	Serrana	0	33	3306
33008	8	Santa Maria Madalena	0	33	3303
35035	35	Adamantina	0	35	3508
35004	4	São José do Rio Preto	0	35	3501
35029	29	Pirassununga	0	35	3507
35030	30	São João da Boa Vista	0	35	3507
35033	33	Amparo	0	35	3507
35022	22	Avaré	0	35	3504
35028	28	Piracicaba	0	35	3506
35020	20	Bauru	0	35	3504
35042	42	Itapetininga	0	35	3511
35036	36	Presidente Prudente	0	35	3508
35015	15	Batatais	0	35	3502
35018	18	Birigui	0	35	3503
35046	46	Sorocaba	0	35	3512
35003	3	Votuporanga	0	35	3501
35038	38	Marília	0	35	3509
35032	32	Campinas	0	35	3507
35024	24	Araraquara	0	35	3505
35025	25	São Carlos	0	35	3505
35016	16	Andradina	0	35	3503
35023	23	Botucatu	0	35	3504
35051	51	Guaratinguetá	0	35	3513
35001	1	Jales	0	35	3501
35044	44	Capão Bonito	0	35	3511
35017	17	Araçatuba	0	35	3503
35011	11	Ituverava	0	35	3502
35052	52	Bananal	0	35	3513
35027	27	Limeira	0	35	3506
35037	37	Tupã	0	35	3509
35005	5	Catanduva	0	35	3501
35031	31	Moji Mirim	0	35	3507
35059	59	Guarulhos	0	35	3515
35039	39	Assis	0	35	3510
35048	48	Bragança Paulista	0	35	3512
35006	6	Auriflama	0	35	3501
35041	41	Itapeva	0	35	3511
35021	21	Jaú	0	35	3504
35055	55	Registro	0	35	3514
35009	9	Barretos	0	35	3502
35014	14	Ribeirão Preto	0	35	3502
35057	57	Osasco	0	35	3515
35013	13	Jaboticabal	0	35	3502
35040	40	Ourinhos	0	35	3510
35063	63	Santos	0	35	3515
35062	62	Mogi das Cruzes	0	35	3515
35043	43	Tatuí	0	35	3511
35026	26	Rio Claro	0	35	3506
35050	50	São José dos Campos	0	35	3513
35019	19	Lins	0	35	3504
35058	58	Franco da Rocha	0	35	3515
35047	47	Jundiaí	0	35	3512
35049	49	Campos do Jordão	0	35	3513
35054	54	Caraguatatuba	0	35	3513
35060	60	Itapecerica da Serra	0	35	3515
35012	12	Franca	0	35	3502
35053	53	Paraibuna/Paraitinga	0	35	3513
35061	61	São Paulo	0	35	3515
35034	34	Dracena	0	35	3508
35002	2	Fernandópolis	0	35	3501
35010	10	São Joaquim da Barra	0	35	3502
35045	45	Piedade	0	35	3512
35008	8	Novo Horizonte	0	35	3501
35056	56	Itanhaém	0	35	3514
35007	7	Nhandeara	0	35	3501
41015	15	Cornélio Procópio	0	41	4104
41035	35	Cerro Azul	0	41	4110
41039	39	Rio Negro	0	41	4110
41037	37	Curitiba	0	41	4110
41004	4	Goioerê	0	41	4102
41002	2	Umuarama	0	41	4101
41001	1	Paranavaí	0	41	4101
41007	7	Porecatu	0	41	4103
41025	25	Capanema	0	41	4107
41023	23	Cascavel	0	41	4106
41006	6	Astorga	0	41	4103
41038	38	Paranaguá	0	41	4110
41034	34	São Mateus do Sul	0	41	4109
41010	10	Apucarana	0	41	4103
41020	20	Jaguariaíva	0	41	4105
41013	13	Ivaiporã	0	41	4103
41005	5	Campo Mourão	0	41	4102
41014	14	Assaí	0	41	4104
41022	22	Toledo	0	41	4106
41016	16	Jacarezinho	0	41	4104
41026	26	Francisco Beltrão	0	41	4107
41033	33	União da Vitória	0	41	4109
41028	28	Pitanga	0	41	4108
41012	12	Faxinal	0	41	4103
41027	27	Pato Branco	0	41	4107
41011	11	Londrina	0	41	4103
41029	29	Guarapuava	0	41	4108
41021	21	Ponta Grossa	0	41	4105
41018	18	Wenceslau Braz	0	41	4104
41024	24	Foz do Iguaçu	0	41	4106
41003	3	Cianorte	0	41	4101
41030	30	Palmas	0	41	4108
41017	17	Ibaiti	0	41	4104
41008	8	Floraí	0	41	4103
41031	31	Prudentópolis	0	41	4109
41019	19	Telêmaco Borba	0	41	4105
41032	32	Irati	0	41	4109
41036	36	Lapa	0	41	4110
41009	9	Maringá	0	41	4103
42009	9	Curitibanos	0	42	4203
42003	3	Xanxerê	0	42	4201
42014	14	Ituporanga	0	42	4204
42011	11	Rio do Sul	0	42	4204
42004	4	Joaçaba	0	42	4201
42002	2	Chapecó	0	42	4201
42017	17	Tabuleiro	0	42	4205
42005	5	Concórdia	0	42	4201
42001	1	São Miguel do Oeste	0	42	4201
42015	15	Tijucas	0	42	4205
42010	10	Campos de Lages	0	42	4203
42016	16	Florianópolis	0	42	4205
42012	12	Blumenau	0	42	4204
42008	8	Joinville	0	42	4202
42020	20	Araranguá	0	42	4206
42018	18	Tubarão	0	42	4206
42013	13	Itajaí	0	42	4204
42019	19	Criciúma	0	42	4206
42006	6	Canoinhas	0	42	4202
42007	7	São Bento do Sul	0	42	4202
43031	31	Campanha Meridional	0	43	4306
43010	10	Passo Fundo	0	43	4301
43019	19	Restinga Seca	0	43	4303
43008	8	Ijuí	0	43	4301
43001	1	Santa Rosa	0	43	4301
43029	29	Campanha Ocidental	0	43	4306
43009	9	Carazinho	0	43	4301
43003	3	Frederico Westphalen	0	43	4301
43011	11	Cruz Alta	0	43	4301
43023	23	Montenegro	0	43	4305
43026	26	Porto Alegre	0	43	4305
43032	32	Serras de Sudeste	0	43	4307
43014	14	Guaporé	0	43	4302
43016	16	Caxias do Sul	0	43	4302
43028	28	Camaquã	0	43	4305
43004	4	Erechim	0	43	4301
43021	21	Lajeado-Estrela	0	43	4304
43033	33	Pelotas	0	43	4307
43027	27	Osório	0	43	4305
43020	20	Santa Cruz do Sul	0	43	4304
43025	25	São Jerônimo	0	43	4305
43034	34	Jaguarão	0	43	4307
43002	2	Três Passos	0	43	4301
43005	5	Sananduva	0	43	4301
43013	13	Soledade	0	43	4301
43015	15	Vacaria	0	43	4302
43007	7	Santo Ângelo	0	43	4301
43018	18	Santa Maria	0	43	4303
43022	22	Cachoeira do Sul	0	43	4304
43006	6	Cerro Largo	0	43	4301
43024	24	Gramado-Canela	0	43	4305
43017	17	Santiago	0	43	4303
43035	35	Litoral Lagunar	0	43	4307
43012	12	Não-Me-Toque	0	43	4301
43030	30	Campanha Central	0	43	4306
50007	7	Três Lagoas	0	50	5003
50003	3	Alto Taquari	0	50	5002
50010	10	Dourados	0	50	5004
50002	2	Aquidauana	0	50	5001
50008	8	Nova Andradina	0	50	5003
50011	11	Iguatemi	0	50	5004
50006	6	Paranaíba	0	50	5003
50004	4	Campo Grande	0	50	5002
50009	9	Bodoquena	0	50	5004
50005	5	Cassilândia	0	50	5003
50001	1	Baixo Pantanal	0	50	5001
51016	16	Rosário Oeste	0	51	5104
51010	10	Canarana	0	51	5102
51002	2	Alta Floresta	0	51	5101
51022	22	Alto Araguaia	0	51	5105
51009	9	Norte Araguaia	0	51	5102
51015	15	Alto Paraguai	0	51	5104
51011	11	Médio Araguaia	0	51	5102
51020	20	Tesouro	0	51	5105
51014	14	Jauru	0	51	5103
51001	1	Aripuanã	0	51	5101
51018	18	Alto Pantanal	0	51	5104
51013	13	Tangará da Serra	0	51	5103
51004	4	Parecis	0	51	5101
51019	19	Primavera do Leste	0	51	5105
51017	17	Cuiabá	0	51	5104
51007	7	Sinop	0	51	5101
51003	3	Colíder	0	51	5101
51012	12	Alto Guaporé	0	51	5103
51021	21	Rondonópolis	0	51	5105
51008	8	Paranatinga	0	51	5101
51006	6	Alto Teles Pires	0	51	5101
51005	5	Arinos	0	51	5101
52010	10	Goiânia	0	52	5203
52012	12	Entorno de Brasília	0	52	5204
52014	14	Vale do Rio dos Bois	0	52	5205
52009	9	Anicuns	0	52	5203
52015	15	Meia Ponte	0	52	5205
52004	4	Porangatu	0	52	5202
52005	5	Chapada dos Veadeiros	0	52	5202
52011	11	Vão do Paranã	0	52	5204
52008	8	Iporá	0	52	5203
52007	7	Anápolis	0	52	5203
52017	17	Catalão	0	52	5205
52013	13	Sudoeste de Goiás	0	52	5205
52003	3	Aragarças	0	52	5201
52002	2	Rio Vermelho	0	52	5201
52006	6	Ceres	0	52	5203
52018	18	Quirinópolis	0	52	5205
52016	16	Pires do Rio	0	52	5205
52001	1	São Miguel do Araguaia	0	52	5201
53001	1	Brasília	0	53	5301
\.


--
-- Name: cidade_pkey; Type: CONSTRAINT; Schema: ibge; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (codigo_composto);


--
-- Name: estado_pkey; Type: CONSTRAINT; Schema: ibge; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (codigo);


--
-- Name: meso_regiao_pkey; Type: CONSTRAINT; Schema: ibge; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY meso_regiao
    ADD CONSTRAINT meso_regiao_pkey PRIMARY KEY (codigo_completo);


--
-- Name: micro_regiao_pkey; Type: CONSTRAINT; Schema: ibge; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY micro_regiao
    ADD CONSTRAINT micro_regiao_pkey PRIMARY KEY (codigo_completo);


--
-- Name: fk621hl7fcihh4v6ycnkypx8d6e; Type: FK CONSTRAINT; Schema: ibge; Owner: postgres
--

ALTER TABLE ONLY cidade
    ADD CONSTRAINT fk621hl7fcihh4v6ycnkypx8d6e FOREIGN KEY (micro_regiao_codigo_completo) REFERENCES micro_regiao(codigo_completo);


--
-- Name: fk8j1ii6atnl4yl8g45k4pqjlsa; Type: FK CONSTRAINT; Schema: ibge; Owner: postgres
--

ALTER TABLE ONLY cidade
    ADD CONSTRAINT fk8j1ii6atnl4yl8g45k4pqjlsa FOREIGN KEY (meso_regiao_codigo_completo) REFERENCES meso_regiao(codigo_completo);


--
-- Name: fkbagibbbmm24rh38jgcl6vvc8a; Type: FK CONSTRAINT; Schema: ibge; Owner: postgres
--

ALTER TABLE ONLY cidade
    ADD CONSTRAINT fkbagibbbmm24rh38jgcl6vvc8a FOREIGN KEY (estado_codigo) REFERENCES estado(codigo);


--
-- Name: fkefoi8ctx8dhejoh2tilvwv05n; Type: FK CONSTRAINT; Schema: ibge; Owner: postgres
--

ALTER TABLE ONLY meso_regiao
    ADD CONSTRAINT fkefoi8ctx8dhejoh2tilvwv05n FOREIGN KEY (estado_codigo_completo) REFERENCES estado(codigo);


--
-- Name: fkjc4xrj1s882x2oss07ehmf2a8; Type: FK CONSTRAINT; Schema: ibge; Owner: postgres
--

ALTER TABLE ONLY micro_regiao
    ADD CONSTRAINT fkjc4xrj1s882x2oss07ehmf2a8 FOREIGN KEY (estado_codigo_completo) REFERENCES estado(codigo);


--
-- Name: fks04rww2mtokbeykwyderccyiw; Type: FK CONSTRAINT; Schema: ibge; Owner: postgres
--

ALTER TABLE ONLY micro_regiao
    ADD CONSTRAINT fks04rww2mtokbeykwyderccyiw FOREIGN KEY (meso_regiao_codigo_completo) REFERENCES meso_regiao(codigo_completo);


--
-- PostgreSQL database dump complete
--

