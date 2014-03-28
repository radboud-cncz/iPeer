--
-- recreate the ACL
--
DROP TABLE IF EXISTS `acos`;
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO acos (id, parent_id, model, foreign_key, alias, lft, rght) VALUES
(1, NULL, NULL, NULL, 'adminpage', 1, 2),
(2, NULL, NULL, NULL, 'controllers', 3, 596),
(3, 2, NULL, NULL, 'Pages', 4, 17),
(4, 3, NULL, NULL, 'display', 5, 6),
(5, 3, NULL, NULL, 'add', 7, 8),
(6, 3, NULL, NULL, 'edit', 9, 10),
(7, 3, NULL, NULL, 'index', 11, 12),
(8, 3, NULL, NULL, 'view', 13, 14),
(9, 3, NULL, NULL, 'delete', 15, 16),
(10, 2, NULL, NULL, 'Accesses', 18, 29),
(11, 10, NULL, NULL, 'view', 19, 20),
(12, 10, NULL, NULL, 'edit', 21, 22),
(13, 10, NULL, NULL, 'add', 23, 24),
(14, 10, NULL, NULL, 'index', 25, 26),
(15, 10, NULL, NULL, 'delete', 27, 28),
(16, 2, NULL, NULL, 'Courses', 30, 53),
(17, 16, NULL, NULL, 'daysLate', 31, 32),
(18, 16, NULL, NULL, 'index', 33, 34),
(19, 16, NULL, NULL, 'ajaxList', 35, 36),
(20, 16, NULL, NULL, 'view', 37, 38),
(21, 16, NULL, NULL, 'home', 39, 40),
(22, 16, NULL, NULL, 'add', 41, 42),
(23, 16, NULL, NULL, 'edit', 43, 44),
(24, 16, NULL, NULL, 'delete', 45, 46),
(25, 16, NULL, NULL, 'move', 47, 48),
(26, 16, NULL, NULL, 'ajax_options', 49, 50),
(27, 16, NULL, NULL, 'import', 51, 52),
(28, 2, NULL, NULL, 'Departments', 54, 65),
(29, 28, NULL, NULL, 'index', 55, 56),
(30, 28, NULL, NULL, 'view', 57, 58),
(31, 28, NULL, NULL, 'add', 59, 60),
(32, 28, NULL, NULL, 'edit', 61, 62),
(33, 28, NULL, NULL, 'delete', 63, 64),
(34, 2, NULL, NULL, 'Emailer', 66, 93),
(35, 34, NULL, NULL, 'setUpAjaxList', 67, 68),
(36, 34, NULL, NULL, 'ajaxList', 69, 70),
(37, 34, NULL, NULL, 'index', 71, 72),
(38, 34, NULL, NULL, 'write', 73, 74),
(39, 34, NULL, NULL, 'cancel', 75, 76),
(40, 34, NULL, NULL, 'view', 77, 78),
(41, 34, NULL, NULL, 'addRecipient', 79, 80),
(42, 34, NULL, NULL, 'deleteRecipient', 81, 82),
(43, 34, NULL, NULL, 'getRecipient', 83, 84),
(44, 34, NULL, NULL, 'searchByUserId', 85, 86),
(45, 34, NULL, NULL, 'add', 87, 88),
(46, 34, NULL, NULL, 'edit', 89, 90),
(47, 34, NULL, NULL, 'delete', 91, 92),
(48, 2, NULL, NULL, 'Emailtemplates', 94, 113),
(49, 48, NULL, NULL, 'setUpAjaxList', 95, 96),
(50, 48, NULL, NULL, 'ajaxList', 97, 98),
(51, 48, NULL, NULL, 'index', 99, 100),
(52, 48, NULL, NULL, 'add', 101, 102),
(53, 48, NULL, NULL, 'edit', 103, 104),
(54, 48, NULL, NULL, 'delete', 105, 106),
(55, 48, NULL, NULL, 'view', 107, 108),
(56, 48, NULL, NULL, 'displayTemplateContent', 109, 110),
(57, 48, NULL, NULL, 'displayTemplateSubject', 111, 112),
(58, 2, NULL, NULL, 'Evaltools', 114, 125),
(59, 58, NULL, NULL, 'index', 115, 116),
(60, 58, NULL, NULL, 'add', 117, 118),
(61, 58, NULL, NULL, 'edit', 119, 120),
(62, 58, NULL, NULL, 'view', 121, 122),
(63, 58, NULL, NULL, 'delete', 123, 124),
(64, 2, NULL, NULL, 'Evaluations', 126, 165),
(65, 64, NULL, NULL, 'setUpAjaxList', 127, 128),
(66, 64, NULL, NULL, 'ajaxList', 129, 130),
(67, 64, NULL, NULL, 'view', 131, 132),
(68, 64, NULL, NULL, 'index', 133, 134),
(69, 64, NULL, NULL, 'export', 135, 136),
(70, 64, NULL, NULL, 'makeEvaluation', 137, 138),
(71, 64, NULL, NULL, 'completeEvaluationRubric', 139, 140),
(72, 64, NULL, NULL, 'viewEvaluationResults', 141, 142),
(73, 64, NULL, NULL, 'studentViewEvaluationResult', 143, 144),
(74, 64, NULL, NULL, 'markEventReviewed', 145, 146),
(75, 64, NULL, NULL, 'markGradeRelease', 147, 148),
(76, 64, NULL, NULL, 'markCommentRelease', 149, 150),
(77, 64, NULL, NULL, 'changeAllCommentRelease', 151, 152),
(78, 64, NULL, NULL, 'changeAllGradeRelease', 153, 154),
(79, 64, NULL, NULL, 'viewGroupSubmissionDetails', 155, 156),
(80, 64, NULL, NULL, 'viewSurveySummary', 157, 158),
(81, 64, NULL, NULL, 'add', 159, 160),
(82, 64, NULL, NULL, 'edit', 161, 162),
(83, 64, NULL, NULL, 'delete', 163, 164),
(84, 2, NULL, NULL, 'Events', 166, 193),
(85, 84, NULL, NULL, 'postProcessData', 167, 168),
(86, 84, NULL, NULL, 'setUpAjaxList', 169, 170),
(87, 84, NULL, NULL, 'index', 171, 172),
(88, 84, NULL, NULL, 'ajaxList', 173, 174),
(89, 84, NULL, NULL, 'view', 175, 176),
(90, 84, NULL, NULL, 'add', 177, 178),
(91, 84, NULL, NULL, 'setSchedule', 179, 180),
(92, 84, NULL, NULL, 'getGroupMembers', 181, 182),
(93, 84, NULL, NULL, 'edit', 183, 184),
(94, 84, NULL, NULL, 'checkIfChanged', 185, 186),
(95, 84, NULL, NULL, 'calculateFrequency', 187, 188),
(96, 84, NULL, NULL, 'delete', 189, 190),
(97, 84, NULL, NULL, 'checkDuplicateName', 191, 192),
(98, 2, NULL, NULL, 'Faculties', 194, 205),
(99, 98, NULL, NULL, 'index', 195, 196),
(100, 98, NULL, NULL, 'view', 197, 198),
(101, 98, NULL, NULL, 'add', 199, 200),
(102, 98, NULL, NULL, 'edit', 201, 202),
(103, 98, NULL, NULL, 'delete', 203, 204),
(104, 2, NULL, NULL, 'Framework', 206, 221),
(105, 104, NULL, NULL, 'calendarDisplay', 207, 208),
(106, 104, NULL, NULL, 'tutIndex', 209, 210),
(107, 104, NULL, NULL, 'add', 211, 212),
(108, 104, NULL, NULL, 'edit', 213, 214),
(109, 104, NULL, NULL, 'index', 215, 216),
(110, 104, NULL, NULL, 'view', 217, 218),
(111, 104, NULL, NULL, 'delete', 219, 220),
(112, 2, NULL, NULL, 'Groups', 222, 241),
(113, 112, NULL, NULL, 'setUpAjaxList', 223, 224),
(114, 112, NULL, NULL, 'index', 225, 226),
(115, 112, NULL, NULL, 'ajaxList', 227, 228),
(116, 112, NULL, NULL, 'view', 229, 230),
(117, 112, NULL, NULL, 'add', 231, 232),
(118, 112, NULL, NULL, 'edit', 233, 234),
(119, 112, NULL, NULL, 'delete', 235, 236),
(120, 112, NULL, NULL, 'import', 237, 238),
(121, 112, NULL, NULL, 'export', 239, 240),
(122, 2, NULL, NULL, 'Home', 242, 253),
(123, 122, NULL, NULL, 'index', 243, 244),
(124, 122, NULL, NULL, 'add', 245, 246),
(125, 122, NULL, NULL, 'edit', 247, 248),
(126, 122, NULL, NULL, 'view', 249, 250),
(127, 122, NULL, NULL, 'delete', 251, 252),
(128, 2, NULL, NULL, 'Install', 254, 275),
(129, 128, NULL, NULL, 'index', 255, 256),
(130, 128, NULL, NULL, 'install2', 257, 258),
(131, 128, NULL, NULL, 'install3', 259, 260),
(132, 128, NULL, NULL, 'install4', 261, 262),
(133, 128, NULL, NULL, 'install5', 263, 264),
(134, 128, NULL, NULL, 'gpl', 265, 266),
(135, 128, NULL, NULL, 'add', 267, 268),
(136, 128, NULL, NULL, 'edit', 269, 270),
(137, 128, NULL, NULL, 'view', 271, 272),
(138, 128, NULL, NULL, 'delete', 273, 274),
(139, 2, NULL, NULL, 'Lti', 276, 287),
(140, 139, NULL, NULL, 'index', 277, 278),
(141, 139, NULL, NULL, 'add', 279, 280),
(142, 139, NULL, NULL, 'edit', 281, 282),
(143, 139, NULL, NULL, 'view', 283, 284),
(144, 139, NULL, NULL, 'delete', 285, 286),
(145, 2, NULL, NULL, 'Mixevals', 288, 305),
(146, 145, NULL, NULL, 'setUpAjaxList', 289, 290),
(147, 145, NULL, NULL, 'index', 291, 292),
(148, 145, NULL, NULL, 'ajaxList', 293, 294),
(149, 145, NULL, NULL, 'view', 295, 296),
(150, 145, NULL, NULL, 'add', 297, 298),
(151, 145, NULL, NULL, 'edit', 299, 300),
(152, 145, NULL, NULL, 'copy', 301, 302),
(153, 145, NULL, NULL, 'delete', 303, 304),
(154, 2, NULL, NULL, 'Oauthclients', 306, 317),
(155, 154, NULL, NULL, 'index', 307, 308),
(156, 154, NULL, NULL, 'add', 309, 310),
(157, 154, NULL, NULL, 'edit', 311, 312),
(158, 154, NULL, NULL, 'delete', 313, 314),
(159, 154, NULL, NULL, 'view', 315, 316),
(160, 2, NULL, NULL, 'Oauthtokens', 318, 329),
(161, 160, NULL, NULL, 'index', 319, 320),
(162, 160, NULL, NULL, 'add', 321, 322),
(163, 160, NULL, NULL, 'edit', 323, 324),
(164, 160, NULL, NULL, 'delete', 325, 326),
(165, 160, NULL, NULL, 'view', 327, 328),
(166, 2, NULL, NULL, 'Penalty', 330, 343),
(167, 166, NULL, NULL, 'save', 331, 332),
(168, 166, NULL, NULL, 'add', 333, 334),
(169, 166, NULL, NULL, 'edit', 335, 336),
(170, 166, NULL, NULL, 'index', 337, 338),
(171, 166, NULL, NULL, 'view', 339, 340),
(172, 166, NULL, NULL, 'delete', 341, 342),
(173, 2, NULL, NULL, 'Rubrics', 344, 363),
(174, 173, NULL, NULL, 'postProcess', 345, 346),
(175, 173, NULL, NULL, 'setUpAjaxList', 347, 348),
(176, 173, NULL, NULL, 'index', 349, 350),
(177, 173, NULL, NULL, 'ajaxList', 351, 352),
(178, 173, NULL, NULL, 'view', 353, 354),
(179, 173, NULL, NULL, 'add', 355, 356),
(180, 173, NULL, NULL, 'edit', 357, 358),
(181, 173, NULL, NULL, 'copy', 359, 360),
(182, 173, NULL, NULL, 'delete', 361, 362),
(183, 2, NULL, NULL, 'Searchs', 364, 391),
(184, 183, NULL, NULL, 'update', 365, 366),
(185, 183, NULL, NULL, 'index', 367, 368),
(186, 183, NULL, NULL, 'searchEvaluation', 369, 370),
(187, 183, NULL, NULL, 'searchResult', 371, 372),
(188, 183, NULL, NULL, 'searchInstructor', 373, 374),
(189, 183, NULL, NULL, 'eventBoxSearch', 375, 376),
(190, 183, NULL, NULL, 'formatSearchEvaluation', 377, 378),
(191, 183, NULL, NULL, 'formatSearchInstructor', 379, 380),
(192, 183, NULL, NULL, 'formatSearchEvaluationResult', 381, 382),
(193, 183, NULL, NULL, 'add', 383, 384),
(194, 183, NULL, NULL, 'edit', 385, 386),
(195, 183, NULL, NULL, 'view', 387, 388),
(196, 183, NULL, NULL, 'delete', 389, 390),
(197, 2, NULL, NULL, 'Simpleevaluations', 392, 411),
(198, 197, NULL, NULL, 'postProcess', 393, 394),
(199, 197, NULL, NULL, 'setUpAjaxList', 395, 396),
(200, 197, NULL, NULL, 'index', 397, 398),
(201, 197, NULL, NULL, 'ajaxList', 399, 400),
(202, 197, NULL, NULL, 'view', 401, 402),
(203, 197, NULL, NULL, 'add', 403, 404),
(204, 197, NULL, NULL, 'edit', 405, 406),
(205, 197, NULL, NULL, 'copy', 407, 408),
(206, 197, NULL, NULL, 'delete', 409, 410),
(207, 2, NULL, NULL, 'Surveygroups', 412, 443),
(208, 207, NULL, NULL, 'postProcess', 413, 414),
(209, 207, NULL, NULL, 'setUpAjaxList', 415, 416),
(210, 207, NULL, NULL, 'index', 417, 418),
(211, 207, NULL, NULL, 'ajaxList', 419, 420),
(212, 207, NULL, NULL, 'makegroups', 421, 422),
(213, 207, NULL, NULL, 'makegroupssearch', 423, 424),
(214, 207, NULL, NULL, 'maketmgroups', 425, 426),
(215, 207, NULL, NULL, 'savegroups', 427, 428),
(216, 207, NULL, NULL, 'release', 429, 430),
(217, 207, NULL, NULL, 'delete', 431, 432),
(218, 207, NULL, NULL, 'edit', 433, 434),
(219, 207, NULL, NULL, 'changegroupset', 435, 436),
(220, 207, NULL, NULL, 'export', 437, 438),
(221, 207, NULL, NULL, 'add', 439, 440),
(222, 207, NULL, NULL, 'view', 441, 442),
(223, 2, NULL, NULL, 'Surveys', 444, 473),
(224, 223, NULL, NULL, 'setUpAjaxList', 445, 446),
(225, 223, NULL, NULL, 'index', 447, 448),
(226, 223, NULL, NULL, 'ajaxList', 449, 450),
(227, 223, NULL, NULL, 'view', 451, 452),
(228, 223, NULL, NULL, 'add', 453, 454),
(229, 223, NULL, NULL, 'edit', 455, 456),
(230, 223, NULL, NULL, 'copy', 457, 458),
(231, 223, NULL, NULL, 'delete', 459, 460),
(232, 223, NULL, NULL, 'questionsSummary', 461, 462),
(233, 223, NULL, NULL, 'moveQuestion', 463, 464),
(234, 223, NULL, NULL, 'removeQuestion', 465, 466),
(235, 223, NULL, NULL, 'addQuestion', 467, 468),
(236, 223, NULL, NULL, 'editQuestion', 469, 470),
(237, 223, NULL, NULL, 'surveyAccess', 471, 472),
(238, 2, NULL, NULL, 'Sysparameters', 474, 489),
(239, 238, NULL, NULL, 'setUpAjaxList', 475, 476),
(240, 238, NULL, NULL, 'index', 477, 478),
(241, 238, NULL, NULL, 'ajaxList', 479, 480),
(242, 238, NULL, NULL, 'view', 481, 482),
(243, 238, NULL, NULL, 'add', 483, 484),
(244, 238, NULL, NULL, 'edit', 485, 486),
(245, 238, NULL, NULL, 'delete', 487, 488),
(246, 2, NULL, NULL, 'Upgrade', 490, 503),
(247, 246, NULL, NULL, 'index', 491, 492),
(248, 246, NULL, NULL, 'step2', 493, 494),
(249, 246, NULL, NULL, 'add', 495, 496),
(250, 246, NULL, NULL, 'edit', 497, 498),
(251, 246, NULL, NULL, 'view', 499, 500),
(252, 246, NULL, NULL, 'delete', 501, 502),
(253, 2, NULL, NULL, 'Users', 504, 541),
(254, 253, NULL, NULL, 'ajaxList', 505, 506),
(255, 253, NULL, NULL, 'index', 507, 508),
(256, 253, NULL, NULL, 'goToClassList', 509, 510),
(257, 253, NULL, NULL, 'determineIfStudentFromThisData', 511, 512),
(258, 253, NULL, NULL, 'view', 513, 514),
(259, 253, NULL, NULL, 'add', 515, 516),
(260, 253, NULL, NULL, 'enrol', 517, 518),
(261, 253, NULL, NULL, 'edit', 519, 520),
(262, 253, NULL, NULL, 'editProfile', 521, 522),
(263, 253, NULL, NULL, 'delete', 523, 524),
(264, 253, NULL, NULL, 'checkDuplicateName', 525, 526),
(265, 253, NULL, NULL, 'resetPassword', 527, 528),
(266, 253, NULL, NULL, 'resetPasswordWithoutEmail', 529, 530),
(267, 253, NULL, NULL, 'import', 531, 532),
(268, 253, NULL, NULL, 'merge', 533, 534),
(269, 253, NULL, NULL, 'ajax_merge', 535, 536),
(270, 253, NULL, NULL, 'update', 537, 538),
(271, 253, NULL, NULL, 'showEvents', 539, 540),
(272, 2, NULL, NULL, 'V1', 542, 577),
(273, 272, NULL, NULL, 'oauth', 543, 544),
(274, 272, NULL, NULL, 'oauth_error', 545, 546),
(275, 272, NULL, NULL, 'users', 547, 548),
(276, 272, NULL, NULL, 'courses', 549, 550),
(277, 272, NULL, NULL, 'groups', 551, 552),
(278, 272, NULL, NULL, 'groupMembers', 553, 554),
(279, 272, NULL, NULL, 'events', 555, 556),
(280, 272, NULL, NULL, 'grades', 557, 558),
(281, 272, NULL, NULL, 'departments', 559, 560),
(282, 272, NULL, NULL, 'courseDepartments', 561, 562),
(283, 272, NULL, NULL, 'userEvents', 563, 564),
(284, 272, NULL, NULL, 'enrolment', 565, 566),
(285, 272, NULL, NULL, 'add', 567, 568),
(286, 272, NULL, NULL, 'edit', 569, 570),
(287, 272, NULL, NULL, 'index', 571, 572),
(288, 272, NULL, NULL, 'view', 573, 574),
(289, 272, NULL, NULL, 'delete', 575, 576),
(290, 2, NULL, NULL, 'Guard', 578, 595),
(291, 290, NULL, NULL, 'Guard', 579, 594),
(292, 291, NULL, NULL, 'login', 580, 581),
(293, 291, NULL, NULL, 'logout', 582, 583),
(294, 291, NULL, NULL, 'add', 584, 585),
(295, 291, NULL, NULL, 'edit', 586, 587),
(296, 291, NULL, NULL, 'index', 588, 589),
(297, 291, NULL, NULL, 'view', 590, 591),
(298, 291, NULL, NULL, 'delete', 592, 593),
(299, NULL, NULL, NULL, 'functions', 597, 662),
(300, 299, NULL, NULL, 'user', 598, 625),
(301, 300, NULL, NULL, 'superadmin', 599, 600),
(302, 300, NULL, NULL, 'admin', 601, 602),
(303, 300, NULL, NULL, 'instructor', 603, 604),
(304, 300, NULL, NULL, 'tutor', 605, 606),
(305, 300, NULL, NULL, 'student', 607, 608),
(306, 300, NULL, NULL, 'import', 609, 610),
(307, 300, NULL, NULL, 'password_reset', 611, 622),
(308, 307, NULL, NULL, 'superadmin', 612, 613),
(309, 307, NULL, NULL, 'admin', 614, 615),
(310, 307, NULL, NULL, 'instructor', 616, 617),
(311, 307, NULL, NULL, 'tutor', 618, 619),
(312, 307, NULL, NULL, 'student', 620, 621),
(313, 300, NULL, NULL, 'index', 623, 624),
(314, 299, NULL, NULL, 'role', 626, 637),
(315, 314, NULL, NULL, 'superadmin', 627, 628),
(316, 314, NULL, NULL, 'admin', 629, 630),
(317, 314, NULL, NULL, 'instructor', 631, 632),
(318, 314, NULL, NULL, 'tutor', 633, 634),
(319, 314, NULL, NULL, 'student', 635, 636),
(320, 299, NULL, NULL, 'evaluation', 638, 639),
(321, 299, NULL, NULL, 'email', 640, 647),
(322, 321, NULL, NULL, 'allUsers', 641, 642),
(323, 321, NULL, NULL, 'allGroups', 643, 644),
(324, 321, NULL, NULL, 'allCourses', 645, 646),
(325, 299, NULL, NULL, 'emailtemplate', 648, 649),
(326, 299, NULL, NULL, 'viewstudentresults', 650, 651),
(327, 299, NULL, NULL, 'viewemailaddresses', 652, 653),
(328, 299, NULL, NULL, 'superadmin', 654, 655),
(329, 299, NULL, NULL, 'coursemanager', 656, 657),
(330, 299, NULL, NULL, 'viewusername', 658, 659),
(331, 299, NULL, NULL, 'submitstudenteval', 660, 661);

