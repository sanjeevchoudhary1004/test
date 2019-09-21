-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 07:23 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trasersplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `receive_updates` tinyint(4) NOT NULL DEFAULT '1',
  `receive_news` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '1',
  `lang_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `added` int(11) NOT NULL DEFAULT '0',
  `changed` int(11) NOT NULL DEFAULT '0',
  `logged` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reffered` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `events_notifications` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `First Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Last Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sys_accounts`
--

INSERT INTO `sys_accounts` (`id`, `profile_id`, `name`, `email`, `email_confirmed`, `phone`, `phone_confirmed`, `receive_updates`, `receive_news`, `password`, `salt`, `role`, `lang_id`, `added`, `changed`, `logged`, `ip`, `reffered`, `login_attempts`, `locked`, `events_notifications`, `First Name`, `Last Name`) VALUES
(1, 4, 'admin', 'admin@stgplus.trasers.com', 1, '', 0, 1, 1, 'da224dfa29ebcfe424e1277f534aca7f91712973', '8RbcKsTm', 3, 0, 1536649653, 0, 1550576318, '218.214.84.107', '', 0, 0, NULL, NULL, NULL),
(2, 3, 'UNA Team', 'team@una.io', 1, '', 0, 1, 0, '08353dc379f570ab2b56d5898a87713cb6d0ef54', '7HzP2G8N', 3, 0, 1536654612, 1536654612, 1536654612, '218.214.84.107', 'https://trianz.una.io/page/create-account', 3, 0, NULL, NULL, NULL),
(3, 6, 'Dharmendra Sharma', 'dharmendra.sharma@trianz.com', 1, '', 0, 1, 1, '5e1988d1723ba767760f5247f819b070433600ad', '.&thpXN4', 1, 0, 1538026360, 1538026360, 1538026360, '61.246.221.179', 'https://trianz.una.io/page/create-account', 0, 0, NULL, NULL, NULL),
(65, 147, 'raviteja.mandarapu', 'raviteja.mandarapu@trianz.com', 1, '', 0, 1, 0, 'f872ff6e7a06aa52ed96c1a4ae4c3d7eda44bd98', 'Xp+hnrmv', 1, 0, 1542200016, 1542200016, 1543502354, '165.225.104.108', 'https://stgplus.trasers.com/m/drupal/login_submit', 0, 0, NULL, NULL, NULL),
(78, 175, 'sai krishna', 'saikrishna.v@trianz.com', 1, '', 0, 1, 0, 'f82b70d97927749c93319fc9e27a9f040551ed4b', 'U6s6g?63', 1, 0, 1543584504, 1543584504, 1550571500, '165.225.104.109', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(5, 26, 'Prashant', 'prashant.bhavaraju@trianz.com', 1, '', 0, 1, 0, '744377417d11045b64f44e8c68cd70d15de26bd8', 'Ufs3zTN6', 1, 0, 1539173866, 1539173866, 1541503428, '165.225.104.95', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(6, 28, 'Sri', 'sri.manchala@trianz.com', 1, '', 0, 1, 0, 'ce59623286653b6aa639117b9dfc4110a5b1967c', 'ZZEbxM2g', 1, 0, 1539176747, 1539176747, 1542055330, '12.205.168.171', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(7, 30, 'Hooman', 'hooman.sakkaki@trianz.com', 1, '', 0, 1, 0, '76fa7870cca3e8979a62098a6fab29e3cf878e71', 'KkLyNPHg', 1, 0, 1539279293, 1539279293, 1551912458, '12.205.168.171', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(57, 131, 'Rashmi', 'rashmi.prajapati@trianz.com', 1, '', 0, 1, 0, 'aa9a054d47cd3c7c5cf03fbd7252ba33f379167a', 'RQwMzQCX', 1, 0, 1540299043, 1540299043, 1551700431, '165.225.104.107', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(58, 133, 'Durga', 'durgaprasad.v@trasers.com', 1, '', 0, 1, 0, 'f943e15d4057cd2524a966de28ce8391b6c691a1', 'wv.+q/ip', 3, 0, 1540383024, 1540383024, 1568565333, '::1', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(59, 135, 'plusadmin.business', 'plusadmin.business@trasers.com', 1, '', 0, 1, 0, '07ccdcab5ca8fa7191b6dda8447a92933ca76cc6', '=G,3LVKM', 1, 0, 1541487570, 1541487570, 1541487570, '165.225.104.89', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(60, 137, 'plusadmin.it', 'plusadmin.it@trasers.com', 1, '', 0, 1, 0, '7a5a8d5c74ba7938c2f09d9cbc7445753784c644', 'SZA.,,!a', 1, 0, 1541487699, 1541487699, 1541487699, '165.225.104.89', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(61, 139, 'plusadmin.technology', 'plusadmin.technology@trasers.com', 1, '', 0, 1, 0, 'f5798f08dafeadd98fbcb700c2b7ba5f7e1ce10a', 'jhCp8Zg8', 1, 0, 1541487718, 1541487718, 1541487718, '165.225.104.89', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(67, 151, 'plusadmin.messenger', 'plusadmin.messenger@trasers.com', 1, '', 0, 1, 0, '6f11b2b82bd1ce3bb5ced5749ea5f7383b99f3fd', '/FQdbU9c', 1, 0, 1542766994, 1542766994, 1542766994, '218.214.84.107', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(63, 143, 'AntonL', 'al@una.io', 1, '', 0, 1, 0, '7df0c9719df5babcb09d3a35ee0ea3577e1966ea', 'Gs/YfW3S', 3, 0, 1541745055, 1541745055, 1541745055, '188.243.63.206', 'https://stgplus.trasers.com/page/create-account', 0, 0, NULL, NULL, NULL),
(64, 145, 'Prashant', 'prashant.bhavaraju@trasers.com', 1, '', 0, 1, 0, 'c3b20bb054f7a149cba04cd025f245982d7c653e', 'gB26T2V3', 1, 0, 1541748170, 1541748170, 1551172290, '165.225.104.109', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(66, 149, 'Raghav', 'raghav.kapoor@trianz.com', 1, '', 0, 1, 0, 'b4acc0135686e769cc1511052f64896219b259af', '2iZrkYH6', 1, 0, 1542617986, 1542617986, 1545900743, '165.225.104.89', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(77, 173, 'Bala', 'balakrishna.t@trianz.com', 1, '', 0, 1, 0, 'f943e15d4057cd2524a966de28ce8391b6c691a1', 'wv.+q/ip', 1, 0, 1543409868, 1543409868, 1547627196, '165.225.104.94', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(79, 177, 'Premnath', 'jeedi.premnath@trianz.com', 1, '', 0, 1, 0, '7eb45b76d355a40c600b5e6744f4b4f3bdeac110', 'bbnzVtcd', 1, 0, 1544094970, 1544094970, 1547205547, '165.225.104.89', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(80, 179, 'Dipti', 'dipti.agarwal@trianz.com', 1, '', 0, 1, 1, '9ef860b0aec063b47d01ed53d877afff0ef2206d', 'k+S42Vgg', 1, 0, 1544101719, 1544781436, 1559120895, '::1', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(81, 181, 'Priyanka', 'priyanka.joshi@trianz.com', 1, '', 0, 1, 0, '813665e9db7f1545357ed96a68110b10e619a142', ',F,?TAY4', 1, 0, 1545908618, 1545908618, 1551851385, '93.157.175.38', 'https://stgplus.trasers.com/m/drupal/login_submit', 0, 0, NULL, NULL, NULL),
(82, 183, 'srinivasulu ', 'srinivasulu.yanamala@trianz.com', 1, '', 0, 1, 0, '30b0a28760b78024528cf59b1d39badea8f3a6bb', '56STB+Pk', 1, 0, 1546866826, 1546866826, 1547457293, '165.225.104.95', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(83, 185, 'Sylvester', 'sylvester.simon@trianz.com', 1, '', 0, 1, 0, '281983da8e7fa1d39b0d47ea836cc8858468c138', 'Fuv/C,BM', 1, 0, 1546929472, 1546929472, 1546929472, '165.225.104.94', 'https://stgplus.trasers.com/m/drupal/login_submit', 0, 0, NULL, NULL, NULL),
(84, 187, 'Shailesh', 'shailesh.dubey@trianz.com', 1, '', 0, 1, 0, 'd2ac05364ff54b0bccc50ed697d0d0f163c01dc9', 'w2gpBBeV', 1, 0, 1546932132, 1546932132, 1546932132, '165.225.104.94', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(85, 189, 'sai krishna', 'saikrishna.v@trasers.com', 1, '', 0, 1, 0, '4d15dbee25e1d0a6b0ca746c2b0e524d90513310', '9Px9ra4M', 1, 0, 1547204123, 1547204123, 1547204123, '165.225.104.106', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(86, 191, 'ashu', 'ashutoshkumar.ojha@trianz.com', 1, '', 0, 1, 0, 'ed6807abec72f5e78d81686bd05e85ca7ed4df2f', '9Ee,hDXK', 1, 0, 1547707274, 1547707274, 1548235326, '165.225.104.89', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(89, 197, 'Anil', 'anil.gupta@trianz.com', 1, '', 0, 1, 0, '2cfd4908d9dd79c157206bf139cf169d8635c064', 'HZe/75e3', 1, 0, 1548840400, 1548840400, 1548840400, '165.225.104.110', 'https://stgplus.trasers.com/m/drupal/login_submit', 0, 0, NULL, NULL, NULL),
(87, 193, 'Nagarajan', 'nagarajan.kanagamani@trianz.com', 1, '', 0, 1, 0, '6eb3983df8fc9f0f39bd41b1c23a87d176545661', '5TKLaT2H', 1, 0, 1548058175, 1548058175, 1548058175, '165.225.104.109', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(88, 195, 'Dibyojyoti', 'dibyojyoti.majumder@trianz.com', 1, '', 0, 1, 0, 'a000ad081c832d2baa77bb854479da9488afbf35', ',CHmNy82', 1, 0, 1548064507, 1548064507, 1548849948, '165.225.104.106', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(90, 200, 'Durga', 'durgaprasad.v@trianz.com', 1, '', 0, 1, 0, '0a7d6103a4d19cee08ce1bb5d230f91422aa998d', 'Fy8?c4U4', 1, 0, 1551760454, 1551760454, 1567054399, '::1', 'https://stgplus.trasers.com/', 0, 0, NULL, NULL, NULL),
(93, 347, 'testing6', 'testing6@trasers.com', 1, '', 0, 1, 0, 'bb53965fb26a7cf34cb766d89a027f7281cdc794', '2G/??P?C', 1, 0, 1559804382, 1559804382, 1559899296, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(94, 349, 'testing1', 'testing1@trasers.com', 1, '', 0, 1, 0, 'aa5d0d39f76af72dd5055f07546373efd1550a3b', 'VZg!bN2X', 1, 0, 1559879985, 1559879985, 1559891197, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(95, 351, 'testing4', 'testing4@trasers.com', 1, '', 0, 1, 0, '5fc8efe15967783c10bcce253bd2a98d97b4183e', 'HN3p?dft', 1, 0, 1559880181, 1559880181, 1559898151, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(96, 353, 'testing2', 'testing2@trasers.com', 1, '', 0, 1, 0, 'b646d6c3422242c770bf37151ce81c10f05f3856', 'pWeQqnUT', 1, 0, 1559880441, 1559880441, 1559891848, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(97, 355, 'testing3', 'testing3@trasers.com', 1, '', 0, 1, 0, '0cd7204b0b0dcd075091c792a1100d6cdeacc7d2', 'bYH2b5&e', 1, 0, 1559880564, 1559880564, 1559892291, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(98, 357, 'testing5', 'testing5@trasers.com', 1, '', 0, 1, 0, 'b4764a16bae4ec93a28f121f8ec31f85e06c1347', '8R!jdv/3', 1, 0, 1559880673, 1559880673, 1559898565, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(99, 359, 'testing7', 'testing7@trasers.com', 1, '', 0, 1, 0, 'e36fd5319e15847ebd509c466a1f7a4ed1ef1edb', 'bsFY46pG', 1, 0, 1559887292, 1559887292, 1559901422, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(100, 361, 'testing8', 'testing8@trasers.com', 1, '', 0, 1, 0, 'c20687c91ba02186ac2da5456e01f9165130f826', '4N8e.TD3', 1, 0, 1559887767, 1559887767, 1559891079, '::1', 'http://localhost:8082/trasers-plus/', 0, 0, NULL, NULL, NULL),
(101, 378, 'sanjeev', 'sanjeev.choudhary@trianz.com', 1, '', 0, 1, 0, '6df1b528237ba42289bb2f87b8da960354824d1a', 'DSrqbqU.', 3, 0, 1568958820, 1568958820, 1569041021, '::1', 'http://localhost/trasersplus/', 1, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(191)),
  ADD KEY `added` (`added`),
  ADD KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
