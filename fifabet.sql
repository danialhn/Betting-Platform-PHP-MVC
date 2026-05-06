
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almasbet_bet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `login_id` int(5) NOT NULL,
  `login_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `login_ip` varchar(256) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `login_user_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`login_id`, `login_date`, `login_ip`, `login_user_id`) VALUES
(1, '1396-04-15 02:10:15', '5.200.185.49', 1),
(30, '1396-04-21 04:54:41', '139.59.189.136', 1);

-- --------------------------------------------------------

--
-- Table structure for table `allow_ips`
--

CREATE TABLE `allow_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `ip_comment` text COLLATE utf8_persian_ci NOT NULL,
  `date_added` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `bet_id` int(11) NOT NULL,
  `bet_user_id` int(11) NOT NULL,
  `bet_period` varchar(5000) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `bet_date` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `bet_amount` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `bet_win_amount` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `bet_multi_koef` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `bet_closed` tinyint(4) NOT NULL DEFAULT '0',
  `bet_won` tinyint(4) NOT NULL DEFAULT '0',
  `is_mix` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `bets`
--

INSERT INTO `bets` (`bet_id`, `bet_user_id`, `bet_period`, `bet_date`, `bet_amount`, `bet_win_amount`, `bet_multi_koef`, `bet_closed`, `bet_won`, `is_mix`) VALUES
(2, 3, 'TSV Havelse (Ger)=Hannover (Ger)=903=World=برد میهمان=1.1=فوتبال=1=back|Javor Ivanjica=FK Rudar Pljevlja=1438=flag=برد میهمان=14.0=فوتبال=1=back| Lauterach=Cashpoint R Altach =1457=flag=برد میهمان=1.18=فوتبال=1=back', '1396-04-20 22:36:07', '2000', '20000', '10.00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(5) NOT NULL,
  `category_parent_id` int(5) NOT NULL,
  `category_name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `category_seo` varchar(256) CHARACTER SET utf8 NOT NULL,
  `category_file_name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `category_image_pic` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `category_description` text CHARACTER SET utf8 NOT NULL,
  `category_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `category_order` int(11) NOT NULL,
  `category_outer_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_parent_id`, `category_name`, `category_seo`, `category_file_name`, `category_image_pic`, `category_description`, `category_date`, `category_order`, `category_outer_id`) VALUES