DROP TABLE IF EXISTS `aros`;
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, NULL, 1, 2),
(2, NULL, 'Role', 2, NULL, 3, 4),
(3, NULL, 'Role', 3, NULL, 5, 6),
(4, NULL, 'Role', 4, NULL, 7, 8),
(5, NULL, 'Role', 5, NULL, 9, 10);

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO aros_acos (id, aro_id, aco_id, _create, _read, _update, _delete) VALUES
(1, 1, 2, '1', '1', '1', '1'),
(2, 1, 299, '1', '1', '1', '1'),
(3, 1, 1, '1', '1', '1', '1'),
(4, 2, 2, '-1', '-1', '-1', '-1'),
(5, 2, 122, '1', '1', '1', '1'),
(6, 2, 16, '1', '1', '1', '1'),
(7, 2, 28, '1', '1', '1', '1'),
(8, 2, 31, '-1', '-1', '-1', '-1'),
(9, 2, 30, '-1', '-1', '-1', '-1'),
(10, 2, 33, '-1', '-1', '-1', '-1'),
(11, 2, 32, '-1', '-1', '-1', '-1'),
(12, 2, 29, '-1', '-1', '-1', '-1'),
(13, 2, 34, '1', '1', '1', '1'),
(14, 2, 48, '1', '1', '1', '1'),
(15, 2, 58, '1', '1', '1', '1'),
(16, 2, 64, '1', '1', '1', '1'),
(17, 2, 84, '1', '1', '1', '1'),
(18, 2, 112, '1', '1', '1', '1'),
(19, 2, 145, '1', '1', '1', '1'),
(20, 2, 173, '1', '1', '1', '1'),
(21, 2, 197, '1', '1', '1', '1'),
(22, 2, 223, '1', '1', '1', '1'),
(23, 2, 207, '1', '1', '1', '1'),
(24, 2, 253, '1', '1', '1', '1'),
(25, 2, 266, '-1', '-1', '-1', '-1'),
(26, 2, 293, '1', '1', '1', '1'),
(27, 2, 299, '-1', '-1', '-1', '-1'),
(28, 2, 325, '1', '1', '1', '1'),
(29, 2, 320, '1', '1', '1', '1'),
(30, 2, 322, '1', '1', '1', '1'),
(31, 2, 300, '1', '1', '1', '1'),
(32, 2, 302, '1', '1', '1', '-1'),
(33, 2, 301, '-1', '-1', '-1', '-1'),
(34, 2, 327, '1', '1', '1', '1'),
(35, 2, 330, '1', '1', '1', '1'),
(36, 2, 329, '1', '1', '1', '1'),
(37, 2, 328, '-1', '-1', '-1', '-1'),
(38, 2, 331, '1', '1', '1', '1'),
(39, 3, 2, '-1', '-1', '-1', '-1'),
(40, 3, 122, '1', '1', '1', '1'),
(41, 3, 16, '1', '1', '1', '1'),
(42, 3, 34, '1', '1', '1', '1'),
(43, 3, 48, '1', '1', '1', '1'),
(44, 3, 58, '1', '1', '1', '1'),
(45, 3, 64, '1', '1', '1', '1'),
(46, 3, 84, '1', '1', '1', '1'),
(47, 3, 112, '1', '1', '1', '1'),
(48, 3, 145, '1', '1', '1', '1'),
(49, 3, 173, '1', '1', '1', '1'),
(50, 3, 197, '1', '1', '1', '1'),
(51, 3, 223, '1', '1', '1', '1'),
(52, 3, 207, '1', '1', '1', '1'),
(53, 3, 253, '1', '1', '1', '1'),
(54, 3, 293, '1', '1', '1', '1'),
(55, 3, 156, '1', '1', '1', '1'),
(56, 3, 158, '1', '1', '1', '1'),
(57, 3, 162, '1', '1', '1', '1'),
(58, 3, 164, '1', '1', '1', '1'),
(59, 3, 268, '-1', '-1', '-1', '-1'),
(60, 3, 271, '1', '1', '1', '1'),
(61, 3, 266, '-1', '-1', '-1', '-1'),
(62, 3, 299, '-1', '-1', '-1', '-1'),
(63, 3, 320, '1', '1', '-1', '-1'),
(64, 3, 300, '1', '1', '1', '1'),
(65, 3, 302, '-1', '-1', '-1', '-1'),
(66, 3, 301, '-1', '-1', '-1', '-1'),
(67, 3, 303, '-1', '1', '-1', '-1'),
(68, 3, 313, '-1', '-1', '-1', '-1'),
(69, 3, 327, '-1', '-1', '-1', '-1'),
(70, 3, 328, '-1', '-1', '-1', '-1'),
(71, 3, 329, '1', '1', '1', '1'),
(72, 3, 331, '-1', '-1', '-1', '-1'),
(73, 4, 2, '-1', '-1', '-1', '-1'),
(74, 4, 122, '1', '1', '1', '1'),
(75, 4, 16, '-1', '-1', '-1', '-1'),
(76, 4, 34, '-1', '-1', '-1', '-1'),
(77, 4, 48, '-1', '-1', '-1', '-1'),
(78, 4, 58, '-1', '-1', '-1', '-1'),
(79, 4, 84, '-1', '-1', '-1', '-1'),
(80, 4, 112, '-1', '-1', '-1', '-1'),
(81, 4, 145, '-1', '-1', '-1', '-1'),
(82, 4, 173, '-1', '-1', '-1', '-1'),
(83, 4, 197, '-1', '-1', '-1', '-1'),
(84, 4, 223, '-1', '-1', '-1', '-1'),
(85, 4, 207, '-1', '-1', '-1', '-1'),
(86, 4, 253, '-1', '-1', '-1', '-1'),
(87, 4, 293, '1', '1', '1', '1'),
(88, 4, 70, '1', '1', '1', '1'),
(89, 4, 73, '1', '1', '1', '1'),
(90, 4, 71, '1', '1', '1', '1'),
(91, 4, 262, '1', '1', '1', '1'),
(92, 4, 299, '-1', '-1', '-1', '-1'),
(93, 4, 327, '-1', '-1', '-1', '-1'),
(94, 4, 328, '-1', '-1', '-1', '-1'),
(95, 5, 2, '-1', '-1', '-1', '-1'),
(96, 5, 122, '1', '1', '1', '1'),
(97, 5, 16, '-1', '-1', '-1', '-1'),
(98, 5, 34, '-1', '-1', '-1', '-1'),
(99, 5, 48, '-1', '-1', '-1', '-1'),
(100, 5, 58, '-1', '-1', '-1', '-1'),
(101, 5, 84, '-1', '-1', '-1', '-1'),
(102, 5, 112, '-1', '-1', '-1', '-1'),
(103, 5, 145, '-1', '-1', '-1', '-1'),
(104, 5, 173, '-1', '-1', '-1', '-1'),
(105, 5, 197, '-1', '-1', '-1', '-1'),
(106, 5, 223, '-1', '-1', '-1', '-1'),
(107, 5, 207, '-1', '-1', '-1', '-1'),
(108, 5, 253, '-1', '-1', '-1', '-1'),
(109, 5, 293, '1', '1', '1', '1'),
(110, 5, 70, '1', '1', '1', '1'),
(111, 5, 73, '1', '1', '1', '1'),
(112, 5, 71, '1', '1', '1', '1'),
(113, 5, 262, '1', '1', '1', '1'),
(114, 5, 156, '1', '1', '1', '1'),
(115, 5, 158, '1', '1', '1', '1'),
(116, 5, 162, '1', '1', '1', '1'),
(117, 5, 164, '1', '1', '1', '1'),
(118, 5, 299, '-1', '-1', '-1', '-1'),
(119, 5, 326, '1', '1', '1', '1'),
(120, 5, 327, '-1', '-1', '-1', '-1'),
(121, 5, 328, '-1', '-1', '-1', '-1');

