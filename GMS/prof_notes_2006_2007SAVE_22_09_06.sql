-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Vendredi 22 Septembre 2006 à 16:04
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- PROF OK 
--  MATIERE OK 
--  CLASSE OK 
--  ENSEIGNE OK 
--  -----------------
-- 
-- 
-- Base de données: `prof_notes_2006_2007`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `CLASSE`
-- 

DROP TABLE IF EXISTS `CLASSE`;
CREATE TABLE `CLASSE` (
  `id_classe` int(2) NOT NULL auto_increment,
  `nom_classe` char(3) NOT NULL default '',
  `id_pp` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_classe`),
  KEY `fkPP` (`id_pp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Contenu de la table `CLASSE`
-- 

INSERT INTO `CLASSE` (`id_classe`, `nom_classe`, `id_pp`) VALUES (1, 'TES', 10),
(2, 'TSA', 5),
(3, 'TSB', 6),
(4, 'TL2', 7),
(5, 'TS1', 19),
(6, 'TS2', 19),
(7, '1ES', 22),
(8, '1SA', 17),
(9, '1SB', 12),
(10, '1L2', 78),
(11, '1S1', 78),
(12, '1S2', 78),
(13, '2A', 16),
(14, '2B', 18),
(15, '2C', 111),
(16, '2L', 8),
(17, '2S', 8);

-- --------------------------------------------------------

-- 
-- Structure de la table `CONTROLE`
-- 

DROP TABLE IF EXISTS `CONTROLE`;
CREATE TABLE `CONTROLE` (
  `id_controle` int(2) NOT NULL auto_increment,
  `nom_controle` varchar(20) NOT NULL default '',
  `coefficient` float NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_controle`),
  KEY `fkmatiere` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `CONTROLE`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `ELEVE`
-- 

DROP TABLE IF EXISTS `ELEVE`;
CREATE TABLE `ELEVE` (
  `id_eleve` int(2) NOT NULL auto_increment,
  `nom_eleve` varchar(20) NOT NULL default '',
  `prenom_eleve` varchar(20) NOT NULL default '',
  `id_classe` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_eleve`),
  KEY `fkCLASSE` (`id_classe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1 AUTO_INCREMENT=311 ;

-- 
-- Contenu de la table `ELEVE`
-- 

INSERT INTO `ELEVE` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (1, 'ABOUSALEH', 'MOHAMED', 1),
(2, 'AHNE', 'HABY BATH', 1),
(3, 'BA', 'NDEYE KHADY', 1),
(4, 'BADREDINE', 'FATIMA', 1),
(5, 'GOMIS', 'GAELLE AMINATA', 1),
(6, 'HANNOUCHE', 'SOUAD', 1),
(7, 'KANE', 'IBRAHIMA', 1),
(8, 'KHALIL', 'RANIA', 1),
(9, 'LOPES', 'MARIE PIERRE ABSA', 1),
(10, 'MBENGUE', 'BAYE MOHAMED', 1),
(11, 'MBOUP', 'COUMBA ARENE', 1),
(12, 'MOURAD', 'CHAIMA', 1),
(13, 'NDIAYE', 'MAME ISSEU DIOR', 1),
(14, 'NEHME', 'CHERINE', 1),
(15, 'PIRES DIAS', 'NELLY', 1),
(16, 'POPULO', 'LYDIA', 1),
(17, 'POUYE', 'NDEYE NDIEME', 1),
(18, 'SAAD', 'SAMAR', 1),
(19, 'SARR', 'PAUL PIERRE', 1),
(20, 'WEHBE', 'NEIF CHRISTOPHE', 1),
(21, 'AMRANI HANCHI', 'SOUKAINA', 2),
(22, 'ARDEKANI-DJONEIDI', 'NIKA', 2),
(23, 'ATTYE', 'SAMIR', 2),
(24, 'BAALBAKI', 'JOHANA HAOUI', 2),
(25, 'CISSE', 'ZEINAB', 2),
(26, 'DALUZ', 'LAURENT KEVIN', 2),
(27, 'DEBOES', 'CHANELLE', 2),
(28, 'DOURERADIAM', 'RAMON K. JULIEN', 2),
(29, 'FATTAH', 'MOHAMED', 2),
(30, 'GAFARI', 'HELENE', 2),
(31, 'GHOZAYEL', 'JOANNA', 2),
(32, 'HALAOUI', 'RIWANE', 2),
(33, 'ISSA', 'IBRAHIM', 2),
(34, 'JABER', 'RACHA', 2),
(35, 'KA', 'DJIBLIL CHIMERE', 2),
(36, 'KALACH', 'MOHAMED', 2),
(37, 'KAMARA', 'KHADIJATOU', 2),
(38, 'MATTA', 'JEAN', 2),
(39, 'NDAO', 'MAMADOU', 2),
(40, 'NEMER', 'RAYAN', 2),
(41, 'NIANG', 'NDEYE NGONE', 2),
(42, 'SAHELI', 'YOUSSEF', 2),
(43, 'SAHELI', 'AMAR ESTHER', 2),
(44, 'SOW', 'CHEIKH TIDIANE', 2),
(45, 'YOUSSEF', 'JAMILE', 2),
(46, 'ADOU', 'SEMARIA JESSICA', 3),
(47, 'ALI YAHIA', 'SARAH', 3),
(48, 'CHOUERI', 'LAURA', 3),
(49, 'DAW', 'RACHEL', 3),
(50, 'DIAGNE', 'NDEYE FATOU', 3),
(51, 'DIAGNE', 'PAPA OUSMANE', 3),
(52, 'DIAITE', 'CORINE', 3),
(53, 'FAUGER', 'MAISSA HAMIDOU', 3),
(54, 'FILFILI', 'FOUAD', 3),
(55, 'GHASSANI', 'ISSA', 3),
(56, 'GOMEZ', 'CELIA CORALIE', 3),
(57, 'HASSAN', 'WALID', 3),
(58, 'HIE', 'SIRY ARNAUD BILICOL', 3),
(59, 'KA', 'DIOUMEL', 3),
(60, 'KANE', 'AWA', 3),
(61, 'KONE', 'DONECI', 3),
(62, 'MBAYE', 'CHEIKH ANTA', 3),
(63, 'NDIAYE', 'ALASSANE', 3),
(64, 'NEHME', 'MOHAMED', 3),
(65, 'RAD', 'KRYSTELE', 3),
(66, 'SALMAN', 'RYAN', 3),
(67, 'SECK', 'AMINATA DIOR', 3),
(68, 'SOUMARE', 'ASTA BANTJI', 3),
(69, 'SY', 'KHALIFA ABABACAR', 3),
(70, 'YOUNES', 'HUSSEIN', 3),
(71, 'BALDE', 'OUMOU', 4),
(72, 'CISSOKO', 'BAIDALAYE', 4),
(73, 'DIAKHATE', 'FATOUMATA', 4),
(74, 'NDIAYE', 'DIEYNABA', 4),
(75, 'NDIAYE', 'RAMATOULAYE', 4),
(76, 'SENE', 'MOUHAMADOU', 4),
(77, 'SY', 'EL HADJ ABDOU AZIIZ', 4),
(78, 'WAYZANI', 'LAYAL', 4),
(79, 'DIA', 'ABDOULAYE', 5),
(80, 'DIENG', 'MARIAMA', 5),
(81, 'DIOP', 'MOHAMED LAMINE', 5),
(82, 'MBAYE', 'SERIGNE C. A. A.', 5),
(83, 'NDIAYE', 'MARIE STELLA C. C.', 5),
(84, 'SOW', 'MAODO MALICK', 5),
(85, 'SY', 'BIRAME ALDIOUMA', 5),
(86, 'BADAOUI', 'ZAHRAA', 6),
(87, 'DIOP', 'HASSIM BACHIR', 6),
(88, 'DIOP', 'PAPE MOCTAR', 6),
(89, 'FALL', 'CHEIKH A. B', 6),
(90, 'HABIB', 'EMILIE ELISABETH', 6),
(91, 'NIANG', 'ALIMATOU YVONNE', 6),
(92, 'NIANG', 'IBRAHIM', 6),
(93, 'SAR', 'ANTA', 6),
(94, 'YACOUB', 'ANTOINE', 6),
(95, 'ABDALLAH', 'MARWA', 7),
(96, 'AYAD', 'ZOHRA', 7),
(97, 'AYOUB BAALBAKI', 'CHARIFA', 7),
(98, 'BALESDENS', 'CHARLOTTE', 7),
(99, 'BASMA', 'LOUWANA', 7),
(100, 'BOURGI', 'SANDRA', 7),
(101, 'DAHROUGE', 'RAISSA RANNDA', 7),
(102, 'DAW', 'AMANDA', 7),
(103, 'ESHOUR', 'ZEINA', 7),
(104, 'FARHAT', 'KARINA', 7),
(105, 'FILFILI', 'SAMI', 7),
(106, 'GNASSOU', 'AUDE NATACHA', 7),
(107, 'HAWILI', 'NOUR', 7),
(108, 'KAWAR', 'RAYSSA', 7),
(109, 'KHADRA', 'FADI', 7),
(110, 'LANGLOIS', 'JULIE', 7),
(111, 'LOFF FERNANDES', 'MARIE TESSY', 7),
(112, 'MAHTOUB', 'MIRNA', 7),
(113, 'MARNA', 'CHLOE CAROLINE', 7),
(114, 'NDIAYE', 'BENJAMIN', 7),
(115, 'NEMER', 'STEPHANE', 7),
(116, 'OMAIS', 'NABIL', 7),
(117, 'RANDRIANASOLO', 'ANDY MICHAEL', 7),
(118, 'SY', 'NDATE BAPTISTE', 7),
(119, 'THIAW', 'NDEYE CATHY', 7),
(120, 'THOUMAS', 'ANDREA', 7),
(121, 'VIERA', 'CECILE YVETTE LYDIA', 7),
(122, 'ABOUSALEH', 'MAYA', 8),
(123, 'AJAMI', 'MEHDI', 8),
(124, 'ANDRIANOMEARISOA', 'LUC PHILIPPE PITER', 8),
(125, 'BAZZOUNY', 'WASSIM', 8),
(126, 'BITTAR', 'FREDERIC', 8),
(127, 'DAKHLALLAH', 'ALI', 8),
(128, 'DIALLO', 'ANTA COMBA', 8),
(129, 'DIAW', 'DIADAME JOCELYNE', 8),
(130, 'DIOP', 'MAEVA ANTA', 8),
(131, 'FILFILI', 'RAMI', 8),
(132, 'GIESING', 'JOHANNES RAPHAEL', 8),
(133, 'HAKIM', 'HANADI', 8),
(134, 'HEDROJ', 'ALI', 8),
(135, 'SAHELI', 'AMINA', 8),
(136, 'SALLOUM', 'STEPHANE JOEL', 8),
(137, 'SECK', 'ZEYNABOU', 8),
(138, 'SERIFOU', 'ROCKIA', 8),
(139, 'TALL', 'PAPE SALIOU', 8),
(140, 'TARRAF-KOUJOCK', 'HUSSEIN SAID SEBASTI', 8),
(141, 'ANDRIANOMEARISOA', 'LISA CAROLINECLAIRE', 9),
(142, 'AYOUB', 'ZEYNAB', 9),
(143, 'BADREDINE', 'HUSSEIN', 9),
(144, 'CHOUCAIR', 'LEA', 9),
(145, 'DIAGNE', 'MOHAMED EL MOCTAR', 9),
(146, 'DIALLO', 'MOHAMED', 9),
(147, 'EZZEDINE', 'RIMA', 9),
(148, 'FARHAT', 'LOUANA', 9),
(149, 'FOLY-TOULON', 'EDSON PAUL M. E', 9),
(150, 'HAMLA', 'YACINE', 9),
(151, 'HAWILI', 'SHIRINE', 9),
(152, 'LAFOIX', 'FRANCOIS XAVIER', 9),
(153, 'PINA', 'ADRIEN', 9),
(154, 'SANTOS', 'ARISTIDE M. A.', 9),
(155, 'SEYE', 'MEDOUNE B, THOMAS', 9),
(156, 'SOUMARE', 'MOUHAMED HAMOU', 9),
(157, 'WIZANI', 'MIRNA', 9),
(158, 'YASSINE', 'WASSIM', 9),
(159, 'BA', 'COUMBA', 10),
(160, 'CHAOUCHAR', 'ALIA', 10),
(161, 'COLY', 'NANCY DANY', 10),
(162, 'FALL', 'THIENDELLA NGUENAR', 10),
(163, 'GAYE', 'IBRAHIMA WALY RENE', 10),
(164, 'GAYE', 'MARIE YVONNE', 10),
(165, 'KONE', 'CYRIL FANGA-TOUGA', 10),
(166, 'NDAO', 'MAIMOUNA', 10),
(167, 'NDIAYE', 'MOUHAMADOU M.', 10),
(168, 'NGOM', 'SODA MARIEME', 10),
(169, 'SOW', 'AISSE LALLAH AICHA', 10),
(170, 'SY', 'AMINATA GUENA', 10),
(171, 'TOURE', 'ELIMANE IBRAHIM', 10),
(172, 'TOURE', 'LALLA AICHA A. M.', 10),
(173, 'BA', 'MAME BETTY', 11),
(174, 'COLY', 'AMIDOU DAGNIL', 11),
(175, 'DIOUF', 'DIOLY', 11),
(176, 'DIOUF', 'EL HADJI SOCE', 11),
(177, 'KANE', 'DIEYNABA SALA TAMARA', 11),
(178, 'SECK', 'SEYIDOUNA OMAR', 11),
(179, 'DAHER', 'ALY', 12),
(180, 'DIOP', 'CHEIKH', 12),
(181, 'GUEYE', 'AWA', 12),
(182, 'KOFFI', 'NATEH KPEDRO LOINEL', 12),
(183, 'MBENGUE', 'CHEIKH AHMADOU BAMBA', 12),
(184, 'OYOUBA M. O', 'JUVELLE MATHURINE', 12),
(185, 'SALL', 'FATIMATOU', 12),
(186, 'SOW', 'HABY', 12),
(187, 'ASSI', 'GHAZI', 13),
(188, 'ATTYE', 'FADI', 13),
(189, 'AYAD', 'MOHAMAD', 13),
(190, 'BADAOUI', 'RABIH', 13),
(191, 'BARRY', 'ALYSSA KHADIDIATOU', 13),
(192, 'BONI', 'CHRISTIANE', 13),
(193, 'DIAGNE', 'MARIEME SYLLA', 13),
(194, 'DIALLO', 'AMADOU OUMAR', 13),
(195, 'DIOUF', 'ISMAILA', 13),
(196, 'EL FARRANE', 'KLARA MARIE', 13),
(197, 'FALL', 'KHADIDIATOU', 13),
(198, 'GAYE', 'OULIMATA', 13),
(199, 'GHANDOUR', 'NEIFE', 13),
(200, 'HAKIM', 'HASSAN DANIEL', 13),
(201, 'HARATI', 'CINDY', 13),
(202, 'HELLAL', 'ANAIS', 13),
(203, 'JOUBAILY', 'ZEINA', 13),
(204, 'KHALAF', 'FARAH', 13),
(205, 'LATH', 'MARIE ANGELE', 13),
(206, 'MAAZ', 'MEHDI', 13),
(207, 'MBODJI', 'YERIM', 13),
(208, 'MERRE', 'FLORIAN CLAUDE', 13),
(209, 'NDIAYE', 'AWA', 13),
(210, 'NEHME', 'SABRINA', 13),
(211, 'OUIS', 'ADLANE CHAZIL', 13),
(212, 'PONSARD', 'ADRIEN JOSEPH', 13),
(213, 'RICOU', 'JOSEPHA VENISE', 13),
(214, 'SAHELI', 'FADEL', 13),
(215, 'SAIEL', 'NOUR', 13),
(216, 'SALL', 'PENDA SOLENE', 13),
(217, 'SEGUY', 'LOUIS MARIE JAMES', 13),
(218, 'SOUFANE', 'HASSAN', 13),
(219, 'TAGEDDINE', 'NADINE', 13),
(220, 'TALL', 'ABY MBAYE', 13),
(221, 'TOURE', 'KHOUDIA YATMA', 13),
(222, 'WAYZANI', 'DAMIR', 13),
(223, 'WIZANI', 'RAMI', 13),
(224, 'ATTYE', 'RACHEL', 14),
(225, 'AYOUB', 'ZAHRA', 14),
(226, 'BASMA', 'SALHA', 14),
(227, 'BAYLE', 'LUCAS', 14),
(228, 'BOISSELET', 'SOPHIE', 14),
(229, 'CASTANO', 'MARINE', 14),
(230, 'CHIRARA', 'ZAM-ZAM', 14),
(231, 'CHOKOR', 'SAMER', 14),
(232, 'COLLIN', 'SYLVIE MARIE NDELLA', 14),
(233, 'DIARRA', 'REYANE', 14),
(234, 'EZZEDINE', 'RADWANE', 14),
(235, 'GBAGUIDI', 'ARNAUD MEDE TONDJI', 14),
(236, 'GHABDOUNE', 'ZEINA', 14),
(237, 'GUEYE', 'AMINA FALY', 14),
(238, 'HACHEM', 'ALI', 14),
(239, 'HAJAALI', 'SADRY', 14),
(240, 'HOBALLAH', 'NADER', 14),
(241, 'JABER', 'MIRNA', 14),
(242, 'JOHER', 'SALIM', 14),
(243, 'KIBBE', 'SARAH', 14),
(244, 'KIBBE', 'SARAH', 14),
(245, 'KONDE', 'CECILE', 14),
(246, 'LEMASLE', 'GUILLAUME', 14),
(247, 'MATOKO', 'GUILLABERT E. FABIEN', 14),
(248, 'MBENGUE', 'BABACAR J.', 14),
(249, 'NAFFAH', 'MARIE JOSEPHINE', 14),
(250, 'NDIAYE', 'KHADIDIATOU', 14),
(251, 'OUIS', 'LINA CHAHINEZ', 14),
(252, 'SALME', 'ALY', 14),
(253, 'SARR', 'ALPHONSE NDEME', 14),
(254, 'SECK', 'MERRY ANN ANITA', 14),
(255, 'SIDANI', 'ALI', 14),
(256, 'SOW', 'NAOMI JIHANE', 14),
(257, 'YASSINE', 'HUSSEIN JUNIOR', 14),
(258, 'YOUSSEF', 'MAHDI', 14),
(259, 'ATTYE', 'MIRVATE', 15),
(260, 'AYAD', 'MEHDI', 15),
(261, 'BA', 'SALLA TAMARA NALLA', 15),
(262, 'BADREDINE', 'MOHAMED', 15),
(263, 'CISSE', 'REINE RAYMONDE', 15),
(264, 'DIDI', 'AWADA DAVID', 15),
(265, 'DIENG', 'MASSAMBA ETIENNE', 15),
(266, 'DIOUF', 'RAMATOULAYE LOUISE', 15),
(267, 'EL SAYEGH', 'LARA', 15),
(268, 'GEBARA', 'ISSA', 15),
(269, 'GHASSANI', 'HANADI', 15),
(270, 'GUIGON', 'LOREDANA', 15),
(271, 'HAKIM', 'SARAH', 15),
(272, 'HOBALLAH', 'CHERINE', 15),
(273, 'HUSEINI', 'ABDEL KARIM', 15),
(274, 'JABER', 'CHERINE', 15),
(275, 'KHADRA', 'HUSSEIN', 15),
(276, 'KHOCHMAN', 'RYAN', 15),
(277, 'LAKHDAR', 'MOHAMED ANIS', 15),
(278, 'LOPES', 'AIDA MICHELLE', 15),
(279, 'MBODJI', 'MAME AWA', 15),
(280, 'MONTEIRO', 'ORNELLA', 15),
(281, 'NAFFAH', 'MARIE JOSEPHINE', 15),
(282, 'NDIAYE', 'ANTOINE M. J. S.', 15),
(283, 'NDIAYE', 'KHADIJA ZEINAB', 15),
(284, 'SALMAN', 'SARAH', 15),
(285, 'SANE', 'ABIBATOU MARELA', 15),
(286, 'SONKO', 'AISSATOU DIALLO', 15),
(287, 'WAZNI', 'ALY FADEL', 15),
(288, 'WEHBE', 'ROXANE SOUAD MARIE', 15),
(289, 'YACTINE', 'HASSAN DANIEL', 15),
(290, 'YONIS', 'FARIS LAURENT', 15),
(291, 'DIENE', 'SAÏNABOU THIEME', 16),
(292, 'DIOP', 'NDEYE BINTA', 16),
(293, 'FOFANA', 'LALA AÏCHA', 16),
(294, 'GUEYE', 'DONA AICHA NDICKOU', 16),
(295, 'BOLSANE', 'PAUL ISSA MARTIAL', 17),
(296, 'DIALLO', 'IBRAHIMA', 17),
(297, 'DIOP', 'NDEYE MARIAMA', 17),
(298, 'DIOP', 'MAME KHOUDIA', 17),
(299, 'DIOUF', 'MAME AWA FLORENCE', 17),
(300, 'FARHAT', 'ALI', 17),
(301, 'FENAICHE', 'KARINA', 17),
(302, 'ISSA', 'CHARBEL', 17),
(303, 'LO', 'OLD AHMADOU', 17),
(304, 'MBOUP', 'MAGUETTE', 17),
(305, 'NDIAYE', 'AMADOU LAMINE', 17),
(306, 'NDIAYE', 'NDEYE FAMA MODY', 17),
(307, 'SAKHO', 'AMSATOU DIOUF', 17),
(308, 'SANKE', 'KHADIM', 17),
(309, 'SANKE', 'MOHAMED', 17),
(310, 'THIAM', 'ANNA', 17);

-- --------------------------------------------------------

-- 
-- Structure de la table `ENSEIGNE`
-- 

DROP TABLE IF EXISTS `ENSEIGNE`;
CREATE TABLE `ENSEIGNE` (
  `id_professeur` int(2) NOT NULL default '0',
  `id_classe` int(2) NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_professeur`,`id_classe`,`id_matiere`),
  KEY `fkCLASSE` (`id_classe`),
  KEY `fkMATIERE` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `ENSEIGNE`
-- 

INSERT INTO `ENSEIGNE` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (5, 1, 2),
(5, 2, 16),
(6, 3, 2),
(6, 7, 2),
(7, 10, 23),
(7, 14, 23),
(7, 15, 23),
(7, 16, 23),
(8, 5, 5),
(8, 6, 5),
(8, 11, 5),
(8, 12, 5),
(8, 16, 5),
(8, 17, 5),
(10, 1, 15),
(10, 2, 15),
(10, 3, 15),
(10, 13, 15),
(12, 3, 5),
(12, 9, 5),
(12, 9, 34),
(16, 9, 2),
(16, 13, 2),
(16, 15, 2),
(17, 1, 8),
(17, 8, 8),
(17, 9, 8),
(18, 8, 2),
(18, 8, 34),
(18, 14, 2),
(19, 5, 2),
(19, 6, 2),
(19, 11, 2),
(19, 12, 2),
(19, 17, 2),
(20, 7, 1),
(20, 8, 1),
(22, 2, 4),
(22, 7, 4),
(22, 8, 4),
(22, 8, 34),
(23, 16, 1),
(23, 17, 1),
(24, 4, 15),
(24, 5, 15),
(24, 6, 15),
(24, 15, 15),
(26, 5, 4),
(26, 14, 4),
(26, 15, 4),
(28, 9, 1),
(29, 2, 5),
(36, 14, 3),
(64, 1, 7),
(64, 2, 7),
(64, 3, 7),
(64, 4, 7),
(64, 7, 7),
(64, 8, 7),
(64, 9, 7),
(64, 10, 7),
(64, 11, 7),
(64, 12, 7),
(64, 13, 7),
(64, 14, 7),
(64, 15, 7),
(64, 16, 7),
(64, 17, 7),
(67, 16, 14),
(67, 17, 14),
(69, 14, 14),
(69, 15, 14),
(72, 14, 13),
(73, 1, 14),
(73, 2, 14),
(73, 3, 14),
(73, 7, 10),
(73, 8, 10),
(73, 9, 10),
(73, 10, 10),
(73, 11, 10),
(73, 12, 10),
(73, 14, 14),
(74, 1, 17),
(74, 2, 17),
(74, 3, 17),
(74, 4, 17),
(75, 3, 4),
(75, 9, 4),
(75, 13, 4),
(76, 1, 13),
(76, 7, 13),
(77, 4, 8),
(77, 5, 8),
(77, 6, 8),
(77, 10, 8),
(77, 11, 8),
(77, 12, 8),
(77, 13, 8),
(77, 13, 27),
(77, 16, 8),
(77, 17, 8),
(78, 1, 10),
(78, 2, 10),
(78, 3, 10),
(78, 4, 1),
(78, 4, 10),
(78, 5, 1),
(78, 5, 10),
(78, 6, 1),
(78, 6, 10),
(78, 10, 1),
(78, 11, 1),
(78, 12, 1),
(78, 13, 10),
(78, 15, 10),
(79, 10, 4),
(79, 12, 4),
(80, 6, 4),
(80, 11, 4),
(81, 1, 9),
(81, 2, 9),
(81, 3, 9),
(81, 4, 9),
(81, 7, 9),
(81, 8, 9),
(81, 9, 9),
(81, 10, 9),
(81, 11, 9),
(81, 12, 9),
(81, 13, 9),
(81, 14, 9),
(81, 15, 9),
(82, 3, 13),
(82, 9, 13),
(82, 13, 13),
(85, 1, 23),
(85, 7, 23),
(85, 7, 34),
(85, 13, 23),
(87, 4, 13),
(87, 10, 13),
(87, 11, 13),
(87, 12, 13),
(87, 16, 13),
(87, 17, 13),
(88, 16, 15),
(88, 17, 15),
(89, 13, 1),
(91, 15, 1),
(95, 3, 8),
(95, 7, 8),
(96, 7, 10),
(96, 8, 10),
(96, 9, 10),
(96, 10, 10),
(96, 11, 10),
(96, 12, 10),
(96, 13, 14),
(97, 14, 1),
(98, 13, 5),
(98, 14, 5),
(103, 10, 15),
(103, 11, 15),
(103, 12, 15),
(103, 14, 15),
(109, 4, 14),
(109, 5, 14),
(109, 5, 17),
(109, 6, 14),
(109, 6, 17),
(109, 7, 14),
(109, 8, 14),
(109, 9, 14),
(109, 10, 14),
(109, 11, 14),
(109, 12, 14),
(109, 14, 10),
(110, 4, 4),
(111, 2, 8),
(111, 14, 8),
(111, 15, 8),
(112, 2, 13),
(112, 8, 13),
(112, 15, 13),
(113, 8, 5),
(113, 8, 34),
(113, 15, 5),
(114, 4, 2),
(114, 10, 2),
(115, 7, 15),
(115, 7, 33),
(115, 8, 15);

-- --------------------------------------------------------

-- 
-- Structure de la table `MATIERE`
-- 

DROP TABLE IF EXISTS `MATIERE`;
CREATE TABLE `MATIERE` (
  `id_matiere` int(2) NOT NULL auto_increment,
  `nom_matiere` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- 
-- Contenu de la table `MATIERE`
-- 

INSERT INTO `MATIERE` (`id_matiere`, `nom_matiere`) VALUES (1, 'Francais'),
(2, 'Mathematiques'),
(3, 'Informatique'),
(4, 'SVT'),
(5, 'Physique-Chimie'),
(23, 'Sceinces Eco'),
(7, 'Allemand'),
(8, 'Anglais'),
(9, 'Arabe'),
(10, 'Catéchèse'),
(11, 'ECJS'),
(12, 'EPS'),
(13, 'Espagnol'),
(14, 'Ethique'),
(15, 'Histoire-Geo'),
(16, 'Mathématiques'),
(17, 'Philosophie'),
(18, 'Spé Math'),
(19, 'Spé Physique'),
(20, 'Spé SVT'),
(22, 'Heure de vie'),
(24, 'Sciences Eco'),
(25, 'Spe Anglais'),
(26, 'Spe SES'),
(27, 'Anglais renforce'),
(28, 'Module Anglais'),
(29, 'Module Francais'),
(30, 'Module HG'),
(31, 'Module Maths'),
(32, 'Soutien Francais'),
(33, 'Soutien Maths'),
(34, 'TPE');

-- --------------------------------------------------------

-- 
-- Structure de la table `MOYENNE`
-- 

DROP TABLE IF EXISTS `MOYENNE`;
CREATE TABLE `MOYENNE` (
  `id_moyenne` int(2) NOT NULL default '0',
  `nb_moyenne` float NOT NULL default '0',
  PRIMARY KEY  (`id_moyenne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `MOYENNE`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `NOTE`
-- 

DROP TABLE IF EXISTS `NOTE`;
CREATE TABLE `NOTE` (
  `id_note` int(2) NOT NULL auto_increment,
  `NOTE` int(2) default NULL,
  `id_controle` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_note`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `NOTE`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `OBTIENT`
-- 

DROP TABLE IF EXISTS `OBTIENT`;
CREATE TABLE `OBTIENT` (
  `id_eleve` int(2) NOT NULL default '0',
  `id_note` int(2) NOT NULL default '0',
  KEY `fkNOTE` (`id_note`),
  KEY `fkELEVE` (`id_eleve`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `OBTIENT`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `PROFESSEUR`
-- 

DROP TABLE IF EXISTS `PROFESSEUR`;
CREATE TABLE `PROFESSEUR` (
  `id_professeur` int(2) NOT NULL auto_increment,
  `nom_professeur` varchar(20) character set utf8 collate utf8_bin NOT NULL default '',
  `prenom_professeur` varchar(20) character set utf8 NOT NULL default '',
  `mdp` varchar(8) character set utf8 NOT NULL default '',
  `adr_mail` varchar(30) character set utf8 default NULL,
  PRIMARY KEY  (`id_professeur`),
  FULLTEXT KEY `prenom_professeur` (`prenom_professeur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

-- 
-- Contenu de la table `PROFESSEUR`
-- 

INSERT INTO `PROFESSEUR` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (5, 'BLANDA', 'Patrick', 'pblanda', NULL),
(6, 'MONDOLONI', 'Michel', 'mmondolo', NULL),
(7, 'GBAGUIDI', 'Ambroise', 'agbaguid', NULL),
(8, 'DIENG', 'Sada', 'sdieng', NULL),
(10, 'LAGIER', 'Patrice', 'plagier', NULL),
(112, 'DIALLO', 'Véronique', 'védiallo', NULL),
(12, 'ANDRIANOMEARISOA', 'Toussaint', 'tandrian', NULL),
(113, 'WAECHTER', 'Sylvie', 'swaechte', NULL),
(16, 'VULLIERME', 'Pierre', 'pvullier', 'vullierme@hotmail.com'),
(17, 'BERNARD', 'Marie Claire', 'mbernard', NULL),
(18, 'FOUCHER', 'Christophe', 'cfoucher', 'foucher_chrstop@yahoo.fr'),
(19, 'DIOUF', 'Mame Cheikh', 'mdiouf', NULL),
(20, 'MENRATH', 'Maryline', 'mmenrath', NULL),
(21, 'UTHEZA', 'Philippe', 'putheza', NULL),
(22, 'PAFADNAM', 'Christine', 'cpafadna', NULL),
(23, 'NDOUR', 'Pierre', 'pndour', NULL),
(24, 'SANTOS', 'Laurent', 'lsantos', NULL),
(25, 'LARDY', 'Fran?oise', 'flardy', NULL),
(26, 'NDIAYE', 'Assane', 'andiaye', NULL),
(27, 'NDIAYE', 'A?ssatou', 'andiaye', NULL),
(28, 'AUDINOS', 'Dominique', 'daudinos', NULL),
(29, 'PONS', 'Michel', 'mpons', NULL),
(31, 'MOUVY', 'Pascal', 'pmouvy', NULL),
(32, 'ESTRADE', 'Stephane', 'sestrade', NULL),
(36, 'SCHALCK', 'Baptiste', 'bschalck', NULL),
(64, 'SOW', 'Madeleine', 'msow', NULL),
(110, 'FALL', 'Mactar', 'mfall', NULL),
(67, 'SAMBOU', 'Henri Philippe', 'hsambou', NULL),
(68, 'BADJI', 'Ibrahima', 'ibadji', NULL),
(69, 'COLY', 'Philémon', 'pcoly', NULL),
(70, 'SAGNA', 'Gabriel', 'gsagna', NULL),
(71, 'SYLVA', 'Valdemar', 'vsylva', NULL),
(72, 'TEBECHERANI', 'Valerie', 'vtebechi', NULL),
(73, 'ROUX', 'Florence', 'froux', NULL),
(74, 'KARTMANN', 'Liza', 'lkartman', NULL),
(75, 'DIARA', 'Mariline', 'mdiara', NULL),
(76, 'RAHAL', 'Antoinette', 'arahal', NULL),
(77, 'SILVA', 'Alain', 'asilva', NULL),
(78, 'FAYE', 'Georges', 'gfaye', NULL),
(79, 'GBAGUIDI', 'Rachel', 'rgbaguid', NULL),
(80, 'CISSE', 'Irene', 'icisse', NULL),
(81, 'BASSE', 'Aboubacar', 'abasse', NULL),
(82, 'DIOKHANE', 'Dame', 'ddiokhan', NULL),
(83, 'NDIONE', 'Josephine', 'jndione', NULL),
(84, 'NDIAYE', 'Aissatou', 'andiaye', NULL),
(85, 'DE LOUSTAL', 'Thierry', 'tde lous', NULL),
(86, 'CABANE', 'Romain', 'rcabane', NULL),
(87, 'SARR', 'Francois', 'fsarr', NULL),
(88, 'WANE', 'Ahmadou Tidiane', 'awane', NULL),
(89, 'DACOSTA', 'Suzanne', 'sdacosta', NULL),
(90, 'SORBADERE', 'Pierre', 'psorbade', NULL),
(91, 'DERWICHE', 'Rina', 'rderwich', NULL),
(109, 'Janette', 'soeur', 'janette', NULL),
(93, 'BECHARA', 'Evelyne', 'ebechara', NULL),
(94, 'SALEH', 'Najat', 'nsaleh', NULL),
(95, 'SY', 'Jacqueline', 'jsy', NULL),
(96, 'BIAGUI', 'Adolphe', 'abiagui', NULL),
(97, 'GROUAS', 'Valerie', 'vgrouas', NULL),
(98, 'MAERTENS', 'Philippe', 'pmaerten', NULL),
(99, 'NDIONE', 'Pierre-Claver', 'pndione', NULL),
(100, 'BRUNO', 'Frere', 'fbruno', NULL),
(103, 'NDOUR', 'Birame', 'bndour', NULL),
(111, 'FAYE', 'Florence', 'ffaye', NULL),
(114, 'GBAGUIDI', 'Maurice', 'mgbaguid', NULL),
(115, 'JAROUSSE', 'Anne', 'ajarouss', NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `TRIMESTRE`
-- 

DROP TABLE IF EXISTS `TRIMESTRE`;
CREATE TABLE `TRIMESTRE` (
  `id_eleve` int(2) NOT NULL default '0',
  `id_moyenne` int(2) NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  `TRIMESTRE` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_eleve`,`id_moyenne`,`id_matiere`),
  KEY `fkELEVE` (`id_eleve`),
  KEY `fkMOYENNE` (`id_moyenne`),
  KEY `fkMATIERE` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `TRIMESTRE``TRIMESTRE`professeurprofesseur
-- 

