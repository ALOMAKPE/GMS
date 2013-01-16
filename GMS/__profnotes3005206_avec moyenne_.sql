-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Lundi 29 Mai 2006 à 11:32
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `prof_notes`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `classe`
-- 

DROP TABLE IF EXISTS `classe`;
CREATE TABLE `classe` (
  `id_classe` int(2) NOT NULL auto_increment,
  `nom_classe` char(3) NOT NULL default '',
  `id_pp` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_classe`),
  KEY `fkPP` (`id_pp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- 
-- Contenu de la table `classe`
-- 

INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (1, 'TES', 4);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (2, 'TSA', 5);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (3, 'TSB', 6);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (4, 'TL2', 7);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (5, 'TS1', 8);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (6, 'TS2', 8);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (7, '1ES', 10);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (8, '1SA', 11);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (9, '1SB', 12);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (10, '1L2', 13);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (11, '1S1', 13);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (12, '1S2', 13);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (13, '2A', 16);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (14, '2B', 17);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (15, '2C', 18);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (16, '2SE', 19);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (17, '3A', 20);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (18, '3B', 21);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (19, '3C', 22);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (20, '3SE', 23);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (21, '4A', 24);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (22, '4B', 25);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (23, '4C', 26);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (24, '5A', 27);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (25, '5B', 28);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (26, '5C', 29);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (27, '6A', 30);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (28, '6B', 31);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (29, '6C', 32);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (31, '2L2', 19);

-- --------------------------------------------------------

-- 
-- Structure de la table `controle`
-- 

DROP TABLE IF EXISTS `controle`;
CREATE TABLE `controle` (
  `id_controle` int(2) NOT NULL auto_increment,
  `nom_controle` varchar(20) NOT NULL default '',
  `coefficient` float NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_controle`),
  KEY `fkmatiere` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `controle`
-- 

INSERT INTO `controle` (`id_controle`, `nom_controle`, `coefficient`, `id_matiere`) VALUES (1, '07/03/2006', 1, 2);
INSERT INTO `controle` (`id_controle`, `nom_controle`, `coefficient`, `id_matiere`) VALUES (2, '24/05/2006', 1, 3);

-- --------------------------------------------------------

-- 
-- Structure de la table `eleve`
-- 

DROP TABLE IF EXISTS `eleve`;
CREATE TABLE `eleve` (
  `id_eleve` int(2) NOT NULL auto_increment,
  `nom_eleve` varchar(20) NOT NULL default '',
  `prenom_eleve` varchar(20) NOT NULL default '',
  `id_classe` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_eleve`),
  KEY `fkCLASSE` (`id_classe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1 AUTO_INCREMENT=350 ;

-- 
-- Contenu de la table `eleve`
-- 

INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (1, 'ADEDIRAN', 'CYNTHIA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (2, 'ADJOUA', 'LENA ANDREA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (3, 'ASSANE', 'JAMILA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (4, 'ASSI', 'SORAYA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (5, 'CAMARA', 'OMAR PAUL', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (6, 'CHAM', 'DAROUICHE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (7, 'COREA', 'ELODIE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (8, 'DAKHLALLAH', 'ZEINA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (9, 'DEPRET', 'MEHDI', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (10, 'DIONNE', 'MOHAMED', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (11, 'DIOP', 'NDEYE FATOU', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (12, 'DIOP', 'VANESSA ESTELLE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (13, 'DIOUF', 'NDEYE BETTY', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (14, 'DROUIN', 'TATIANA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (15, 'EZZEDINE', 'NADINE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (16, 'FALL', 'MARIAM', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (17, 'FAYAD', 'KARINA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (18, 'FRETAS', 'SYLVIA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (19, 'GEBARA', 'MOHAMED', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (20, 'GBAGUIDI', 'FABIENNE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (21, 'HACHEM', 'NISRINE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (22, 'HELLAL', 'CLAUDIA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (23, 'HOUETO', 'THERESE M', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (24, 'JABER', 'RANIA LAURENCE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (25, 'KAMARA', 'NDEYE ANNA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (26, 'KONAN-BANNY', 'MARIE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (27, 'MATOUK', 'DYALA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (28, 'MOURAD', 'RAYANA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (29, 'NDIAYE', 'BINETA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (30, 'NIANG', 'MAREME', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (31, 'OUEDRAOGO', 'DJAMILA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (32, 'SY', 'FATIMA BINTOU', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (33, 'TINE', 'EMMANUEL', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (34, 'ABDEL JAOUED', 'KHALED', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (35, 'ALLANIC', 'ESTELLE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (36, 'BADREDINE', 'BRAHIM', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (37, 'BAKOUAN', 'ABDOUL KARIM', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (38, 'BASMA', 'MOHAMED', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (39, 'COULIBALY', 'ABDEL AZIZ Z. O', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (40, 'DIAITE', 'CORINE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (41, 'EZZEDINE', 'CHERINE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (42, 'FATTAHI', 'REDA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (43, 'FILFILI', 'GEORGES', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (44, 'HACHEM', 'HAMADA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (45, 'HAGE ALI', 'SORAYA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (46, 'JABER', 'HASSAN', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (47, 'KAMAL', 'ACHRAF', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (48, 'KANE', 'MAMADOU', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (49, 'KEITA', 'MAMADOU IBRAHIM', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (50, 'KONE', 'MARICA DINYAN', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (51, 'KONE', 'ISSA TAMSIR', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (52, 'LAYOUSSE', 'CHARBEL', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (53, 'LAYOUSSE', 'JOSEPH', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (54, 'LHERM', 'CHARLIE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (55, 'MAHTOUB', 'ABASSE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (56, 'MONDON', 'JEAN PATRICK O.', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (57, 'NIANG', 'NDEYE NGONE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (58, 'N''ZI', 'YANN GABRIEL', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (59, 'OGER', 'DAVID', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (60, 'RAD', 'KRYSTELE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (61, 'SY', 'DJAMILA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (62, 'YACTINE', 'NADIM', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (63, 'ABLE', 'NELSON RAPHAEL', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (64, 'ABOU KHALIL', 'SANDRINE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (65, 'AHORE', 'ALIZEE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (66, 'AJAMI', 'ALISSAR', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (67, 'AYOUB BAALBAKI', 'HUSSEIN', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (68, 'CABRAL', 'MARIE SIMONE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (69, 'DEVALOIS', 'ALEXANDRE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (70, 'DIAGNE', 'NDEYE YACINE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (71, 'DIOP', 'NAFISATOU', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (72, 'EL ALI', 'LINA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (73, 'EZZEDINE', 'HUSSEIN', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (74, 'FAYE', 'AISSATOU', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (75, 'FILFILI', 'CHADI', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (76, 'GNINGUE', 'MAME DIARRA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (77, 'HALAOUI', 'RIWANE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (78, 'MAC', 'MICKAEL', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (79, 'NDIAYE', 'NDEYE AICHA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (80, 'NOUJAIM', 'LILY MARIE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (81, 'SALLOUM', 'REMY', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (82, 'SAMA', 'MYRIAM', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (83, 'SECK', 'ADJI FATOU', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (84, 'SIKLAOUI', 'RENA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (85, 'SISSOKO', 'STEPHANE KARIM', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (86, 'TAHA', 'JIHANE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (87, 'THIAM', 'KETTY FAMA .F', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (88, 'WIZANI', 'RACHA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (89, 'BASSENE', 'PETRONOC AGAICHA', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (90, 'DIACK', 'NDEYE MARIEME', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (91, 'DIAKHATE', 'MAREME', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (92, 'DIOP', 'RAMATOULAYE', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (93, 'FALL', 'IBRAHIMA', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (94, 'HOUDROJ', 'ZAHRA', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (95, 'LAKHDAR', 'RANIA', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (96, 'NDIAYE', 'SOPHIE', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (97, 'TALL', 'MAME OUMY', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (98, 'THIAW', 'NDEYE ARAME', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (99, 'KOFFI', 'TETTEY KLAM STEPHANE', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (100, 'SARR', 'MA. CHEIKH', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (101, 'BAALBAKI', 'MOHAMED', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (102, 'CISSE', 'MASSAMBA ND.', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (103, 'CISSE', 'RAMATOU', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (104, 'DIAGNE', 'THIANE KHARRACHI', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (105, 'GUEYE', 'MAME DIARRA', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (106, 'GUISSE', 'ADJI LABA', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (107, 'ISSA', 'MOHAMED', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (108, 'NASSAR', 'HEYSSAM', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (109, 'NDIAYE', 'ABY', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (110, 'NDIAYE', 'PAPA BELAL', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (111, 'NDIONE', 'AUGUSTE P. D. L', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (112, 'NDIONE', 'JULIE LEA', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (113, 'NDONG', 'REINE MBANDE', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (114, 'SALEH', 'MOHAMED', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (115, 'SARR', 'REGINE MARGUERITE', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (116, 'SENE', 'JULES', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (117, 'ABOUSALEH', 'MOHAMED', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (118, 'AHNE', 'HABY BATH', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (119, 'BA', 'NDEYE KHADY', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (120, 'BADREDINE', 'FATIMA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (121, 'GOMIS', 'GAELLE AMINATA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (122, 'HANNOUCHE', 'SOUAD', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (123, 'KANE', 'IBRAHIMA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (124, 'KHALIL', 'RANIA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (125, 'LOPES', 'MARIE PIERRE ABSA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (126, 'MBENGUE', 'BAYE MOHAMED', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (127, 'MBOUP', 'COUMBA ARENE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (128, 'MOURAD', 'CHAIMA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (129, 'NDIAYE', 'MAME ISSEU DIOR', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (130, 'NEHME', 'CHERINE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (131, 'PIRES DIAS', 'NELLY', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (132, 'POPULO', 'LYDIA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (133, 'POUYE', 'NDEYE NDIEME', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (134, 'SAAD', 'SAMAR', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (135, 'SARR', 'PAUL PIERRE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (136, 'WEHBE', 'NEIF CHRISTOPHE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (137, 'ADOU', 'SEMARIA JESSICA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (138, 'ALI YAHIA', 'SARAH', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (139, 'ATTYE', 'SAMIR', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (140, 'CHOUERI', 'LAURA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (141, 'DALUZ', 'LAURENT KEVIN', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (142, 'DIAGNE', 'PAPA OUSMANE', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (143, 'FATTAH', 'MOHAMED', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (144, 'FAUGER', 'MAISSA HAMIDOU', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (145, 'FILFILI', 'FOUAD', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (146, 'GHASSANI', 'ISSA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (147, 'GHOZAYEL', 'JOANNA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (148, 'HIE', 'SIRY ARNAUD BILICOL', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (149, 'ISSA', 'IBRAHIM', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (150, 'JABER', 'RACHA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (151, 'KANE', 'AWA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (152, 'KONE', 'DONECI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (153, 'MATTA', 'JEAN', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (154, 'MBAYE', 'CHEIKH ANTA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (155, 'NEHME', 'MOHAMED', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (156, 'SAHELI', 'YOUSSEF', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (157, 'SALMAN', 'RYAN', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (158, 'SOW', 'CHEIKH TIDIANE', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (159, 'SY', 'KHALIFA ABABACAR', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (160, 'YOUNES', 'HUSSEIN', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (161, 'AMRANI HANCHI', 'SOUKAINA', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (162, 'ANTHONIOZ', 'FABIEN PAUL JACQUES', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (163, 'ARDEKANI-DJONEIDI', 'NIKA', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (164, 'BAALBAKI', 'JOHANA HAOUI', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (165, 'CISSE', 'ZEINAB', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (166, 'DAW', 'RACHEL', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (167, 'DEBOES', 'CHANELLE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (168, 'DIAGNE', 'NDEYE FATOU', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (169, 'DOURERADIAM', 'RAMON K. JULIEN', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (170, 'GAFARI', 'HELENE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (171, 'GOMEZ', 'CELIA CORALIE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (172, 'HASSAN', 'WALID', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (173, 'KA', 'DIOUMEL', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (174, 'KA', 'DJIBLIL CHIMERE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (175, 'KALACH', 'MOHAMED', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (176, 'KAMARA', 'KHADIJATOU', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (177, 'NDAO', 'MAMADOU', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (178, 'NDIAYE', 'ALASSANE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (179, 'NEMER', 'RAYAN', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (180, 'SAHELI', 'AMAR ESTHER', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (181, 'SECK', 'AMINATA DIOR', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (182, 'SOUMARE', 'ASTA BANTJI', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (183, 'YOUSSEF', 'JAMILE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (184, 'BALDE', 'OUMOU', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (185, 'CISSOKO', 'BAIDALAYE', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (186, 'DIAKHATE', 'FATOUMATA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (187, 'GAYE', 'IBRAHIMA WALY RENE', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (188, 'NDIAYE', 'RAMATOULAYE', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (189, 'SENE', 'MOUHAMADOU', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (190, 'SY', 'AMINATA GUENA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (191, 'SY', 'EL HADJ ABDOU AZIIZ', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (192, 'WAYZANI', 'LAYAL', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (193, 'DIA', 'ABDOULAYE', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (194, 'DIENG', 'MARIAMA', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (195, 'DIOP', 'MOHAMED LAMINE', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (196, 'MBAYE', 'SERIGNE C. A. A.', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (197, 'NDIAYE', 'MARIE STELLA C. C.', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (198, 'NIANG', 'IBRAHIM', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (199, 'SOW', 'MAODO MALICK', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (200, 'SY', 'BIRAME ALDIOUMA', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (201, 'BADAOUI', 'ZAHRAA', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (202, 'DIOP', 'HASSIM BACHIR', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (203, 'DIOP', 'PAPE MOCTAR', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (204, 'FALL', 'CHEIKH A. B', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (205, 'HABIB', 'EMILIE ELISABETH', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (206, 'NDIAYE', 'DIEYNABA', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (207, 'NDIAYE', 'MOUHAMADOU M.', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (208, 'NIANG', 'ALIMATOU YVONNE', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (209, 'OYOUBA M. O', 'JUVELLE MATHURINE', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (210, 'SAR', 'ANTA', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (211, 'YACOUB', 'ANTOINE', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (212, 'ANDRIANOMEARISOA', 'LISA CAROLINECLAIRE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (213, 'AYOUB', 'ZEYNAB', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (214, 'BADREDINE', 'HUSSEIN', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (215, 'BOURGI', 'SANDRA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (216, 'CHIRARA', 'ZAM-ZAM', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (217, 'DAHROUGE', 'RAISSA RANNDA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (218, 'DAUPHINE', 'VANESSA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (219, 'DEMBELE', 'JULES', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (220, 'DIOP', 'MOUHAMADOU M. FADEL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (221, 'DIOUF', 'NDELLA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (222, 'EL-HUSSEINI', 'SARAH', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (223, 'EZZEDINE', 'RIMA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (224, 'FOLY-TOULON', 'EDSON PAUL M. E', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (225, 'HAMLA', 'YACINE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (226, 'HAWILI', 'SHIRINE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (227, 'ISSA', 'HANADI', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (228, 'KIBBE', 'MAYLA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (229, 'KIBBE', 'SARAH', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (230, 'LAHLOU', 'JIHANE NATACHA RITA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (231, 'MARNA', 'CHLOE CAROLINE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (232, 'MONTEIRO', 'ORNELLA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (233, 'NDIAYE', 'AHMADOU BAMBA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (234, 'OUIS', 'ADLANE CHAZIL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (235, 'PONSARD', 'ADRIEN', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (236, 'RANDRIANASOLO', 'ANDY MICHAEL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (237, 'ROZZ', 'JIHANE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (238, 'SAIEL', 'NOUR', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (239, 'SANTOS', 'ARISTIDE M. A.', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (240, 'SEYE', 'MEDOUNE B, THOMAS', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (241, 'SOUMARE', 'MOUHAMED HAMOU', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (242, 'VIERA', 'CECILE YVETTE LYDIA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (243, 'WAZNI', 'ALY FADEL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (244, 'WIZANI', 'MIRNA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (245, 'ABDALLAH', 'MARWA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (246, 'ABOU-KHALIL', 'JOHANA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (247, 'AYAD', 'ZOHRA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (248, 'AYOUB BAALBAKI', 'CHARIFA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (249, 'BALESDENS', 'CHARLOTTE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (250, 'BASMA', 'LOUWANA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (251, 'BELLASSE', 'GUILLAUME', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (252, 'BOISSELET', 'SOPHIE HANNA MARION', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (253, 'CHOUCAIR', 'LEA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (254, 'DAKHLALLAH', 'ALI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (255, 'DAW', 'AMANDA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (256, 'DIAGNE', 'MOHAMED EL MOCTAR', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (257, 'DIALLO', 'MOHAMED', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (258, 'ESHOUR', 'ZEINA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (259, 'EZZEDINE', 'MOHAMED', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (260, 'FARHAT', 'KARINA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (261, 'FILFILI', 'SAMI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (262, 'HAWILI', 'NOUR', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (263, 'IGNARE', 'MAEVA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (264, 'KHADRA', 'FADI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (265, 'LANGLOIS', 'JULIE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (266, 'LOFF FERNANDES', 'MARIE TESSY', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (267, 'MISTRAL', 'LAURA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (268, 'NDIAYE', 'BENJAMIN', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (269, 'NDIAYE', 'KHADIDIATOU', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (270, 'NEMER', 'STEPHANE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (271, 'PINA', 'ADRIEN', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (272, 'ROSIERE', 'JULIEN', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (273, 'SAHELI', 'FADEL', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (274, 'SENGHOR', 'NATACHA MERY', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (275, 'TARRAF-KOUJOCK', 'HUSSEIN SAID SEBASTI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (276, 'THIAW', 'NDEYE CATHY', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (277, 'THOUMAS', 'ANDREA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (278, 'YASSINE', 'WASSIM', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (279, 'ABOUSALEH', 'MAYA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (280, 'AJAMI', 'MEHDI', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (281, 'ANDRIANOMEARISOA', 'LUC PHILIPPE PITER', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (282, 'BA', 'CHEIKH SIDIYA E.K', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (283, 'BADAOUI', 'RABIH', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (284, 'BAZZOUNY', 'WASSIM', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (285, 'BITTAR', 'FREDERIC', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (286, 'BRAUN', 'KEVIN', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (287, 'DIALLO', 'ANTA COMBA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (288, 'DIAW', 'DIADAME JOCELYNE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (289, 'DIONNE', 'MARIEME KETTY', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (290, 'DIOP', 'MAEVA ANTA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (291, 'DUBOIS', 'CORALIE DENIS GISELE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (292, 'FARHAT', 'LOUANA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (293, 'FAYE', 'SOPHIE E. F SANOU', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (294, 'FILFILI', 'RAMI', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (295, 'GIESING', 'JOHANNES RAPHAEL', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (296, 'GNASSOU', 'AUDE NATACHA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (297, 'GUIGON', 'LOREDANA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (298, 'HAKIM', 'HANADI', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (299, 'KAWAR', 'RAYSSA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (300, 'LAFOIX', 'FRANCOIS XAVIER', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (301, 'MAHTOUB', 'MIRNA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (302, 'NDIAYE', 'FATOU BANE SAMBA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (303, 'NEHME', 'SABRINA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (304, 'OMAIS', 'NABIL', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (305, 'OUIS', 'LINA-CHAHINAZ', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (306, 'SAHELI', 'AMINA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (307, 'SALLOUM', 'STEPHANE JOEL', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (308, 'SECK', 'ZEYNABOU', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (309, 'SERIFOU', 'ROCKIA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (310, 'SY', 'NDATE BAPTISTE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (311, 'TALL', 'PAPE SALIOU', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (312, 'TANDIAN', 'KHADY', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (313, 'YOUSSEF', 'MAHDI', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (314, 'BA', 'MAME BETTY', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (315, 'BOLSANE', 'PAUL ISSA MARTIAL', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (316, 'COLY', 'AMIDOU DAGNIL', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (317, 'DAHER', 'ALY', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (318, 'DIALLO', 'IBRAHIMA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (319, 'DIOP', 'CHEIKH', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (320, 'DIOP', 'NDEYE MARIAMA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (321, 'DIOP', 'MAME KHOUDIA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (322, 'DIOUF', 'DIOLY', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (323, 'DIOUF', 'EL HADJI SOCE', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (324, 'DIOUF', 'MAME AWA FLORENCE', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (325, 'FARHAT', 'ALI', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (326, 'GUEYE', 'AWA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (327, 'KANE', 'DIEYNABA SALA TAMARA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (328, 'KOFFI', 'NATEH KPEDRO LOINEL', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (329, 'MBENGUE', 'CHEIKH AHMADOU BAMBA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (330, 'MOUKADEM', 'AHMED', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (331, 'NIANG', 'CHEIKH MOUHAMADOU B.', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (332, 'SAKHO', 'AMSATOU DIOUF', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (333, 'SALL', 'FATIMATOU', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (334, 'SECK', 'SEYIDOUNA OMAR', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (335, 'SOW', 'AISSE LALLAH AICHA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (336, 'SOW', 'HABY', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (337, 'AAAAAAA', 'aaaaa', 30);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (338, 'BA', 'COUMBA', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (339, 'COLY', 'NANCY DANY', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (340, 'DIOP', 'NDEYE BINTA', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (341, 'FALL', 'THIENDELLA NGUENAR', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (342, 'GAYE', 'MARIE YVONNE', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (343, 'GUEYE', 'DONA AICHA NDICKOU', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (344, 'HEDJAZI', 'FATIMA', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (345, 'KONE', 'CYRIL FANGA-TOUGA', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (346, 'MOUKADEM', 'MOHAMED', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (347, 'NGOM', 'SODA MARIEME', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (348, 'TOURE', 'ELIMANE IBRAHIM', 31);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (349, 'TOURE', 'LALLA AICHA A. M.', 31);

-- --------------------------------------------------------

-- 
-- Structure de la table `enseigne`
-- 

DROP TABLE IF EXISTS `enseigne`;
CREATE TABLE `enseigne` (
  `id_professeur` int(2) NOT NULL default '0',
  `id_classe` int(2) NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_professeur`,`id_classe`,`id_matiere`),
  KEY `fkCLASSE` (`id_classe`),
  KEY `fkMATIERE` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `enseigne`
-- 

INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (4, 1, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (4, 1, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (4, 1, 25);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (4, 2, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (4, 3, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (5, 1, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (5, 2, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (5, 2, 18);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (5, 2, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (5, 3, 18);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (6, 1, 18);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (6, 3, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (6, 3, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (6, 7, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 4, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 4, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 4, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 5, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 6, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 14, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 15, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 31, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 5, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 5, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 6, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 6, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 11, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 12, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 16, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 31, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 3, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 3, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 7, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 7, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 7, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 9, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 9, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 13, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 13, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (12, 2, 19);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (12, 3, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (12, 3, 19);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (12, 9, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (12, 9, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (12, 9, 34);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 10, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 10, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 11, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 11, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 12, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 12, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (13, 15, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (16, 8, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (16, 13, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (16, 13, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (16, 13, 33);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (17, 7, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (17, 14, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (17, 14, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 9, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 9, 34);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 15, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 15, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 15, 31);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 15, 33);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 11, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 12, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 16, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 16, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 31, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 31, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (20, 7, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (20, 9, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (22, 2, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (22, 9, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 10, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 11, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 12, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 15, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 15, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 15, 30);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 16, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 31, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (24, 4, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (24, 5, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (24, 6, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (24, 14, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (24, 14, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (26, 16, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (26, 31, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (28, 8, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (28, 8, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (29, 2, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (29, 2, 19);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (29, 3, 19);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (29, 13, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (32, 1, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (32, 1, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (32, 2, 11);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (32, 2, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (32, 7, 34);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (32, 8, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (36, 13, 3);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 1, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 2, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 4, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 7, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 8, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 10, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 11, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 12, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 13, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 14, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 15, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 16, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 31, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (66, 2, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 2, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 3, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 14, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 16, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 31, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 1, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 2, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 3, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 4, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 5, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 6, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 7, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 8, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 9, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 10, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 11, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 12, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 13, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 14, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 15, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 16, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (68, 31, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 1, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 2, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 3, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 4, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 5, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 6, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 7, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 8, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 9, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 10, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 11, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 12, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 13, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 14, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 15, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 15, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 16, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 31, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 1, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 2, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 3, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 4, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 5, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 6, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 7, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 8, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 9, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 10, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 11, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 12, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 13, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 14, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 15, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 16, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (70, 31, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 1, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 2, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 3, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 4, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 5, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 6, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 7, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 8, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 9, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 10, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 11, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 12, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 13, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 14, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 15, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 16, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (71, 31, 12);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (72, 2, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (72, 14, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 1, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 2, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 3, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 4, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 5, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 6, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 14, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 16, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (73, 31, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (74, 1, 17);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (74, 2, 17);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (74, 3, 17);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (74, 5, 17);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (74, 6, 17);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 2, 20);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 3, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 3, 20);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 8, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 8, 34);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 15, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (76, 1, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (76, 3, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (76, 7, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (76, 15, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 4, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 5, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 6, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 10, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 11, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 12, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 15, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 15, 27);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 15, 28);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 16, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 31, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 1, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 4, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 4, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 5, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 5, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 6, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 6, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (78, 13, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (79, 6, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (79, 10, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (79, 11, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (80, 5, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (80, 12, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 1, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 4, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 7, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 8, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 10, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 11, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 12, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 13, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 14, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 15, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 16, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 31, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (82, 4, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (82, 8, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (82, 9, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (82, 13, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (83, 4, 17);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (84, 4, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (85, 1, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (85, 7, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (85, 7, 34);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (85, 13, 24);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (86, 1, 26);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 10, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 11, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 12, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 16, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 31, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (88, 16, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (88, 31, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (89, 15, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (89, 15, 29);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (89, 15, 32);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (90, 8, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (90, 8, 22);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (90, 8, 34);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (90, 14, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (90, 15, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (91, 14, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (91, 14, 32);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (93, 14, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (93, 14, 33);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (94, 7, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (94, 13, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (94, 14, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (95, 8, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (95, 9, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (95, 13, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (96, 8, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (96, 9, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (96, 13, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (97, 13, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (97, 13, 32);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (98, 13, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (99, 7, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (99, 8, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (99, 9, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (99, 10, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (99, 11, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (99, 12, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (100, 7, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (100, 10, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (100, 11, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (100, 12, 10);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (101, 10, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (101, 10, 24);

-- --------------------------------------------------------

-- 
-- Structure de la table `matiere`
-- 

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE `matiere` (
  `id_matiere` int(2) NOT NULL auto_increment,
  `nom_matiere` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- 
-- Contenu de la table `matiere`
-- 

INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (1, 'Francais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (2, 'Mathematiques');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (3, 'Informatique');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (4, 'SVT');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (5, 'Physique-Chimie');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (23, 'Sceinces Eco');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (7, 'Allemand');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (8, 'Anglais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (9, 'Arabe');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (10, 'Catéchèse');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (11, 'ECJS');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (12, 'EPS');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (13, 'Espagnol');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (14, 'Ethique');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (15, 'Histoire-Geo');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (16, 'Mathématiques');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (17, 'Philosophie');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (18, 'Spé Math');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (19, 'Spé Physique');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (20, 'Spé SVT');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (22, 'Heure de vie');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (24, 'Sciences Eco');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (25, 'Spe Anglais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (26, 'Spe SES');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (27, 'Anglais renforce');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (28, 'Module Anglais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (29, 'Module Francais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (30, 'Module HG');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (31, 'Module Maths');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (32, 'Soutien Francais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (33, 'Soutien Maths');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (34, 'TPE');

-- --------------------------------------------------------

-- 
-- Structure de la table `moyenne`
-- 

DROP TABLE IF EXISTS `moyenne`;
CREATE TABLE `moyenne` (
  `id_moyenne` int(2) NOT NULL default '0',
  `nb_moyenne` float NOT NULL default '0',
  PRIMARY KEY  (`id_moyenne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `moyenne`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `note`
-- 

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id_note` int(2) NOT NULL auto_increment,
  `note` int(2) default NULL,
  `id_controle` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_note`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

-- 
-- Contenu de la table `note`
-- 

INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (1, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (2, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (3, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (4, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (5, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (6, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (7, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (8, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (9, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (10, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (11, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (12, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (13, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (14, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (15, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (16, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (17, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (18, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (19, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (20, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (21, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (22, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (23, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (24, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (25, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (26, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (27, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (28, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (29, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (30, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (31, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (32, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (33, NULL, 1);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (34, 13, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (35, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (36, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (37, 13, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (38, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (39, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (40, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (41, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (42, 13, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (43, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (44, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (45, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (46, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (47, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (48, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (49, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (50, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (51, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (52, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (53, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (54, 12, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (55, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (56, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (57, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (58, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (59, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (60, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (61, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (62, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (63, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (64, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (65, NULL, 2);
INSERT INTO `note` (`id_note`, `note`, `id_controle`) VALUES (66, NULL, 2);

-- --------------------------------------------------------

-- 
-- Structure de la table `obtient`
-- 

DROP TABLE IF EXISTS `obtient`;
CREATE TABLE `obtient` (
  `id_eleve` int(2) NOT NULL default '0',
  `id_note` int(2) NOT NULL default '0',
  KEY `fkNOTE` (`id_note`),
  KEY `fkELEVE` (`id_eleve`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `obtient`
-- 

INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (212, 1);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (213, 2);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (214, 3);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (215, 4);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (216, 5);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (217, 6);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (218, 7);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (219, 8);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (220, 9);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (221, 10);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (222, 11);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (223, 12);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (224, 13);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (225, 14);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (226, 15);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (227, 16);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (229, 17);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (228, 18);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (230, 19);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (231, 20);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (232, 21);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (233, 22);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (234, 23);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (235, 24);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (236, 25);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (237, 26);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (238, 27);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (239, 28);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (240, 29);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (241, 30);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (242, 31);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (243, 32);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (244, 33);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (63, 34);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (64, 35);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (65, 36);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (66, 37);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (67, 38);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (68, 39);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (69, 40);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (70, 41);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (71, 42);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (72, 43);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (73, 44);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (74, 45);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (75, 46);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (76, 47);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (77, 48);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (78, 49);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (79, 50);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (80, 51);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (81, 52);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (82, 53);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (83, 54);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (84, 55);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (85, 56);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (86, 57);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (87, 58);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (88, 59);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (212, 60);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (213, 61);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (214, 62);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (215, 63);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (216, 64);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (217, 65);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (218, 66);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (219, 67);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (220, 68);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (221, 69);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (222, 70);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (223, 71);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (224, 72);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (225, 73);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (226, 74);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (227, 75);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (229, 76);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (228, 77);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (230, 78);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (231, 79);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (232, 80);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (233, 81);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (234, 82);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (235, 83);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (236, 84);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (237, 85);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (238, 86);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (239, 87);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (240, 88);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (241, 89);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (242, 90);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (243, 91);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (244, 92);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (212, 1);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (213, 2);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (214, 3);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (215, 4);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (216, 5);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (217, 6);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (218, 7);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (219, 8);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (220, 9);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (221, 10);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (222, 11);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (223, 12);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (224, 13);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (225, 14);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (226, 15);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (227, 16);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (229, 17);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (228, 18);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (230, 19);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (231, 20);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (232, 21);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (233, 22);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (234, 23);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (235, 24);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (236, 25);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (237, 26);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (238, 27);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (239, 28);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (240, 29);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (241, 30);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (242, 31);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (243, 32);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (244, 33);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (212, 34);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (213, 35);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (214, 36);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (215, 37);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (216, 38);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (217, 39);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (218, 40);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (219, 41);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (220, 42);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (221, 43);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (222, 44);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (223, 45);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (224, 46);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (225, 47);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (226, 48);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (227, 49);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (229, 50);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (228, 51);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (230, 52);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (231, 53);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (232, 54);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (233, 55);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (234, 56);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (235, 57);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (236, 58);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (237, 59);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (238, 60);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (239, 61);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (240, 62);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (241, 63);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (242, 64);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (243, 65);
INSERT INTO `obtient` (`id_eleve`, `id_note`) VALUES (244, 66);

-- --------------------------------------------------------

-- 
-- Structure de la table `professeur`
-- 

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE `professeur` (
  `id_professeur` int(2) NOT NULL auto_increment,
  `nom_professeur` varchar(20) NOT NULL default '',
  `prenom_professeur` varchar(20) NOT NULL default '',
  `mdp` varchar(8) NOT NULL default '',
  `adr_mail` varchar(30) default NULL,
  PRIMARY KEY  (`id_professeur`),
  FULLTEXT KEY `prenom_professeur` (`prenom_professeur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

-- 
-- Contenu de la table `professeur`
-- 

INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (4, 'MONDOLONI', 'Jeanne', 'jmondolo', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (5, 'BLANDA', 'Patrick', 'pblanda', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (6, 'MONDOLONI', 'Michel', 'mmondolo', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (7, 'GBAGUIDI', 'Ambroise', 'agbaguid', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (8, 'DIENG', 'Sada', 'sdieng', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (10, 'LAGIER', 'Patrice', 'plagier', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (11, 'SORNADERE', 'Pierre', 'psornade', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (12, 'ANDRIANOMEARISOA', 'Toussaint', 'tandrian', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (13, 'FAYE', 'Alain', 'afaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (16, 'VULLIERME', 'Pierre', 'pvullier', 'vullierme@hotmail.com');
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (17, 'BERNARD', 'Marie Claire', 'mbernard', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (18, 'FOUCHER', 'Christophe', 'cfoucher', 'foucher_chrstop@yahoo.fr');
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (19, 'DIOUF', 'Mame Cheikh', 'mdiouf', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (20, 'MENRATH', 'Maryline', 'mmenrath', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (21, 'UTHEZA', 'Philippe', 'putheza', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (22, 'PAFADNAM', 'Christine', 'cpafadna', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (23, 'NDOUR', 'Pierre', 'pndour', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (24, 'SANTOS', 'Laurent', 'lsantos', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (25, 'LARDY', 'Fran?oise', 'flardy', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (26, 'NDIAYE', 'Assane', 'andiaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (27, 'NDIAYE', 'A?ssatou', 'andiaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (28, 'AUDINOS', 'Dominique', 'daudinos', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (29, 'PONS', 'Michel', 'mpons', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (30, 'FONTAINE', 'Benedicte', 'bfontain', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (31, 'MOUVY', 'Pascal', 'pmouvy', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (32, 'ESTRADE', 'Stephane', 'sestrade', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (36, 'SCHALCK', 'Baptiste', 'bschalck', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (64, 'SOW', 'Madeleine', 'msow', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (76, 'RAHAL', 'Antoinette', 'arahal', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (66, 'BASSE', 'Ababacar Laye', 'abasse', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (67, 'SAMBOU', 'Henri Philippe', 'hsambou', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (68, 'BADJI', 'Ibrahima', 'ibadji', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (69, 'COLY', 'Philémon', 'pcoly', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (70, 'SAGNA', 'Gabriel', 'gsagna', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (71, 'SYLVA', 'Valdemar', 'vsylva', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (72, 'TEBECHIRANI', 'Valerie', 'vtebechi', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (73, 'ROUX', 'Florence', 'froux', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (74, 'KARTMANN', 'Liza', 'lkartman', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (75, 'DIARA', 'Mariline', 'mdiara', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (77, 'SILVA', 'Alain', 'asilva', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (78, 'FAYE', 'Georges', 'gfaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (79, 'GBAGUIDI', 'Rachel', 'rgbaguid', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (80, 'CISSE', 'Irene', 'icisse', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (81, 'BASSE', 'Abacar Laye', 'abasse', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (82, 'DIOKHANE', 'Dame', 'ddiokhan', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (83, 'NDIONE', 'Josephine', 'jndione', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (84, 'NDIAYE', 'Aissatou', 'andiaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (85, 'DE LOUSTAL', 'Thierry', 'tde lous', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (86, 'CABANE', 'Romain', 'rcabane', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (87, 'SARR', 'Francois', 'fsarr', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (88, 'WANE', 'Ahmadou Tidiane', 'awane', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (89, 'DACOSTA', 'Suzanne', 'sdacosta', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (90, 'SORBADERE', 'Pierre', 'psorbade', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (91, 'DERWICHE', 'Rina', 'rderwich', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (92, 'BECHARA', 'Evelyn', 'ebechara', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (93, 'BECHARA', 'Evelyne', 'ebechara', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (94, 'SALEH', 'Najat', 'nsaleh', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (95, 'SY', 'Jacqueline', 'jsy', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (96, 'BIAGUI', 'Adolphe', 'abiagui', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (97, 'GROUAS', 'Valerie', 'vgrouas', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (98, 'MAERTENS', 'Philippe', 'pmaerten', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (99, 'NDIONE', 'Pierre-Claver', 'pndione', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (100, 'BRUNO', 'Frere', 'fbruno', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (101, 'GABGUIDI', 'Ambroise', 'agabguid', NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `trimestre`
-- 

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE `trimestre` (
  `id_eleve` int(2) NOT NULL default '0',
  `id_moyenne` int(2) NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  `trimestre` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_eleve`,`id_moyenne`,`id_matiere`),
  KEY `fkELEVE` (`id_eleve`),
  KEY `fkMOYENNE` (`id_moyenne`),
  KEY `fkMATIERE` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `trimestre`
-- 

