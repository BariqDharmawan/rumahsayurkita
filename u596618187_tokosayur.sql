-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2020 at 06:33 AM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u596618187_tokosayur`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT 0,
  `entry_zone_id` int(11) NOT NULL DEFAULT 0,
  `entry_latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(11) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT 0,
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_status_notification` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_email` tinyint(1) NOT NULL DEFAULT 0,
  `new_product_notification` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_email` tinyint(1) NOT NULL DEFAULT 0,
  `forgot_notification` tinyint(1) NOT NULL DEFAULT 0,
  `news_email` tinyint(1) NOT NULL DEFAULT 0,
  `news_notification` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_email` tinyint(1) NOT NULL DEFAULT 0,
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT 0,
  `order_email` tinyint(1) NOT NULL DEFAULT 0,
  `order_notification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(11) NOT NULL,
  `nonce` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_calls_list`
--

INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1, '0myc2h9so5f812scxvaf8rk9f2r414k7', 'sitesetting', 'mj3gi750fl42y--25tlzqxly5dmzm3cf', '2020-09-07 06:35:46'),
(2, 'xt5jc-lsfa2l6j94po24xpe2tfzsmzig', 'getallpages', 'js7fja0xy5gi5dq2edkpk24b6ifr69i9', '2020-09-07 06:35:46'),
(3, 'g9n94kz6rieqhzoaetkz-3ib6rjnwdez', 'getallproducts', 'w3bofz-enkmpxo3z1i00pbq-5kvit235', '2020-09-07 06:35:58'),
(4, 'p9tmm-7fiauv6skpuz503g2t279akyg3', 'getallproducts', 'sytdqnqdvfq1a230fwlb1naqdg57-13n', '2020-09-07 06:35:58'),
(5, 'ihi6ulxvb6mnts0k-du7yng5hc5dybvp', 'getallproducts', 'z1nn52js6srmin2c7bdh7w9w-easfv8i', '2020-09-07 06:35:58'),
(6, 'ttsz1ff2y9y4sysyf0bsyq1ftcqobtu2', 'getallproducts', 'x90uydobxd129b9d1w0gngnav1azrnym', '2020-09-07 06:35:58'),
(7, '0rqv9329iaclvezl3amekcjdk6dc3vgy', 'registerdevices', '6jfhma2t-uk4h-i9ti7hpqvtq2aerq8c', '2020-09-07 06:35:58'),
(8, 'ajnxasmscywel7r4ynokvri6kec-8p8n', 'getbanners', 'xey-vcj4iyn9ehuybsp7rrrz-7qo74fy', '2020-09-07 06:35:58'),
(9, 'jn6nv9le1l35yoil6iwh0funj2ysmznd', 'sitesetting', 'jc3cc2cvf8zgd2eqhyugkyzpgcsn90e9', '2020-09-07 06:36:05'),
(10, 'fce0gdzsjwagg1hps9al31pl9g-widce', 'getallpages', '8whqg7i1y7riiym2913rv2tkfxqqih4m', '2020-09-07 06:36:05'),
(11, '27mjw-vbnmzq95fytob0ajjokg5l6swa', 'getbanners', 'l3q2sl36m5re1v4bxkjpw-b36g2cdqqn', '2020-09-07 06:36:06'),
(12, 'zx1541oe26xgqidjqb4v-3sd7s1ybmg3', 'getallproducts', 'mrcibrw6bvm07rd1-l9qgf7o8wjfl24y', '2020-09-07 06:36:06'),
(13, '0x8bms84m3bcvuw5durpydgyi6bhstn6', 'getallproducts', 'yd2znl4p9cbpkx0u0ozenro8z38kizg0', '2020-09-07 06:36:06'),
(14, '36an3bou-agfk329bq9hhvfqe7q7vc0v', 'getallproducts', 'y98zugcq3w5p6o0a6bi4lqanaqfcwfmv', '2020-09-07 06:36:06'),
(15, '--1scxt9vvklxc07g43g-7ly9sytbxtq', 'allcategories', 'qyz4yj8pg3ovkdxmavjzzaurzx6b3rys', '2020-09-07 06:36:06'),
(16, '15zfwpu-s-64dpupc4igxs6kg582oz3s', 'getallproducts', '-5fl2y67p53faw35nlttrf58-k28pw-p', '2020-09-07 06:36:06'),
(17, 'smqwe26v1ymbt2u-7o5hexu78jg51kmh', 'sitesetting', '031kku67yjsfrpne5o20nauq3g79l24g', '2020-09-07 06:36:39'),
(18, 'qntxgu6ziht8lpmdxxn94fxqxk849t11', 'getallpages', 'hizvq-w0q2jzhlafi9kc3kvxcjnvefn0', '2020-09-07 06:36:39'),
(19, 'un1hlgwbedzb1nx2oso8rt-kow8qv5r7', 'getallproducts', '4-c5wvf7hgeiwrdjt-y24pmlydga8ee4', '2020-09-07 06:36:40'),
(20, 'deu-vac61o8h8clg9dllg12ovwdb94x1', 'getallproducts', 'cw9s732wf2rcmtkfy1pvf5lyij-eodtr', '2020-09-07 06:36:40'),
(21, 'rqj1yr1ele2s38c1gq-vttfun88su1le', 'getbanners', '-06yf3l3a06d38ue556s7eyhd8xx1w5j', '2020-09-07 06:36:40'),
(22, '7yb602p5cep0eldq9d3r4cg85we3pdep', 'getallproducts', 'lqiiuxp4ycy6y1wylhzn91-hizm21q-1', '2020-09-07 06:36:40'),
(23, 'k6dg8tfumfggoz3txfybqvwkxwz8acv1', 'getallproducts', '59b-r-kda4ub9v7lrtcm7j8x3goaptpi', '2020-09-07 06:36:40'),
(24, '64ty4cbbmr8wfut9i5esu3se8efby9fq', 'allcategories', 'fss6-pktg5961s5xlhuyz2hh6sap6-85', '2020-09-07 06:36:40'),
(25, 'nyw54b5-i0xy2p17ccw40ntmt2i2vbhj', 'sitesetting', '5xjjbnmirjhm8xoci53yo6lutszcqk3c', '2020-09-07 07:15:43'),
(26, 'lluoya-zlf7c08w16aob3t3zbnaxheql', 'getallpages', 'nolnuo54upfe60408uvy5cybxofl9vgw', '2020-09-07 07:15:44'),
(27, 'd-t9fs8-qz8bpr2x5ro6en7x3puyy1k9', 'sitesetting', 'tzxkkvtw9rsxt4gqujtdxw3d7uwlhzg-', '2020-09-07 07:15:44'),
(28, 'f-fljg4wp-boqx6r4vd0a12awr78wmw3', 'getallpages', '3ebnm10e5s1ar4ukxarphwtjt08faagg', '2020-09-07 07:15:44'),
(29, 'hcsb23m3eik7eel946dneymcfngidnby', 'getallproducts', 'nh31tb2akxoz6iaxclrzwh379p027gnn', '2020-09-07 07:15:44'),
(30, 'iad8re5h7vj1tym6zpw-s4o0er03ogc-', 'getallproducts', 'wzqc2qhsrez3-wro0r2kd094jfi6tz82', '2020-09-07 07:15:44'),
(31, 'f8py6wuoaa8xsvgfx4ty28ktjmauacww', 'getallproducts', '54ymltslq2q07u5dn8afw1hlp13uu30c', '2020-09-07 07:15:45'),
(32, 'ehhjk8xciuo9jclt-b4n9jpx4o6hzm83', 'getbanners', '-n-gtnesh-ssgyzp6k4jfh2p49z8trda', '2020-09-07 07:15:45'),
(33, 'pt054m-wp4tma6ddwqga5g8m96-1pba1', 'getallproducts', 'ju-xaz4xpepmofjewc3w-cd269q6dacm', '2020-09-07 07:15:45'),
(34, 'hoi7s5ij2whugjeu0whqwwk3jylp8gf9', 'sitesetting', 'fjnrwy6x96t4t7iqxx1zh0fuin0nprvm', '2020-09-07 07:38:29'),
(35, 'mn60rmhu8nu9jp48aimgveen8a3gkl4e', 'getallpages', 'kmfmdqh087vz4yt2z01hnerxyynyt6w9', '2020-09-07 07:38:29'),
(36, 'ca5audvedll3l6e8s728a7juek6996tv', 'sitesetting', 'uc8h8nqe43ies0l44ahg641dmq31hry-', '2020-09-07 07:38:30'),
(37, 'sz7cwtmwtjssnrj834yrvu19hxhjyxw3', 'getallpages', 'nmsspc7kgmms1opb6l-cy2l9f-wrgqov', '2020-09-07 07:38:30'),
(38, '358sw5v28lmh05f2zxr4f6-4zme9g21r', 'getallproducts', '14i9eiix97tgy2j-96cs49pauqh04mwc', '2020-09-07 07:38:34'),
(39, 'mw6udplxp2tnvpuk6drtc26qwvw7q5rp', 'registerdevices', 'afrhuqwwpd55supreylliztgps7jatjl', '2020-09-07 07:38:34'),
(40, '3vz39kdxki6sfm1v35k2c933r2c7dlx0', 'getallproducts', '2fmzc8nqn7792ern11zvceltt4son-5v', '2020-09-07 07:38:35'),
(41, 'xel2vbu1msq2t34sgqqld7gyhnx4aca6', 'getbanners', '84oj26a-h2mj449d1ox-ylnhue937pc5', '2020-09-07 07:38:35'),
(42, 'ljjz-o0pfo2luzp92wmsn7om-28gb7a6', 'getallproducts', 'pv95bdvibd5y4ezxfq98m91u7h2a0on-', '2020-09-07 07:38:35'),
(43, 'r6agjxm3cjpebvs4kwaguivrj3l52cf5', 'getallproducts', 'etybbfim0sneisy3-b9bvgatxcm7sy-u', '2020-09-07 07:38:35'),
(44, 'glo29q7fcjnn0tfmjnzx6cvkyoznz0d9', 'allcategories', 'jj5t6da329q0paig6udwccjwenou9fae', '2020-09-07 07:38:35'),
(45, 't6az-2nmrprm3untl4vnfriy2k-u-aob', 'sitesetting', 'w2mv7rce3co4r4d10ww72-e4mzbgtvub', '2020-09-07 07:38:52'),
(46, 'wcebphdk3e-poi-10mp0hp01wsp7vqra', 'getallpages', '6ofp0avad50rp20mzk6ho25tjpvodfr1', '2020-09-07 07:38:53'),
(47, 'x5k-0sjw1akajz5wpbtezjmhlty2pxnm', 'getallproducts', 'dbydc7-l0vmp4uosabhkljvme3e8zx5l', '2020-09-07 07:38:53'),
(48, '5ioetcpu6vn28zkvrcmcs34s3twcmorx', 'getbanners', '-aq8lsgzqvjo4kxgiztbqzjfuk15wk4s', '2020-09-07 07:38:53'),
(49, 'pa81bw20hf3s3bw5ensjmwhejxaj2qdi', 'getallproducts', 'whrq7rnbim0bb4sk7pstvlb27szwc78w', '2020-09-07 07:38:53'),
(50, 'hj3gbqycae9qwywmmpgvzziaya5v7rrq', 'getallproducts', 'ned47uok1ey7hoolq9mfl0bt2c6hxy8t', '2020-09-07 07:38:53'),
(51, 'f0-8ex2qqfyxgv2gesrr9gd-it0w1b0r', 'getallproducts', 'cu8aqrnbe6mvybmvh4t9zpxcdbzfopy4', '2020-09-07 07:38:53'),
(52, 'y-zzzgtgj8y36zz1zhowgb3n4whk89uz', 'allcategories', '04vihj1poyltql-3ayk-hn94hbecs4ih', '2020-09-07 07:38:54'),
(53, 'tz-hkfz4c3a0hacyifcaas09mwfy8jy5', 'sitesetting', 'omteywbgbdhkt9eh3p54jf3fea59zaat', '2020-09-07 07:38:59'),
(54, '7jq6wwv4k2qo5-cfsbo9t34svzgas8hq', 'getallpages', 'fzlldccaanu1dbon0d100d5lkcgdx0rj', '2020-09-07 07:39:00'),
(55, 'n94ka965d2p9-jg19j4h5sbyptsfqegk', 'getallproducts', 'rzyt-ysqoo022umohmybbr8556gxi87g', '2020-09-07 07:39:00'),
(56, 'bwx9g72zdsgq9qtd0-0pxg8300wmktl9', 'getbanners', 'tvyao6z-ukbuy2hn2ajydcl14m2nwz3o', '2020-09-07 07:39:00'),
(57, 'x87-rgziy9e202f2jxdf-n9rbraraqgl', 'getallproducts', 'k0ak1tw3uz1pob-imy82ogf75y27bums', '2020-09-07 07:39:00'),
(58, 'um9j1kt2ntyuc4vc5pjd42uz4t5jqjeq', 'getallproducts', 'kp9ileyjtdjg1712ts4mcnaxx3u7wiws', '2020-09-07 07:39:00'),
(59, 'u40o812mkk2yplr55stjdd-zu-htl7rj', 'getallproducts', 'y7ao1v1iqhcxva0iwumocvuh613517q8', '2020-09-07 07:39:00'),
(60, 'og3x1dqa5tsy4l5xnxmeuhm-w16hvcj4', 'allcategories', 'nsyx9hehhqtmwumhuk4unirowyo58pkb', '2020-09-07 07:39:00'),
(61, 'hzb6e4uvhamlg5q-iin0y48-9352ynq2', 'sitesetting', 'gtp35qrkp4d6xd2xxxmy2350v--5w6j6', '2020-09-07 08:12:19'),
(62, 't6vu-wlfispza657o-gklhr13vmcbyl9', 'getallpages', '5jzk--udwk-nkg0db6qvfdfxtxhiww7z', '2020-09-07 08:12:19'),
(63, 'fkqcycm49-r0ws6bctu09o7kwhmcao-d', 'sitesetting', 'x1hpg6i2rgcux2jxb96wr6n86lzs5jw1', '2020-09-07 08:12:19'),
(64, 'uz6e-1zdo8yr11zw1b2pb19184oc70nn', 'getallpages', 'wjkhm0gtbuqkqrun1fzqs0h650fowefp', '2020-09-07 08:12:20'),
(65, '4c4c7n0leelmc0-35gzvqjy77cns3yz7', 'getallproducts', 'q0d78w5stg3gb7jkwhea2ld0xicskdxv', '2020-09-07 08:12:26'),
(66, 'kqsicxox1atijyi-mdan20vhu4ht7ukm', 'registerdevices', 'lqpbqr6lo8rx3cv1jwm3ubtzcvrrx-77', '2020-09-07 08:12:26'),
(67, 'igq59lbh2grp9wfmuhp22ly5u-hx57op', 'getallproducts', '95e3c1-j0k6om2ojvt75pf-zwlleuhew', '2020-09-07 08:12:26'),
(68, '4x5nqg3rzy6i4h-ghs80s2z0m0upnh4m', 'getallproducts', 'khqhzfuvywu1gutjxxyeb6lcl74pgj3r', '2020-09-07 08:12:26'),
(69, 'fzo-ioelh0jgot8z-t1a16kmaklnivfm', 'getbanners', 'hw3308nwhmmt5rzmtq7ds1zgzphu50er', '2020-09-07 08:12:26'),
(70, '6h3qoav-wc2xf274zg7gj7q9qg2vt2nj', 'getallproducts', '09fgims2agzm7auyd2fk18c2q1yd6-4j', '2020-09-07 08:12:26'),
(71, '9wmh49-a91-af-qjck55b6c6pgllbqh4', 'allcategories', 'r5x7i63wrg2u4whr22enat5842axyt0g', '2020-09-07 08:12:27'),
(72, 'pvf6f8mi72sc4od144lsw76jdvvl-kng', 'sitesetting', 'ki6jhnq80ijg-48ougc5h1n1ovinm8xe', '2020-09-07 01:52:04'),
(73, 'o0kpqnpxnmk0pvq9fsez2junr90w9r9u', 'getallpages', 'nltgbywlhh5u8rtf7-ypc0k3bca-c4yd', '2020-09-07 01:52:04'),
(74, 'sbfxrw39eat3c2im1-qmf9f3twg7gg9j', 'sitesetting', '-16b3hvraz9ufw5ukiiv9gnknte4wmg6', '2020-09-07 01:52:05'),
(75, 'lnx60qx7ktdss9wvu2i-o41yk9qvv052', 'getallpages', 'fbycds6whsch9ab87ff2pp-jvkv8vtat', '2020-09-07 01:52:05'),
(76, 'yjafxaq0p68g2mhu08ixs5-91x5uu93-', 'registerdevices', 'ldugsqod-l99dxim3g14171ydham0vxi', '2020-09-07 01:52:10'),
(77, 'i4-j68mi2fiau2dp4zd--pjzgmov642h', 'getbanners', '9taw4gsjgms7-icjf08m43vy5dyiw306', '2020-09-07 01:52:10'),
(78, 'x3vm9y07h9yqp05usf6f-sxcenbt9sd8', 'allcategories', 'pmv0fite9t3yyb7mlfxwrurngbmcm-yz', '2020-09-07 01:52:10'),
(79, 'qc6ruiqnzob2cpfsjvkyo5p0tfw4ol1l', 'getfilters', '89068ruu9m1kmy2pajx4re450jdo3ul0', '2020-09-07 01:52:10'),
(80, '46s6ukcgt4pb6tufp8qj1h-u1rtvcsda', 'getallproducts', 'en5e0khz4d8rw-k08bi7vx-ro1w3ucyf', '2020-09-07 01:52:10'),
(81, '25inmqa5cpu1kqvivh75ulgcp1kjafy6', 'getfilters', 'v7i72qg0bq9sh85p0r-2rn3839xdfgcv', '2020-09-07 01:52:10'),
(82, 'c5hgvp32vz7b69txrqdxymq11t66j-q3', 'getallproducts', 'qe8ph8owquo47hku45ak64v881kj6tnk', '2020-09-07 01:52:10'),
(83, 'ccflhh4vczfasipppv2wkxydod0ekzc6', 'sitesetting', '7vqz3-4z958qu8qgjoh6p625e5kbv61n', '2020-09-07 01:52:37'),
(84, 'yttvhx5i0-uprm7hkh5ignucglfh8fhe', 'getallpages', 'l7ckvxole5jspe-wbu9mvkd-ly4qmka0', '2020-09-07 01:52:37'),
(85, '7m-kwto0b2rjfej25bnsprxcspsmc0rs', 'getbanners', '3irc09y434g5ebo5z3ddmgw0-pojajec', '2020-09-07 01:52:37'),
(86, '8i9vt6k51oczzwsohx3q-ad2g-t53o8t', 'allcategories', 'uq9kd6h1h596qk9wh619yew-1d3fglxb', '2020-09-07 01:52:37'),
(87, 'jwy65h4szqvq47zastgc8d7ccu2bofwz', 'getallproducts', 'dllhdeplaiger11y2j-ohiflt004hkgb', '2020-09-07 01:52:38'),
(88, 'qubwppc03mw9s0vp1f-6n3s3viatc8lv', 'getallproducts', '8onw7jljz4hm7oc8bdfyxpd09-a4wtk8', '2020-09-07 01:52:38'),
(89, '4w4hy53lly97jh6ft40fmzd2simlsj5y', 'getfilters', '6gx3zx68i1f--hxryw7tlenihfk35jgc', '2020-09-07 01:52:38'),
(90, 'csn5c-s0cu7n20krtiohpw2rp8riuaup', 'getfilters', 'e7wfu7j61pwx3r94gk6t5kr9v2l5-57y', '2020-09-07 01:52:38'),
(91, '0gwmwjeoitibi7i2bcs4aowe5wsidajk', 'sitesetting', 'bdrqkd-bre2my2p3axokvqtmq1bv2i5t', '2020-09-07 01:52:38'),
(92, '294vdz675w--yaihu078jm7vfuka2gl6', 'sitesetting', 'q78aq8qoghaugt487m--8fmavd4od6g8', '2020-09-07 01:57:01'),
(93, 'he88l6yajon0f8u2rz-n3xr-wlur2895', 'getallpages', 'jnasbmrgt7z-3oebrlgofw0qak-9de71', '2020-09-07 01:57:01'),
(94, '2ptsk3hr-0jj8--oyllncjk3v1ksyut4', 'registerdevices', '43v1cqhfx06e384ttiy3aumch6hhehuj', '2020-09-07 01:57:05'),
(95, '0rfs51htuj795iughgq8h3ri9d5-jr09', 'getbanners', '7i4wkxmkq92t9ltytybtrhgq-xrm6178', '2020-09-07 01:57:06'),
(96, '--1uzh3hvhq7voyulftswweo-1plhc64', 'allcategories', '3s7upknql-ynszbgx7c6bsmvde2l7r0n', '2020-09-07 01:57:06'),
(97, 'eo5lk0pn6yid4wjb3so5psyw4wlbpa3t', 'getallproducts', '8bwjjmo185tssl-0d9vwvw2cvr5gb7pa', '2020-09-07 01:57:06'),
(98, 'o6zi2jaac64r53kxtb4mz63zqujqnkf6', 'getfilters', '2jqklobl9f-15xgnljveqm4yq3fvjyua', '2020-09-07 01:57:06'),
(99, 'bgq15-pcggyzj5kr7qk7ituneol9t-bi', 'getallproducts', 'mm7cw1itkya3693frw7hau6oyoqsc5gy', '2020-09-07 01:57:06'),
(100, '78n8b78yndaqwp87szlllpsoxehm3n53', 'getfilters', 'n0x0zq2vglrsds3fcduzhstip-zuvwfe', '2020-09-07 01:57:06'),
(101, '8w2c3xayjh3w5qlxuelw4crozldlnak7', 'sitesetting', '4dwh41l2g5v2a5p-j52x-ff-dogpyt26', '2020-09-07 02:09:02'),
(102, 'zh2hj96rtv19pbt6uqxe3a--13x2cfmu', 'getallpages', 'z77h7kx6blm2jt3fudubdiaefgnn-hh0', '2020-09-07 02:09:03'),
(103, '4qd0clm1y8p-0rm-5p91yzvklb1-yner', 'sitesetting', 'kric0kg91ravt1vgwayicobefp16-lhj', '2020-09-07 02:09:03'),
(104, 'mii2s2h01r9zd8z10-mtw1an309c2br6', 'getallpages', 'y3pzdliifomaca2ldaio0gc77a-ac66q', '2020-09-07 02:09:03'),
(105, '8rj6x2ua8i2k1o-h7k472pu7pb0f0b26', 'registerdevices', 'df7iqqpx4xtryg26my-vsqeml7byja7s', '2020-09-07 02:09:08'),
(106, 'uojnqgm193t-bvoxzfi-mwmdo7b6ghka', 'getbanners', 'i-9z87igicl0zhzglaznrg4f-xbha7m1', '2020-09-07 02:09:08'),
(107, 'jlh5l-zq0ilf4njb0g1cxaj1xj9ntubg', 'allcategories', '598d7lh5uz4ij884c8j11kojoxgs3s38', '2020-09-07 02:09:08'),
(108, 'pm-v9mw-4v7o78qu0klfm62f0pm7w3ha', 'getallproducts', 'wui4bq05ffatcvu85er2aiwna6x0o733', '2020-09-07 02:09:08'),
(109, '2krbli500427eb0gcvv3cwbysgw1nyul', 'getfilters', '8dm6ua8ua6g5we3wcdvskomdd7oa5spi', '2020-09-07 02:09:08'),
(110, 'c5v00y7rwge0jif1v7k-jqyu-tcfmbwl', 'getallproducts', 'ybc0z1kgz5rochjys8lg72h2jd-e0pas', '2020-09-07 02:09:08'),
(111, 'i2o-oorbw2jp15w14xy5j1xu6ugoxr7x', 'getfilters', 'rnz7p195br2uejfvzr8stgzllqlur6ac', '2020-09-07 02:09:08'),
(112, '2msuv13qh84wodfsm17smn3yk3apqfoh', 'sitesetting', 'hfozclo656-t9g60jgxj-ny3eiyvcz7q', '2020-09-07 02:09:20'),
(113, 'o4tn9lxcp265c3i0p4t0w2u5ykvvxces', 'getallpages', '833ja3px2ndq150apt1t1i2e9g4buiff', '2020-09-07 02:09:20'),
(114, '0758ugbmpc7v2q7dkvxojjazibnlw2-e', 'getbanners', '-nceg79o1ucmtw5t8vr9gf66if8yp4pn', '2020-09-07 02:09:21'),
(115, '6d61vwbc0ae2drna7fysfx0a8hrl5yup', 'allcategories', 'x6f36bolsids6zjksvnztb7j927s97xq', '2020-09-07 02:09:21'),
(116, 'dr9vwaq5cpsbesy4w5fxxwqjy0hchm3-', 'getallproducts', '5esdkm7oclvexmhughqfy6xzea5rq64z', '2020-09-07 02:09:21'),
(117, '00mrvfsa11-yjbwqv0ae0zn1mgc96817', 'getfilters', 'mlhtzm2dc31tmsa45j0br-c2lh8tikv2', '2020-09-07 02:09:21'),
(118, 'txodnic87chjvdjgfr4a06o3vaxnmin5', 'getfilters', 'h36y2a-upr38irdric57dmg97fjujd8m', '2020-09-07 02:09:21'),
(119, 'bjvnb5vybjxldy59zrv531xlxhu2y25m', 'getallproducts', '03zn4fagb4a9-iei25ld5xxbph8yhq24', '2020-09-07 02:09:21'),
(120, 'y36guczvcly0nbis27t56j2in3iymzz0', 'sitesetting', 'abvolr5vu0r78870frfkyr4jrh3gix4o', '2020-09-07 02:09:21'),
(121, 'fa-22neatadz9wa0xt5my1ak5vro29u4', 'sitesetting', 'c4brc9sh49qwqvjbuzi99o9efgswu8i3', '2020-09-07 02:09:28'),
(122, 'sqwxaauzervh21p65iig5q09dawm12ug', 'getallpages', '2wj-wrka-88aahc5z49biqyj2fiep733', '2020-09-07 02:09:28'),
(123, 'fincmfa4umg2cwa3ge5ezdhtcbnns169', 'getbanners', 'vmim0b788dyxg63ir13ox4d59uy0gnr1', '2020-09-07 02:09:28'),
(124, 'i-kdn1x1psr9ss2mvbagpilz7vl9lb-o', 'allcategories', 'm86cvlpuh1khz4ud1y-gcnxqjwioj555', '2020-09-07 02:09:29'),
(125, 'noq5eo-w11d1hjr1c6mogemg47sn-ws1', 'getallproducts', 'x0h4dg0h2eu0jao4bnms329mqo6m0fcw', '2020-09-07 02:09:29'),
(126, 'cuc34i7eh1dfftopy-ja8gmemosmcrz7', 'getfilters', 'n1bfm47mr7d3aqf-a2xe90-fcmv8s15q', '2020-09-07 02:09:29'),
(127, 'ia0ds4d10m0mkmujrqnc4e99r0ldvjri', 'getfilters', 'ijdt-8ymj0bgx6ugpj5q63y9cm8lnjo6', '2020-09-07 02:09:29'),
(128, 'miy89f6hbt0bbzysrsf5wgysnkaocvjq', 'getallproducts', 'dsddgnrrsxx08xdhv7s236xnspprld2m', '2020-09-07 02:09:29'),
(129, 'qm0zsy-hqtyknqo9eb11gngkuvnzngsc', 'sitesetting', '0rg9tsi41iol-5-67hr7f7af9ssu552p', '2020-09-07 02:09:29'),
(130, '3g7j989rsq4udur8rgntylj92nt0jbsa', 'sitesetting', 'hxlb0a0ubn2tvw6hw380ken5pays2wtw', '2020-09-08 09:41:16'),
(131, '3yxlhxg35ow9hdm3whw-h-p-6-wtt5em', 'getallpages', 'vp95x0imujoptvilv8z4b61krm3u3-5s', '2020-09-08 09:41:17'),
(132, 'c6-pmuownwmslmxuork20gtv2u5gpduz', 'registerdevices', 'mtr5qy1iw9ux-cz6dbgdrd1qj82hzp0a', '2020-09-08 09:41:23'),
(133, 'x5t-yq840r31apcwwq6g52ueyxnm06w8', 'getbanners', 'np6o-nuwuis7hs1wpjh41-eegg60u0uy', '2020-09-08 09:41:23'),
(134, 'bnnsr019espms8l1uc9hhd-47hgksbrp', 'allcategories', 'e0p5c3vu0j1u7bay7s1chm2huovbvn8n', '2020-09-08 09:41:24'),
(135, 'r8bexgk-b7h-m8j3v7q7u7de133o0baj', 'getallproducts', 'x2z97scqp6yapz6gqo82r7y0eumhiifv', '2020-09-08 09:41:24'),
(136, 'va-q4joz76pp9mbzy-8u875fe1kjf7le', 'getallproducts', 'm5kgmhqwath9sd6jqbkieawjgtnly69k', '2020-09-08 09:41:24'),
(137, 'jrwqih1oymx3rd9233dy2xgk0p4bqav7', 'getfilters', 'pe-87b2ulum5x5704gdlivc-lsq8c9ny', '2020-09-08 09:41:24'),
(138, 'hkoptq605-6oc77feoha6lcfvvx2-8mp', 'getfilters', 'dv13clooe-5a55nw09hfs0ya316ch5-c', '2020-09-08 09:41:24'),
(139, '2u0daavfrgpjkjsx-ngl40wgbmsh7q8w', 'sitesetting', '325ojzso1hkgjccy1d1i62uwef11zgzy', '2020-09-08 09:41:32'),
(140, '0c079jusihqf-ts7wu2s5vdtgoi7ar1v', 'getallpages', '03q3znvtxyiw4y8bbvukjs2gd9d9x0bk', '2020-09-08 09:41:32'),
(141, 'afxjkz4c4-co4u8g-0egrppsy1nap33q', 'sitesetting', '2zgrt0kv0tv-axm9z3ewywp315pofr1d', '2020-09-08 09:41:33'),
(142, 'mk52yej-1lzepmigvjuamlvwkoan-aut', 'getallpages', 'guf8852p0x74il-wboewjo7tl2xm5xkj', '2020-09-08 09:41:33'),
(143, 'szm0ckmrhrlvnh-69zjusjynr2rhxp5a', 'getbanners', '6shqmi9g4k3gij93jt88t0k90mhkkqir', '2020-09-08 09:41:33'),
(144, 'mv17ywjod165g727l6gi65ogwwczdal5', 'allcategories', '1ulym79g53ulapidovs9d850j83g3xp-', '2020-09-08 09:41:33'),
(145, '6h8ml4s6mx96k4zy6br8uqzogk4820ik', 'getallproducts', 'tdvhsf2eqc96r4dp71ngqkbv2bj8h156', '2020-09-08 09:41:33'),
(146, '9lp3aazh0utlf8y3pw171loamn0q4125', 'getfilters', 'aolny3g5vgvb1mg4ufwkjqi22l1zytk9', '2020-09-08 09:41:33'),
(147, '-lw5u3epj-pqnzjdhwsyqqafhyinnrws', 'getallproducts', 'k30huuyzyfjgc7yhz4p6vp24vfrw6q4c', '2020-09-08 09:41:33'),
(148, 'vmxs0ah8qnd-17xey-j7d-dr8wr2np3w', 'getfilters', '-n3gqmgervj7cx3pkdv8vokjk07zvo15', '2020-09-08 09:41:33'),
(149, '3zb3qjnaqzasi1rmmx2q7o69pi-4mzwv', 'sitesetting', 'd02rqxb4i6s5jcdv3xbeix9tgsaijctp', '2020-09-08 09:41:39'),
(150, 'eo11qklw749-zuyhc7hwv33lb953m4wi', 'getallpages', '4j0ciq-uoynzvzzgyyz31ve4optea5xy', '2020-09-08 09:41:40'),
(151, 'ebzvz3-kiao0brkh8fut3squ5uaeao1w', 'getbanners', 'vsxzkmzd9lawkad9n8b95p155glv4ory', '2020-09-08 09:41:40'),
(152, 'evrg8vo2fvk7vkwuss0caekoy1zg71hl', 'allcategories', 'b0eax6oufv32gr3gh3i8m7by2ku7trcw', '2020-09-08 09:41:40'),
(153, '3tvoqtejfalwcupoa1ioojsgfkvq1xum', 'getallproducts', 'rqpbwjcqejbal7ej4j6r-yz8yisc7y0z', '2020-09-08 09:41:41'),
(154, '657y6bkkmxsymy9mki91o13jmxzynasj', 'getallproducts', 'a40kxacb87c0uazpu01tft8gxm2wzk2m', '2020-09-08 09:41:41'),
(155, 'lwypnp4opfir5q1k31g9-e19twtmpi7g', 'getfilters', 'bovf8p2gu0swbbljsea4xmcbova8w6jw', '2020-09-08 09:41:41'),
(156, 'i659sr415n1himf2jazwgn4mk1qfjjcj', 'getfilters', 'pz36leyzm46u7hoveisx18atzv5uxd30', '2020-09-08 09:41:41'),
(157, '85k94j6uaobrtijj9qop4mxzyot6ukg2', 'sitesetting', 'mg-3e82cbf3j18rnrl58k82peame3-2w', '2020-09-08 09:41:50'),
(158, 'vre1w4xg2sof3oir33a4l9jn7tpbvqxf', 'getallpages', 'fk2uol8xe6qms--i-cutgx28az8b769j', '2020-09-08 09:41:51'),
(159, 'hplrt2cftnm53wd955raa93sz7x3xglr', 'sitesetting', '9-d9xhxcciptkxq23p7jczpf-1sogkyj', '2020-09-08 09:41:52'),
(160, 'ybcdaacgl4ldu3ip32wgg9eguqslr270', 'getallpages', 'jg0fl7id-vw1d99ku4tgpscf2ycrn53o', '2020-09-08 09:41:52'),
(161, '5xgkubtkk3bdwys14nreo7dzapapfl9t', 'getbanners', 'v43hm9s17dcjzie82rrguyhf415i2d2a', '2020-09-08 09:41:53'),
(162, 'ydxtcz4vpmryll3kkqu-hm6chs4dfvz5', 'allcategories', '6-o98szik97zi1h-ck48u5z0h9mwgo14', '2020-09-08 09:41:53'),
(163, 'c43ojg6zhrrsaloewfi3xjn5ypqrc7dc', 'getallproducts', 'ja7gnd2ol34ork9is3a8uqezkm81hj9i', '2020-09-08 09:41:54'),
(164, 'jtiubfiu4fe8fy0uzkarif3mcv4jmu5n', 'getfilters', '97sazjfjjwcruasdjwkzvlehu7u2por-', '2020-09-08 09:41:54'),
(165, 'xf63ak2lm3ljn398jy966wj3ox1kzcnz', 'getfilters', 'd9mjr92bt5mz-197pzfl5j1usq5tuuks', '2020-09-08 09:41:54'),
(166, 'oexgn71w7i7oiijvmoh7y6wla0vb7ixb', 'getallproducts', 'f7b2umxi-sfgq57bkpj2hvcr0hl3ktyw', '2020-09-08 09:41:54'),
(167, 'oqgv590m29oxukl5uyumhvxykyifs6cg', 'sitesetting', 's1irnw6vaim47s6sd570rmjp45srywmm', '2020-09-08 09:43:48'),
(168, '9kqpwz103bzca-wkis5i14h85dpy37g0', 'getallpages', 'f2-ltri1k1o1hs0zbyoyzivj76ogkkoe', '2020-09-08 09:43:49'),
(169, 'xe9c37j8wu-y3jklhi89cyjw4j3kom1s', 'sitesetting', 'ohv0026mp57s7x4kzgcmu5rdv4ia2p15', '2020-09-08 09:43:49'),
(170, 'ppaxqrknm4hab7a7cg5kcp0n4x0iv7ap', 'getallpages', 'bicji4tnoreuq2hope2qi5ho0-0s5jsj', '2020-09-08 09:43:49'),
(171, 'i6-b0juya37exvykdip7q5714b-u667i', 'getbanners', 'gi-chpy--fn1da7dzisv3hx05rx2yi0k', '2020-09-08 09:43:49'),
(172, '1plig4z-e9637jl8it32lm-lndc00d2r', 'allcategories', 'k2u89ls9su5vy3f0tjsp34aknwjpwhgb', '2020-09-08 09:43:50'),
(173, 'j20vs9m07y5j40f3rnn3rf26gl5iq130', 'getallproducts', '138snelmnu7g7sd-611plk8d-xpt9s1n', '2020-09-08 09:43:50'),
(174, '5pxyl-ck73v00atplpjh812rc29pevh9', 'getallproducts', '5kai0qma20ometty88h-4n8ogi84xud4', '2020-09-08 09:43:50'),
(175, '37r4ooicfr29d9keb5hg2h4x1cvo1dim', 'getfilters', '7jkvsm-p3oomwj0pydgxwswb9jr9n46l', '2020-09-08 09:43:50'),
(176, '0w803i5q791po3q4aymff3w5rws4alh1', 'getfilters', 'x0xu4sp9hkwatk5arrt2fbdh60ly4h8p', '2020-09-08 09:43:50'),
(177, '9jpxe7kr0stvq1vxg-129dzy9t0ikqbi', 'sitesetting', 'xyobrgfeng0cs7bm4jzck901myi80-h9', '2020-09-08 09:43:58'),
(178, '1ss68quv-8pmtcqns63g9bgo2ekj19of', 'getallpages', 're6kl-keh4xicod7e9g0g4hb04lu11xx', '2020-09-08 09:43:58'),
(179, 'by6-v0vu-bplqwzl44pa6v2-f-xmwhda', 'getbanners', 'gw3bm905zxrq-lmb281t4i8r0lq-6yn0', '2020-09-08 09:43:59'),
(180, '6jw359iqne947y6azd2a6pol-etnaove', 'allcategories', 'q4d0811adrzkej-98ftuefv-vmuerz3w', '2020-09-08 09:43:59'),
(181, 'gu775daszvey4be7jsv91wtgw33xofcp', 'getallproducts', 'ae76cklx1iuys6bi9u5om6iza4w4qm2h', '2020-09-08 09:44:00'),
(182, 'u2g-dw7d9xdf7jk6gh3ahah2ugkys0as', 'getfilters', 'kq8k1jv4ns9plni4jj1uvmuoe1q92ntk', '2020-09-08 09:44:00'),
(183, '3yw6l38ka7-cnbilvxtrvq4620tbqx8b', 'getallproducts', '1ebhv28rqus85ixa9f5a5lhp3sl0m93n', '2020-09-08 09:44:00'),
(184, 'nc5xjrhuelofw21so8vacqj66jrpkes5', 'getfilters', 'u4hcq9k3m8pg4wuezt1jr37ejbo2531u', '2020-09-08 09:44:00'),
(185, 'oguro5yd654n9nbr8w67z6yjwgcehmyc', 'sitesetting', 'k8dsqjibnlybosf3c1buizge3x1d3fp9', '2020-09-08 09:44:00'),
(186, 'd65e4fxvd7r59559fcdd-awxz6-6iz2g', 'sitesetting', '4m16f6jwfr1vpl1ohbehxj3369egggr5', '2020-09-08 09:44:09'),
(187, 'oufs5ce5nel6q3rpodtzucm4veajx-tv', 'getallpages', 'nqj6r65mr6wa6w8qdkgujo0-6onahs6w', '2020-09-08 09:44:09'),
(188, 'b9jtpaqjpkyepz8-7d358o7cyrvwlj32', 'getbanners', '5mq18p3w4zapf4ynrkucg1jcjkkorx3d', '2020-09-08 09:44:10'),
(189, 'mt7dfxru9d54h5znsdlpep9gqlprifgo', 'allcategories', '53j4yc2npbzavt-wlcv4047upzp99ec9', '2020-09-08 09:44:10'),
(190, '3mwmt0qjmwrmxqd13kmn1etm9jkbfk7z', 'getallproducts', 'p-jm4fk4so1l5z57973k2nphu7cy9gyd', '2020-09-08 09:44:10'),
(191, 'epmv18nd9cjlurs13acdseptdpv-nbc5', 'getfilters', '3-opp85npj9u8cn5qswoytucro7g4gi9', '2020-09-08 09:44:10'),
(192, '0leplo2yheky19v8m01gibcqxgc2fs6g', 'getallproducts', '0bk81u8jt4hmb31e62w8ky40gbbq-wxc', '2020-09-08 09:44:10'),
(193, 'm4e00unsuv36i-2adctu04w6mh3bwx-9', 'getfilters', 'znw-zd31kqzhw2mpl7c8j84yeixv85v7', '2020-09-08 09:44:10'),
(194, 'lrbua1fq23nk8odmzv95g8rgzamqf6ff', 'sitesetting', 'cdg4y1h96d9gm6pwuglc4ntmylsjv3ig', '2020-09-08 09:44:10'),
(195, 'u6bjijb6b1epd4u5e8dt8x87ysbt6qb3', 'sitesetting', 'a4eam7gyn3120-0oijta88l6-kjwn065', '2020-09-08 10:05:38'),
(196, 'jxqcemo9sbtdzrhdm-kmw-63z6cq4r7m', 'getallpages', 'jkb28y2rz8tr9itkcexypnk9v3dxsx90', '2020-09-08 10:05:38'),
(197, '3jub7ec6ehst88jlgkmm9vgtbq4q6pho', 'sitesetting', 'px2d1wpxpnbtg92i6pta9-jl6t20hk7g', '2020-09-08 10:05:39'),
(198, '3r6t1cxrdbl-adn3ki1iydfpep7a5gg2', 'getallpages', '2wg3dlad0th8tchiey2owk68ybucqiww', '2020-09-08 10:05:39'),
(199, 'ryv0k1x0sv6uhupvxzpydgoocw48xv8z', 'registerdevices', 'vkjh4ooewph7l95-f-isa2r-wssip33s', '2020-09-08 10:05:56'),
(200, 'bp2vv9ebxmen9om062rwcmlh69yeqpt0', 'getbanners', 'hclb-98o9gbwjde7evsalpedz6pqovt7', '2020-09-08 10:05:56'),
(201, 'mcv0k6yk2exywt5bynyxp8591cw5b5fn', 'allcategories', 'irbcx1-ivatzf8x3y1m7gth-4ff7veou', '2020-09-08 10:05:56'),
(202, '4859qgijk3nu628tggyh8tpppwyfem02', 'getallproducts', '56312vl88jc10f6krhnjviktm-2r2jn0', '2020-09-08 10:05:56'),
(203, 'iyks2s5wbnl65bm0s7-xazmt6hi3cr-9', 'getallproducts', 'dgdpdtfjabmsx-xphfzrd8jc04n94g97', '2020-09-08 10:05:56'),
(204, 'nd31n7qnqrnq4ejhmijnp-8b03uc7kyo', 'getfilters', 'b3nmcjrqcl63iw04qllswdsb2ndq1kvp', '2020-09-08 10:05:57'),
(205, 'sv6ihm676qti4rou43ncrovfmz5qd58x', 'getfilters', 'shhiwk10qnnr0oh4-03hd1yeqvx3npng', '2020-09-08 10:05:57'),
(206, 'vh15a4btc4irsg5cvaypi9iic6ifcoo-', 'sitesetting', 'k3nkka7j9y16x1conf68zy0nqd9ap453', '2020-09-08 10:09:20'),
(207, '6vulav03t7es6kr6m92e6unl0vx-i7dx', 'getallpages', '0hpi1d49iux8aatevlqm94rtjgrsm6pd', '2020-09-08 10:09:20'),
(208, '0tjx19cofz2-m3jsjo5btybd8j637ue9', 'sitesetting', '6nmbaw-dnt2zq4dbvje8xcjzlke81q73', '2020-09-08 10:09:21'),
(209, 'mk8y2w9rxzz1csov8p9v3rom-pd3thc0', 'getallpages', '-wp928o23rjljhgjhfuv5w0s2hpryhsq', '2020-09-08 10:09:21'),
(210, 'ro4v09bvhyubvi6c8uw06x-hwtto7wyq', 'registerdevices', '09agm77h742fd2jl0mahd-wxy4swvsd3', '2020-09-08 10:09:35'),
(211, '8b4ny4suwjq8nis25p2tsujtuigpm07z', 'getbanners', 'lueysic8bih6ajb15sfgiq9z--tnp3ao', '2020-09-08 10:09:35'),
(212, 'gevxs2c8f52u17wxbgbkx7tagrtn9rq7', 'allcategories', 'ak0siv-r1mbj15wotgsm168wwsgjtbsx', '2020-09-08 10:09:35'),
(213, 'adnvyqsqjhey98ovo425lfzr093ib96q', 'getallproducts', 'gi6lqco9qmyt007bt8-xxyqqbe33qv--', '2020-09-08 10:09:35'),
(214, '52qfrub-f1qu0uauo-wzku7i6drpf49g', 'getfilters', 's-p43ys4tnxsl0889qmlj8y9mshekxp2', '2020-09-08 10:09:35'),
(215, 'vaebi9v9lxkvs6fkfy88uagjjhr0amkp', 'getallproducts', 'lvg9ivq37y-olvvj8pyfxb1ce8msphz0', '2020-09-08 10:09:35'),
(216, 'pxqsvy4i4xvlamqora8hwg37wiw1rzau', 'getfilters', 'girj0gv8jd3v8zxqjys4qd3j4ms3nvox', '2020-09-08 10:09:35'),
(217, '924bxk1a6avs1jsf87b2cbr8ueiau30z', 'sitesetting', 'bxu0pj2ccbspou9cfb3jh9f14wrl7ahd', '2020-09-08 11:05:06'),
(218, 'h57yvj094mc68kyi5684owukkzfnv56o', 'getallpages', 'h2xrh1rpj07utsru6o28tfp8war7mcjl', '2020-09-08 11:05:06'),
(219, 'irk88mlxdo0z89t9m4-bg0efxtduwa0v', 'sitesetting', 'letnecwop8c9wqhq7xj-tcdnc4a7dzwj', '2020-09-08 11:05:06'),
(220, 'td6un2zlp9f1-sf6k6f3677y2yur7xfq', 'getallpages', 'ohi5cwwnih922blhhmlervzomi36y3lw', '2020-09-08 11:05:06'),
(221, '0rpwjp59t3oly9h7cq4f0385o-fvxl2h', 'registerdevices', 'x0f6gv01zg8lwm3-hnnruufo1eapnklr', '2020-09-08 11:05:16'),
(222, 'dwqgvicblmub1so4pvogc2s3t64y9hhm', 'getbanners', '109diael4fepkaih2b3v5x-zlt98iu-c', '2020-09-08 11:05:17'),
(223, '6ad1xc6rhmytu22iclfm-qd2r1pk5u-5', 'allcategories', '0a9gvpa3egumgvv4j-1zpjhcd10vat6q', '2020-09-08 11:05:17'),
(224, 'oowcp8bwkif9s3qv12leowkc2ljca8x4', 'getallproducts', 'bhfrq1akwndl7n4p6wxvaw-jq8w61b6p', '2020-09-08 11:05:17'),
(225, 'xhryko-gdfm0px1yx62ilwmvc7yxkznk', 'getfilters', 'e5hr6tlmhi10zwp8uqyowcmkvq1peq33', '2020-09-08 11:05:17'),
(226, 'uxai7m0-pjsiokk97h7luds-a-77m5m-', 'getallproducts', 'uzq3rqw55hol46vhq2t2iom3n9l5r6av', '2020-09-08 11:05:17'),
(227, 'aua7wu48fwudzth33x2jesi1z5hyt97t', 'getfilters', '7mlqueou6hnfibw6rmhv5f0ebtgp4fe3', '2020-09-08 11:05:17'),
(228, '2x282epfo-exzu5lfmiop9902u7afvc6', 'sitesetting', 'ulx25ymsf0ay4sj9ptp4ctxvutv9d9nz', '2020-09-09 05:54:46'),
(229, '7io8odqztxccus7504g5wmijd9a6dbbs', 'getallpages', 'a4la-sr0afug2mteyt69xou6uujgs8w0', '2020-09-09 05:54:46'),
(230, 'xachziiuwvl2-q5mpaumtekp5ps0npfz', 'registerdevices', '05cdj9amsw1ddjvtkzyf9lqxl-bi6omi', '2020-09-09 05:54:52'),
(231, '1-1ywhj8-7umyi8xeloveybqohnnsevl', 'getbanners', 'mg1jurkhjmheq3evoy3o4qz1h-ixfi-p', '2020-09-09 05:54:52'),
(232, 'hgm5b5jv8ei6eh493dl5je0xfy62l7-u', 'allcategories', 'fuej4r0ey9olkm4qz1sh43jlyjeggmva', '2020-09-09 05:54:52'),
(233, '1kcusgv-xow6ukcm15peqkctwi05cj2-', 'getfilters', 'td7m4krs2exznmvto8q6wpxzmmqnk85s', '2020-09-09 05:54:52'),
(234, 's12z740m2h--sa64eglvs5thds8j70ne', 'getallproducts', '-z6hhixwim5nxiieg6b48ra3n7tvjo9l', '2020-09-09 05:54:52'),
(235, 'l-3trno4p2go3s7hjoqb2kz7v3klc39v', 'getallproducts', 'uubkng5elajuopn4m-uftku9836692ob', '2020-09-09 05:54:52'),
(236, 'n9-gyryqxdats-fs0fth1dwfzfm-ogjq', 'getfilters', 'ee-6xunypzufhe2y8swgdd8femxzyt7y', '2020-09-09 05:54:52'),
(237, 'etb36o1be9l8pjs00ym8tejzcy9tp7sd', 'sitesetting', 'fqt39fzkbg86ma7w5xka1i59gukbz71b', '2020-09-09 05:54:58'),
(238, '2aignu9vp4h-01x3gk4v2t-bv7xuiuwu', 'getallpages', 'r2ohjd5njaq7ugeac0817nco5ynow-p9', '2020-09-09 05:54:58'),
(239, 'xufe9pkdcrmp2a1a83axqe4zpll4uo9r', 'getbanners', '4d0tlm13htexi4efx4p8wftnx220bsv6', '2020-09-09 05:54:59'),
(240, 'xwr0ue27kneeguceh0my6ms7-02m2qg4', 'allcategories', 'u1okxku8dbwoj293vgmmrcykinat7apy', '2020-09-09 05:54:59'),
(241, '7x-ua32-v2zvd4zbymtw-5-dlkni2rnu', 'getallproducts', 'qssry8xcze36e9ap-opx3adnm2l1vpax', '2020-09-09 05:54:59'),
(242, 'sgoottummls7w3ry7aep712js313ames', 'getfilters', 'sew3drochap1pa3jtedusnavj5nabi1h', '2020-09-09 05:54:59'),
(243, 'g1f180oxeyj4r2f7wiehfurirzidp96g', 'getfilters', 'rhuskdwqrjs8ydf1gxl25nkmu8o9bu4m', '2020-09-09 05:54:59'),
(244, 't07sqp6c1yf9qvqwf81btvmatfp9aymt', 'getallproducts', 'eql6dwnic9zgnvssst5woh22qe2jh8hr', '2020-09-09 05:54:59'),
(245, 'e-8yl-snt39qfvag87mhau4rzjcvjf9j', 'sitesetting', '7y7zxsmmy8b8zahw6r0331blsh85gyov', '2020-09-09 06:06:13'),
(246, '36y9vtnvhwltlkv7ox-gf5psvjfj8vi1', 'getallpages', 'xy18vm-eq7qp9mwkbkcgnkvz-04hha4e', '2020-09-09 06:06:13'),
(247, 'xjyq5rkd6lvr-jvwil-e0e33qj7pur73', 'registerdevices', 'v3ueoxksxqcdo6y00aohm1j2rxf2lnaf', '2020-09-09 06:06:26'),
(248, 'i4tel933tvr1ap-dkaggvivq54m9so6h', 'getbanners', 'x7xuokqasac5g84hmjoakj3id-s42v16', '2020-09-09 06:06:26'),
(249, 'lsb5qgypt8zpjkt3tuu-vbia0b20k4w4', 'allcategories', '1ww4qkg0ma0eogcdxexdcek4x9c8xa9c', '2020-09-09 06:06:26'),
(250, '4igv1agumxn5n201lcg4--1plvpcnb5x', 'getallproducts', 'x4tav5jtimd9kcvg5xy5vnfsgsd0e1q2', '2020-09-09 06:06:27'),
(251, 'u2-5ymxgno25j4lz5ep62lhsa95wd3dt', 'getfilters', 'km-6k73e5-h-wch0rbweiptjwy2l23qo', '2020-09-09 06:06:27'),
(252, 'tdk00maci2p-msc4wkvrzrd8hqtr7ay4', 'getallproducts', '6j4l8hiwz752oi8ngdgmzsv0r3i28711', '2020-09-09 06:06:27'),
(253, 'km6hp7dli69yz7w8hbmjk2akmddxacn4', 'getfilters', 'n01h3gwref8n2ov2p64u4p9gwo640w4t', '2020-09-09 06:06:27'),
(254, '6bzzgpnt0sf242mn9zx0o9ieo0hacogr', 'sitesetting', '4wuneolhznthkb93z5ejcl528hm4mrqv', '2020-09-09 06:06:32'),
(255, 'syov1ao1ani1yk35ja53emhe995-eq6u', 'getallpages', 'emi-9ar9buki6fy-g972lbggc9jxukj0', '2020-09-09 06:06:32'),
(256, '2dibff16hds242qn6m7f9y2qjvhgkyxi', 'getbanners', 'rcocibmwxdgu-f881cvvfgsszyh3mo7m', '2020-09-09 06:06:32'),
(257, 'kjiq4r8755ww6bjc62i5scvushva8qy4', 'allcategories', '33kyknwqqqk7v02iu5qkr18e7lydcehl', '2020-09-09 06:06:32'),
(258, 'uxmuj35lw-os9j1ht12hc88e8h6p7b6m', 'getallproducts', 'fnoq8-lhz85l5c0eshpxxgvdzrg05usg', '2020-09-09 06:06:32'),
(259, 'yatx04ck5y2xanq84v5j2m9uzhso5hfb', 'getfilters', 'ogr2ug5mefh3scw1em-mji15a-9y864b', '2020-09-09 06:06:32'),
(260, 'n7hau1pl2o3340jnowebg8nwkt-eqb74', 'getallproducts', 'gkob-z-4-nxuew1qfnzzjd8y7ycvyhk7', '2020-09-09 06:06:32'),
(261, 'bh7zs1kyf3ujljrtuh3sa86xyh2u164h', 'getfilters', 'em0oyz1ky0t9rgrzqa3dgyzqmdmdc915', '2020-09-09 06:06:32'),
(262, 'n8-x4vb6jasi6jm08lqp0swuuo9-y7og', 'sitesetting', 'k65izef8eje8316hz31shmc3drgck81p', '2020-09-12 02:10:24'),
(263, 'xro2bfxfs7rhs5c35bwfieoa5hme9u3b', 'getallpages', 'd6l9ymxyyls8fs5-klccl4rhi0magmq5', '2020-09-12 02:10:24'),
(264, 'nixohtz6lfjj4z8xlpt5tmuk-1ox8hkg', 'registerdevices', 'se0yv3vb8wlphpocgq40dy06duluu4r2', '2020-09-12 02:10:31'),
(265, 'bey2-n5splqslwyy3l-3cxl7ex3tylsp', 'sitesetting', 'k5niofpjluumrwje43j405l5ahigg6u8', '2020-09-12 02:10:52'),
(266, 'x9xw1adodtjeitsuoqgq359uetq4mf41', 'getallpages', '-hb7lrkus7tz8jqcmx13d1ktmnajjav8', '2020-09-12 02:10:52'),
(267, 'ejihk54faobbh59fn5rr5c6h6zmqnbkc', 'sitesetting', 'cbmiz1t1f1wwm9lca2aa4cglfvw2qq5l', '2020-09-12 02:10:53'),
(268, '00kszpq7y1qdrn3kwnpry71ka8rumtty', 'getallpages', 'kd0esc3dt0b6qxaq5ccak5vgoa3bmrzq', '2020-09-12 02:10:53'),
(269, 'ajdk47nld5hk19xa9fj0osu3e5rk6ov8', 'sitesetting', 'yvbxw21787ulzwn2yk61qo84wlftt6ii', '2020-09-12 02:11:08'),
(270, 'wvm-lwvo3rofsi5p5b11kxmfsvvw60-j', 'getallpages', 'zdlyez2jafitjtw84o2yq9onojqn4t9w', '2020-09-12 02:11:08'),
(271, 'lsg6xj010qe3ze-of0bzn1g1w-mp640h', 'sitesetting', 'sixuja0-ula8qdlzz206ahyto6qkf-4l', '2020-09-12 02:15:27'),
(272, 'zk9ldvzlwuwknfo-gbnau3rn6wq427pe', 'getallpages', '0sx4bylh-z7kpied9688r6kmybpr6kck', '2020-09-12 02:15:29'),
(273, 'euq9klqip5vo31moh9xlt8mz7a4s2aw0', 'sitesetting', 'dgr0bh4ovawkawozo3f1ubtrfywk097i', '2020-09-12 02:15:30'),
(274, 'e9c6pqhkk3ipvcz2xtqaz614sdd13sq8', 'getallpages', 'qzc4bb3uo5sx-qf7z3fuawb87w254s4y', '2020-09-12 02:15:30'),
(275, '9uk7mbrp3743vegms4427b0nhk5qn3qo', 'registerdevices', 'yl-o2uneztcizyccucytlzzxdnrlf8gh', '2020-09-12 02:15:54'),
(276, 'o0d53ishuetb194yyt5ea2jlg8vieebg', 'sitesetting', 'r1yv45p10xs8v4vgxewu0irghibc-5pc', '2020-09-12 02:17:16'),
(277, '9bncygh7xjkd6h2gca4j88xdul6ynbfb', 'getallpages', 'p08uzkj1ixl2znhpgvmt71b35-dg2m88', '2020-09-12 02:17:16'),
(278, 'to28hnod-kpzvwvrotljgyy65g8j1hwk', 'sitesetting', '294i4pqkg23pyy0e4ulj6o8q3ppn6a20', '2020-09-14 06:14:41'),
(279, 'we9p2uxnq4k9yzelq-kd05kam-zk5v1b', 'getallpages', 'e1jjoav-l91uaatbihv9n-5feprx1cti', '2020-09-14 06:14:41'),
(280, 'bkbbpc5snclazvcammzkhn3g0cai77em', 'registerdevices', 'hnxmd-4xhc870rt1pesdduwadjr4o-vn', '2020-09-14 06:14:48'),
(281, 'yzkdwlrumb5y1kfjy4fouyjkwmq-6d9u', 'sitesetting', '081k6nnk9q8nsky3d3wu4g7wrfmujjuz', '2020-09-14 06:18:32'),
(282, '-7kiiq-rbe7507gqwckbmj53dlq8lhx6', 'getallpages', 'cp4zgu08otykoraefw6aewekcuhw2yeu', '2020-09-14 06:18:32'),
(283, '14cxb-k97x0g823lrvzuq3cmuelwugyg', 'sitesetting', 'o5l2493d6vdw3tbtcnjjkr-wa8drvojx', '2020-09-14 06:18:34'),
(284, 'f15980n8s4dqsj7b9qds9sg87u08oapn', 'getallpages', '4ml2ac2bnodf1k3q9n72rqniu-6kh-mz', '2020-09-14 06:18:34'),
(285, 'urrqhv5jj-js0af-yy4qosdxivhj3yl3', 'registerdevices', 'bygvl48bxqsmbksedsqk7jdowb1h1ud-', '2020-09-14 06:18:40'),
(286, 'v9tlbl6o8e8i5hr63p72k1f99yqdh1ta', 'sitesetting', '8zo4gt5nj4p85-9hk2qh9y9abnhy4-jq', '2020-09-14 06:03:49'),
(287, '1wvwxe44xfnetdykfmkialf9k4cnnxun', 'getallpages', 'd-rbwkgs26s7g355w0nd1ajveu6bxws-', '2020-09-14 06:03:49'),
(288, 'ao-qldprtnxjon1y1mj47sbzytrke93n', 'registerdevices', 'vfhfkpit5z4zpjh6rqy69heygzea96cu', '2020-09-14 06:03:56'),
(289, 'mj9f5590a-v6emiyhldjc1hhm3czvvno', 'getsearchdata', '74sxbhcc3jt8jvhovlzx4mgiq92i6niu', '2020-09-14 06:04:05'),
(290, 'k0fpv-kc3-yapjl6vdi18ccxc5c9gzsf', 'getallproducts', '33b-rmfl6otup7b43ffz--p5fnjugm2l', '2020-09-14 06:04:08'),
(291, 'th9chdojp-xhvo5tmlxaf0ejgwm-9k2b', 'getsearchdata', '4g5ocxio4wjlz1--vqw1n0gydtg86onq', '2020-09-14 06:04:26'),
(292, 'rzr8-amjzk1o6dfxbwso4xmzrraf0btv', 'getallproducts', '-e3f6kjb7e25ulde62gmgwukf-1x9meq', '2020-09-14 06:04:28'),
(293, 'z7f-yq-b071anu9dqmcdiy4o1wmzrsti', 'getsearchdata', '4v7kgoggkccox97wiw5ee5flr9se3uta', '2020-09-14 06:05:03'),
(294, 'yj7la84a1824xl0pdb6h325rmmvmp0nx', 'getallproducts', 'qhnp30mk5ojqy7qznd1jl10x8b4nng1j', '2020-09-14 06:05:06'),
(295, 'mlbnw0hvguijwws-q95so7ozz3gcpcyp', 'sitesetting', 'iic1qty--kq1-d-wukgce2p2bktm9bm2', '2020-09-14 06:10:10'),
(296, '4nlilso9z1ik1d6145ebggj1frtr1n-l', 'getallpages', '93s8vv3adg8zw0pnk1lktzr1mspzabqm', '2020-09-14 06:10:10'),
(297, 'ppvdtawjar-hecva4ol4rhah9xipa7ui', 'getsearchdata', '6zknz8kkmitii56t216zhdmq00-isfcd', '2020-09-14 06:10:26'),
(298, 't5fxhqwmnfq1oadsrzd0hcn9a0y6b44o', 'getallproducts', 'jv16s84clsc9oo0zacsf51xvej5-p1wu', '2020-09-14 06:10:27'),
(299, '9eeqtvoofedu2o7agjedbt6rtxo38-pt', 'sitesetting', 'jbr6dqmv9eaifd4udo9t5koot70hf0ci', '2020-09-14 06:11:47'),
(300, 'g1072x6be6sgqtd2pwx71j8kw4z6k6qe', 'getallpages', 'z293n2nygwh7huhf-y3xmsr-bdv-e04c', '2020-09-14 06:11:47'),
(301, 'fs5yzmfnre-zjvi8c2oafcypa96rru7h', 'sitesetting', 'vcg4ztfitxjhu1mq0pewdcjef2-l7jw-', '2020-09-14 06:11:48'),
(302, 'q0zgladf7umkip7ymp3jeupkogh8i64r', 'getallpages', 'jddsw3t7gk7b806u20r8jddqe1nnora9', '2020-09-14 06:11:48'),
(303, 'nuolkv3352p1hgk1hl7jp1i4y761erbf', 'getsearchdata', 'c4d5wjtz5-2040m77p068hjv6qjopenf', '2020-09-14 06:11:54'),
(304, '5ubcricoygzrx4dm26uek5t1mok6h0h7', 'getallproducts', '2qzesfhx8bji2k6hcnx5foi8xby2dk5t', '2020-09-14 06:11:57'),
(305, '6mr73pkk1x3-mnc7fm5eeb2sow8iq9il', 'sitesetting', 'vsn6k351dc80olz09frwop-egvoz9bx0', '2020-09-14 06:14:04'),
(306, 'nhah-hik60yd4gt1y0phls3ittpje5fi', 'getallpages', '0tpeywj3xx3l7yus8pd9k8mkevi343ur', '2020-09-14 06:14:05'),
(307, '3kt-t9p2u9sr2jvi8sulgpmdzz273msx', 'sitesetting', 'xe59jaj8qzf1np4kio1ruai1a64w2hjc', '2020-09-14 06:14:06'),
(308, 'irc1c9hkjxu6tnvha95ber-mw1-tfdb6', 'getallpages', '0l8982ei7ekneegzmq-28a8nqfi044rc', '2020-09-14 06:14:06'),
(309, 'tdgtv2u0uwk60vq4ti0y7poar5sj2d06', 'sitesetting', '0ami56j0g8aqrxykes-xnny8fuxu-lek', '2020-09-14 06:14:15'),
(310, 'b4mtk8uepi2cgxzozxytohjlanvrf75q', 'getallpages', '2cf1jkvrzdquz-4kxpw5w3xn5bvtt7vw', '2020-09-14 06:14:16'),
(311, 'c67lly9h22281fgfv3o7a7ug0z8iuqg6', 'sitesetting', 't22fko3c1mxfd0d46ftstm144j820v0s', '2020-09-14 06:14:16'),
(312, 'q1f-fkyrhdjdwusavowphsvq7908a0s2', 'getallpages', 'm6fgdvqtjax0gsh3lo6f6j0qpss2px8w', '2020-09-14 06:14:16'),
(313, 'deqsqd4lluo8pl22waf0dh-wcf42wm8w', 'getcurrencies', 'uj3w3cfa3moia9ttw607-dwe9s419t4o', '2020-09-14 06:14:42'),
(314, 'rqdgos8sep1opqu475qcl24u4qbv0-mw', 'sitesetting', 'j4mcv2dwabpmwsahj6pcv-d2unjwfvb9', '2020-09-14 06:14:45'),
(315, 'eyc2rxvdnspbv4tt3-zu7r47jesch6rh', 'getallpages', 'wzre2fk6wzjuoczlfvr2vfuo0wdog9yj', '2020-09-14 06:14:45'),
(316, 're5oxoi51mvbpkswxcj1gvlckbr6qyt3', 'getsearchdata', 'y4yyp9avdf7qv9e6xgl5ytnfazpns94u', '2020-09-14 06:14:51'),
(317, '4hfasd3clcsly0mku27d4zuzvh4djygu', 'getallproducts', 'et3-egv0kkcpcn0hn-01l6bro821k3rb', '2020-09-14 06:14:52'),
(318, 'vvqmbyffhqzsgno2jyud7lk08v8407x2', 'sitesetting', 'imyw5p21g3vi3pxb5pzz1r3lakn48hdq', '2020-09-14 06:16:59'),
(319, 'm2smg7p89usdz41pan9-k0mz91--fode', 'getallpages', '2s-foc6nc1k5wwqd95v46ep3yomxukvh', '2020-09-14 06:16:59'),
(320, '2a76n67ujnuqqrr8w7jyglcznler1tiw', 'sitesetting', 'otfw49g0h2f3crojh3l6liz-s23u0ht2', '2020-09-14 06:16:59'),
(321, 'anfy3hplnnkbwxmupaot8k2f8jmay12u', 'getallpages', 'iqwvmbsmts7s-41bwueekywfmsihnr3z', '2020-09-14 06:16:59'),
(322, '2df5wk93p3h8je4sjy3e41y8u50zilvt', 'getsearchdata', 'd4azecfnrsi3pnjhb5-7pxejsv2wia4y', '2020-09-14 06:17:06'),
(323, 'lhgm5kfi9diub0xqq3rjkk8u61vng57p', 'getsearchdata', 'em5ek5k5c5kv7cl997-wpgitz3r5ae3f', '2020-09-14 06:17:12'),
(324, 'q-jbym7otuuitw4cpyzuffyyty8-r9bm', 'sitesetting', '5p3avgw20qtpgesub5lx1rpjmpujp6o2', '2020-09-14 06:19:54'),
(325, 'q4z4dkywd5l13sdp42md3wh5vi2hwt38', 'getallpages', 'n4-dwffxt6sfupldyxlt-rkrog2dmcbu', '2020-09-14 06:19:55'),
(326, 'tqv1bq5fpmkro-4r0rik38qqhkj6c34s', 'sitesetting', '5c854f1asce3nmkfywzdodtvznp59geo', '2020-09-14 06:19:55'),
(327, '9pfrs49lz-3jj-ll7ejaa24ofi5beugx', 'getallpages', 'iwl3eu4r9cgjinzies8ph1jovm34385h', '2020-09-14 06:19:55'),
(328, '3lod9j2a3fh4uglc4dqze2qvjxqe812r', 'getsearchdata', 'ctd3tth-lmiy5q6ze-ca-mgvlc9g7b4g', '2020-09-14 06:19:59'),
(329, 'z8bv5f6bx5dpwqpm61vaaaop0yobo2hb', 'getallproducts', 'ddmavsb6fxzrq-10czhbo6ljsiexki7r', '2020-09-14 06:20:00'),
(330, 'hobrmg0ealqvu6672q9yshh0iqv7gn0b', 'getallproducts', 's4jsjy06af1l3252e7vod4mix49blf2e', '2020-09-14 06:20:06'),
(331, '2mabu2cb9iwvo05b3l1382tx9ig2ah4n', 'sitesetting', 'ia2gagl8vf-5kx6obi40k6tmyea6pfgn', '2020-09-15 05:47:53'),
(332, '7wmgk41suulomz8lq-fco0gbnuddncbb', 'getallpages', 'oage0r2hf6bf5js-4g81r7ajhg4lzkvz', '2020-09-15 05:47:53'),
(333, '7xp8427pmup4elfs4s015nkxgb6-348s', 'getlanguages', '3t46-4j5hdr9db6tl0re5li9rgeq7myg', '2020-09-15 05:48:10'),
(334, '6nvhkt73ro5qiw5sejldlnv7oci-fjbm', 'getsearchdata', 'dh9es58tko2yveb6pj3078xgeyt8h7gm', '2020-09-15 05:48:22'),
(335, 'toy3lnu9taard0xc5ois6-m9cpkscs48', 'getallproducts', 'g14hh8p3r35x9lo9oz8fva6achftxsmq', '2020-09-15 05:48:24'),
(336, 'p5z4q-vfa45q9p-fkwmqwt7a19dbwhfm', 'processlogin', 'o43ziar6qe5ry8jhm-z6tgtepdf2dmx-', '2020-09-15 05:49:25'),
(337, 'b-ces4urdpt73r5hxa9pq4vheej4nqkv', 'processlogin', '6x-se8gacloj315xpg-s85269gx-sdat', '2020-09-15 05:50:16'),
(338, 'ztc25h4ffk2s6lmzm4njspd3o5wnohw6', 'registerdevices', 'eo5wjzo2jv8t8ryqk2ai8ev7ffdk7p9z', '2020-09-15 05:50:17'),
(339, 'sx-oi8vie4eucj9da-ty8krtj-zhzztv', 'getsearchdata', 'i24b5f5px43udcpft1ggdoap6zjbp9by', '2020-09-15 05:50:29'),
(340, 'r23xkjc8cfo44hu5k2a5w6byghog4n7y', 'getsearchdata', 'e1gktd-7f2qpjj61qk5lk9zadpie2rhq', '2020-09-15 05:50:36'),
(341, 'wsa6bx49ava58ki-s53ucqqpn9i7700k', 'sitesetting', 'ytw15ieua1np31z-lgddlqen7fv9xp75', '2020-09-15 05:50:43'),
(342, 'mamkwj9ya3b2l0xz8je7rjfr7g2nbn90', 'getallpages', 'tnb9kni0as2f5bw75-we0c2ykkai9mow', '2020-09-15 05:50:44'),
(343, '0q38p7vcn5ao498j1l94ojvtjbsls-wk', 'getsearchdata', 'nq8lqpccko09567lq0z-buzmru8dme-i', '2020-09-15 05:50:47'),
(344, '-2a6tv7j5htiwctz3ysji5whigye4lei', 'getsearchdata', 'lkerr1u9sl5f26xjy0k9a4cg2vylugfm', '2020-09-15 05:50:50'),
(345, '392j8n19ca6snmsz3s80e1c3fhinym8r', 'getallproducts', 'wrq4pw9rj4y2bfqzuqphg1-xuv5nyckr', '2020-09-15 05:50:56'),
(346, 'zv5-my6436bulwg3zsf7za05m3kmirbn', 'sitesetting', '14326q7on6r2qpchtwlz9fmrg-08-x5r', '2020-09-15 06:13:23'),
(347, 'qz14h-cvrmjor5fdjj6-6xvtrjr27gf7', 'getallpages', 'xpohj0glfoj-n36akte5v-h7fy3iqgld', '2020-09-15 06:13:23'),
(348, 'c1wdq51i6wa2k4ivg0ny2murmz594d8i', 'sitesetting', 'j-zchta95-7fs-24ljz9qmktrawcbsa0', '2020-09-15 06:13:24'),
(349, 'clj9d1q7uchxy63nn0keml23v3udwq6b', 'getallpages', 'quic4gb0x8e346tpl662i5z169w9zev5', '2020-09-15 06:13:24'),
(350, '9k3znlp9i38zuutewa61nd7ruar5470f', 'sitesetting', '3kcpzm3j58o1v39vmfk696mugik76zad', '2020-09-15 06:15:59'),
(351, 'mwc1kd4u2uz81r6rj5aqg6domc-d76g4', 'getallpages', '9oyl3aghsolalf0buwj5n5ksen3pa0em', '2020-09-15 06:15:59'),
(352, '2pb3u37mfxbt2k841dbujf19op7nieaw', 'sitesetting', 'i0vi9wt4zo2pcnrq3axfxs4bb3pcqk8b', '2020-09-15 04:41:44'),
(353, '5piz8so32zhep6zm1gu3lkp9n-9mvr03', 'getallpages', 'sr9aowopvam5qxqwwqm44s2kllhbqrlw', '2020-09-15 04:41:45'),
(354, 'cnlf0yr9khmnk3j1seb0rfzocucjcer2', 'registerdevices', 'f30p0jrrcq87rhtzm46li4bzrtdxilaq', '2020-09-15 04:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `bank_detail`
--

CREATE TABLE `bank_detail` (
  `bank_detail_id` int(11) NOT NULL,
  `bank_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bank_account_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bank_routing_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bank_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bank_iban` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bank_swift` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_impressions` int(11) DEFAULT 0,
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`, `banners_slug`, `created_at`, `updated_at`, `languages_id`) VALUES
(1, 'Selamat Datang Di Rumah Sayur KIta', '1', '336', '', NULL, 0, '2021-04-01 00:00:00', NULL, '0000-00-00 00:00:00', NULL, 1, 'category', '', '2020-09-07 07:48:49', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT 0,
  `banners_clicked` int(11) NOT NULL DEFAULT 0,
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

CREATE TABLE `block_ips` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(-1, '120', '120', 0, NULL, NULL, NULL, 'uncategorized', 0, NULL, '2020-08-26 01:53:17'),
(1, '132', '132', 0, NULL, NULL, NULL, 'sayuran', 1, '2020-07-20 05:04:10', NULL),
(2, '125', '125', 0, NULL, NULL, NULL, 'daging-ayam-segar', 1, '2020-07-20 05:04:23', NULL),
(3, '124', '124', 0, NULL, NULL, NULL, 'buah', 1, '2020-07-20 05:04:35', NULL),
(4, '128', '128', 0, NULL, NULL, NULL, 'ikan-segar', 1, '2020-07-20 05:04:47', NULL),
(5, '126', '126', 0, NULL, NULL, NULL, 'bumbu-dapur', 1, '2020-07-20 05:05:03', NULL),
(6, '127', '127', 0, NULL, NULL, NULL, 'frozen-food', 1, '2020-07-20 05:05:13', NULL),
(7, '129', '129', 0, NULL, NULL, NULL, 'ikan-kering-asin', 1, '2020-07-20 05:05:38', NULL),
(8, '133', '133', 0, NULL, NULL, NULL, 'sembako', 1, '2020-07-20 05:06:03', NULL),
(9, '130', '130', 0, NULL, NULL, NULL, 'keperluan-rumah-tangga', 1, '2020-07-20 05:06:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `categories_description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`, `categories_description`) VALUES
(1, 1, 1, 'SAYURAN', NULL),
(2, 2, 1, 'DAGING & AYAM SEGAR', NULL),
(3, 3, 1, 'BUAH', NULL),
(4, 4, 1, 'IKAN SEGAR', NULL),
(5, 5, 1, 'BUMBU DAPUR', NULL),
(6, 6, 1, 'FROZEN FOOD', NULL),
(7, 7, 1, 'IKAN KERING & ASIN', NULL),
(8, 8, 1, 'SEMBAKO', NULL),
(9, 9, 1, 'KEPERLUAN RUMAH TANGGA', NULL),
(10, -1, 1, 'uncategorized', 'uncategorized'),
(11, -1, 2, 'uncategorized', 'uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` text COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, 'style0', '', '114', '2019-09-08 18:43:14', 1, 1, '1'),
(2, 'style0', '', '114', '2019-09-08 18:43:25', 1, 1, '2'),
(3, 'banner1', '', '83', '2019-09-08 18:43:34', 1, 1, '3'),
(4, 'banner1', '', '83', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', '', '83', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', '', '84', '2019-09-10 08:50:55', 1, 1, '6'),
(7, 'banner2_3_4', '', '85', '2019-09-10 08:54:18', 1, 1, '7'),
(8, 'banner2_3_4', '', '86', '2019-09-10 08:54:28', 1, 1, '8'),
(9, 'banner2_3_4', '', '86', '2019-09-10 08:54:38', 1, 1, '9'),
(10, 'banner5_6', '', '92', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', '', '92', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', '', '92', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', '', '92', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', '', '91', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', '', '95', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', '', '96', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', '', '96', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', '', '94', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', '', '97', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', '', '97', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', '', '98', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', '', '96', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', '', '96', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', '', '99', '2019-09-10 10:26:54', 1, 1, '24'),
(25, '25', 'http://rumahsayurkita.com/shop?category=daging-ayam-segar', '283', '2020-07-22 17:46:39', 1, 1, '25'),
(26, '26', 'http://download.rumahsayurkita.com/', '341', '2020-09-14 09:12:52', 1, 1, '26'),
(27, '27', 'http://rumahsayurkita.com/shop?category=sayuran', '338', '2020-09-14 07:32:07', 1, 1, '27'),
(28, '28', 'http://rumahsayurkita.com/shop?category=buah', '339', '2020-09-14 07:33:00', 1, 1, '28'),
(29, '29', 'http://rumahsayurkita.com/shop?category=daging-ayam-segar', '340', '2020-09-14 07:33:24', 1, 1, '29'),
(30, 'banner16_17', '', '104', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', '', '104', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', '', '105', '2019-09-10 11:21:00', 1, 1, '32'),
(33, 'banner18_19', '', '116', '2019-09-10 11:30:35', 1, 1, '33'),
(34, 'banner18_19', '', '116', '2019-09-10 11:30:49', 1, 1, '34'),
(35, 'banner18_19', '', '96', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', '', '96', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', '', '115', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', '', '115', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', '', '107', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', '', '106', '2019-09-11 06:17:58', 1, 1, '40'),
(81, 'ad_banner3', '', '107', '0000-00-00 00:00:00', 1, 1, '41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, NULL),
(2, 'Albania', 'AL', 'ALB', 1, NULL),
(3, 'Algeria', 'DZ', 'DZA', 1, NULL),
(4, 'American Samoa', 'AS', 'ASM', 1, NULL),
(5, 'Andorra', 'AD', 'AND', 1, NULL),
(6, 'Angola', 'AO', 'AGO', 1, NULL),
(7, 'Anguilla', 'AI', 'AIA', 1, NULL),
(8, 'Antarctica', 'AQ', 'ATA', 1, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, NULL),
(10, 'Argentina', 'AR', 'ARG', 1, NULL),
(11, 'Armenia', 'AM', 'ARM', 1, NULL),
(12, 'Aruba', 'AW', 'ABW', 1, NULL),
(13, 'Australia', 'AU', 'AUS', 1, NULL),
(14, 'Austria', 'AT', 'AUT', 5, NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, NULL),
(16, 'Bahamas', 'BS', 'BHS', 1, NULL),
(17, 'Bahrain', 'BH', 'BHR', 1, NULL),
(18, 'Bangladesh', 'BD', 'BGD', 1, NULL),
(19, 'Barbados', 'BB', 'BRB', 1, NULL),
(20, 'Belarus', 'BY', 'BLR', 1, NULL),
(21, 'Belgium', 'BE', 'BEL', 1, NULL),
(22, 'Belize', 'BZ', 'BLZ', 1, NULL),
(23, 'Benin', 'BJ', 'BEN', 1, NULL),
(24, 'Bermuda', 'BM', 'BMU', 1, NULL),
(25, 'Bhutan', 'BT', 'BTN', 1, NULL),
(26, 'Bolivia', 'BO', 'BOL', 1, NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, NULL),
(28, 'Botswana', 'BW', 'BWA', 1, NULL),
(29, 'Bouvet Island', 'BV', 'BVT', 1, NULL),
(30, 'Brazil', 'BR', 'BRA', 1, NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, NULL),
(33, 'Bulgaria', 'BG', 'BGR', 1, NULL),
(34, 'Burkina Faso', 'BF', 'BFA', 1, NULL),
(35, 'Burundi', 'BI', 'BDI', 1, NULL),
(36, 'Cambodia', 'KH', 'KHM', 1, NULL),
(37, 'Cameroon', 'CM', 'CMR', 1, NULL),
(38, 'Canada', 'CA', 'CAN', 1, NULL),
(39, 'Cape Verde', 'CV', 'CPV', 1, NULL),
(40, 'Cayman Islands', 'KY', 'CYM', 1, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 1, NULL),
(42, 'Chad', 'TD', 'TCD', 1, NULL),
(43, 'Chile', 'CL', 'CHL', 1, NULL),
(44, 'China', 'CN', 'CHN', 1, NULL),
(45, 'Christmas Island', 'CX', 'CXR', 1, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, NULL),
(47, 'Colombia', 'CO', 'COL', 1, NULL),
(48, 'Comoros', 'KM', 'COM', 1, NULL),
(49, 'Congo', 'CG', 'COG', 1, NULL),
(50, 'Cook Islands', 'CK', 'COK', 1, NULL),
(51, 'Costa Rica', 'CR', 'CRI', 1, NULL),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, NULL),
(53, 'Croatia', 'HR', 'HRV', 1, NULL),
(54, 'Cuba', 'CU', 'CUB', 1, NULL),
(55, 'Cyprus', 'CY', 'CYP', 1, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 1, NULL),
(57, 'Denmark', 'DK', 'DNK', 1, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 1, NULL),
(59, 'Dominica', 'DM', 'DMA', 1, NULL),
(60, 'Dominican Republic', 'DO', 'DOM', 1, NULL),
(61, 'East Timor', 'TP', 'TMP', 1, NULL),
(62, 'Ecuador', 'EC', 'ECU', 1, NULL),
(63, 'Egypt', 'EG', 'EGY', 1, NULL),
(64, 'El Salvador', 'SV', 'SLV', 1, NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, NULL),
(66, 'Eritrea', 'ER', 'ERI', 1, NULL),
(67, 'Estonia', 'EE', 'EST', 1, NULL),
(68, 'Ethiopia', 'ET', 'ETH', 1, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, NULL),
(70, 'Faroe Islands', 'FO', 'FRO', 1, NULL),
(71, 'Fiji', 'FJ', 'FJI', 1, NULL),
(72, 'Finland', 'FI', 'FIN', 1, NULL),
(73, 'France', 'FR', 'FRA', 1, NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, NULL),
(75, 'French Guiana', 'GF', 'GUF', 1, NULL),
(76, 'French Polynesia', 'PF', 'PYF', 1, NULL),
(77, 'French Southern Territories', 'TF', 'ATF', 1, NULL),
(78, 'Gabon', 'GA', 'GAB', 1, NULL),
(79, 'Gambia', 'GM', 'GMB', 1, NULL),
(80, 'Georgia', 'GE', 'GEO', 1, NULL),
(81, 'Germany', 'DE', 'DEU', 5, NULL),
(82, 'Ghana', 'GH', 'GHA', 1, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 1, NULL),
(84, 'Greece', 'GR', 'GRC', 1, NULL),
(85, 'Greenland', 'GL', 'GRL', 1, NULL),
(86, 'Grenada', 'GD', 'GRD', 1, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 1, NULL),
(88, 'Guam', 'GU', 'GUM', 1, NULL),
(89, 'Guatemala', 'GT', 'GTM', 1, NULL),
(90, 'Guinea', 'GN', 'GIN', 1, NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, NULL),
(92, 'Guyana', 'GY', 'GUY', 1, NULL),
(93, 'Haiti', 'HT', 'HTI', 1, NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, NULL),
(95, 'Honduras', 'HN', 'HND', 1, NULL),
(96, 'Hong Kong', 'HK', 'HKG', 1, NULL),
(97, 'Hungary', 'HU', 'HUN', 1, NULL),
(98, 'Iceland', 'IS', 'ISL', 1, NULL),
(99, 'India', 'IN', 'IND', 1, NULL),
(100, 'Indonesia', 'ID', 'IDN', 1, NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, NULL),
(102, 'Iraq', 'IQ', 'IRQ', 1, NULL),
(103, 'Ireland', 'IE', 'IRL', 1, NULL),
(104, 'Israel', 'IL', 'ISR', 1, NULL),
(105, 'Italy', 'IT', 'ITA', 1, NULL),
(106, 'Jamaica', 'JM', 'JAM', 1, NULL),
(107, 'Japan', 'JP', 'JPN', 1, NULL),
(108, 'Jordan', 'JO', 'JOR', 1, NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, NULL),
(110, 'Kenya', 'KE', 'KEN', 1, NULL),
(111, 'Kiribati', 'KI', 'KIR', 1, NULL),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, NULL),
(114, 'Kuwait', 'KW', 'KWT', 1, NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, NULL),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, NULL),
(117, 'Latvia', 'LV', 'LVA', 1, NULL),
(118, 'Lebanon', 'LB', 'LBN', 1, NULL),
(119, 'Lesotho', 'LS', 'LSO', 1, NULL),
(120, 'Liberia', 'LR', 'LBR', 1, NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, NULL),
(122, 'Liechtenstein', 'LI', 'LIE', 1, NULL),
(123, 'Lithuania', 'LT', 'LTU', 1, NULL),
(124, 'Luxembourg', 'LU', 'LUX', 1, NULL),
(125, 'Macau', 'MO', 'MAC', 1, NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, NULL),
(127, 'Madagascar', 'MG', 'MDG', 1, NULL),
(128, 'Malawi', 'MW', 'MWI', 1, NULL),
(129, 'Malaysia', 'MY', 'MYS', 1, NULL),
(130, 'Maldives', 'MV', 'MDV', 1, NULL),
(131, 'Mali', 'ML', 'MLI', 1, NULL),
(132, 'Malta', 'MT', 'MLT', 1, NULL),
(133, 'Marshall Islands', 'MH', 'MHL', 1, NULL),
(134, 'Martinique', 'MQ', 'MTQ', 1, NULL),
(135, 'Mauritania', 'MR', 'MRT', 1, NULL),
(136, 'Mauritius', 'MU', 'MUS', 1, NULL),
(137, 'Mayotte', 'YT', 'MYT', 1, NULL),
(138, 'Mexico', 'MX', 'MEX', 1, NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, NULL),
(141, 'Monaco', 'MC', 'MCO', 1, NULL),
(142, 'Mongolia', 'MN', 'MNG', 1, NULL),
(143, 'Montserrat', 'MS', 'MSR', 1, NULL),
(144, 'Morocco', 'MA', 'MAR', 1, NULL),
(145, 'Mozambique', 'MZ', 'MOZ', 1, NULL),
(146, 'Myanmar', 'MM', 'MMR', 1, NULL),
(147, 'Namibia', 'NA', 'NAM', 1, NULL),
(148, 'Nauru', 'NR', 'NRU', 1, NULL),
(149, 'Nepal', 'NP', 'NPL', 1, NULL),
(150, 'Netherlands', 'NL', 'NLD', 1, NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, NULL),
(152, 'New Caledonia', 'NC', 'NCL', 1, NULL),
(153, 'New Zealand', 'NZ', 'NZL', 1, NULL),
(154, 'Nicaragua', 'NI', 'NIC', 1, NULL),
(155, 'Niger', 'NE', 'NER', 1, NULL),
(156, 'Nigeria', 'NG', 'NGA', 1, NULL),
(157, 'Niue', 'NU', 'NIU', 1, NULL),
(158, 'Norfolk Island', 'NF', 'NFK', 1, NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, NULL),
(160, 'Norway', 'NO', 'NOR', 1, NULL),
(161, 'Oman', 'OM', 'OMN', 1, NULL),
(162, 'Pakistan', 'PK', 'PAK', 1, NULL),
(163, 'Palau', 'PW', 'PLW', 1, NULL),
(164, 'Panama', 'PA', 'PAN', 1, NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, NULL),
(166, 'Paraguay', 'PY', 'PRY', 1, NULL),
(167, 'Peru', 'PE', 'PER', 1, NULL),
(168, 'Philippines', 'PH', 'PHL', 1, NULL),
(169, 'Pitcairn', 'PN', 'PCN', 1, NULL),
(170, 'Poland', 'PL', 'POL', 1, NULL),
(171, 'Portugal', 'PT', 'PRT', 1, NULL),
(172, 'Puerto Rico', 'PR', 'PRI', 1, NULL),
(173, 'Qatar', 'QA', 'QAT', 1, NULL),
(174, 'Reunion', 'RE', 'REU', 1, NULL),
(175, 'Romania', 'RO', 'ROM', 1, NULL),
(176, 'Russian Federation', 'RU', 'RUS', 1, NULL),
(177, 'Rwanda', 'RW', 'RWA', 1, NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, NULL),
(179, 'Saint Lucia', 'LC', 'LCA', 1, NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, NULL),
(181, 'Samoa', 'WS', 'WSM', 1, NULL),
(182, 'San Marino', 'SM', 'SMR', 1, NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, NULL),
(185, 'Senegal', 'SN', 'SEN', 1, NULL),
(186, 'Seychelles', 'SC', 'SYC', 1, NULL),
(187, 'Sierra Leone', 'SL', 'SLE', 1, NULL),
(188, 'Singapore', 'SG', 'SGP', 4, NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, NULL),
(190, 'Slovenia', 'SI', 'SVN', 1, NULL),
(191, 'Solomon Islands', 'SB', 'SLB', 1, NULL),
(192, 'Somalia', 'SO', 'SOM', 1, NULL),
(193, 'South Africa', 'ZA', 'ZAF', 1, NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, NULL),
(195, 'Spain', 'ES', 'ESP', 3, NULL),
(196, 'Sri Lanka', 'LK', 'LKA', 1, NULL),
(197, 'St. Helena', 'SH', 'SHN', 1, NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, NULL),
(199, 'Sudan', 'SD', 'SDN', 1, NULL),
(200, 'Suriname', 'SR', 'SUR', 1, NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, NULL),
(202, 'Swaziland', 'SZ', 'SWZ', 1, NULL),
(203, 'Sweden', 'SE', 'SWE', 1, NULL),
(204, 'Switzerland', 'CH', 'CHE', 1, NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, NULL),
(206, 'Taiwan', 'TW', 'TWN', 1, NULL),
(207, 'Tajikistan', 'TJ', 'TJK', 1, NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, NULL),
(209, 'Thailand', 'TH', 'THA', 1, NULL),
(210, 'Togo', 'TG', 'TGO', 1, NULL),
(211, 'Tokelau', 'TK', 'TKL', 1, NULL),
(212, 'Tonga', 'TO', 'TON', 1, NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, NULL),
(214, 'Tunisia', 'TN', 'TUN', 1, NULL),
(215, 'Turkey', 'TR', 'TUR', 1, NULL),
(216, 'Turkmenistan', 'TM', 'TKM', 1, NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, NULL),
(218, 'Tuvalu', 'TV', 'TUV', 1, NULL),
(219, 'Uganda', 'UG', 'UGA', 1, NULL),
(220, 'Ukraine', 'UA', 'UKR', 1, NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, NULL),
(222, 'United Kingdom', 'GB', 'GBR', 1, NULL),
(223, 'United States', 'US', 'USA', 2, NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, NULL),
(225, 'Uruguay', 'UY', 'URY', 1, NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, NULL),
(227, 'Vanuatu', 'VU', 'VUT', 1, NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, NULL),
(229, 'Venezuela', 'VE', 'VEN', 1, NULL),
(230, 'Viet Nam', 'VN', 'VNM', 1, NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, NULL),
(234, 'Western Sahara', 'EH', 'ESH', 1, NULL),
(235, 'Yemen', 'YE', 'YEM', 1, NULL),
(236, 'Yugoslavia', 'YU', 'YUG', 1, NULL),
(237, 'Zaire', 'ZR', 'ZAR', 1, NULL),
(238, 'Zambia', 'ZM', 'ZMB', 1, NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_current` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, NULL, NULL, '2', '2019-09-06 08:33:11', '2019-09-06 08:33:11', 1.00000000, 0, 1, 1),
(2, 'Indonesia', 'IDR', 'Rp', '', NULL, '', '0', '2020-07-20 07:55:52', '2020-07-20 07:55:52', 1.00000000, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

CREATE TABLE `currency_record` (
  `id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(64, 'IDR', 'Indonesian Rupiah'),
(151, 'USD', 'United States Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `top_offer` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `transitions` int(11) NOT NULL,
  `banner_two` int(11) NOT NULL,
  `category` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `top_offer`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banner_two`, `category`) VALUES
(1, 1, 9, 1, 15, 5, '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":2,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":3,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":4,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":5,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":6,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":7,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":8,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":9,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":10,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":11,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":13,\"name\":\"Category\",\"order\":12,\"file_name\":\"Category_section\",\"status\":1,\"image\":\"images\\/prototypes\\/category_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/category_section-cross.jpg\",\"alt\":\"Category 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":13,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"}]', 1, 1, 1, 1, 1, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT 0,
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`) VALUES
(1, 4, '1', 1, '8750.00', '2020-08-31', 1, 'iKyDSOhRKyYSNH5dgYRF0Vl0WIFIrMFVe1i7U8xP');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(4, '2020-09-15 05:50:16', 1, '2020-09-15 05:50:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delievery_time_slots`
--

CREATE TABLE `delievery_time_slots` (
  `delievery_time_slots_id` int(11) NOT NULL,
  `time_from` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `time_to` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delievery_time_slot_with_zone`
--

CREATE TABLE `delievery_time_slot_with_zone` (
  `delievery_time_slot_with_zone_id` int(11) NOT NULL,
  `time_from` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `time_to` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_price` decimal(15,2) NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy_info`
--

CREATE TABLE `deliveryboy_info` (
  `deliveryboy_info_id` int(11) NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `blood_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bike_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bike_details` text COLLATE utf8_unicode_ci NOT NULL,
  `bike_color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `owner_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_registration_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `driving_license_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_rc_book_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `availability_status` tinyint(1) NOT NULL DEFAULT 1,
  `commission` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `device_type` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operating_system` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(11) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `floating_cash`
--

CREATE TABLE `floating_cash` (
  `floating_cash_id` int(11) NOT NULL,
  `deliveryboy_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

CREATE TABLE `front_end_theme_content` (
  `id` int(11) NOT NULL,
  `top_offers` text COLLATE utf8_unicode_ci NOT NULL,
  `headers` text COLLATE utf8_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8_unicode_ci NOT NULL,
  `banners` text COLLATE utf8_unicode_ci NOT NULL,
  `footers` text COLLATE utf8_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8_unicode_ci NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `news` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `shop` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `login` text COLLATE utf8_unicode_ci NOT NULL,
  `transitions` text COLLATE utf8_unicode_ci NOT NULL,
  `banners_two` text COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `top_offers`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banners_two`, `category`) VALUES
(1, '[{ \"id\": 1, \"name\": \"Top Offer\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Top Offer\" }]', '[\n{\n\"id\": 1,\n\"name\": \"Header One\",\n\"image\": \"images/prototypes/header1.jpg\",\n\"alt\" : \"header One\" \n},\n{\n\"id\": 2,\n\"name\": \"Header Two\",\n\"image\": \"images/prototypes/header2.jpg\",\n\"alt\" : \"header Two\" \n},\n{\n\"id\": 3,\n\"name\": \"Header Three\",\n\"image\": \"images/prototypes/header3.jpg\",\n\"alt\" : \"header Three\" \n},\n{\n\"id\": 4,\n\"name\": \"Header Four\",\n\"image\": \"images/prototypes/header4.jpg\",\n\"alt\" : \"header Four\" \n},\n{\n\"id\": 5,\n\"name\": \"Header Five\",\n\"image\": \"images/prototypes/header5.jpg\",\n\"alt\" : \"header Five\" \n},\n{\n\"id\": 6,\n\"name\": \"Header Six\",\n\"image\": \"images/prototypes/header6.jpg\",\n\"alt\" : \"header Six\" \n},\n{\n\"id\": 7,\n\"name\": \"Header Seven\",\n\"image\": \"images/prototypes/header7.jpg\",\n\"alt\" : \"header Seven\" \n},\n{\n\"id\": 8,\n\"name\": \"Header Eight\",\n\"image\": \"images/prototypes/header8.jpg\",\n\"alt\" : \"header Eight\" \n},\n{\n\"id\": 9,\n\"name\": \"Header Nine\",\n\"image\": \"images/prototypes/header9.jpg\",\n\"alt\" : \"header Nine\" \n},\n{\n\"id\": 10,\n\"name\": \"Header Ten\",\n\"image\": \"images/prototypes/header10.jpg\",\n\"alt\" : \"header Ten\" \n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Bootstrap Carousel Content Full Screen\",\n\"image\": \"images/prototypes/carousal1.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\n},\n{\n\"id\": 2,\n\"name\": \"Bootstrap Carousel Content Full Width\",\n\"image\": \"images/prototypes/carousal2.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Width\"\n},\n{\n\"id\": 3,\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\n\"image\": \"images/prototypes/carousal3.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\n},\n{\n\"id\": 4,\n\"name\": \"Bootstrap Carousel Content with Navigation\",\n\"image\": \"images/prototypes/carousal4.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\n},\n{\n\"id\": 5,\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\n\"image\": \"images/prototypes/carousal5.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Banner One\",\n\"image\": \"images/prototypes/banner1.jpg\",\n\"alt\": \"Banner One\"\n},\n{\n\"id\": 2,\n\"name\": \"Banner Two\",\n\"image\": \"images/prototypes/banner2.jpg\",\n\"alt\": \"Banner Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Banner Three\",\n\"image\": \"images/prototypes/banner3.jpg\",\n\"alt\": \"Banner Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Banner Four\",\n\"image\": \"images/prototypes/banner4.jpg\",\n\"alt\": \"Banner Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Banner Five\",\n\"image\": \"images/prototypes/banner5.jpg\",\n\"alt\": \"Banner Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Banner Six\",\n\"image\": \"images/prototypes/banner6.jpg\",\n\"alt\": \"Banner Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Banner Seven\",\n\"image\": \"images/prototypes/banner7.jpg\",\n\"alt\": \"Banner Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Banner Eight\",\n\"image\": \"images/prototypes/banner8.jpg\",\n\"alt\": \"Banner Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Banner Nine\",\n\"image\": \"images/prototypes/banner9.jpg\",\n\"alt\": \"Banner Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Banner Ten\",\n\"image\": \"images/prototypes/banner10.jpg\",\n\"alt\": \"Banner Ten\"\n},\n{\n\"id\": 11,\n\"name\": \"Banner Eleven\",\n\"image\": \"images/prototypes/banner11.jpg\",\n\"alt\": \"Banner Eleven\"\n},\n{\n\"id\": 12,\n\"name\": \"Banner Twelve\",\n\"image\": \"images/prototypes/banner12.jpg\",\n\"alt\": \"Banner Twelve\"\n},\n{\n\"id\": 13,\n\"name\": \"Banner Thirteen\",\n\"image\": \"images/prototypes/banner13.jpg\",\n\"alt\": \"Banner Thirteen\"\n},\n{\n\"id\": 14,\n\"name\": \"Banner Fourteen\",\n\"image\": \"images/prototypes/banner14.jpg\",\n\"alt\": \"Banner Fourteen\"\n},\n{\n\"id\": 15,\n\"name\": \"Banner Fifteen\",\n\"image\": \"images/prototypes/banner15.jpg\",\n\"alt\": \"Banner Fifteen\"\n},\n{\n\"id\": 16,\n\"name\": \"Banner Sixteen\",\n\"image\": \"images/prototypes/banner16.jpg\",\n\"alt\": \"Banner Sixteen\"\n},\n{\n\"id\": 17,\n\"name\": \"Banner Seventeen\",\n\"image\": \"images/prototypes/banner17.jpg\",\n\"alt\": \"Banner Seventeen\"\n},\n{\n\"id\": 18,\n\"name\": \"Banner Eighteen\",\n\"image\": \"images/prototypes/banner18.jpg\",\n\"alt\": \"Banner Eighteen\"\n},\n{\n\"id\": 19,\n\"name\": \"Banner Nineteen\",\n\"image\": \"images/prototypes/banner19.jpg\",\n\"alt\": \"Banner Nineteen\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Footer One\",\n\"image\": \"images/prototypes/footer1.png\",\n\"alt\" : \"Footer One\"\n},\n{\n\"id\": 2,\n\"name\": \"Footer Two\",\n\"image\": \"images/prototypes/footer2.png\",\n\"alt\" : \"Footer Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Footer Three\",\n\"image\": \"images/prototypes/footer3.png\",\n\"alt\" : \"Footer Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Footer Four\",\n\"image\": \"images/prototypes/footer4.png\",\n\"alt\" : \"Footer Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Footer Five\",\n\"image\": \"images/prototypes/footer5.png\",\n\"alt\" : \"Footer Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Footer Six\",\n\"image\": \"images/prototypes/footer6.png\",\n\"alt\" : \"Footer Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Footer Seven\",\n\"image\": \"images/prototypes/footer7.png\",\n\"alt\" : \"Footer Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Footer Eight\",\n\"image\": \"images/prototypes/footer8.png\",\n\"alt\" : \"Footer Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Footer Nine\",\n\"image\": \"images/prototypes/footer9.png\",\n\"alt\" : \"Footer Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Footer Ten\",\n\"image\": \"images/prototypes/footer10.png\",\n\"alt\" : \"Footer Ten\"\n}\n]', '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":2,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":3,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":4,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":5,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":6,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":7,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":8,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":9,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":10,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":11,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":13,\"name\":\"Category\",\"order\":12,\"file_name\":\"Category_section\",\"status\":1,\"image\":\"images\\/prototypes\\/category_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/category_section-cross.jpg\",\"alt\":\"Category 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":13,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"News One\"    },    {         \"id\":2,       \"name\":\"News Two\"    }     ]', '[  \n{  \n\"id\":1,\n\"name\":\"Product Detail Page One\"\n},\n{  \n\"id\":2,\n\"name\":\"Product Detail Page Two\"\n},\n{  \n\"id\":3,\n\"name\":\"Product Detail Page Three\"\n},\n{  \n\"id\":4,\n\"name\":\"Product Detail Page Four\"\n},\n{  \n\"id\":5,\n\"name\":\"Product Detail Page Five\"\n},\n{  \n\"id\":6,\n\"name\":\"Product Detail Page Six\"\n}\n\n]', '[ { \"id\":1, \"name\":\"Shop Page One\" }, { \"id\":2, \"name\":\"Shop Page Two\" }, { \"id\":3, \"name\":\"Shop Page Three\" }, { \"id\":4, \"name\":\"Shop Page Four\" }, { \"id\":5, \"name\":\"Shop Page Five\" } ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Login Page One\"    },    {         \"id\":2,       \"name\":\"Login Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Transition Zoomin\"    },    {         \"id\":2,       \"name\":\"Transition Flashing\"    },    {         \"id\":3,       \"name\":\"Transition Shine\"    },    {         \"id\":4,       \"name\":\"Transition Circle\"    },    {         \"id\":5,       \"name\":\"Transition Opacity\"    } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]', '1');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `home_banners_id` bigint(20) UNSIGNED NOT NULL,
  `banner_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`home_banners_id`, `banner_name`, `language_id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'banners_1', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <div class=\\\"parallax-banner-text\\\">\r\n        <h2> Food Festival</h2>\r\n        <h4>Idul Adha Special</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">Belanja Sekarang</a>\r\n        </div>  \r\n      </div>      </div>', 280, '2020-07-22 06:11:18', '2020-07-22 06:11:18'),
(2, 'banners_2', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <div class=\\\"parallax-banner-text\\\">\r\n        <h2> BELANJA</h2>\r\n        <h4>TANPA HARUS RIBET KELUAR RUMAH</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">belanja Sekarang</a>\r\n        </div>  \r\n      </div>      </div>', 281, '2020-07-22 06:11:18', '2020-07-22 06:11:18'),
(3, 'banners_3', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <div class=\\\"parallax-banner-text\\\">\r\n        <h2> ZONA BELANJA</h2>\r\n        <h4>FAVORITE ANDA</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">belanja Sekarang</a>\r\n        </div>  \r\n      </div>      </div>', 282, '2020-07-22 06:11:18', '2020-07-22 06:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

CREATE TABLE `http_call_record` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `http_call_record`
--

INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(1, 'mj3gi750fl42y--25tlzqxly5dmzm3cf', '15.2.0.10', 'sitesetting', '2020-09-07 06:35:46', '0000-00-00 00:00:00'),
(2, 'js7fja0xy5gi5dq2edkpk24b6ifr69i9', '15.2.0.10', 'getallpages', '2020-09-07 06:35:46', '0000-00-00 00:00:00'),
(3, 'w3bofz-enkmpxo3z1i00pbq-5kvit235', '15.2.0.10', 'getallproducts', '2020-09-07 06:35:58', '0000-00-00 00:00:00'),
(4, 'sytdqnqdvfq1a230fwlb1naqdg57-13n', '15.2.0.10', 'getallproducts', '2020-09-07 06:35:58', '0000-00-00 00:00:00'),
(5, 'z1nn52js6srmin2c7bdh7w9w-easfv8i', '15.2.0.10', 'getallproducts', '2020-09-07 06:35:58', '0000-00-00 00:00:00'),
(6, '6jfhma2t-uk4h-i9ti7hpqvtq2aerq8c', '15.2.0.10', 'registerdevices', '2020-09-07 06:35:58', '0000-00-00 00:00:00'),
(7, 'x90uydobxd129b9d1w0gngnav1azrnym', '15.2.0.10', 'getallproducts', '2020-09-07 06:35:58', '0000-00-00 00:00:00'),
(8, 'xey-vcj4iyn9ehuybsp7rrrz-7qo74fy', '15.2.0.10', 'getbanners', '2020-09-07 06:35:58', '0000-00-00 00:00:00'),
(9, 'jc3cc2cvf8zgd2eqhyugkyzpgcsn90e9', '15.2.0.10', 'sitesetting', '2020-09-07 06:36:05', '0000-00-00 00:00:00'),
(10, '8whqg7i1y7riiym2913rv2tkfxqqih4m', '15.2.0.10', 'getallpages', '2020-09-07 06:36:05', '0000-00-00 00:00:00'),
(11, 'l3q2sl36m5re1v4bxkjpw-b36g2cdqqn', '15.2.0.10', 'getbanners', '2020-09-07 06:36:06', '0000-00-00 00:00:00'),
(12, 'mrcibrw6bvm07rd1-l9qgf7o8wjfl24y', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:06', '0000-00-00 00:00:00'),
(13, 'yd2znl4p9cbpkx0u0ozenro8z38kizg0', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:06', '0000-00-00 00:00:00'),
(14, 'y98zugcq3w5p6o0a6bi4lqanaqfcwfmv', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:06', '0000-00-00 00:00:00'),
(15, 'qyz4yj8pg3ovkdxmavjzzaurzx6b3rys', '15.2.0.10', 'allcategories', '2020-09-07 06:36:06', '0000-00-00 00:00:00'),
(16, '-5fl2y67p53faw35nlttrf58-k28pw-p', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:06', '0000-00-00 00:00:00'),
(17, '031kku67yjsfrpne5o20nauq3g79l24g', '15.2.0.10', 'sitesetting', '2020-09-07 06:36:39', '0000-00-00 00:00:00'),
(18, 'hizvq-w0q2jzhlafi9kc3kvxcjnvefn0', '15.2.0.10', 'getallpages', '2020-09-07 06:36:39', '0000-00-00 00:00:00'),
(19, '4-c5wvf7hgeiwrdjt-y24pmlydga8ee4', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:40', '0000-00-00 00:00:00'),
(20, 'cw9s732wf2rcmtkfy1pvf5lyij-eodtr', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:40', '0000-00-00 00:00:00'),
(21, '-06yf3l3a06d38ue556s7eyhd8xx1w5j', '15.2.0.10', 'getbanners', '2020-09-07 06:36:40', '0000-00-00 00:00:00'),
(22, 'lqiiuxp4ycy6y1wylhzn91-hizm21q-1', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:40', '0000-00-00 00:00:00'),
(23, '59b-r-kda4ub9v7lrtcm7j8x3goaptpi', '15.2.0.10', 'getallproducts', '2020-09-07 06:36:40', '0000-00-00 00:00:00'),
(24, 'fss6-pktg5961s5xlhuyz2hh6sap6-85', '15.2.0.10', 'allcategories', '2020-09-07 06:36:40', '0000-00-00 00:00:00'),
(25, '5xjjbnmirjhm8xoci53yo6lutszcqk3c', '15.2.0.10', 'sitesetting', '2020-09-07 07:15:43', '0000-00-00 00:00:00'),
(26, 'nolnuo54upfe60408uvy5cybxofl9vgw', '15.2.0.10', 'getallpages', '2020-09-07 07:15:44', '0000-00-00 00:00:00'),
(27, 'tzxkkvtw9rsxt4gqujtdxw3d7uwlhzg-', '15.2.0.10', 'sitesetting', '2020-09-07 07:15:44', '0000-00-00 00:00:00'),
(28, '3ebnm10e5s1ar4ukxarphwtjt08faagg', '15.2.0.10', 'getallpages', '2020-09-07 07:15:44', '0000-00-00 00:00:00'),
(29, 'nh31tb2akxoz6iaxclrzwh379p027gnn', '15.2.0.10', 'getallproducts', '2020-09-07 07:15:44', '0000-00-00 00:00:00'),
(30, 'wzqc2qhsrez3-wro0r2kd094jfi6tz82', '15.2.0.10', 'getallproducts', '2020-09-07 07:15:44', '0000-00-00 00:00:00'),
(31, '54ymltslq2q07u5dn8afw1hlp13uu30c', '15.2.0.10', 'getallproducts', '2020-09-07 07:15:45', '0000-00-00 00:00:00'),
(32, '-n-gtnesh-ssgyzp6k4jfh2p49z8trda', '15.2.0.10', 'getbanners', '2020-09-07 07:15:45', '0000-00-00 00:00:00'),
(33, 'ju-xaz4xpepmofjewc3w-cd269q6dacm', '15.2.0.10', 'getallproducts', '2020-09-07 07:15:45', '0000-00-00 00:00:00'),
(34, 'fjnrwy6x96t4t7iqxx1zh0fuin0nprvm', '15.2.0.10', 'sitesetting', '2020-09-07 07:38:29', '0000-00-00 00:00:00'),
(35, 'kmfmdqh087vz4yt2z01hnerxyynyt6w9', '15.2.0.10', 'getallpages', '2020-09-07 07:38:29', '0000-00-00 00:00:00'),
(36, 'uc8h8nqe43ies0l44ahg641dmq31hry-', '15.2.0.10', 'sitesetting', '2020-09-07 07:38:30', '0000-00-00 00:00:00'),
(37, 'nmsspc7kgmms1opb6l-cy2l9f-wrgqov', '15.2.0.10', 'getallpages', '2020-09-07 07:38:30', '0000-00-00 00:00:00'),
(38, '14i9eiix97tgy2j-96cs49pauqh04mwc', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:34', '0000-00-00 00:00:00'),
(39, 'afrhuqwwpd55supreylliztgps7jatjl', '15.2.0.10', 'registerdevices', '2020-09-07 07:38:34', '0000-00-00 00:00:00'),
(40, '2fmzc8nqn7792ern11zvceltt4son-5v', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:35', '0000-00-00 00:00:00'),
(41, '84oj26a-h2mj449d1ox-ylnhue937pc5', '15.2.0.10', 'getbanners', '2020-09-07 07:38:35', '0000-00-00 00:00:00'),
(42, 'pv95bdvibd5y4ezxfq98m91u7h2a0on-', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:35', '0000-00-00 00:00:00'),
(43, 'etybbfim0sneisy3-b9bvgatxcm7sy-u', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:35', '0000-00-00 00:00:00'),
(44, 'jj5t6da329q0paig6udwccjwenou9fae', '15.2.0.10', 'allcategories', '2020-09-07 07:38:35', '0000-00-00 00:00:00'),
(45, 'w2mv7rce3co4r4d10ww72-e4mzbgtvub', '15.2.0.10', 'sitesetting', '2020-09-07 07:38:52', '0000-00-00 00:00:00'),
(46, '6ofp0avad50rp20mzk6ho25tjpvodfr1', '15.2.0.10', 'getallpages', '2020-09-07 07:38:53', '0000-00-00 00:00:00'),
(47, 'dbydc7-l0vmp4uosabhkljvme3e8zx5l', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:53', '0000-00-00 00:00:00'),
(48, '-aq8lsgzqvjo4kxgiztbqzjfuk15wk4s', '15.2.0.10', 'getbanners', '2020-09-07 07:38:53', '0000-00-00 00:00:00'),
(49, 'whrq7rnbim0bb4sk7pstvlb27szwc78w', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:53', '0000-00-00 00:00:00'),
(50, 'ned47uok1ey7hoolq9mfl0bt2c6hxy8t', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:53', '0000-00-00 00:00:00'),
(51, 'cu8aqrnbe6mvybmvh4t9zpxcdbzfopy4', '15.2.0.10', 'getallproducts', '2020-09-07 07:38:53', '0000-00-00 00:00:00'),
(52, '04vihj1poyltql-3ayk-hn94hbecs4ih', '15.2.0.10', 'allcategories', '2020-09-07 07:38:54', '0000-00-00 00:00:00'),
(53, 'omteywbgbdhkt9eh3p54jf3fea59zaat', '15.2.0.10', 'sitesetting', '2020-09-07 07:38:59', '0000-00-00 00:00:00'),
(54, 'fzlldccaanu1dbon0d100d5lkcgdx0rj', '15.2.0.10', 'getallpages', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(55, 'rzyt-ysqoo022umohmybbr8556gxi87g', '15.2.0.10', 'getallproducts', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(56, 'tvyao6z-ukbuy2hn2ajydcl14m2nwz3o', '15.2.0.10', 'getbanners', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(57, 'k0ak1tw3uz1pob-imy82ogf75y27bums', '15.2.0.10', 'getallproducts', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(58, 'kp9ileyjtdjg1712ts4mcnaxx3u7wiws', '15.2.0.10', 'getallproducts', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(59, 'y7ao1v1iqhcxva0iwumocvuh613517q8', '15.2.0.10', 'getallproducts', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(60, 'nsyx9hehhqtmwumhuk4unirowyo58pkb', '15.2.0.10', 'allcategories', '2020-09-07 07:39:00', '0000-00-00 00:00:00'),
(61, 'gtp35qrkp4d6xd2xxxmy2350v--5w6j6', '15.2.0.10', 'sitesetting', '2020-09-07 08:12:19', '0000-00-00 00:00:00'),
(62, '5jzk--udwk-nkg0db6qvfdfxtxhiww7z', '15.2.0.10', 'getallpages', '2020-09-07 08:12:19', '0000-00-00 00:00:00'),
(63, 'x1hpg6i2rgcux2jxb96wr6n86lzs5jw1', '15.2.0.10', 'sitesetting', '2020-09-07 08:12:19', '0000-00-00 00:00:00'),
(64, 'wjkhm0gtbuqkqrun1fzqs0h650fowefp', '15.2.0.10', 'getallpages', '2020-09-07 08:12:20', '0000-00-00 00:00:00'),
(65, 'q0d78w5stg3gb7jkwhea2ld0xicskdxv', '15.2.0.10', 'getallproducts', '2020-09-07 08:12:26', '0000-00-00 00:00:00'),
(66, 'lqpbqr6lo8rx3cv1jwm3ubtzcvrrx-77', '15.2.0.10', 'registerdevices', '2020-09-07 08:12:26', '0000-00-00 00:00:00'),
(67, '95e3c1-j0k6om2ojvt75pf-zwlleuhew', '15.2.0.10', 'getallproducts', '2020-09-07 08:12:26', '0000-00-00 00:00:00'),
(68, 'khqhzfuvywu1gutjxxyeb6lcl74pgj3r', '15.2.0.10', 'getallproducts', '2020-09-07 08:12:26', '0000-00-00 00:00:00'),
(69, 'hw3308nwhmmt5rzmtq7ds1zgzphu50er', '15.2.0.10', 'getbanners', '2020-09-07 08:12:26', '0000-00-00 00:00:00'),
(70, '09fgims2agzm7auyd2fk18c2q1yd6-4j', '15.2.0.10', 'getallproducts', '2020-09-07 08:12:26', '0000-00-00 00:00:00'),
(71, 'r5x7i63wrg2u4whr22enat5842axyt0g', '15.2.0.10', 'allcategories', '2020-09-07 08:12:27', '0000-00-00 00:00:00'),
(72, 'ki6jhnq80ijg-48ougc5h1n1ovinm8xe', '15.2.0.10', 'sitesetting', '2020-09-07 13:52:04', '0000-00-00 00:00:00'),
(73, 'nltgbywlhh5u8rtf7-ypc0k3bca-c4yd', '15.2.0.10', 'getallpages', '2020-09-07 13:52:04', '0000-00-00 00:00:00'),
(74, '-16b3hvraz9ufw5ukiiv9gnknte4wmg6', '15.2.0.10', 'sitesetting', '2020-09-07 13:52:05', '0000-00-00 00:00:00'),
(75, 'fbycds6whsch9ab87ff2pp-jvkv8vtat', '15.2.0.10', 'getallpages', '2020-09-07 13:52:05', '0000-00-00 00:00:00'),
(76, 'ldugsqod-l99dxim3g14171ydham0vxi', '15.2.0.10', 'registerdevices', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(77, '9taw4gsjgms7-icjf08m43vy5dyiw306', '15.2.0.10', 'getbanners', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(78, 'pmv0fite9t3yyb7mlfxwrurngbmcm-yz', '15.2.0.10', 'allcategories', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(79, '89068ruu9m1kmy2pajx4re450jdo3ul0', '15.2.0.10', 'getfilters', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(80, 'en5e0khz4d8rw-k08bi7vx-ro1w3ucyf', '15.2.0.10', 'getallproducts', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(81, 'v7i72qg0bq9sh85p0r-2rn3839xdfgcv', '15.2.0.10', 'getfilters', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(82, 'qe8ph8owquo47hku45ak64v881kj6tnk', '15.2.0.10', 'getallproducts', '2020-09-07 13:52:10', '0000-00-00 00:00:00'),
(83, '7vqz3-4z958qu8qgjoh6p625e5kbv61n', '15.2.0.10', 'sitesetting', '2020-09-07 13:52:37', '0000-00-00 00:00:00'),
(84, 'l7ckvxole5jspe-wbu9mvkd-ly4qmka0', '15.2.0.10', 'getallpages', '2020-09-07 13:52:37', '0000-00-00 00:00:00'),
(85, '3irc09y434g5ebo5z3ddmgw0-pojajec', '15.2.0.10', 'getbanners', '2020-09-07 13:52:37', '0000-00-00 00:00:00'),
(86, 'uq9kd6h1h596qk9wh619yew-1d3fglxb', '15.2.0.10', 'allcategories', '2020-09-07 13:52:37', '0000-00-00 00:00:00'),
(87, 'dllhdeplaiger11y2j-ohiflt004hkgb', '15.2.0.10', 'getallproducts', '2020-09-07 13:52:38', '0000-00-00 00:00:00'),
(88, '8onw7jljz4hm7oc8bdfyxpd09-a4wtk8', '15.2.0.10', 'getallproducts', '2020-09-07 13:52:38', '0000-00-00 00:00:00'),
(89, '6gx3zx68i1f--hxryw7tlenihfk35jgc', '15.2.0.10', 'getfilters', '2020-09-07 13:52:38', '0000-00-00 00:00:00'),
(90, 'e7wfu7j61pwx3r94gk6t5kr9v2l5-57y', '15.2.0.10', 'getfilters', '2020-09-07 13:52:38', '0000-00-00 00:00:00'),
(91, 'bdrqkd-bre2my2p3axokvqtmq1bv2i5t', '15.2.0.10', 'sitesetting', '2020-09-07 13:52:38', '0000-00-00 00:00:00'),
(92, 'q78aq8qoghaugt487m--8fmavd4od6g8', '15.2.0.10', 'sitesetting', '2020-09-07 13:57:01', '0000-00-00 00:00:00'),
(93, 'jnasbmrgt7z-3oebrlgofw0qak-9de71', '15.2.0.10', 'getallpages', '2020-09-07 13:57:01', '0000-00-00 00:00:00'),
(94, '43v1cqhfx06e384ttiy3aumch6hhehuj', '15.2.0.10', 'registerdevices', '2020-09-07 13:57:05', '0000-00-00 00:00:00'),
(95, '7i4wkxmkq92t9ltytybtrhgq-xrm6178', '15.2.0.10', 'getbanners', '2020-09-07 13:57:06', '0000-00-00 00:00:00'),
(96, '3s7upknql-ynszbgx7c6bsmvde2l7r0n', '15.2.0.10', 'allcategories', '2020-09-07 13:57:06', '0000-00-00 00:00:00'),
(97, '8bwjjmo185tssl-0d9vwvw2cvr5gb7pa', '15.2.0.10', 'getallproducts', '2020-09-07 13:57:06', '0000-00-00 00:00:00'),
(98, '2jqklobl9f-15xgnljveqm4yq3fvjyua', '15.2.0.10', 'getfilters', '2020-09-07 13:57:06', '0000-00-00 00:00:00'),
(99, 'mm7cw1itkya3693frw7hau6oyoqsc5gy', '15.2.0.10', 'getallproducts', '2020-09-07 13:57:06', '0000-00-00 00:00:00'),
(100, 'n0x0zq2vglrsds3fcduzhstip-zuvwfe', '15.2.0.10', 'getfilters', '2020-09-07 13:57:06', '0000-00-00 00:00:00'),
(101, '4dwh41l2g5v2a5p-j52x-ff-dogpyt26', '15.2.0.10', 'sitesetting', '2020-09-07 14:09:02', '2000-07-16 00:00:00'),
(102, 'z77h7kx6blm2jt3fudubdiaefgnn-hh0', '15.2.0.10', 'getallpages', '2020-09-07 14:09:03', '0000-00-00 00:00:00'),
(103, 'kric0kg91ravt1vgwayicobefp16-lhj', '15.2.0.10', 'sitesetting', '2020-09-07 14:09:03', '0000-00-00 00:00:00'),
(104, 'y3pzdliifomaca2ldaio0gc77a-ac66q', '15.2.0.10', 'getallpages', '2020-09-07 14:09:03', '0000-00-00 00:00:00'),
(105, 'df7iqqpx4xtryg26my-vsqeml7byja7s', '15.2.0.10', 'registerdevices', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(106, 'i-9z87igicl0zhzglaznrg4f-xbha7m1', '15.2.0.10', 'getbanners', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(107, '598d7lh5uz4ij884c8j11kojoxgs3s38', '15.2.0.10', 'allcategories', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(108, 'wui4bq05ffatcvu85er2aiwna6x0o733', '15.2.0.10', 'getallproducts', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(109, '8dm6ua8ua6g5we3wcdvskomdd7oa5spi', '15.2.0.10', 'getfilters', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(110, 'ybc0z1kgz5rochjys8lg72h2jd-e0pas', '15.2.0.10', 'getallproducts', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(111, 'rnz7p195br2uejfvzr8stgzllqlur6ac', '15.2.0.10', 'getfilters', '2020-09-07 14:09:08', '0000-00-00 00:00:00'),
(112, 'hfozclo656-t9g60jgxj-ny3eiyvcz7q', '15.2.0.10', 'sitesetting', '2020-09-07 14:09:20', '0000-00-00 00:00:00'),
(113, '833ja3px2ndq150apt1t1i2e9g4buiff', '15.2.0.10', 'getallpages', '2020-09-07 14:09:20', '0000-00-00 00:00:00'),
(114, '-nceg79o1ucmtw5t8vr9gf66if8yp4pn', '15.2.0.10', 'getbanners', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(115, 'x6f36bolsids6zjksvnztb7j927s97xq', '15.2.0.10', 'allcategories', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(116, '5esdkm7oclvexmhughqfy6xzea5rq64z', '15.2.0.10', 'getallproducts', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(117, 'mlhtzm2dc31tmsa45j0br-c2lh8tikv2', '15.2.0.10', 'getfilters', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(118, 'h36y2a-upr38irdric57dmg97fjujd8m', '15.2.0.10', 'getfilters', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(119, '03zn4fagb4a9-iei25ld5xxbph8yhq24', '15.2.0.10', 'getallproducts', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(120, 'abvolr5vu0r78870frfkyr4jrh3gix4o', '15.2.0.10', 'sitesetting', '2020-09-07 14:09:21', '0000-00-00 00:00:00'),
(121, 'c4brc9sh49qwqvjbuzi99o9efgswu8i3', '15.2.0.10', 'sitesetting', '2020-09-07 14:09:28', '0000-00-00 00:00:00'),
(122, '2wj-wrka-88aahc5z49biqyj2fiep733', '15.2.0.10', 'getallpages', '2020-09-07 14:09:28', '0000-00-00 00:00:00'),
(123, 'vmim0b788dyxg63ir13ox4d59uy0gnr1', '15.2.0.10', 'getbanners', '2020-09-07 14:09:28', '0000-00-00 00:00:00'),
(124, 'm86cvlpuh1khz4ud1y-gcnxqjwioj555', '15.2.0.10', 'allcategories', '2020-09-07 14:09:29', '0000-00-00 00:00:00'),
(125, 'x0h4dg0h2eu0jao4bnms329mqo6m0fcw', '15.2.0.10', 'getallproducts', '2020-09-07 14:09:29', '0000-00-00 00:00:00'),
(126, 'n1bfm47mr7d3aqf-a2xe90-fcmv8s15q', '15.2.0.10', 'getfilters', '2020-09-07 14:09:29', '0000-00-00 00:00:00'),
(127, 'ijdt-8ymj0bgx6ugpj5q63y9cm8lnjo6', '15.2.0.10', 'getfilters', '2020-09-07 14:09:29', '0000-00-00 00:00:00'),
(128, 'dsddgnrrsxx08xdhv7s236xnspprld2m', '15.2.0.10', 'getallproducts', '2020-09-07 14:09:29', '0000-00-00 00:00:00'),
(129, '0rg9tsi41iol-5-67hr7f7af9ssu552p', '15.2.0.10', 'sitesetting', '2020-09-07 14:09:29', '0000-00-00 00:00:00'),
(130, 'hxlb0a0ubn2tvw6hw380ken5pays2wtw', '15.2.0.10', 'sitesetting', '2020-09-08 21:41:16', '0000-00-00 00:00:00'),
(131, 'vp95x0imujoptvilv8z4b61krm3u3-5s', '15.2.0.10', 'getallpages', '2020-09-08 21:41:17', '0000-00-00 00:00:00'),
(132, 'mtr5qy1iw9ux-cz6dbgdrd1qj82hzp0a', '15.2.0.10', 'registerdevices', '2020-09-08 21:41:23', '0000-00-00 00:00:00'),
(133, 'np6o-nuwuis7hs1wpjh41-eegg60u0uy', '15.2.0.10', 'getbanners', '2020-09-08 21:41:23', '0000-00-00 00:00:00'),
(134, 'e0p5c3vu0j1u7bay7s1chm2huovbvn8n', '15.2.0.10', 'allcategories', '2020-09-08 21:41:24', '0000-00-00 00:00:00'),
(135, 'x2z97scqp6yapz6gqo82r7y0eumhiifv', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:24', '0000-00-00 00:00:00'),
(136, 'm5kgmhqwath9sd6jqbkieawjgtnly69k', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:24', '0000-00-00 00:00:00'),
(137, 'pe-87b2ulum5x5704gdlivc-lsq8c9ny', '15.2.0.10', 'getfilters', '2020-09-08 21:41:24', '0000-00-00 00:00:00'),
(138, 'dv13clooe-5a55nw09hfs0ya316ch5-c', '15.2.0.10', 'getfilters', '2020-09-08 21:41:24', '0000-00-00 00:00:00'),
(139, '325ojzso1hkgjccy1d1i62uwef11zgzy', '15.2.0.10', 'sitesetting', '2020-09-08 21:41:32', '0000-00-00 00:00:00'),
(140, '03q3znvtxyiw4y8bbvukjs2gd9d9x0bk', '15.2.0.10', 'getallpages', '2020-09-08 21:41:32', '0000-00-00 00:00:00'),
(141, '2zgrt0kv0tv-axm9z3ewywp315pofr1d', '15.2.0.10', 'sitesetting', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(142, 'guf8852p0x74il-wboewjo7tl2xm5xkj', '15.2.0.10', 'getallpages', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(143, '6shqmi9g4k3gij93jt88t0k90mhkkqir', '15.2.0.10', 'getbanners', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(144, '1ulym79g53ulapidovs9d850j83g3xp-', '15.2.0.10', 'allcategories', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(145, 'tdvhsf2eqc96r4dp71ngqkbv2bj8h156', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(146, 'aolny3g5vgvb1mg4ufwkjqi22l1zytk9', '15.2.0.10', 'getfilters', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(147, 'k30huuyzyfjgc7yhz4p6vp24vfrw6q4c', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(148, '-n3gqmgervj7cx3pkdv8vokjk07zvo15', '15.2.0.10', 'getfilters', '2020-09-08 21:41:33', '0000-00-00 00:00:00'),
(149, 'd02rqxb4i6s5jcdv3xbeix9tgsaijctp', '15.2.0.10', 'sitesetting', '2020-09-08 21:41:39', '0000-00-00 00:00:00'),
(150, '4j0ciq-uoynzvzzgyyz31ve4optea5xy', '15.2.0.10', 'getallpages', '2020-09-08 21:41:40', '0000-00-00 00:00:00'),
(151, 'vsxzkmzd9lawkad9n8b95p155glv4ory', '15.2.0.10', 'getbanners', '2020-09-08 21:41:40', '0000-00-00 00:00:00'),
(152, 'b0eax6oufv32gr3gh3i8m7by2ku7trcw', '15.2.0.10', 'allcategories', '2020-09-08 21:41:40', '0000-00-00 00:00:00'),
(153, 'rqpbwjcqejbal7ej4j6r-yz8yisc7y0z', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:41', '0000-00-00 00:00:00'),
(154, 'a40kxacb87c0uazpu01tft8gxm2wzk2m', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:41', '0000-00-00 00:00:00'),
(155, 'bovf8p2gu0swbbljsea4xmcbova8w6jw', '15.2.0.10', 'getfilters', '2020-09-08 21:41:41', '0000-00-00 00:00:00'),
(156, 'pz36leyzm46u7hoveisx18atzv5uxd30', '15.2.0.10', 'getfilters', '2020-09-08 21:41:41', '0000-00-00 00:00:00'),
(157, 'mg-3e82cbf3j18rnrl58k82peame3-2w', '15.2.0.10', 'sitesetting', '2020-09-08 21:41:50', '0000-00-00 00:00:00'),
(158, 'fk2uol8xe6qms--i-cutgx28az8b769j', '15.2.0.10', 'getallpages', '2020-09-08 21:41:51', '0000-00-00 00:00:00'),
(159, '9-d9xhxcciptkxq23p7jczpf-1sogkyj', '15.2.0.10', 'sitesetting', '2020-09-08 21:41:52', '0000-00-00 00:00:00'),
(160, 'jg0fl7id-vw1d99ku4tgpscf2ycrn53o', '15.2.0.10', 'getallpages', '2020-09-08 21:41:52', '0000-00-00 00:00:00'),
(161, 'v43hm9s17dcjzie82rrguyhf415i2d2a', '15.2.0.10', 'getbanners', '2020-09-08 21:41:53', '0000-00-00 00:00:00'),
(162, '6-o98szik97zi1h-ck48u5z0h9mwgo14', '15.2.0.10', 'allcategories', '2020-09-08 21:41:53', '0000-00-00 00:00:00'),
(163, 'ja7gnd2ol34ork9is3a8uqezkm81hj9i', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:54', '0000-00-00 00:00:00'),
(164, '97sazjfjjwcruasdjwkzvlehu7u2por-', '15.2.0.10', 'getfilters', '2020-09-08 21:41:54', '0000-00-00 00:00:00'),
(165, 'd9mjr92bt5mz-197pzfl5j1usq5tuuks', '15.2.0.10', 'getfilters', '2020-09-08 21:41:54', '0000-00-00 00:00:00'),
(166, 'f7b2umxi-sfgq57bkpj2hvcr0hl3ktyw', '15.2.0.10', 'getallproducts', '2020-09-08 21:41:54', '0000-00-00 00:00:00'),
(167, 's1irnw6vaim47s6sd570rmjp45srywmm', '15.2.0.10', 'sitesetting', '2020-09-08 21:43:48', '2000-01-14 00:00:00'),
(168, 'f2-ltri1k1o1hs0zbyoyzivj76ogkkoe', '15.2.0.10', 'getallpages', '2020-09-08 21:43:48', '0000-00-00 00:00:00'),
(169, 'ohv0026mp57s7x4kzgcmu5rdv4ia2p15', '15.2.0.10', 'sitesetting', '2020-09-08 21:43:49', '0000-00-00 00:00:00'),
(170, 'bicji4tnoreuq2hope2qi5ho0-0s5jsj', '15.2.0.10', 'getallpages', '2020-09-08 21:43:49', '0000-00-00 00:00:00'),
(171, 'gi-chpy--fn1da7dzisv3hx05rx2yi0k', '15.2.0.10', 'getbanners', '2020-09-08 21:43:49', '0000-00-00 00:00:00'),
(172, 'k2u89ls9su5vy3f0tjsp34aknwjpwhgb', '15.2.0.10', 'allcategories', '2020-09-08 21:43:50', '0000-00-00 00:00:00'),
(173, '138snelmnu7g7sd-611plk8d-xpt9s1n', '15.2.0.10', 'getallproducts', '2020-09-08 21:43:50', '0000-00-00 00:00:00'),
(174, '5kai0qma20ometty88h-4n8ogi84xud4', '15.2.0.10', 'getallproducts', '2020-09-08 21:43:50', '0000-00-00 00:00:00'),
(175, '7jkvsm-p3oomwj0pydgxwswb9jr9n46l', '15.2.0.10', 'getfilters', '2020-09-08 21:43:50', '0000-00-00 00:00:00'),
(176, 'x0xu4sp9hkwatk5arrt2fbdh60ly4h8p', '15.2.0.10', 'getfilters', '2020-09-08 21:43:50', '0000-00-00 00:00:00'),
(177, 'xyobrgfeng0cs7bm4jzck901myi80-h9', '15.2.0.10', 'sitesetting', '2020-09-08 21:43:58', '0000-00-00 00:00:00'),
(178, 're6kl-keh4xicod7e9g0g4hb04lu11xx', '15.2.0.10', 'getallpages', '2020-09-08 21:43:58', '0000-00-00 00:00:00'),
(179, 'gw3bm905zxrq-lmb281t4i8r0lq-6yn0', '15.2.0.10', 'getbanners', '2020-09-08 21:43:59', '0000-00-00 00:00:00'),
(180, 'q4d0811adrzkej-98ftuefv-vmuerz3w', '15.2.0.10', 'allcategories', '2020-09-08 21:43:59', '0000-00-00 00:00:00'),
(181, 'ae76cklx1iuys6bi9u5om6iza4w4qm2h', '15.2.0.10', 'getallproducts', '2020-09-08 21:44:00', '0000-00-00 00:00:00'),
(182, 'kq8k1jv4ns9plni4jj1uvmuoe1q92ntk', '15.2.0.10', 'getfilters', '2020-09-08 21:44:00', '0000-00-00 00:00:00'),
(183, '1ebhv28rqus85ixa9f5a5lhp3sl0m93n', '15.2.0.10', 'getallproducts', '2020-09-08 21:44:00', '0000-00-00 00:00:00'),
(184, 'u4hcq9k3m8pg4wuezt1jr37ejbo2531u', '15.2.0.10', 'getfilters', '2020-09-08 21:44:00', '0000-00-00 00:00:00'),
(185, 'k8dsqjibnlybosf3c1buizge3x1d3fp9', '15.2.0.10', 'sitesetting', '2020-09-08 21:44:00', '0000-00-00 00:00:00'),
(186, '4m16f6jwfr1vpl1ohbehxj3369egggr5', '15.2.0.10', 'sitesetting', '2020-09-08 21:44:09', '0000-00-00 00:00:00'),
(187, 'nqj6r65mr6wa6w8qdkgujo0-6onahs6w', '15.2.0.10', 'getallpages', '2020-09-08 21:44:09', '0000-00-00 00:00:00'),
(188, '5mq18p3w4zapf4ynrkucg1jcjkkorx3d', '15.2.0.10', 'getbanners', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(189, '53j4yc2npbzavt-wlcv4047upzp99ec9', '15.2.0.10', 'allcategories', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(190, 'p-jm4fk4so1l5z57973k2nphu7cy9gyd', '15.2.0.10', 'getallproducts', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(191, '3-opp85npj9u8cn5qswoytucro7g4gi9', '15.2.0.10', 'getfilters', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(192, 'znw-zd31kqzhw2mpl7c8j84yeixv85v7', '15.2.0.10', 'getfilters', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(193, '0bk81u8jt4hmb31e62w8ky40gbbq-wxc', '15.2.0.10', 'getallproducts', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(194, 'cdg4y1h96d9gm6pwuglc4ntmylsjv3ig', '15.2.0.10', 'sitesetting', '2020-09-08 21:44:10', '0000-00-00 00:00:00'),
(195, 'a4eam7gyn3120-0oijta88l6-kjwn065', '15.2.0.10', 'sitesetting', '2020-09-08 22:05:38', '0000-00-00 00:00:00'),
(196, 'jkb28y2rz8tr9itkcexypnk9v3dxsx90', '15.2.0.10', 'getallpages', '2020-09-08 22:05:38', '0000-00-00 00:00:00'),
(197, 'px2d1wpxpnbtg92i6pta9-jl6t20hk7g', '15.2.0.10', 'sitesetting', '2020-09-08 22:05:39', '0000-00-00 00:00:00'),
(198, '2wg3dlad0th8tchiey2owk68ybucqiww', '15.2.0.10', 'getallpages', '2020-09-08 22:05:39', '0000-00-00 00:00:00'),
(199, 'vkjh4ooewph7l95-f-isa2r-wssip33s', '15.2.0.10', 'registerdevices', '2020-09-08 22:05:56', '0000-00-00 00:00:00'),
(200, 'hclb-98o9gbwjde7evsalpedz6pqovt7', '15.2.0.10', 'getbanners', '2020-09-08 22:05:56', '0000-00-00 00:00:00'),
(201, 'irbcx1-ivatzf8x3y1m7gth-4ff7veou', '15.2.0.10', 'allcategories', '2020-09-08 22:05:56', '0000-00-00 00:00:00'),
(202, '56312vl88jc10f6krhnjviktm-2r2jn0', '15.2.0.10', 'getallproducts', '2020-09-08 22:05:56', '0000-00-00 00:00:00'),
(203, 'dgdpdtfjabmsx-xphfzrd8jc04n94g97', '15.2.0.10', 'getallproducts', '2020-09-08 22:05:56', '0000-00-00 00:00:00'),
(204, 'b3nmcjrqcl63iw04qllswdsb2ndq1kvp', '15.2.0.10', 'getfilters', '2020-09-08 22:05:57', '0000-00-00 00:00:00'),
(205, 'shhiwk10qnnr0oh4-03hd1yeqvx3npng', '15.2.0.10', 'getfilters', '2020-09-08 22:05:57', '0000-00-00 00:00:00'),
(206, 'k3nkka7j9y16x1conf68zy0nqd9ap453', '15.2.0.10', 'sitesetting', '2020-09-08 22:09:20', '2000-02-03 00:00:00'),
(207, '0hpi1d49iux8aatevlqm94rtjgrsm6pd', '15.2.0.10', 'getallpages', '2020-09-08 22:09:20', '0000-00-00 00:00:00'),
(208, '6nmbaw-dnt2zq4dbvje8xcjzlke81q73', '15.2.0.10', 'sitesetting', '2020-09-08 22:09:21', '0000-00-00 00:00:00'),
(209, '-wp928o23rjljhgjhfuv5w0s2hpryhsq', '15.2.0.10', 'getallpages', '2020-09-08 22:09:21', '0000-00-00 00:00:00'),
(210, '09agm77h742fd2jl0mahd-wxy4swvsd3', '15.2.0.10', 'registerdevices', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(211, 'lueysic8bih6ajb15sfgiq9z--tnp3ao', '15.2.0.10', 'getbanners', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(212, 'ak0siv-r1mbj15wotgsm168wwsgjtbsx', '15.2.0.10', 'allcategories', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(213, 'gi6lqco9qmyt007bt8-xxyqqbe33qv--', '15.2.0.10', 'getallproducts', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(214, 's-p43ys4tnxsl0889qmlj8y9mshekxp2', '15.2.0.10', 'getfilters', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(215, 'lvg9ivq37y-olvvj8pyfxb1ce8msphz0', '15.2.0.10', 'getallproducts', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(216, 'girj0gv8jd3v8zxqjys4qd3j4ms3nvox', '15.2.0.10', 'getfilters', '2020-09-08 22:09:35', '0000-00-00 00:00:00'),
(217, 'bxu0pj2ccbspou9cfb3jh9f14wrl7ahd', '15.2.0.10', 'sitesetting', '2020-09-08 23:05:06', '0000-00-00 00:00:00'),
(218, 'h2xrh1rpj07utsru6o28tfp8war7mcjl', '15.2.0.10', 'getallpages', '2020-09-08 23:05:06', '0000-00-00 00:00:00'),
(219, 'letnecwop8c9wqhq7xj-tcdnc4a7dzwj', '15.2.0.10', 'sitesetting', '2020-09-08 23:05:06', '0000-00-00 00:00:00'),
(220, 'ohi5cwwnih922blhhmlervzomi36y3lw', '15.2.0.10', 'getallpages', '2020-09-08 23:05:06', '0000-00-00 00:00:00'),
(221, 'x0f6gv01zg8lwm3-hnnruufo1eapnklr', '15.2.0.10', 'registerdevices', '2020-09-08 23:05:16', '0000-00-00 00:00:00'),
(222, '109diael4fepkaih2b3v5x-zlt98iu-c', '15.2.0.10', 'getbanners', '2020-09-08 23:05:17', '0000-00-00 00:00:00'),
(223, '0a9gvpa3egumgvv4j-1zpjhcd10vat6q', '15.2.0.10', 'allcategories', '2020-09-08 23:05:17', '0000-00-00 00:00:00'),
(224, 'bhfrq1akwndl7n4p6wxvaw-jq8w61b6p', '15.2.0.10', 'getallproducts', '2020-09-08 23:05:17', '0000-00-00 00:00:00'),
(225, 'e5hr6tlmhi10zwp8uqyowcmkvq1peq33', '15.2.0.10', 'getfilters', '2020-09-08 23:05:17', '0000-00-00 00:00:00'),
(226, 'uzq3rqw55hol46vhq2t2iom3n9l5r6av', '15.2.0.10', 'getallproducts', '2020-09-08 23:05:17', '0000-00-00 00:00:00'),
(227, '7mlqueou6hnfibw6rmhv5f0ebtgp4fe3', '15.2.0.10', 'getfilters', '2020-09-08 23:05:17', '0000-00-00 00:00:00'),
(228, 'ulx25ymsf0ay4sj9ptp4ctxvutv9d9nz', '15.2.0.10', 'sitesetting', '2020-09-09 05:54:46', '0000-00-00 00:00:00'),
(229, 'a4la-sr0afug2mteyt69xou6uujgs8w0', '15.2.0.10', 'getallpages', '2020-09-09 05:54:46', '0000-00-00 00:00:00'),
(230, '05cdj9amsw1ddjvtkzyf9lqxl-bi6omi', '15.2.0.10', 'registerdevices', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(231, 'mg1jurkhjmheq3evoy3o4qz1h-ixfi-p', '15.2.0.10', 'getbanners', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(232, 'fuej4r0ey9olkm4qz1sh43jlyjeggmva', '15.2.0.10', 'allcategories', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(233, 'td7m4krs2exznmvto8q6wpxzmmqnk85s', '15.2.0.10', 'getfilters', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(234, '-z6hhixwim5nxiieg6b48ra3n7tvjo9l', '15.2.0.10', 'getallproducts', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(235, 'uubkng5elajuopn4m-uftku9836692ob', '15.2.0.10', 'getallproducts', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(236, 'ee-6xunypzufhe2y8swgdd8femxzyt7y', '15.2.0.10', 'getfilters', '2020-09-09 05:54:52', '0000-00-00 00:00:00'),
(237, 'fqt39fzkbg86ma7w5xka1i59gukbz71b', '15.2.0.10', 'sitesetting', '2020-09-09 05:54:58', '0000-00-00 00:00:00'),
(238, 'r2ohjd5njaq7ugeac0817nco5ynow-p9', '15.2.0.10', 'getallpages', '2020-09-09 05:54:58', '0000-00-00 00:00:00'),
(239, '4d0tlm13htexi4efx4p8wftnx220bsv6', '15.2.0.10', 'getbanners', '2020-09-09 05:54:59', '0000-00-00 00:00:00'),
(240, 'u1okxku8dbwoj293vgmmrcykinat7apy', '15.2.0.10', 'allcategories', '2020-09-09 05:54:59', '0000-00-00 00:00:00'),
(241, 'qssry8xcze36e9ap-opx3adnm2l1vpax', '15.2.0.10', 'getallproducts', '2020-09-09 05:54:59', '0000-00-00 00:00:00'),
(242, 'sew3drochap1pa3jtedusnavj5nabi1h', '15.2.0.10', 'getfilters', '2020-09-09 05:54:59', '0000-00-00 00:00:00'),
(243, 'rhuskdwqrjs8ydf1gxl25nkmu8o9bu4m', '15.2.0.10', 'getfilters', '2020-09-09 05:54:59', '0000-00-00 00:00:00'),
(244, 'eql6dwnic9zgnvssst5woh22qe2jh8hr', '15.2.0.10', 'getallproducts', '2020-09-09 05:54:59', '0000-00-00 00:00:00'),
(245, '7y7zxsmmy8b8zahw6r0331blsh85gyov', '15.2.0.10', 'sitesetting', '2020-09-09 06:06:13', '0000-00-00 00:00:00'),
(246, 'xy18vm-eq7qp9mwkbkcgnkvz-04hha4e', '15.2.0.10', 'getallpages', '2020-09-09 06:06:13', '0000-00-00 00:00:00'),
(247, 'v3ueoxksxqcdo6y00aohm1j2rxf2lnaf', '15.2.0.10', 'registerdevices', '2020-09-09 06:06:26', '0000-00-00 00:00:00'),
(248, 'x7xuokqasac5g84hmjoakj3id-s42v16', '15.2.0.10', 'getbanners', '2020-09-09 06:06:26', '0000-00-00 00:00:00'),
(249, '1ww4qkg0ma0eogcdxexdcek4x9c8xa9c', '15.2.0.10', 'allcategories', '2020-09-09 06:06:26', '0000-00-00 00:00:00'),
(250, 'x4tav5jtimd9kcvg5xy5vnfsgsd0e1q2', '15.2.0.10', 'getallproducts', '2020-09-09 06:06:27', '0000-00-00 00:00:00'),
(251, 'km-6k73e5-h-wch0rbweiptjwy2l23qo', '15.2.0.10', 'getfilters', '2020-09-09 06:06:27', '0000-00-00 00:00:00'),
(252, '6j4l8hiwz752oi8ngdgmzsv0r3i28711', '15.2.0.10', 'getallproducts', '2020-09-09 06:06:27', '0000-00-00 00:00:00'),
(253, 'n01h3gwref8n2ov2p64u4p9gwo640w4t', '15.2.0.10', 'getfilters', '2020-09-09 06:06:27', '0000-00-00 00:00:00'),
(254, '4wuneolhznthkb93z5ejcl528hm4mrqv', '15.2.0.10', 'sitesetting', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(255, 'emi-9ar9buki6fy-g972lbggc9jxukj0', '15.2.0.10', 'getallpages', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(256, 'rcocibmwxdgu-f881cvvfgsszyh3mo7m', '15.2.0.10', 'getbanners', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(257, '33kyknwqqqk7v02iu5qkr18e7lydcehl', '15.2.0.10', 'allcategories', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(258, 'fnoq8-lhz85l5c0eshpxxgvdzrg05usg', '15.2.0.10', 'getallproducts', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(259, 'ogr2ug5mefh3scw1em-mji15a-9y864b', '15.2.0.10', 'getfilters', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(260, 'gkob-z-4-nxuew1qfnzzjd8y7ycvyhk7', '15.2.0.10', 'getallproducts', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(261, 'em0oyz1ky0t9rgrzqa3dgyzqmdmdc915', '15.2.0.10', 'getfilters', '2020-09-09 06:06:32', '0000-00-00 00:00:00'),
(262, 'k65izef8eje8316hz31shmc3drgck81p', '15.2.0.10', 'sitesetting', '2020-09-12 14:10:24', '0000-00-00 00:00:00'),
(263, 'd6l9ymxyyls8fs5-klccl4rhi0magmq5', '15.2.0.10', 'getallpages', '2020-09-12 14:10:24', '0000-00-00 00:00:00'),
(264, 'se0yv3vb8wlphpocgq40dy06duluu4r2', '15.2.0.10', 'registerdevices', '2020-09-12 14:10:31', '0000-00-00 00:00:00'),
(265, 'k5niofpjluumrwje43j405l5ahigg6u8', '15.2.0.10', 'sitesetting', '2020-09-12 14:10:52', '0000-00-00 00:00:00'),
(266, '-hb7lrkus7tz8jqcmx13d1ktmnajjav8', '15.2.0.10', 'getallpages', '2020-09-12 14:10:52', '0000-00-00 00:00:00'),
(267, 'cbmiz1t1f1wwm9lca2aa4cglfvw2qq5l', '15.2.0.10', 'sitesetting', '2020-09-12 14:10:53', '0000-00-00 00:00:00'),
(268, 'kd0esc3dt0b6qxaq5ccak5vgoa3bmrzq', '15.2.0.10', 'getallpages', '2020-09-12 14:10:53', '0000-00-00 00:00:00'),
(269, 'yvbxw21787ulzwn2yk61qo84wlftt6ii', '15.2.0.10', 'sitesetting', '2020-09-12 14:11:08', '0000-00-00 00:00:00'),
(270, 'zdlyez2jafitjtw84o2yq9onojqn4t9w', '15.2.0.10', 'getallpages', '2020-09-12 14:11:08', '0000-00-00 00:00:00'),
(271, 'sixuja0-ula8qdlzz206ahyto6qkf-4l', '15.2.0.10', 'sitesetting', '2020-09-12 14:15:27', '0000-00-00 00:00:00'),
(272, '0sx4bylh-z7kpied9688r6kmybpr6kck', '15.2.0.10', 'getallpages', '2020-09-12 14:15:29', '0000-00-00 00:00:00'),
(273, 'dgr0bh4ovawkawozo3f1ubtrfywk097i', '15.2.0.10', 'sitesetting', '2020-09-12 14:15:30', '0000-00-00 00:00:00'),
(274, 'qzc4bb3uo5sx-qf7z3fuawb87w254s4y', '15.2.0.10', 'getallpages', '2020-09-12 14:15:30', '0000-00-00 00:00:00'),
(275, 'yl-o2uneztcizyccucytlzzxdnrlf8gh', '15.2.0.10', 'registerdevices', '2020-09-12 14:15:54', '0000-00-00 00:00:00'),
(276, 'r1yv45p10xs8v4vgxewu0irghibc-5pc', '15.2.0.10', 'sitesetting', '2020-09-12 14:17:16', '0000-00-00 00:00:00'),
(277, 'p08uzkj1ixl2znhpgvmt71b35-dg2m88', '15.2.0.10', 'getallpages', '2020-09-12 14:17:16', '0000-00-00 00:00:00'),
(278, '294i4pqkg23pyy0e4ulj6o8q3ppn6a20', '15.2.0.10', 'sitesetting', '2020-09-14 06:14:41', '0000-00-00 00:00:00'),
(279, 'e1jjoav-l91uaatbihv9n-5feprx1cti', '15.2.0.10', 'getallpages', '2020-09-14 06:14:41', '0000-00-00 00:00:00'),
(280, 'hnxmd-4xhc870rt1pesdduwadjr4o-vn', '15.2.0.10', 'registerdevices', '2020-09-14 06:14:48', '0000-00-00 00:00:00'),
(281, '081k6nnk9q8nsky3d3wu4g7wrfmujjuz', '15.2.0.10', 'sitesetting', '2020-09-14 06:18:32', '2000-02-24 00:00:00'),
(282, 'cp4zgu08otykoraefw6aewekcuhw2yeu', '15.2.0.10', 'getallpages', '2020-09-14 06:18:32', '0000-00-00 00:00:00'),
(283, 'o5l2493d6vdw3tbtcnjjkr-wa8drvojx', '15.2.0.10', 'sitesetting', '2020-09-14 06:18:34', '0000-00-00 00:00:00'),
(284, '4ml2ac2bnodf1k3q9n72rqniu-6kh-mz', '15.2.0.10', 'getallpages', '2020-09-14 06:18:34', '0000-00-00 00:00:00'),
(285, 'bygvl48bxqsmbksedsqk7jdowb1h1ud-', '15.2.0.10', 'registerdevices', '2020-09-14 06:18:40', '0000-00-00 00:00:00'),
(286, '8zo4gt5nj4p85-9hk2qh9y9abnhy4-jq', '15.2.0.10', 'sitesetting', '2020-09-14 18:03:49', '0000-00-00 00:00:00'),
(287, 'd-rbwkgs26s7g355w0nd1ajveu6bxws-', '15.2.0.10', 'getallpages', '2020-09-14 18:03:49', '0000-00-00 00:00:00'),
(288, 'vfhfkpit5z4zpjh6rqy69heygzea96cu', '15.2.0.10', 'registerdevices', '2020-09-14 18:03:56', '0000-00-00 00:00:00'),
(289, '74sxbhcc3jt8jvhovlzx4mgiq92i6niu', '15.2.0.10', 'getsearchdata', '2020-09-14 18:04:05', '0000-00-00 00:00:00'),
(290, '33b-rmfl6otup7b43ffz--p5fnjugm2l', '15.2.0.10', 'getallproducts', '2020-09-14 18:04:08', '0000-00-00 00:00:00'),
(291, '4g5ocxio4wjlz1--vqw1n0gydtg86onq', '15.2.0.10', 'getsearchdata', '2020-09-14 18:04:26', '0000-00-00 00:00:00'),
(292, '-e3f6kjb7e25ulde62gmgwukf-1x9meq', '15.2.0.10', 'getallproducts', '2020-09-14 18:04:28', '0000-00-00 00:00:00'),
(293, '4v7kgoggkccox97wiw5ee5flr9se3uta', '15.2.0.10', 'getsearchdata', '2020-09-14 18:05:03', '0000-00-00 00:00:00'),
(294, 'qhnp30mk5ojqy7qznd1jl10x8b4nng1j', '15.2.0.10', 'getallproducts', '2020-09-14 18:05:06', '0000-00-00 00:00:00'),
(295, 'iic1qty--kq1-d-wukgce2p2bktm9bm2', '15.2.0.10', 'sitesetting', '2020-09-14 18:10:10', '2000-03-04 00:00:00'),
(296, '93s8vv3adg8zw0pnk1lktzr1mspzabqm', '15.2.0.10', 'getallpages', '2020-09-14 18:10:10', '0000-00-00 00:00:00'),
(297, '6zknz8kkmitii56t216zhdmq00-isfcd', '15.2.0.10', 'getsearchdata', '2020-09-14 18:10:26', '0000-00-00 00:00:00'),
(298, 'jv16s84clsc9oo0zacsf51xvej5-p1wu', '15.2.0.10', 'getallproducts', '2020-09-14 18:10:27', '0000-00-00 00:00:00'),
(299, 'jbr6dqmv9eaifd4udo9t5koot70hf0ci', '15.2.0.10', 'sitesetting', '2020-09-14 18:11:47', '0000-00-00 00:00:00'),
(300, 'z293n2nygwh7huhf-y3xmsr-bdv-e04c', '15.2.0.10', 'getallpages', '2020-09-14 18:11:47', '0000-00-00 00:00:00'),
(301, 'vcg4ztfitxjhu1mq0pewdcjef2-l7jw-', '15.2.0.10', 'sitesetting', '2020-09-14 18:11:48', '0000-00-00 00:00:00'),
(302, 'jddsw3t7gk7b806u20r8jddqe1nnora9', '15.2.0.10', 'getallpages', '2020-09-14 18:11:48', '0000-00-00 00:00:00'),
(303, 'c4d5wjtz5-2040m77p068hjv6qjopenf', '15.2.0.10', 'getsearchdata', '2020-09-14 18:11:54', '0000-00-00 00:00:00'),
(304, '2qzesfhx8bji2k6hcnx5foi8xby2dk5t', '15.2.0.10', 'getallproducts', '2020-09-14 18:11:57', '0000-00-00 00:00:00'),
(305, 'vsn6k351dc80olz09frwop-egvoz9bx0', '15.2.0.10', 'sitesetting', '2020-09-14 18:14:04', '2000-01-27 00:00:00'),
(306, '0tpeywj3xx3l7yus8pd9k8mkevi343ur', '15.2.0.10', 'getallpages', '2020-09-14 18:14:05', '0000-00-00 00:00:00'),
(307, 'xe59jaj8qzf1np4kio1ruai1a64w2hjc', '15.2.0.10', 'sitesetting', '2020-09-14 18:14:06', '0000-00-00 00:00:00'),
(308, '0l8982ei7ekneegzmq-28a8nqfi044rc', '15.2.0.10', 'getallpages', '2020-09-14 18:14:06', '0000-00-00 00:00:00'),
(309, '0ami56j0g8aqrxykes-xnny8fuxu-lek', '15.2.0.10', 'sitesetting', '2020-09-14 18:14:15', '0000-00-00 00:00:00'),
(310, '2cf1jkvrzdquz-4kxpw5w3xn5bvtt7vw', '15.2.0.10', 'getallpages', '2020-09-14 18:14:16', '0000-00-00 00:00:00'),
(311, 't22fko3c1mxfd0d46ftstm144j820v0s', '15.2.0.10', 'sitesetting', '2020-09-14 18:14:16', '0000-00-00 00:00:00'),
(312, 'm6fgdvqtjax0gsh3lo6f6j0qpss2px8w', '15.2.0.10', 'getallpages', '2020-09-14 18:14:16', '0000-00-00 00:00:00'),
(313, 'uj3w3cfa3moia9ttw607-dwe9s419t4o', '15.2.0.10', 'getcurrencies', '2020-09-14 18:14:42', '0000-00-00 00:00:00'),
(314, 'j4mcv2dwabpmwsahj6pcv-d2unjwfvb9', '15.2.0.10', 'sitesetting', '2020-09-14 18:14:45', '0000-00-00 00:00:00'),
(315, 'wzre2fk6wzjuoczlfvr2vfuo0wdog9yj', '15.2.0.10', 'getallpages', '2020-09-14 18:14:45', '0000-00-00 00:00:00'),
(316, 'y4yyp9avdf7qv9e6xgl5ytnfazpns94u', '15.2.0.10', 'getsearchdata', '2020-09-14 18:14:51', '0000-00-00 00:00:00'),
(317, 'et3-egv0kkcpcn0hn-01l6bro821k3rb', '15.2.0.10', 'getallproducts', '2020-09-14 18:14:52', '0000-00-00 00:00:00'),
(318, 'imyw5p21g3vi3pxb5pzz1r3lakn48hdq', '15.2.0.10', 'sitesetting', '2020-09-14 18:16:59', '2000-01-27 00:00:00'),
(319, '2s-foc6nc1k5wwqd95v46ep3yomxukvh', '15.2.0.10', 'getallpages', '2020-09-14 18:16:59', '0000-00-00 00:00:00'),
(320, 'otfw49g0h2f3crojh3l6liz-s23u0ht2', '15.2.0.10', 'sitesetting', '2020-09-14 18:16:59', '0000-00-00 00:00:00'),
(321, 'iqwvmbsmts7s-41bwueekywfmsihnr3z', '15.2.0.10', 'getallpages', '2020-09-14 18:16:59', '0000-00-00 00:00:00'),
(322, 'd4azecfnrsi3pnjhb5-7pxejsv2wia4y', '15.2.0.10', 'getsearchdata', '2020-09-14 18:17:06', '0000-00-00 00:00:00'),
(323, 'em5ek5k5c5kv7cl997-wpgitz3r5ae3f', '15.2.0.10', 'getsearchdata', '2020-09-14 18:17:12', '0000-00-00 00:00:00'),
(324, '5p3avgw20qtpgesub5lx1rpjmpujp6o2', '15.2.0.10', 'sitesetting', '2020-09-14 18:19:54', '0000-00-00 00:00:00'),
(325, 'n4-dwffxt6sfupldyxlt-rkrog2dmcbu', '15.2.0.10', 'getallpages', '2020-09-14 18:19:55', '0000-00-00 00:00:00'),
(326, '5c854f1asce3nmkfywzdodtvznp59geo', '15.2.0.10', 'sitesetting', '2020-09-14 18:19:55', '0000-00-00 00:00:00'),
(327, 'iwl3eu4r9cgjinzies8ph1jovm34385h', '15.2.0.10', 'getallpages', '2020-09-14 18:19:55', '0000-00-00 00:00:00'),
(328, 'ctd3tth-lmiy5q6ze-ca-mgvlc9g7b4g', '15.2.0.10', 'getsearchdata', '2020-09-14 18:19:59', '0000-00-00 00:00:00'),
(329, 'ddmavsb6fxzrq-10czhbo6ljsiexki7r', '15.2.0.10', 'getallproducts', '2020-09-14 18:20:00', '0000-00-00 00:00:00'),
(330, 's4jsjy06af1l3252e7vod4mix49blf2e', '15.2.0.10', 'getallproducts', '2020-09-14 18:20:06', '0000-00-00 00:00:00'),
(331, 'ia2gagl8vf-5kx6obi40k6tmyea6pfgn', '15.2.0.10', 'sitesetting', '2020-09-15 05:47:53', '0000-00-00 00:00:00'),
(332, 'oage0r2hf6bf5js-4g81r7ajhg4lzkvz', '15.2.0.10', 'getallpages', '2020-09-15 05:47:53', '0000-00-00 00:00:00'),
(333, '3t46-4j5hdr9db6tl0re5li9rgeq7myg', '15.2.0.10', 'getlanguages', '2020-09-15 05:48:10', '0000-00-00 00:00:00'),
(334, 'dh9es58tko2yveb6pj3078xgeyt8h7gm', '15.2.0.10', 'getsearchdata', '2020-09-15 05:48:22', '0000-00-00 00:00:00'),
(335, 'g14hh8p3r35x9lo9oz8fva6achftxsmq', '15.2.0.10', 'getallproducts', '2020-09-15 05:48:24', '0000-00-00 00:00:00'),
(336, 'o43ziar6qe5ry8jhm-z6tgtepdf2dmx-', '15.2.0.10', 'processlogin', '2020-09-15 05:49:24', '0000-00-00 00:00:00'),
(337, '6x-se8gacloj315xpg-s85269gx-sdat', '15.2.0.10', 'processlogin', '2020-09-15 05:50:16', '0000-00-00 00:00:00'),
(338, 'eo5wjzo2jv8t8ryqk2ai8ev7ffdk7p9z', '15.2.0.10', 'registerdevices', '2020-09-15 05:50:17', '0000-00-00 00:00:00'),
(339, 'i24b5f5px43udcpft1ggdoap6zjbp9by', '15.2.0.10', 'getsearchdata', '2020-09-15 05:50:29', '0000-00-00 00:00:00'),
(340, 'e1gktd-7f2qpjj61qk5lk9zadpie2rhq', '15.2.0.10', 'getsearchdata', '2020-09-15 05:50:36', '0000-00-00 00:00:00'),
(341, 'ytw15ieua1np31z-lgddlqen7fv9xp75', '15.2.0.10', 'sitesetting', '2020-09-15 05:50:43', '0000-00-00 00:00:00'),
(342, 'tnb9kni0as2f5bw75-we0c2ykkai9mow', '15.2.0.10', 'getallpages', '2020-09-15 05:50:44', '0000-00-00 00:00:00'),
(343, 'nq8lqpccko09567lq0z-buzmru8dme-i', '15.2.0.10', 'getsearchdata', '2020-09-15 05:50:47', '0000-00-00 00:00:00'),
(344, 'lkerr1u9sl5f26xjy0k9a4cg2vylugfm', '15.2.0.10', 'getsearchdata', '2020-09-15 05:50:50', '0000-00-00 00:00:00'),
(345, 'wrq4pw9rj4y2bfqzuqphg1-xuv5nyckr', '15.2.0.10', 'getallproducts', '2020-09-15 05:50:56', '0000-00-00 00:00:00'),
(346, '14326q7on6r2qpchtwlz9fmrg-08-x5r', '15.2.0.10', 'sitesetting', '2020-09-15 06:13:23', '0000-00-00 00:00:00'),
(347, 'xpohj0glfoj-n36akte5v-h7fy3iqgld', '15.2.0.10', 'getallpages', '2020-09-15 06:13:23', '0000-00-00 00:00:00'),
(348, 'j-zchta95-7fs-24ljz9qmktrawcbsa0', '15.2.0.10', 'sitesetting', '2020-09-15 06:13:24', '0000-00-00 00:00:00'),
(349, 'quic4gb0x8e346tpl662i5z169w9zev5', '15.2.0.10', 'getallpages', '2020-09-15 06:13:24', '0000-00-00 00:00:00'),
(350, '3kcpzm3j58o1v39vmfk696mugik76zad', '15.2.0.10', 'sitesetting', '2020-09-15 06:15:59', '0000-00-00 00:00:00'),
(351, '9oyl3aghsolalf0buwj5n5ksen3pa0em', '15.2.0.10', 'getallpages', '2020-09-15 06:15:59', '0000-00-00 00:00:00'),
(352, 'i0vi9wt4zo2pcnrq3axfxs4bb3pcqk8b', '15.2.0.10', 'sitesetting', '2020-09-15 16:41:44', '0000-00-00 00:00:00'),
(353, 'sr9aowopvam5qxqwwqm44s2kllhbqrlw', '15.2.0.10', 'getallpages', '2020-09-15 16:41:45', '0000-00-00 00:00:00'),
(354, 'f30p0jrrcq87rhtzm46li4bzrtdxilaq', '15.2.0.10', 'registerdevices', '2020-09-15 16:41:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'XUF1110211.png', 1, NULL, NULL, NULL),
(4, '0S9Uj10711.png', 1, NULL, NULL, NULL),
(5, '49YbL10411.png', 1, NULL, NULL, NULL),
(83, 'JqYfZ11207.jpg', 1, NULL, NULL, NULL),
(84, '6Q4Qy11507.jpg', 1, NULL, NULL, NULL),
(85, 'jOVnc11207.jpg', 1, NULL, NULL, NULL),
(86, 'Ake4A11107.jpg', 1, NULL, NULL, NULL),
(89, 'nDQtA11407.jpg', 1, NULL, NULL, NULL),
(90, 'ueyod11407.jpg', 1, NULL, NULL, NULL),
(91, 'xD6MF11207.jpg', 1, NULL, NULL, NULL),
(92, 'YZyoU11507.jpg', 1, NULL, NULL, NULL),
(93, 'RLshK11309.jpg', 1, NULL, NULL, NULL),
(94, 'pTZdI11309.jpg', 1, NULL, NULL, NULL),
(95, '2t7BU11909.jpg', 1, NULL, NULL, NULL),
(96, 'O0cLp11909.jpg', 1, NULL, NULL, NULL),
(97, 'ncXhn11709.jpg', 1, NULL, NULL, NULL),
(98, '3876V11310.jpg', 1, NULL, NULL, NULL),
(99, '80IGj11510.jpg', 1, NULL, NULL, NULL),
(100, 'ueeqM11410.jpg', 1, NULL, NULL, NULL),
(101, 'UrgVW11410.jpg', 1, NULL, NULL, NULL),
(102, 'a18kN11510.jpg', 1, NULL, NULL, NULL),
(103, 'qQM0R11310.jpg', 1, NULL, NULL, NULL),
(104, 'VrhhT11510.jpg', 1, NULL, NULL, NULL),
(105, 'gSkR011310.jpg', 1, NULL, NULL, NULL),
(106, 'DXoxt11610.jpg', 1, NULL, NULL, NULL),
(107, 'N4WSZ11310.jpg', 1, NULL, NULL, NULL),
(108, 'z9MLR11610.jpg', 1, NULL, NULL, NULL),
(109, 'YNVyV11410.jpg', 1, NULL, NULL, NULL),
(110, 'YinE411810.jpg', 1, NULL, NULL, NULL),
(111, '97VNC11210.jpg', 1, NULL, NULL, NULL),
(114, 'zZZ2n11710.jpg', 1, NULL, NULL, NULL),
(115, 'vMNsa11710.jpg', 1, NULL, NULL, NULL),
(116, 'qujIz11610.jpg', 1, NULL, NULL, NULL),
(118, 'PJG0C11511.jpg', 1, NULL, NULL, NULL),
(119, 'SKOMJ11512.jpg', 1, NULL, NULL, NULL),
(120, 'newsletter.jpg', 1, NULL, NULL, NULL),
(121, 'RhCsh20105.png', 1, NULL, NULL, NULL),
(122, 'VRPoJ20105.png', 1, NULL, NULL, NULL),
(123, 'FQrzt20605.png', 1, NULL, NULL, NULL),
(124, 'KkzHg20705.png', 1, NULL, NULL, NULL),
(125, 'H7dnV20905.png', 1, NULL, NULL, NULL),
(126, 'GHcz420405.png', 1, NULL, NULL, NULL),
(127, '1wxrC20705.png', 1, NULL, NULL, NULL),
(128, 'Onm1R20705.png', 1, NULL, NULL, NULL),
(129, 'dtoGy20805.png', 1, NULL, NULL, NULL),
(130, 'JX9AD20105.png', 1, NULL, NULL, NULL),
(131, 'ewGO120605.png', 1, NULL, NULL, NULL),
(132, 'NdPna20505.png', 1, NULL, NULL, NULL),
(133, 'D7wSD20105.png', 1, NULL, NULL, NULL),
(134, 'n55cl20805.jpg', 1, NULL, NULL, NULL),
(135, 'AA7k520605.jpg', 1, NULL, NULL, NULL),
(136, 'NOO0i20305.jpg', 1, NULL, NULL, NULL),
(137, '5tQWQ20105.jpg', 1, NULL, NULL, NULL),
(138, 'hQZdF20905.jpg', 1, NULL, NULL, NULL),
(139, '1UYHj20905.jpg', 1, NULL, NULL, NULL),
(140, 'TzZFS20205.jpg', 1, NULL, NULL, NULL),
(141, 'HXaPn20305.jpg', 1, NULL, NULL, NULL),
(142, 'hIsS820805.jpg', 1, NULL, NULL, NULL),
(143, 'wBece20805.jpg', 1, NULL, NULL, NULL),
(144, 'gNoJs20205.jpg', 1, NULL, NULL, NULL),
(145, '6svCC20405.jpg', 1, NULL, NULL, NULL),
(146, 'Zo9NW20405.jpg', 1, NULL, NULL, NULL),
(147, 'BmKll20305.jpg', 1, NULL, NULL, NULL),
(148, '2ljt220805.jpg', 1, NULL, NULL, NULL),
(149, '6VhYU20605.jpg', 1, NULL, NULL, NULL),
(150, 'pegC720105.jpg', 1, NULL, NULL, NULL),
(151, 'OPH7P20905.jpg', 1, NULL, NULL, NULL),
(152, 'FWJOF20605.jpg', 1, NULL, NULL, NULL),
(153, 'EC3BR20705.jpg', 1, NULL, NULL, NULL),
(154, 'HsfVS20405.jpg', 1, NULL, NULL, NULL),
(155, 'TX3GN20805.jpg', 1, NULL, NULL, NULL),
(156, '2jwG820505.jpg', 1, NULL, NULL, NULL),
(157, 'CQjTW20105.jpg', 1, NULL, NULL, NULL),
(158, 'x2wzK20105.jpg', 1, NULL, NULL, NULL),
(159, '9NAY520105.jpg', 1, NULL, NULL, NULL),
(160, 'EUKHc20105.jpg', 1, NULL, NULL, NULL),
(161, 'HUqXZ20905.jpg', 1, NULL, NULL, NULL),
(162, 'EH7iD20105.jpg', 1, NULL, NULL, NULL),
(163, 'SCpas20605.jpg', 1, NULL, NULL, NULL),
(164, 'hHci420805.jpg', 1, NULL, NULL, NULL),
(165, 'kMHBL20105.jpg', 1, NULL, NULL, NULL),
(166, 'JaSX220305.jpg', 1, NULL, NULL, NULL),
(167, 'DvD9Y20505.jpg', 1, NULL, NULL, NULL),
(168, 'dvb2E20205.jpg', 1, NULL, NULL, NULL),
(169, 'KlTwk20305.jpg', 1, NULL, NULL, NULL),
(170, 'kxpB920305.jpg', 1, NULL, NULL, NULL),
(171, 'xsLss20905.jpg', 1, NULL, NULL, NULL),
(172, 'Wi5kr20105.jpg', 1, NULL, NULL, NULL),
(173, 'ILRpF20105.png', 1, NULL, NULL, NULL),
(174, 'OiGgP20105.jpg', 1, NULL, NULL, NULL),
(175, 'emJyU20305.jpg', 1, NULL, NULL, NULL),
(176, 'ZBvp620805.jpg', 1, NULL, NULL, NULL),
(177, '3hUzT20605.png', 1, NULL, NULL, NULL),
(178, 'v6dhb20405.jpg', 1, NULL, NULL, NULL),
(179, 'Wde0g20805.jpg', 1, NULL, NULL, NULL),
(180, 'hzHK320105.jpg', 1, NULL, NULL, NULL),
(181, 'K4KTH20405.jpg', 1, NULL, NULL, NULL),
(182, '8g0lC20905.jpg', 1, NULL, NULL, NULL),
(183, 'OhfXC20505.jpg', 1, NULL, NULL, NULL),
(184, '0HAwo20305.jpg', 1, NULL, NULL, NULL),
(185, '1UCWk20905.jpg', 1, NULL, NULL, NULL),
(186, 'XiEpV20805.jpg', 1, NULL, NULL, NULL),
(187, 'EA3Gm20905.jpg', 1, NULL, NULL, NULL),
(188, 'AyAyq20105.jpg', 1, NULL, NULL, NULL),
(189, 'JzMkU20205.jpg', 1, NULL, NULL, NULL),
(190, '9789Q20505.jpg', 1, NULL, NULL, NULL),
(191, 'NwNFe20905.jpg', 1, NULL, NULL, NULL),
(192, 'hWmJ020205.jpeg', 1, NULL, NULL, NULL),
(193, 'I1Wt120805.jpg', 1, NULL, NULL, NULL),
(194, 'PFbtA20605.jpg', 1, NULL, NULL, NULL),
(195, 'eqiJq20505.jpg', 1, NULL, NULL, NULL),
(196, 'YvW3W20105.jpg', 1, NULL, NULL, NULL),
(197, 'yOaAu20505.jpg', 1, NULL, NULL, NULL),
(198, 'u8oe020505.jpg', 1, NULL, NULL, NULL),
(199, 'mfMAL20905.jpg', 1, NULL, NULL, NULL),
(200, 'uTNlg20505.jpg', 1, NULL, NULL, NULL),
(201, 's0Nto20505.jpg', 1, NULL, NULL, NULL),
(202, 'eJ6M720205.jpg', 1, NULL, NULL, NULL),
(203, 'toNBD20705.jpg', 1, NULL, NULL, NULL),
(204, 'tDBKt20405.jpg', 1, NULL, NULL, NULL),
(205, '0Pxjv20306.jpg', 1, NULL, NULL, NULL),
(206, 'XbMwF20706.jpg', 1, NULL, NULL, NULL),
(207, 'cB2E020706.jpg', 1, NULL, NULL, NULL),
(208, '8esqh20106.jpg', 1, NULL, NULL, NULL),
(209, '10LIR20606.jpg', 1, NULL, NULL, NULL),
(210, 'W5inB20406.jpg', 1, NULL, NULL, NULL),
(211, 'VQdfH20606.jpg', 1, NULL, NULL, NULL),
(212, 'GXClG20406.jpg', 1, NULL, NULL, NULL),
(213, 'IoTgM20506.jpg', 1, NULL, NULL, NULL),
(214, 'IQ1SU20606.jpg', 1, NULL, NULL, NULL),
(215, 'xbdz120806.jpg', 1, NULL, NULL, NULL),
(216, 'nfk7g20606.jpg', 1, NULL, NULL, NULL),
(217, 'ZSC9x20406.png', 1, NULL, NULL, NULL),
(218, 'x8NwB20806.jpg', 1, NULL, NULL, NULL),
(219, 'td04I20106.jpg', 1, NULL, NULL, NULL),
(220, '4PiF820706.jpg', 1, NULL, NULL, NULL),
(221, 'WVq8G20806.jpg', 1, NULL, NULL, NULL),
(222, 'EgfBD20506.jpg', 1, NULL, NULL, NULL),
(223, 'kBLNv20806.jpg', 1, NULL, NULL, NULL),
(224, 'xQMD620606.jpg', 1, NULL, NULL, NULL),
(225, 'TANkU20506.jpg', 1, NULL, NULL, NULL),
(226, 'JVuPT20406.jpg', 1, NULL, NULL, NULL),
(227, 't8Nsy20706.jpg', 1, NULL, NULL, NULL),
(228, 'vi4fg20406.jpg', 1, NULL, NULL, NULL),
(229, '2pJv920606.jpg', 1, NULL, NULL, NULL),
(230, 'y3KOy20406.jpg', 1, NULL, NULL, NULL),
(231, 'sPQyG20506.jpg', 1, NULL, NULL, NULL),
(232, 'YwmTW20706.jpg', 1, NULL, NULL, NULL),
(233, 'RrKk420106.jpg', 1, NULL, NULL, NULL),
(234, 'F13oy20506.png', 1, NULL, NULL, NULL),
(235, 'bMTMA20306.jpg', 1, NULL, NULL, NULL),
(236, '36Gg220406.jpg', 1, NULL, NULL, NULL),
(237, 'sGyRZ20106.jpg', 1, NULL, NULL, NULL),
(238, 'jl01M20806.jpg', 1, NULL, NULL, NULL),
(239, 'urR2I20706.jpg', 1, NULL, NULL, NULL),
(240, 'zWEz320206.jpg', 1, NULL, NULL, NULL),
(241, 'LWb5920206.jpg', 1, NULL, NULL, NULL),
(242, 'm9JdC20606.jpg', 1, NULL, NULL, NULL),
(243, 'SAyKo20706.jpg', 1, NULL, NULL, NULL),
(244, 'cNyR720706.jpg', 1, NULL, NULL, NULL),
(245, 'CpCLN20506.jpg', 1, NULL, NULL, NULL),
(246, 'tzJGu20506.jpg', 1, NULL, NULL, NULL),
(247, 'nI0dQ20906.jpg', 1, NULL, NULL, NULL),
(248, 'oxhaU20406.jpg', 1, NULL, NULL, NULL),
(249, 'niLHL20806.jpg', 1, NULL, NULL, NULL),
(250, 'PFPfh20706.jpg', 1, NULL, NULL, NULL),
(251, 'OKBZy20106.jpg', 1, NULL, NULL, NULL),
(252, '74uNe20206.png', 1, NULL, NULL, NULL),
(253, 'MbYqn20306.jpg', 1, NULL, NULL, NULL),
(254, 'Imavp20206.jpg', 1, NULL, NULL, NULL),
(255, 'uxqXH20206.jpg', 1, NULL, NULL, NULL),
(256, 'vgzXZ20806.jpg', 1, NULL, NULL, NULL),
(257, 'a3C1u20306.jpg', 1, NULL, NULL, NULL),
(258, 'xNRv420506.jpg', 1, NULL, NULL, NULL),
(259, 'OUwz120306.jpg', 1, NULL, NULL, NULL),
(260, 'PImij20706.jpg', 1, NULL, NULL, NULL),
(261, 'i53qt20506.jpg', 1, NULL, NULL, NULL),
(262, 'ZeYB720306.jpg', 1, NULL, NULL, NULL),
(263, 'lBJA320106.jpg', 1, NULL, NULL, NULL),
(264, '51nWY20206.jpg', 1, NULL, NULL, NULL),
(265, 'BVWoe20206.jpg', 1, NULL, NULL, NULL),
(266, 'paNK420606.jpg', 1, NULL, NULL, NULL),
(267, 'XYv9f20206.jpg', 1, NULL, NULL, NULL),
(268, 'L3R3F20106.jpg', 1, NULL, NULL, NULL),
(269, 'C0Kqs20606.jpg', 1, NULL, NULL, NULL),
(271, 'oDGvd20407.png', 1, NULL, NULL, NULL),
(272, 'wLCTW20607.jpg', 1, NULL, NULL, NULL),
(274, 'Q4TpM20607.png', 1, NULL, NULL, NULL),
(275, 'jJE8U20307.jpg', 1, NULL, NULL, NULL),
(276, 'FroMu20907.png', 1, NULL, NULL, NULL),
(277, '2mDFY20807.jpg', 1, NULL, NULL, NULL),
(278, 'ZuGI821403.jpg', 1, NULL, NULL, NULL),
(279, '8DuYo22704.jpg', 1, NULL, NULL, NULL),
(280, 'SCe7t22904.jpg', 1, NULL, NULL, NULL),
(281, 'nRyJs22904.jpg', 1, NULL, NULL, NULL),
(282, '6Hk5N22204.jpg', 1, NULL, NULL, NULL),
(283, '4IhlA22905.jpg', 1, NULL, NULL, NULL),
(284, '5jCJv22605.jpg', 1, NULL, NULL, NULL),
(285, 'NboYg22406.jpg', 1, NULL, NULL, NULL),
(287, 'z5u6D22206.jpeg', 1, NULL, NULL, NULL),
(288, 'tu0s824701.jpg', 1, NULL, NULL, NULL),
(289, 'OgLFb24101.jpg', 1, NULL, NULL, NULL),
(290, 'mAuV324401.jpg', 1, NULL, NULL, NULL),
(291, 'HEyS124801.png', 1, NULL, NULL, NULL),
(292, 'jJ8tN24501.jpeg', 1, NULL, NULL, NULL),
(293, '7GYVJ24601.jpg', 1, NULL, NULL, NULL),
(294, 'XK4tk24401.png', 1, NULL, NULL, NULL),
(295, 'FquQ624301.jpg', 1, NULL, NULL, NULL),
(296, 'OYDGE24101.jpg', 1, NULL, NULL, NULL),
(297, 'miSm924201.jpg', 1, NULL, NULL, NULL),
(298, 'pM4Fx24701.png', 1, NULL, NULL, NULL),
(299, 'os4GU24701.jpg', 1, NULL, NULL, NULL),
(300, '4JJP024501.jpg', 1, NULL, NULL, NULL),
(301, 'spUbC24401.jpg', 1, NULL, NULL, NULL),
(302, 'VN3Hw24301.jpg', 1, NULL, NULL, NULL),
(303, 'CIjA424501.png', 1, NULL, NULL, NULL),
(304, 'BCHYs24801.png', 1, NULL, NULL, NULL),
(305, 'MHRNi24501.jpg', 1, NULL, NULL, NULL),
(306, '5ydaL24101.jpg', 1, NULL, NULL, NULL),
(307, '6bQFH24901.png', 1, NULL, NULL, NULL),
(308, '0kkR624601.jpg', 1, NULL, NULL, NULL),
(309, 'Qmcve24401.png', 1, NULL, NULL, NULL),
(310, 'raHcA24501.jpg', 1, NULL, NULL, NULL),
(311, 'QTuKC24801.jpg', 1, NULL, NULL, NULL),
(312, 'ilTh724401.jpg', 1, NULL, NULL, NULL),
(313, 'Dbj1n24301.jpg', 1, NULL, NULL, NULL),
(314, 'mkS7Z24402.jpg', 1, NULL, NULL, NULL),
(315, 'oUAfC24202.png', 1, NULL, NULL, NULL),
(316, 'FzEMk24402.jpg', 1, NULL, NULL, NULL),
(317, 'rtSf124902.jpg', 1, NULL, NULL, NULL),
(318, 'A8zXa24902.jpg', 1, NULL, NULL, NULL),
(319, 'LuRMc24602.png', 1, NULL, NULL, NULL),
(320, 'HOF3k24802.png', 1, NULL, NULL, NULL),
(321, 'cHJrS24102.jpg', 1, NULL, NULL, NULL),
(322, 'MELdt24302.jpg', 1, NULL, NULL, NULL),
(323, 'C2vIE24707.jpg', 1, NULL, NULL, NULL),
(324, 'IJqRi24207.jpg', 1, NULL, NULL, NULL),
(325, 'NtQrk24307.jpg', 1, NULL, NULL, NULL),
(326, '2Vy3I24407.jpg', 1, NULL, NULL, NULL),
(327, '8CVJZ24407.jpg', 1, NULL, NULL, NULL),
(328, 'mHQJv24207.jpg', 1, NULL, NULL, NULL),
(329, 'M5sXC24907.jpg', 1, NULL, NULL, NULL),
(330, 'CSkDj24707.jpg', 1, NULL, NULL, NULL),
(331, '8upkL24807.jpg', 1, NULL, NULL, NULL),
(332, 'EpCKm24507.jpg', 1, NULL, NULL, NULL),
(333, 'jmkAP24307.png', 1, NULL, NULL, NULL),
(334, 'k5no324102.jpeg', 1, NULL, NULL, NULL),
(335, '0BK6227611.png', 1, NULL, NULL, NULL),
(336, 'ypy4B07707.jpg', 1, NULL, NULL, NULL),
(337, 'gLdhb14707.png', 1, NULL, NULL, NULL),
(338, 'BkB4N14707.png', 1, NULL, NULL, NULL),
(339, 'ljsuC14307.png', 1, NULL, NULL, NULL),
(340, 'r1IQQ14707.png', 1, NULL, NULL, NULL),
(341, '9lPw914209.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(84, 83, 'ACTUAL', 277, 370, 'images/media/2019/10/JqYfZ11207.jpg', NULL, NULL),
(85, 83, 'THUMBNAIL', 112, 150, 'images/media/2019/10/thumbnail1570778231JqYfZ11207.jpg', NULL, NULL),
(86, 84, 'ACTUAL', 301, 770, 'images/media/2019/10/6Q4Qy11507.jpg', NULL, NULL),
(87, 85, 'ACTUAL', 550, 368, 'images/media/2019/10/jOVnc11207.jpg', NULL, NULL),
(88, 85, 'THUMBNAIL', 150, 100, 'images/media/2019/10/thumbnail1570778446jOVnc11207.jpg', NULL, NULL),
(89, 85, 'MEDIUM', 400, 268, 'images/media/2019/10/medium1570778446jOVnc11207.jpg', NULL, NULL),
(90, 86, 'ACTUAL', 220, 370, 'images/media/2019/10/Ake4A11107.jpg', NULL, NULL),
(91, 86, 'THUMBNAIL', 89, 150, 'images/media/2019/10/thumbnail1570778447Ake4A11107.jpg', NULL, NULL),
(96, 89, 'ACTUAL', 229, 270, 'images/media/2019/10/nDQtA11407.jpg', NULL, NULL),
(97, 89, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778680nDQtA11407.jpg', NULL, NULL),
(98, 90, 'ACTUAL', 298, 568, 'images/media/2019/10/ueyod11407.jpg', NULL, NULL),
(99, 90, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570778749ueyod11407.jpg', NULL, NULL),
(100, 90, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570778749ueyod11407.jpg', NULL, NULL),
(101, 91, 'ACTUAL', 490, 570, 'images/media/2019/10/xD6MF11207.jpg', NULL, NULL),
(102, 91, 'THUMBNAIL', 129, 150, 'images/media/2019/10/thumbnail1570778967xD6MF11207.jpg', NULL, NULL),
(103, 91, 'MEDIUM', 344, 400, 'images/media/2019/10/medium1570778967xD6MF11207.jpg', NULL, NULL),
(104, 92, 'ACTUAL', 229, 270, 'images/media/2019/10/YZyoU11507.jpg', NULL, NULL),
(105, 92, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778968YZyoU11507.jpg', NULL, NULL),
(106, 93, 'ACTUAL', 301, 770, 'images/media/2019/10/RLshK11309.jpg', NULL, NULL),
(107, 93, 'THUMBNAIL', 59, 150, 'images/media/2019/10/thumbnail1570787475RLshK11309.jpg', NULL, NULL),
(108, 93, 'MEDIUM', 156, 400, 'images/media/2019/10/medium1570787476RLshK11309.jpg', NULL, NULL),
(109, 94, 'ACTUAL', 211, 570, 'images/media/2019/10/pTZdI11309.jpg', NULL, NULL),
(110, 94, 'THUMBNAIL', 56, 150, 'images/media/2019/10/thumbnail1570787731pTZdI11309.jpg', NULL, NULL),
(111, 94, 'MEDIUM', 148, 400, 'images/media/2019/10/medium1570787731pTZdI11309.jpg', NULL, NULL),
(112, 95, 'ACTUAL', 451, 570, 'images/media/2019/10/2t7BU11909.jpg', NULL, NULL),
(113, 95, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707877532t7BU11909.jpg', NULL, NULL),
(114, 95, 'MEDIUM', 316, 400, 'images/media/2019/10/medium15707877542t7BU11909.jpg', NULL, NULL),
(115, 96, 'ACTUAL', 211, 270, 'images/media/2019/10/O0cLp11909.jpg', NULL, NULL),
(116, 96, 'THUMBNAIL', 117, 150, 'images/media/2019/10/thumbnail1570787792O0cLp11909.jpg', NULL, NULL),
(117, 97, 'ACTUAL', 298, 568, 'images/media/2019/10/ncXhn11709.jpg', NULL, NULL),
(118, 97, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570787936ncXhn11709.jpg', NULL, NULL),
(119, 97, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570787936ncXhn11709.jpg', NULL, NULL),
(120, 98, 'ACTUAL', 452, 569, 'images/media/2019/10/3876V11310.jpg', NULL, NULL),
(121, 98, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707880203876V11310.jpg', NULL, NULL),
(122, 98, 'MEDIUM', 318, 400, 'images/media/2019/10/medium15707880213876V11310.jpg', NULL, NULL),
(123, 99, 'ACTUAL', 451, 271, 'images/media/2019/10/80IGj11510.jpg', NULL, NULL),
(124, 99, 'THUMBNAIL', 150, 90, 'images/media/2019/10/thumbnail157078802180IGj11510.jpg', NULL, NULL),
(125, 99, 'MEDIUM', 400, 240, 'images/media/2019/10/medium157078802180IGj11510.jpg', NULL, NULL),
(126, 100, 'ACTUAL', 493, 370, 'images/media/2019/10/ueeqM11410.jpg', NULL, NULL),
(127, 100, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788170ueeqM11410.jpg', NULL, NULL),
(128, 100, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788171ueeqM11410.jpg', NULL, NULL),
(129, 101, 'ACTUAL', 230, 370, 'images/media/2019/10/UrgVW11410.jpg', NULL, NULL),
(130, 101, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788171UrgVW11410.jpg', NULL, NULL),
(131, 102, 'ACTUAL', 230, 370, 'images/media/2019/10/a18kN11510.jpg', NULL, NULL),
(132, 102, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788301a18kN11510.jpg', NULL, NULL),
(133, 103, 'ACTUAL', 493, 370, 'images/media/2019/10/qQM0R11310.jpg', NULL, NULL),
(134, 103, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788302qQM0R11310.jpg', NULL, NULL),
(135, 103, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788302qQM0R11310.jpg', NULL, NULL),
(136, 104, 'ACTUAL', 259, 770, 'images/media/2019/10/VrhhT11510.jpg', NULL, NULL),
(137, 104, 'THUMBNAIL', 50, 150, 'images/media/2019/10/thumbnail1570788382VrhhT11510.jpg', NULL, NULL),
(138, 104, 'MEDIUM', 135, 400, 'images/media/2019/10/medium1570788382VrhhT11510.jpg', NULL, NULL),
(139, 105, 'ACTUAL', 546, 372, 'images/media/2019/10/gSkR011310.jpg', NULL, NULL),
(140, 105, 'THUMBNAIL', 150, 102, 'images/media/2019/10/thumbnail1570788383gSkR011310.jpg', NULL, NULL),
(141, 105, 'MEDIUM', 400, 273, 'images/media/2019/10/medium1570788383gSkR011310.jpg', NULL, NULL),
(142, 106, 'ACTUAL', 430, 1599, 'images/media/2019/10/DXoxt11610.jpg', NULL, NULL),
(143, 106, 'THUMBNAIL', 40, 150, 'images/media/2019/10/thumbnail1570789393DXoxt11610.jpg', NULL, NULL),
(144, 106, 'MEDIUM', 108, 400, 'images/media/2019/10/medium1570789394DXoxt11610.jpg', NULL, NULL),
(145, 106, 'LARGE', 242, 900, 'images/media/2019/10/large1570789394DXoxt11610.jpg', NULL, NULL),
(146, 107, 'ACTUAL', 236, 1169, 'images/media/2019/10/N4WSZ11310.jpg', NULL, NULL),
(147, 107, 'THUMBNAIL', 30, 150, 'images/media/2019/10/thumbnail1570789395N4WSZ11310.jpg', NULL, NULL),
(148, 107, 'MEDIUM', 81, 400, 'images/media/2019/10/medium1570789395N4WSZ11310.jpg', NULL, NULL),
(149, 107, 'LARGE', 182, 900, 'images/media/2019/10/large1570789395N4WSZ11310.jpg', NULL, NULL),
(150, 108, 'ACTUAL', 421, 1170, 'images/media/2019/10/z9MLR11610.jpg', NULL, NULL),
(151, 108, 'THUMBNAIL', 54, 150, 'images/media/2019/10/thumbnail1570789643z9MLR11610.jpg', NULL, NULL),
(152, 108, 'MEDIUM', 144, 400, 'images/media/2019/10/medium1570789643z9MLR11610.jpg', NULL, NULL),
(153, 108, 'LARGE', 324, 900, 'images/media/2019/10/large1570789644z9MLR11610.jpg', NULL, NULL),
(154, 109, 'ACTUAL', 418, 885, 'images/media/2019/10/YNVyV11410.jpg', NULL, NULL),
(155, 109, 'THUMBNAIL', 71, 150, 'images/media/2019/10/thumbnail1570789935YNVyV11410.jpg', NULL, NULL),
(156, 109, 'MEDIUM', 189, 400, 'images/media/2019/10/medium1570789935YNVyV11410.jpg', NULL, NULL),
(157, 110, 'ACTUAL', 387, 770, 'images/media/2019/10/YinE411810.jpg', NULL, NULL),
(158, 110, 'THUMBNAIL', 75, 150, 'images/media/2019/10/thumbnail1570790072YinE411810.jpg', NULL, NULL),
(159, 110, 'MEDIUM', 201, 400, 'images/media/2019/10/medium1570790072YinE411810.jpg', NULL, NULL),
(160, 111, 'ACTUAL', 421, 1600, 'images/media/2019/10/97VNC11210.jpg', NULL, NULL),
(161, 111, 'THUMBNAIL', 39, 150, 'images/media/2019/10/thumbnail157079031897VNC11210.jpg', NULL, NULL),
(162, 111, 'MEDIUM', 105, 400, 'images/media/2019/10/medium157079031997VNC11210.jpg', NULL, NULL),
(163, 111, 'LARGE', 237, 900, 'images/media/2019/10/large157079031997VNC11210.jpg', NULL, NULL),
(168, 114, 'ACTUAL', 179, 370, 'images/media/2019/10/zZZ2n11710.jpg', NULL, NULL),
(169, 114, 'THUMBNAIL', 73, 150, 'images/media/2019/10/thumbnail1570790472zZZ2n11710.jpg', NULL, NULL),
(170, 115, 'ACTUAL', 211, 370, 'images/media/2019/10/vMNsa11710.jpg', NULL, NULL),
(171, 115, 'THUMBNAIL', 86, 150, 'images/media/2019/10/thumbnail1570790553vMNsa11710.jpg', NULL, NULL),
(172, 116, 'ACTUAL', 208, 465, 'images/media/2019/10/qujIz11610.jpg', NULL, NULL),
(173, 116, 'THUMBNAIL', 67, 150, 'images/media/2019/10/thumbnail1570790554qujIz11610.jpg', NULL, NULL),
(174, 116, 'MEDIUM', 179, 400, 'images/media/2019/10/medium1570790554qujIz11610.jpg', NULL, NULL),
(176, 118, 'ACTUAL', 20, 30, 'images/media/2019/10/PJG0C11511.jpg', NULL, NULL),
(177, 119, 'ACTUAL', 20, 30, 'images/media/2019/10/SKOMJ11512.jpg', NULL, NULL),
(178, 120, 'ACTUAL', 20, 30, 'images/media/2019/10/newsletter.jpg', NULL, NULL),
(179, 121, 'ACTUAL', 820, 820, 'images/media/2020/07/RhCsh20105.png', NULL, NULL),
(180, 122, 'ACTUAL', 820, 820, 'images/media/2020/07/VRPoJ20105.png', NULL, NULL),
(181, 121, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264483RhCsh20105.png', NULL, NULL),
(182, 122, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264483VRPoJ20105.png', NULL, NULL),
(183, 121, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595264483RhCsh20105.png', NULL, NULL),
(184, 122, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595264483VRPoJ20105.png', NULL, NULL),
(185, 123, 'ACTUAL', 78, 300, 'images/media/2020/07/FQrzt20605.png', NULL, NULL),
(186, 123, 'THUMBNAIL', 39, 150, 'images/media/2020/07/thumbnail1595264483FQrzt20605.png', NULL, NULL),
(187, 124, 'ACTUAL', 721, 722, 'images/media/2020/07/KkzHg20705.png', NULL, NULL),
(188, 124, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264605KkzHg20705.png', NULL, NULL),
(189, 124, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264605KkzHg20705.png', NULL, NULL),
(190, 125, 'ACTUAL', 721, 722, 'images/media/2020/07/H7dnV20905.png', NULL, NULL),
(191, 125, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264606H7dnV20905.png', NULL, NULL),
(192, 125, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264606H7dnV20905.png', NULL, NULL),
(193, 126, 'ACTUAL', 721, 722, 'images/media/2020/07/GHcz420405.png', NULL, NULL),
(194, 126, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264606GHcz420405.png', NULL, NULL),
(195, 126, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264607GHcz420405.png', NULL, NULL),
(196, 127, 'ACTUAL', 721, 722, 'images/media/2020/07/1wxrC20705.png', NULL, NULL),
(197, 127, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952646071wxrC20705.png', NULL, NULL),
(198, 127, 'MEDIUM', 399, 400, 'images/media/2020/07/medium15952646071wxrC20705.png', NULL, NULL),
(199, 128, 'ACTUAL', 721, 722, 'images/media/2020/07/Onm1R20705.png', NULL, NULL),
(200, 128, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264608Onm1R20705.png', NULL, NULL),
(201, 128, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264608Onm1R20705.png', NULL, NULL),
(202, 129, 'ACTUAL', 721, 722, 'images/media/2020/07/dtoGy20805.png', NULL, NULL),
(203, 129, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264609dtoGy20805.png', NULL, NULL),
(204, 129, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264609dtoGy20805.png', NULL, NULL),
(205, 130, 'ACTUAL', 721, 722, 'images/media/2020/07/JX9AD20105.png', NULL, NULL),
(206, 130, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264609JX9AD20105.png', NULL, NULL),
(207, 130, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264609JX9AD20105.png', NULL, NULL),
(208, 131, 'ACTUAL', 721, 722, 'images/media/2020/07/ewGO120605.png', NULL, NULL),
(209, 131, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264610ewGO120605.png', NULL, NULL),
(210, 132, 'ACTUAL', 721, 722, 'images/media/2020/07/NdPna20505.png', NULL, NULL),
(211, 132, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264611NdPna20505.png', NULL, NULL),
(212, 132, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264611NdPna20505.png', NULL, NULL),
(213, 133, 'ACTUAL', 721, 722, 'images/media/2020/07/D7wSD20105.png', NULL, NULL),
(214, 133, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595264625D7wSD20105.png', NULL, NULL),
(215, 133, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595264625D7wSD20105.png', NULL, NULL),
(216, 134, 'ACTUAL', 600, 600, 'images/media/2020/07/n55cl20805.jpg', NULL, NULL),
(217, 134, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265462n55cl20805.jpg', NULL, NULL),
(218, 134, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265462n55cl20805.jpg', NULL, NULL),
(219, 135, 'ACTUAL', 600, 600, 'images/media/2020/07/AA7k520605.jpg', NULL, NULL),
(220, 135, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265462AA7k520605.jpg', NULL, NULL),
(221, 136, 'ACTUAL', 1024, 1024, 'images/media/2020/07/NOO0i20305.jpg', NULL, NULL),
(222, 135, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265462AA7k520605.jpg', NULL, NULL),
(223, 136, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265463NOO0i20305.jpg', NULL, NULL),
(224, 136, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265463NOO0i20305.jpg', NULL, NULL),
(225, 137, 'ACTUAL', 600, 600, 'images/media/2020/07/5tQWQ20105.jpg', NULL, NULL),
(226, 137, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654635tQWQ20105.jpg', NULL, NULL),
(227, 136, 'LARGE', 900, 900, 'images/media/2020/07/large1595265463NOO0i20305.jpg', NULL, '2020-07-20 05:17:43'),
(228, 137, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654635tQWQ20105.jpg', NULL, NULL),
(229, 138, 'ACTUAL', 600, 600, 'images/media/2020/07/hQZdF20905.jpg', NULL, NULL),
(230, 138, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265463hQZdF20905.jpg', NULL, NULL),
(231, 138, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265463hQZdF20905.jpg', NULL, NULL),
(232, 139, 'ACTUAL', 600, 600, 'images/media/2020/07/1UYHj20905.jpg', NULL, NULL),
(233, 139, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654631UYHj20905.jpg', NULL, NULL),
(234, 139, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654631UYHj20905.jpg', NULL, NULL),
(235, 140, 'ACTUAL', 600, 600, 'images/media/2020/07/TzZFS20205.jpg', NULL, NULL),
(236, 140, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265463TzZFS20205.jpg', NULL, NULL),
(237, 140, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265463TzZFS20205.jpg', NULL, NULL),
(238, 141, 'ACTUAL', 700, 900, 'images/media/2020/07/HXaPn20305.jpg', NULL, NULL),
(239, 141, 'THUMBNAIL', 117, 150, 'images/media/2020/07/thumbnail1595265464HXaPn20305.jpg', NULL, NULL),
(240, 141, 'MEDIUM', 311, 400, 'images/media/2020/07/medium1595265464HXaPn20305.jpg', NULL, NULL),
(241, 141, 'LARGE', 700, 900, 'images/media/2020/07/large1595265464HXaPn20305.jpg', NULL, '2020-07-20 05:17:44'),
(242, 142, 'ACTUAL', 600, 600, 'images/media/2020/07/hIsS820805.jpg', NULL, NULL),
(243, 142, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265464hIsS820805.jpg', NULL, NULL),
(244, 142, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265464hIsS820805.jpg', NULL, NULL),
(245, 143, 'ACTUAL', 1024, 1024, 'images/media/2020/07/wBece20805.jpg', NULL, NULL),
(246, 143, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265465wBece20805.jpg', NULL, NULL),
(247, 143, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265465wBece20805.jpg', NULL, NULL),
(248, 143, 'LARGE', 900, 900, 'images/media/2020/07/large1595265465wBece20805.jpg', NULL, '2020-07-20 05:17:45'),
(249, 144, 'ACTUAL', 600, 600, 'images/media/2020/07/gNoJs20205.jpg', NULL, NULL),
(250, 144, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265473gNoJs20205.jpg', NULL, NULL),
(251, 145, 'ACTUAL', 600, 600, 'images/media/2020/07/6svCC20405.jpg', NULL, NULL),
(252, 145, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654736svCC20405.jpg', NULL, NULL),
(253, 144, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265473gNoJs20205.jpg', NULL, NULL),
(254, 145, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654736svCC20405.jpg', NULL, NULL),
(255, 146, 'ACTUAL', 600, 600, 'images/media/2020/07/Zo9NW20405.jpg', NULL, NULL),
(256, 146, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265474Zo9NW20405.jpg', NULL, NULL),
(257, 146, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265474Zo9NW20405.jpg', NULL, NULL),
(258, 147, 'ACTUAL', 600, 600, 'images/media/2020/07/BmKll20305.jpg', NULL, NULL),
(259, 147, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265476BmKll20305.jpg', NULL, NULL),
(260, 148, 'ACTUAL', 600, 600, 'images/media/2020/07/2ljt220805.jpg', NULL, NULL),
(261, 148, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654762ljt220805.jpg', NULL, NULL),
(262, 147, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265476BmKll20305.jpg', NULL, NULL),
(263, 148, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654762ljt220805.jpg', NULL, NULL),
(264, 149, 'ACTUAL', 600, 600, 'images/media/2020/07/6VhYU20605.jpg', NULL, NULL),
(265, 149, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654766VhYU20605.jpg', NULL, NULL),
(266, 149, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654766VhYU20605.jpg', NULL, NULL),
(267, 150, 'ACTUAL', 600, 600, 'images/media/2020/07/pegC720105.jpg', NULL, NULL),
(268, 150, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265477pegC720105.jpg', NULL, NULL),
(269, 150, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265477pegC720105.jpg', NULL, NULL),
(270, 151, 'ACTUAL', 600, 600, 'images/media/2020/07/OPH7P20905.jpg', NULL, NULL),
(271, 151, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265477OPH7P20905.jpg', NULL, NULL),
(272, 152, 'ACTUAL', 600, 600, 'images/media/2020/07/FWJOF20605.jpg', NULL, NULL),
(273, 152, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265477FWJOF20605.jpg', NULL, NULL),
(274, 151, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265477OPH7P20905.jpg', NULL, NULL),
(275, 152, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265477FWJOF20605.jpg', NULL, NULL),
(276, 153, 'ACTUAL', 600, 600, 'images/media/2020/07/EC3BR20705.jpg', NULL, NULL),
(277, 153, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265478EC3BR20705.jpg', NULL, NULL),
(278, 153, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265478EC3BR20705.jpg', NULL, NULL),
(279, 154, 'ACTUAL', 178, 283, 'images/media/2020/07/HsfVS20405.jpg', NULL, NULL),
(280, 154, 'THUMBNAIL', 94, 150, 'images/media/2020/07/thumbnail1595265488HsfVS20405.jpg', NULL, NULL),
(281, 155, 'ACTUAL', 600, 600, 'images/media/2020/07/TX3GN20805.jpg', NULL, NULL),
(282, 155, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265488TX3GN20805.jpg', NULL, NULL),
(283, 155, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265488TX3GN20805.jpg', NULL, NULL),
(284, 156, 'ACTUAL', 600, 600, 'images/media/2020/07/2jwG820505.jpg', NULL, NULL),
(285, 156, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654892jwG820505.jpg', NULL, NULL),
(286, 156, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654892jwG820505.jpg', NULL, NULL),
(287, 157, 'ACTUAL', 600, 600, 'images/media/2020/07/CQjTW20105.jpg', NULL, NULL),
(288, 157, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265489CQjTW20105.jpg', NULL, NULL),
(289, 157, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265489CQjTW20105.jpg', NULL, NULL),
(290, 158, 'ACTUAL', 600, 600, 'images/media/2020/07/x2wzK20105.jpg', NULL, NULL),
(291, 159, 'ACTUAL', 600, 600, 'images/media/2020/07/9NAY520105.jpg', NULL, NULL),
(292, 158, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265490x2wzK20105.jpg', NULL, NULL),
(293, 159, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952654909NAY520105.jpg', NULL, NULL),
(294, 158, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265490x2wzK20105.jpg', NULL, NULL),
(295, 159, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952654909NAY520105.jpg', NULL, NULL),
(296, 160, 'ACTUAL', 600, 600, 'images/media/2020/07/EUKHc20105.jpg', NULL, NULL),
(297, 161, 'ACTUAL', 600, 600, 'images/media/2020/07/HUqXZ20905.jpg', NULL, NULL),
(298, 160, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265491EUKHc20105.jpg', NULL, NULL),
(299, 161, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265491HUqXZ20905.jpg', NULL, NULL),
(300, 160, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265491EUKHc20105.jpg', NULL, NULL),
(301, 161, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265491HUqXZ20905.jpg', NULL, NULL),
(302, 162, 'ACTUAL', 700, 700, 'images/media/2020/07/EH7iD20105.jpg', NULL, NULL),
(303, 163, 'ACTUAL', 240, 360, 'images/media/2020/07/SCpas20605.jpg', NULL, NULL),
(304, 162, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265491EH7iD20105.jpg', NULL, NULL),
(305, 163, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595265491SCpas20605.jpg', NULL, NULL),
(306, 162, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265491EH7iD20105.jpg', NULL, NULL),
(307, 164, 'ACTUAL', 600, 600, 'images/media/2020/07/hHci420805.jpg', NULL, NULL),
(308, 164, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265511hHci420805.jpg', NULL, NULL),
(309, 164, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265511hHci420805.jpg', NULL, NULL),
(310, 165, 'ACTUAL', 600, 600, 'images/media/2020/07/kMHBL20105.jpg', NULL, NULL),
(311, 165, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265512kMHBL20105.jpg', NULL, NULL),
(312, 165, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265512kMHBL20105.jpg', NULL, NULL),
(313, 166, 'ACTUAL', 600, 600, 'images/media/2020/07/JaSX220305.jpg', NULL, NULL),
(314, 166, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265512JaSX220305.jpg', NULL, NULL),
(315, 166, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265512JaSX220305.jpg', NULL, NULL),
(316, 167, 'ACTUAL', 600, 600, 'images/media/2020/07/DvD9Y20505.jpg', NULL, NULL),
(317, 167, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265512DvD9Y20505.jpg', NULL, NULL),
(318, 167, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265512DvD9Y20505.jpg', NULL, NULL),
(319, 168, 'ACTUAL', 201, 251, 'images/media/2020/07/dvb2E20205.jpg', NULL, NULL),
(320, 168, 'THUMBNAIL', 120, 150, 'images/media/2020/07/thumbnail1595265513dvb2E20205.jpg', NULL, NULL),
(321, 169, 'ACTUAL', 121, 206, 'images/media/2020/07/KlTwk20305.jpg', NULL, NULL),
(322, 169, 'THUMBNAIL', 88, 150, 'images/media/2020/07/thumbnail1595265513KlTwk20305.jpg', NULL, NULL),
(323, 170, 'ACTUAL', 600, 600, 'images/media/2020/07/kxpB920305.jpg', NULL, NULL),
(324, 170, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265514kxpB920305.jpg', NULL, NULL),
(325, 170, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265514kxpB920305.jpg', NULL, NULL),
(326, 171, 'ACTUAL', 600, 600, 'images/media/2020/07/xsLss20905.jpg', NULL, NULL),
(327, 171, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265515xsLss20905.jpg', NULL, NULL),
(328, 171, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265515xsLss20905.jpg', NULL, NULL),
(329, 172, 'ACTUAL', 208, 243, 'images/media/2020/07/Wi5kr20105.jpg', NULL, NULL),
(330, 172, 'THUMBNAIL', 128, 150, 'images/media/2020/07/thumbnail1595265515Wi5kr20105.jpg', NULL, NULL),
(331, 173, 'ACTUAL', 700, 700, 'images/media/2020/07/ILRpF20105.png', NULL, NULL),
(332, 173, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265516ILRpF20105.png', NULL, NULL),
(333, 173, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265516ILRpF20105.png', NULL, NULL),
(334, 174, 'ACTUAL', 600, 600, 'images/media/2020/07/OiGgP20105.jpg', NULL, NULL),
(335, 174, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265549OiGgP20105.jpg', NULL, NULL),
(336, 174, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265549OiGgP20105.jpg', NULL, NULL),
(337, 175, 'ACTUAL', 600, 600, 'images/media/2020/07/emJyU20305.jpg', NULL, NULL),
(338, 175, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265549emJyU20305.jpg', NULL, NULL),
(339, 175, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265549emJyU20305.jpg', NULL, NULL),
(340, 176, 'ACTUAL', 600, 600, 'images/media/2020/07/ZBvp620805.jpg', NULL, NULL),
(341, 176, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265549ZBvp620805.jpg', NULL, NULL),
(342, 176, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265549ZBvp620805.jpg', NULL, NULL),
(343, 177, 'ACTUAL', 694, 1140, 'images/media/2020/07/3hUzT20605.png', NULL, NULL),
(344, 178, 'ACTUAL', 600, 600, 'images/media/2020/07/v6dhb20405.jpg', NULL, NULL),
(345, 178, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265551v6dhb20405.jpg', NULL, NULL),
(346, 177, 'THUMBNAIL', 91, 150, 'images/media/2020/07/thumbnail15952655513hUzT20605.png', NULL, NULL),
(347, 178, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265551v6dhb20405.jpg', NULL, NULL),
(348, 177, 'MEDIUM', 244, 400, 'images/media/2020/07/medium15952655513hUzT20605.png', NULL, NULL),
(349, 177, 'LARGE', 548, 900, 'images/media/2020/07/large15952655513hUzT20605.png', NULL, '2020-07-20 05:19:11'),
(350, 179, 'ACTUAL', 600, 600, 'images/media/2020/07/Wde0g20805.jpg', NULL, NULL),
(351, 179, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265552Wde0g20805.jpg', NULL, NULL),
(352, 179, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265552Wde0g20805.jpg', NULL, NULL),
(353, 180, 'ACTUAL', 167, 301, 'images/media/2020/07/hzHK320105.jpg', NULL, NULL),
(354, 180, 'THUMBNAIL', 83, 150, 'images/media/2020/07/thumbnail1595265552hzHK320105.jpg', NULL, NULL),
(355, 181, 'ACTUAL', 600, 600, 'images/media/2020/07/K4KTH20405.jpg', NULL, NULL),
(356, 181, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265552K4KTH20405.jpg', NULL, NULL),
(357, 181, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265552K4KTH20405.jpg', NULL, NULL),
(358, 182, 'ACTUAL', 600, 600, 'images/media/2020/07/8g0lC20905.jpg', NULL, NULL),
(359, 182, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952655538g0lC20905.jpg', NULL, NULL),
(360, 182, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952655538g0lC20905.jpg', NULL, NULL),
(361, 183, 'ACTUAL', 600, 600, 'images/media/2020/07/OhfXC20505.jpg', NULL, NULL),
(362, 183, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265553OhfXC20505.jpg', NULL, NULL),
(363, 183, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265553OhfXC20505.jpg', NULL, NULL),
(364, 184, 'ACTUAL', 190, 266, 'images/media/2020/07/0HAwo20305.jpg', NULL, NULL),
(365, 184, 'THUMBNAIL', 107, 150, 'images/media/2020/07/thumbnail15952655640HAwo20305.jpg', NULL, NULL),
(366, 185, 'ACTUAL', 600, 600, 'images/media/2020/07/1UCWk20905.jpg', NULL, NULL),
(367, 185, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952655651UCWk20905.jpg', NULL, NULL),
(368, 185, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952655651UCWk20905.jpg', NULL, NULL),
(369, 186, 'ACTUAL', 600, 600, 'images/media/2020/07/XiEpV20805.jpg', NULL, NULL),
(370, 186, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265566XiEpV20805.jpg', NULL, NULL),
(371, 186, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265566XiEpV20805.jpg', NULL, NULL),
(372, 187, 'ACTUAL', 600, 600, 'images/media/2020/07/EA3Gm20905.jpg', NULL, NULL),
(373, 187, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265567EA3Gm20905.jpg', NULL, NULL),
(374, 187, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265568EA3Gm20905.jpg', NULL, NULL),
(375, 188, 'ACTUAL', 183, 275, 'images/media/2020/07/AyAyq20105.jpg', NULL, NULL),
(376, 188, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595265568AyAyq20105.jpg', NULL, NULL),
(377, 189, 'ACTUAL', 1024, 1024, 'images/media/2020/07/JzMkU20205.jpg', NULL, NULL),
(378, 189, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265568JzMkU20205.jpg', NULL, NULL),
(379, 190, 'ACTUAL', 600, 600, 'images/media/2020/07/9789Q20505.jpg', NULL, NULL),
(380, 190, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952655689789Q20505.jpg', NULL, NULL),
(381, 190, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952655689789Q20505.jpg', NULL, NULL),
(382, 189, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265568JzMkU20205.jpg', NULL, NULL),
(383, 189, 'LARGE', 900, 900, 'images/media/2020/07/large1595265568JzMkU20205.jpg', NULL, '2020-07-20 05:19:28'),
(384, 191, 'ACTUAL', 600, 600, 'images/media/2020/07/NwNFe20905.jpg', NULL, NULL),
(385, 192, 'ACTUAL', 588, 578, 'images/media/2020/07/hWmJ020205.jpeg', NULL, NULL),
(386, 191, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265568NwNFe20905.jpg', NULL, NULL),
(387, 192, 'THUMBNAIL', 150, 147, 'images/media/2020/07/thumbnail1595265568hWmJ020205.jpeg', NULL, NULL),
(388, 191, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265569NwNFe20905.jpg', NULL, NULL),
(389, 192, 'MEDIUM', 400, 393, 'images/media/2020/07/medium1595265569hWmJ020205.jpeg', NULL, NULL),
(390, 193, 'ACTUAL', 600, 600, 'images/media/2020/07/I1Wt120805.jpg', NULL, NULL),
(391, 193, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265569I1Wt120805.jpg', NULL, NULL),
(392, 193, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265569I1Wt120805.jpg', NULL, NULL),
(393, 194, 'ACTUAL', 600, 600, 'images/media/2020/07/PFbtA20605.jpg', NULL, NULL),
(394, 194, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265579PFbtA20605.jpg', NULL, NULL),
(395, 194, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265579PFbtA20605.jpg', NULL, NULL),
(396, 195, 'ACTUAL', 600, 600, 'images/media/2020/07/eqiJq20505.jpg', NULL, NULL),
(397, 195, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265580eqiJq20505.jpg', NULL, NULL),
(398, 195, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265580eqiJq20505.jpg', NULL, NULL),
(399, 196, 'ACTUAL', 800, 800, 'images/media/2020/07/YvW3W20105.jpg', NULL, NULL),
(400, 196, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265581YvW3W20105.jpg', NULL, NULL),
(401, 196, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265581YvW3W20105.jpg', NULL, NULL),
(402, 197, 'ACTUAL', 600, 600, 'images/media/2020/07/yOaAu20505.jpg', NULL, NULL),
(403, 197, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265581yOaAu20505.jpg', NULL, NULL),
(404, 197, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265581yOaAu20505.jpg', NULL, NULL),
(405, 198, 'ACTUAL', 600, 600, 'images/media/2020/07/u8oe020505.jpg', NULL, NULL),
(406, 198, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265582u8oe020505.jpg', NULL, NULL),
(407, 198, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265582u8oe020505.jpg', NULL, NULL),
(408, 199, 'ACTUAL', 188, 268, 'images/media/2020/07/mfMAL20905.jpg', NULL, NULL),
(409, 199, 'THUMBNAIL', 105, 150, 'images/media/2020/07/thumbnail1595265582mfMAL20905.jpg', NULL, NULL),
(410, 200, 'ACTUAL', 600, 600, 'images/media/2020/07/uTNlg20505.jpg', NULL, NULL),
(411, 200, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265582uTNlg20505.jpg', NULL, NULL),
(412, 200, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265582uTNlg20505.jpg', NULL, NULL),
(413, 201, 'ACTUAL', 600, 600, 'images/media/2020/07/s0Nto20505.jpg', NULL, NULL),
(414, 201, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265582s0Nto20505.jpg', NULL, NULL),
(415, 201, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265582s0Nto20505.jpg', NULL, NULL),
(416, 202, 'ACTUAL', 600, 600, 'images/media/2020/07/eJ6M720205.jpg', NULL, NULL),
(417, 203, 'ACTUAL', 174, 289, 'images/media/2020/07/toNBD20705.jpg', NULL, NULL),
(418, 202, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595265583eJ6M720205.jpg', NULL, NULL),
(419, 203, 'THUMBNAIL', 90, 150, 'images/media/2020/07/thumbnail1595265583toNBD20705.jpg', NULL, NULL),
(420, 202, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595265583eJ6M720205.jpg', NULL, NULL),
(421, 204, 'ACTUAL', 700, 700, 'images/media/2020/07/tDBKt20405.jpg', NULL, NULL),
(422, 204, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595266077tDBKt20405.jpg', NULL, NULL),
(423, 204, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595266078tDBKt20405.jpg', NULL, NULL),
(424, 205, 'ACTUAL', 600, 600, 'images/media/2020/07/0Pxjv20306.jpg', NULL, NULL),
(425, 206, 'ACTUAL', 1280, 1040, 'images/media/2020/07/XbMwF20706.jpg', NULL, NULL),
(426, 205, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952702830Pxjv20306.jpg', NULL, NULL),
(427, 205, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952702830Pxjv20306.jpg', NULL, NULL),
(428, 206, 'THUMBNAIL', 150, 122, 'images/media/2020/07/thumbnail1595270283XbMwF20706.jpg', NULL, NULL),
(429, 206, 'MEDIUM', 400, 325, 'images/media/2020/07/medium1595270283XbMwF20706.jpg', NULL, NULL),
(430, 206, 'LARGE', 900, 731, 'images/media/2020/07/large1595270283XbMwF20706.jpg', NULL, '2020-07-20 06:38:03'),
(431, 207, 'ACTUAL', 565, 902, 'images/media/2020/07/cB2E020706.jpg', NULL, NULL),
(432, 207, 'THUMBNAIL', 94, 150, 'images/media/2020/07/thumbnail1595270283cB2E020706.jpg', NULL, NULL),
(433, 207, 'MEDIUM', 251, 400, 'images/media/2020/07/medium1595270284cB2E020706.jpg', NULL, NULL),
(434, 208, 'ACTUAL', 600, 930, 'images/media/2020/07/8esqh20106.jpg', NULL, NULL),
(435, 207, 'LARGE', 564, 900, 'images/media/2020/07/large1595270284cB2E020706.jpg', NULL, '2020-07-20 06:38:04'),
(436, 208, 'THUMBNAIL', 97, 150, 'images/media/2020/07/thumbnail15952702848esqh20106.jpg', NULL, NULL),
(437, 208, 'MEDIUM', 258, 400, 'images/media/2020/07/medium15952702848esqh20106.jpg', NULL, NULL),
(438, 208, 'LARGE', 581, 900, 'images/media/2020/07/large15952702848esqh20106.jpg', NULL, '2020-07-20 06:38:04'),
(439, 209, 'ACTUAL', 742, 1114, 'images/media/2020/07/10LIR20606.jpg', NULL, NULL),
(440, 209, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail159527028410LIR20606.jpg', NULL, NULL),
(441, 210, 'ACTUAL', 600, 600, 'images/media/2020/07/W5inB20406.jpg', NULL, NULL),
(442, 209, 'MEDIUM', 266, 400, 'images/media/2020/07/medium159527028410LIR20606.jpg', NULL, NULL),
(443, 210, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270284W5inB20406.jpg', NULL, NULL),
(444, 210, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270284W5inB20406.jpg', NULL, NULL),
(445, 209, 'LARGE', 599, 900, 'images/media/2020/07/large159527028410LIR20606.jpg', NULL, '2020-07-20 06:38:04'),
(446, 211, 'ACTUAL', 777, 1166, 'images/media/2020/07/VQdfH20606.jpg', NULL, NULL),
(447, 212, 'ACTUAL', 1024, 1024, 'images/media/2020/07/GXClG20406.jpg', NULL, NULL),
(448, 211, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270285VQdfH20606.jpg', NULL, NULL),
(449, 212, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270285GXClG20406.jpg', NULL, NULL),
(450, 211, 'MEDIUM', 267, 400, 'images/media/2020/07/medium1595270285VQdfH20606.jpg', NULL, NULL),
(451, 212, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270285GXClG20406.jpg', NULL, NULL),
(452, 211, 'LARGE', 600, 900, 'images/media/2020/07/large1595270285VQdfH20606.jpg', NULL, '2020-07-20 06:38:05'),
(453, 212, 'LARGE', 900, 900, 'images/media/2020/07/large1595270285GXClG20406.jpg', NULL, '2020-07-20 06:38:05'),
(454, 213, 'ACTUAL', 398, 600, 'images/media/2020/07/IoTgM20506.jpg', NULL, NULL),
(455, 213, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270286IoTgM20506.jpg', NULL, NULL),
(456, 213, 'MEDIUM', 265, 400, 'images/media/2020/07/medium1595270286IoTgM20506.jpg', NULL, NULL),
(457, 214, 'ACTUAL', 600, 600, 'images/media/2020/07/IQ1SU20606.jpg', NULL, NULL),
(458, 214, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270286IQ1SU20606.jpg', NULL, NULL),
(459, 214, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270286IQ1SU20606.jpg', NULL, NULL),
(460, 215, 'ACTUAL', 600, 600, 'images/media/2020/07/xbdz120806.jpg', NULL, NULL),
(461, 215, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270295xbdz120806.jpg', NULL, NULL),
(462, 215, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270295xbdz120806.jpg', NULL, NULL),
(463, 216, 'ACTUAL', 849, 1276, 'images/media/2020/07/nfk7g20606.jpg', NULL, NULL),
(464, 216, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270298nfk7g20606.jpg', NULL, NULL),
(465, 216, 'MEDIUM', 266, 400, 'images/media/2020/07/medium1595270298nfk7g20606.jpg', NULL, NULL),
(466, 216, 'LARGE', 599, 900, 'images/media/2020/07/large1595270299nfk7g20606.jpg', NULL, '2020-07-20 06:38:19'),
(467, 217, 'ACTUAL', 900, 700, 'images/media/2020/07/ZSC9x20406.png', NULL, NULL),
(468, 217, 'THUMBNAIL', 150, 117, 'images/media/2020/07/thumbnail1595270300ZSC9x20406.png', NULL, NULL),
(469, 217, 'MEDIUM', 400, 311, 'images/media/2020/07/medium1595270300ZSC9x20406.png', NULL, NULL),
(470, 218, 'ACTUAL', 600, 902, 'images/media/2020/07/x8NwB20806.jpg', NULL, NULL),
(471, 218, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270300x8NwB20806.jpg', NULL, NULL),
(472, 218, 'MEDIUM', 266, 400, 'images/media/2020/07/medium1595270300x8NwB20806.jpg', NULL, NULL),
(473, 218, 'LARGE', 599, 900, 'images/media/2020/07/large1595270300x8NwB20806.jpg', NULL, '2020-07-20 06:38:20'),
(474, 217, 'LARGE', 900, 700, 'images/media/2020/07/large1595270300ZSC9x20406.png', NULL, '2020-07-20 06:38:20'),
(475, 219, 'ACTUAL', 600, 600, 'images/media/2020/07/td04I20106.jpg', NULL, NULL),
(476, 219, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270301td04I20106.jpg', NULL, NULL),
(477, 219, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270301td04I20106.jpg', NULL, NULL),
(478, 220, 'ACTUAL', 183, 275, 'images/media/2020/07/4PiF820706.jpg', NULL, NULL),
(479, 220, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail15952703014PiF820706.jpg', NULL, NULL),
(480, 221, 'ACTUAL', 1346, 1346, 'images/media/2020/07/WVq8G20806.jpg', NULL, NULL),
(481, 222, 'ACTUAL', 800, 800, 'images/media/2020/07/EgfBD20506.jpg', NULL, NULL),
(482, 222, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270301EgfBD20506.jpg', NULL, NULL),
(483, 221, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270301WVq8G20806.jpg', NULL, NULL),
(484, 222, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270301EgfBD20506.jpg', NULL, NULL),
(485, 221, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270301WVq8G20806.jpg', NULL, NULL),
(486, 221, 'LARGE', 900, 900, 'images/media/2020/07/large1595270302WVq8G20806.jpg', NULL, '2020-07-20 06:38:22'),
(487, 223, 'ACTUAL', 311, 356, 'images/media/2020/07/kBLNv20806.jpg', NULL, NULL),
(488, 223, 'THUMBNAIL', 131, 150, 'images/media/2020/07/thumbnail1595270302kBLNv20806.jpg', NULL, NULL),
(489, 224, 'ACTUAL', 1024, 1024, 'images/media/2020/07/xQMD620606.jpg', NULL, NULL),
(490, 224, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270302xQMD620606.jpg', NULL, NULL),
(491, 224, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270302xQMD620606.jpg', NULL, NULL),
(492, 224, 'LARGE', 900, 900, 'images/media/2020/07/large1595270303xQMD620606.jpg', NULL, '2020-07-20 06:38:23'),
(493, 225, 'ACTUAL', 806, 1042, 'images/media/2020/07/TANkU20506.jpg', NULL, NULL),
(494, 226, 'ACTUAL', 921, 1382, 'images/media/2020/07/JVuPT20406.jpg', NULL, NULL),
(495, 225, 'THUMBNAIL', 116, 150, 'images/media/2020/07/thumbnail1595270318TANkU20506.jpg', NULL, NULL),
(496, 225, 'MEDIUM', 309, 400, 'images/media/2020/07/medium1595270318TANkU20506.jpg', NULL, NULL),
(497, 226, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270318JVuPT20406.jpg', NULL, NULL),
(498, 226, 'MEDIUM', 267, 400, 'images/media/2020/07/medium1595270318JVuPT20406.jpg', NULL, NULL),
(499, 225, 'LARGE', 696, 900, 'images/media/2020/07/large1595270318TANkU20506.jpg', NULL, '2020-07-20 06:38:38'),
(500, 226, 'LARGE', 600, 900, 'images/media/2020/07/large1595270318JVuPT20406.jpg', NULL, '2020-07-20 06:38:38'),
(501, 227, 'ACTUAL', 600, 600, 'images/media/2020/07/t8Nsy20706.jpg', NULL, NULL),
(502, 227, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270319t8Nsy20706.jpg', NULL, NULL),
(503, 227, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270319t8Nsy20706.jpg', NULL, NULL),
(504, 228, 'ACTUAL', 600, 600, 'images/media/2020/07/vi4fg20406.jpg', NULL, NULL),
(505, 228, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270319vi4fg20406.jpg', NULL, NULL),
(506, 228, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270319vi4fg20406.jpg', NULL, NULL),
(507, 229, 'ACTUAL', 600, 600, 'images/media/2020/07/2pJv920606.jpg', NULL, NULL),
(508, 229, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952703202pJv920606.jpg', NULL, NULL),
(509, 229, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952703202pJv920606.jpg', NULL, NULL),
(510, 230, 'ACTUAL', 600, 600, 'images/media/2020/07/y3KOy20406.jpg', NULL, NULL),
(511, 230, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270320y3KOy20406.jpg', NULL, NULL),
(512, 230, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270320y3KOy20406.jpg', NULL, NULL),
(513, 231, 'ACTUAL', 982, 1105, 'images/media/2020/07/sPQyG20506.jpg', NULL, NULL),
(514, 231, 'THUMBNAIL', 133, 150, 'images/media/2020/07/thumbnail1595270320sPQyG20506.jpg', NULL, NULL),
(515, 231, 'MEDIUM', 355, 400, 'images/media/2020/07/medium1595270320sPQyG20506.jpg', NULL, NULL),
(516, 232, 'ACTUAL', 800, 968, 'images/media/2020/07/YwmTW20706.jpg', NULL, NULL),
(517, 232, 'THUMBNAIL', 124, 150, 'images/media/2020/07/thumbnail1595270320YwmTW20706.jpg', NULL, NULL),
(518, 232, 'MEDIUM', 331, 400, 'images/media/2020/07/medium1595270320YwmTW20706.jpg', NULL, NULL),
(519, 231, 'LARGE', 800, 900, 'images/media/2020/07/large1595270320sPQyG20506.jpg', NULL, '2020-07-20 06:38:40'),
(520, 232, 'LARGE', 744, 900, 'images/media/2020/07/large1595270320YwmTW20706.jpg', NULL, '2020-07-20 06:38:40'),
(521, 233, 'ACTUAL', 600, 600, 'images/media/2020/07/RrKk420106.jpg', NULL, NULL),
(522, 233, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270321RrKk420106.jpg', NULL, NULL),
(523, 233, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270321RrKk420106.jpg', NULL, NULL),
(524, 234, 'ACTUAL', 332, 600, 'images/media/2020/07/F13oy20506.png', NULL, NULL),
(525, 234, 'THUMBNAIL', 83, 150, 'images/media/2020/07/thumbnail1595270321F13oy20506.png', NULL, NULL),
(526, 234, 'MEDIUM', 221, 400, 'images/media/2020/07/medium1595270321F13oy20506.png', NULL, NULL),
(527, 235, 'ACTUAL', 600, 600, 'images/media/2020/07/bMTMA20306.jpg', NULL, NULL),
(528, 235, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270339bMTMA20306.jpg', NULL, NULL),
(529, 235, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270339bMTMA20306.jpg', NULL, NULL),
(530, 236, 'ACTUAL', 819, 1228, 'images/media/2020/07/36Gg220406.jpg', NULL, NULL),
(531, 236, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail159527033936Gg220406.jpg', NULL, NULL),
(532, 236, 'MEDIUM', 267, 400, 'images/media/2020/07/medium159527033936Gg220406.jpg', NULL, NULL),
(533, 236, 'LARGE', 600, 900, 'images/media/2020/07/large159527033936Gg220406.jpg', NULL, '2020-07-20 06:38:59'),
(534, 237, 'ACTUAL', 600, 600, 'images/media/2020/07/sGyRZ20106.jpg', NULL, NULL),
(535, 237, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270340sGyRZ20106.jpg', NULL, NULL),
(536, 237, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270340sGyRZ20106.jpg', NULL, NULL),
(537, 238, 'ACTUAL', 600, 600, 'images/media/2020/07/jl01M20806.jpg', NULL, NULL),
(538, 238, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270340jl01M20806.jpg', NULL, NULL),
(539, 238, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270340jl01M20806.jpg', NULL, NULL),
(540, 239, 'ACTUAL', 600, 600, 'images/media/2020/07/urR2I20706.jpg', NULL, NULL),
(541, 239, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270340urR2I20706.jpg', NULL, NULL),
(542, 239, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270340urR2I20706.jpg', NULL, NULL),
(543, 240, 'ACTUAL', 777, 1166, 'images/media/2020/07/zWEz320206.jpg', NULL, NULL),
(544, 240, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270341zWEz320206.jpg', NULL, NULL),
(545, 240, 'MEDIUM', 267, 400, 'images/media/2020/07/medium1595270341zWEz320206.jpg', NULL, NULL),
(546, 240, 'LARGE', 600, 900, 'images/media/2020/07/large1595270341zWEz320206.jpg', NULL, '2020-07-20 06:39:01'),
(547, 241, 'ACTUAL', 1024, 1024, 'images/media/2020/07/LWb5920206.jpg', NULL, NULL),
(548, 241, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270341LWb5920206.jpg', NULL, NULL),
(549, 242, 'ACTUAL', 600, 600, 'images/media/2020/07/m9JdC20606.jpg', NULL, NULL),
(550, 242, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270341m9JdC20606.jpg', NULL, NULL),
(551, 242, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270341m9JdC20606.jpg', NULL, NULL),
(552, 241, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270341LWb5920206.jpg', NULL, NULL),
(553, 241, 'LARGE', 900, 900, 'images/media/2020/07/large1595270342LWb5920206.jpg', NULL, '2020-07-20 06:39:02'),
(554, 243, 'ACTUAL', 600, 600, 'images/media/2020/07/SAyKo20706.jpg', NULL, NULL),
(555, 243, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270342SAyKo20706.jpg', NULL, NULL),
(556, 243, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270342SAyKo20706.jpg', NULL, NULL),
(557, 244, 'ACTUAL', 1374, 916, 'images/media/2020/07/cNyR720706.jpg', NULL, NULL),
(558, 244, 'THUMBNAIL', 150, 100, 'images/media/2020/07/thumbnail1595270342cNyR720706.jpg', NULL, NULL),
(559, 244, 'MEDIUM', 400, 267, 'images/media/2020/07/medium1595270343cNyR720706.jpg', NULL, NULL),
(560, 244, 'LARGE', 900, 600, 'images/media/2020/07/large1595270343cNyR720706.jpg', NULL, '2020-07-20 06:39:03'),
(561, 245, 'ACTUAL', 600, 600, 'images/media/2020/07/CpCLN20506.jpg', NULL, NULL),
(562, 245, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270370CpCLN20506.jpg', NULL, NULL),
(563, 245, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270370CpCLN20506.jpg', NULL, NULL),
(564, 246, 'ACTUAL', 1092, 1092, 'images/media/2020/07/tzJGu20506.jpg', NULL, NULL),
(565, 246, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270370tzJGu20506.jpg', NULL, NULL),
(566, 246, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270370tzJGu20506.jpg', NULL, NULL),
(567, 246, 'LARGE', 900, 900, 'images/media/2020/07/large1595270370tzJGu20506.jpg', NULL, '2020-07-20 06:39:30'),
(568, 247, 'ACTUAL', 426, 640, 'images/media/2020/07/nI0dQ20906.jpg', NULL, NULL),
(569, 247, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270372nI0dQ20906.jpg', NULL, NULL),
(570, 247, 'MEDIUM', 266, 400, 'images/media/2020/07/medium1595270372nI0dQ20906.jpg', NULL, NULL),
(571, 248, 'ACTUAL', 1024, 1024, 'images/media/2020/07/oxhaU20406.jpg', NULL, NULL),
(572, 248, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270373oxhaU20406.jpg', NULL, NULL),
(573, 249, 'ACTUAL', 600, 600, 'images/media/2020/07/niLHL20806.jpg', NULL, NULL),
(574, 249, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270373niLHL20806.jpg', NULL, NULL),
(575, 249, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270373niLHL20806.jpg', NULL, NULL),
(576, 248, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270373oxhaU20406.jpg', NULL, NULL),
(577, 248, 'LARGE', 900, 900, 'images/media/2020/07/large1595270373oxhaU20406.jpg', NULL, '2020-07-20 06:39:33'),
(578, 250, 'ACTUAL', 500, 750, 'images/media/2020/07/PFPfh20706.jpg', NULL, NULL),
(579, 250, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270374PFPfh20706.jpg', NULL, NULL),
(580, 250, 'MEDIUM', 267, 400, 'images/media/2020/07/medium1595270374PFPfh20706.jpg', NULL, NULL),
(581, 251, 'ACTUAL', 432, 650, 'images/media/2020/07/OKBZy20106.jpg', NULL, NULL),
(582, 251, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595270374OKBZy20106.jpg', NULL, NULL),
(583, 251, 'MEDIUM', 266, 400, 'images/media/2020/07/medium1595270374OKBZy20106.jpg', NULL, NULL),
(584, 252, 'ACTUAL', 700, 700, 'images/media/2020/07/74uNe20206.png', NULL, NULL),
(585, 252, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail159527037574uNe20206.png', NULL, NULL),
(586, 252, 'MEDIUM', 400, 400, 'images/media/2020/07/medium159527037574uNe20206.png', NULL, NULL),
(587, 253, 'ACTUAL', 600, 600, 'images/media/2020/07/MbYqn20306.jpg', NULL, NULL),
(588, 253, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270513MbYqn20306.jpg', NULL, NULL),
(589, 253, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270513MbYqn20306.jpg', NULL, NULL),
(590, 254, 'ACTUAL', 393, 700, 'images/media/2020/07/Imavp20206.jpg', NULL, NULL),
(591, 254, 'THUMBNAIL', 84, 150, 'images/media/2020/07/thumbnail1595270513Imavp20206.jpg', NULL, NULL),
(592, 254, 'MEDIUM', 225, 400, 'images/media/2020/07/medium1595270513Imavp20206.jpg', NULL, NULL),
(593, 255, 'ACTUAL', 720, 1280, 'images/media/2020/07/uxqXH20206.jpg', NULL, NULL),
(594, 255, 'THUMBNAIL', 84, 150, 'images/media/2020/07/thumbnail1595270514uxqXH20206.jpg', NULL, NULL),
(595, 256, 'ACTUAL', 600, 600, 'images/media/2020/07/vgzXZ20806.jpg', NULL, NULL),
(596, 255, 'MEDIUM', 225, 400, 'images/media/2020/07/medium1595270514uxqXH20206.jpg', NULL, NULL),
(597, 256, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270514vgzXZ20806.jpg', NULL, NULL),
(598, 256, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270514vgzXZ20806.jpg', NULL, NULL),
(599, 255, 'LARGE', 506, 900, 'images/media/2020/07/large1595270514uxqXH20206.jpg', NULL, '2020-07-20 06:41:54'),
(600, 257, 'ACTUAL', 600, 600, 'images/media/2020/07/a3C1u20306.jpg', NULL, NULL),
(601, 257, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270514a3C1u20306.jpg', NULL, NULL),
(602, 257, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270514a3C1u20306.jpg', NULL, NULL),
(603, 258, 'ACTUAL', 600, 600, 'images/media/2020/07/xNRv420506.jpg', NULL, NULL),
(604, 258, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270515xNRv420506.jpg', NULL, NULL),
(605, 258, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270515xNRv420506.jpg', NULL, NULL),
(606, 259, 'ACTUAL', 600, 600, 'images/media/2020/07/OUwz120306.jpg', NULL, NULL),
(607, 259, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270515OUwz120306.jpg', NULL, NULL),
(608, 260, 'ACTUAL', 600, 600, 'images/media/2020/07/PImij20706.jpg', NULL, NULL),
(609, 259, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270515OUwz120306.jpg', NULL, NULL),
(610, 260, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270515PImij20706.jpg', NULL, NULL),
(611, 260, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270515PImij20706.jpg', NULL, NULL),
(612, 261, 'ACTUAL', 600, 600, 'images/media/2020/07/i53qt20506.jpg', NULL, NULL),
(613, 261, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270515i53qt20506.jpg', NULL, NULL),
(614, 261, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270515i53qt20506.jpg', NULL, NULL),
(615, 262, 'ACTUAL', 600, 600, 'images/media/2020/07/ZeYB720306.jpg', NULL, NULL),
(616, 262, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270516ZeYB720306.jpg', NULL, NULL),
(617, 262, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270516ZeYB720306.jpg', NULL, NULL),
(618, 263, 'ACTUAL', 600, 600, 'images/media/2020/07/lBJA320106.jpg', NULL, NULL),
(619, 263, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270516lBJA320106.jpg', NULL, NULL),
(620, 263, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270516lBJA320106.jpg', NULL, NULL),
(621, 264, 'ACTUAL', 600, 600, 'images/media/2020/07/51nWY20206.jpg', NULL, NULL);
INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(622, 264, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail159527051651nWY20206.jpg', NULL, NULL),
(623, 264, 'MEDIUM', 400, 400, 'images/media/2020/07/medium159527051651nWY20206.jpg', NULL, NULL),
(624, 265, 'ACTUAL', 600, 600, 'images/media/2020/07/BVWoe20206.jpg', NULL, NULL),
(625, 265, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270517BVWoe20206.jpg', NULL, NULL),
(626, 265, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270517BVWoe20206.jpg', NULL, NULL),
(627, 266, 'ACTUAL', 600, 600, 'images/media/2020/07/paNK420606.jpg', NULL, NULL),
(628, 267, 'ACTUAL', 600, 600, 'images/media/2020/07/XYv9f20206.jpg', NULL, NULL),
(629, 266, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270517paNK420606.jpg', NULL, NULL),
(630, 267, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595270517XYv9f20206.jpg', NULL, NULL),
(631, 266, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270517paNK420606.jpg', NULL, NULL),
(632, 267, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595270517XYv9f20206.jpg', NULL, NULL),
(633, 268, 'ACTUAL', 600, 600, 'images/media/2020/07/L3R3F20106.jpg', NULL, NULL),
(634, 268, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595271092L3R3F20106.jpg', NULL, NULL),
(635, 268, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595271092L3R3F20106.jpg', NULL, NULL),
(636, 269, 'ACTUAL', 600, 600, 'images/media/2020/07/C0Kqs20606.jpg', NULL, NULL),
(637, 269, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595271447C0Kqs20606.jpg', NULL, NULL),
(638, 269, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595271447C0Kqs20606.jpg', NULL, NULL),
(641, 271, 'ACTUAL', 550, 673, 'images/media/2020/07/oDGvd20407.png', NULL, NULL),
(642, 271, 'THUMBNAIL', 123, 150, 'images/media/2020/07/thumbnail1595271886oDGvd20407.png', NULL, NULL),
(643, 271, 'MEDIUM', 327, 400, 'images/media/2020/07/medium1595271886oDGvd20407.png', NULL, NULL),
(644, 272, 'ACTUAL', 500, 500, 'images/media/2020/07/wLCTW20607.jpg', NULL, NULL),
(645, 272, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595272196wLCTW20607.jpg', NULL, NULL),
(646, 272, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595272196wLCTW20607.jpg', NULL, NULL),
(649, 274, 'ACTUAL', 510, 649, 'images/media/2020/07/Q4TpM20607.png', NULL, NULL),
(650, 274, 'THUMBNAIL', 118, 150, 'images/media/2020/07/thumbnail1595272733Q4TpM20607.png', NULL, NULL),
(651, 274, 'MEDIUM', 314, 400, 'images/media/2020/07/medium1595272733Q4TpM20607.png', NULL, NULL),
(652, 275, 'ACTUAL', 523, 669, 'images/media/2020/07/jJE8U20307.jpg', NULL, NULL),
(653, 275, 'THUMBNAIL', 117, 150, 'images/media/2020/07/thumbnail1595272829jJE8U20307.jpg', NULL, NULL),
(654, 275, 'MEDIUM', 313, 400, 'images/media/2020/07/medium1595272829jJE8U20307.jpg', NULL, NULL),
(655, 276, 'ACTUAL', 375, 500, 'images/media/2020/07/FroMu20907.png', NULL, NULL),
(656, 276, 'THUMBNAIL', 113, 150, 'images/media/2020/07/thumbnail1595272951FroMu20907.png', NULL, NULL),
(657, 276, 'MEDIUM', 300, 400, 'images/media/2020/07/medium1595272951FroMu20907.png', NULL, NULL),
(658, 277, 'ACTUAL', 800, 800, 'images/media/2020/07/2mDFY20807.jpg', NULL, NULL),
(659, 277, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15952734872mDFY20807.jpg', NULL, NULL),
(660, 277, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15952734882mDFY20807.jpg', NULL, NULL),
(661, 278, 'ACTUAL', 640, 640, 'images/media/2020/07/ZuGI821403.jpg', NULL, NULL),
(662, 278, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595344153ZuGI821403.jpg', NULL, NULL),
(663, 278, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595344153ZuGI821403.jpg', NULL, NULL),
(664, 279, 'ACTUAL', 421, 1600, 'images/media/2020/07/8DuYo22704.jpg', NULL, NULL),
(665, 279, 'THUMBNAIL', 39, 150, 'images/media/2020/07/thumbnail15954351108DuYo22704.jpg', NULL, NULL),
(666, 279, 'MEDIUM', 105, 400, 'images/media/2020/07/medium15954351108DuYo22704.jpg', NULL, NULL),
(667, 279, 'LARGE', 237, 900, 'images/media/2020/07/large15954351108DuYo22704.jpg', NULL, '2020-07-22 04:25:10'),
(668, 280, 'ACTUAL', 1133, 1700, 'images/media/2020/07/SCe7t22904.jpg', NULL, NULL),
(669, 280, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595435739SCe7t22904.jpg', NULL, NULL),
(670, 280, 'MEDIUM', 267, 400, 'images/media/2020/07/medium1595435739SCe7t22904.jpg', NULL, NULL),
(671, 280, 'LARGE', 600, 900, 'images/media/2020/07/large1595435739SCe7t22904.jpg', NULL, '2020-07-22 04:35:39'),
(672, 281, 'ACTUAL', 1133, 1700, 'images/media/2020/07/nRyJs22904.jpg', NULL, NULL),
(673, 281, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595435800nRyJs22904.jpg', NULL, NULL),
(674, 281, 'MEDIUM', 267, 400, 'images/media/2020/07/medium1595435800nRyJs22904.jpg', NULL, NULL),
(675, 281, 'LARGE', 600, 900, 'images/media/2020/07/large1595435800nRyJs22904.jpg', NULL, '2020-07-22 04:36:40'),
(676, 282, 'ACTUAL', 1135, 1700, 'images/media/2020/07/6Hk5N22204.jpg', NULL, NULL),
(677, 282, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail15954358676Hk5N22204.jpg', NULL, NULL),
(678, 282, 'MEDIUM', 267, 400, 'images/media/2020/07/medium15954358676Hk5N22204.jpg', NULL, NULL),
(679, 282, 'LARGE', 601, 900, 'images/media/2020/07/large15954358676Hk5N22204.jpg', NULL, '2020-07-22 04:37:47'),
(680, 283, 'ACTUAL', 493, 370, 'images/media/2020/07/4IhlA22905.jpg', NULL, NULL),
(681, 283, 'THUMBNAIL', 150, 113, 'images/media/2020/07/thumbnail15954399804IhlA22905.jpg', NULL, NULL),
(682, 283, 'MEDIUM', 400, 300, 'images/media/2020/07/medium15954399804IhlA22905.jpg', NULL, NULL),
(683, 284, 'ACTUAL', 230, 370, 'images/media/2020/07/5jCJv22605.jpg', NULL, NULL),
(684, 284, 'THUMBNAIL', 93, 150, 'images/media/2020/07/thumbnail15954404195jCJv22605.jpg', NULL, NULL),
(685, 285, 'ACTUAL', 417, 626, 'images/media/2020/07/NboYg22406.jpg', NULL, NULL),
(686, 285, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595440978NboYg22406.jpg', NULL, NULL),
(687, 285, 'MEDIUM', 266, 400, 'images/media/2020/07/medium1595440979NboYg22406.jpg', NULL, NULL),
(692, 287, 'ACTUAL', 720, 1280, 'images/media/2020/07/z5u6D22206.jpeg', NULL, NULL),
(693, 287, 'THUMBNAIL', 84, 150, 'images/media/2020/07/thumbnail1595441260z5u6D22206.jpeg', NULL, NULL),
(694, 287, 'MEDIUM', 225, 400, 'images/media/2020/07/medium1595441260z5u6D22206.jpeg', NULL, NULL),
(695, 287, 'LARGE', 506, 900, 'images/media/2020/07/large1595441260z5u6D22206.jpeg', NULL, '2020-07-22 06:07:40'),
(696, 288, 'ACTUAL', 600, 600, 'images/media/2020/07/tu0s824701.jpg', NULL, NULL),
(697, 288, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554589tu0s824701.jpg', NULL, NULL),
(698, 288, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554589tu0s824701.jpg', NULL, NULL),
(699, 289, 'ACTUAL', 225, 224, 'images/media/2020/07/OgLFb24101.jpg', NULL, NULL),
(700, 289, 'THUMBNAIL', 150, 149, 'images/media/2020/07/thumbnail1595554591OgLFb24101.jpg', NULL, NULL),
(701, 290, 'ACTUAL', 225, 225, 'images/media/2020/07/mAuV324401.jpg', NULL, NULL),
(702, 290, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554592mAuV324401.jpg', NULL, NULL),
(703, 291, 'ACTUAL', 700, 700, 'images/media/2020/07/HEyS124801.png', NULL, NULL),
(704, 291, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554592HEyS124801.png', NULL, NULL),
(705, 292, 'ACTUAL', 561, 697, 'images/media/2020/07/jJ8tN24501.jpeg', NULL, NULL),
(706, 291, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554592HEyS124801.png', NULL, NULL),
(707, 292, 'THUMBNAIL', 121, 150, 'images/media/2020/07/thumbnail1595554592jJ8tN24501.jpeg', NULL, NULL),
(708, 292, 'MEDIUM', 322, 400, 'images/media/2020/07/medium1595554592jJ8tN24501.jpeg', NULL, NULL),
(709, 293, 'ACTUAL', 600, 600, 'images/media/2020/07/7GYVJ24601.jpg', NULL, NULL),
(710, 293, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15955545937GYVJ24601.jpg', NULL, NULL),
(711, 293, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15955545937GYVJ24601.jpg', NULL, NULL),
(712, 294, 'ACTUAL', 600, 600, 'images/media/2020/07/XK4tk24401.png', NULL, NULL),
(713, 294, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554595XK4tk24401.png', NULL, NULL),
(714, 294, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554595XK4tk24401.png', NULL, NULL),
(715, 295, 'ACTUAL', 800, 800, 'images/media/2020/07/FquQ624301.jpg', NULL, NULL),
(716, 295, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554595FquQ624301.jpg', NULL, NULL),
(717, 295, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554595FquQ624301.jpg', NULL, NULL),
(718, 296, 'ACTUAL', 600, 600, 'images/media/2020/07/OYDGE24101.jpg', NULL, NULL),
(719, 296, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554596OYDGE24101.jpg', NULL, NULL),
(720, 296, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554596OYDGE24101.jpg', NULL, NULL),
(721, 297, 'ACTUAL', 225, 225, 'images/media/2020/07/miSm924201.jpg', NULL, NULL),
(722, 297, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554598miSm924201.jpg', NULL, NULL),
(723, 298, 'ACTUAL', 721, 722, 'images/media/2020/07/pM4Fx24701.png', NULL, NULL),
(724, 298, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554598pM4Fx24701.png', NULL, NULL),
(725, 298, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595554598pM4Fx24701.png', NULL, NULL),
(726, 299, 'ACTUAL', 480, 480, 'images/media/2020/07/os4GU24701.jpg', NULL, NULL),
(727, 299, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554598os4GU24701.jpg', NULL, NULL),
(728, 299, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554598os4GU24701.jpg', NULL, NULL),
(729, 300, 'ACTUAL', 600, 600, 'images/media/2020/07/4JJP024501.jpg', NULL, NULL),
(730, 300, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15955546014JJP024501.jpg', NULL, NULL),
(731, 300, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15955546014JJP024501.jpg', NULL, NULL),
(732, 301, 'ACTUAL', 159, 318, 'images/media/2020/07/spUbC24401.jpg', NULL, NULL),
(733, 301, 'THUMBNAIL', 75, 150, 'images/media/2020/07/thumbnail1595554603spUbC24401.jpg', NULL, NULL),
(734, 302, 'ACTUAL', 1024, 1024, 'images/media/2020/07/VN3Hw24301.jpg', NULL, NULL),
(735, 302, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554604VN3Hw24301.jpg', NULL, NULL),
(736, 302, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554604VN3Hw24301.jpg', NULL, NULL),
(737, 302, 'LARGE', 900, 900, 'images/media/2020/07/large1595554604VN3Hw24301.jpg', NULL, '2020-07-24 01:36:44'),
(738, 303, 'ACTUAL', 500, 500, 'images/media/2020/07/CIjA424501.png', NULL, NULL),
(739, 303, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554604CIjA424501.png', NULL, NULL),
(740, 303, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554605CIjA424501.png', NULL, NULL),
(741, 304, 'ACTUAL', 500, 500, 'images/media/2020/07/BCHYs24801.png', NULL, NULL),
(742, 304, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554606BCHYs24801.png', NULL, NULL),
(743, 304, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554606BCHYs24801.png', NULL, NULL),
(744, 305, 'ACTUAL', 600, 600, 'images/media/2020/07/MHRNi24501.jpg', NULL, NULL),
(745, 305, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595554606MHRNi24501.jpg', NULL, NULL),
(746, 305, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595554606MHRNi24501.jpg', NULL, NULL),
(747, 306, 'ACTUAL', 600, 600, 'images/media/2020/07/5ydaL24101.jpg', NULL, NULL),
(748, 306, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15955546085ydaL24101.jpg', NULL, NULL),
(749, 306, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15955546085ydaL24101.jpg', NULL, NULL),
(750, 307, 'ACTUAL', 372, 476, 'images/media/2020/07/6bQFH24901.png', NULL, NULL),
(751, 307, 'THUMBNAIL', 117, 150, 'images/media/2020/07/thumbnail15955549006bQFH24901.png', NULL, NULL),
(752, 307, 'MEDIUM', 313, 400, 'images/media/2020/07/medium15955549006bQFH24901.png', NULL, NULL),
(753, 308, 'ACTUAL', 1024, 1024, 'images/media/2020/07/0kkR624601.jpg', NULL, NULL),
(754, 308, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15955549900kkR624601.jpg', NULL, NULL),
(755, 308, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15955549900kkR624601.jpg', NULL, NULL),
(756, 308, 'LARGE', 900, 900, 'images/media/2020/07/large15955549900kkR624601.jpg', NULL, '2020-07-24 01:43:10'),
(757, 309, 'ACTUAL', 640, 640, 'images/media/2020/07/Qmcve24401.png', NULL, NULL),
(758, 309, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595555155Qmcve24401.png', NULL, NULL),
(759, 309, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595555155Qmcve24401.png', NULL, NULL),
(760, 310, 'ACTUAL', 600, 600, 'images/media/2020/07/raHcA24501.jpg', NULL, NULL),
(761, 310, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595555264raHcA24501.jpg', NULL, NULL),
(762, 310, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595555264raHcA24501.jpg', NULL, NULL),
(763, 311, 'ACTUAL', 600, 799, 'images/media/2020/07/QTuKC24801.jpg', NULL, NULL),
(764, 311, 'THUMBNAIL', 113, 150, 'images/media/2020/07/thumbnail1595555338QTuKC24801.jpg', NULL, NULL),
(765, 311, 'MEDIUM', 300, 400, 'images/media/2020/07/medium1595555338QTuKC24801.jpg', NULL, NULL),
(766, 312, 'ACTUAL', 466, 700, 'images/media/2020/07/ilTh724401.jpg', NULL, NULL),
(767, 312, 'THUMBNAIL', 100, 150, 'images/media/2020/07/thumbnail1595555919ilTh724401.jpg', NULL, NULL),
(768, 312, 'MEDIUM', 266, 400, 'images/media/2020/07/medium1595555919ilTh724401.jpg', NULL, NULL),
(769, 313, 'ACTUAL', 600, 600, 'images/media/2020/07/Dbj1n24301.jpg', NULL, NULL),
(770, 313, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595555993Dbj1n24301.jpg', NULL, NULL),
(771, 313, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595555993Dbj1n24301.jpg', NULL, NULL),
(772, 314, 'ACTUAL', 800, 800, 'images/media/2020/07/mkS7Z24402.jpg', NULL, NULL),
(773, 314, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595556156mkS7Z24402.jpg', NULL, NULL),
(774, 314, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595556156mkS7Z24402.jpg', NULL, NULL),
(775, 315, 'ACTUAL', 382, 507, 'images/media/2020/07/oUAfC24202.png', NULL, NULL),
(776, 315, 'THUMBNAIL', 113, 150, 'images/media/2020/07/thumbnail1595556265oUAfC24202.png', NULL, NULL),
(777, 315, 'MEDIUM', 301, 400, 'images/media/2020/07/medium1595556265oUAfC24202.png', NULL, NULL),
(778, 316, 'ACTUAL', 700, 700, 'images/media/2020/07/FzEMk24402.jpg', NULL, NULL),
(779, 316, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595556536FzEMk24402.jpg', NULL, NULL),
(780, 316, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595556536FzEMk24402.jpg', NULL, NULL),
(781, 317, 'ACTUAL', 721, 722, 'images/media/2020/07/rtSf124902.jpg', NULL, NULL),
(782, 317, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595556611rtSf124902.jpg', NULL, NULL),
(783, 317, 'MEDIUM', 399, 400, 'images/media/2020/07/medium1595556611rtSf124902.jpg', NULL, NULL),
(784, 318, 'ACTUAL', 288, 500, 'images/media/2020/07/A8zXa24902.jpg', NULL, NULL),
(785, 318, 'THUMBNAIL', 86, 150, 'images/media/2020/07/thumbnail1595556729A8zXa24902.jpg', NULL, NULL),
(786, 318, 'MEDIUM', 230, 400, 'images/media/2020/07/medium1595556729A8zXa24902.jpg', NULL, NULL),
(787, 319, 'ACTUAL', 489, 800, 'images/media/2020/07/LuRMc24602.png', NULL, NULL),
(788, 319, 'THUMBNAIL', 92, 150, 'images/media/2020/07/thumbnail1595556911LuRMc24602.png', NULL, NULL),
(789, 319, 'MEDIUM', 245, 400, 'images/media/2020/07/medium1595556911LuRMc24602.png', NULL, NULL),
(790, 320, 'ACTUAL', 352, 582, 'images/media/2020/07/HOF3k24802.png', NULL, NULL),
(791, 320, 'THUMBNAIL', 91, 150, 'images/media/2020/07/thumbnail1595556969HOF3k24802.png', NULL, NULL),
(792, 320, 'MEDIUM', 242, 400, 'images/media/2020/07/medium1595556969HOF3k24802.png', NULL, NULL),
(793, 321, 'ACTUAL', 600, 600, 'images/media/2020/07/cHJrS24102.jpg', NULL, NULL),
(794, 321, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595556971cHJrS24102.jpg', NULL, NULL),
(795, 321, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595556971cHJrS24102.jpg', NULL, NULL),
(796, 322, 'ACTUAL', 785, 600, 'images/media/2020/07/MELdt24302.jpg', NULL, NULL),
(797, 322, 'THUMBNAIL', 150, 115, 'images/media/2020/07/thumbnail1595557082MELdt24302.jpg', NULL, NULL),
(798, 322, 'MEDIUM', 400, 306, 'images/media/2020/07/medium1595557082MELdt24302.jpg', NULL, NULL),
(799, 323, 'ACTUAL', 600, 600, 'images/media/2020/07/C2vIE24707.jpg', NULL, NULL),
(800, 323, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595574431C2vIE24707.jpg', NULL, NULL),
(801, 323, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595574431C2vIE24707.jpg', NULL, NULL),
(802, 324, 'ACTUAL', 164, 308, 'images/media/2020/07/IJqRi24207.jpg', NULL, NULL),
(803, 324, 'THUMBNAIL', 80, 150, 'images/media/2020/07/thumbnail1595574479IJqRi24207.jpg', NULL, NULL),
(804, 325, 'ACTUAL', 600, 600, 'images/media/2020/07/NtQrk24307.jpg', NULL, NULL),
(805, 325, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595574537NtQrk24307.jpg', NULL, NULL),
(806, 325, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595574537NtQrk24307.jpg', NULL, NULL),
(807, 326, 'ACTUAL', 600, 600, 'images/media/2020/07/2Vy3I24407.jpg', NULL, NULL),
(808, 326, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15955748112Vy3I24407.jpg', NULL, NULL),
(809, 326, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15955748112Vy3I24407.jpg', NULL, NULL),
(810, 327, 'ACTUAL', 548, 800, 'images/media/2020/07/8CVJZ24407.jpg', NULL, NULL),
(811, 327, 'THUMBNAIL', 103, 150, 'images/media/2020/07/thumbnail15955748678CVJZ24407.jpg', NULL, NULL),
(812, 328, 'ACTUAL', 600, 600, 'images/media/2020/07/mHQJv24207.jpg', NULL, NULL),
(813, 328, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595574867mHQJv24207.jpg', NULL, NULL),
(814, 327, 'MEDIUM', 274, 400, 'images/media/2020/07/medium15955748678CVJZ24407.jpg', NULL, NULL),
(815, 328, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595574867mHQJv24207.jpg', NULL, NULL),
(816, 329, 'ACTUAL', 600, 600, 'images/media/2020/07/M5sXC24907.jpg', NULL, NULL),
(817, 329, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595575082M5sXC24907.jpg', NULL, NULL),
(818, 329, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595575082M5sXC24907.jpg', NULL, NULL),
(819, 330, 'ACTUAL', 600, 600, 'images/media/2020/07/CSkDj24707.jpg', NULL, NULL),
(820, 330, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595575174CSkDj24707.jpg', NULL, NULL),
(821, 330, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595575174CSkDj24707.jpg', NULL, NULL),
(822, 331, 'ACTUAL', 600, 600, 'images/media/2020/07/8upkL24807.jpg', NULL, NULL),
(823, 331, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail15955751828upkL24807.jpg', NULL, NULL),
(824, 331, 'MEDIUM', 400, 400, 'images/media/2020/07/medium15955751828upkL24807.jpg', NULL, NULL),
(825, 332, 'ACTUAL', 600, 600, 'images/media/2020/07/EpCKm24507.jpg', NULL, NULL),
(826, 332, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595575183EpCKm24507.jpg', NULL, NULL),
(827, 332, 'MEDIUM', 400, 400, 'images/media/2020/07/medium1595575183EpCKm24507.jpg', NULL, NULL),
(828, 333, 'ACTUAL', 554, 553, 'images/media/2020/07/jmkAP24307.png', NULL, NULL),
(829, 333, 'THUMBNAIL', 150, 150, 'images/media/2020/07/thumbnail1595575326jmkAP24307.png', NULL, NULL),
(830, 333, 'MEDIUM', 400, 399, 'images/media/2020/07/medium1595575326jmkAP24307.png', NULL, NULL),
(831, 334, 'ACTUAL', 240, 304, 'images/media/2020/07/k5no324102.jpeg', NULL, NULL),
(832, 334, 'THUMBNAIL', 118, 150, 'images/media/2020/07/thumbnail1595600567k5no324102.jpeg', NULL, NULL),
(833, 335, 'ACTUAL', 421, 1600, 'images/media/2020/08/0BK6227611.png', NULL, NULL),
(834, 335, 'THUMBNAIL', 39, 150, 'images/media/2020/08/thumbnail15985263090BK6227611.png', NULL, NULL),
(835, 335, 'MEDIUM', 105, 400, 'images/media/2020/08/medium15985263090BK6227611.png', NULL, NULL),
(836, 335, 'LARGE', 237, 900, 'images/media/2020/08/large15985263090BK6227611.png', NULL, '2020-08-27 11:05:09'),
(837, 336, 'ACTUAL', 516, 900, 'images/media/2020/09/ypy4B07707.jpg', NULL, NULL),
(838, 336, 'THUMBNAIL', 86, 150, 'images/media/2020/09/thumbnail1599464913ypy4B07707.jpg', NULL, NULL),
(839, 336, 'MEDIUM', 229, 400, 'images/media/2020/09/medium1599464913ypy4B07707.jpg', NULL, NULL),
(840, 336, 'LARGE', 516, 900, 'images/media/2020/09/large1599464913ypy4B07707.jpg', NULL, '2020-09-07 07:48:33'),
(841, 337, 'ACTUAL', 230, 370, 'images/media/2020/09/gLdhb14707.png', NULL, NULL),
(842, 337, 'THUMBNAIL', 93, 150, 'images/media/2020/09/thumbnail1600067569gLdhb14707.png', NULL, NULL),
(843, 338, 'ACTUAL', 230, 370, 'images/media/2020/09/BkB4N14707.png', NULL, NULL),
(844, 338, 'THUMBNAIL', 93, 150, 'images/media/2020/09/thumbnail1600068638BkB4N14707.png', NULL, NULL),
(845, 339, 'ACTUAL', 230, 370, 'images/media/2020/09/ljsuC14307.png', NULL, NULL),
(846, 339, 'THUMBNAIL', 93, 150, 'images/media/2020/09/thumbnail1600068641ljsuC14307.png', NULL, NULL),
(847, 340, 'ACTUAL', 230, 370, 'images/media/2020/09/r1IQQ14707.png', NULL, NULL),
(848, 340, 'THUMBNAIL', 93, 150, 'images/media/2020/09/thumbnail1600068645r1IQQ14707.png', NULL, NULL),
(849, 341, 'ACTUAL', 230, 370, 'images/media/2020/09/9lPw914209.png', NULL, NULL),
(850, 341, 'THUMBNAIL', 93, 150, 'images/media/2020/09/thumbnail16000747549lPw914209.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, 50, 1, '5000.00', 'in', '2020-08-31 04:24:56', NULL),
(2, 0, 1598891278, '', 1, 1, '0.00', 'out', NULL, NULL),
(3, 1, 0, NULL, 19, 1, '5000.00', 'in', '2020-08-31 04:33:59', NULL),
(4, 1, 0, NULL, 1, 1, '0.00', 'in', '2020-08-31 04:40:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'Shop More'),
(1059, 'Me'),
(1060, 'View All'),
(1061, 'Featured'),
(1062, 'Shop Now'),
(1063, 'New Arrivals'),
(1064, 'Sort'),
(1065, 'Help & Support'),
(1066, 'Select Currency'),
(1067, 'Your Price'),
(1068, 'Billing'),
(1069, 'Ship to a different address?'),
(1070, 'Method'),
(1071, 'Summary'),
(1072, 'Discount'),
(1073, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1074, 'Alert'),
(1075, 'Your Wishlist is Empty'),
(1076, 'Press heart icon on products to add them in wishlist'),
(1077, 'Wishlist'),
(1078, 'All Items'),
(1079, 'Account Info'),
(1080, 'You Must Be Logged in to use this Feature!'),
(1081, 'Remove from Wishlist'),
(1082, 'Sign Up'),
(1083, 'Reset Password'),
(1084, 'Invalid email or password'),
(1085, 'Recent Searches'),
(1086, 'Add to Wishlist'),
(1087, 'Discover Latest Trends'),
(1088, 'Add To My Wishlist'),
(1089, 'Start Shoping'),
(1090, 'A Smart Shopping Experience'),
(1091, 'Addresses'),
(1092, 'Account'),
(1093, 'DETAILS'),
(1094, 'Dark Mode'),
(1095, 'Enter a description'),
(1096, 'Grocery Store'),
(1097, 'Post Comment'),
(1098, 'Rate and write a review'),
(1099, 'Ratings & Reviews'),
(1100, 'Write a review'),
(1101, 'Your Rating'),
(1102, 'rating'),
(1103, 'rating and review'),
(1104, 'Coupon Codes List'),
(1105, 'Custom Orders'),
(1106, 'Ecommerce'),
(1107, 'Featured Products'),
(1108, 'House Hold 1'),
(1109, 'Newest Products'),
(1110, 'On Sale Products'),
(1111, 'Braintree'),
(1112, 'Hyperpay'),
(1113, 'Instamojo'),
(1114, 'PayTm'),
(1115, 'Paypal'),
(1116, 'Razor Pay'),
(1117, 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(11) NOT NULL,
  `label_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Lanjut Berbelanja', 1, 919),
(1410, 'Order Saya', 1, 918),
(1411, 'Terimakasih Berbelanja di Kami', 1, 917),
(1412, 'Terimakasih', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Cari', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Deskripsi Produk', 1, 907),
(1422, 'TAMBAHKAN', 1, 906),
(1423, 'Tambahkan', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'stock Kosong', 1, 903),
(1426, 'Baru', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Pengiriman', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Detail Harga', 1, 897),
(1432, 'Detail Order', 1, 896),
(1433, 'Dapatkan!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'HAPUS', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'Semua Kategori', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Produk Tersedia', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Mohon Sambungkan internet Anda', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Nama', 1, 882),
(1447, 'Pesan Anda', 1, 883),
(1448, 'Kategori', 1, 880),
(1449, 'Tentang', 1, 879),
(1450, 'Kirim', 1, 878),
(1451, 'Lupa Password', 1, 877),
(1452, 'Daftar', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'Atau', 1, 873),
(1456, 'Masuk Dengan', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'Lupa Password ?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1520, 'نسيت كلمة المرور الخاصة بي؟', 4, 1),
(1521, 'إن إنشاء حساب يعني موافقتك على شروط الخدمة وسياسة الخصوصية', 4, 2),
(1522, 'تسجيل الدخول مع', 4, 872),
(1523, 'أو', 4, 873),
(1524, 'البريد الإلكتروني', 4, 874),
(1525, 'كلمه السر', 4, 875),
(1526, 'تسجيل', 4, 876),
(1527, 'هل نسيت كلمة المرور', 4, 877),
(1528, 'إرسال', 4, 878),
(1529, 'معلومات عنا', 4, 879),
(1530, 'التصنيفات', 4, 880),
(1531, 'اتصل بنا', 4, 881),
(1532, 'اسم', 4, 882),
(1533, 'رسالتك', 4, 883),
(1534, 'يرجى الاتصال بالإنترنت', 4, 884),
(1535, 'شوهدت مؤخرا', 4, 885),
(1536, 'المنتجات المتاحة.', 4, 886),
(1537, 'أعلى بائع', 4, 887),
(1538, 'صفقة خاصة', 4, 888),
(1539, 'الأكثر إعجابا', 4, 889),
(1540, 'جميع الفئات', 4, 890),
(1541, 'صفقات', 4, 891),
(1542, 'إزالة', 4, 892),
(1543, 'مقدمة', 4, 893),
(1544, 'تخطي المقدمة', 4, 894),
(1545, 'فهمتك!', 4, 895),
(1546, 'تفاصيل الطلب', 4, 896),
(1547, 'سعر التفاصيل', 4, 897),
(1548, 'مجموع', 4, 898),
(1549, 'المجموع الفرعي', 4, 899),
(1550, 'الشحن', 4, 900),
(1551, 'تفاصيل المنتج', 4, 901),
(1552, 'جديد', 4, 902),
(1553, 'إنتهى من المخزن', 4, 903),
(1554, 'في المخزن', 4, 904),
(1555, 'أضف إلى السلة', 4, 905),
(1556, 'أضف إلى السلة', 4, 906),
(1557, 'وصف المنتج', 4, 907),
(1558, 'تفاصيل تقنية', 4, 908),
(1559, 'إيقاف', 4, 909),
(1560, 'لا توجد منتجات', 4, 910),
(1561, 'إعادة تعيين المرشحات', 4, 911),
(1562, 'بحث', 4, 912),
(1563, 'الفئات الرئيسية', 4, 913),
(1564, 'الفئات الفرعية', 4, 914),
(1565, 'طريقة الشحن', 4, 915),
(1566, 'شكرا جزيلا', 4, 916),
(1567, 'شكرا للتسوق معنا.', 4, 917),
(1568, 'طلباتي', 4, 918),
(1569, 'مواصلة التسوق', 4, 919),
(1570, NULL, 4, NULL),
(1571, 'مفضل', 4, 920),
(1572, 'قائمة رغباتك فارغة', 4, 921),
(1573, 'متابعة الإضافة', 4, 922),
(1574, 'يكتشف', 4, 923),
(1575, 'وورد بوست التفاصيل', 4, 924),
(1576, 'عد', 4, 925),
(1577, 'أفضل البائعين', 4, 926),
(1578, 'أخبار', 4, 927),
(1579, 'أدخل الكلمة المفتاحية', 4, 928),
(1580, 'الإعدادات', 4, 929),
(1581, 'متجر', 4, 930),
(1582, 'إعادة تعيين', 4, 931),
(1583, 'اختار اللغة', 4, 932),
(1584, 'إنتهى من المخزن', 4, 933),
(1585, 'الأحدث', 4, 934),
(1586, 'سياسة الاسترجاع', 4, 935),
(1587, 'سياسة خاصة', 4, 936),
(1588, 'مصطلح والخدمات', 4, 937),
(1589, 'تخطى', 4, 938),
(1590, 'أطباق الأعلى', 4, 939),
(1591, 'وصفة اليوم', 4, 940),
(1592, 'فئات الغذاء', 4, 941),
(1593, 'رمز الكوبون', 4, 942),
(1594, 'مبلغ القسيمة', 4, 943),
(1595, 'رمز الكوبون', 4, 944),
(1596, 'كوبون', 4, 945),
(1597, 'ملاحظة للمشتري', 4, 946),
(1598, 'استكشاف المزيد', 4, 947),
(1599, 'الكل', 4, 948),
(1600, 'أ - ي', 4, 949),
(1601, 'ي - أ', 4, 950),
(1602, 'السعر مرتفع منخفض', 4, 951),
(1603, 'سعر منخفض مرتفع', 4, 952),
(1604, 'المنتجات الخاصة', 4, 953),
(1605, 'فرز المنتجات', 4, 954),
(1606, 'إلغاء', 4, 955),
(1607, 'الأكثر إعجابا', 4, 956),
(1608, 'خاص', 4, 957),
(1609, 'أعلى بائع', 4, 958),
(1610, 'الأحدث', 4, 959),
(1611, 'الإعجابات', 4, 960),
(1612, 'حسابي', 4, 961),
(1613, 'التليفون المحمول', 4, 962),
(1614, 'تاريخ الولادة', 4, 963),
(1615, 'تحديث', 4, 964),
(1616, 'كلمة المرور الحالية', 4, 965),
(1617, 'كلمة سر جديدة', 4, 966),
(1618, 'تغيير كلمة المرور', 4, 967),
(1619, 'طلبات العملاء', 4, 968),
(1620, 'حالة الطلب', 4, 969),
(1621, 'معرف الطلبات', 4, 970),
(1622, 'سعر المنتج', 4, 971),
(1623, 'عدد المنتجات', 4, 972),
(1624, 'تاريخ', 4, 973),
(1625, 'عنوان العميل', 4, 974),
(1626, 'يرجى إضافة عنوان الشحن الجديد لمزيد من المعالجة لطلبك', 4, 975),
(1627, 'إضافة عنوان جديد', 4, 976),
(1628, 'انشئ حساب', 4, 977),
(1629, 'الاسم الاول', 4, 978),
(1630, 'الكنية', 4, 979),
(1631, 'هل أنت عضو بالفعل؟', 4, 980),
(1632, 'معلومات الفواتير', 4, 981),
(1633, 'عنوان', 4, 982),
(1634, 'هاتف', 4, 983),
(1635, 'نفس عنوان الشحن', 4, 984),
(1636, 'التالى', 4, 985),
(1637, 'طلب', 4, 986),
(1638, 'عنوان وصول الفواتير', 4, 987),
(1639, 'طريقة الشحن', 4, 988),
(1640, 'منتجات', 4, 989),
(1641, 'حاصل الجمع', 4, 990),
(1642, 'سعر المنتجات', 4, 991),
(1643, 'ضريبة', 4, 992),
(1644, 'تكلفة الشحن', 4, 993),
(1645, 'ترتيب ملاحظات', 4, 994),
(1646, 'دفع', 4, 995),
(1647, 'رقم البطاقة', 4, 996),
(1648, 'تاريخ الإنتهاء', 4, 997),
(1649, 'انتهاء الصلاحية', 4, 998),
(1650, 'خطأ: رقم البطاقة غير صالح!', 4, 999),
(1651, 'خطأ: تاريخ انتهاء الصلاحية غير صحيح!', 4, 1000),
(1652, 'خطأ: رقم cvc غير صالح!', 4, 1001),
(1653, 'استمر', 4, 1002),
(1654, 'سلتي', 4, 1003),
(1655, 'عربة التسوق فارغة', 4, 1004),
(1656, 'مواصلة التسوق', 4, 1005),
(1657, 'السعر', 4, 1006),
(1658, 'كمية', 4, 1007),
(1659, 'بواسطة', 4, 1008),
(1660, 'رأي', 4, 1009),
(1661, 'إزالة', 4, 1010),
(1662, 'تقدم', 4, 1011),
(1663, 'عنوان الشحن', 4, 1012),
(1664, 'بلد', 4, 1013),
(1665, 'آخر', 4, 1014),
(1666, 'منطقة', 4, 1015),
(1667, 'مدينة', 4, 1016),
(1668, 'الرمز البريدي', 4, 1017),
(1669, 'حالة', 4, 1018),
(1670, 'تحديث العنوان', 4, 1019),
(1671, 'حفظ العنوان', 4, 1020),
(1672, 'دخولتسجيل', 4, 1021),
(1673, 'يرجى تسجيل الدخول أو إنشاء حساب مجانا', 4, 1022),
(1674, 'تسجيل خروج', 4, 1023),
(1675, 'قائمة امنياتي', 4, 1024),
(1676, 'مرشحات', 4, 1025),
(1677, 'نطاق السعر', 4, 1026),
(1678, 'قريب', 4, 1027),
(1679, 'تطبيق', 4, 1028),
(1680, 'واضح', 4, 1029),
(1681, 'قائمة طعام', 4, 1030),
(1682, 'الصفحة الرئيسية', 4, 1031),
(1683, 'إن إنشاء حساب يعني أنك بخير من خلال موقعنا', 4, 1033),
(1684, 'تسجيل الدخول', 4, 1034),
(1685, 'تشغيل / إيقاف الإشعارات', 4, 1035),
(1686, 'تشغيل / إيقاف الإشعارات', 4, 1036),
(1687, 'تغيير اللغة', 4, 1037),
(1688, 'الموقع الرسمي', 4, 1038),
(1689, 'قيمنا', 4, 1039),
(1690, 'شارك', 4, 1040),
(1691, 'تعديل الملف الشخصي', 4, 1041),
(1692, 'خصم النسبة المئوية للسلة بأكملها', 4, 1042),
(1693, 'خصم إجمالي ثابت للعربة بأكملها', 4, 1043),
(1694, 'خصم إجمالي ثابت للمنتجات المحددة فقط', 4, 1044),
(1695, 'خصم النسبة المئوية للمنتجات المختارة فقط', 4, 1045),
(1696, 'شبكة متصلة إعادة تحميل البيانات', 4, 1047),
(1697, 'صنف حسب', 4, 1048),
(1698, 'بيع مفاجئ', 4, 1049),
(1699, 'حسنا', 4, 1050),
(1700, 'رقم', 4, 1051),
(1701, 'انتهاء الشهر', 4, 1052),
(1702, 'انتهاء السنة', 4, 1053),
(1703, 'طريقة الدفع او السداد', 4, 1054),
(1704, 'الحالة', 4, 1055),
(1705, 'و', 4, 1056),
(1706, 'cccc', 1, 1057),
(1707, 'cccc', 4, 1057),
(1708, 'Shop More', 1, 1058),
(1709, 'عربي', 4, 1058),
(1710, 'Discount', 1, 1072),
(1711, 'خصم', 4, 1072),
(1712, 'Error in initialization, maybe PayPal isnt supported or something else', 1, 1073),
(1713, 'خطأ في التهيئة ، ربما لا يتم دعم PayPal أو أي شيء آخر', 4, 1073),
(1714, 'Alert', 1, 1074),
(1715, 'إنذار', 4, 1074),
(1716, 'Your Wishlist is Empty', 1, 1075),
(1717, 'قائمة رغباتك فارغة', 4, 1075),
(1718, 'Press heart icon on products to add them in wishlist', 1, 1076),
(1719, 'اضغط على أيقونة القلب على المنتجات لإضافتها إلى قائمة الرغبات', 4, 1076),
(1720, 'Wishlist', 1, 1077),
(1721, 'قائمة الرغبات', 4, 1077),
(1722, 'All Items', 1, 1078),
(1723, 'كل الاشياء', 4, 1078),
(1724, 'Account Info', 1, 1079),
(1725, 'معلومات الحساب', 4, 1079),
(1726, 'You Must Be Logged in to use this Feature!', 1, 1080),
(1727, 'يجب عليك تسجيل الدخول لاستخدام هذه الميزة!', 4, 1080),
(1728, 'Remove from Wishlist', 1, 1081),
(1729, 'إزالة من قائمة الرغبات', 4, 1081),
(1730, 'Sign Up', 1, 1082),
(1731, 'سجل', 4, 1082),
(1732, 'Reset Password', 1, 1083),
(1733, 'إعادة تعيين كلمة المرور', 4, 1083),
(1734, 'Invalid email or password', 1, 1084),
(1735, 'البريد الإلكتروني أو كلمة السر خاطئة', 4, 1084),
(1736, 'Recent Searches', 1, 1085),
(1737, 'عمليات البحث الأخيرة', 4, 1085),
(1738, 'Add to Wishlist', 1, 1086),
(1739, 'أضف إلى قائمة الامنيات', 4, 1086),
(1740, 'Discover Latest Trends', 1, 1087),
(1741, 'اكتشف أحدث الاتجاهات', 4, 1087),
(1742, 'Add To My Wishlist', 1, 1088),
(1743, 'أضف إلى قائمة أمنياتي', 4, 1088),
(1744, 'Start Shoping', 1, 1089),
(1745, 'ابدأ التسوق', 4, 1089),
(1746, 'A Smart Shopping Experience', 1, 1090),
(1747, 'تجربة تسوق ذكية', 4, 1090),
(1748, 'Addresses', 1, 1091),
(1749, 'عناوين', 4, 1091),
(1750, 'Account', 1, 1092),
(1751, 'الحساب', 4, 1092),
(1752, 'DETAILS', 1, 1093),
(1753, 'تفاصيل', 4, 1093),
(1754, 'Dark Mode', 1, 1094),
(1755, 'الوضع الداكن', 4, 1094),
(1756, 'Enter a description', 1, 1095),
(1757, 'أدخل وصفًا', 4, 1095),
(1758, 'Grocery Store', 1, 1096),
(1759, 'بقالة', 4, 1096),
(1760, 'Post Comment', 1, 1097),
(1761, 'أضف تعليقا', 4, 1097),
(1762, 'Rate and write a review', 1, 1098),
(1763, 'تقييم وكتابة مراجعة', 4, 1098),
(1764, 'Ratings & Reviews', 1, 1099),
(1765, 'التقييمات والمراجعات', 4, 1099),
(1766, 'Write a review', 1, 1100),
(1767, 'أكتب مراجعة', 4, 1100),
(1768, 'Your Rating', 1, 1101),
(1769, 'تقييمك', 4, 1101),
(1770, 'rating', 1, 1102),
(1771, 'تقييم', 4, 1102),
(1772, 'rating and review', 1, 1103),
(1773, 'تصنيف ومراجعة', 4, 1103),
(1774, 'Coupon Codes List', 1, 1104),
(1775, 'قائمة رموز القسيمة', 4, 1104),
(1776, 'Custom Orders', 1, 1105),
(1777, 'أوامر مخصصة', 4, 1105),
(1778, 'Ecommerce', 1, 1106),
(1779, 'التجارة الإلكترونية', 4, 1106),
(1780, 'Featured Products', 1, 1107),
(1781, 'منتجات مميزة', 4, 1107),
(1782, 'House Hold 1', 1, 1108),
(1783, 'المنزل عقد 1', 4, 1108),
(1784, 'Newest Products', 1, 1109),
(1785, 'أحدث المنتجات', 4, 1109),
(1786, 'On Sale Products', 1, 1110),
(1787, 'المنتجات المعروضة للبيع', 4, 1110),
(1788, 'Braintree', 1, 1111),
(1789, 'برينتري', 4, 1111),
(1790, 'Hyperpay', 1, 1112),
(1791, 'Hyperpay', 4, 1112),
(1792, 'Instamojo', 1, 1113),
(1793, 'Instamojo', 4, 1113),
(1794, 'PayTm', 1, 1114),
(1795, 'PayTm', 4, 1114),
(1796, 'Paypal', 1, 1115),
(1797, 'باي بال', 4, 1115),
(1798, 'Razor Pay', 1, 1116),
(1799, 'الحلاقة الدفع', 4, 1116),
(1800, 'Stripe', 1, 1117),
(1801, 'شريط', 4, 1117),
(1802, 'Me', 1, 1059),
(1803, 'أنا', 4, 1059),
(1804, 'View All', 1, 1060),
(1805, 'عرض الكل', 4, 1060),
(1806, 'Featured', 1, 1061),
(1807, 'متميز', 4, 1061),
(1808, 'Shop Now', 1, 1062),
(1809, 'تسوق الآن', 4, 1062),
(1810, 'New Arrivals', 1, 1063),
(1811, 'الوافدون الجدد', 4, 1063),
(1812, 'Sort', 1, 1064),
(1813, 'فرز', 4, 1064),
(1814, 'Help & Support', 1, 1065),
(1815, 'ساعد لدعم', 4, 1065),
(1816, 'Select Currency', 1, 1066),
(1817, 'اختر العملة', 4, 1066),
(1818, 'Your Price', 1, 1067),
(1819, 'السعر الخاص', 4, 1067),
(1820, 'Billing', 1, 1068),
(1821, 'الفواتير', 4, 1068),
(1822, 'Ship to a different address?', 1, 1069),
(1823, 'هل تريد الشحن إلى عنوان مختلف؟', 4, 1069),
(1824, 'Method', 1, 1070),
(1825, 'طريقة', 4, 1070),
(1826, 'Summary', 1, 1071),
(1827, 'ملخص', 4, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `status`, `is_default`) VALUES
(1, 'English', 'en', '118', NULL, 1, 'ltr', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(11) NOT NULL,
  `user_types_id` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT 0,
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT 0,
  `categories_view` tinyint(1) NOT NULL DEFAULT 0,
  `categories_create` tinyint(1) NOT NULL DEFAULT 0,
  `categories_update` tinyint(1) NOT NULL DEFAULT 0,
  `categories_delete` tinyint(1) NOT NULL DEFAULT 0,
  `products_view` tinyint(1) NOT NULL DEFAULT 0,
  `products_create` tinyint(1) NOT NULL DEFAULT 0,
  `products_update` tinyint(1) NOT NULL DEFAULT 0,
  `products_delete` tinyint(1) NOT NULL DEFAULT 0,
  `news_view` tinyint(1) NOT NULL DEFAULT 0,
  `news_create` tinyint(1) NOT NULL DEFAULT 0,
  `news_update` tinyint(1) NOT NULL DEFAULT 0,
  `news_delete` tinyint(1) NOT NULL DEFAULT 0,
  `customers_view` tinyint(1) NOT NULL DEFAULT 0,
  `customers_create` tinyint(1) NOT NULL DEFAULT 0,
  `customers_update` tinyint(1) NOT NULL DEFAULT 0,
  `customers_delete` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_view` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_create` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_update` tinyint(1) NOT NULL DEFAULT 0,
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_view` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_create` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_update` tinyint(1) NOT NULL DEFAULT 0,
  `coupons_delete` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_view` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_send` tinyint(1) NOT NULL DEFAULT 0,
  `orders_view` tinyint(1) NOT NULL DEFAULT 0,
  `orders_confirm` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT 0,
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT 0,
  `reports_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `website_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `application_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_view` tinyint(1) NOT NULL DEFAULT 0,
  `general_setting_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT 0,
  `language_view` tinyint(1) NOT NULL DEFAULT 0,
  `language_create` tinyint(1) NOT NULL DEFAULT 0,
  `language_update` tinyint(1) NOT NULL DEFAULT 0,
  `language_delete` tinyint(1) NOT NULL DEFAULT 0,
  `profile_view` tinyint(1) NOT NULL DEFAULT 0,
  `profile_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_view` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_create` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_update` tinyint(1) NOT NULL DEFAULT 0,
  `admintype_delete` tinyint(1) NOT NULL DEFAULT 0,
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT 0,
  `add_media` tinyint(1) NOT NULL DEFAULT 0,
  `edit_media` tinyint(1) NOT NULL DEFAULT 0,
  `view_media` tinyint(1) NOT NULL DEFAULT 0,
  `delete_media` tinyint(1) NOT NULL DEFAULT 0,
  `edit_management` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_view` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_update` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_view` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_create` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_update` tinyint(1) NOT NULL DEFAULT 0,
  `deliveryboy_delete` tinyint(1) NOT NULL DEFAULT 0,
  `finance_view` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `reviews_view`, `reviews_update`, `deliveryboy_view`, `deliveryboy_create`, `deliveryboy_update`, `deliveryboy_delete`, `finance_view`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 12, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 13, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_image` text COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturers_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 1, NULL, '/', NULL, 1, NULL, NULL),
(22, 12, NULL, 0, 1, 'contact', 'contact', NULL, 1, NULL, NULL),
(23, 6, NULL, 0, 3, 'sayuran', 'sayuran', NULL, 1, NULL, NULL),
(24, 2, NULL, 0, 3, '', 'sayuran', 0, 1, NULL, NULL),
(25, 3, NULL, 0, 3, 'daging-ayam-segar', 'daging-ayam-segar', NULL, 1, NULL, NULL),
(26, 4, NULL, 0, 3, '', 'buah', 0, 1, NULL, NULL),
(27, 5, NULL, 0, 3, 'ikan-segar', 'ikan-segar', NULL, 1, NULL, NULL),
(28, 7, NULL, 23, 3, '', 'bumbu-dapur', 0, 1, NULL, NULL),
(29, 8, NULL, 23, 3, '', 'frozen-food', 0, 1, NULL, NULL),
(30, 9, NULL, 23, 3, '', 'ikan-kering-asin', 0, 1, NULL, NULL),
(31, 10, NULL, 23, 3, '', 'sembako', 0, 1, NULL, NULL),
(32, 11, NULL, 23, 3, '', 'keperluan-rumah-tangga', 0, 1, NULL, NULL),
(33, 13, NULL, 0, 5, '/news', '/news', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 2, 'Homee'),
(39, 21, 1, 'Demo'),
(40, 21, 2, 'Demo'),
(41, 22, 1, 'Contact'),
(42, 22, 2, 'Contact Us'),
(43, 23, 1, 'LAINNYA'),
(44, 24, 1, 'SAYURAN'),
(45, 25, 1, 'DAGING'),
(46, 26, 1, 'BUAH'),
(47, 27, 1, 'IKAN'),
(48, 28, 1, 'BUMBU DAPUR'),
(49, 29, 1, 'FROZEN FOOD'),
(50, 30, 1, 'IKAN KERING & ASIN'),
(51, 31, 1, 'SEMBAKO'),
(52, 32, 1, 'KEPERLUAN RUMAH TANGGA'),
(53, 33, 1, 'NEWS');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_19_085447_create_address_book_table', 1),
(2, '2020_05_19_085447_create_alert_settings_table', 1),
(3, '2020_05_19_085447_create_api_calls_list_table', 1),
(4, '2020_05_19_085447_create_bank_detail_table', 1),
(5, '2020_05_19_085447_create_banners_history_table', 1),
(6, '2020_05_19_085447_create_banners_table', 1),
(7, '2020_05_19_085447_create_block_ips_table', 1),
(8, '2020_05_19_085447_create_categories_description_table', 1),
(9, '2020_05_19_085447_create_categories_role_table', 1),
(10, '2020_05_19_085447_create_categories_table', 1),
(11, '2020_05_19_085447_create_compare_table', 1),
(12, '2020_05_19_085447_create_constant_banners_table', 1),
(13, '2020_05_19_085447_create_countries_table', 1),
(14, '2020_05_19_085447_create_coupons_table', 1),
(15, '2020_05_19_085447_create_currencies_table', 1),
(16, '2020_05_19_085447_create_currency_record_table', 1),
(17, '2020_05_19_085447_create_current_theme_table', 1),
(18, '2020_05_19_085447_create_customers_basket_attributes_table', 1),
(19, '2020_05_19_085447_create_customers_basket_table', 1),
(20, '2020_05_19_085447_create_customers_info_table', 1),
(21, '2020_05_19_085447_create_customers_table', 1),
(22, '2020_05_19_085447_create_delievery_time_slot_with_zone_table', 1),
(23, '2020_05_19_085447_create_delievery_time_slots_table', 1),
(24, '2020_05_19_085447_create_deliveryboy_info_table', 1),
(25, '2020_05_19_085447_create_devices_table', 1),
(26, '2020_05_19_085447_create_flash_sale_table', 1),
(27, '2020_05_19_085447_create_flate_rate_table', 1),
(28, '2020_05_19_085447_create_floating_cash_table', 1),
(29, '2020_05_19_085447_create_front_end_theme_content_table', 1),
(30, '2020_05_19_085447_create_geo_zones_table', 1),
(31, '2020_05_19_085447_create_home_banners_table', 1),
(32, '2020_05_19_085447_create_http_call_record_table', 1),
(33, '2020_05_19_085447_create_image_categories_table', 1),
(34, '2020_05_19_085447_create_images_table', 1),
(35, '2020_05_19_085447_create_inventory_detail_table', 1),
(36, '2020_05_19_085447_create_inventory_table', 1),
(37, '2020_05_19_085447_create_label_value_table', 1),
(38, '2020_05_19_085447_create_labels_table', 1),
(39, '2020_05_19_085447_create_languages_table', 1),
(40, '2020_05_19_085447_create_liked_products_table', 1),
(41, '2020_05_19_085447_create_manage_min_max_table', 1),
(42, '2020_05_19_085447_create_manage_role_table', 1),
(43, '2020_05_19_085447_create_manufacturers_info_table', 1),
(44, '2020_05_19_085447_create_manufacturers_table', 1),
(45, '2020_05_19_085447_create_menu_translation_table', 1),
(46, '2020_05_19_085447_create_menus_table', 1),
(47, '2020_05_19_085447_create_news_categories_description_table', 1),
(48, '2020_05_19_085447_create_news_categories_table', 1),
(49, '2020_05_19_085447_create_news_description_table', 1),
(50, '2020_05_19_085447_create_news_table', 1),
(51, '2020_05_19_085447_create_news_to_news_categories_table', 1),
(52, '2020_05_19_085447_create_orders_products_attributes_table', 1),
(53, '2020_05_19_085447_create_orders_products_table', 1),
(54, '2020_05_19_085447_create_orders_status_description_table', 1),
(55, '2020_05_19_085447_create_orders_status_history_table', 1),
(56, '2020_05_19_085447_create_orders_status_table', 1),
(57, '2020_05_19_085447_create_orders_table', 1),
(58, '2020_05_19_085447_create_orders_to_delivery_boy_history_table', 1),
(59, '2020_05_19_085447_create_orders_to_delivery_boy_table', 1),
(60, '2020_05_19_085447_create_orders_total_table', 1),
(61, '2020_05_19_085447_create_pages_description_table', 1),
(62, '2020_05_19_085447_create_pages_table', 1),
(63, '2020_05_19_085447_create_payment_description_table', 1),
(64, '2020_05_19_085447_create_payment_methods_detail_table', 1),
(65, '2020_05_19_085447_create_payment_methods_table', 1),
(66, '2020_05_19_085447_create_payment_withdraw_table', 1),
(67, '2020_05_19_085447_create_permissions_table', 1),
(68, '2020_05_19_085447_create_products_attributes_table', 1),
(69, '2020_05_19_085447_create_products_description_table', 1),
(70, '2020_05_19_085447_create_products_images_table', 1),
(71, '2020_05_19_085447_create_products_options_descriptions_table', 1),
(72, '2020_05_19_085447_create_products_options_table', 1),
(73, '2020_05_19_085447_create_products_options_values_descriptions_table', 1),
(74, '2020_05_19_085447_create_products_options_values_table', 1),
(75, '2020_05_19_085447_create_products_shipping_rates_table', 1),
(76, '2020_05_19_085447_create_products_table', 1),
(77, '2020_05_19_085447_create_products_to_categories_table', 1),
(78, '2020_05_19_085447_create_reviews_description_table', 1),
(79, '2020_05_19_085447_create_reviews_table', 1),
(80, '2020_05_19_085447_create_sessions_table', 1),
(81, '2020_05_19_085447_create_settings_table', 1),
(82, '2020_05_19_085447_create_shipping_description_table', 1),
(83, '2020_05_19_085447_create_shipping_methods_table', 1),
(84, '2020_05_19_085447_create_sliders_images_table', 1),
(85, '2020_05_19_085447_create_specials_table', 1),
(86, '2020_05_19_085447_create_tax_class_table', 1),
(87, '2020_05_19_085447_create_tax_rates_table', 1),
(88, '2020_05_19_085447_create_top_offers_table', 1),
(89, '2020_05_19_085447_create_units_descriptions_table', 1),
(90, '2020_05_19_085447_create_units_table', 1),
(91, '2020_05_19_085447_create_ups_shipping_table', 1),
(92, '2020_05_19_085447_create_user_to_address_table', 1),
(93, '2020_05_19_085447_create_user_types_table', 1),
(94, '2020_05_19_085447_create_users_balance_table', 1),
(95, '2020_05_19_085447_create_users_table', 1),
(96, '2020_05_19_085447_create_whos_online_table', 1),
(97, '2020_05_19_085447_create_zones_table', 1),
(98, '2020_05_19_085447_create_zones_to_geo_zones_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `news_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`, `created_at`, `updated_at`) VALUES
(1, '287', '0000-00-00 00:00:00', NULL, 1, 1, 'mengunjungi-mitra-binaan-rumah-sayur-kita', '2020-07-22 06:07:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories_icon` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '285', '', 0, 1, NULL, NULL, 'mitra-sayur', 1, '2020-07-22 06:03:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'MITRA SAYUR');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `language_id` int(11) NOT NULL DEFAULT 1,
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`language_id`, `news_name`, `news_id`, `news_description`, `news_url`, `news_viewed`) VALUES
(1, 'Mengunjungi Mitra Binaan RUMAH SAYUR KITA', 1, '<p>Dalam rangka pembukaan RUMAH SAYUR KITA, kami memberikan kualitas terbaik dengan harga yang sangat murah bagi mitra sayur kita.</p>', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-22 06:07:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_time` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_latitude` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_longitude` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL,
  `public_flag` int(11) DEFAULT 0,
  `downloads_flag` int(11) DEFAULT 0,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 1, 1, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2),
(5, 0, 0, 2),
(6, 0, 0, 2),
(7, 0, 0, 2),
(8, 0, 0, 3),
(9, 0, 0, 3),
(10, 0, 0, 3),
(11, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1),
(5, 5, 'Inprocess', 1),
(6, 8, 'Online', 1),
(7, 9, 'Free for Delivery', 1),
(8, 10, 'Online Busy With Delivery', 1),
(9, 11, 'Offline', 1),
(10, 6, 'Delivered', 1),
(11, 7, 'Dispatched', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT 0,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`, `role_id`) VALUES
(1, 1, 1, '2020-08-31 04:27:58', 1, '', 1),
(2, 1, 3, '2020-08-31 04:34:42', 1, '', 1),
(3, 1, 5, '2020-08-31 04:39:20', 1, 'Pembayaran di Tempat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_to_delivery_boy`
--

CREATE TABLE `orders_to_delivery_boy` (
  `orders_to_deliveryboy_id` int(11) NOT NULL,
  `deliveryboy_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(10) UNSIGNED NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_to_delivery_boy_history`
--

CREATE TABLE `orders_to_delivery_boy_history` (
  `orders_to_delivery_boy_history_id` int(11) NOT NULL,
  `orders_id` int(10) UNSIGNED NOT NULL,
  `orders_to_deliveryboy_id` int(10) UNSIGNED NOT NULL,
  `commented_person` tinyint(1) NOT NULL,
  `commented_person_id` int(10) UNSIGNED NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 1,
  `comments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `orders_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', ''),
(10, 7, 'Razor Pay', 1, '', ''),
(11, 8, 'PayTm', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `environment` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 0, 0, '2019-09-18 16:40:13', '0000-00-00 00:00:00'),
(2, 'stripe', 0, 0, '2019-09-18 16:56:17', '0000-00-00 00:00:00'),
(3, 'paypal', 0, 0, '2019-09-18 16:56:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 16:56:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 0, 0, '2019-09-18 16:57:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

CREATE TABLE `payment_methods_detail` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', ''),
(4, 1, 'public_key', ''),
(5, 1, 'private_key', ''),
(9, 2, 'secret_key', ''),
(10, 2, 'publishable_key', ''),
(15, 3, 'id', ''),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', ''),
(22, 5, 'auth_token', ''),
(23, 5, 'client_id', ''),
(24, 5, 'client_secret', ''),
(32, 6, 'userid', ''),
(33, 6, 'password', ''),
(34, 6, 'entityid', ''),
(35, 7, 'RAZORPAY_KEY', ''),
(36, 7, 'RAZORPAY_SECRET', ''),
(37, 8, 'paytm_mid', ''),
(39, 8, 'paytm_key', 'w#'),
(40, 8, 'current_domain_name', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_withdraw`
--

CREATE TABLE `payment_withdraw` (
  `payment_withdraw_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_video_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_price` int(15) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `products_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT 0,
  `products_min_order` int(11) NOT NULL DEFAULT 1,
  `products_max_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_video_link`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`) VALUES
(2, 0, NULL, '166', NULL, 10000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'bawang-putih-kating-500gr', 0, 1, NULL, '2020-07-20 05:21:32', '2020-07-21 05:32:15'),
(3, 0, NULL, '138', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'bawang-merah-brebes-500gr', 0, 1, NULL, '2020-07-20 05:22:28', '2020-07-21 05:31:55'),
(4, 0, NULL, '141', NULL, 8000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'bawang-bombay-500gr', 0, 1, NULL, '2020-07-20 05:23:02', '2020-07-21 05:32:55'),
(5, 0, NULL, '143', NULL, 22500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'brokoli-1kg', 0, 1, NULL, '2020-07-20 05:23:39', '2020-07-21 05:31:48'),
(6, 0, NULL, '142', NULL, 5500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'buncis-500gr', 0, 1, NULL, '2020-07-20 05:25:13', '2020-07-21 05:31:09'),
(7, 0, NULL, '142', NULL, 12000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'buncis-baby-500gr', 0, 1, NULL, '2020-07-20 05:26:12', '2020-07-21 05:33:12'),
(8, 0, NULL, '145', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cabe-hijau-besar-500gr', 0, 1, NULL, '2020-07-20 05:26:48', '2020-07-21 05:30:44'),
(9, 0, NULL, '204', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cabe-hijau-keriting-500gr', 0, 1, NULL, '2020-07-20 05:28:14', '2020-07-21 05:25:55'),
(10, 0, NULL, '148', NULL, 10800, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cabe-merah-besar-500gr', 0, 1, NULL, '2020-07-20 05:29:22', '2020-07-21 05:25:27'),
(11, 0, NULL, '144', NULL, 9200, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cabe-merah-keriting-500gr', 0, 1, NULL, '2020-07-20 05:29:57', '2020-07-21 05:25:25'),
(12, 0, NULL, '147', NULL, 11250, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cabe-rawit-merah-500gr', 0, 1, NULL, '2020-07-20 05:30:26', '2020-07-21 05:25:24'),
(13, 0, NULL, '190', NULL, 12000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'cabe-rawit-hijau-500gr', 0, 1, NULL, '2020-07-20 05:31:18', '2020-07-21 05:25:03'),
(14, 0, NULL, '152', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daun-bawang-sledri-1kg', 0, 1, NULL, '2020-07-20 05:31:57', '2020-07-21 05:25:02'),
(15, 0, NULL, '156', NULL, 8200, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jagung-manis-1kg', 0, 1, NULL, '2020-07-20 06:37:26', '2020-07-21 05:26:00'),
(16, 0, NULL, '219', NULL, 4000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jeruk-nipis-500gr', 0, 1, NULL, '2020-07-20 06:40:05', '2020-07-21 05:25:02'),
(17, 0, NULL, '163', NULL, 6900, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kacang-panjang-500gr', 0, 1, NULL, '2020-07-20 06:40:39', '2020-07-21 05:24:52'),
(18, 0, NULL, '168', NULL, 18800, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kembang-kol-1kg', 0, 1, NULL, '2020-07-20 06:41:14', '2020-07-21 05:27:37'),
(19, 0, NULL, '261', NULL, 21000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kemiri-500gr', 0, 1, NULL, '2020-07-20 06:42:15', '2020-07-21 05:25:56'),
(21, 0, NULL, '171', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kentang-dieng-grade-a-1kg-1', 0, 1, NULL, '2020-07-20 06:42:53', '2020-07-21 05:23:51'),
(22, 0, NULL, '169', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kentang-dieng-grade-b-1kg', 0, 1, NULL, '2020-07-20 06:43:32', '2020-07-21 05:23:42'),
(23, 0, NULL, '169', NULL, 12500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kentang-dieng-grade-c-1kg', 0, 1, NULL, '2020-07-20 06:44:37', '2020-07-21 05:23:41'),
(24, 0, NULL, '172', NULL, 4700, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kol-1kg', 0, 1, NULL, '2020-07-20 06:45:43', '2020-07-21 05:24:02'),
(25, 0, NULL, '178', NULL, 2750, '0000-00-00 00:00:00', NULL, NULL, '1', 'Pcs', 1, 1, 0, NULL, 0, 0, 0, 0, 'labu-siam-besar-pcs', 0, 1, NULL, '2020-07-20 06:46:18', '2020-07-21 05:22:30'),
(26, 0, NULL, '174', NULL, 4700, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'labu-siam-kecil-500gr', 0, 1, NULL, '2020-07-20 06:46:59', '2020-07-21 05:22:32'),
(27, 0, NULL, '180', NULL, 8800, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'oyong-1kg', 0, 1, NULL, '2020-07-20 06:47:48', '2020-07-21 05:21:50'),
(28, 0, NULL, '184', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'pare-500gr', 0, 1, NULL, '2020-07-20 06:48:15', '2020-07-21 05:21:14'),
(29, 0, NULL, '187', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'pokcoy-500gr', 0, 1, NULL, '2020-07-20 06:48:46', '2020-07-21 05:20:55'),
(30, 0, NULL, '188', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jagung-putren-500gr', 0, 1, NULL, '2020-07-20 06:49:25', '2020-07-21 05:19:43'),
(31, 0, NULL, '164', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'sawi-hijau-1kg', 0, 1, NULL, '2020-07-20 06:50:05', '2020-07-21 05:19:34'),
(32, 0, NULL, '192', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'sawi-putih-500gr', 0, 1, NULL, '2020-07-20 06:50:38', '2020-07-21 05:19:25'),
(33, 0, NULL, '268', NULL, 6250, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'terong-ungu-500gr', 0, 1, NULL, '2020-07-20 06:51:54', '2020-07-21 05:19:17'),
(34, 0, NULL, '197', NULL, 3500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'timun-500gr', 0, 1, NULL, '2020-07-20 06:52:24', '2020-07-21 05:19:09'),
(35, 0, NULL, '202', NULL, 4400, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'wortel-lokal-500gr', 0, 1, NULL, '2020-07-20 06:53:02', '2020-07-21 05:19:00'),
(36, 0, NULL, '165', NULL, 3000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'kangkung-darat-ikat', 0, 1, NULL, '2020-07-20 06:54:15', '2020-07-21 05:18:34'),
(37, 0, NULL, '140', NULL, 3500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'bayam-ikat', 0, 1, NULL, '2020-07-20 06:55:05', '2020-07-21 05:18:07'),
(38, 0, NULL, '153', NULL, 2500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'daun-singkong-jepang-ikat', 0, 1, NULL, '2020-07-20 06:56:38', '2020-07-21 05:17:43'),
(39, 0, NULL, '269', NULL, 4500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'singkong-1kg', 0, 1, NULL, '2020-07-20 06:58:17', '2020-07-21 05:17:23'),
(40, 0, NULL, '196', NULL, 3500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Pcs', 1, 1, 0, NULL, 0, 0, 0, 0, 'paket-sayur-sop', 0, 1, NULL, '2020-07-20 06:59:39', '2020-07-21 05:17:01'),
(41, 0, NULL, '271', NULL, 3500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Pcs', 1, 1, 0, NULL, 0, 0, 0, 0, 'paket-sayur-asem', 0, 1, NULL, '2020-07-20 07:05:10', '2020-07-21 05:16:43'),
(42, 0, NULL, '250', NULL, 6000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ubi-merah-1kg', 0, 1, NULL, '2020-07-20 07:06:00', '2020-07-21 05:16:21'),
(43, 0, NULL, '251', NULL, 6000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ubi-ungu-1kg', 0, 1, NULL, '2020-07-20 07:06:38', '2020-07-21 05:16:05'),
(44, 0, NULL, '252', NULL, 6000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ubi-putih-1kg', 0, 1, NULL, '2020-07-20 07:07:28', '2020-07-21 05:15:50'),
(45, 0, NULL, '198', NULL, 4750, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'tauge-500gr', 0, 1, NULL, '2020-07-20 07:08:03', '2020-07-21 05:15:27'),
(46, 0, NULL, '194', NULL, 5300, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'terong-bulat-500gr', 0, 1, NULL, '2020-07-20 07:08:56', '2020-07-21 05:12:25'),
(47, 0, NULL, '272', NULL, 8000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'daun-kemangi-10-tangkai', 0, 1, NULL, '2020-07-20 07:10:30', '2020-07-21 05:12:09'),
(48, 0, NULL, '177', NULL, 8500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'lobak-1kg', 0, 1, NULL, '2020-07-20 07:11:02', '2020-07-21 05:11:49'),
(49, 0, NULL, '265', NULL, 8000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'lengkuas-500gr', 0, 1, NULL, '2020-07-20 07:11:50', '2020-07-21 05:11:32'),
(50, 0, NULL, '134', NULL, 32000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'bawang-merah-brebes-super-1kg', 0, 1, NULL, '2020-07-20 07:13:39', '2020-07-22 04:01:26'),
(51, 0, NULL, '199', NULL, 6500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'tomat-500gr', 0, 1, NULL, '2020-07-20 07:15:21', '2020-07-23 06:06:09'),
(52, 0, NULL, '274', NULL, 10000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jagung-manis-kupas-1kg', 0, 1, NULL, '2020-07-20 07:19:32', '2020-07-21 05:09:57'),
(53, 0, NULL, '275', NULL, 20000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kacang-kapri-500gr', 0, 1, NULL, '2020-07-20 07:20:54', '2020-07-21 05:09:36'),
(54, 0, NULL, '193', NULL, 8000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'selada-keriting-500gr', 0, 1, NULL, '2020-07-20 07:21:34', '2020-07-21 05:09:17'),
(55, 0, NULL, '276', NULL, 16000, '0000-00-00 00:00:00', NULL, NULL, '250', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kacang-merah-250gr', 0, 1, NULL, '2020-07-20 07:23:18', '2020-07-21 05:09:01'),
(56, 0, NULL, '181', NULL, 6000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'melinjo-kulit-500gr', 0, 1, NULL, '2020-07-20 07:24:57', '2020-07-21 05:08:50'),
(57, 0, NULL, '154', NULL, 2000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'daun-pepaya-jepang-ikat', 0, 1, NULL, '2020-07-20 07:25:49', '2020-07-21 05:08:17'),
(58, 0, NULL, '179', NULL, 4500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'nangka-muda-500gr', 0, 1, NULL, '2020-07-20 07:27:04', '2020-07-21 05:08:28'),
(59, 0, NULL, '183', NULL, 49000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'paprika-hijau-1kg', 0, 1, NULL, '2020-07-20 07:27:51', '2020-07-21 05:07:55'),
(60, 0, NULL, '189', NULL, 59000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'paprika-merah-1kg', 0, 1, NULL, '2020-07-20 07:28:26', '2020-07-21 05:07:40'),
(61, 0, NULL, '272', NULL, 4500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'daun-kemangi-5-tangkai', 0, 1, NULL, '2020-07-20 07:29:54', '2020-07-21 05:07:24'),
(62, 0, NULL, '167', NULL, 1200, '0000-00-00 00:00:00', NULL, NULL, '1', 'Ikat', 1, 1, 0, NULL, 0, 0, 0, 0, 'kembang-genjer-ikat', 0, 1, NULL, '2020-07-20 07:30:41', '2020-07-21 05:07:03'),
(63, 0, NULL, '277', NULL, 5250, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'tomat-hijau-500gr', 0, 1, NULL, '2020-07-20 07:32:02', '2020-07-21 05:06:42'),
(64, 0, NULL, '149', NULL, 4000, '0000-00-00 00:00:00', NULL, NULL, '100', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daun-jeruk-100gr', 0, 1, NULL, '2020-07-20 07:32:40', '2020-07-21 05:03:38'),
(65, 0, NULL, '170', NULL, 5750, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kentang-baby-1kg', 0, 1, NULL, '2020-07-20 07:33:46', '2020-07-21 05:06:21'),
(66, 0, NULL, '334', NULL, 65500, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jahe-merah-1kg', 0, 1, NULL, '2020-07-20 07:35:01', '2020-07-24 02:22:56'),
(68, 0, NULL, '259', NULL, 50000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jahe-putih-1kg-1', 0, 1, NULL, '2020-07-20 07:35:47', '2020-07-21 05:05:28'),
(69, 0, NULL, '257', NULL, 38000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'jahe-gajah-1kg', 0, 1, NULL, '2020-07-20 07:36:33', '2020-07-21 05:04:55'),
(70, 0, NULL, '278', NULL, 1000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Pcs', 1, 1, 0, NULL, 0, 0, 0, 0, 'asem-jawa-pcs', 0, 1, NULL, '2020-07-20 07:37:09', '2020-07-21 03:09:22'),
(71, 0, NULL, '291', NULL, 37500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ati-sapi-500gr', 0, 1, NULL, '2020-07-24 01:37:49', NULL),
(72, 0, NULL, '301', NULL, 75000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'iga-sapi-panjang-1kg', 0, 1, NULL, '2020-07-24 01:38:25', NULL),
(73, 0, NULL, '302', NULL, 55700, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daging-rendang-segar-500gr', 0, 1, NULL, '2020-07-24 01:39:12', NULL),
(74, 0, NULL, '303', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'iga-kerongkongan-ayam-1kg', 0, 1, NULL, '2020-07-24 01:40:01', NULL),
(75, 0, NULL, '307', NULL, 13000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kepala-ayam-1kg', 0, 1, NULL, '2020-07-24 01:42:21', NULL),
(76, 0, NULL, '308', NULL, 16500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'drumstick-500gr-isi-4-5pcs', 0, 1, NULL, '2020-07-24 01:43:49', NULL),
(77, 0, NULL, '309', NULL, 10000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Bungkus', 1, 1, 0, NULL, 0, 0, 0, 0, 'ati-ampela-ayam-isi-5pcs', 0, 1, NULL, '2020-07-24 01:46:22', NULL),
(78, 0, NULL, '297', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ceker-ayam-500gr', 0, 1, NULL, '2020-07-24 01:47:08', NULL),
(79, 0, NULL, '310', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'sayap-ayam-500gr', 0, 1, NULL, '2020-07-24 01:48:18', NULL),
(80, 0, NULL, '311', NULL, 55000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'paru-sapi-500gr', 0, 1, NULL, '2020-07-24 01:49:27', NULL),
(81, 0, NULL, '300', NULL, 55700, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daging-sengkel-500gr', 0, 1, NULL, '2020-07-24 01:50:21', NULL),
(82, 0, NULL, '290', NULL, 27000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 1, 'ayam-negri-utuh-1kg', 0, 1, NULL, '2020-07-24 01:51:08', NULL),
(83, 0, NULL, '312', NULL, 22000, '0000-00-00 00:00:00', NULL, NULL, '700', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 1, 'ayam-negri-utuh-700-800gr', 0, 1, NULL, '2020-07-24 01:59:18', '2020-07-24 02:00:44'),
(84, 0, NULL, '313', NULL, 92000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'tetelan-sapi-segar-1kg', 0, 1, NULL, '2020-07-24 02:00:23', NULL),
(85, 0, NULL, '314', NULL, 13000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kikil-sapi-500gr', 0, 1, NULL, '2020-07-24 02:02:57', NULL),
(86, 0, NULL, '315', NULL, 45000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daging-sandung-lamur-500gr', 0, 1, NULL, '2020-07-24 02:05:00', NULL),
(87, 0, NULL, '299', NULL, 20000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 1, 'dada-fillet-kulit-500gr', 0, 1, NULL, '2020-07-24 02:05:42', '2020-07-24 02:19:39'),
(88, 0, NULL, '298', NULL, 22000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 1, 'dada-fillet-polos-500gr', 0, 1, NULL, '2020-07-24 02:07:17', '2020-07-24 02:19:41'),
(89, 0, NULL, '316', NULL, 17000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 1, 'paha-fillet-kulit-500gr', 0, 1, NULL, '2020-07-24 02:09:31', '2020-07-24 02:19:47'),
(90, 0, NULL, '317', NULL, 20000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 1, 'paha-fillet-polos-500gr', 0, 1, NULL, '2020-07-24 02:10:50', '2020-07-24 02:19:50'),
(91, 0, NULL, '310', NULL, 15000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'sayap-ayam-500gr-1', 0, 1, NULL, '2020-07-24 02:11:35', NULL),
(92, 0, NULL, '318', NULL, 36000, '0000-00-00 00:00:00', NULL, NULL, '1.3', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 1, 'ayam-utuh-1-3kg', 0, 1, NULL, '2020-07-24 02:13:00', '2020-07-24 02:19:07'),
(93, 0, NULL, '319', NULL, 55700, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daging-segar-tanpa-lemak-500gr', 0, 1, NULL, '2020-07-24 02:15:32', NULL),
(94, 0, NULL, '320', NULL, 9000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'usus-ayam-500gr', 0, 1, NULL, '2020-07-24 02:16:38', NULL),
(95, 0, NULL, '321', NULL, 17500, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'kulit-ayam-500gr', 0, 1, NULL, '2020-07-24 02:17:13', NULL),
(96, 0, NULL, '322', NULL, 41000, '0000-00-00 00:00:00', NULL, NULL, '1.5', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 1, 'ayam-negri-utuh-1-5kg', 0, 1, NULL, '2020-07-24 02:18:35', NULL),
(97, 0, NULL, '323', NULL, 35000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-mujair-1kg-isi-4-5', 0, 1, NULL, '2020-07-24 07:07:41', NULL),
(98, 0, NULL, '324', NULL, 25000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-lele-segar-1kg', 0, 1, NULL, '2020-07-24 07:08:38', NULL),
(99, 0, NULL, '325', NULL, 38000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-kembung-banjar-1kg', 0, 1, NULL, '2020-07-24 07:09:28', NULL),
(100, 0, NULL, '328', NULL, 46000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'gurame-1kg', 0, 1, NULL, '2020-07-24 07:15:06', NULL),
(101, 0, NULL, '326', NULL, 32000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'patin-1kg', 0, 1, NULL, '2020-07-24 07:15:48', NULL),
(102, 0, NULL, '327', NULL, 70000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'daging-ikan-tuna-1kg', 0, 1, NULL, '2020-07-24 07:16:44', NULL),
(103, 0, NULL, '329', NULL, 45000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-tongkol-basah-1kg', 0, 1, NULL, '2020-07-24 07:18:29', NULL),
(104, 0, NULL, '332', NULL, 45000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-ekor-kuning-1kg', 0, 1, NULL, '2020-07-24 07:22:50', NULL),
(105, 0, NULL, '330', NULL, 52000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-tenggiri-500gr', 0, 1, NULL, '2020-07-24 07:23:39', NULL),
(106, 0, NULL, '333', NULL, 25000, '0000-00-00 00:00:00', NULL, NULL, '1', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'ikan-bawal-air-tawar-1kg', 0, 1, NULL, '2020-07-24 07:24:18', NULL),
(107, 0, NULL, '331', NULL, 50000, '0000-00-00 00:00:00', NULL, NULL, '500', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'udang-pancet-500gr', 0, 1, NULL, '2020-07-24 07:25:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT 0,
  `products_left_banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(2, 2, 1, 'Bawang Putih Kating 500Gr', '<p>Bawang Putih Kating 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(3, 3, 1, 'Bawang Merah Brebes 500Gr', '<p>Bawang Merah Brebes 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(4, 4, 1, 'Bawang Bombay 500Gr', '<p>Bawang Bombay 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(5, 5, 1, 'Brokoli 1Kg', '<p>Brokoli 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(6, 6, 1, 'Buncis 500Gr', '<p>Buncis 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(7, 7, 1, 'buncis Baby 500Gr', '<p>buncis Baby 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(8, 8, 1, 'Cabe Hijau Besar 500Gr', '<p>Cabe Hijau Besar 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(9, 9, 1, 'Cabe Hijau Keriting 500Gr', '<p>Cabe Hijau Keriting 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(10, 10, 1, 'Cabe Merah besar 500Gr', '<p>Cabe Merah besar 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(11, 11, 1, 'Cabe Merah Keriting 500Gr', '<p>Cabe Merah Keriting 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(12, 12, 1, 'Cabe Rawit Merah 500Gr', '<p>Cabe Rawit Merah 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(13, 13, 1, 'Cabe Rawit Hijau 500Gr', '<p>Cabe Rawit Hijau 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(14, 14, 1, 'Daun Bawang Sledri 1Kg', '<p>Daun Bawang Sledri 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(15, 15, 1, 'Jagung Manis 1Kg', '<p>Jagung Manis 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(16, 16, 1, 'Jeruk Nipis 500Gr', '<p>Jeruk Nipis 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(17, 17, 1, 'Kacang Panjang 500Gr', '<p>Kacang Panjang 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(18, 18, 1, 'Kembang Kol 1Kg', '<p>Kembang Kol 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(19, 19, 1, 'Kemiri 500Gr', '<p>Kemiri 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(21, 21, 1, 'Kentang Dieng grade A 1Kg', '<p>Kentang Dieng grade A 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(22, 22, 1, 'Kentang Dieng grade B 1Kg', '<p>Kentang Dieng grade B 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(23, 23, 1, 'Kentang Dieng grade C 1Kg', '<p>Kentang Dieng grade C 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(24, 24, 1, 'Kol 1Kg', '<p>Kol 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(25, 25, 1, 'Labu Siam Besar Pcs', '<p>Labu Siam Besar Pcs</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(26, 26, 1, 'Labu Siam Kecil 500Gr', '<p>Labu Siam Kecil 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(27, 27, 1, 'Oyong 1Kg', '<p>Oyong 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(28, 28, 1, 'Pare 500Gr', '<p>Pare 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(29, 29, 1, 'Pokcoy 500Gr', '<p>Pokcoy 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(30, 30, 1, 'Jagung Putren 500Gr', '<p>Jagung Putren 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(31, 31, 1, 'Sawi Hijau 1Kg', '<p>Sawi Hijau 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(32, 32, 1, 'Sawi Putih 500Gr', '<p>Sawi Putih 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(33, 33, 1, 'Terong Ungu 500Gr', '<p>Terong Ungu 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(34, 34, 1, 'Timun 500Gr', '<p>Timun 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(35, 35, 1, 'Wortel Lokal 500Gr', '<p>Wortel Lokal 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(36, 36, 1, 'Kangkung Darat Ikat', '<p>Kangkung Darat Ikat</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(37, 37, 1, 'Bayam Ikat', '<p>Bayam Ikat</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(38, 38, 1, 'Daun Singkong Jepang Ikat', '<p>Daun Singkong Jepang Ikat</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(39, 39, 1, 'Singkong 1Kg', '<p>Singkong 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(40, 40, 1, 'Paket Sayur SOP', '<p>Paket Sayur SOP</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(41, 41, 1, 'Paket Sayur Asem', '<p>Paket Sayur Asem</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(42, 42, 1, 'Ubi Merah 1Kg', '<p>Ubi Merah 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(43, 43, 1, 'Ubi Ungu 1Kg', '<p>Ubi Ungu 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(44, 44, 1, 'Ubi Putih 1Kg', '<p>Ubi Putih 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(45, 45, 1, 'Tauge 500Gr', '<p>Tauge 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(46, 46, 1, 'Terong Bulat 500Gr', '<p>Terong Bulat 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(47, 47, 1, 'Daun Kemangi 10 Tangkai', '<p>Daun Kemangi 10 Tangkai</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(48, 48, 1, 'Lobak 1Kg', '<p>Lobak 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(49, 49, 1, 'Lengkuas 500Gr', '<p>Lengkuas 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(50, 50, 1, 'Bawang Merah Brebes Super 1Kg', '<p>Bawang Merah Brebes Super 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(51, 51, 1, 'Tomat 500Gr', '<p>Tomat 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(52, 52, 1, 'Jagung Manis Kupas 1Kg', '<p>Jagung Manis Kupas 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(53, 53, 1, 'Kacang Kapri 500Gr', '<p>Kacang Kapri 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(54, 54, 1, 'Selada Keriting 500Gr', '<p>Selada Keriting 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(55, 55, 1, 'Kacang Merah 250Gr', '<p>Kacang Merah 250Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(56, 56, 1, 'Melinjo (Kulit) 500gr', '<p>Melinjo (Kulit) 500gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(57, 57, 1, 'Daun Pepaya Jepang Ikat', '<p>Daun Pepaya Jepang Ikat</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(58, 58, 1, 'Nangka Muda 500Gr', '<p>Nangka Muda 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(59, 59, 1, 'Paprika Hijau 1Kg', '<p>Paprika Hijau 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(60, 60, 1, 'Paprika Merah 1Kg', '<p>Paprika Merah 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(61, 61, 1, 'Daun Kemangi 5 Tangkai', '<p>Daun Kemangi 5 Tangkai</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(62, 62, 1, 'Kembang Genjer Ikat', '<p>Kembang Genjer Ikat</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(63, 63, 1, 'Tomat Hijau 500Gr', '<p>Tomat Hijau 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(64, 64, 1, 'Daun Jeruk 100Gr', '<p>Daun Jeruk 100Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(65, 65, 1, 'Kentang Baby 1Kg', '<p>Kentang Baby 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(66, 66, 1, 'Jahe Merah 1Kg', '<p>Jahe Merah 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(68, 68, 1, 'Jahe Putih 1Kg', '<p>Jahe Putih 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(69, 69, 1, 'Jahe Gajah 1Kg', '<p>Jahe Gajah 1Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(70, 70, 1, 'Asem Jawa Pcs', '<p>Asem Jawa Pcs</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(71, 71, 1, 'Ati Sapi 500Gr', '<p>Ati Sapi 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(72, 72, 1, 'Iga Sapi Panjang 1Kg', '<p>Iga Sapi Panjang 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(73, 73, 1, 'Daging Rendang Segar 500Gr', '<p>Daging Rendang Segar 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(74, 74, 1, 'Iga / Kerongkongan Ayam 1Kg', '<p>Iga / Kerongkongan Ayam 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(75, 75, 1, 'Kepala Ayam 1Kg', '<p>Kepala Ayam 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(76, 76, 1, 'Drumstick 500Gr isi 4-5Pcs', '<p>Drumstick 500Gr isi 4-5Pcs</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(77, 77, 1, 'Ati Ampela Ayam isi 5Pcs', '<p>Ati Ampela Ayam isi 5Pcs</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(78, 78, 1, 'Ceker Ayam 500Gr', '<p>Ceker Ayam 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(79, 79, 1, 'Sayap Ayam 500Gr', '<p>Sayap Ayam 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(80, 80, 1, 'Paru Sapi 500Gr', '<p>Paru Sapi 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(81, 81, 1, 'Daging Sengkel 500Gr', '<p>Daging Sengkel 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(82, 82, 1, 'Ayam Negri utuh 1Kg', '<p>Ayam Negri utuh 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(83, 83, 1, 'Ayam Negri utuh 700-800Gr', '<p>Ayam Negri utuh 700-800Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(84, 84, 1, 'Tetelan Sapi Segar 1Kg', '<p>Tetelan Sapi Segar 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(85, 85, 1, 'Kikil Sapi 500Gr', '<p>Kikil Sapi 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(86, 86, 1, 'Daging sandung Lamur 500Gr', '<p>Daging sandung Lamur 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(87, 87, 1, 'Dada Fillet Kulit 500Gr', '<p>Dada Fillet Kulit 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(88, 88, 1, 'Dada Fillet Polos 500Gr', '<p>Dada Fillet Polos 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(89, 89, 1, 'Paha fillet Kulit 500Gr', '<p>Paha fillet Kulit 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(90, 90, 1, 'paha Fillet Polos 500Gr', '<p>paha Fillet Polos 500Gr</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(91, 91, 1, 'Sayap Ayam 500Gr', '<p>Sayap Ayam 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(92, 92, 1, 'Ayam Utuh 1.3Kg', '<p>Ayam Utuh 1.3Kg</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(93, 93, 1, 'Daging Segar Tanpa Lemak 500Gr', '<p>Daging Segar Tanpa Lemak 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(94, 94, 1, 'Usus Ayam 500Gr', '<p>Usus Ayam 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(95, 95, 1, 'Kulit Ayam 500Gr', '<p>Kulit Ayam 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(96, 96, 1, 'Ayam Negri utuh 1.5Kg', '<p>Ayam Negri utuh 1.5Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(97, 97, 1, 'Ikan Mujair 1Kg isi 4-5', '<p>Ikan Mujair 1Kg isi 4-5</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(98, 98, 1, 'Ikan Lele Segar 1Kg', '<p>Ikan Lele Segar 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(99, 99, 1, 'Ikan Kembung Banjar 1Kg', '<p>Ikan Kembung Banjar 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(100, 100, 1, 'Gurame 1Kg', '<p>Gurame 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(101, 101, 1, 'Patin 1Kg', '<p>Patin 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(102, 102, 1, 'Daging Ikan Tuna 1Kg', '<p>Daging Ikan Tuna 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(103, 103, 1, 'Ikan Tongkol Basah 1Kg', '<p>Ikan Tongkol Basah 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(104, 104, 1, 'Ikan Ekor Kuning 1Kg', '<p>Ikan Ekor Kuning 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(105, 105, 1, 'Ikan Tenggiri 500Gr', '<p>Ikan Tenggiri 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(106, 106, 1, 'Ikan Bawal Air Tawar 1Kg', '<p>Ikan Bawal Air Tawar 1Kg</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(107, 107, 1, 'Udang Pancet 500Gr', '<p>Udang Pancet 500Gr</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL,
  `weight_from` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '10', 10, 1, 1),
(2, '10', '20', 10, 1, 1),
(3, '20', '30', 10, 1, 1),
(4, '30', '50', 50, 1, 1),
(5, '50', '100000', 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(74, 64, 1),
(75, 69, 5),
(76, 68, 5),
(78, 65, 1),
(79, 63, 1),
(80, 62, 1),
(81, 61, 1),
(82, 60, 1),
(83, 59, 1),
(84, 57, 1),
(85, 58, 3),
(86, 56, 1),
(87, 55, 1),
(88, 54, 1),
(89, 53, 1),
(90, 52, 1),
(93, 49, 5),
(94, 48, 1),
(95, 47, 1),
(96, 46, 1),
(97, 45, 1),
(98, 44, 3),
(99, 43, 3),
(100, 42, 3),
(101, 41, 1),
(102, 40, 1),
(103, 39, 3),
(104, 38, 1),
(105, 37, 1),
(106, 36, 1),
(107, 35, 1),
(108, 34, 1),
(109, 33, 1),
(110, 32, 1),
(111, 31, 1),
(112, 30, 1),
(113, 29, 1),
(114, 28, 1),
(115, 27, 1),
(116, 25, 1),
(117, 26, 1),
(118, 23, 1),
(119, 22, 1),
(120, 21, 1),
(121, 24, 1),
(122, 17, 1),
(123, 16, 3),
(124, 14, 1),
(125, 13, 1),
(126, 12, 1),
(127, 11, 1),
(128, 10, 1),
(129, 9, 1),
(130, 19, 5),
(131, 15, 1),
(132, 18, 1),
(133, 8, 1),
(134, 6, 1),
(135, 5, 1),
(136, 3, 1),
(137, 2, 1),
(139, 4, 1),
(140, 7, 1),
(141, 70, 5),
(142, 50, 1),
(144, 51, 1),
(145, 71, 2),
(146, 72, 2),
(147, 73, 2),
(148, 74, 2),
(149, 75, 2),
(150, 76, 2),
(151, 77, 2),
(152, 78, 2),
(153, 79, 2),
(154, 80, 2),
(155, 81, 2),
(156, 82, 2),
(158, 84, 2),
(159, 83, 2),
(160, 85, 2),
(161, 86, 2),
(167, 91, 2),
(169, 93, 2),
(170, 94, 2),
(171, 95, 2),
(172, 96, 2),
(173, 92, 2),
(174, 87, 2),
(175, 88, 2),
(176, 89, 2),
(177, 90, 2),
(178, 97, 4),
(179, 98, 4),
(180, 99, 4),
(181, 100, 4),
(182, 101, 4),
(183, 102, 4),
(184, 103, 4),
(185, 104, 4),
(186, 105, 4),
(187, 106, 4),
(188, 107, 4),
(189, 66, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT 0,
  `reviews_read` int(11) NOT NULL DEFAULT 0,
  `vendors_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deliveryboy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-27 00:00:00', '2019-11-01 06:58:53'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-27 00:00:00', '2019-11-01 06:58:53'),
(3, 'facebook_login', '0', '2018-04-27 00:00:00', '2019-11-01 06:58:53'),
(4, 'contact_us_email', 'support@rumahsayurkita.com', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(5, 'address', 'Jl. CInta No 35 Pulo Gadung', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(6, 'city', 'Jakarta Timur', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(7, 'state', 'DI JAKARTA', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(8, 'zip', 'Zip', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(9, 'country', 'indonesia', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(10, 'latitude', 'Latitude', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(11, 'longitude', 'Longitude', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(12, 'phone_no', '08 1212 08 2958', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(13, 'fcm_android', '', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(14, 'fcm_ios', NULL, '2018-04-27 00:00:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-27 00:00:00', NULL),
(16, 'website_logo', 'images/media/2020/07/FQrzt20605.png', '2018-04-27 00:00:00', '2020-07-20 05:01:44'),
(17, 'fcm_android_sender_id', '', '2018-04-27 00:00:00', '2020-08-27 12:41:21'),
(18, 'fcm_ios_sender_id', '', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(19, 'app_name', 'Rumah Sayur Kita', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(20, 'currency_symbol', 'Rp', '2018-04-27 00:00:00', '2018-11-19 07:26:01'),
(21, 'new_product_duration', '20', '2018-04-27 00:00:00', '2020-09-14 06:18:12'),
(22, 'notification_title', 'RUMAH SAYUR KITA', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(23, 'notification_text', 'Harga murah menanti anda!', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(24, 'lazzy_loading_effect', 'android', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(25, 'footer_button', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(26, 'cart_button', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(27, 'featured_category', NULL, '2018-04-27 00:00:00', NULL),
(28, 'notification_duration', 'day', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(29, 'home_style', '2', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(30, 'wish_list_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(31, 'edit_profile_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(32, 'shipping_address_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(33, 'my_orders_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(34, 'contact_us_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(35, 'about_us_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(36, 'news_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(37, 'intro_page', '0', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(38, 'setting_page', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(39, 'share_app', '1', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(40, 'rate_app', '0', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(41, 'site_url', 'URL', '2018-04-27 00:00:00', '2018-11-19 07:26:01'),
(42, 'admob', '0', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(43, 'admob_id', 'ID', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(46, 'category_style', '5', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(47, 'package_name', 'package name', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(48, 'google_analytic_id', 'test', '2018-04-27 00:00:00', '2020-09-07 01:45:25'),
(49, 'themes', 'themeone', '2018-04-27 00:00:00', NULL),
(50, 'company_name', '#', '2018-04-27 00:00:00', '2019-10-07 09:52:24'),
(51, 'facebook_url', '#', '2018-04-27 00:00:00', '2020-07-20 05:01:44'),
(52, 'google_url', '#', '2018-04-27 00:00:00', '2020-07-20 05:01:44'),
(53, 'twitter_url', '#', '2018-04-27 00:00:00', '2020-07-20 05:01:44'),
(54, 'linked_in', '#', '2018-04-27 00:00:00', '2020-07-20 05:01:44'),
(55, 'default_notification', 'onesignal', '2018-04-27 00:00:00', '2020-08-27 12:41:21'),
(56, 'onesignal_app_id', '0aaaf0ef-cd08-45d2-a1a8-f584825ab0e9', '2018-04-27 00:00:00', '2020-08-27 12:41:21'),
(57, 'onesignal_sender_id', '661676719441', '2018-04-27 00:00:00', '2020-08-27 12:41:21'),
(58, 'ios_admob', '0', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(62, 'google_login', '0', NULL, '2019-11-01 06:58:36'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '1', NULL, '2018-05-04 03:24:44'),
(68, 'is_web_purchased', '1', NULL, '2018-05-04 03:24:44'),
(69, 'consumer_key', '112351a61599920020052b9c7e', NULL, '2020-09-12 02:13:40'),
(70, 'consumer_secret', '6608913b15999200209cfcf6b7', NULL, '2020-09-12 02:13:40'),
(71, 'order_email', 'orders@rumahsayurkita.com', NULL, '2020-09-14 06:18:12'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-19 07:21:57'),
(74, 'seo_metatag', '', NULL, '2018-11-19 07:21:57'),
(75, 'seo_keyword', '', NULL, '2018-11-19 07:21:57'),
(76, 'seo_description', '', NULL, '2018-11-19 07:21:57'),
(77, 'before_head_tag', '', NULL, '2018-11-19 07:22:15'),
(78, 'end_body_tag', 'name', NULL, '2019-10-11 11:57:29'),
(79, 'sitename_logo', 'logo', NULL, '2020-07-20 05:01:44'),
(80, 'website_name', '<strong>RUMAH</strong>SAYUR KITA', NULL, '2020-07-20 05:01:44'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 07:22:25'),
(82, 'web_color_style', 'app.theme.19', NULL, '2020-09-14 09:19:33'),
(83, 'free_shipping_limit', '400', NULL, '2020-09-14 06:18:12'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 10:12:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '', NULL, NULL),
(87, 'favicon', 'images/media/2020/07/VRPoJ20105.png', NULL, '2020-07-20 05:01:44'),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'production', NULL, '2020-09-14 06:18:12'),
(95, 'maintenance_text', 'https://example.com', NULL, '2020-09-14 06:18:12'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '20', NULL, '2020-09-14 06:18:12'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'http://www.rumahsayurkita.com/', NULL, '2020-09-14 06:18:12'),
(104, 'google_map_api', '', NULL, '2019-10-21 07:36:53'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '1.4', NULL, NULL),
(107, 'app_version', '1.3', NULL, NULL),
(108, 'web_version', '1.3', NULL, NULL),
(109, 'pos_version', '0', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2020-07-20 05:01:44'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2020-07-20 05:01:44'),
(114, 'is_deliverboy_purchased', '1', NULL, NULL),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', NULL, '2019-11-01 06:58:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', NULL, '2019-11-01 06:58:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', NULL, '2019-11-01 06:58:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', NULL, '2019-11-01 06:58:36'),
(119, 'newsletter', '1', NULL, '2020-07-20 05:07:01'),
(120, 'allow_cookies', '0', NULL, '2020-07-20 05:01:44'),
(121, 'card_style', '2', NULL, '2020-09-07 01:45:25'),
(122, 'banner_style', '2', NULL, '2020-09-07 01:45:25'),
(123, 'mail_chimp_api', '', NULL, '2020-07-20 05:07:01'),
(124, 'mail_chimp_list_id', '', NULL, '2020-07-20 05:07:01'),
(125, 'newsletter_image', 'images/media/2020/07/RhCsh20105.png', NULL, '2020-07-20 05:07:01'),
(126, 'instauserid', 'rumahsayurkita_', NULL, '2020-09-09 10:37:19'),
(127, 'is_enable_location', '0', NULL, '2019-11-01 06:58:36'),
(128, 'default_latitude', '', NULL, '2019-11-01 06:58:36'),
(129, 'default_longitude', '', NULL, '2019-11-01 06:58:36'),
(130, 'web_card_style', '1', NULL, '2019-11-01 06:58:36'),
(131, 'auth_domain', '1', NULL, '2019-11-01 06:58:36'),
(132, 'database_URL', '', NULL, '2019-11-01 06:58:36'),
(133, 'projectId', '', NULL, '2019-11-01 06:58:36'),
(134, 'storage_bucket', '', NULL, '2019-11-01 06:58:36'),
(135, 'messaging_senderid', '', NULL, '2019-11-01 06:58:36'),
(136, 'firebase_apikey', '', NULL, '2019-11-01 06:58:36'),
(137, 'home_categories_img_icn', 'Icon', NULL, '2019-11-01 06:58:36'),
(138, 'home_categories_records', '6', NULL, '2019-11-01 06:58:36'),
(139, 'home_category', '', NULL, '2019-11-01 06:58:36'),
(140, 'firebase_appid', '', NULL, '2019-11-01 06:58:36'),
(141, 'maptype', 'external', NULL, '2019-11-01 06:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_labels` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(13, 'Shipping Price', 1, 'shipping_by_weight', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `table_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 0, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(29, 'Full Screen Slider (1600x420)', 'bawang-putih-banci-500gr', 1, '335', '', '', '2021-05-07 00:00:00', '2020-08-27 11:07:02', 1, 'product', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT 1,
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_offers`
--

CREATE TABLE `top_offers` (
  `top_offers_id` int(11) NOT NULL,
  `top_offers_text` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `top_offers`
--

INSERT INTO `top_offers` (`top_offers_id`, `top_offers_text`, `language_id`, `created_at`, `updated_at`) VALUES
(1, '<marquee>Silahkan<strong> DOWNLOAD </strong>Aplikasi\r\n <a href=\\\"http://download.rumahsayurkita.com\\\">\r\n<font color=\\\"f7ad26\\\">DISINI</font>\r\n </a></marquee>', 1, '2020-02-04 05:14:16', '2020-09-14 09:29:31'),
(2, '<marquee>Silahkan<strong> DOWNLOAD </strong>Aplikasi\r\n <a href=\\\"http://download.rumahsayurkita.com\\\">\r\n<font color=\\\"f7ad26\\\">DISINI</font>\r\n </a></marquee>', 1, '2020-02-04 05:14:16', '2020-09-14 09:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(4, 1, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, NULL, NULL),
(6, 1, NULL, NULL, NULL, NULL),
(7, 1, NULL, NULL, NULL, NULL),
(8, 1, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

CREATE TABLE `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL,
  `units_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Gram', 1, 1, NULL, NULL),
(2, 'Kilogram', 1, 2, NULL, NULL),
(3, 'Pcs', 1, 3, NULL, NULL),
(4, 'Karton', 1, 4, NULL, NULL),
(5, 'Karung', 1, 5, NULL, NULL),
(6, 'Renceng', 1, 6, NULL, NULL),
(7, 'Pak', 1, 7, NULL, NULL),
(8, 'Renceng', 1, 8, NULL, NULL),
(9, 'Ikat', 1, 9, NULL, NULL),
(10, 'Bungkus', 1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(11) NOT NULL,
  `pickup_method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT 0,
  `country_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'fiojuliansyah', 'Fio', 'juliansyah', NULL, 0, NULL, NULL, 'admin@rumahsayurkita.com', '$2y$10$SfuD53J/HAI.bu/0X6Qc7.FykQgyXcHngAsZm6he5z94bP53dZDI6', NULL, '1', 0, NULL, NULL, NULL, NULL, '2020-07-20 16:03:08', '2020-07-20 16:03:08'),
(3, 2, NULL, 'Hengki', 'Triprasetyo', '0', 0, NULL, NULL, 'hengky3lk@gmail.com', '$2y$10$ez0KVmMI0x15rbqAjs8OXOuIUNRi.8HMJlyatusCa1uhPPTKGFi3W', NULL, '1', 0, NULL, NULL, NULL, NULL, '2020-08-31 04:20:41', '2020-08-31 04:20:41'),
(4, 2, NULL, 'Fio', 'Juliansyah', '1', 0, NULL, '081212082958', 'fiojuliansyah@gmail.com', '$2y$10$haYcwxVaS8bWYOiYzNzK9Ol.8yjMSFLtF.l1.caR1VriVB4j0SRIK', NULL, '1', 1, NULL, NULL, NULL, '28/07/1999', '2020-08-31 04:25:57', '2020-09-15 05:50:04'),
(5, 2, NULL, 'bariq', 'dharmawan', '0', 0, NULL, '087771406656', 'sanchez77rodriguez@gmail.com', '$2y$10$2IcqQUPSmu4FLsJoCS3Tv.O3DKV17UFst2CPpZzMG9DaEfxtGiL8W', NULL, '1', 0, NULL, NULL, NULL, '16/03/2001', '2020-09-09 10:04:50', '2020-09-09 10:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_balance`
--

CREATE TABLE `users_balance` (
  `users_balance_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `transaction_type` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'in: debit, credit:out',
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

CREATE TABLE `user_to_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_types_id` int(11) NOT NULL,
  `user_types_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Customers', 1534777027, NULL, 1),
(3, 'Vendors', 1538390209, NULL, 1),
(4, 'Delivery Guy', 1542965906, NULL, 1),
(5, 'Test 1', 1542965906, NULL, 1),
(6, 'Test 2', 1542965906, NULL, 1),
(7, 'Test 3', 1542965906, NULL, 1),
(8, 'Test 4', 1542965906, NULL, 1),
(9, 'Test 5', 1542965906, NULL, 1),
(10, 'Test 6', 1542965906, NULL, 1),
(11, 'Admin', 1542965906, NULL, 1),
(12, 'Manager', 1542965906, NULL, 1),
(13, 'Data Entry', 1542965906, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `full_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(4, 'Fio Juliansyah', '', '', '2020-09-15 05:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`user_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_detail`
--
ALTER TABLE `bank_detail`
  ADD PRIMARY KEY (`bank_detail_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `block_ips`
--
ALTER TABLE `block_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `currency_record`
--
ALTER TABLE `currency_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `delievery_time_slots`
--
ALTER TABLE `delievery_time_slots`
  ADD PRIMARY KEY (`delievery_time_slots_id`);

--
-- Indexes for table `delievery_time_slot_with_zone`
--
ALTER TABLE `delievery_time_slot_with_zone`
  ADD PRIMARY KEY (`delievery_time_slot_with_zone_id`);

--
-- Indexes for table `deliveryboy_info`
--
ALTER TABLE `deliveryboy_info`
  ADD PRIMARY KEY (`deliveryboy_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floating_cash`
--
ALTER TABLE `floating_cash`
  ADD PRIMARY KEY (`floating_cash_id`);

--
-- Indexes for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`home_banners_id`);

--
-- Indexes for table `http_call_record`
--
ALTER TABLE `http_call_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `orders_to_delivery_boy`
--
ALTER TABLE `orders_to_delivery_boy`
  ADD PRIMARY KEY (`orders_to_deliveryboy_id`);

--
-- Indexes for table `orders_to_delivery_boy_history`
--
ALTER TABLE `orders_to_delivery_boy_history`
  ADD PRIMARY KEY (`orders_to_delivery_boy_history_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_withdraw`
--
ALTER TABLE `payment_withdraw`
  ADD PRIMARY KEY (`payment_withdraw_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_to_categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `top_offers`
--
ALTER TABLE `top_offers`
  ADD PRIMARY KEY (`top_offers_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  ADD PRIMARY KEY (`units_description_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_balance`
--
ALTER TABLE `users_balance`
  ADD PRIMARY KEY (`users_balance_id`);

--
-- Indexes for table `user_to_address`
--
ALTER TABLE `user_to_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_types_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `bank_detail`
--
ALTER TABLE `bank_detail`
  MODIFY `bank_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `block_ips`
--
ALTER TABLE `block_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency_record`
--
ALTER TABLE `currency_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delievery_time_slots`
--
ALTER TABLE `delievery_time_slots`
  MODIFY `delievery_time_slots_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delievery_time_slot_with_zone`
--
ALTER TABLE `delievery_time_slot_with_zone`
  MODIFY `delievery_time_slot_with_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryboy_info`
--
ALTER TABLE `deliveryboy_info`
  MODIFY `deliveryboy_info_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `floating_cash`
--
ALTER TABLE `floating_cash`
  MODIFY `floating_cash_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `home_banners_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `http_call_record`
--
ALTER TABLE `http_call_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1828;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_to_delivery_boy`
--
ALTER TABLE `orders_to_delivery_boy`
  MODIFY `orders_to_deliveryboy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_to_delivery_boy_history`
--
ALTER TABLE `orders_to_delivery_boy_history`
  MODIFY `orders_to_delivery_boy_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `payment_withdraw`
--
ALTER TABLE `payment_withdraw`
  MODIFY `payment_withdraw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  MODIFY `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_offers`
--
ALTER TABLE `top_offers`
  MODIFY `top_offers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  MODIFY `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_balance`
--
ALTER TABLE `users_balance`
  MODIFY `users_balance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_to_address`
--
ALTER TABLE `user_to_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