-- This file contains queries that add a single column to three tables.
-- This column is used to hide/show the evaluation marks to the user.

ALTER TABLE mixeval_questions ADD show_marks INT(1) NOT NULL DEFAULT '0' AFTER scale_level;
ALTER TABLE rubrics_criterias ADD show_marks INT(1) NOT NULL DEFAULT '0' AFTER multiplier;
ALTER TABLE rubrics ADD view_mode VARCHAR(10) NOT NULL DEFAULT 'student' AFTER criteria;
ALTER TABLE evaluation_rubric_details ADD comment_release INT(1) NOT NULL DEFAULT '0' AFTER grade;
ALTER TABLE evaluation_mixeval_details ADD comment_release INT(1) NOT NULL DEFAULT '0' AFTER grade;

-- Insert new email merges
INSERT INTO `email_merges` (`id`, `key`, `value`, `table_name`, `field_name`, `created`, `modified`) VALUES
(5, 'Course Name', '{{{COURSENAME}}}', 'Course', 'course', NOW(), NOW()),
(6, 'Event Title', '{{{EVENTTITLE}}}', 'Event', 'title', NOW(), NOW()),
(7, 'Event Due Date', '{{{DUEDATE}}}', 'Event', 'due_date', NOW(), NOW()),
(8, 'Event Close Date', '{{{CLOSEDATE}}}', 'Event', 'release_date_end', NOW(), NOW());

-- Update database version, done as the very last operation as a sign that
-- the update went well.
UPDATE `sys_parameters` SET `parameter_value` = '7' WHERE `parameter_code` = 'database.version';