(1, 0, 'فوتبال', 'فوتبال', 'sport_soccer.png', 'sport_soccer1.png', '&amp;lt;p&amp;gt;\r\n	فوتبال&amp;lt;/p&amp;gt;', '1395-05-15 14:45:50', 0, 0),
(2, 0, 'بسکتبال', 'بسکتبال', 'sport_basketball.png', 'sport_basketball1.png', '&amp;lt;p&amp;gt;\r\n	بسکتبال&amp;lt;/p&amp;gt;', '1395-05-15 14:47:08', 0, 0),
(3, 0, 'هاکی', 'هاکی', 'field_hockey.png', 'field_hockey1.png', '&amp;lt;p&amp;gt;\r\n	هاکی&amp;lt;/p&amp;gt;', '1395-05-15 14:48:40', 0, 0),
(4, 0, 'والیبال', 'والیبال', 'volleyball.png', 'volleyball1.png', '&amp;lt;p&amp;gt;\r\n	والیبال&amp;lt;/p&amp;gt;', '1395-05-15 14:50:12', 0, 0),
(5, 0, 'هندبال', 'هندبال', 'volleyball-ball-game-16.png', 'volleyball-ball-game-161.png', '&amp;lt;p&amp;gt;\r\n	هندبال&amp;lt;/p&amp;gt;', '1395-05-15 14:53:04', 0, 0),
(6, 0, 'بیسبال', 'بیسبال', 'baseball_ball.png', 'baseball_ball1.png', '&amp;lt;p&amp;gt;\r\n	بیسبال&amp;lt;/p&amp;gt;', '1395-05-15 14:55:29', 0, 0),
(7, 0, 'فوتسال', 'فوتسال', 'football-16.png', 'football-161.png', '&amp;lt;p&amp;gt;\r\n	فوتسال&amp;lt;/p&amp;gt;', '1395-05-15 14:58:26', 0, 0),
(8, 0, 'فوتبال آمریکایی', 'فوتبال-آمریکایی', 'sport_football.png', 'sport_football1.png', '&amp;lt;p&amp;gt;\n	فوتبال آمریکایی&amp;lt;/p&amp;gt;', '1395-05-15 14:57:04', 0, 0),
(9, 0, 'فلوربال', 'فلوربال', 'floorball.png', '0', 'فلوربال', '1395-05-15 03:12:52', 0, 0),
(10, 1, ' South America › Copa Sudamericana ', 'Copa Sudamericana', '', '', ' South America › Copa Sudamericana ', '1396-01-16 15:30:05', 0, 0),
(11, 1, ' Brazil › Copa Verde ', 'Copa Verde', '', '', ' Brazil › Copa Verde ', '1396-01-16 15:30:08', 0, 0),
(12, 1, ' South America › Recopa Sudamericana ', 'Recopa Sudamericana', '', '', ' South America › Recopa Sudamericana ', '1396-01-16 15:30:10', 0, 0),
(13, 1, ' Argentina › Primera B Metropolitana ', 'Primera B Metropolitana', '', '', ' Argentina › Primera B Metropolitana ', '1396-01-16 15:30:11', 0, 0),
(14, 1, ' USA › USL ', 'USL', '', '', ' USA › USL ', '1396-01-16 15:30:13', 0, 0),
(15, 1, ' Mexico › Copa Mexico ', 'Copa Mexico', '', '', ' Mexico › Copa Mexico ', '1396-01-16 15:30:17', 0, 0),
(16, 1, ' North & Central America › CONCACAF Champions League ', 'CONCACAF Champions League', '', '', ' North & Central America › CONCACAF Champions League ', '1396-01-16 15:30:22', 0, 0),
(17, 1, ' Asia › Asian Cup Women ', 'Asian Cup Women', '', '', ' Asia › Asian Cup Women ', '1396-01-16 15:30:24', 0, 0),
(18, 1, ' Asia › AFC Cup ', 'AFC Cup', '', '', ' Asia › AFC Cup ', '1396-01-16 15:30:26', 0, 0),
(19, 1, ' Europe › Euro U19 Women ', 'Euro U19 Women', '', '', ' Europe › Euro U19 Women ', '1396-01-16 15:30:27', 0, 0),
(20, 1, ' Australia › Northern NSW ', 'Northern NSW', '', '', ' Australia › Northern NSW ', '1396-01-16 15:30:28', 0, 0),
(21, 1, ' Australia › NPL South Australian ', 'NPL South Australian', '', '', ' Australia › NPL South Australian ', '1396-01-16 15:30:30', 0, 0),
(22, 1, ' Ukraine › Ukrainian Cup ', 'Ukrainian Cup', '', '', ' Ukraine › Ukrainian Cup ', '1396-01-16 15:30:35', 0, 0),
(23, 1, ' Serbia › Serbian Cup ', 'Serbian Cup', '', '', ' Serbia › Serbian Cup ', '1396-01-16 15:30:36', 0, 0),
(24, 1, ' Iran › Persian Gulf Pro League ', 'Persian Gulf Pro League', '', '', ' Iran › Persian Gulf Pro League ', '1396-01-16 15:30:37', 0, 0),
(25, 1, ' Turkey › TFF 3. Lig Group 1 ', 'TFF 3. Lig Group 1', '', '', ' Turkey › TFF 3. Lig Group 1 ', '1396-01-16 15:30:38', 0, 0),
(26, 1, ' Iran › Division 1 ', 'Division 1', '', '', ' Iran › Division 1 ', '1396-01-16 15:30:39', 0, 0),
(27, 1, ' Greece › Super League ', 'Super League', '', '', ' Greece › Super League ', '1396-01-16 15:30:45', 0, 0),
(28, 1, ' Russia › Division 2 - South ', 'Division 2 - South', '', '', ' Russia › Division 2 - South ', '1396-01-16 15:30:48', 0, 0),
(29, 1, ' Kenya › Premier League ', 'Premier League', '', '', ' Kenya › Premier League ', '1396-01-16 15:30:55', 0, 0),
(30, 1, ' Georgia › Erovnuli Liga ', 'Erovnuli Liga', '', '', ' Georgia › Erovnuli Liga ', '1396-01-16 15:30:56', 0, 0),
(31, 1, ' Czech Republic › U19 League ', 'U19 League', '', '', ' Czech Republic › U19 League ', '1396-01-16 15:30:58', 0, 0),
(32, 1, ' Italy › Lega Pro - Group B ', 'Lega Pro - Group B', '', '', ' Italy › Lega Pro - Group B ', '1396-01-16 15:31:00', 0, 0),
(33, 1, ' Italy › Lega Pro - Group C ', 'Lega Pro - Group C', '', '', ' Italy › Lega Pro - Group C ', '1396-01-16 15:31:01', 0, 0),
(34, 1, ' Azerbaijan › Azerbaijan Cup ', 'Azerbaijan Cup', '', '', ' Azerbaijan › Azerbaijan Cup ', '1396-01-16 15:31:08', 0, 0),
(35, 1, ' Romania › Liga 1 ', 'Liga 1', '', '', ' Romania › Liga 1 ', '1396-01-16 15:31:10', 0, 0),
(36, 1, ' Moldova › Divizia Nationala ', 'Divizia Nationala', '', '', ' Moldova › Divizia Nationala ', '1396-01-16 15:31:12', 0, 0),
(37, 1, ' Uganda › Premier League ', 'Premier League', '', '', ' Uganda › Premier League ', '1396-01-16 15:31:13', 0, 0),
(38, 1, ' Egypt › Premier League ', 'Premier League', '', '', ' Egypt › Premier League ', '1396-01-16 15:31:14', 0, 0),
(39, 1, ' Montenegro › Division 2 ', 'Division 2', '', '', ' Montenegro › Division 2 ', '1396-01-16 15:31:15', 0, 0),
(40, 1, ' Serbia › Prva Liga ', 'Prva Liga', '', '', ' Serbia › Prva Liga ', '1396-01-16 15:31:15', 0, 0),
(41, 1, ' Rwanda › National Football league ', 'National Football league', '', '', ' Rwanda › National Football league ', '1396-01-16 15:31:17', 0, 0),
(42, 1, ' United Arab Emirates › UAE League ', 'UAE League', '', '', ' United Arab Emirates › UAE League ', '1396-01-16 15:31:18', 0, 0),
(43, 1, ' FYR of Macedonia › First League ', 'First League', '', '', ' FYR of Macedonia › First League ', '1396-01-16 15:31:20', 0, 0),
(44, 1, ' Bosnia and Herzegovina › Premier League ', 'Premier League', '', '', ' Bosnia and Herzegovina › Premier League ', '1396-01-16 15:31:25', 0, 0),
(45, 1, ' Czech Republic › CFL ', 'CFL', '', '', ' Czech Republic › CFL ', '1396-01-16 15:31:33', 0, 0),
(46, 1, ' Belarus › Belarusian Cup ', 'Belarusian Cup', '', '', ' Belarus › Belarusian Cup ', '1396-01-16 15:31:35', 0, 0),
(47, 1, ' Bulgaria › Bulgarian Cup ', 'Bulgarian Cup', '', '', ' Bulgaria › Bulgarian Cup ', '1396-01-16 15:31:46', 0, 0),
(48, 1, ' Cameroon › Elite One ', 'Elite One', '', '', ' Cameroon › Elite One ', '1396-01-16 15:31:46', 0, 0),
(49, 1, ' Morocco › Botola Pro ', 'Botola Pro', '', '', ' Morocco › Botola Pro ', '1396-01-16 15:31:48', 0, 0),
(50, 1, ' Lithuania › A Lyga ', 'A Lyga', '', '', ' Lithuania › A Lyga ', '1396-01-16 15:31:49', 0, 0),
(51, 1, ' Poland › III Liga - Group I ', 'III Liga - Group I', '', '', ' Poland › III Liga - Group I ', '1396-01-16 15:31:50', 0, 0),
(52, 1, ' Slovakia › Slovak Cup ', 'Slovak Cup', '', '', ' Slovakia › Slovak Cup ', '1396-01-16 15:31:52', 0, 0),
(53, 1, ' Algeria › Division 1 ', 'Division 1', '', '', ' Algeria › Division 1 ', '1396-01-16 15:31:53', 0, 0),
(54, 1, ' Turkey › Turkish Cup ', 'Turkish Cup', '', '', ' Turkey › Turkish Cup ', '1396-01-16 15:31:55', 0, 0),
(55, 1, ' Hungary › Hungarian Cup ', 'Hungarian Cup', '', '', ' Hungary › Hungarian Cup ', '1396-01-16 15:31:55', 0, 0),
(56, 1, ' Cyprus › Cyprus Cup ', 'Cyprus Cup', '', '', ' Cyprus › Cyprus Cup ', '1396-01-16 15:31:57', 0, 0),
(57, 1, ' Ghana › Premier League ', 'Premier League', '', '', ' Ghana › Premier League ', '1396-01-16 15:31:57', 0, 0),
(58, 1, ' Germany › 2. Bundesliga ', '2. Bundesliga', '', '', ' Germany › 2. Bundesliga ', '1396-01-16 15:32:03', 0, 0),
(59, 1, ' Finland › Veikkausliiga ', 'Veikkausliiga', '', '', ' Finland › Veikkausliiga ', '1396-01-16 15:32:10', 0, 0),
(60, 1, ' Germany › Oberliga Bayern Süd ', 'Oberliga Bayern Süd', '', '', ' Germany › Oberliga Bayern Süd ', '1396-01-16 15:32:12', 0, 0),
(61, 1, ' Germany › Oberliga Bayern Nord ', 'Oberliga Bayern Nord', '', '', ' Germany › Oberliga Bayern Nord ', '1396-01-16 15:32:13', 0, 0),
(62, 1, ' Poland › Division 1 ', 'Division 1', '', '', ' Poland › Division 1 ', '1396-01-16 15:32:15', 0, 0),
(63, 1, ' Germany › Regionalliga Bayern ', 'Regionalliga Bayern', '', '', ' Germany › Regionalliga Bayern ', '1396-01-16 15:32:16', 0, 0),
(64, 1, ' Germany › 3. Liga ', '3. Liga', '', '', ' Germany › 3. Liga ', '1396-01-16 15:32:17', 0, 0),
(65, 1, ' Malta › Premier League ', 'Premier League', '', '', ' Malta › Premier League ', '1396-01-16 15:32:18', 0, 0),
(66, 1, ' Austria › OFB Cup ', 'OFB Cup', '', '', ' Austria › OFB Cup ', '1396-01-16 15:32:20', 0, 0),
(67, 1, ' Denmark › Landspokal Cup ', 'Landspokal Cup', '', '', ' Denmark › Landspokal Cup ', '1396-01-16 15:32:22', 0, 0),
(68, 1, ' World › Club Friendly ', 'Club Friendly', '', '', ' World › Club Friendly ', '1396-01-16 15:32:27', 0, 0),
(69, 1, ' Germany › Oberliga Schleswig-Holstein ', 'Oberliga Schleswig-Holstein', '', '', ' Germany › Oberliga Schleswig-Holstein ', '1396-01-16 15:32:28', 0, 0),
(70, 1, ' Netherlands › Eredivisie ', 'Eredivisie', '', '', ' Netherlands › Eredivisie ', '1396-01-16 15:32:29', 0, 0),
(71, 1, ' Russia › Russian Cup ', 'Russian Cup', '', '', ' Russia › Russian Cup ', '1396-01-16 15:32:40', 0, 0),
(72, 1, ' France › Coupe de France ', 'Coupe de France', '', '', ' France › Coupe de France ', '1396-01-16 15:32:44', 0, 0),
(73, 1, ' Switzerland › Swiss Cup ', 'Swiss Cup', '', '', ' Switzerland › Swiss Cup ', '1396-01-16 15:32:45', 0, 0),
(74, 1, ' France › Ligue 1 ', 'Ligue 1', '', '', ' France › Ligue 1 ', '1396-01-16 15:32:46', 0, 0),
(75, 1, ' Denmark › 1st Division ', '1st Division', '', '', ' Denmark › 1st Division ', '1396-01-16 15:32:47', 0, 0),
(76, 1, ' Germany › Regionalliga Nordost ', 'Regionalliga Nordost', '', '', ' Germany › Regionalliga Nordost ', '1396-01-16 15:32:57', 0, 0),
(77, 1, ' Norway › Eliteserien ', 'Eliteserien', '', '', ' Norway › Eliteserien ', '1396-01-16 15:33:00', 0, 0),
(78, 1, ' Senegal › Ligue 1 ', 'Ligue 1', '', '', ' Senegal › Ligue 1 ', '1396-01-16 15:33:12', 0, 0),
(79, 1, ' Wales › Division 1 ', 'Division 1', '', '', ' Wales › Division 1 ', '1396-01-16 15:33:14', 0, 0),
(80, 1, ' Spain › LaLiga ', 'LaLiga', '', '', ' Spain › LaLiga ', '1396-01-16 15:33:16', 0, 0),
(81, 1, ' South Africa › Premier League ', 'Premier League', '', '', ' South Africa › Premier League ', '1396-01-16 15:33:17', 0, 0),
(82, 1, ' Germany › Oberliga NOFV-Nord ', 'Oberliga NOFV-Nord', '', '', ' Germany › Oberliga NOFV-Nord ', '1396-01-16 15:33:17', 0, 0),
(83, 1, ' Israel › State Cup ', 'State Cup', '', '', ' Israel › State Cup ', '1396-01-16 15:33:20', 0, 0),
(84, 1, ' Germany › Bundesliga ', 'Bundesliga', '', '', ' Germany › Bundesliga ', '1396-01-16 15:33:23', 0, 0),
(85, 1, ' France › CFA - Group B ', 'CFA - Group B', '', '', ' France › CFA - Group B ', '1396-01-16 15:33:32', 0, 0),
(86, 1, ' Czech Republic › MOL Cup ', 'MOL Cup', '', '', ' Czech Republic › MOL Cup ', '1396-01-16 15:33:33', 0, 0),
(87, 1, ' Slovenia › Slovenian Cup ', 'Slovenian Cup', '', '', ' Slovenia › Slovenian Cup ', '1396-01-16 15:33:34', 0, 0),
(88, 1, ' England › Premier League ', 'Premier League', '', '', ' England › Premier League ', '1396-01-16 15:33:47', 0, 0),
(89, 1, ' England › Championship ', 'Championship', '', '', ' England › Championship ', '1396-01-16 15:33:57', 0, 0),
(90, 1, ' England › League One ', 'League One', '', '', ' England › League One ', '1396-01-16 15:33:59', 0, 0),
(91, 1, ' Scotland › Premiership ', 'Premiership', '', '', ' Scotland › Premiership ', '1396-01-16 15:34:02', 0, 0),
(92, 1, ' Poland › Polish Cup ', 'Polish Cup', '', '', ' Poland › Polish Cup ', '1396-01-16 15:34:07', 0, 0),
(93, 1, ' England › Northern Premier League ', 'Northern Premier League', '', '', ' England › Northern Premier League ', '1396-01-16 15:34:10', 0, 0),
(94, 1, ' Italy › Coppa Italia ', 'Coppa Italia', '', '', ' Italy › Coppa Italia ', '1396-01-16 15:34:11', 0, 0),
(95, 1, ' Scotland › Highland League ', 'Highland League', '', '', ' Scotland › Highland League ', '1396-01-16 15:34:13', 0, 0),
(96, 1, ' Venezuela › Primera Division ', 'Primera Division', '', '', ' Venezuela › Primera Division ', '1396-01-16 15:34:17', 0, 0),
(97, 1, ' Portugal › Taça de Portugal ', 'Taça de Portugal', '', '', ' Portugal › Taça de Portugal ', '1396-01-16 15:34:19', 0, 0),
(98, 1, ' San Marino › Campionato Sammarinese ', 'Campionato Sammarinese', '', '', ' San Marino › Campionato Sammarinese ', '1396-01-16 15:34:20', 0, 0),
(99, 1, ' Argentina › Torneo Federal A ', 'Torneo Federal A', '', '', ' Argentina › Torneo Federal A ', '1396-01-16 15:34:23', 0, 0),
(100, 1, ' Colombia › Torneo Aguila ', 'Torneo Aguila', '', '', ' Colombia › Torneo Aguila ', '1396-01-16 15:34:23', 0, 0),
(101, 1, ' El Salvador › Primera Division ', 'Primera Division', '', '', ' El Salvador › Primera Division ', '1396-01-16 15:34:26', 0, 0),
(102, 1, ' Chile › Primera B ', 'Primera B', '', '', ' Chile › Primera B ', '1396-01-16 15:34:28', 0, 0),
(103, 7, ' South America › Copa America 2017 ', 'Copa America 2017', '', '', ' South America › Copa America 2017 ', '1396-01-16 16:00:04', 0, 0),
(104, 2, ' Uruguay › Liga Capital ', 'Liga Capital', '', '', ' Uruguay › Liga Capital ', '1396-01-16 16:00:04', 0, 0),
(105, 9, ' Finland › Salibandyliiga ', 'Salibandyliiga', '', '', ' Finland › Salibandyliiga ', '1396-01-16 16:00:04', 0, 0),
(106, 5, ' Romania › Liga Nationala ', 'Liga Nationala', '', '', ' Romania › Liga Nationala ', '1396-01-16 16:00:04', 0, 0),
(107, 4, ' Brazil › Superliga Women ', 'Superliga Women', '', '', ' Brazil › Superliga Women ', '1396-01-16 16:00:05', 0, 0),
(108, 3, ' Canada › QMJHL ', 'QMJHL', '', '', ' Canada › QMJHL ', '1396-01-16 16:00:06', 0, 0),
(109, 9, ' Czech Republic › Tipsport Superliga ', 'Tipsport Superliga', '', '', ' Czech Republic › Tipsport Superliga ', '1396-01-16 16:00:06', 0, 0),
(110, 5, ' FYR of Macedonia › Superleague ', 'Superleague', '', '', ' FYR of Macedonia › Superleague ', '1396-01-16 16:00:06', 0, 0),
(111, 2, ' Brazil › NBB ', 'NBB', '', '', ' Brazil › NBB ', '1396-01-16 16:00:07', 0, 0),
(112, 6, ' USA › MLB ', 'MLB', '', '', ' USA › MLB ', '1396-01-16 16:00:08', 0, 0),
(113, 9, ' Sweden › Svenska Superligan ', 'Svenska Superligan', '', '', ' Sweden › Svenska Superligan ', '1396-01-16 16:00:08', 0, 0),
(114, 4, ' Romania › Divizia A1 ', 'Divizia A1', '', '', ' Romania › Divizia A1 ', '1396-01-16 16:00:08', 0, 0),
(115, 3, ' USA › NHL ', 'NHL', '', '', ' USA › NHL ', '1396-01-16 16:00:08', 0, 0),
(116, 4, ' Europe › European Championships U18 Women ', 'European Championships U18 Women', '', '', ' Europe › European Championships U18 Women ', '1396-01-16 16:00:09', 0, 0),
(117, 2, ' USA › NBA ', 'NBA', '', '', ' USA › NBA ', '1396-01-16 16:00:10', 0, 0),
(118, 5, ' Lithuania › Lietuvos Lyga ', 'Lietuvos Lyga', '', '', ' Lithuania › Lietuvos Lyga ', '1396-01-16 16:00:10', 0, 0),
(119, 4, ' Romania › Divizia A1 Women ', 'Divizia A1 Women', '', '', ' Romania › Divizia A1 Women ', '1396-01-16 16:00:10', 0, 0),
(120, 5, ' Norway › Grundigligaen ', 'Grundigligaen', '', '', ' Norway › Grundigligaen ', '1396-01-16 16:00:12', 0, 0),
(121, 6, ' Mexico › LMB ', 'LMB', '', '', ' Mexico › LMB ', '1396-01-16 16:00:12', 0, 0),
(122, 3, ' Canada › OHL ', 'OHL', '', '', ' Canada › OHL ', '1396-01-16 16:00:15', 0, 0),
(123, 5, ' Finland › SM-sarja ', 'SM-sarja', '', '', ' Finland › SM-sarja ', '1396-01-16 16:00:17', 0, 0),
(124, 4, ' Czech Republic › Extraliga Women ', 'Extraliga Women', '', '', ' Czech Republic › Extraliga Women ', '1396-01-16 16:00:19', 0, 0),
(125, 3, ' USA › AHL ', 'AHL', '', '', ' USA › AHL ', '1396-01-16 16:00:19', 0, 0),
(126, 5, ' Europe › WHIL Women ', 'WHIL Women', '', '', ' Europe › WHIL Women ', '1396-01-16 16:00:20', 0, 0),
(127, 4, ' Greece › A1 Women ', 'A1 Women', '', '', ' Greece › A1 Women ', '1396-01-16 16:00:21', 0, 0),
(128, 5, ' Hungary › NB I ', 'NB I', '', '', ' Hungary › NB I ', '1396-01-16 16:00:22', 0, 0),
(129, 5, ' Estonia › Meistriliiga ', 'Meistriliiga', '', '', ' Estonia › Meistriliiga ', '1396-01-16 16:00:24', 0, 0),
(130, 2, ' USA › NBA D-League ', 'NBA D-League', '', '', ' USA › NBA D-League ', '1396-01-16 16:00:24', 0, 0),
(131, 2, ' Venezuela › LPB ', 'LPB', '', '', ' Venezuela › LPB ', '1396-01-16 16:00:24', 0, 0),
(132, 4, ' Finland › Mestaruusliiga ', 'Mestaruusliiga', '', '', ' Finland › Mestaruusliiga ', '1396-01-16 16:00:26', 0, 0),
(133, 3, ' World › WCH Women ', 'WCH Women', '', '', ' World › WCH Women ', '1396-01-16 16:00:26', 0, 0),
(134, 4, ' Finland › Mestaruusliiga Women ', 'Mestaruusliiga Women', '', '', ' Finland › Mestaruusliiga Women ', '1396-01-16 16:00:27', 0, 0),
(135, 5, ' Denmark › Primo Tours Ligaen Women ', 'Primo Tours Ligaen Women', '', '', ' Denmark › Primo Tours Ligaen Women ', '1396-01-16 16:00:27', 0, 0),
(136, 5, ' Slovakia › Extraliga ', 'Extraliga', '', '', ' Slovakia › Extraliga ', '1396-01-16 16:00:28', 0, 0),
(137, 4, ' Slovakia › Extraliga ', 'Extraliga', '', '', ' Slovakia › Extraliga ', '1396-01-16 16:00:29', 0, 0),
(138, 5, ' Sweden › SHE Women ', 'SHE Women', '', '', ' Sweden › SHE Women ', '1396-01-16 16:00:32', 0, 0),
(139, 4, ' Turkey › Division 1 Women ', 'Division 1 Women', '', '', ' Turkey › Division 1 Women ', '1396-01-16 16:00:32', 0, 0),
(140, 5, ' Slovenia › 1. NLB Liga ', '1. NLB Liga', '', '', ' Slovenia › 1. NLB Liga ', '1396-01-16 16:00:33', 0, 0),
(141, 4, ' Hungary › NB I Women ', 'NB I Women', '', '', ' Hungary › NB I Women ', '1396-01-16 16:00:33', 0, 0),
(142, 5, ' Spain › División de Honor Women ', 'División de Honor Women', '', '', ' Spain › División de Honor Women ', '1396-01-16 16:00:34', 0, 0),
(143, 4, ' Europe › Champions League Women ', 'Champions League Women', '', '', ' Europe › Champions League Women ', '1396-01-16 16:00:34', 0, 0),
(144, 5, ' Portugal › Andebol 1 ', 'Andebol 1', '', '', ' Portugal › Andebol 1 ', '1396-01-16 16:00:36', 0, 0),
(145, 5, ' Switzerland › NLA ', 'NLA', '', '', ' Switzerland › NLA ', '1396-01-16 16:00:37', 0, 0),
(146, 4, ' Germany › 1. Bundesliga Women ', '1. Bundesliga Women', '', '', ' Germany › 1. Bundesliga Women ', '1396-01-16 16:00:37', 0, 0),
(147, 4, ' Sweden › Elitserien ', 'Elitserien', '', '', ' Sweden › Elitserien ', '1396-01-16 16:00:38', 0, 0),
(148, 4, ' Sweden › Elitserien Women ', 'Elitserien Women', '', '', ' Sweden › Elitserien Women ', '1396-01-16 16:00:38', 0, 0),
(149, 6, ' Japan › NPB ', 'NPB', '', '', ' Japan › NPB ', '1396-01-16 16:00:39', 0, 0),
(150, 3, ' World › WCH IIB ', 'WCH IIB', '', '', ' World › WCH IIB ', '1396-01-16 16:00:40', 0, 0),
(151, 4, ' Slovenia › 1. DOL ', '1. DOL', '', '', ' Slovenia › 1. DOL ', '1396-01-16 16:00:40', 0, 0),
(152, 2, ' Argentina › Liga A ', 'Liga A', '', '', ' Argentina › Liga A ', '1396-01-16 16:00:41', 0, 0),
(153, 5, ' Spain › Liga ASOBAL ', 'Liga ASOBAL', '', '', ' Spain › Liga ASOBAL ', '1396-01-16 16:00:42', 0, 0),
(154, 4, ' Switzerland › NLA Women ', 'NLA Women', '', '', ' Switzerland › NLA Women ', '1396-01-16 16:00:43', 0, 0),
(155, 3, ' Canada › WHL ', 'WHL', '', '', ' Canada › WHL ', '1396-01-16 16:00:44', 0, 0),
(156, 4, ' Europe › Champions League ', 'Champions League', '', '', ' Europe › Champions League ', '1396-01-16 16:00:45', 0, 0),
(157, 4, ' Spain › Superliga Women ', 'Superliga Women', '', '', ' Spain › Superliga Women ', '1396-01-16 16:00:46', 0, 0),
(158, 6, ' South Korea › KBO ', 'KBO', '', '', ' South Korea › KBO ', '1396-01-16 16:00:46', 0, 0),
(159, 4, ' France › Pro A ', 'Pro A', '', '', ' France › Pro A ', '1396-01-16 16:00:47', 0, 0),
(160, 4, ' Switzerland › NLA ', 'NLA', '', '', ' Switzerland › NLA ', '1396-01-16 16:00:48', 0, 0),
(161, 4, ' Netherlands › Eredivisie ', 'Eredivisie', '', '', ' Netherlands › Eredivisie ', '1396-01-16 16:00:49', 0, 0),
(162, 4, ' Croatia › Superliga ', 'Superliga', '', '', ' Croatia › Superliga ', '1396-01-16 16:00:50', 0, 0),
(163, 6, ' Taiwan › CPBL ', 'CPBL', '', '', ' Taiwan › CPBL ', '1396-01-16 16:00:52', 0, 0),
(164, 4, ' Italy › Serie A2 Women ', 'Serie A2 Women', '', '', ' Italy › Serie A2 Women ', '1396-01-16 16:00:52', 0, 0),
(165, 3, ' World › WCH IIA Women ', 'WCH IIA Women', '', '', ' World › WCH IIA Women ', '1396-01-16 16:00:52', 0, 0),
(166, 3, ' Russia › VHL ', 'VHL', '', '', ' Russia › VHL ', '1396-01-16 16:00:57', 0, 0),
(167, 3, ' Russia › MHL ', 'MHL', '', '', ' Russia › MHL ', '1396-01-16 16:01:00', 0, 0),
(168, 2, ' Philippines › Commissioners Cup ', 'Commissioners Cup', '', '', ' Philippines › Commissioners Cup ', '1396-01-16 16:01:02', 0, 0),
(169, 3, ' Czech Republic › Extraliga ', 'Extraliga', '', '', ' Czech Republic › Extraliga ', '1396-01-16 16:01:03', 0, 0),
(170, 3, ' Finland › Liiga ', 'Liiga', '', '', ' Finland › Liiga ', '1396-01-16 16:01:05', 0, 0),
(171, 2, ' China › CBA ', 'CBA', '', '', ' China › CBA ', '1396-01-16 16:01:06', 0, 0),
(172, 3, ' Finland › Mestis ', 'Mestis', '', '', ' Finland › Mestis ', '1396-01-16 16:01:07', 0, 0),
(173, 2, ' Asia › ABL ', 'ABL', '', '', ' Asia › ABL ', '1396-01-16 16:01:07', 0, 0),
(174, 3, ' Ukraine › Extra League ', 'Extra League', '', '', ' Ukraine › Extra League ', '1396-01-16 16:01:08', 0, 0),
(175, 2, ' Romania › Divizia A ', 'Divizia A', '', '', ' Romania › Divizia A ', '1396-01-16 16:01:09', 0, 0),
(176, 3, ' Slovakia › Tipsport Liga ', 'Tipsport Liga', '', '', ' Slovakia › Tipsport Liga ', '1396-01-16 16:01:10', 0, 0),
(177, 2, ' Portugal › LPB ', 'LPB', '', '', ' Portugal › LPB ', '1396-01-16 16:01:11', 0, 0),
(178, 3, ' Czech Republic › 2. Liga - East ', '2. Liga - East', '', '', ' Czech Republic › 2. Liga - East ', '1396-01-16 16:01:11', 0, 0),
(179, 2, ' Turkey › KBSL Women ', 'KBSL Women', '', '', ' Turkey › KBSL Women ', '1396-01-16 16:01:12', 0, 0),
(180, 3, ' Latvia › LHL ', 'LHL', '', '', ' Latvia › LHL ', '1396-01-16 16:01:13', 0, 0),
(181, 2, ' Ukraine › FBU Superleague ', 'FBU Superleague', '', '', ' Ukraine › FBU Superleague ', '1396-01-16 16:01:13', 0, 0),
(182, 3, ' Sweden › HockeyAllsvenskan ', 'HockeyAllsvenskan', '', '', ' Sweden › HockeyAllsvenskan ', '1396-01-16 16:01:14', 0, 0),
(183, 2, ' Lithuania › LMKL Women ', 'LMKL Women', '', '', ' Lithuania › LMKL Women ', '1396-01-16 16:01:14', 0, 0),
(184, 2, ' Finland › Korisliiga ', 'Korisliiga', '', '', ' Finland › Korisliiga ', '1396-01-16 16:01:16', 0, 0),
(185, 3, ' Sweden › HockeyEttan Ostra ', 'HockeyEttan Ostra', '', '', ' Sweden › HockeyEttan Ostra ', '1396-01-16 16:01:17', 0, 0),
(186, 2, ' Europe › Baltic League ', 'Baltic League', '', '', ' Europe › Baltic League ', '1396-01-16 16:01:18', 0, 0),
(187, 2, ' Finland › Korisliiga Women ', 'Korisliiga Women', '', '', ' Finland › Korisliiga Women ', '1396-01-16 16:01:19', 0, 0),
(188, 3, ' Sweden › HockeyEttan Norra ', 'HockeyEttan Norra', '', '', ' Sweden › HockeyEttan Norra ', '1396-01-16 16:01:19', 0, 0),
(189, 2, ' Slovakia › Extraliga ', 'Extraliga', '', '', ' Slovakia › Extraliga ', '1396-01-16 16:01:20', 0, 0),
(190, 3, ' Norway › Get-ligaen ', 'Get-ligaen', '', '', ' Norway › Get-ligaen ', '1396-01-16 16:01:22', 0, 0),
(191, 3, ' Sweden › SHL ', 'SHL', '', '', ' Sweden › SHL ', '1396-01-16 16:01:23', 0, 0),
(192, 2, ' Slovakia › Extraliga Women ', 'Extraliga Women', '', '', ' Slovakia › Extraliga Women ', '1396-01-16 16:01:24', 0, 0),
(193, 3, ' Austria › Alps Hockey League ', 'Alps Hockey League', '', '', ' Austria › Alps Hockey League ', '1396-01-16 16:01:25', 0, 0),
(194, 2, ' Europe › EuroCup Women ', 'EuroCup Women', '', '', ' Europe › EuroCup Women ', '1396-01-16 16:01:26', 0, 0),
(195, 3, ' World › Friendly International ', 'Friendly International', '', '', ' World › Friendly International ', '1396-01-16 16:01:26', 0, 0),
(196, 2, ' Poland › Tauron Basket Liga ', 'Tauron Basket Liga', '', '', ' Poland › Tauron Basket Liga ', '1396-01-16 16:01:27', 0, 0),
(197, 3, ' France › Ligue Magnus ', 'Ligue Magnus', '', '', ' France › Ligue Magnus ', '1396-01-16 16:01:28', 0, 0),
(198, 2, ' Slovenia › Liga Nova KBM ', 'Liga Nova KBM', '', '', ' Slovenia › Liga Nova KBM ', '1396-01-16 16:01:32', 0, 0),
(199, 2, ' Latvia › LBL ', 'LBL', '', '', ' Latvia › LBL ', '1396-01-16 16:01:33', 0, 0),
(200, 2, ' Hungary › NB I. A ', 'NB I. A', '', '', ' Hungary › NB I. A ', '1396-01-16 16:01:35', 0, 0),
(201, 2, ' Cyprus › Division A ', 'Division A', '', '', ' Cyprus › Division A ', '1396-01-16 16:01:36', 0, 0),
(202, 2, ' FYR of Macedonia › Superleague ', 'Superleague', '', '', ' FYR of Macedonia › Superleague ', '1396-01-16 16:01:36', 0, 0),
(203, 2, ' Sweden › Basketligan Women ', 'Basketligan Women', '', '', ' Sweden › Basketligan Women ', '1396-01-16 16:01:49', 0, 0),
(204, 2, ' Kosovo › Superliga ', 'Superliga', '', '', ' Kosovo › Superliga ', '1396-01-16 16:01:51', 0, 0),
(205, 2, ' Bosnia and Herzegovina › Prvenstvo BiH ', 'Prvenstvo BiH', '', '', ' Bosnia and Herzegovina › Prvenstvo BiH ', '1396-01-16 16:01:53', 0, 0),
(206, 2, ' Sweden › Ligan ', 'Ligan', '', '', ' Sweden › Ligan ', '1396-01-16 16:01:54', 0, 0),
(207, 2, ' Europe › FIBA Europe Cup ', 'FIBA Europe Cup', '', '', ' Europe › FIBA Europe Cup ', '1396-01-16 16:01:58', 0, 0),
(208, 2, ' Slovenia › 1. SKL Women ', '1. SKL Women', '', '', ' Slovenia › 1. SKL Women ', '1396-01-16 16:02:03', 0, 0),
(209, 2, ' Spain › Liga Femenina Women ', 'Liga Femenina Women', '', '', ' Spain › Liga Femenina Women ', '1396-01-16 16:02:04', 0, 0),
(210, 2, ' United Kingdom › BBL ', 'BBL', '', '', ' United Kingdom › BBL ', '1396-01-16 16:02:11', 0, 0),
(211, 2, ' Europe › Eurocup ', 'Eurocup', '', '', ' Europe › Eurocup ', '1396-01-16 16:02:14', 0, 0),
(212, 2, ' Belgium › Scooore League ', 'Scooore League', '', '', ' Belgium › Scooore League ', '1396-01-16 16:02:15', 0, 0),
(213, 2, ' Italy › Serie A1 Women ', 'Serie A1 Women', '', '', ' Italy › Serie A1 Women ', '1396-01-16 16:02:17', 0, 0),
(214, 2, ' Italy › A2 East ', 'A2 East', '', '', ' Italy › A2 East ', '1396-01-16 16:02:19', 0, 0),
(215, 2, ' Iceland › Premier League Women ', 'Premier League Women', '', '', ' Iceland › Premier League Women ', '1396-01-16 16:02:21', 0, 0),
(216, 1, ' Brazil › Primeira Liga ', 'Primeira Liga', '', '', ' Brazil › Primeira Liga ', '1396-01-17 10:50:09', 0, 0),
(217, 1, ' Brazil › Campeonato Pernambucano ', 'Campeonato Pernambucano', '', '', ' Brazil › Campeonato Pernambucano ', '1396-01-17 10:50:10', 0, 0),
(218, 1, ' Brazil › Campeonato Potiguar ', 'Campeonato Potiguar', '', '', ' Brazil › Campeonato Potiguar ', '1396-01-17 10:50:12', 0, 0),
(219, 1, ' Brazil › Campeonato Piauiense ', 'Campeonato Piauiense', '', '', ' Brazil › Campeonato Piauiense ', '1396-01-17 10:50:13', 0, 0),
(220, 1, ' Brazil › Campeonato Maranhense ', 'Campeonato Maranhense', '', '', ' Brazil › Campeonato Maranhense ', '1396-01-17 10:50:16', 0, 0),
(221, 1, ' Brazil › Campeonato Sergipano ', 'Campeonato Sergipano', '', '', ' Brazil › Campeonato Sergipano ', '1396-01-17 10:50:17', 0, 0),
(222, 1, ' Brazil › Campeonato Paraibano ', 'Campeonato Paraibano', '', '', ' Brazil › Campeonato Paraibano ', '1396-01-17 10:50:20', 0, 0),
(223, 1, ' Brazil › Campeonato Baiano ', 'Campeonato Baiano', '', '', ' Brazil › Campeonato Baiano ', '1396-01-17 10:50:23', 0, 0),
(224, 1, ' Brazil › Copa do Brasil ', 'Copa do Brasil', '', '', ' Brazil › Copa do Brasil ', '1396-01-17 10:50:25', 0, 0),
(225, 1, ' Uruguay › Primera Division ', 'Primera Division', '', '', ' Uruguay › Primera Division ', '1396-01-17 10:50:28', 0, 0),
(226, 1, ' Bolivia › Liga de Futbol Prof ', 'Liga de Futbol Prof', '', '', ' Bolivia › Liga de Futbol Prof ', '1396-01-17 10:50:30', 0, 0),
(227, 1, ' Colombia › Copa Aguila ', 'Copa Aguila', '', '', ' Colombia › Copa Aguila ', '1396-01-17 10:50:34', 0, 0),
(228, 1, ' Ecuador › Serie A ', 'Serie A', '', '', ' Ecuador › Serie A ', '1396-01-17 10:50:38', 0, 0),
(229, 1, ' Brazil › Campeonato Cearense ', 'Campeonato Cearense', '', '', ' Brazil › Campeonato Cearense ', '1396-01-17 10:50:44', 0, 0),
(230, 1, ' Colombia › Liga Aguila ', 'Liga Aguila', '', '', ' Colombia › Liga Aguila ', '1396-01-17 10:50:50', 0, 0),
(231, 1, ' World › World Cup Women ', 'World Cup Women', '', '', ' World › World Cup Women ', '1396-01-17 10:50:56', 0, 0),
(232, 1, ' Uzbekistan › Professional Football League ', 'Professional Football League', '', '', ' Uzbekistan › Professional Football League ', '1396-01-17 10:50:58', 0, 0),
(233, 1, ' World › Friendly International Women ', 'Friendly International Women', '', '', ' World › Friendly International Women ', '1396-01-17 10:50:59', 0, 0),
(234, 1, ' Jordan › Premier League ', 'Premier League', '', '', ' Jordan › Premier League ', '1396-01-17 10:51:02', 0, 0),
(235, 1, ' England › Professional Development League ', 'Professional Development League', '', '', ' England › Professional Development League ', '1396-01-17 10:51:04', 0, 0),
(236, 1, ' Qatar › Premier League ', 'Premier League', '', '', ' Qatar › Premier League ', '1396-01-17 10:51:17', 0, 0),
(237, 1, ' Saudi Arabia › Saudi Professional League ', 'Saudi Professional League', '', '', ' Saudi Arabia › Saudi Professional League ', '1396-01-17 10:51:19', 0, 0),
(238, 1, ' Estonia › Esiliiga ', 'Esiliiga', '', '', ' Estonia › Esiliiga ', '1396-01-17 10:51:21', 0, 0),
(239, 1, ' Spain › Copa Federacion ', 'Copa Federacion', '', '', ' Spain › Copa Federacion ', '1396-01-17 10:51:37', 0, 0),
(240, 1, ' Austria › Regionalliga Central ', 'Regionalliga Central', '', '', ' Austria › Regionalliga Central ', '1396-01-17 10:51:44', 0, 0),
(241, 1, ' Italy › Coppa Italia Primavera ', 'Coppa Italia Primavera', '', '', ' Italy › Coppa Italia Primavera ', '1396-01-17 10:51:50', 0, 0),
(242, 1, ' Portugal › Segunda Liga ', 'Segunda Liga', '', '', ' Portugal › Segunda Liga ', '1396-01-17 10:51:52', 0, 0),
(243, 7, ' South America › Copa America ', 'Copa America', '', '', ' South America › Copa America ', '1396-01-17 11:00:03', 0, 0),
(244, 4, ' Argentina › Serie A1 ', 'Serie A1', '', '', ' Argentina › Serie A1 ', '1396-01-17 11:00:04', 0, 0),
(245, 4, ' Turkey › Division 1 ', 'Division 1', '', '', ' Turkey › Division 1 ', '1396-01-17 11:00:06', 0, 0),
(246, 9, ' Sweden › Elitserien Women ', 'Elitserien Women', '', '', ' Sweden › Elitserien Women ', '1396-01-17 11:00:07', 0, 0),
(247, 5, ' Sweden › Handbollsligan ', 'Handbollsligan', '', '', ' Sweden › Handbollsligan ', '1396-01-17 11:00:07', 0, 0),
(248, 4, ' Czech Republic › Extraliga ', 'Extraliga', '', '', ' Czech Republic › Extraliga ', '1396-01-17 11:00:13', 0, 0),
(249, 4, ' Greece › A1 ', 'A1', '', '', ' Greece › A1 ', '1396-01-17 11:00:15', 0, 0),
(250, 4, ' Denmark › Volleyligaen ', 'Volleyligaen', '', '', ' Denmark › Volleyligaen ', '1396-01-17 11:00:16', 0, 0),
(251, 4, ' Austria › AVL ', 'AVL', '', '', ' Austria › AVL ', '1396-01-17 11:00:21', 0, 0),
(252, 3, ' World › WCH IIA ', 'WCH IIA', '', '', ' World › WCH IIA ', '1396-01-17 11:00:26', 0, 0),
(253, 3, ' Germany › Oberliga North ', 'Oberliga North', '', '', ' Germany › Oberliga North ', '1396-01-17 11:00:43', 0, 0),
(254, 3, ' Switzerland › NLA ', 'NLA', '', '', ' Switzerland › NLA ', '1396-01-17 11:00:45', 0, 0),
(255, 2, ' New Zealand › NBL ', 'NBL', '', '', ' New Zealand › NBL ', '1396-01-17 11:00:47', 0, 0),
(256, 2, ' South Korea › KBL ', 'KBL', '', '', ' South Korea › KBL ', '1396-01-17 11:00:49', 0, 0),
(257, 2, ' Australia › SEABL ', 'SEABL', '', '', ' Australia › SEABL ', '1396-01-17 11:00:50', 0, 0),
(258, 2, ' Croatia › A1 Liga ', 'A1 Liga', '', '', ' Croatia › A1 Liga ', '1396-01-17 11:00:51', 0, 0),
(259, 2, ' Denmark › Basketligaen ', 'Basketligaen', '', '', ' Denmark › Basketligaen ', '1396-01-17 11:00:55', 0, 0),
(260, 2, ' Israel › Super League ', 'Super League', '', '', ' Israel › Super League ', '1396-01-17 11:00:58', 0, 0),
(261, 2, ' Europe › Euroleague ', 'Euroleague', '', '', ' Europe › Euroleague ', '1396-01-17 11:01:03', 0, 0),
(262, 1, ' Jamaica › Premier League ', 'Premier League', '', '', ' Jamaica › Premier League ', '1396-01-17 11:11:47', 0, 0),
(263, 1, ' Kazakhstan › Kazakhstan Cup ', 'Kazakhstan Cup', '', '', ' Kazakhstan › Kazakhstan Cup ', '1396-01-17 11:40:57', 0, 0),
(264, 1, ' Kosovo › Superliga ', 'Superliga', '', '', ' Kosovo › Superliga ', '1396-01-17 11:51:05', 0, 0),
(265, 2, ' Hungary › Division 1 Women ', 'Division 1 Women', '', '', ' Hungary › Division 1 Women ', '1396-01-17 13:00:59', 0, 0),
(266, 2, ' Netherlands › DBL ', 'DBL', '', '', ' Netherlands › DBL ', '1396-01-17 13:01:07', 0, 0),
(267, 2, ' Estonia › Korvpalli Meistriliiga ', 'Korvpalli Meistriliiga', '', '', ' Estonia › Korvpalli Meistriliiga ', '1396-01-17 14:00:44', 0, 0),
(268, 1, ' Nigeria › Premier League ', 'Premier League', '', '', ' Nigeria › Premier League ', '1396-01-17 14:46:22', 0, 0),
(269, 4, ' Ukraine › Superleague ', 'Superleague', '', '', ' Ukraine › Superleague ', '1396-01-17 15:00:07', 0, 0),
(270, 4, ' Ukraine › Superleague Women ', 'Superleague Women', '', '', ' Ukraine › Superleague Women ', '1396-01-17 15:00:09', 0, 0),
(271, 7, ' World › Friendly International ', 'Friendly International', '', '', ' World › Friendly International ', '1396-01-17 16:00:08', 0, 0),
(272, 1, ' Albania › Albanian Cup ', 'Albanian Cup', '', '', ' Albania › Albanian Cup ', '1396-01-17 16:21:47', 0, 0),
(273, 6, ' USA › IL ', 'IL', '', '', ' USA › IL ', '1396-01-18 03:30:04', 0, 0),
(274, 4, ' Brazil › SuperLiga ', 'SuperLiga', '', '', ' Brazil › SuperLiga ', '1396-01-18 03:30:04', 0, 0),
(275, 5, ' Hungary › NB I Women ', 'NB I Women', '', '', ' Hungary › NB I Women ', '1396-01-18 03:30:07', 0, 0),
(276, 5, ' Poland › Superliga ', 'Superliga', '', '', ' Poland › Superliga ', '1396-01-18 03:30:09', 0, 0),
(277, 4, ' Poland › PlusLiga ', 'PlusLiga', '', '', ' Poland › PlusLiga ', '1396-01-18 03:30:10', 0, 0),
(278, 5, ' Finland › SM-sarja Women ', 'SM-sarja Women', '', '', ' Finland › SM-sarja Women ', '1396-01-18 03:30:11', 0, 0),
(279, 4, ' Poland › Orlen Liga Women ', 'Orlen Liga Women', '', '', ' Poland › Orlen Liga Women ', '1396-01-18 03:30:11', 0, 0),
(280, 5, ' Europe › SEHA Liga ', 'SEHA Liga', '', '', ' Europe › SEHA Liga ', '1396-01-18 03:30:12', 0, 0),
(281, 5, ' Europe › Champions League Women ', 'Champions League Women', '', '', ' Europe › Champions League Women ', '1396-01-18 03:30:13', 0, 0),
(282, 5, ' Germany › 2. Bundesliga ', '2. Bundesliga', '', '', ' Germany › 2. Bundesliga ', '1396-01-18 03:30:15', 0, 0),
(283, 6, ' USA › PCL ', 'PCL', '', '', ' USA › PCL ', '1396-01-18 03:30:15', 0, 0),
(284, 1, ' Brazil › Campeonato Gaucho ', 'Campeonato Gaucho', '', '', ' Brazil › Campeonato Gaucho ', '1396-01-18 03:30:16', 0, 0),
(285, 5, ' Germany › Bundesliga ', 'Bundesliga', '', '', ' Germany › Bundesliga ', '1396-01-18 03:30:18', 0, 0),
(286, 5, ' France › Coupe de la Ligue ', 'Coupe de la Ligue', '', '', ' France › Coupe de la Ligue ', '1396-01-18 03:30:20', 0, 0),
(287, 5, ' Latvia › SynotTip Virsliga ', 'SynotTip Virsliga', '', '', ' Latvia › SynotTip Virsliga ', '1396-01-18 03:30:22', 0, 0),
(288, 4, ' Italy › Serie A1 Women ', 'Serie A1 Women', '', '', ' Italy › Serie A1 Women ', '1396-01-18 03:30:22', 0, 0),
(289, 2, ' Puerto Rico › BSN ', 'BSN', '', '', ' Puerto Rico › BSN ', '1396-01-18 03:30:23', 0, 0),
(290, 1, ' Malaysia › Premier League ', 'Premier League', '', '', ' Malaysia › Premier League ', '1396-01-18 03:30:23', 0, 0),
(291, 4, ' Spain › SuperLiga ', 'SuperLiga', '', '', ' Spain › SuperLiga ', '1396-01-18 03:30:24', 0, 0),
(292, 1, ' Ukraine › Youth League ', 'Youth League', '', '', ' Ukraine › Youth League ', '1396-01-18 03:30:25', 0, 0),
(293, 1, ' Australia › NPL Queensland ', 'NPL Queensland', '', '', ' Australia › NPL Queensland ', '1396-01-18 03:30:26', 0, 0),
(294, 5, ' Austria › HLA ', 'HLA', '', '', ' Austria › HLA ', '1396-01-18 03:30:27', 0, 0),
(295, 1, ' Australia › A-League ', 'A-League', '', '', ' Australia › A-League ', '1396-01-18 03:30:27', 0, 0),
(296, 1, ' Russia › Division 1 ', 'Division 1', '', '', ' Russia › Division 1 ', '1396-01-18 03:30:29', 0, 0),
(297, 1, ' Japan › J-League ', 'J-League', '', '', ' Japan › J-League ', '1396-01-18 03:30:30', 0, 0),
(298, 2, ' Australia › SEABL Women ', 'SEABL Women', '', '', ' Australia › SEABL Women ', '1396-01-18 03:30:31', 0, 0),
(299, 1, ' South Korea › National League ', 'National League', '', '', ' South Korea › National League ', '1396-01-18 03:30:31', 0, 0),
(300, 1, ' Australia › NPL Victoria ', 'NPL Victoria', '', '', ' Australia › NPL Victoria ', '1396-01-18 03:30:32', 0, 0),
(301, 2, ' Japan › B.League ', 'B.League', '', '', ' Japan › B.League ', '1396-01-18 03:30:35', 0, 0),
(302, 1, ' Armenia › Premier League ', 'Premier League', '', '', ' Armenia › Premier League ', '1396-01-18 03:30:37', 0, 0),
(303, 1, ' Vietnam › V-League ', 'V-League', '', '', ' Vietnam › V-League ', '1396-01-18 03:30:37', 0, 0),
(304, 1, ' Singapore › S.League ', 'S.League', '', '', ' Singapore › S.League ', '1396-01-18 03:30:38', 0, 0),
(305, 1, ' China › Super League ', 'Super League', '', '', ' China › Super League ', '1396-01-18 03:30:40', 0, 0),
(306, 2, ' Bulgaria › NBL ', 'NBL', '', '', ' Bulgaria › NBL ', '1396-01-18 03:30:42', 0, 0),
(307, 1, ' Romania › Liga 2 ', 'Liga 2', '', '', ' Romania › Liga 2 ', '1396-01-18 03:30:44', 0, 0),
(308, 3, ' Slovakia › 1. Liga ', '1. Liga', '', '', ' Slovakia › 1. Liga ', '1396-01-18 03:30:44', 0, 0),
(309, 1, ' Hong Kong › Premier League ', 'Premier League', '', '', ' Hong Kong › Premier League ', '1396-01-18 03:30:45', 0, 0),
(310, 1, ' Lebanon › Premier League ', 'Premier League', '', '', ' Lebanon › Premier League ', '1396-01-18 03:30:47', 0, 0),
(311, 2, ' Russia › Superleague A Women ', 'Superleague A Women', '', '', ' Russia › Superleague A Women ', '1396-01-18 03:30:47', 0, 0),
(312, 1, ' Ukraine › Division 2 ', 'Division 2', '', '', ' Ukraine › Division 2 ', '1396-01-18 03:30:48', 0, 0),
(313, 2, ' Germany › BBL ', 'BBL', '', '', ' Germany › BBL ', '1396-01-18 03:30:48', 0, 0),
(314, 1, ' Israel › Leumit League ', 'Leumit League', '', '', ' Israel › Leumit League ', '1396-01-18 03:30:53', 0, 0),
(315, 3, ' Denmark › Metal Ligaen ', 'Metal Ligaen', '', '', ' Denmark › Metal Ligaen ', '1396-01-18 03:30:53', 0, 0),
(316, 2, ' France › LNB ', 'LNB', '', '', ' France › LNB ', '1396-01-18 03:30:54', 0, 0),
(317, 2, ' France › Pro B ', 'Pro B', '', '', ' France › Pro B ', '1396-01-18 03:30:55', 0, 0),
(318, 3, ' Germany › DEL2 ', 'DEL2', '', '', ' Germany › DEL2 ', '1396-01-18 03:30:55', 0, 0),
(319, 2, ' Spain › LEB Oro ', 'LEB Oro', '', '', ' Spain › LEB Oro ', '1396-01-18 03:30:58', 0, 0),
(320, 1, ' Russia › Youth League ', 'Youth League', '', '', ' Russia › Youth League ', '1396-01-18 03:30:58', 0, 0),
(321, 3, ' Austria › EBEL ', 'EBEL', '', '', ' Austria › EBEL ', '1396-01-18 03:31:00', 0, 0),
(322, 1, ' Palestine › West Bank League ', 'West Bank League', '', '', ' Palestine › West Bank League ', '1396-01-18 03:31:03', 0, 0),
(323, 1, ' Oman › Professional League ', 'Professional League', '', '', ' Oman › Professional League ', '1396-01-18 03:31:05', 0, 0),
(324, 1, ' Slovakia › 2. Liga - East ', '2. Liga - East', '', '', ' Slovakia › 2. Liga - East ', '1396-01-18 03:31:10', 0, 0),
(325, 1, ' Bahrain › Premier League ', 'Premier League', '', '', ' Bahrain › Premier League ', '1396-01-18 03:31:12', 0, 0),
(326, 1, ' Kuwait › Premier League ', 'Premier League', '', '', ' Kuwait › Premier League ', '1396-01-18 03:31:12', 0, 0),
(327, 1, ' Croatia › 2. HNL ', '2. HNL', '', '', ' Croatia › 2. HNL ', '1396-01-18 03:31:14', 0, 0),
(328, 1, ' Bulgaria › Parva Liga ', 'Parva Liga', '', '', ' Bulgaria › Parva Liga ', '1396-01-18 03:31:15', 0, 0),
(329, 1, ' Turkey › TFF 1. Lig ', 'TFF 1. Lig', '', '', ' Turkey › TFF 1. Lig ', '1396-01-18 03:31:16', 0, 0),
(330, 1, ' Slovakia › Fortuna liga ', 'Fortuna liga', '', '', ' Slovakia › Fortuna liga ', '1396-01-18 03:31:19', 0, 0),
(331, 1, ' Germany › Oberliga Westfalen ', 'Oberliga Westfalen', '', '', ' Germany › Oberliga Westfalen ', '1396-01-18 03:31:23', 0, 0),
(332, 1, ' Denmark › Superliga ', 'Superliga', '', '', ' Denmark › Superliga ', '1396-01-18 03:31:26', 0, 0),
(333, 1, ' Czech Republic › 1. Liga ', '1. Liga', '', '', ' Czech Republic › 1. Liga ', '1396-01-18 03:31:27', 0, 0),
(334, 1, ' Poland › Ekstraklasa ', 'Ekstraklasa', '', '', ' Poland › Ekstraklasa ', '1396-01-18 03:31:28', 0, 0),
(335, 1, ' Poland › Division 2 ', 'Division 2', '', '', ' Poland › Division 2 ', '1396-01-18 03:31:29', 0, 0),
(336, 1, ' Germany › Regionalliga North ', 'Regionalliga North', '', '', ' Germany › Regionalliga North ', '1396-01-18 03:31:30', 0, 0),
(337, 1, ' Croatia › 1. HNL ', '1. HNL', '', '', ' Croatia › 1. HNL ', '1396-01-18 03:31:32', 0, 0),
(338, 1, ' Estonia › Meistriliiga ', 'Meistriliiga', '', '', ' Estonia › Meistriliiga ', '1396-01-18 03:31:32', 0, 0),
(339, 1, ' Sweden › Division 2 - Norrland ', 'Division 2 - Norrland', '', '', ' Sweden › Division 2 - Norrland ', '1396-01-18 03:31:33', 0, 0),
(340, 1, ' Maldives › Dhivehi Premier League ', 'Dhivehi Premier League', '', '', ' Maldives › Dhivehi Premier League ', '1396-01-18 03:31:33', 0, 0),
(341, 1, ' Germany › Oberliga Bremen ', 'Oberliga Bremen', '', '', ' Germany › Oberliga Bremen ', '1396-01-18 03:31:34', 0, 0),
(342, 1, ' Austria › Erste Liga ', 'Erste Liga', '', '', ' Austria › Erste Liga ', '1396-01-18 03:31:35', 0, 0),
(343, 1, ' Austria › Regionalliga West ', 'Regionalliga West', '', '', ' Austria › Regionalliga West ', '1396-01-18 03:31:41', 0, 0),
(344, 1, ' Germany › Regionalliga Sudwest ', 'Regionalliga Sudwest', '', '', ' Germany › Regionalliga Sudwest ', '1396-01-18 03:31:52', 0, 0),
(345, 1, ' Turkey › Super Lig ', 'Super Lig', '', '', ' Turkey › Super Lig ', '1396-01-18 03:31:55', 0, 0),
(346, 1, ' Sweden › Superettan ', 'Superettan', '', '', ' Sweden › Superettan ', '1396-01-18 03:31:57', 0, 0),
(347, 1, ' Germany › Junioren Bundesliga South ', 'Junioren Bundesliga South', '', '', ' Germany › Junioren Bundesliga South ', '1396-01-18 03:31:57', 0, 0),
(348, 1, ' Austria › Regionalliga East ', 'Regionalliga East', '', '', ' Austria › Regionalliga East ', '1396-01-18 03:32:03', 0, 0),
(349, 1, ' Germany › Oberliga NOFV- Süd ', 'Oberliga NOFV- Süd', '', '', ' Germany › Oberliga NOFV- Süd ', '1396-01-18 03:32:07', 0, 0),
(350, 1, ' Germany › Oberliga Rheinland-Pfalz/Saar ', 'Oberliga Rheinland-Pfalz/Saar', '', '', ' Germany › Oberliga Rheinland-Pfalz/Saar ', '1396-01-18 03:32:08', 0, 0),
(351, 1, ' Sweden › Division 2 - Norra Götaland ', 'Division 2 - Norra Götaland', '', '', ' Sweden › Division 2 - Norra Götaland ', '1396-01-18 03:32:15', 0, 0),
(352, 1, ' Netherlands › Eerste Divisie ', 'Eerste Divisie', '', '', ' Netherlands › Eerste Divisie ', '1396-01-18 03:32:19', 0, 0),
(353, 1, ' France › Ligue 2 ', 'Ligue 2', '', '', ' France › Ligue 2 ', '1396-01-18 03:32:28', 0, 0),
(354, 1, ' France › National ', 'National', '', '', ' France › National ', '1396-01-18 03:32:35', 0, 0),
(355, 1, ' Spain › LaLiga2 ', 'LaLiga2', '', '', ' Spain › LaLiga2 ', '1396-01-18 03:32:41', 0, 0),
(356, 1, ' England › Premier League 2 ', 'Premier League 2', '', '', ' England › Premier League 2 ', '1396-01-18 03:32:42', 0, 0),
(357, 1, ' Belgium › Jupiler League ', 'Jupiler League', '', '', ' Belgium › Jupiler League ', '1396-01-18 03:32:51', 0, 0),
(358, 1, ' Belgium › Proximus League ', 'Proximus League', '', '', ' Belgium › Proximus League ', '1396-01-18 03:32:52', 0, 0),
(359, 1, ' Ireland › Premier Division ', 'Premier Division', '', '', ' Ireland › Premier Division ', '1396-01-18 03:32:53', 0, 0),
(360, 1, ' Argentina › Primera C Metropolitana ', 'Primera C Metropolitana', '', '', ' Argentina › Primera C Metropolitana ', '1396-01-18 03:32:54', 0, 0),
(361, 1, ' Wales › Premier League ', 'Premier League', '', '', ' Wales › Premier League ', '1396-01-18 03:33:01', 0, 0),
(362, 1, ' Ireland › Division 1 ', 'Division 1', '', '', ' Ireland › Division 1 ', '1396-01-18 03:33:03', 0, 0),
(363, 1, ' England › Southern Premier League ', 'Southern Premier League', '', '', ' England › Southern Premier League ', '1396-01-18 03:33:08', 0, 0),
(364, 1, ' Portugal › Primeira Liga ', 'Primeira Liga', '', '', ' Portugal › Primeira Liga ', '1396-01-18 03:33:12', 0, 0),
(365, 1, ' Paraguay › Primera Division ', 'Primera Division', '', '', ' Paraguay › Primera Division ', '1396-01-18 03:33:13', 0, 0),
(366, 2, ' Indonesia › IBL ', 'IBL', '', '', ' Indonesia › IBL ', '1396-01-18 05:30:41', 0, 0),
(367, 1, ' Germany › Oberliga Hamburg ', 'Oberliga Hamburg', '', '', ' Germany › Oberliga Hamburg ', '1396-01-18 08:32:37', 0, 0),
(368, 5, ' Israel › Division 1 ', 'Division 1', '', '', ' Israel › Division 1 ', '1396-01-18 12:00:04', 0, 0),
(369, 9, ' Latvia › Elvi Liga Women ', 'Elvi Liga Women', '', '', ' Latvia › Elvi Liga Women ', '1396-01-18 12:30:12', 0, 0),
(370, 5, ' Russia › Superleague ', 'Superleague', '', '', ' Russia › Superleague ', '1396-01-18 12:30:13', 0, 0),
(371, 3, ' World › WCH U18 IA ', 'WCH U18 IA', '', '', ' World › WCH U18 IA ', '1396-01-18 12:30:43', 0, 0),
(372, 2, ' Saudi Arabia › Premier League ', 'Premier League', '', '', ' Saudi Arabia › Premier League ', '1396-01-18 12:30:53', 0, 0),
(373, 2, ' Turkey › TBL ', 'TBL', '', '', ' Turkey › TBL ', '1396-01-18 12:30:54', 0, 0),
(374, 3, ' Kazakhstan › Championship ', 'Championship', '', '', ' Kazakhstan › Championship ', '1396-01-18 13:00:42', 0, 0),
(375, 2, ' Iceland › Premier league ', 'Premier league', '', '', ' Iceland › Premier league ', '1396-01-18 13:01:30', 0, 0),
(376, 2, ' Serbia › First League ', 'First League', '', '', ' Serbia › First League ', '1396-01-18 13:31:00', 0, 0),
(377, 2, ' Germany › DBBL Women ', 'DBBL Women', '', '', ' Germany › DBBL Women ', '1396-01-18 13:31:19', 0, 0),
(378, 2, ' Germany › Pro A ', 'Pro A', '', '', ' Germany › Pro A ', '1396-01-18 13:31:21', 0, 0),
(379, 4, ' Israel › Premier League ', 'Premier League', '', '', ' Israel › Premier League ', '1396-01-18 14:00:05', 0, 0),
(380, 2, ' Lithuania › NKL ', 'NKL', '', '', ' Lithuania › NKL ', '1396-01-18 14:00:54', 0, 0),
(381, 3, ' World › WCH U18 IIA ', 'WCH U18 IIA', '', '', ' World › WCH U18 IIA ', '1396-01-18 14:30:49', 0, 0),
(382, 4, ' Cyprus › Opap Championship ', 'Opap Championship', '', '', ' Cyprus › Opap Championship ', '1396-01-18 18:30:27', 0, 0),
(383, 8, ' USA › AFL ', 'AFL', '', '', ' USA › AFL ', '1396-01-19 02:30:04', 0, 0),
(384, 9, ' Denmark › Unihoc Ligaen ', 'Unihoc Ligaen', '', '', ' Denmark › Unihoc Ligaen ', '1396-01-19 02:30:06', 0, 0),
(385, 9, ' Latvia › Elvi Liga ', 'Elvi Liga', '', '', ' Latvia › Elvi Liga ', '1396-01-19 02:30:09', 0, 0),
(386, 7, ' Europe › UEFA Futsal Championship ', 'UEFA Futsal Championship', '', '', ' Europe › UEFA Futsal Championship ', '1396-01-19 02:30:10', 0, 0),
(387, 5, ' Bulgaria › A RHG ', 'A RHG', '', '', ' Bulgaria › A RHG ', '1396-01-19 02:30:11', 0, 0),
(388, 1, ' Argentina › Primera Division ', 'Primera Division', '', '', ' Argentina › Primera Division ', '1396-01-19 02:30:12', 0, 0),
(389, 5, ' Greece › A1 ', 'A1', '', '', ' Greece › A1 ', '1396-01-19 02:30:15', 0, 0),
(390, 1, ' Chile › Primera Division ', 'Primera Division', '', '', ' Chile › Primera Division ', '1396-01-19 02:30:15', 0, 0),
(391, 5, ' Denmark › 1. Division Women ', '1. Division Women', '', '', ' Denmark › 1. Division Women ', '1396-01-19 02:30:21', 0, 0),
(392, 9, ' Slovakia › Extraliga ', 'Extraliga', '', '', ' Slovakia › Extraliga ', '1396-01-19 02:30:22', 0, 0),
(393, 4, ' Russia › Superleague ', 'Superleague', '', '', ' Russia › Superleague ', '1396-01-19 02:30:22', 0, 0),
(394, 1, ' Brazil › Campeonato Paulista ', 'Campeonato Paulista', '', '', ' Brazil › Campeonato Paulista ', '1396-01-19 02:30:24', 0, 0),
(395, 1, ' Mexico › Liga de Ascenso ', 'Liga de Ascenso', '', '', ' Mexico › Liga de Ascenso ', '1396-01-19 02:30:25', 0, 0),
(396, 5, ' Germany › DHB Pokal ', 'DHB Pokal', '', '', ' Germany › DHB Pokal ', '1396-01-19 02:30:29', 0, 0),
(397, 5, ' Sweden › Allsvenskan Women ', 'Allsvenskan Women', '', '', ' Sweden › Allsvenskan Women ', '1396-01-19 02:30:30', 0, 0),
(398, 1, ' Nicaragua › Primera Division ', 'Primera Division', '', '', ' Nicaragua › Primera Division ', '1396-01-19 02:30:34', 0, 0),
(399, 5, ' Europe › Challenge Cup Women ', 'Challenge Cup Women', '', '', ' Europe › Challenge Cup Women ', '1396-01-19 02:30:35', 0, 0),
(400, 5, ' Romania › Liga Nationala Women ', 'Liga Nationala Women', '', '', ' Romania › Liga Nationala Women ', '1396-01-19 02:30:36', 0, 0),
(401, 5, ' Europe › Baltic League ', 'Baltic League', '', '', ' Europe › Baltic League ', '1396-01-19 02:30:37', 0, 0),
(402, 5, ' Poland › Superliga Women ', 'Superliga Women', '', '', ' Poland › Superliga Women ', '1396-01-19 02:30:38', 0, 0),
(403, 5, ' Iceland › Olis Deild Women ', 'Olis Deild Women', '', '', ' Iceland › Olis Deild Women ', '1396-01-19 02:30:40', 0, 0),
(404, 1, ' Mexico › Primera Division ', 'Primera Division', '', '', ' Mexico › Primera Division ', '1396-01-19 02:30:41', 0, 0),
(405, 3, ' Asia › Asia League ', 'Asia League', '', '', ' Asia › Asia League ', '1396-01-19 02:30:42', 0, 0),
(406, 1, ' Panama › LPF ', 'LPF', '', '', ' Panama › LPF ', '1396-01-19 02:30:42', 0, 0),
(407, 5, ' Denmark › 1. Division ', '1. Division', '', '', ' Denmark › 1. Division ', '1396-01-19 02:30:42', 0, 0),
(408, 3, ' World › WCH IB Women ', 'WCH IB Women', '', '', ' World › WCH IB Women ', '1396-01-19 02:30:43', 0, 0),
(409, 1, ' USA › MLS ', 'MLS', '', '', ' USA › MLS ', '1396-01-19 02:30:45', 0, 0),
(410, 3, ' Russia › KHL ', 'KHL', '', '', ' Russia › KHL ', '1396-01-19 02:30:46', 0, 0),
(411, 3, ' United Kingdom › Elite League ', 'Elite League', '', '', ' United Kingdom › Elite League ', '1396-01-19 02:30:47', 0, 0),
(412, 5, ' Norway › 1. Division Women ', '1. Division Women', '', '', ' Norway › 1. Division Women ', '1396-01-19 02:30:48', 0, 0),
(413, 4, ' Slovakia › Extraliga Women ', 'Extraliga Women', '', '', ' Slovakia › Extraliga Women ', '1396-01-19 02:30:48', 0, 0),
(414, 4, ' Russia › Superleague Women ', 'Superleague Women', '', '', ' Russia › Superleague Women ', '1396-01-19 02:30:49', 0, 0),
(415, 1, ' Japan › J-League Division 2 ', 'J-League Division 2', '', '', ' Japan › J-League Division 2 ', '1396-01-19 02:30:49', 0, 0),
(416, 1, ' Australia › NPL Tasmania ', 'NPL Tasmania', '', '', ' Australia › NPL Tasmania ', '1396-01-19 02:30:50', 0, 0),
(417, 4, ' Germany › 1. Bundesliga ', '1. Bundesliga', '', '', ' Germany › 1. Bundesliga ', '1396-01-19 02:30:55', 0, 0),
(418, 5, ' Denmark › 888ligaen ', '888ligaen', '', '', ' Denmark › 888ligaen ', '1396-01-19 02:30:57', 0, 0),
(419, 5, ' Germany › 1. Bundesliga Women ', '1. Bundesliga Women', '', '', ' Germany › 1. Bundesliga Women ', '1396-01-19 02:30:58', 0, 0);
INSERT INTO `categories` (`category_id`, `category_parent_id`, `category_name`, `category_seo`, `category_file_name`, `category_image_pic`, `category_description`, `category_date`, `category_order`, `category_outer_id`) VALUES
(420, 1, ' Australia › Capital Territory ', 'Capital Territory', '', '', ' Australia › Capital Territory ', '1396-01-19 02:30:58', 0, 0),
(421, 4, ' France › Pro A Women ', 'Pro A Women', '', '', ' France › Pro A Women ', '1396-01-19 02:31:00', 0, 0),
(422, 5, ' Czech Republic › Extraliga ', 'Extraliga', '', '', ' Czech Republic › Extraliga ', '1396-01-19 02:31:02', 0, 0),
(423, 1, ' South Korea › K League Challenge ', 'K League Challenge', '', '', ' South Korea › K League Challenge ', '1396-01-19 02:31:05', 0, 0),
(424, 4, ' Belgium › Ethias League ', 'Ethias League', '', '', ' Belgium › Ethias League ', '1396-01-19 02:31:07', 0, 0),
(425, 1, ' South Korea › K-League Classic ', 'K-League Classic', '', '', ' South Korea › K-League Classic ', '1396-01-19 02:31:09', 0, 0),
(426, 4, ' Italy › Serie A1 ', 'Serie A1', '', '', ' Italy › Serie A1 ', '1396-01-19 02:31:10', 0, 0),
(427, 5, ' Spain › Division de Honor Plata ', 'Division de Honor Plata', '', '', ' Spain › Division de Honor Plata ', '1396-01-19 02:31:12', 0, 0),
(428, 2, ' Turkey › Super Ligi ', 'Super Ligi', '', '', ' Turkey › Super Ligi ', '1396-01-19 02:31:14', 0, 0),
(429, 2, ' Lithuania › LKL ', 'LKL', '', '', ' Lithuania › LKL ', '1396-01-19 02:31:15', 0, 0),
(430, 2, ' Greece › Basket League ', 'Basket League', '', '', ' Greece › Basket League ', '1396-01-19 02:31:18', 0, 0),
(431, 1, ' China › Yi League ', 'Yi League', '', '', ' China › Yi League ', '1396-01-19 02:31:21', 0, 0),
(432, 1, ' China › Jia League ', 'Jia League', '', '', ' China › Jia League ', '1396-01-19 02:31:22', 0, 0),
(433, 1, ' Australia › Brisbane Premier League ', 'Brisbane Premier League', '', '', ' Australia › Brisbane Premier League ', '1396-01-19 02:31:25', 0, 0),
(434, 2, ' Poland › Ekstraklasa Women ', 'Ekstraklasa Women', '', '', ' Poland › Ekstraklasa Women ', '1396-01-19 02:31:26', 0, 0),
(435, 1, ' Australia › NPL Western Australia ', 'NPL Western Australia', '', '', ' Australia › NPL Western Australia ', '1396-01-19 02:31:28', 0, 0),
(436, 2, ' Spain › ACB ', 'ACB', '', '', ' Spain › ACB ', '1396-01-19 02:31:42', 0, 0),
(437, 1, ' Czech Republic › Division 2 ', 'Division 2', '', '', ' Czech Republic › Division 2 ', '1396-01-19 02:31:45', 0, 0),
(438, 1, ' Australia › NPL NSW ', 'NPL NSW', '', '', ' Australia › NPL NSW ', '1396-01-19 02:31:51', 0, 0),
(439, 1, ' Italy › Primavera - Group B ', 'Primavera - Group B', '', '', ' Italy › Primavera - Group B ', '1396-01-19 02:31:52', 0, 0),
(440, 5, ' Europe › EHF Cup Women ', 'EHF Cup Women', '', '', ' Europe › EHF Cup Women ', '1396-01-19 02:31:52', 0, 0),
(441, 1, ' Germany › Junioren Bundesliga North ', 'Junioren Bundesliga North', '', '', ' Germany › Junioren Bundesliga North ', '1396-01-19 02:31:54', 0, 0),
(442, 2, ' France › LFB Women ', 'LFB Women', '', '', ' France › LFB Women ', '1396-01-19 02:31:57', 0, 0),
(443, 1, ' Italy › Primavera - Group C ', 'Primavera - Group C', '', '', ' Italy › Primavera - Group C ', '1396-01-19 02:32:11', 0, 0),
(444, 1, ' Kazakhstan › Premier League ', 'Premier League', '', '', ' Kazakhstan › Premier League ', '1396-01-19 02:32:13', 0, 0),
(445, 1, ' Australia & Oceania › OFC Champions League ', 'OFC Champions League', '', '', ' Australia & Oceania › OFC Champions League ', '1396-01-19 02:32:14', 0, 0),
(446, 2, ' Italy › A2 West ', 'A2 West', '', '', ' Italy › A2 West ', '1396-01-19 02:32:14', 0, 0),
(447, 2, ' Italy › Lega A ', 'Lega A', '', '', ' Italy › Lega A ', '1396-01-19 02:32:15', 0, 0),
(448, 1, ' Thailand › Thai Premier League ', 'Thai Premier League', '', '', ' Thailand › Thai Premier League ', '1396-01-19 02:32:39', 0, 0),
(449, 1, ' Russia › Premier League ', 'Premier League', '', '', ' Russia › Premier League ', '1396-01-19 02:32:42', 0, 0),
(450, 1, ' Ukraine › Pari-Match League ', 'Pari-Match League', '', '', ' Ukraine › Pari-Match League ', '1396-01-19 02:32:52', 0, 0),
(451, 1, ' Germany › Junioren Bundesliga West ', 'Junioren Bundesliga West', '', '', ' Germany › Junioren Bundesliga West ', '1396-01-19 02:32:56', 0, 0),
(452, 1, ' Latvia › Latvian Cup ', 'Latvian Cup', '', '', ' Latvia › Latvian Cup ', '1396-01-19 02:32:57', 0, 0),
(453, 1, ' Denmark › 2nd Division - Group 1 ', '2nd Division - Group 1', '', '', ' Denmark › 2nd Division - Group 1 ', '1396-01-19 02:32:59', 0, 0),
(454, 1, ' Belarus › Vysshaya Liga ', 'Vysshaya Liga', '', '', ' Belarus › Vysshaya Liga ', '1396-01-19 02:33:07', 0, 0),
(455, 1, ' India › I-League ', 'I-League', '', '', ' India › I-League ', '1396-01-19 02:33:09', 0, 0),
(456, 1, ' Germany › Regionalliga West ', 'Regionalliga West', '', '', ' Germany › Regionalliga West ', '1396-01-19 02:33:37', 0, 0),
(457, 1, ' Greece › Football League ', 'Football League', '', '', ' Greece › Football League ', '1396-01-19 02:33:45', 0, 0),
(458, 1, ' Netherlands › Tweede Divisie ', 'Tweede Divisie', '', '', ' Netherlands › Tweede Divisie ', '1396-01-19 02:33:55', 0, 0),
(459, 1, ' Germany › Oberliga Baden-Württemberg ', 'Oberliga Baden-Württemberg', '', '', ' Germany › Oberliga Baden-Württemberg ', '1396-01-19 02:34:00', 0, 0),
(460, 1, ' Turkey › Spor Toto 2. Lig Red Group ', 'Spor Toto 2. Lig Red Group', '', '', ' Turkey › Spor Toto 2. Lig Red Group ', '1396-01-19 02:34:06', 0, 0),
(461, 1, ' Ethiopia › Premier League ', 'Premier League', '', '', ' Ethiopia › Premier League ', '1396-01-19 02:34:07', 0, 0),
(462, 1, ' Sweden › Division 2 - Norra Svealand ', 'Division 2 - Norra Svealand', '', '', ' Sweden › Division 2 - Norra Svealand ', '1396-01-19 02:34:10', 0, 0),
(463, 1, ' Sweden › Division 2 - Östra Götaland ', 'Division 2 - Östra Götaland', '', '', ' Sweden › Division 2 - Östra Götaland ', '1396-01-19 02:34:11', 0, 0),
(464, 1, ' Sweden › Division 2 - Södra Svealand ', 'Division 2 - Södra Svealand', '', '', ' Sweden › Division 2 - Södra Svealand ', '1396-01-19 02:34:14', 0, 0),
(465, 1, ' Sweden › Division 2 - Västra Götaland ', 'Division 2 - Västra Götaland', '', '', ' Sweden › Division 2 - Västra Götaland ', '1396-01-19 02:34:15', 0, 0),
(466, 1, ' Italy › Lega Pro - Group A ', 'Lega Pro - Group A', '', '', ' Italy › Lega Pro - Group A ', '1396-01-19 02:34:30', 0, 0),
(467, 1, ' Africa › CAF Confederations Cup ', 'CAF Confederations Cup', '', '', ' Africa › CAF Confederations Cup ', '1396-01-19 02:34:34', 0, 0),
(468, 1, ' Cyprus › First Division ', 'First Division', '', '', ' Cyprus › First Division ', '1396-01-19 02:34:50', 0, 0),
(469, 1, ' Italy › Serie A ', 'Serie A', '', '', ' Italy › Serie A ', '1396-01-19 02:34:52', 0, 0),
(470, 1, ' Italy › Serie B ', 'Serie B', '', '', ' Italy › Serie B ', '1396-01-19 02:34:53', 0, 0),
(471, 1, ' Malaysia › Super League ', 'Super League', '', '', ' Malaysia › Super League ', '1396-01-19 02:35:09', 0, 0),
(472, 1, ' Germany › Oberliga Hessen ', 'Oberliga Hessen', '', '', ' Germany › Oberliga Hessen ', '1396-01-19 02:35:20', 0, 0),
(473, 1, ' Czech Republic › Youth League ', 'Youth League', '', '', ' Czech Republic › Youth League ', '1396-01-19 02:35:24', 0, 0),
(474, 1, ' South Africa › Nedbank Cup ', 'Nedbank Cup', '', '', ' South Africa › Nedbank Cup ', '1396-01-19 02:35:36', 0, 0),
(475, 1, ' England › League Two ', 'League Two', '', '', ' England › League Two ', '1396-01-19 02:36:46', 0, 0),
(476, 1, ' England › Vanarama National League ', 'Vanarama National League', '', '', ' England › Vanarama National League ', '1396-01-19 02:37:01', 0, 0),
(477, 1, ' Scotland › League One ', 'League One', '', '', ' Scotland › League One ', '1396-01-19 02:37:23', 0, 0),
(478, 1, ' Austria › Tipico Bundesliga ', 'Tipico Bundesliga', '', '', ' Austria › Tipico Bundesliga ', '1396-01-19 02:37:31', 0, 0),
(479, 1, ' Scotland › Championship ', 'Championship', '', '', ' Scotland › Championship ', '1396-01-19 02:37:33', 0, 0),
(480, 1, ' Scotland › League Two ', 'League Two', '', '', ' Scotland › League Two ', '1396-01-19 02:37:40', 0, 0),
(481, 1, ' Slovenia › Prva liga ', 'Prva liga', '', '', ' Slovenia › Prva liga ', '1396-01-19 02:37:47', 0, 0),
(482, 1, ' Northern Ireland › NIFL Championship ', 'NIFL Championship', '', '', ' Northern Ireland › NIFL Championship ', '1396-01-19 02:37:48', 0, 0),
(483, 1, ' Northern Ireland › NIFL Premiership ', 'NIFL Premiership', '', '', ' Northern Ireland › NIFL Premiership ', '1396-01-19 02:37:50', 0, 0),
(484, 1, ' England › Vanarama National League South ', 'Vanarama National League South', '', '', ' England › Vanarama National League South ', '1396-01-19 02:38:03', 0, 0),
(485, 1, ' England › Vanarama National League North ', 'Vanarama National League North', '', '', ' England › Vanarama National League North ', '1396-01-19 02:38:16', 0, 0),
(486, 1, ' Sweden › Allsvenskan ', 'Allsvenskan', '', '', ' Sweden › Allsvenskan ', '1396-01-19 02:38:33', 0, 0),
(487, 1, ' Argentina › Primera B Nacional ', 'Primera B Nacional', '', '', ' Argentina › Primera B Nacional ', '1396-01-19 02:38:35', 0, 0),
(488, 1, ' Germany › Oberliga Niedersachsen ', 'Oberliga Niedersachsen', '', '', ' Germany › Oberliga Niedersachsen ', '1396-01-19 02:38:42', 0, 0),
(489, 1, ' Slovakia › 2. Liga - West ', '2. Liga - West', '', '', ' Slovakia › 2. Liga - West ', '1396-01-19 02:38:47', 0, 0),
(490, 1, ' England › Ryman League ', 'Ryman League', '', '', ' England › Ryman League ', '1396-01-19 02:39:01', 0, 0),
(491, 1, ' Scotland › Lowland League ', 'Lowland League', '', '', ' Scotland › Lowland League ', '1396-01-19 02:39:29', 0, 0),
(492, 1, ' Serbia › Super Liga ', 'Super Liga', '', '', ' Serbia › Super Liga ', '1396-01-19 02:40:03', 0, 0),
(493, 1, ' Spain › Segunda Division B - Group 1 ', 'Segunda Division B - Group 1', '', '', ' Spain › Segunda Division B - Group 1 ', '1396-01-19 02:40:06', 0, 0),
(494, 1, ' Switzerland › Super League ', 'Super League', '', '', ' Switzerland › Super League ', '1396-01-19 02:40:16', 0, 0),
(495, 1, ' Hungary › OTP Bank Liga ', 'OTP Bank Liga', '', '', ' Hungary › OTP Bank Liga ', '1396-01-19 02:40:33', 0, 0),
(496, 1, ' France › CFA - Group A ', 'CFA - Group A', '', '', ' France › CFA - Group A ', '1396-01-19 02:40:44', 0, 0),
(497, 1, ' France › CFA - Group C ', 'CFA - Group C', '', '', ' France › CFA - Group C ', '1396-01-19 02:40:48', 0, 0),
(498, 1, ' France › CFA - Group D ', 'CFA - Group D', '', '', ' France › CFA - Group D ', '1396-01-19 02:40:50', 0, 0),
(499, 1, ' Spain › Segunda Division B - Group 2 ', 'Segunda Division B - Group 2', '', '', ' Spain › Segunda Division B - Group 2 ', '1396-01-19 02:40:54', 0, 0),
(500, 1, ' Spain › Segunda Division B - Group 3 ', 'Segunda Division B - Group 3', '', '', ' Spain › Segunda Division B - Group 3 ', '1396-01-19 02:40:57', 0, 0),
(501, 1, ' Spain › Segunda Division B - Group 4 ', 'Segunda Division B - Group 4', '', '', ' Spain › Segunda Division B - Group 4 ', '1396-01-19 02:40:59', 0, 0),
(502, 1, ' Faroe Islands › Premier League ', 'Premier League', '', '', ' Faroe Islands › Premier League ', '1396-01-19 02:41:01', 0, 0),
(503, 1, ' Malta › Division 1 ', 'Division 1', '', '', ' Malta › Division 1 ', '1396-01-19 02:41:05', 0, 0),
(504, 1, ' Switzerland › Challenge League ', 'Challenge League', '', '', ' Switzerland › Challenge League ', '1396-01-19 02:41:28', 0, 0),
(505, 1, ' Belgium › First Amateur Division ', 'First Amateur Division', '', '', ' Belgium › First Amateur Division ', '1396-01-19 02:41:36', 0, 0),
(506, 1, ' Belgium › Second Amateur Division Group VFV A ', 'Second Amateur Division Group VFV A', '', '', ' Belgium › Second Amateur Division Group VFV A ', '1396-01-19 02:41:44', 0, 0),
(507, 1, ' Belgium › Second Amateur Division Group VFV B ', 'Second Amateur Division Group VFV B', '', '', ' Belgium › Second Amateur Division Group VFV B ', '1396-01-19 02:41:45', 0, 0),
(508, 1, ' Peru › Primera Division ', 'Primera Division', '', '', ' Peru › Primera Division ', '1396-01-19 02:42:07', 0, 0),
(509, 1, ' Belgium › Second Amateur Division Group ACFF ', 'Second Amateur Division Group ACFF', '', '', ' Belgium › Second Amateur Division Group ACFF ', '1396-01-19 02:42:15', 0, 0),
(510, 1, ' Argentina › Primera D Metropolitana ', 'Primera D Metropolitana', '', '', ' Argentina › Primera D Metropolitana ', '1396-01-19 02:42:41', 0, 0),
(511, 1, ' Gibraltar › Premier Division ', 'Premier Division', '', '', ' Gibraltar › Premier Division ', '1396-01-19 02:42:42', 0, 0),
(512, 1, ' Brazil › Campeonato Brasiliense ', 'Campeonato Brasiliense', '', '', ' Brazil › Campeonato Brasiliense ', '1396-01-19 02:42:57', 0, 0),
(513, 1, ' Dominican Republic › LDF ', 'LDF', '', '', ' Dominican Republic › LDF ', '1396-01-19 02:43:13', 0, 0),
(514, 1, ' Guatemala › Liga Nacional ', 'Liga Nacional', '', '', ' Guatemala › Liga Nacional ', '1396-01-19 02:43:28', 0, 0),
(515, 1, ' Honduras › Liga Nacional ', 'Liga Nacional', '', '', ' Honduras › Liga Nacional ', '1396-01-19 02:43:29', 0, 0),
(516, 1, ' Brazil › Campeonato Carioca ', 'Campeonato Carioca', '', '', ' Brazil › Campeonato Carioca ', '1396-01-19 02:43:30', 0, 0),
(517, 4, ' Netherlands › Eredivisie Women ', 'Eredivisie Women', '', '', ' Netherlands › Eredivisie Women ', '1396-01-19 05:00:39', 0, 0),
(518, 1, ' Brazil › Campeonato Paranaense ', 'Campeonato Paranaense', '', '', ' Brazil › Campeonato Paranaense ', '1396-01-19 05:12:32', 0, 0),
(519, 2, ' Austria › ABL ', 'ABL', '', '', ' Austria › ABL ', '1396-01-19 09:31:53', 0, 0),
(520, 5, ' Ukraine › Superleague ', 'Superleague', '', '', ' Ukraine › Superleague ', '1396-01-19 12:01:25', 0, 0),
(521, 5, ' Montenegro › Prva liga ', 'Prva liga', '', '', ' Montenegro › Prva liga ', '1396-01-19 12:01:59', 0, 0),
(522, 1, ' Italy › Serie D - Group C ', 'Serie D - Group C', '', '', ' Italy › Serie D - Group C ', '1396-01-19 12:06:06', 0, 0),
(523, 1, ' Italy › Serie D - Group H ', 'Serie D - Group H', '', '', ' Italy › Serie D - Group H ', '1396-01-19 12:11:58', 0, 0),
(524, 3, ' Russia › VHL-B ', 'VHL-B', '', '', ' Russia › VHL-B ', '1396-01-19 12:31:37', 0, 0),
(525, 2, ' United Kingdom › WBBL Women ', 'WBBL Women', '', '', ' United Kingdom › WBBL Women ', '1396-01-19 12:31:59', 0, 0),
(526, 5, ' Serbia › Superliga ', 'Superliga', '', '', ' Serbia › Superliga ', '1396-01-19 12:32:23', 0, 0),
(527, 5, ' Italy › Serie A ', 'Serie A', '', '', ' Italy › Serie A ', '1396-01-19 12:32:29', 0, 0),
(528, 4, ' Portugal › Divisao A1 ', 'Divisao A1', '', '', ' Portugal › Divisao A1 ', '1396-01-19 13:00:47', 0, 0),
(529, 2, ' Denmark › Dameligaen Women ', 'Dameligaen Women', '', '', ' Denmark › Dameligaen Women ', '1396-01-19 13:01:55', 0, 0),
(530, 2, ' Europe › WBBL Women ', 'WBBL Women', '', '', ' Europe › WBBL Women ', '1396-01-19 13:02:00', 0, 0),
(531, 4, ' Norway › Eliteserien ', 'Eliteserien', '', '', ' Norway › Eliteserien ', '1396-01-19 13:30:49', 0, 0),
(532, 5, ' Norway › 1. Division ', '1. Division', '', '', ' Norway › 1. Division ', '1396-01-19 13:31:18', 0, 0),
(533, 4, ' Belgium › Ere Divisie Women ', 'Ere Divisie Women', '', '', ' Belgium › Ere Divisie Women ', '1396-01-19 13:31:54', 0, 0),
(534, 2, ' Spain › LEB Plata ', 'LEB Plata', '', '', ' Spain › LEB Plata ', '1396-01-19 14:02:21', 0, 0),
(535, 1, ' Switzerland › 1.Liga Promotion ', '1.Liga Promotion', '', '', ' Switzerland › 1.Liga Promotion ', '1396-01-19 14:04:10', 0, 0),
(536, 1, ' Montenegro › Prva Crnogorska Liga ', 'Prva Crnogorska Liga', '', '', ' Montenegro › Prva Crnogorska Liga ', '1396-01-19 14:09:00', 0, 0),
(537, 4, ' Austria › 2. Bundesliga Nord ', '2. Bundesliga Nord', '', '', ' Austria › 2. Bundesliga Nord ', '1396-01-19 17:00:57', 0, 0),
(538, 4, ' Austria › AVL Women ', 'AVL Women', '', '', ' Austria › AVL Women ', '1396-01-19 19:01:36', 0, 0),
(539, 4, ' Germany › 2. Bundesliga South ', '2. Bundesliga South', '', '', ' Germany › 2. Bundesliga South ', '1396-01-19 19:01:43', 0, 0),
(540, 4, ' Norway › Eliteserien Women ', 'Eliteserien Women', '', '', ' Norway › Eliteserien Women ', '1396-01-19 19:30:31', 0, 0),
(541, 9, ' Norway › Eliteserien Women ', 'Eliteserien Women', '', '', ' Norway › Eliteserien Women ', '1396-01-20 03:00:03', 0, 0),
(542, 9, ' Norway › Eliteserien ', 'Eliteserien', '', '', ' Norway › Eliteserien ', '1396-01-20 03:00:06', 0, 0),
(543, 2, ' Chile › LNB ', 'LNB', '', '', ' Chile › LNB ', '1396-01-20 03:00:17', 0, 0),
(544, 1, ' Brazil › Campeonato Catarinense ', 'Campeonato Catarinense', '', '', ' Brazil › Campeonato Catarinense ', '1396-01-20 03:00:22', 0, 0),
(545, 4, ' Italy › Serie A2 ', 'Serie A2', '', '', ' Italy › Serie A2 ', '1396-01-20 03:00:35', 0, 0),
(546, 1, ' Costa Rica › Primera Division ', 'Primera Division', '', '', ' Costa Rica › Primera Division ', '1396-01-20 03:00:39', 0, 0),
(547, 5, ' Iceland › Olis Deildin ', 'Olis Deildin', '', '', ' Iceland › Olis Deildin ', '1396-01-20 03:00:42', 0, 0),
(548, 2, ' Europe › VTB United League ', 'VTB United League', '', '', ' Europe › VTB United League ', '1396-01-20 03:00:46', 0, 0),
(549, 1, ' USA › North American Soccer League ', 'North American Soccer League', '', '', ' USA › North American Soccer League ', '1396-01-20 03:00:46', 0, 0),
(550, 3, ' Germany › DEL ', 'DEL', '', '', ' Germany › DEL ', '1396-01-20 03:00:58', 0, 0),
(551, 2, ' Switzerland › LNA ', 'LNA', '', '', ' Switzerland › LNA ', '1396-01-20 03:01:11', 0, 0),
(552, 1, ' Czech Republic › MSFL ', 'MSFL', '', '', ' Czech Republic › MSFL ', '1396-01-20 03:01:42', 0, 0),
(553, 1, ' Myanmar › National League ', 'National League', '', '', ' Myanmar › National League ', '1396-01-20 03:01:55', 0, 0),
(554, 1, ' Hungary › Merkantil Bank Liga ', 'Merkantil Bank Liga', '', '', ' Hungary › Merkantil Bank Liga ', '1396-01-20 03:02:21', 0, 0),
(555, 1, ' Russia › Division 2 - Center ', 'Division 2 - Center', '', '', ' Russia › Division 2 - Center ', '1396-01-20 03:02:28', 0, 0),
(556, 1, ' Russia › Division 2 - West ', 'Division 2 - West', '', '', ' Russia › Division 2 - West ', '1396-01-20 03:03:09', 0, 0),
(557, 1, ' Turkey › Spor Toto 2. Lig White Group ', 'Spor Toto 2. Lig White Group', '', '', ' Turkey › Spor Toto 2. Lig White Group ', '1396-01-20 03:03:24', 0, 0),
(558, 1, ' Turkey › TFF 3. Lig Group 2 ', 'TFF 3. Lig Group 2', '', '', ' Turkey › TFF 3. Lig Group 2 ', '1396-01-20 03:03:29', 0, 0),
(559, 1, ' Turkey › TFF 3. Lig Group 3 ', 'TFF 3. Lig Group 3', '', '', ' Turkey › TFF 3. Lig Group 3 ', '1396-01-20 03:03:31', 0, 0),
(560, 1, ' Azerbaijan › Premier League ', 'Premier League', '', '', ' Azerbaijan › Premier League ', '1396-01-20 03:03:32', 0, 0),
(561, 1, ' Norway › OBOS-ligaen ', 'OBOS-ligaen', '', '', ' Norway › OBOS-ligaen ', '1396-01-20 03:04:16', 0, 0),
(562, 1, ' Germany › Oberliga Niederrhein ', 'Oberliga Niederrhein', '', '', ' Germany › Oberliga Niederrhein ', '1396-01-20 03:04:37', 0, 0),
(563, 1, ' Germany › Oberliga Mittelrhein ', 'Oberliga Mittelrhein', '', '', ' Germany › Oberliga Mittelrhein ', '1396-01-20 03:04:50', 0, 0),
(564, 1, ' Italy › Serie D - Group A ', 'Serie D - Group A', '', '', ' Italy › Serie D - Group A ', '1396-01-20 03:04:58', 0, 0),
(565, 1, ' Italy › Serie D - Group B ', 'Serie D - Group B', '', '', ' Italy › Serie D - Group B ', '1396-01-20 03:05:00', 0, 0),
(566, 1, ' Italy › Serie D - Group D ', 'Serie D - Group D', '', '', ' Italy › Serie D - Group D ', '1396-01-20 03:05:01', 0, 0),
(567, 1, ' Burundi › Ligue A ', 'Ligue A', '', '', ' Burundi › Ligue A ', '1396-01-20 03:05:03', 0, 0),
(568, 1, ' Brazil › Campeonato Mineiro ', 'Campeonato Mineiro', '', '', ' Brazil › Campeonato Mineiro ', '1396-01-20 03:05:08', 0, 0),
(569, 1, ' Luxembourg › National Division ', 'National Division', '', '', ' Luxembourg › National Division ', '1396-01-20 03:05:42', 0, 0),
(570, 1, ' Brazil › Campeonato Matogrossense ', 'Campeonato Matogrossense', '', '', ' Brazil › Campeonato Matogrossense ', '1396-01-20 03:05:52', 0, 0),
(571, 1, ' Portugal › Campeonato de Portugal Prio ', 'Campeonato de Portugal Prio', '', '', ' Portugal › Campeonato de Portugal Prio ', '1396-01-20 03:06:51', 0, 0),
(572, 1, ' Tunisia › Ligue Professionnelle 1 ', 'Ligue Professionnelle 1', '', '', ' Tunisia › Ligue Professionnelle 1 ', '1396-01-20 03:08:30', 0, 0),
(573, 1, ' Iceland › League Cup ', 'League Cup', '', '', ' Iceland › League Cup ', '1396-01-20 03:08:31', 0, 0),
(574, 1, ' Brazil › Campeonato Goiano ', 'Campeonato Goiano', '', '', ' Brazil › Campeonato Goiano ', '1396-01-20 03:09:26', 0, 0),
(575, 1, ' Brazil › Campeonato Alagoano ', 'Campeonato Alagoano', '', '', ' Brazil › Campeonato Alagoano ', '1396-01-20 03:09:36', 0, 0),
(576, 1, ' Czech Republic › Division D ', 'Division D', '', '', ' Czech Republic › Division D ', '1396-01-20 04:01:43', 0, 0),
(577, 1, ' Czech Republic › Division E ', 'Division E', '', '', ' Czech Republic › Division E ', '1396-01-20 04:01:44', 0, 0),
(578, 1, ' Czech Republic › Division C ', 'Division C', '', '', ' Czech Republic › Division C ', '1396-01-20 04:06:17', 0, 0),
(579, 1, ' Czech Republic › Division A ', 'Division A', '', '', ' Czech Republic › Division A ', '1396-01-20 05:06:08', 0, 0),
(580, 1, ' Italy › Serie D - Group E ', 'Serie D - Group E', '', '', ' Italy › Serie D - Group E ', '1396-01-20 11:05:19', 0, 0),
(581, 1, ' Italy › Serie D - Group F ', 'Serie D - Group F', '', '', ' Italy › Serie D - Group F ', '1396-01-20 11:05:21', 0, 0),
(582, 1, ' Italy › Serie D - Group G ', 'Serie D - Group G', '', '', ' Italy › Serie D - Group G ', '1396-01-20 11:05:23', 0, 0),
(583, 1, ' Italy › Serie D - Group I ', 'Serie D - Group I', '', '', ' Italy › Serie D - Group I ', '1396-01-20 11:05:27', 0, 0),
(584, 4, ' Russia › Vysshaya League А ', 'Vysshaya League А', '', '', ' Russia › Vysshaya League А ', '1396-01-20 12:00:09', 0, 0),
(585, 2, ' Russia › Super League ', 'Super League', '', '', ' Russia › Super League ', '1396-01-20 12:01:15', 0, 0),
(586, 3, ' Russia › NMHL ', 'NMHL', '', '', ' Russia › NMHL ', '1396-01-20 12:01:16', 0, 0),
(587, 2, ' Poland › 1. Liga ', '1. Liga', '', '', ' Poland › 1. Liga ', '1396-01-20 12:31:21', 0, 0),
(588, 1, ' Lithuania › Division 2 ', 'Division 2', '', '', ' Lithuania › Division 2 ', '1396-01-20 15:03:18', 0, 0),
(589, 4, ' Bulgaria › SuperLiga ', 'SuperLiga', '', '', ' Bulgaria › SuperLiga ', '1396-01-21 02:30:09', 0, 0),
(590, 2, ' Brazil › LBF Women ', 'LBF Women', '', '', ' Brazil › LBF Women ', '1396-01-21 02:30:17', 0, 0),
(591, 3, ' World › WCH III ', 'WCH III', '', '', ' World › WCH III ', '1396-01-21 02:30:24', 0, 0),
(592, 2, ' Europe › ABA League ', 'ABA League', '', '', ' Europe › ABA League ', '1396-01-21 02:30:32', 0, 0),
(593, 1, ' Asia › AFC Champions League ', 'AFC Champions League', '', '', ' Asia › AFC Champions League ', '1396-01-21 02:30:52', 0, 0),
(594, 1, ' Tanzania › Ligi Kuu Bara ', 'Ligi Kuu Bara', '', '', ' Tanzania › Ligi Kuu Bara ', '1396-01-21 13:00:42', 0, 0),
(595, 1, ' Bulgaria › Vtora liga ', 'Vtora liga', '', '', ' Bulgaria › Vtora liga ', '1396-01-21 17:31:03', 0, 0),
(596, 1, ' Albania › Super League ', 'Super League', '', '', ' Albania › Super League ', '1396-01-21 21:01:36', 0, 0),
(597, 4, ' Europe › CEV Cup Women ', 'CEV Cup Women', '', '', ' Europe › CEV Cup Women ', '1396-01-22 02:30:13', 0, 0),
(598, 4, ' Denmark › Volleyligaen Women ', 'Volleyligaen Women', '', '', ' Denmark › Volleyligaen Women ', '1396-01-22 02:30:14', 0, 0),
(599, 1, ' Armenia › Armenian Cup ', 'Armenian Cup', '', '', ' Armenia › Armenian Cup ', '1396-01-22 02:30:30', 0, 0),
(600, 2, ' Czech Republic › ZBL Women ', 'ZBL Women', '', '', ' Czech Republic › ZBL Women ', '1396-01-22 02:30:35', 0, 0),
(601, 2, ' Czech Republic › NBL ', 'NBL', '', '', ' Czech Republic › NBL ', '1396-01-22 02:30:36', 0, 0),
(602, 1, ' Oman › Sultan Cup ', 'Sultan Cup', '', '', ' Oman › Sultan Cup ', '1396-01-22 02:30:39', 0, 0),
(603, 1, ' Estonia › Estonian Cup ', 'Estonian Cup', '', '', ' Estonia › Estonian Cup ', '1396-01-22 02:30:41', 0, 0),
(604, 1, ' Europe › Champions League ', 'Champions League', '', '', ' Europe › Champions League ', '1396-01-22 02:31:04', 0, 0),
(605, 5, ' Slovenia › 1.A DRL Women ', '1.A DRL Women', '', '', ' Slovenia › 1.A DRL Women ', '1396-01-22 12:30:04', 0, 0),
(606, 2, ' Europe › BIBL ', 'BIBL', '', '', ' Europe › BIBL ', '1396-01-22 13:00:49', 0, 0),
(607, 7, ' Slovenia › 1. SFL ', '1. SFL', '', '', ' Slovenia › 1. SFL ', '1396-01-22 14:30:26', 0, 0),
(608, 4, ' Croatia › Superliga Women ', 'Superliga Women', '', '', ' Croatia › Superliga Women ', '1396-01-22 15:30:20', 0, 0),
(609, 1, ' South America › Copa Libertadores ', 'Copa Libertadores', '', '', ' South America › Copa Libertadores ', '1396-01-23 02:30:05', 0, 0),
(610, 4, ' Europe › Challenge Cup Women ', 'Challenge Cup Women', '', '', ' Europe › Challenge Cup Women ', '1396-01-23 02:30:26', 0, 0),
(611, 1, ' Japan › YBC Levain Cup ', 'YBC Levain Cup', '', '', ' Japan › YBC Levain Cup ', '1396-01-23 02:30:29', 0, 0),
(612, 4, ' Europe › Challenge Cup ', 'Challenge Cup', '', '', ' Europe › Challenge Cup ', '1396-01-23 02:30:34', 0, 0),
(613, 5, ' France › Lidl Starligue ', 'Lidl Starligue', '', '', ' France › Lidl Starligue ', '1396-01-23 02:30:34', 0, 0),
(614, 4, ' Europe › CEV Cup ', 'CEV Cup', '', '', ' Europe › CEV Cup ', '1396-01-23 02:30:35', 0, 0),
(615, 1, ' Montenegro › Montenegrin Cup ', 'Montenegrin Cup', '', '', ' Montenegro › Montenegrin Cup ', '1396-01-23 02:30:56', 0, 0),
(616, 1, ' Poland › III Liga - Group II ', 'III Liga - Group II', '', '', ' Poland › III Liga - Group II ', '1396-01-23 02:31:32', 0, 0),
(617, 1, ' Greece › Greek Cup ', 'Greek Cup', '', '', ' Greece › Greek Cup ', '1396-01-23 02:31:33', 0, 0),
(618, 1, ' Bosnia and Herzegovina › Bosnia and Herzegovina Cup ', 'Bosnia and Herzegovina Cup', '', '', ' Bosnia and Herzegovina › Bosnia and Herzegovina Cup ', '1396-01-23 02:31:34', 0, 0),
(619, 4, ' Serbia › Liga Women ', 'Liga Women', '', '', ' Serbia › Liga Women ', '1396-01-23 11:30:26', 0, 0),
(620, 2, ' Georgia › Superleague ', 'Superleague', '', '', ' Georgia › Superleague ', '1396-01-23 12:00:38', 0, 0),
(621, 2, ' Greece › A2 ', 'A2', '', '', ' Greece › A2 ', '1396-01-23 12:30:41', 0, 0),
(622, 4, ' Serbia › Liga ', 'Liga', '', '', ' Serbia › Liga ', '1396-01-24 02:30:22', 0, 0),
(623, 1, ' Brazil › Campeonato Paraense ', 'Campeonato Paraense', '', '', ' Brazil › Campeonato Paraense ', '1396-01-24 02:30:26', 0, 0),
(624, 3, ' World › WCH U18 ', 'WCH U18', '', '', ' World › WCH U18 ', '1396-01-24 02:30:38', 0, 0),
(625, 1, ' Sweden › Elitettan Women ', 'Elitettan Women', '', '', ' Sweden › Elitettan Women ', '1396-01-24 02:31:49', 0, 0),
(626, 1, ' Sweden › Svenska Cupen ', 'Svenska Cupen', '', '', ' Sweden › Svenska Cupen ', '1396-01-24 02:31:57', 0, 0),
(627, 1, ' Finland › Liiga Women ', 'Liiga Women', '', '', ' Finland › Liiga Women ', '1396-01-24 02:32:07', 0, 0),
(628, 1, ' Slovakia › Divison C Bratislava ', 'Divison C Bratislava', '', '', ' Slovakia › Divison C Bratislava ', '1396-01-24 02:32:17', 0, 0),
(629, 1, ' Sweden › Division 1 - Norra ', 'Division 1 - Norra', '', '', ' Sweden › Division 1 - Norra ', '1396-01-24 02:33:05', 0, 0),
(630, 1, ' Europe › Europa League ', 'Europa League', '', '', ' Europe › Europa League ', '1396-01-24 02:33:47', 0, 0),
(631, 1, ' Sudan › Premier League ', 'Premier League', '', '', ' Sudan › Premier League ', '1396-01-24 13:03:20', 0, 0),
(632, 2, ' Europe › Alpe Adria Cup ', 'Alpe Adria Cup', '', '', ' Europe › Alpe Adria Cup ', '1396-01-24 13:31:20', 0, 0),
(633, 7, ' Spain › Liga Nacional ', 'Liga Nacional', '', '', ' Spain › Liga Nacional ', '1396-01-25 02:30:05', 0, 0),
(634, 5, ' Hungary › Hungarian Cup ', 'Hungarian Cup', '', '', ' Hungary › Hungarian Cup ', '1396-01-25 02:30:09', 0, 0),
(635, 7, ' Czech Republic › Chance futsal Liga ', 'Chance futsal Liga', '', '', ' Czech Republic › Chance futsal Liga ', '1396-01-25 02:30:09', 0, 0),
(636, 5, ' Austria › OHB Cup ', 'OHB Cup', '', '', ' Austria › OHB Cup ', '1396-01-25 02:30:10', 0, 0),
(637, 5, ' France › Division 1 Women ', 'Division 1 Women', '', '', ' France › Division 1 Women ', '1396-01-25 02:30:18', 0, 0),
(638, 2, ' Europe › Euroleague Women ', 'Euroleague Women', '', '', ' Europe › Euroleague Women ', '1396-01-25 02:30:23', 0, 0),
(639, 1, ' Czech Republic › Division B ', 'Division B', '', '', ' Czech Republic › Division B ', '1396-01-25 02:30:34', 0, 0),
(640, 1, ' Denmark › 3F Ligaen Women ', '3F Ligaen Women', '', '', ' Denmark › 3F Ligaen Women ', '1396-01-25 02:30:46', 0, 0),
(641, 1, ' Spain › Superliga Women ', 'Superliga Women', '', '', ' Spain › Superliga Women ', '1396-01-25 02:30:50', 0, 0),
(642, 1, ' Italy › Primavera - Group A ', 'Primavera - Group A', '', '', ' Italy › Primavera - Group A ', '1396-01-25 02:31:26', 0, 0),
(643, 1, ' South Africa › First Division ', 'First Division', '', '', ' South Africa › First Division ', '1396-01-25 02:31:27', 0, 0),
(644, 1, ' Sweden › Division 1 - Södra ', 'Division 1 - Södra', '', '', ' Sweden › Division 1 - Södra ', '1396-01-25 02:31:44', 0, 0),
(645, 1, ' Latvia › SynotTip Virslīga ', 'SynotTip Virslīga', '', '', ' Latvia › SynotTip Virslīga ', '1396-01-25 02:31:50', 0, 0),
(646, 1, ' Belgium › Super League Women ', 'Super League Women', '', '', ' Belgium › Super League Women ', '1396-01-25 02:34:12', 0, 0),
(647, 1, ' Haiti › Championnat National ', 'Championnat National', '', '', ' Haiti › Championnat National ', '1396-01-28 03:30:08', 0, 0),
(648, 1, ' USA › NWSL Women ', 'NWSL Women', '', '', ' USA › NWSL Women ', '1396-01-28 03:30:09', 0, 0),
(649, 1, ' Norway › Toppserien Women ', 'Toppserien Women', '', '', ' Norway › Toppserien Women ', '1396-01-28 03:30:48', 0, 0),
(650, 1, ' Indonesia › Liga 1 ', 'Liga 1', '', '', ' Indonesia › Liga 1 ', '1396-01-28 03:30:53', 0, 0),
(651, 1, ' Norway › Division 2 - Group 1 ', 'Division 2 - Group 1', '', '', ' Norway › Division 2 - Group 1 ', '1396-01-28 03:31:20', 0, 0),
(652, 1, ' Norway › Division 2 - Group 2 ', 'Division 2 - Group 2', '', '', ' Norway › Division 2 - Group 2 ', '1396-01-28 03:31:21', 0, 0),
(653, 7, ' Russia › SuperLiga ', 'SuperLiga', '', '', ' Russia › SuperLiga ', '1396-01-28 03:32:05', 0, 0),
(654, 8, ' Austria › AFL ', 'AFL', '', '', ' Austria › AFL ', '1396-01-28 03:33:04', 0, 0),
(655, 1, ' Luxembourg › Luxembourg Cup ', 'Luxembourg Cup', '', '', ' Luxembourg › Luxembourg Cup ', '1396-01-28 03:35:32', 0, 0),
(656, 1, ' Ireland › League Cup ', 'League Cup', '', '', ' Ireland › League Cup ', '1396-01-28 03:35:43', 0, 0),
(657, 1, ' Belgium › 1st National Women ', '1st National Women', '', '', ' Belgium › 1st National Women ', '1396-01-28 03:35:56', 0, 0),
(658, 1, ' Sweden › Allsvenskan Women ', 'Allsvenskan Women', '', '', ' Sweden › Allsvenskan Women ', '1396-01-28 03:35:57', 0, 0),
(659, 1, ' Ivory Coast › Ligue 1 ', 'Ligue 1', '', '', ' Ivory Coast › Ligue 1 ', '1396-01-28 03:36:11', 0, 0),
(660, 7, ' Latvia › Futsal Championship ', 'Futsal Championship', '', '', ' Latvia › Futsal Championship ', '1396-01-28 11:30:06', 0, 0),
(661, 4, ' Latvia › Nacionala Liga ', 'Nacionala Liga', '', '', ' Latvia › Nacionala Liga ', '1396-01-28 11:30:16', 0, 0),
(662, 1, ' China › FA Cup ', 'FA Cup', '', '', ' China › FA Cup ', '1396-01-29 02:30:24', 0, 0),
(663, 1, ' Russia › Division 2 - Ural-Povolzhye ', 'Division 2 - Ural-Povolzhye', '', '', ' Russia › Division 2 - Ural-Povolzhye ', '1396-01-29 02:30:32', 0, 0),
(664, 1, ' FYR of Macedonia › Division 1 ', 'Division 1', '', '', ' FYR of Macedonia › Division 1 ', '1396-01-29 02:30:43', 0, 0),
(665, 1, ' World › Friendly International ', 'Friendly International', '', '', ' World › Friendly International ', '1396-01-29 09:00:29', 0, 0),
(666, 3, ' World › WCH IA Women ', 'WCH IA Women', '', '', ' World › WCH IA Women ', '1396-01-29 12:00:21', 0, 0),
(667, 7, ' Romania › Liga I ', 'Liga I', '', '', ' Romania › Liga I ', '1396-01-29 12:30:07', 0, 0),
(668, 7, ' Croatia › 1. HMNL ', '1. HMNL', '', '', ' Croatia › 1. HMNL ', '1396-01-29 13:00:11', 0, 0),
(669, 3, ' World › WCH U18 IB ', 'WCH U18 IB', '', '', ' World › WCH U18 IB ', '1396-01-29 13:00:20', 0, 0),
(670, 4, ' Slovenia › 1. DOL Women ', '1. DOL Women', '', '', ' Slovenia › 1. DOL Women ', '1396-01-29 15:00:15', 0, 0),
(671, 5, ' Croatia › Premijer liga ', 'Premijer liga', '', '', ' Croatia › Premijer liga ', '1396-01-30 02:30:08', 0, 0),
(672, 1, ' South Korea › Korean Cup ', 'Korean Cup', '', '', ' South Korea › Korean Cup ', '1396-01-30 02:30:22', 0, 0),
(673, 5, ' Norway › Grundigligaen women ', 'Grundigligaen women', '', '', ' Norway › Grundigligaen women ', '1396-01-30 02:30:28', 0, 0),
(674, 1, ' FYR of Macedonia › Macedonian Cup ', 'Macedonian Cup', '', '', ' FYR of Macedonia › Macedonian Cup ', '1396-01-30 02:31:17', 0, 0),
(675, 1, ' United Arab Emirates › Presidents Cup ', 'Presidents Cup', '', '', ' United Arab Emirates › Presidents Cup ', '1396-01-30 02:31:41', 0, 0),
(676, 1, ' Norway › Norway Cup Women ', 'Norway Cup Women', '', '', ' Norway › Norway Cup Women ', '1396-01-30 02:32:10', 0, 0),
(677, 1, ' San Marino › Coppa Titano ', 'Coppa Titano', '', '', ' San Marino › Coppa Titano ', '1396-01-30 02:32:22', 0, 0),
(678, 4, ' Bulgaria › Superliga Women ', 'Superliga Women', '', '', ' Bulgaria › Superliga Women ', '1396-01-30 14:00:07', 0, 0),
(679, 1, ' Russia › Division 2 - East ', 'Division 2 - East', '', '', ' Russia › Division 2 - East ', '1396-01-31 02:31:09', 0, 0),
(680, 1, ' Europe › UEFA Youth League ', 'UEFA Youth League', '', '', ' Europe › UEFA Youth League ', '1396-02-01 18:24:31', 0, 0),
(681, 1, ' Malaysia › FA Cup ', 'FA Cup', '', '', ' Malaysia › FA Cup ', '1396-02-01 18:26:19', 0, 0),
(682, 1, ' Malaysia › FA Cup ', 'FA Cup', '', '', ' Malaysia › FA Cup ', '1396-02-01 18:26:19', 0, 0),
(683, 1, ' Netherlands › Eredivisie Women ', 'Eredivisie Women', '', '', ' Netherlands › Eredivisie Women ', '1396-02-01 18:29:57', 0, 0),
(684, 5, ' South Korea › 1st League Women ', '1st League Women', '', '', ' South Korea › 1st League Women ', '1396-02-01 18:30:26', 0, 0),
(685, 5, ' South Korea › 1st League ', '1st League', '', '', ' South Korea › 1st League ', '1396-02-01 18:30:27', 0, 0),
(686, 5, ' Italy › Coppa Italia ', 'Coppa Italia', '', '', ' Italy › Coppa Italia ', '1396-02-01 18:30:33', 0, 0),
(687, 7, ' Portugal › Liga SportZone ', 'Liga SportZone', '', '', ' Portugal › Liga SportZone ', '1396-02-01 18:30:40', 0, 0),
(688, 2, ' Kazakhstan › National League ', 'National League', '', '', ' Kazakhstan › National League ', '1396-02-01 18:31:01', 0, 0),
(689, 2, ' Serbia › Superleague ', 'Superleague', '', '', ' Serbia › Superleague ', '1396-02-01 18:31:21', 0, 0),
(690, 1, ' Iceland › Icelandic Cup ', 'Icelandic Cup', '', '', ' Iceland › Icelandic Cup ', '1396-02-01 19:04:33', 0, 0),
(691, 5, ' World › Friendly International ', 'Friendly International', '', '', ' World › Friendly International ', '1396-04-17 15:30:05', 0, 0),
(692, 4, ' World › World Grand Prix Women ', 'World Grand Prix Women', '', '', ' World › World Grand Prix Women ', '1396-04-17 15:30:14', 0, 0),
(693, 2, ' USA › NBA Las Vegas Summer League ', 'NBA Las Vegas Summer League', '', '', ' USA › NBA Las Vegas Summer League ', '1396-04-17 15:30:16', 0, 0),
(694, 2, ' USA › WNBA ', 'WNBA', '', '', ' USA › WNBA ', '1396-04-17 15:30:20', 0, 0),
(695, 4, ' Europe › European Championships U17 ', 'European Championships U17', '', '', ' Europe › European Championships U17 ', '1396-04-17 15:30:21', 0, 0),
(696, 7, ' Brazil › LNF ', 'LNF', '', '', ' Brazil › LNF ', '1396-04-17 15:30:29', 0, 0),
(697, 7, ' Japan › F.League ', 'F.League', '', '', ' Japan › F.League ', '1396-04-17 15:30:30', 0, 0),
(698, 1, ' Trinidad and Tobago › Pro League ', 'Pro League', '', '', ' Trinidad and Tobago › Pro League ', '1396-04-17 15:30:31', 0, 0),
(699, 1, ' Brazil › Série B ', 'Série B', '', '', ' Brazil › Série B ', '1396-04-17 15:30:33', 0, 0),
(700, 1, ' North & Central America › Gold Cup ', 'Gold Cup', '', '', ' North & Central America › Gold Cup ', '1396-04-17 15:30:35', 0, 0),
(701, 1, ' Canada › CSL ', 'CSL', '', '', ' Canada › CSL ', '1396-04-17 15:30:39', 0, 0),
(702, 8, ' Canada › CFL ', 'CFL', '', '', ' Canada › CFL ', '1396-04-17 15:30:43', 0, 0),
(703, 2, ' World › World Championship U19 ', 'World Championship U19', '', '', ' World › World Championship U19 ', '1396-04-17 15:30:43', 0, 0),
(704, 8, ' Finland › Vaahteraliiga ', 'Vaahteraliiga', '', '', ' Finland › Vaahteraliiga ', '1396-04-17 15:30:44', 0, 0),
(705, 3, ' Australia › AIHL ', 'AIHL', '', '', ' Australia › AIHL ', '1396-04-17 15:30:45', 0, 0),
(706, 2, ' Europe › European Championship U20 Women ', 'European Championship U20 Women', '', '', ' Europe › European Championship U20 Women ', '1396-04-17 15:30:51', 0, 0),
(707, 2, ' Europe › European Championship U20 B Women ', 'European Championship U20 B Women', '', '', ' Europe › European Championship U20 B Women ', '1396-04-17 15:30:54', 0, 0),
(708, 1, ' USA › NASL ', 'NASL', '', '', ' USA › NASL ', '1396-04-17 15:30:59', 0, 0),
(709, 1, ' Philippines › PFL ', 'PFL', '', '', ' Philippines › PFL ', '1396-04-17 15:31:51', 0, 0),
(710, 1, ' Indonesia › Liga 2 ', 'Liga 2', '', '', ' Indonesia › Liga 2 ', '1396-04-17 15:32:26', 0, 0),
(711, 1, ' Finland › Kakkonen Group B ', 'Kakkonen Group B', '', '', ' Finland › Kakkonen Group B ', '1396-04-17 15:33:10', 0, 0),
(712, 1, ' Zimbabwe › Premier Soccer League ', 'Premier Soccer League', '', '', ' Zimbabwe › Premier Soccer League ', '1396-04-17 15:33:14', 0, 0),
(713, 1, ' Singapore › League Cup ', 'League Cup', '', '', ' Singapore › League Cup ', '1396-04-17 15:33:23', 0, 0),
(714, 1, ' Malaysia › Malaysia Cup ', 'Malaysia Cup', '', '', ' Malaysia › Malaysia Cup ', '1396-04-17 15:33:43', 0, 0),
(715, 1, ' Finland › Ykkonen ', 'Ykkonen', '', '', ' Finland › Ykkonen ', '1396-04-17 15:34:16', 0, 0),
(716, 1, ' Iceland › Inkasso-deildin ', 'Inkasso-deildin', '', '', ' Iceland › Inkasso-deildin ', '1396-04-17 15:34:20', 0, 0),
(717, 1, ' Iceland › Division 2 ', 'Division 2', '', '', ' Iceland › Division 2 ', '1396-04-17 15:34:21', 0, 0),
(718, 1, ' Finland › Kakkonen Group A ', 'Kakkonen Group A', '', '', ' Finland › Kakkonen Group A ', '1396-04-17 15:35:02', 0, 0),
(719, 1, ' Finland › Kakkonen Group C ', 'Kakkonen Group C', '', '', ' Finland › Kakkonen Group C ', '1396-04-17 15:35:11', 0, 0),
(720, 1, ' Europe › Euro U19 ', 'Euro U19', '', '', ' Europe › Euro U19 ', '1396-04-17 15:35:38', 0, 0),
(721, 1, ' Africa › CAF Champions League ', 'CAF Champions League', '', '', ' Africa › CAF Champions League ', '1396-04-17 15:35:59', 0, 0),
(722, 1, ' Brazil › Série D ', 'Série D', '', '', ' Brazil › Série D ', '1396-04-17 15:36:00', 0, 0),
(723, 1, ' Brazil › Série A ', 'Série A', '', '', ' Brazil › Série A ', '1396-04-17 15:36:09', 0, 0),
(724, 1, ' Brazil › Série C ', 'Série C', '', '', ' Brazil › Série C ', '1396-04-17 15:36:10', 0, 0),
(725, 2, ' World › Friendly International ', 'Friendly International', '', '', ' World › Friendly International ', '1396-04-17 17:00:43', 0, 0),
(726, 2, ' World › Friendly International Women ', 'Friendly International Women', '', '', ' World › Friendly International Women ', '1396-04-17 22:31:12', 0, 0),
(727, 4, ' World › World League ', 'World League', '', '', ' World › World League ', '1396-04-18 02:30:12', 0, 0),
(728, 4, ' Europe › European League Women ', 'European League Women', '', '', ' Europe › European League Women ', '1396-04-18 02:30:19', 0, 0),
(729, 2, ' USA › BIG3 (3x3) ', 'BIG3 (3x3)', '', '', ' USA › BIG3 (3x3) ', '1396-04-18 02:30:27', 0, 0),
(730, 1, ' Africa › COSAFA Cup ', 'COSAFA Cup', '', '', ' Africa › COSAFA Cup ', '1396-04-18 02:31:48', 0, 0),
(731, 1, ' Chile › Chilean Cup ', 'Chilean Cup', '', '', ' Chile › Chilean Cup ', '1396-04-18 02:32:38', 0, 0),
(732, 1, ' Iceland › Pepsideild ', 'Pepsideild', '', '', ' Iceland › Pepsideild ', '1396-04-18 02:32:43', 0, 0),
(733, 1, ' Romania › Super Cup ', 'Super Cup', '', '', ' Romania › Super Cup ', '1396-04-18 02:32:58', 0, 0),
(734, 1, ' Peru › Segunda Division ', 'Segunda Division', '', '', ' Peru › Segunda Division ', '1396-04-18 02:33:25', 0, 0),
(735, 1, ' Lithuania › I Lyga ', 'I Lyga', '', '', ' Lithuania › I Lyga ', '1396-04-18 14:01:58', 0, 0),
(736, 6, ' World › Friendly International ', 'Friendly International', '', '', ' World › Friendly International ', '1396-04-18 15:31:31', 0, 0),
(737, 1, ' Europe › Uhren Cup ', 'Uhren Cup', '', '', ' Europe › Uhren Cup ', '1396-04-18 16:01:03', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` mediumtext CHARACTER SET utf8 NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(160) CHARACTER SET utf8 NOT NULL,
  `menu` varchar(30) CHARACTER SET utf8 NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deny_ips`
--

CREATE TABLE `deny_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `ip_comment` text COLLATE utf8_persian_ci NOT NULL,
  `date_added` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lng_short` char(2) COLLATE utf8_persian_ci NOT NULL,
  `lng_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lng_short`, `lng_name`, `is_active`) VALUES
(1, 'bg', 'Български', 0),
(2, 'en', 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messege`
--

CREATE TABLE `messege` (
  `id` int(11) NOT NULL,
  `from_user` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `date_send` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `messege` text COLLATE utf8_persian_ci NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `is_active` varchar(11) COLLATE utf8_persian_ci NOT NULL,
  `parent_id` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `is_ticket` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `last_update` varchar(250) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `messege`
--

INSERT INTO `messege` (`id`, `from_user`, `date_send`, `messege`, `title`, `is_active`, `parent_id`, `is_ticket`, `last_update`) VALUES
(1, '2', '1396-04-19 03:44:03', '<p>\r\n	لقثلثل</p>\r\n', 'بثقثق', '1', '0', 'admin', '1396-04-19 03:44:03'),
(2, '2', '1396-04-19 03:44:40', '<p>\r\n	لقثلثل</p>\r\n', 'بثقثق', '1', '0', 'admin', '1396-04-19 03:44:03'),
(3, '3', '1396-04-20 22:51:23', '<p>\r\n	salam</p>\r\n', 'salam', '3', '0', 'admin', '1396-04-20 22:59:04'),
(4, '3', '1396-04-20 22:59:04', 'علیک\r\n', '', '3', '3', 'user', '1396-04-20 22:59:04'),
(5, '3', '1396-04-20 23:09:59', 'علی ', 'تست', '0', '0', 'user', '1396-04-20 23:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(5) NOT NULL,
  `news_user_id` int(5) NOT NULL,
  `news_mainpic_id` int(5) NOT NULL,
  `news_title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `news_text` text CHARACTER SET utf8 NOT NULL,
  `news_tags` varchar(256) CHARACTER SET utf8 NOT NULL,
  `news_keywords` varchar(256) CHARACTER SET utf8 NOT NULL,
  `news_meta_description` varchar(256) CHARACTER SET utf8 NOT NULL,
  `news_seo` varchar(256) CHARACTER SET utf8 NOT NULL,
  `news_date` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletter_id` int(11) NOT NULL,
  `newsletter_title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `newsletter_text` text COLLATE utf8_persian_ci NOT NULL,
  `newsletter_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`newsletter_id`, `newsletter_title`, `newsletter_text`, `newsletter_date`) VALUES
(1, 'سلام', '<p>\r\n	درگاه وصل شد</p>\r\n', '0000-00-00 00:00:00'),
(2, 'salam', '<p>\r\n	oadoakdwwaoijfioawj</p>\r\n', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_emails`
--

CREATE TABLE `newsletter_emails` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `email_ip` varchar(60) COLLATE utf8_persian_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email_category_id` int(11) NOT NULL,
  `email_date` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `newsletter_emails`
--

INSERT INTO `newsletter_emails` (`email_id`, `email_ip`, `email_address`, `email_category_id`, `email_date`, `user_id`) VALUES
(1, '192.111.132.28', 'jami4939@yahoo.com', 0, '1396-04-15 20:50:12', 3),
(2, '46.51.82.66', 'sasha.kord31@gmail.com', 0, '1396-04-19 23:32:50', 4),
(3, '159.203.36.51', 'ebi@yahoo.com', 0, '1396-04-20 21:04:25', 5),
(4, '176.58.100.116', 'www.jafar@yahoo.com', 0, '1396-04-20 21:48:04', 6);

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `trx_id` int(11) NOT NULL,
  `trx_user_id` int(11) NOT NULL,
  `trx_amount` double NOT NULL,
  `trx_date` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `trx_result` enum('waiting','success','fail','cancelled','laghv') CHARACTER SET utf8 NOT NULL,
  `trx_method` int(11) NOT NULL,
  `trx_outer_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trx_type` enum('deposit','withdraw','admin') CHARACTER SET utf8 NOT NULL,
  `trx_bonus` double NOT NULL DEFAULT '0',
  `trx_comment` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`trx_id`, `trx_user_id`, `trx_amount`, `trx_date`, `trx_result`, `trx_method`, `trx_outer_id`, `trx_type`, `trx_bonus`, `trx_comment`) VALUES
(1, 2, 200000, '1396-04-20 17:36:47', 'success', 0, '', 'admin', 0, ''),
(2, 3, 70000, '1396-04-20 17:39:48', 'success', 0, '', 'admin', 0, 'واریز دستی'),
(3, 3, 10000000, '1396-04-20 22:51:05', 'success', 0, '', 'admin', 0, ''),
(4, 3, 500000, '1396-04-20 22:53:07', 'success', 3, '', 'withdraw', 0, '88585858585858585858/علی'),
(5, 3, 6000000, '1396-04-20 22:55:27', 'success', 3, '', 'withdraw', 0, '6395991144862747/علی احمدی');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `setting_value` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'register_bonus', '0'),
(2, 'site_currency', 'تومان'),
(3, 'currency_symbol', 'تومان'),
(4, 'min_withdraw_amount', '50000'),
(5, 'deposit_bonus', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sport_events`
--

CREATE TABLE `sport_events` (
  `event_id` int(11) NOT NULL,
  `event_category_id` int(11) NOT NULL,
  `event_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `event_date` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `event_team_a` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `event_team_b` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `event_result` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `event_res` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `event_result_a` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `event_result_b` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `online_res_a` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `online_res_b` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `event_hot_bet` tinyint(1) NOT NULL DEFAULT '0',
  `flag` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `count_category_id` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `ifonline` tinyint(1) NOT NULL DEFAULT '0',
  `onlinetime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `xteid` varchar(250) COLLATE utf8_persian_ci NOT NULL,
  `1` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `2` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `3` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `4` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `5` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `6` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `7` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `8` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `9` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `10` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `11` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `12` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `13` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `14` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `15` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `16` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `17` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `18` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `19` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `20` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `21` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `22` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `23` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `24` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `25` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `26` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `27` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `28` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `29` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `30` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `31` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `32` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `33` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `34` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `35` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `36` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `37` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `38` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `39` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `40` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `41` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `42` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `43` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `44` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `45` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `46` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `47` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `48` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `49` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `50` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `51` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `52` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `53` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `54` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `55` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `56` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `57` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `58` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `59` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `60` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `61` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `62` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `63` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `64` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `65` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `66` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `67` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `68` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `69` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `70` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `71` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `72` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `73` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `74` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `75` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `76` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `77` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `78` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `79` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `80` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `81` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `82` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `83` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `84` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `85` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `86` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `87` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `88` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `89` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `90` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `91` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `92` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `93` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `94` varchar(100) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `user_username` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_password` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_telephone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `user_bank_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_postal_code` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_address` varchar(256) CHARACTER SET utf8 NOT NULL,
  `user_type` enum('admin','user') CHARACTER SET utf8 NOT NULL,
  `user_status` enum('active','noneactive') CHARACTER SET utf8 NOT NULL DEFAULT 'noneactive',
  `user_ip_registered` varchar(18) CHARACTER SET utf8 NOT NULL,
  `user_ip_last_entered` varchar(18) CHARACTER SET utf8 NOT NULL,
  `user_refred` varchar(250) CHARACTER SET utf8 NOT NULL,
  `user_last_entered` int(11) NOT NULL,
  `user_activation_code` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_balance` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_group_id`, `user_username`, `user_password`, `user_name`, `user_lastname`, `user_email`, `user_telephone`, `user_bank_name`, `user_postal_code`, `user_address`, `user_type`, `user_status`, `user_ip_registered`, `user_ip_last_entered`, `user_refred`, `user_last_entered`, `user_activation_code`, `user_date`, `user_balance`) VALUES
(1, 1, 'admin', 'Ky0mLUk4NjlBLFUhJSxTKGAKYAo=', 'مدیر', 'سایت', 'info@gmail.com', '', '', '', '', 'admin', 'active', '1.1.1.1', '', '', 0, '', '1300-1-1', 0),
(3, 0, 'علی', 'Ji4zOFMuIzRSCmAK', 'علی', 'احمدی', 'jami4939@yahoo.com', '09383043434', 'قوامین', '6395991144862747', '', 'user', 'active', '192.111.132.28', '', 'علی', 0, '', '1396-04-15 20:50:12', 3501000),
(5, 0, 'ebi', 'KSwzKFMtIzRWLVNAWQpgCg==', 'ebi', '', 'ebi@yahoo.com', '123456789', '', '', '', 'user', 'active', '159.203.36.51', '', '0', 0, '', '1396-04-20 21:04:25', 0),
(6, 0, 'jafar', 'KSwzLFUtU0RYLTNAVQpgCg==', 'jafar', '', 'www.jafar@yahoo.com', '09120215357', '', '', '', 'user', 'active', '176.58.100.116', '', '0', 0, '', '1396-04-20 21:48:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `login_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_user_ip` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `login_user_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `user_login_date` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `login_site` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`login_id`, `login_user_id`, `login_user_ip`, `login_user_name`, `user_login_date`, `login_site`) VALUES
(1, 2, '23.27.244.217', 'qazxsw', '1396-04-18 15:54:54', 'http://almasbet.com/index/login/'),
(2, 2, '172.252.126.188', 'qazxsw', '1396-04-19 03:36:01', 'http://shahbet.tk/index/login/'),
(3, 3, '176.58.100.116', 'علی', '1396-04-20 17:44:42', 'http://almasbet.com/index/login'),
(4, 3, '159.203.36.51', 'علی', '1396-04-20 22:35:36', 'http://almasbet.com/index/login'),
(5, 3, '159.203.36.51', 'علی', '1396-04-20 22:47:13', 'http://almasbet.com/index/login'),
(6, 3, '159.203.36.51', 'علی', '1396-04-20 23:09:43', 'http://almasbet.com/index/login');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `allow_ips`
--
ALTER TABLE `allow_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`bet_id`),
  ADD KEY `ind_bet_user_id` (`bet_user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `deny_ips`
--
ALTER TABLE `deny_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messege`
--
ALTER TABLE `messege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `newsletter_emails`
--
ALTER TABLE `newsletter_emails`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`trx_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sport_events`
--
ALTER TABLE `sport_events`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `xteid` (`xteid`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `login_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `allow_ips`
--
ALTER TABLE `allow_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `bet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;
--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deny_ips`
--
ALTER TABLE `deny_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messege`
--
ALTER TABLE `messege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `newsletter_emails`
--
ALTER TABLE `newsletter_emails`
  MODIFY `email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `trx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sport_events`
--
ALTER TABLE `sport_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1546;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

