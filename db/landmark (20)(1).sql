-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 01:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landmark`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_types`
--

CREATE TABLE `add_types` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(250) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `icon` text NOT NULL,
  `price` varchar(250) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `total_ad_limit` bigint(20) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `in_property` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_types`
--

INSERT INTO `add_types` (`id`, `content_lang`, `child_id`, `slug`, `icon`, `price`, `runtime`, `total_ad_limit`, `title`, `description`, `in_property`) VALUES
(1, 'en', 2, 'add_property_en', 'home', '10000', 300, 1000, 'Total no of Properties', 'No of properties you can add at a time', 0),
(2, 'nep', 1, 'add_property_nep', '', '1000', 30, 1000, 'No of nepali properties', '', 0),
(3, 'en', 4, 'hot_en', 'temperature-hot', '1000', 30, 1000, 'Hot', 'No of hot  properties you can add at a time', 1),
(4, 'nep', 3, 'hot_nep', '', '1000', 30, 1000, 'Ho in nepali t properties', '', 1),
(5, 'en', 6, 'super_hot_en', 'home-alt', '1000', 30, 1000, 'Super Hot', 'No of super hot properties you can add at a time', 1),
(6, 'nep', 5, 'super_hot_nep', '', '1000', 30, 1000, 'super hot in nepali', '', 1),
(7, 'en', 8, 'urgent_en', 'abacus', '1000', 30, 1000, 'urgent', 'No of urgent properties you can add at a time', 1),
(8, 'nep', 7, 'urgent_nep', '', '1000', 30, 1000, 'urgen properties in nepali', '', 1),
(9, 'en', 10, 'featured_en', 'arrow-alt-circle-up', '1000', 30, 1000, 'Featured', 'No of featured properties you can add at a time', 1),
(10, 'nep', 9, 'featured_nep', '', '1000', 30, 1000, 'featured properties in nepali', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `name` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `alt_text` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `image` varchar(64) COLLATE utf8_swedish_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `company` varchar(128) COLLATE utf8_swedish_ci DEFAULT NULL,
  `contact_person` varchar(128) COLLATE utf8_swedish_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_swedish_ci DEFAULT 'NULL',
  `email` mediumtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `display_on` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `expiring_on` date NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `a_icon` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `content_lang`, `child_id`, `a_icon`, `title`, `display_name`, `is_active`, `created_on`) VALUES
(2, 'nep', NULL, 'fa-adjust', 'a', 'A', 1, '2021-03-22 16:24:53'),
(3, 'en', 2, 'fa fa-cogs', 'b', 'amenities1', 1, '2021-03-22 16:24:53'),
(4, 'en', 5, 'flaticon-air-conditioner', 'a', 'amenities 2', 1, '2021-03-22 16:24:53'),
(5, 'nep', NULL, 'fa-500px', 'a', 'D', 1, '2021-03-22 16:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `source` mediumtext COLLATE utf8_swedish_ci NOT NULL,
  `source_id` mediumtext COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `source`, `source_id`) VALUES
(2, 64, 'facebook', '285194439649788');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `subtitle` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `post_content` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `content_lang`, `child_id`, `title`, `subtitle`, `post_content`, `image`, `is_active`, `views`, `created_by`, `created_on`, `updated_on`, `updated_by`) VALUES
(12, 'nep', 13, 'अबु धाबीमा गर्नुपर्ने उत्तम चीजहरू', 'अबु धाबीमा गर्नुपर्ने उत्तम चीजहरू', '<p>युएई को राजधानी को रूप मा, अबू धाबी निवासीहरु र पर्यटकहरु को लागी एक लोकप्रिय गन्तव्य हो। दुबई सबैभन्दा अगाडि रहेकोमा, तपाईं अबु धाबीसँग अनन्त मनोरन्जन र सबैका लागि गतिविधिहरू प्रदान गर्ने धेरै चीजहरू छन् भन्ने कुरा थाहा पाउँदा तपाईं छक्क पर्नुहुनेछ। क्रिस्टल-स्पष्ट समुद्रतटहरूमा आराम गर्न विश्व प्रसिद्ध सांस्कृतिक स्थलहरूको भ्रमणबाट, सम्पत्ति खोजकले अबु धाबीमा शीर्ष चीजहरू गर्नको लागि तपाईंलाई जम्मा गर्&zwj;यो।<br /><br />१. कर्नीचेको साथ टहल लिनुहोस्<br /><br />&nbsp;<br /><br />तपाईं अबु धाबीमा हुन सक्नुहुन्न र यसको ठूलो अंश कोर्निचेमा देख्नुहुन्न, टापु-शहरको सबैभन्दा लोकप्रिय ठाउँहरू मध्ये एक। यो सबै पत्ता लगाउने एक उत्तम तरिका केवल हिड्नु हो र यो पनि एक राम्रो ठाउँ हो हरेक दिन दौडमा।<br /><br />तपाईं पक्कै पनि एकातिर निलो पानी र अर्कोतर्फ शहर भएको प्रेममा पस्नुहुनेछ; मन शान्तिको बारेमा कुरा गर्नुहोस्! सुरम्य कोर्निच हिंड्नु अबु धाबीमा एक क्लासिक गतिविधि हो तपाईंले पक्कै पनि रमाईलो गर्नुहुनेछ।<br /><br />स्थान<br /><br />&nbsp;किमि लामो कर्निचे कोर्निचे रोड, अबु धाबीमा फैलाइएको छ।<br /><br />गतिविधिहरू<br /><br />&nbsp;&nbsp;&nbsp; हिड्दै<br /><br />&nbsp;&nbsp;&nbsp; जोगि<br /><br />&nbsp;&nbsp;&nbsp; एउटा बाइक भाँडामा लिदै<br /><br />&nbsp;&nbsp;&nbsp; भोजन<br /><br />&nbsp;&nbsp;&nbsp; पिकनिक भएको<br /><br />&nbsp;&nbsp;&nbsp; एउटा समुद्री किनारमा हिट गर्दै।</p>', '1619168453b1.jpg', 0, 4, 1, '2021-04-20 12:12:20', NULL, NULL),
(13, 'en', 12, 'Best Things to Do in Abu Dhabi', 'Necessitatibus esse ', '<p>As the capital of the UAE, Abu Dhabi is a popular destination for residents and tourists. With Dubai being in the forefront, you&rsquo;d be surprised to know that Abu Dhabi has a lot to offer as well with endless entertainment and activities for all. From visiting world-famous cultural spots to relaxing by crystal-clear beaches, Property Finder gathered for you the top things to do in Abu Dhabi.</p>\r\n<h2>1. <strong>Take a Stroll Along the Corniche</strong></h2>\r\n<p>You can&rsquo;t be in Abu Dhabi and not notice its vast stretch of Corniche, one of the most popular spots on the island-city. A great way to discover it all is simply by walking and it&rsquo;s also a cool place to jog everyday.&nbsp;</p>\r\n<p>You will definitely fall in love with having the blue water on one side and the city on the other; talk about peace of mind! Walking the picturesque Corniche is a classic activity in Abu Dhabi you will no doubt enjoy.&nbsp;</p>\r\n<h3><strong>Location</strong></h3>\r\n<p>The 8km-long Corniche is stretched on Corniche Rd., Abu Dhabi.</p>\r\n<h3><strong>Activities&nbsp;</strong></h3>\r\n<ul>\r\n<li>Walking</li>\r\n<li>Jogging</li>\r\n<li>Renting a bike&nbsp;</li>\r\n<li>Dining&nbsp;</li>\r\n<li>Having a picnic&nbsp;</li>\r\n<li>Hitting one of the beaches.</li>\r\n</ul>', '1619168453b1.jpg', 0, 7, 1, '2021-04-20 12:12:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `verification_id` bigint(20) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_swedish_ci NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `vacancy_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `age` text DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `expected_salary` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `website` longtext DEFAULT NULL,
  `other_details` longtext DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `vacancy_id`, `name`, `email`, `age`, `city`, `phone`, `expected_salary`, `experience`, `website`, `other_details`, `file`, `is_new`, `created_on`) VALUES
(1, NULL, 'Hector Campos', 'sasirexyje@mailinator.com', 'Consectetur accusamu', 'Necessitatibus ipsa', '+1 (419) 148-6273', 'Doloribus ut dolore ', 'Modi dolorem ad illu', 'https://www.suwynuvawo.com.au', 'Tempore sed beatae ', '', 1, '2020-08-17 11:54:58'),
(2, NULL, 'Mark Bolton', 'lelifuqego@mailinator.com', 'Numquam aliquam volu', 'Qui praesentium et n', '+1 (978) 539-4324', 'Nostrum autem praese', 'Sit excepturi ut ei', 'https://www.figuluwoduni.com.au', 'Provident id volupt', '1597629338cp.pdf', 1, '2020-08-17 11:55:38'),
(3, NULL, 'Clementine Strickland', 'debosygo@mailinator.com', 'Magni excepturi cill', 'Nemo tenetur deserun', '+1 (882) 724-2354', 'Nihil tenetur nostru', 'Quod incidunt non v', 'https://www.gyzevahyryhacyf.co.uk', 'Inventore quis fugit', '1599112133ns.pdf', 1, '2020-09-03 11:33:53'),
(4, NULL, 'Zephr Bullock', 'qupivyg@mailinator.com', 'Recusandae Nam quia', 'Ad sint quos qui om', '+1 (905) 598-4488', 'Modi ea cupidatat di', 'Nihil qui veniam im', 'https://www.buwe.tv', 'Voluptas sint rerum ', '16003423982.jpeg', 1, '2020-09-17 21:33:17'),
(5, NULL, 'Troy Cantu', 'vanyn@mailinator.com', 'Nam voluptatem enim', 'Et quia similique pr', '+1 (672) 626-8779', 'Corporis tempore au', 'Omnis est excepteur ', 'https://www.vena.biz', 'Aute voluptas dicta ', '1600343016t.PDF', 1, '2020-09-17 21:33:27'),
(6, NULL, 'Rana Crawford', 'zabyrul@mailinator.com', 'Illo doloremque ut a', 'Mollitia dolorem ess', '+1 (646) 631-3556', 'Dolor iusto cumque d', 'Est explicabo Est ', 'https://www.wavitajevipaw.ca', 'Iste explicabo Labo', '', 1, '2020-09-17 21:54:08'),
(7, NULL, 'Bertha Chang', 'vejo@mailinator.com', 'Sunt ducimus dolor ', 'Ut fugiat alias min', '+1 (724) 676-3545', 'Hic dolor iure sint ', 'Voluptas veniam id ', 'https://www.molykino.in', 'Amet voluptas aliqu', '1600343746my.pdf', 1, '2020-09-17 21:55:46'),
(8, NULL, 'Ginger Walsh', 'kipahac@mailinator.com', 'Officia Nam inventor', 'Sequi officia earum ', '+1 (403) 957-9774', 'Blanditiis ab quia i', 'Aut architecto dolor', 'https://www.kasy.in', 'Dolore ab ullamco re', '1605163875my.pdf', 1, '2020-11-12 12:36:15'),
(9, NULL, 'Bipin', 'joshibipin2052@gmail.com', '25', NULL, '9845146246', '25000', '2', 'https://smartbus.gr8uix.com/site/careers', 'qwe', '1608442445er.jpg', 1, '2020-12-20 11:19:05'),
(10, NULL, 'Gloria Oliver', 'mehuluki@mailinator.com', 'Eos voluptas sapient', NULL, '+1 (372) 471-3706', 'Sit magni omnis sin', 'In explicabo Nihil ', 'https://www.myxuvaje.ca', 'Sit officia dolor si', '16134572561).pdf', 1, '2021-02-16 12:19:16'),
(11, 4, 'kone@mailinator.com', 'hovuvox@mailinator.com', NULL, 'Ipsum et doloremque', NULL, NULL, 'Dolores molestias re', NULL, NULL, NULL, 0, '2021-04-28 17:19:05'),
(12, 4, 'kone@mailinator.com', 'hovuvox@mailinator.com', NULL, 'Ipsum et doloremque', NULL, NULL, 'Dolores molestias re', NULL, NULL, NULL, 0, '2021-04-28 17:19:30'),
(13, 4, 'kone@mailinator.com', 'hovuvox@mailinator.com', NULL, 'Ipsum et doloremque', NULL, NULL, 'Dolores molestias re', NULL, NULL, NULL, 0, '2021-04-28 17:21:46'),
(14, 4, 'kone@mailinator.com', 'hovuvox@mailinator.com', NULL, 'Ipsum et doloremque', NULL, NULL, 'Dolores molestias re', NULL, NULL, NULL, 0, '2021-04-28 17:23:44'),
(15, 4, 'xulacob@mailinator.com', 'vibozymer@mailinator.com', NULL, 'Est tenetur exceptu', NULL, NULL, 'Lorem temporibus ips', NULL, NULL, '1619610372x.png', 0, '2021-04-28 17:31:12'),
(16, 4, 'vazo@mailinator.com', 'luqa@mailinator.com', NULL, 'Et voluptatem facili', NULL, NULL, 'Lorem sed minima aut', NULL, NULL, NULL, 0, '2021-04-28 17:31:33'),
(17, 4, 'vazo@mailinator.com', 'luqa@mailinator.com', NULL, 'Et voluptatem facili', NULL, NULL, 'Lorem sed minima aut', NULL, NULL, '1619610550n.pdf', 0, '2021-04-28 17:34:10'),
(18, 4, 'tinaf@mailinator.com', 'karurizehe@mailinator.com', NULL, 'Excepturi id fugit ', NULL, NULL, 'Ut dolor possimus d', NULL, NULL, NULL, 0, '2021-05-02 17:42:27'),
(19, 4, 'tinaf@mailinator.com', 'karurizehe@mailinator.com', NULL, 'Excepturi id fugit ', NULL, NULL, 'Ut dolor possimus d', NULL, NULL, '1619956688h.pdf', 0, '2021-05-02 17:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `content_lang`, `child_id`, `name`, `image`, `location`, `is_featured`) VALUES
(1, 'en', 2, 'Kathmandu', '1624794054.jpg', '', 1),
(2, 'nep', 1, 'काठमाण्डु', '1624794054.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113329.5507690452!2d84.96805470862833!3d27.421013050014103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb497ced46c917%3A0xafb8902c7a4532ab!2sHetauda!5e0!3m2!1sen!2snp!4v1618290958621!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1),
(3, 'en', 4, 'Bhaktapur', '1624794073.jpg', '', 1),
(4, 'nep', 3, 'भक्तपुर', '1624794073.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113329.5507690452!2d84.96805470862833!3d27.421013050014103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb497ced46c917%3A0xafb8902c7a4532ab!2sHetauda!5e0!3m2!1sen!2snp!4v1618290958621!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1),
(5, 'nep', 6, 'ललितपुर', '1624794082.jpg', '', 1),
(6, 'en', 5, 'Lalitpur', '1624794082.jpg', '', 1),
(7, 'nep', 8, 'चितवन', '1624794095.jpg', '', 1),
(8, 'en', 7, 'Chitwan', '1624794095.jpg', '', 1),
(9, 'nep', 10, 'हेटौडा', '1624794108.jpg', '', 0),
(10, 'en', 9, 'Hetauda', '1624794108.jpg', '', 1),
(11, 'nep', 12, NULL, '1624794148.jpg', '', 0),
(12, 'en', 11, 'Bara', '1624794148.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `category` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `content_lang`, `child_id`, `title`, `category`, `content`, `is_active`, `is_featured`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'en', 2, 'How to get refund?', 2, '4sedrftgyhuijok', 1, 0, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(2, 'nep', NULL, 'How do i book a ticket?', 0, 'Non neque explicabo', 1, 0, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(3, 'en', 4, 'What are my rights?', 1, 'Non neque explicabo', 1, 0, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(4, 'nep', NULL, 'Untill when can i cancel the ticket?', 0, 'Non neque explicabo', 1, 1, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(5, 'en', 6, 'How clean are the bus?', 0, 'Non neque explicabo', 1, 1, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(6, 'nep', NULL, 'Is it safe to use smartbus?', 0, 'Non neque explicabo', 1, 1, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(7, 'en', 8, 'How to become a vendor?', 0, 'Non neque explicabo', 1, 1, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(8, 'nep', NULL, 'How to become an agent?', 0, 'Non neque explicabo', 1, 1, '2020-08-06 21:58:38', 1, '2020-08-06 21:58:38', 1),
(9, 'nep', NULL, 'How can I sell my home?', 1, 'TO sell your house just click sell.', 1, 1, '2021-04-13 06:57:53', NULL, '2021-04-13 06:57:53', NULL),
(10, 'en', 9, 'How can I sell my home?', 2, 'TO sell your house just click sell.', 1, 1, '2021-04-13 06:57:54', NULL, '2021-04-13 06:57:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `is_status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(200) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `content_lang`, `property_id`, `is_status`, `type`, `created_by`, `created_on`) VALUES
(129, 'nep', 148, 0, 'favourites', 46, '2021-06-27 17:05:29'),
(130, 'en', 149, 0, 'favourites', 46, '2021-06-27 17:05:29'),
(131, 'nep', 148, 0, 'compare', 46, '2021-06-27 17:05:33'),
(132, 'en', 149, 0, 'compare', 46, '2021-06-27 17:05:33'),
(133, 'nep', 148, 1, 'favourites', 46, '2021-06-27 17:05:45'),
(134, 'en', 149, 1, 'favourites', 46, '2021-06-27 17:05:45'),
(135, 'nep', 148, 1, 'compare', 46, '2021-06-27 17:05:46'),
(136, 'en', 149, 1, 'compare', 46, '2021-06-27 17:05:46'),
(137, 'en', 153, 0, 'compare', 46, '2021-06-27 17:55:31'),
(138, 'nep', 152, 0, 'compare', 46, '2021-06-27 17:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `from_user_id` bigint(20) DEFAULT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `subject` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `message` longtext COLLATE utf8_swedish_ci NOT NULL,
  `is_new` tinyint(4) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `user_id`, `from_user_id`, `property_id`, `subject`, `email`, `phone`, `message`, `is_new`, `created_on`) VALUES
(10, 'Nasim Cunningham', 1, 1, 137, NULL, 'bavug@mailinator.com', '+1 (158) 639-9965', 'Iusto esse molestia', 0, '2021-05-28 10:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `subtitle` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `post_content` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8_swedish_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `content_lang`, `child_id`, `category_id`, `slug`, `title`, `subtitle`, `post_content`, `is_active`, `views`, `image`, `created_by`, `created_on`, `updated_on`, `updated_by`) VALUES
(1, 'en', 2, 1, 'what-is-lorem-ipsum?', '1914 translation by H. Rackham', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '16178641651.jpg', 1, '2020-08-10 16:38:51', '2020-08-10 12:23:59', 1),
(2, 'nep', 1, 2, 'dolore-veritatis-vol', 'Why do we use it?', 'Non dignissimos reru', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 1, '16008533451.jpg', 1, '2020-08-10 16:42:22', NULL, 1),
(3, 'en', 4, 1, 'non-quis-odio-labore', 'Where does it come from?', 'Consequat Earum nec', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 1, 1, '16196347484.jpg', 1, '2020-08-10 16:43:02', '2020-08-10 12:33:14', 1),
(4, 'nep', 3, 2, 'sit-atque-voluptatem', 'Where can I get some?', 'Totam adipisicing ex', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 1, '16196347484.jpg', 1, '2020-08-10 16:43:30', '2020-08-10 12:36:14', 1),
(21, 'nep', 22, 1, NULL, NULL, NULL, NULL, 0, 2, NULL, 1, '2021-03-29 16:27:34', NULL, NULL),
(22, 'en', 21, 1, NULL, 'News Explore', 'News', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 2, '16170148330.jpg', 1, '2021-03-29 16:27:34', NULL, NULL),
(23, 'nep', 24, 1, NULL, NULL, NULL, NULL, 0, 1, '16178643657.jpg', 1, '2021-03-29 16:35:59', NULL, NULL),
(24, 'en', 23, 1, NULL, 'Explore News', 'News', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 1, '16178643657.jpg', 1, '2021-03-29 16:35:59', NULL, NULL),
(25, 'nep', 26, 4, NULL, NULL, NULL, NULL, 0, 2, '16178643657.jpg', 1, '2021-03-29 16:35:59', NULL, NULL),
(26, 'en', 25, 4, NULL, 'Travel Blog News', 'News', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ', 1, 1, '16178643657.jpg', 1, '2021-03-29 16:35:59', NULL, NULL),
(35, 'nep', 36, 5, NULL, 'Travel Blog', 'Consequat Earum nec', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 0, '16178643657.jpg', 1, '2021-03-17 16:35:59', NULL, NULL),
(36, 'en', 35, 4, NULL, 'Travel Blog News', 'News', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ', 1, 1, '16178643657.jpg', 1, '2021-03-29 16:35:59', NULL, NULL),
(41, 'nep', 42, 2, NULL, 'Travel Blog', 'Consequat Earum nec', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 0, '16178643657.jpg', 1, '2021-03-24 16:35:59', NULL, NULL),
(42, 'en', 41, 1, NULL, 'Travel Blog News', 'News', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ', 1, 0, '16178641651.jpg', 1, '2021-03-29 16:35:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `remark` longtext COLLATE utf8_swedish_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `content_lang`, `child_id`, `name`, `remark`, `created_on`, `created_by`, `updated_by`, `updated_on`) VALUES
(1, 'en', 2, 'Health', 'Health2', '2020-08-10 06:38:27', 1, 1, NULL),
(2, 'nep', 1, 'स्वास्थ्य', 'Science2', '2020-08-22 06:35:07', 1, 1, NULL),
(4, 'en', 5, 'Science', 'Sit deserunt non eum2', '2021-03-29 11:18:12', NULL, NULL, NULL),
(5, 'nep', 4, 'विज्ञान', 'Sit deserunt non eum2', '2021-03-29 11:18:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_comments`
--

CREATE TABLE `news_comments` (
  `id` bigint(20) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `verification_id` bigint(20) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_swedish_ci NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `message` longtext DEFAULT NULL,
  `redirect_link` bigint(200) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `viewed_on` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `message`, `redirect_link`, `user_id`, `created_on`, `viewed_on`, `type`) VALUES
(34, 'New Testimonials created', 10, 1, '2021-04-18 15:02:16', '2021-04-20 08:27:33', 'Testimonials'),
(35, 'New blog created', 13, 1, '2021-04-20 12:12:20', '2021-04-20 08:27:36', 'Blog'),
(36, 'New User created', 46, 1, '2021-04-24 14:35:33', NULL, 'User'),
(37, 'New City created', 6, 1, '2021-05-08 13:27:06', NULL, 'Cities'),
(38, 'New City created', 8, 1, '2021-05-08 13:28:18', NULL, 'Cities'),
(39, 'New City created', 10, 1, '2021-05-08 16:37:27', NULL, 'Cities'),
(40, 'New City created', 12, 1, '2021-05-30 13:42:42', NULL, 'Cities');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(11) NOT NULL,
  `content_lang` varchar(250) NOT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) NOT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `position` text DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `roles` varchar(250) DEFAULT NULL,
  `package_services` varchar(500) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `content_lang`, `child_id`, `title`, `slug`, `subtitle`, `description`, `position`, `position_id`, `order`, `price`, `is_free`, `is_active`, `roles`, `package_services`, `created_by`, `created_on`, `updated_on`) VALUES
(1, 'en', 2, 'Basicc', 'basic_en', 'Basic', 'Basic', NULL, 0, 3, '', 1, 1, '2,4', '{\"1\":{\"editable_id\":\"1\",\"type\":\"packageServices\",\"id\":\"1\",\"title\":\"search ranking\",\"value\":\"top\"},\"3\":{\"editable_id\":\"3\",\"type\":\"packageServices\",\"id\":\"3\",\"title\":\"exposure\",\"value\":\"twice as others\"}}', 0, '2021-06-09 10:49:43', '2021-06-09 10:49:43'),
(2, 'nep', 1, 'Basic in nepali', 'basic_nep', 'Basic', 'Basic', NULL, 0, 3, NULL, 1, 1, '2,4', NULL, 0, '2021-06-09 10:49:43', '2021-06-09 10:49:43'),
(30, 'en', 31, 'Standard', 'standard_en', '', 'छविहरूको कुल संख्या जुन अनुमति दिइनेछ', NULL, 0, 4, '400000', 0, 1, '2', NULL, 1, '2021-06-10 16:37:07', '2021-06-10 16:37:07'),
(31, 'nep', 30, 'Standard', 'standard_nep', NULL, NULL, NULL, 0, 4, '400000', 0, 1, '2', NULL, 1, '2021-06-10 16:37:07', '2021-06-10 16:37:07'),
(32, 'en', 33, 'Premium', 'premium_en', 'Labore tenetur incid', 'premium deal', NULL, 0, 5, '10000', 0, 1, '2', '{\"1\":{\"editable_id\":\"1\",\"type\":\"packageServices\",\"id\":\"1\",\"title\":\"search ranking\",\"value\":\"top\"},\"3\":{\"editable_id\":\"3\",\"type\":\"packageServices\",\"id\":\"3\",\"title\":\"exposure\",\"value\":\"twice as others\"}}', 1, '2021-06-11 02:35:12', '2021-06-11 02:35:12'),
(33, 'nep', 32, 'Premium', 'premium_nep', NULL, NULL, NULL, 0, 5, '10000', 0, 1, '2', NULL, 1, '2021-06-11 02:35:12', '2021-06-11 02:35:12'),
(34, 'en', 35, 'StandardCustomer Package', 'standardcustomer_package_en', NULL, NULL, NULL, 0, 6, '500000', 0, 1, '4', '{\"1\":{\"editable_id\":\"1\",\"type\":\"packageServices\",\"id\":\"1\",\"title\":\"search ranking\",\"value\":\"\"},\"3\":{\"editable_id\":\"3\",\"type\":\"packageServices\",\"id\":\"3\",\"title\":\"exposure\",\"value\":\"\"}}', 1, '2021-06-11 06:40:17', '2021-06-11 06:40:17'),
(35, 'nep', 34, 'StandardCustomer Package', 'standardcustomer_package_nep', NULL, NULL, NULL, 0, 6, '500000', 0, 1, '4', NULL, 1, '2021-06-11 06:40:17', '2021-06-11 06:40:17'),
(36, 'en', 37, 'Voluptatem vel in s', 'voluptatem_vel_in_s_en', NULL, NULL, NULL, 0, 7, '', 0, 1, '4', NULL, 1, '2021-06-11 06:51:07', '2021-06-11 06:51:07'),
(37, 'nep', 36, 'Voluptatem vel in s', 'voluptatem_vel_in_s_nep', NULL, NULL, NULL, 0, 7, '', 0, 1, '4', NULL, 1, '2021-06-11 06:51:07', '2021-06-11 06:51:07'),
(40, 'en', 41, 'Diamond', 'diamond_en', 'Et Vero Voluptate Re', 'Asdvasdv', NULL, 0, 2, '5000', 0, 1, '2', '{\"1\":{\"editable_id\":\"1\",\"type\":\"packageServices\",\"id\":\"1\",\"title\":\"search ranking\",\"value\":\"diamond level\"},\"3\":{\"editable_id\":\"3\",\"type\":\"packageServices\",\"id\":\"3\",\"title\":\"exposure\",\"value\":\"\"}}', 1, '2021-06-18 09:35:18', '2021-06-18 09:35:18'),
(41, 'nep', 40, 'Diamond', 'diamond_nep', NULL, NULL, NULL, 0, 2, '5000', 0, 1, '2', NULL, 1, '2021-06-18 09:35:18', '2021-06-18 09:35:18'),
(42, 'en', 43, 'Whatever', 'whatever_en', 'Casdc', 'Casdc', 'before', 1, 1, '12000', 0, 1, '2', NULL, 1, '2021-06-22 07:06:07', '2021-06-22 07:06:07'),
(43, 'nep', 42, 'whatever', 'whatever_nep', NULL, NULL, 'before', 1, 1, '12000', 0, 1, '2', NULL, 1, '2021-06-22 07:06:07', '2021-06-22 07:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `package_attributes`
--

CREATE TABLE `package_attributes` (
  `id` bigint(20) NOT NULL,
  `package_id` bigint(20) DEFAULT NULL,
  `type` varchar(250) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `property_limiations_id` bigint(20) DEFAULT NULL,
  `ad_types_id` bigint(20) DEFAULT NULL,
  `service_requests_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `runtime` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_attributes`
--

INSERT INTO `package_attributes` (`id`, `package_id`, `type`, `slug`, `title`, `property_limiations_id`, `ad_types_id`, `service_requests_id`, `quantity`, `runtime`, `created_by`, `created_on`) VALUES
(81, 1, 'propertyLimitations', 'max_images_en', 'max images', 2, NULL, NULL, 1, NULL, 1, '2021-06-10 14:24:19'),
(82, 1, 'addTypes', 'add_property_en', 'total no of properties', NULL, 1, NULL, 1, 50, 1, '2021-06-10 14:26:00'),
(83, 1, 'addTypes', 'hot_en', 'hot properties', NULL, 3, NULL, 5, 50, 1, '2021-06-10 14:53:08'),
(84, 1, 'addTypes', 'urgent_en', 'urgent properties', NULL, 7, NULL, 5, 50, 1, '2021-06-10 15:04:02'),
(85, 30, 'propertyLimitations', 'max_images_en', 'max images', 2, NULL, NULL, 1, NULL, 1, '2021-06-10 14:24:19'),
(86, 30, 'addTypes', 'add_property_en', 'total no of properties', NULL, 1, NULL, 1, 50, 1, '2021-06-10 14:26:00'),
(87, 30, 'addTypes', 'hot_en', 'hot properties', NULL, 3, NULL, 5, 20, 1, '2021-06-10 14:53:08'),
(88, 30, 'addTypes', 'urgent_en', 'urgent properties', NULL, 7, NULL, 5, 20, 1, '2021-06-10 15:04:02'),
(89, 32, 'propertyLimitations', 'max_images_en', 'max images', 2, NULL, NULL, 1, NULL, 1, '2021-06-10 14:24:19'),
(90, 32, 'addTypes', 'add_property_en', 'total no of properties', NULL, 1, NULL, 1, 50, 1, '2021-06-10 14:26:00'),
(91, 32, 'addTypes', 'hot_en', 'hot', NULL, 3, NULL, 5, 30, 1, '2021-06-10 14:53:08'),
(92, 32, 'addTypes', 'urgent_en', 'urgent', NULL, 7, NULL, 5, 30, 1, '2021-06-10 15:04:02'),
(93, 32, 'propertyLimitations', 'max_360_images_en', 'max 360 images', 4, NULL, NULL, 2, NULL, 1, '2021-06-11 08:20:25'),
(94, 32, 'propertyLimitations', 'max_youtube_videos_en', 'max youtube videos', 6, NULL, NULL, 2, NULL, 1, '2021-06-11 08:20:25'),
(95, 32, 'addTypes', 'super_hot_en', 'super hot', NULL, 5, NULL, 1, 30, 1, '2021-06-11 08:21:05'),
(96, 32, 'addTypes', 'featured_en', 'featured', NULL, 9, NULL, 1, 30, 1, '2021-06-11 08:21:05'),
(97, 32, 'serviceRequests', 'property_verification_en', 'property_verification', NULL, NULL, 1, 2, NULL, 1, '2021-06-11 08:21:05'),
(98, 32, 'serviceRequests', 'property_photoshoot_en', 'property_photoshoot', NULL, NULL, 3, 2, NULL, 1, '2021-06-11 08:21:05'),
(99, 34, 'propertyLimitations', 'max_images_en', 'max images', 2, NULL, NULL, 1, NULL, 1, '2021-06-10 14:24:19'),
(100, 34, 'addTypes', 'add_property_en', 'total no of properties', NULL, 1, NULL, 1, 50, 1, '2021-06-10 14:26:00'),
(101, 34, 'addTypes', 'hot_en', 'hot', NULL, 3, NULL, 5, 30, 1, '2021-06-10 14:53:08'),
(102, 34, 'addTypes', 'urgent_en', 'urgent', NULL, 7, NULL, 5, 30, 1, '2021-06-10 15:04:02'),
(103, 34, 'propertyLimitations', 'max_360_images_en', 'max 360 images', 4, NULL, NULL, 2, NULL, 1, '2021-06-11 08:20:25'),
(104, 34, 'propertyLimitations', 'max_youtube_videos_en', 'max youtube videos', 6, NULL, NULL, 2, NULL, 1, '2021-06-11 08:20:25'),
(105, 34, 'addTypes', 'super_hot_en', 'super hot', NULL, 5, NULL, 1, 30, 1, '2021-06-11 08:21:05'),
(106, 34, 'addTypes', 'featured_en', 'featured', NULL, 9, NULL, 1, 30, 1, '2021-06-11 08:21:05'),
(107, 34, 'serviceRequests', 'property_verification_en', 'property_verification', NULL, NULL, 1, 2, NULL, 1, '2021-06-11 08:21:05'),
(108, 34, 'serviceRequests', 'property_photoshoot_en', 'property_photoshoot', NULL, NULL, 3, 2, NULL, 1, '2021-06-11 08:21:05'),
(162, 40, 'propertyLimitations', 'max_images_en', 'max images', 2, NULL, NULL, 11, NULL, 1, '2021-06-22 12:31:15'),
(163, 40, 'propertyLimitations', 'max_360_images_en', 'max 360 images', 4, NULL, NULL, 10, NULL, 1, '2021-06-22 12:31:15'),
(164, 40, 'addTypes', 'add_property_en', 'total no of properties', NULL, 1, NULL, 50, 10, 1, '2021-06-22 12:31:15'),
(165, 40, 'addTypes', 'super_hot_en', 'super hot', NULL, 5, NULL, 30, 10, 1, '2021-06-22 12:31:15'),
(166, 40, 'addTypes', 'urgent_en', 'urgent', NULL, 7, NULL, 30, 10, 1, '2021-06-22 12:31:15'),
(167, 40, 'addTypes', 'featured_en', 'featured', NULL, 9, NULL, 30, 10, 1, '2021-06-22 12:31:15'),
(168, 40, 'serviceRequests', 'property_verification_en', 'property_verification', NULL, NULL, 1, 20, NULL, 1, '2021-06-22 12:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `package_services`
--

CREATE TABLE `package_services` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(250) NOT NULL,
  `child_id` varchar(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `icon` varchar(250) NOT NULL,
  `is_visible` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_services`
--

INSERT INTO `package_services` (`id`, `content_lang`, `child_id`, `title`, `description`, `icon`, `is_visible`, `created_at`) VALUES
(1, 'en', '2', 'search ranking', 'where the property appears', '', 1, '2021-06-09 14:20:40'),
(2, 'nep', '1', 'search ranking', 'where the property appears', '', 1, '2021-06-09 14:20:40'),
(3, 'en', '4', 'exposure', 'how many places the property appears', '', 1, '2021-06-09 14:20:40'),
(4, 'nep', '3', 'exposure', 'how many places the property appears', '', 1, '2021-06-09 14:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `title`, `is_active`, `created_on`) VALUES
(1, 'partner-hover-1.png', 'Test 1', 1, '2021-05-09 23:22:18'),
(2, 'partner-hover-2.png', 'Test 2', 1, '2021-05-09 23:24:19'),
(3, 'partner-hover-3.png', 'Test 3', 1, '2021-05-09 23:27:18'),
(4, 'partner-hover-5.png', 'Test 4', 1, '2021-05-09 23:27:24'),
(5, 'partner-hover-5.png', 'Test 5', 1, '2021-05-09 23:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `property_directory`
--

CREATE TABLE `property_directory` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `user_package_breakdown_id` bigint(20) DEFAULT NULL,
  `verification_id` bigint(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pan_images` longtext DEFAULT NULL,
  `youtube_videos` longtext DEFAULT NULL,
  `property_code` varchar(250) DEFAULT NULL,
  `property_type` bigint(20) DEFAULT NULL,
  `property_cat` varchar(200) DEFAULT NULL,
  `property_size` int(11) DEFAULT NULL,
  `bedrooms` int(11) DEFAULT 0,
  `hall` int(11) DEFAULT 0,
  `image` varchar(200) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT 0,
  `kitchen` int(11) DEFAULT 0,
  `price` bigint(20) DEFAULT NULL,
  `floors` int(11) NOT NULL DEFAULT 0,
  `keywords` varchar(250) DEFAULT NULL,
  `map_location` longtext DEFAULT NULL,
  `amenities` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `add_image` longtext DEFAULT NULL,
  `city` bigint(20) DEFAULT NULL,
  `property_attachment` longtext DEFAULT NULL,
  `is_status` int(11) NOT NULL DEFAULT 0,
  `property_face` varchar(200) DEFAULT NULL,
  `mohda` varchar(200) DEFAULT NULL,
  `road_type` varchar(200) DEFAULT NULL,
  `build_year` date DEFAULT NULL,
  `views` int(20) NOT NULL DEFAULT 0,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  `show_number` int(11) NOT NULL DEFAULT 1,
  `viewed_number` int(11) NOT NULL DEFAULT 0,
  `secondary_expiry_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_expired` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` bigint(20) NOT NULL,
  `primary_creator` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_directory`
--

INSERT INTO `property_directory` (`id`, `content_lang`, `child_id`, `user_package_breakdown_id`, `verification_id`, `title`, `address`, `pan_images`, `youtube_videos`, `property_code`, `property_type`, `property_cat`, `property_size`, `bedrooms`, `hall`, `image`, `bathrooms`, `kitchen`, `price`, `floors`, `keywords`, `map_location`, `amenities`, `description`, `add_image`, `city`, `property_attachment`, `is_status`, `property_face`, `mohda`, `road_type`, `build_year`, `views`, `is_delete`, `show_number`, `viewed_number`, `secondary_expiry_date`, `expiry_date`, `is_expired`, `created_on`, `created_by`, `primary_creator`) VALUES
(1, 'nep', 2, 4, 1, NULL, 'Expedita dolor excep', '', '', '00011623938643', 35, 'rent', 426, 7, 9, '1623938643.jpg', 3, 3, 758, 0, '[\"fugiat\",\"atque\",\"c\"]', 'Provident suscipit ', '2', NULL, '[{\"filename\":\"1623938646ra.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623938646ed.jpg\",\"type\":\"image\\/jpeg\"}]', 8, NULL, 1, '6', '79', '0', '1987-04-11', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:49:05', 46, NULL),
(2, 'en', 1, 4, 2, 'Amet porro dolores ', 'Expedita dolor excep', NULL, '', '00011623938643', 36, 'rent', 426, 7, 9, '1623938643.jpg', 3, 3, 758, 7, '[\"fugiat\",\"atque\",\"c\"]', 'Provident suscipit ', '3', 'Voluptate dolor culp', '[{\"filename\":\"1623938646ra.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623938646ed.jpg\",\"type\":\"image\\/jpeg\"}]', 8, NULL, 1, '6', '79', '0', '1987-04-11', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:49:06', 46, NULL),
(3, 'nep', 4, 7, 3, NULL, 'Saepe iste excepteur', '', '', '00031623938890', 33, 'sale', 395, 10, 7, '1623938890.jpg', 10, 5, 130, 0, '[\"error\",\"nu\"]', 'Dolore praesentium i Dolore praesentium i', '5', NULL, '', 12, NULL, 1, '6', '14', '1', '2006-12-01', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:53:11', 46, NULL),
(4, 'en', 3, 7, 4, 'Ut molestiae amet c', 'Saepe iste excepteur', NULL, '', '00031623938890', 34, 'sale', 395, 10, 7, '1623938890.jpg', 10, 5, 130, 8, '[\"error\",\"nu\"]', 'Dolore praesentium i Dolore praesentium i', '4', 'Rerum magnam vitae d', NULL, 12, NULL, 1, '6', '14', '1', '2006-12-01', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:53:11', 46, NULL),
(5, 'nep', 6, 8, 5, NULL, 'Ut aliquid tenetur q', '', '', '00051623938995', 35, 'rent', 112, 6, 4, '1623938995.jpg', 2, 10, 405, 0, '[\"quaerat\",\"au\"]', 'Laborum Et voluptat', '2', NULL, '', 3, NULL, 1, '1', '98', '1', '1997-08-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:54:56', 46, NULL),
(6, 'en', 5, 8, 6, 'Excepteur eiusmod mi', 'Ut aliquid tenetur q', NULL, '', '00051623938995', 36, 'rent', 112, 6, 4, '1623938995.jpg', 2, 10, 405, 8, '[\"quaerat\",\"au\"]', 'Laborum Et voluptat', '3', 'Eveniet tempor aliq', NULL, 3, NULL, 1, '1', '98', '1', '1997-08-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:54:56', 46, NULL),
(7, 'nep', 8, 4, 7, NULL, 'Deserunt illum eius', '', '', '00071623939053', 35, 'sale', 757, 5, 5, '1623939054.jpg', 1, 6, 105, 0, '[\"dolore\"]', 'Sed harum culpa ex ', '2', NULL, '', 1, NULL, 1, '0', '48', '2', '1978-10-08', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:55:54', 46, NULL),
(8, 'en', 7, 4, 8, 'Voluptatibus cum est', 'Deserunt illum eius', NULL, '', '00071623939053', 36, 'sale', 757, 5, 5, '1623939054.jpg', 1, 6, 105, 7, '[\"dolore\"]', 'Sed harum culpa ex ', '3', 'Voluptate est volupt', NULL, 1, NULL, 1, '0', '48', '2', '1978-10-08', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 19:55:54', 46, NULL),
(9, 'nep', 10, 15, 9, NULL, 'Excepteur sint optio', '[{\"title\":\"bhaisepativilla\",\"filename\":\"1623939169on.jpg\"}]', '', '00091623939166', 35, 'rent', 166, 10, 1, '1623939166.jpg', 8, 1, 42, 0, '[\"magnam\"]', 'Aperiam alias molest', '5', NULL, '[{\"filename\":\"1623939168ng.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"16239391683.jfif\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623939169se.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623939169_n.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623939169se.jpg\",\"type\":\"image\\/jpeg\"}]', 6, NULL, 1, '3', '93', '2', '2019-06-09', 0, 0, 0, 0, '2021-06-21', '2021-06-26', 0, '2021-06-17 19:57:48', 46, NULL),
(10, 'en', 9, 15, 10, 'Cumque pariatur Vol', 'Excepteur sint optio', '[{\"title\":\"bhaisepativilla\",\"filename\":\"1623939169on.jpg\"}]', '', '00091623939166', 36, 'rent', 166, 10, 1, '1623939166.jpg', 8, 1, 42, 4, '[\"magnam\"]', 'Aperiam alias molest', '4', 'Iusto tempora iste q', '[{\"filename\":\"1623939168ng.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"16239391683.jfif\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623939169se.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623939169_n.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623939169se.jpg\",\"type\":\"image\\/jpeg\"}]', 6, NULL, 1, '3', '93', '2', '2019-06-09', 0, 0, 0, 0, '2021-06-21', '2021-06-26', 0, '2021-06-17 19:57:48', 46, NULL),
(11, 'nep', 12, 16, 11, NULL, 'Et quasi fugit eius', '[{\"title\":\"building\",\"filename\":\"1623939260on.jpg\"}]', '', '000111623939259', 49, 'sale', 819, 1, 3, '1623939259.jpg', 10, 5, 125, 0, '[\"excepturi\"]', 'Harum dignissimos ea', '2', NULL, '', 8, NULL, 1, '4', '95', '3', '1988-07-09', 1, 0, 0, 0, '2021-06-21', '2021-06-26', 0, '2021-06-17 19:59:20', 46, NULL),
(12, 'en', 11, 16, 12, 'Mollit inventore con', 'Et quasi fugit eius', '[{\"title\":\"building\",\"filename\":\"1623939260on.jpg\"}]', '', '000111623939259', 50, 'sale', 819, 1, 3, '1623939259.jpg', 10, 5, 125, 4, '[\"excepturi\"]', 'Harum dignissimos ea', '3', 'Quidem fugiat delec', NULL, 8, NULL, 1, '4', '95', '3', '1988-07-09', 1, 0, 0, 0, '2021-06-21', '2021-06-26', 0, '2021-06-17 19:59:20', 46, NULL),
(13, 'nep', 14, 4, 13, NULL, 'Ex quis illo adipisc', '', '', '000131623939397', 35, 'rent', 279, 6, 1, '1623939397.jpg', 8, 4, 405, 0, '[\"culpa\"]', 'Et eius quae quia si', '2', NULL, '', 1, NULL, 1, '1', '14', '2', '1976-12-07', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:01:38', 46, NULL),
(14, 'en', 13, 4, 14, 'Maxime similique vol', 'Ex quis illo adipisc', NULL, '', '000131623939397', 36, 'rent', 279, 6, 1, '1623939397.jpg', 8, 4, 405, 8, '[\"culpa\"]', 'Et eius quae quia si', '3', 'Reiciendis quia offi', NULL, 1, NULL, 1, '1', '14', '2', '1976-12-07', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:01:38', 46, NULL),
(15, 'nep', 16, 8, 15, NULL, 'Aute mollit ea ea ev', '', '', '000151623939460', 51, 'sale', 122, 3, 9, '1623939460.jpg', 10, 7, 490, 0, '[\"dolor\"]', 'Maxime itaque enim q', '5', NULL, '', 12, NULL, 1, '4', '68', '2', '2021-07-15', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:02:41', 46, NULL),
(16, 'en', 15, 8, 16, 'Id exercitationem la', 'Aute mollit ea ea ev', NULL, '', '000151623939460', 52, 'sale', 122, 3, 9, '1623939460.jpg', 10, 7, 490, 2, '[\"dolor\"]', 'Maxime itaque enim q', '4', 'Libero pariatur Obc', NULL, 12, NULL, 1, '4', '68', '2', '2021-07-15', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:02:41', 46, NULL),
(17, 'nep', 18, 12, 17, NULL, 'Molestiae et irure d', '[{\"title\":\"house\",\"filename\":\"1623939543is.jpg\"}]', '', '000171623939541', 35, 'rent', 230, 7, 4, '1623939541.jpg', 2, 4, 826, 0, '[\"eum\",\"reiciendis\"]', 'Atque voluptas vero ', '5', NULL, '', 8, NULL, 1, '2', '41', '3', '1972-09-11', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:04:02', 46, NULL),
(18, 'en', 17, 12, 18, 'Blanditiis sint labo', 'Molestiae et irure d', '[{\"title\":\"house\",\"filename\":\"1623939543is.jpg\"}]', '', '000171623939541', 36, 'rent', 230, 7, 4, '1623939541.jpg', 2, 4, 826, 3, '[\"eum\",\"reiciendis\"]', 'Atque voluptas vero ', '4', 'Inventore aut est en', NULL, 8, NULL, 1, '2', '41', '3', '1972-09-11', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:04:02', 46, NULL),
(19, 'nep', 20, 11, 19, NULL, 'Et sed quia voluptat', '[{\"title\":\"bhaisepativilla\",\"filename\":\"1623939651es.jpg\"}]', '', '000191623939650', 35, 'sale', 748, 2, 2, '1623939651.jpg', 8, 5, 915, 0, '[\"cupiditate\",\"aut\"]', 'Officia cupidatat co', '2', NULL, '', 10, NULL, 1, '3', '6', '3', '1999-06-12', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:05:51', 46, NULL),
(20, 'en', 19, 11, 20, 'Iusto maiores aut as', 'Et sed quia voluptat', '[{\"title\":\"bhaisepativilla\",\"filename\":\"1623939651es.jpg\"}]', '', '000191623939650', 36, 'sale', 748, 2, 2, '1623939651.jpg', 8, 5, 915, 10, '[\"cupiditate\",\"aut\"]', 'Officia cupidatat co', '3', 'Exercitationem omnis', NULL, 10, NULL, 1, '3', '6', '3', '1999-06-12', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:05:51', 46, NULL),
(21, 'nep', 22, 3, 21, NULL, 'In et iusto ea velit', '', '', '000211623939731', 35, 'rent', 256, 9, 6, '1623939731.jpg', 2, 9, 593, 0, '[\"quam\",\"sint\"]', 'Quae voluptatem ea r', '2', NULL, '[{\"filename\":\"162393973300.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '1', '39', '0', '1972-12-05', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:07:13', 46, NULL),
(22, 'en', 21, 3, 22, 'Dolor excepteur sequ', 'In et iusto ea velit', NULL, '', '000211623939731', 36, 'rent', 256, 9, 6, '1623939731.jpg', 2, 9, 593, 2, '[\"quam\",\"sint\"]', 'Quae voluptatem ea r', '3', 'Et sunt esse alias ', '[{\"filename\":\"162393973300.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '1', '39', '0', '1972-12-05', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:07:13', 46, NULL),
(23, 'nep', 24, 11, 23, NULL, 'Dolores aut ut et eu', '', '', '000231623939804', 33, 'sale', 35, 2, 8, '', 6, 7, 843, 0, '[\"consequatur\"]', 'Sed omnis rerum sed ', '5', NULL, '[{\"filename\":\"1623939805ed.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '6', '13', '0', '2006-07-21', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:08:24', 46, NULL),
(24, 'en', 23, 11, 24, 'Et voluptates labore', 'Dolores aut ut et eu', NULL, '', '000231623939804', 34, 'sale', 35, 2, 8, NULL, 6, 7, 843, 3, '[\"consequatur\"]', 'Sed omnis rerum sed ', '4', 'Odit magni earum sed', '[{\"filename\":\"1623939805ed.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '6', '13', '0', '2006-07-21', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:08:24', 46, NULL),
(25, 'nep', 26, 4, 25, NULL, 'Magnam sed ratione s', '', '', '000251623939871', 35, 'rent', 506, 7, 6, '1623939871.jpg', 1, 1, 249, 0, '[\"non\"]', 'Sit minus qui eos d', '5', NULL, '', 3, NULL, 1, '7', '9', '3', '1988-03-20', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:09:32', 46, NULL),
(26, 'en', 25, 4, 26, 'Sit inventore earum ', 'Magnam sed ratione s', NULL, '', '000251623939871', 36, 'rent', 506, 7, 6, '1623939871.jpg', 1, 1, 249, 3, '[\"non\"]', 'Sit minus qui eos d', '4', 'Molestias omnis non ', NULL, 3, NULL, 1, '7', '9', '3', '1988-03-20', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:09:32', 46, NULL),
(27, 'nep', 28, 11, 27, NULL, 'Sed vel sint minus i', '', '', '000271623939975', 49, 'sale', 395, 1, 9, '1623939975.png', 7, 4, 539, 0, '[\"vitae\"]', 'Deserunt molestiae e', '2', NULL, '[{\"filename\":\"1623939977-1.jpg\",\"type\":\"image\\/jpeg\"}]', 6, NULL, 1, '2', '12', '0', '2005-09-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:11:16', 46, NULL),
(28, 'en', 27, 11, 28, 'Vel recusandae Sed ', 'Sed vel sint minus i', NULL, '', '000271623939975', 50, 'sale', 395, 1, 9, '1623939975.png', 7, 4, 539, 3, '[\"vitae\"]', 'Deserunt molestiae e', '3', 'Id eum qui commodi d', '[{\"filename\":\"1623939977-1.jpg\",\"type\":\"image\\/jpeg\"}]', 6, NULL, 1, '2', '12', '0', '2005-09-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:11:16', 46, NULL),
(29, 'nep', 30, 8, 29, NULL, 'Possimus corporis d', '', '', '000291623940042', 35, 'rent', 521, 10, 4, '1623940042.jpg', 2, 2, 969, 0, '[\"Ipsam\"]', 'Hic exercitationem o', '2', NULL, '', 6, NULL, 1, '1', '95', '2', '2015-08-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:12:23', 46, NULL),
(30, 'en', 29, 8, 30, 'Et recusandae Volup', 'Possimus corporis d', NULL, '', '000291623940042', 36, 'rent', 521, 10, 4, '1623940042.jpg', 2, 2, 969, 5, '[\"Ipsam\"]', 'Hic exercitationem o', '3', 'Ipsum ut ipsum et vo', NULL, 6, NULL, 1, '1', '95', '2', '2015-08-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:12:23', 46, NULL),
(31, 'nep', 32, 12, 31, NULL, 'Voluptatibus sint do', '', '', '000311623940131', 51, 'sale', 335, 7, 1, '1623940131.jpg', 9, 5, 447, 0, '[\"Nihil\",\"et\",\"ac\",\"Officia\",\"magnam\",\"quibu\"]', 'Quia qui nihil animi', '5', NULL, '', 8, NULL, 1, '7', '9', '1', '2014-03-12', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:13:52', 46, NULL),
(32, 'en', 31, 12, 32, 'Amet sunt nisi adip', 'Voluptatibus sint do', NULL, '', '000311623940131', 52, 'sale', 335, 7, 1, '1623940131.jpg', 9, 5, 447, 6, '[\"Nihil\",\"et\",\"ac\",\"Officia\",\"magnam\",\"quibu\"]', 'Quia qui nihil animi', '4', 'Libero aliquid quae ', NULL, 8, NULL, 1, '7', '9', '1', '2014-03-12', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:13:53', 46, NULL),
(33, 'nep', 34, 4, 33, NULL, 'Quidem cupiditate qu', '', '', '000331623940299', 35, 'rent', 774, 8, 5, '1623940300.jpg', 1, 2, 636, 0, '[\"sdfghj\",\"asdfgh\"]', 'Reprehenderit sint ', '5', NULL, '[{\"filename\":\"1623940301bd.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '7', '48', '1', '2017-09-13', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:16:40', 46, NULL),
(34, 'en', 33, 4, 34, 'Non enim nobis in au', 'Quidem cupiditate qu', NULL, '', '000331623940299', 36, 'rent', 774, 8, 5, '1623940300.jpg', 1, 2, 636, 2, '[\"sdfghj\",\"asdfgh\"]', 'Reprehenderit sint ', '4', 'Ut hic veniam enim ', '[{\"filename\":\"1623940301bd.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '7', '48', '1', '2017-09-13', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:16:41', 46, NULL),
(35, 'nep', 36, 4, 35, NULL, 'Molestiae qui a quo ', '', '', '000351623940412', 35, 'sale', 839, 3, 8, '1623940413.jpg', 9, 10, 507, 0, '[\"nesciunt\",\"magn\"]', 'Accusamus assumenda ', '2', NULL, '[{\"filename\":\"1623940413ra.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940413ed.jpg\",\"type\":\"image\\/jpeg\"}]', 12, NULL, 1, '2', '77', '1', '1991-02-04', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:18:33', 46, NULL),
(36, 'en', 35, 4, 36, 'Ratione placeat sit', 'Molestiae qui a quo ', NULL, '', '000351623940412', 36, 'sale', 839, 3, 8, '1623940413.jpg', 9, 10, 507, 6, '[\"nesciunt\",\"magn\"]', 'Accusamus assumenda ', '3', 'Deserunt voluptatum ', '[{\"filename\":\"1623940413ra.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940413ed.jpg\",\"type\":\"image\\/jpeg\"}]', 12, NULL, 1, '2', '77', '1', '1991-02-04', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:18:33', 46, NULL),
(37, 'nep', 38, 12, 37, NULL, 'Cumque proident tem', '[{\"title\":\"\",\"filename\":\"1623940504is.jpg\"}]', '', '000371623940502', 35, 'rent', 834, 8, 10, '1623940502.jpg', 5, 2, 901, 0, '[\"et\"]', 'At rerum ut velit ni', '2', NULL, '[{\"filename\":\"1623940503ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940503-1.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '7', '20', '1', '1992-12-11', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:20:03', 46, NULL),
(38, 'en', 37, 12, 38, 'Consequatur Et tota', 'Cumque proident tem', '[{\"title\":\"\",\"filename\":\"1623940504is.jpg\"}]', '', '000371623940502', 36, 'rent', 834, 8, 10, '1623940502.jpg', 5, 2, 901, 7, '[\"et\"]', 'At rerum ut velit ni', '3', 'Deserunt temporibus ', '[{\"filename\":\"1623940503ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940503-1.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '7', '20', '1', '1992-12-11', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:20:03', 46, NULL),
(39, 'nep', 40, 3, 39, NULL, 'Iure voluptatibus ei', '', '', '000391623940590', 33, 'sale', 568, 1, 7, '1623940590.jpg', 4, 4, 409, 0, '[\"assumenda\"]', 'Temporibus nisi sequ', '5', NULL, '[{\"filename\":\"1623940592-1.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940592ng.jpg\",\"type\":\"image\\/jpeg\"}]', 1, NULL, 1, '2', '41', '3', '2017-03-02', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:21:31', 46, NULL),
(40, 'en', 39, 3, 40, 'Veritatis et aut hic', 'Iure voluptatibus ei', NULL, '', '000391623940590', 34, 'sale', 568, 1, 7, '1623940590.jpg', 4, 4, 409, 1, '[\"assumenda\"]', 'Temporibus nisi sequ', '4', 'Lorem optio sed quo', '[{\"filename\":\"1623940592-1.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940592ng.jpg\",\"type\":\"image\\/jpeg\"}]', 1, NULL, 1, '2', '41', '3', '2017-03-02', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:21:31', 46, NULL),
(41, 'nep', 42, 3, 41, NULL, 'Quibusdam voluptatem', '', '', '000411623940668', 51, 'sale', 676, 10, 6, '1623940668.jpg', 3, 3, 164, 0, '[\"qui\",\"dolor\",\"i\"]', 'Voluptas id voluptas', '2', NULL, '[{\"filename\":\"1623940669-1.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940670ng.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '1', '5', '1', '1993-10-18', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:22:49', 46, NULL),
(42, 'en', 41, 3, 42, 'Quis reprehenderit a', 'Quibusdam voluptatem', NULL, '', '000411623940668', 52, 'sale', 676, 10, 6, '1623940668.jpg', 3, 3, 164, 1, '[\"qui\",\"dolor\",\"i\"]', 'Voluptas id voluptas', '3', 'Atque repellendus L', '[{\"filename\":\"1623940669-1.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623940670ng.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '1', '5', '1', '1993-10-18', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:22:49', 46, NULL),
(43, 'nep', 44, 4, 43, NULL, 'Et repellendus Veli', '', '', '000431623942240', 35, 'rent', 427, 10, 6, '1623942240.jpg', 8, 3, 813, 0, '[\"sunt\"]', 'Culpa incididunt fug', '5', NULL, '[{\"filename\":\"1623942243ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623942243-1.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '5', '82', '2', '1971-12-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:49:02', 46, NULL),
(44, 'en', 43, 4, 44, 'Ad architecto quo ma', 'Et repellendus Veli', NULL, '', '000431623942240', 36, 'rent', 427, 10, 6, '1623942240.jpg', 8, 3, 813, 6, '[\"sunt\"]', 'Culpa incididunt fug', '4', 'Ullam eaque tempor n', '[{\"filename\":\"1623942243ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623942243-1.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '5', '82', '2', '1971-12-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:49:03', 46, NULL),
(45, 'nep', 46, 12, 45, NULL, 'Officia pariatur Il', '', '', '000451623942390', 35, 'sale', 451, 6, 1, '1623942390.jpg', 3, 3, 979, 0, '[\"voluptatem\"]', 'Qui ut ducimus sed ', '5', NULL, '', 1, NULL, 1, '0', '15', '3', '2002-06-15', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:51:32', 46, NULL),
(46, 'en', 45, 12, 46, 'Harum duis suscipit ', 'Officia pariatur Il', NULL, '', '000451623942390', 36, 'sale', 451, 6, 1, '1623942390.jpg', 3, 3, 979, 5, '[\"voluptatem\"]', 'Qui ut ducimus sed ', '4', 'Cum dolorem nostrum ', NULL, 1, NULL, 1, '0', '15', '3', '2002-06-15', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:51:32', 46, NULL),
(47, 'nep', 48, 4, 47, NULL, 'Natus sequi qui volu', '', '', '000471623942461', 51, 'sale', 260, 4, 10, '1623942461.jpg', 6, 3, 983, 0, '[\"maxime\"]', 'Aperiam est enim ape', '5', NULL, '', 6, NULL, 1, '7', '16', '3', '1993-03-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:52:42', 46, NULL),
(48, 'en', 47, 4, 48, 'Qui commodi eveniet', 'Natus sequi qui volu', NULL, '', '000471623942461', 52, 'sale', 260, 4, 10, '1623942461.jpg', 6, 3, 983, 4, '[\"maxime\"]', 'Aperiam est enim ape', '4', 'Duis placeat ex in ', NULL, 6, NULL, 1, '7', '16', '3', '1993-03-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:52:42', 46, NULL),
(49, 'nep', 50, 8, 49, NULL, 'Reprehenderit atque', '', '', '000491623942524', 51, 'sale', 430, 10, 2, '1623942524.jpg', 5, 7, 481, 0, '[\"atque\",\"cupid\"]', 'Fugiat nisi exceptur', '2', NULL, '', 3, NULL, 1, '4', '5', '3', '2001-10-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:53:44', 46, NULL),
(50, 'en', 49, 8, 50, 'Quia id lorem aut a ', 'Reprehenderit atque', NULL, '', '000491623942524', 52, 'sale', 430, 10, 2, '1623942524.jpg', 5, 7, 481, 4, '[\"atque\",\"cupid\"]', 'Fugiat nisi exceptur', '3', 'In ratione aut offic', NULL, 3, NULL, 1, '4', '5', '3', '2001-10-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:53:44', 46, NULL),
(51, 'nep', 52, 8, 51, NULL, 'Consequuntur laborio', '', '', '000511623942663', 35, 'rent', 204, 9, 10, '1623942663.jpg', 9, 6, 67, 0, '[\"rerum\",\"similique\"]', 'Ad officiis libero l', '2', NULL, '', 12, NULL, 1, '2', '70', '1', '1997-04-12', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:56:05', 46, NULL),
(52, 'en', 51, 8, 52, 'Qui et pariatur Vol', 'Consequuntur laborio', NULL, '', '000511623942663', 36, 'rent', 204, 9, 10, '1623942663.jpg', 9, 6, 67, 10, '[\"rerum\",\"similique\"]', 'Ad officiis libero l', '3', 'Officia quaerat anim', NULL, 12, NULL, 1, '2', '70', '1', '1997-04-12', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:56:05', 46, NULL),
(53, 'nep', 54, 11, 53, NULL, 'Et excepteur dolores', '[{\"title\":\"\",\"filename\":\"1623942736on.jpg\"}]', '', '000531623942735', 49, 'sale', 581, 4, 3, '1623942735.jpg', 7, 6, 161, 0, '[\"r\",\"fghjk\"]', 'At tenetur consequun', '5', NULL, '', 10, NULL, 1, '1', '99', '3', '1987-12-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:57:16', 46, NULL),
(54, 'en', 53, 11, 54, 'Odit neque velit par', 'Et excepteur dolores', '[{\"title\":\"\",\"filename\":\"1623942736on.jpg\"}]', '', '000531623942735', 50, 'sale', 581, 4, 3, '1623942735.jpg', 7, 6, 161, 3, '[\"r\",\"fghjk\"]', 'At tenetur consequun', '4', 'Similique alias enim', NULL, 10, NULL, 1, '1', '99', '3', '1987-12-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:57:16', 46, NULL),
(55, 'nep', 56, 12, 55, NULL, 'Sit incididunt eius', '[{\"title\":\"\",\"filename\":\"162394280800.jpg\"}]', '', '000551623942806', 35, 'rent', 90, 5, 3, '1623942806.jpg', 7, 5, 346, 0, '[\"cumque\",\"mole\"]', 'Voluptatem Sequi vo', '2,5', NULL, '', 1, NULL, 1, '2', '41', '0', '1988-03-10', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:58:27', 46, NULL),
(56, 'en', 55, 12, 56, 'Velit culpa quis v', 'Sit incididunt eius', '[{\"title\":\"\",\"filename\":\"162394280800.jpg\"}]', '', '000551623942806', 36, 'rent', 90, 5, 3, '1623942806.jpg', 7, 5, 346, 4, '[\"cumque\",\"mole\"]', 'Voluptatem Sequi vo', '3,4', 'Vel nesciunt ut tem', NULL, 1, NULL, 1, '2', '41', '0', '1988-03-10', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:58:28', 46, NULL),
(57, 'nep', 58, 3, 57, NULL, 'Aliquid consequat N', '', '', '000571623942892', 51, 'sale', 829, 2, 8, '1623942892.jpg', 2, 10, 580, 0, '[\"excepturi\"]', 'Quas exercitationem ', '2,5', NULL, '[{\"filename\":\"1623942893ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623942893-1.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '7', '25', '2', '1990-03-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:59:53', 46, NULL),
(58, 'en', 57, 3, 58, 'Magna sint perferend', 'Aliquid consequat N', NULL, '', '000571623942892', 52, 'sale', 829, 2, 8, '1623942892.jpg', 2, 10, 580, 1, '[\"excepturi\"]', 'Quas exercitationem ', '3,4', 'Qui quisquam totam d', '[{\"filename\":\"1623942893ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623942893-1.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '7', '25', '2', '1990-03-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 20:59:53', 46, NULL),
(59, 'nep', 60, 3, 59, NULL, 'Consequatur Ullamco', '', '', '000591623942937', 35, 'rent', 432, 9, 10, '1623942937.jpg', 4, 9, 899, 0, '[\"eum\",\"quibusd\"]', 'Molestiae sed non et', '2', NULL, '', 12, NULL, 1, '2', '10', '3', '2005-10-08', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:00:37', 46, NULL),
(60, 'en', 59, 3, 60, 'Anim perspiciatis i', 'Consequatur Ullamco', NULL, '', '000591623942937', 36, 'rent', 432, 9, 10, '1623942937.jpg', 4, 9, 899, 4, '[\"eum\",\"quibusd\"]', 'Molestiae sed non et', '3', 'Lorem cumque id pers', NULL, 12, NULL, 1, '2', '10', '3', '2005-10-08', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:00:38', 46, NULL),
(61, 'nep', 62, 4, 61, NULL, 'Minus minus aut repr', '', '', '000611623942998', 35, 'sale', 422, 6, 3, '1623942999.jpg', 3, 4, 654, 0, '[\"est\",\"non\"]', 'Dolore odit qui plac', '5', NULL, '[{\"filename\":\"1623943001ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623943002-1.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '1', '31', '1', '1973-03-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:01:41', 46, NULL),
(62, 'en', 61, 4, 62, 'Et aliquid mollitia ', 'Minus minus aut repr', NULL, '', '000611623942998', 36, 'sale', 422, 6, 3, '1623942999.jpg', 3, 4, 654, 5, '[\"est\",\"non\"]', 'Dolore odit qui plac', '4', 'Quis in eveniet adi', '[{\"filename\":\"1623943001ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623943002-1.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '1', '31', '1', '1973-03-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:01:41', 46, NULL),
(63, 'nep', 64, 4, 63, NULL, 'Quos enim vel facili', '', '', '000631623943097', 35, 'rent', 937, 1, 7, '1623943097.jpg', 5, 9, 964, 0, '[\"doloremque\",\"max\"]', 'Labore a earum sit ', '5', NULL, '', 8, NULL, 1, '6', '18', '3', '1979-12-16', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:03:17', 46, NULL),
(64, 'en', 63, 4, 64, 'Rerum voluptatum ut ', 'Quos enim vel facili', NULL, '', '000631623943097', 36, 'rent', 937, 1, 7, '1623943097.jpg', 5, 9, 964, 2, '[\"doloremque\",\"max\"]', 'Labore a earum sit ', '4', 'Amet laborum Iste ', NULL, 8, NULL, 1, '6', '18', '3', '1979-12-16', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:03:18', 46, NULL),
(65, 'nep', 66, 4, 65, NULL, 'Molestiae cupidatat ', '', '', '000651623943153', 49, 'sale', 358, 4, 9, '1623943153.jpg', 9, 6, 931, 0, '[\"sequi\"]', 'Est non enim dolores', '2', NULL, '[{\"filename\":\"1623943156ra.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623943156ed.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '3', '30', '2', '1985-07-24', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:04:15', 46, NULL),
(66, 'en', 65, 4, 66, 'Ratione modi beatae ', 'Molestiae cupidatat ', NULL, '', '000651623943153', 50, 'sale', 358, 4, 9, '1623943153.jpg', 9, 6, 931, 5, '[\"sequi\"]', 'Est non enim dolores', '3', 'Ex non nostrud magna', '[{\"filename\":\"1623943156ra.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623943156ed.jpg\",\"type\":\"image\\/jpeg\"}]', 10, NULL, 1, '3', '30', '2', '1985-07-24', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:04:15', 46, NULL),
(67, 'nep', 68, 3, 67, NULL, 'Consequatur obcaecat', '', '', '000671623943211', 33, 'sale', 201, 9, 8, '1623943212.jpg', 4, 6, 706, 0, '[\"iste\",\"ab\",\"id\",\"jhgjh\"]', 'Iusto tenetur ration', '2,5', NULL, '', 12, NULL, 1, '2', '1', '1', '2015-07-27', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:05:12', 46, NULL),
(68, 'en', 67, 3, 68, 'Minim unde deserunt ', 'Consequatur obcaecat', NULL, '', '000671623943211', 34, 'sale', 201, 9, 8, '1623943212.jpg', 4, 6, 706, 7, '[\"iste\",\"ab\",\"id\",\"jhgjh\"]', 'Iusto tenetur ration', '3,4', 'Impedit esse adipis', NULL, 12, NULL, 1, '2', '1', '1', '2015-07-27', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:05:12', 46, NULL),
(69, 'nep', 70, 4, 69, NULL, 'Voluptatum ipsa eve', '', '', '000691623943262', 35, 'sale', 771, 8, 8, '1623943262.jpg', 9, 1, 740, 0, '[\"deleni\"]', 'Doloremque ex dolore', '2', NULL, '', 8, NULL, 1, '4', '1', '2', '2004-07-06', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:06:04', 46, NULL),
(70, 'en', 69, 4, 70, 'Accusantium inventor', 'Voluptatum ipsa eve', NULL, '', '000691623943262', 36, 'sale', 771, 8, 8, '1623943262.jpg', 9, 1, 740, 4, '[\"deleni\"]', 'Doloremque ex dolore', '3', 'Tempor asperiores vo', NULL, 8, NULL, 1, '4', '1', '2', '2004-07-06', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:06:04', 46, NULL),
(71, 'nep', 72, 4, 71, NULL, 'Voluptas id dolore n', '', '', '000711623943323', 51, 'sale', 500, 7, 9, '1623943323.jpg', 9, 2, 882, 0, '[\"consequatur\"]', 'Consequat Accusamus', '5', NULL, '', 1, NULL, 1, '3', '73', '2', '1973-03-27', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:07:03', 46, NULL),
(72, 'en', 71, 4, 72, 'Culpa provident vo', 'Voluptas id dolore n', NULL, '', '000711623943323', 52, 'sale', 500, 7, 9, '1623943323.jpg', 9, 2, 882, 7, '[\"consequatur\"]', 'Consequat Accusamus', '4', 'Laboriosam porro ex', NULL, 1, NULL, 1, '3', '73', '2', '1973-03-27', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:07:03', 46, NULL),
(73, 'nep', 74, 4, 73, NULL, 'Fuga Ex atque moles', '', '', '000731623943371', 35, 'rent', 946, 1, 4, '1623943371.jpg', 9, 2, 696, 0, '[\"sunt\",\"delectus\"]', 'Labore in possimus ', '2', NULL, '', 3, NULL, 1, '5', '12', '1', '2001-10-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:07:52', 46, NULL),
(74, 'en', 73, 4, 74, 'Culpa neque sit ear', 'Fuga Ex atque moles', NULL, '', '000731623943371', 36, 'rent', 946, 1, 4, '1623943371.jpg', 9, 2, 696, 9, '[\"sunt\",\"delectus\"]', 'Labore in possimus ', '3', 'At vitae perferendis', NULL, 3, NULL, 1, '5', '12', '1', '2001-10-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:07:53', 46, NULL),
(75, 'nep', 76, 3, 75, NULL, 'Sit ex tempora est ', '', '', '000751623943434', 35, 'rent', 390, 9, 8, '1623943434.png', 1, 8, 228, 0, '[\"consequuntur\"]', 'Tenetur mollitia lab', '2,5', NULL, '[{\"filename\":\"1623943436ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623943436-1.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '6', '15', '2', '1979-02-10', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:08:55', 46, NULL),
(76, 'en', 75, 3, 76, 'Ut commodo enim blan', 'Sit ex tempora est ', NULL, '', '000751623943434', 36, 'rent', 390, 9, 8, '1623943434.png', 1, 8, 228, 1, '[\"consequuntur\"]', 'Tenetur mollitia lab', '3,4', 'Accusamus labore fac', '[{\"filename\":\"1623943436ed.jpg\",\"type\":\"image\\/jpeg\"},{\"filename\":\"1623943436-1.jpg\",\"type\":\"image\\/jpeg\"}]', 3, NULL, 1, '6', '15', '2', '1979-02-10', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:08:55', 46, NULL),
(77, 'nep', 78, 4, 77, NULL, 'Magni architecto con', '', '', '000771623943509', 35, 'rent', 682, 6, 9, '1623943509.jpg', 10, 9, 558, 0, '[\"sed\",\"mollit\"]', 'Obcaecati ipsam sit', '5', NULL, '', 1, NULL, 1, '7', '34', '3', '1998-10-13', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:10:10', 46, NULL),
(78, 'en', 77, 4, 78, 'Eum rerum quod duis ', 'Magni architecto con', NULL, '', '000771623943509', 36, 'rent', 682, 6, 9, '1623943509.jpg', 10, 9, 558, 2, '[\"sed\",\"mollit\"]', 'Obcaecati ipsam sit', '4', 'Dolor quo sint harum', NULL, 1, NULL, 1, '7', '34', '3', '1998-10-13', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:10:11', 46, NULL),
(79, 'nep', 80, 4, 79, NULL, 'Et velit facere bla', '', '', '000791623943625', 35, 'rent', 943, 7, 8, '1623943625.jpg', 5, 3, 825, 0, '[\"qui\"]', 'In assumenda rerum v', '2', NULL, '', 6, NULL, 1, '7', '75', '1', '1993-03-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:12:06', 46, NULL),
(80, 'en', 79, 4, 80, 'Commodo ipsam molest', 'Et velit facere bla', NULL, '', '000791623943625', 36, 'rent', 943, 7, 8, '1623943625.jpg', 5, 3, 825, 8, '[\"qui\"]', 'In assumenda rerum v', '3', 'Blanditiis dolorum a', NULL, 6, NULL, 1, '7', '75', '1', '1993-03-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:12:06', 46, NULL),
(81, 'nep', 82, 4, 81, NULL, 'Aut fugiat cum ut e', '', '', '000811623943673', 35, 'rent', 262, 6, 6, '1623943673.jpg', 8, 3, 627, 0, '[\"et\",\"sint\"]', 'Et quae asperiores c', '5', NULL, '', 10, NULL, 1, '3', '100', '3', '1990-12-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:12:55', 46, NULL),
(82, 'en', 81, 4, 82, 'Nesciunt non illo c', 'Aut fugiat cum ut e', NULL, '', '000811623943673', 36, 'rent', 262, 6, 6, '1623943673.jpg', 8, 3, 627, 7, '[\"et\",\"sint\"]', 'Et quae asperiores c', '4', 'Ut sunt in perspici', NULL, 10, NULL, 1, '3', '100', '3', '1990-12-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:12:55', 46, NULL),
(83, 'nep', 84, 4, 83, NULL, 'Excepteur consectetu', '', '', '000831623943720', 33, 'sale', 482, 2, 5, '1623943720.jpg', 10, 5, 213, 0, '[\"lorem\",\"deserun\"]', 'Asperiores omnis est', '5', NULL, '', 3, NULL, 1, '6', '7', '0', '2019-01-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:13:43', 46, NULL),
(84, 'en', 83, 4, 84, 'Qui ad minus aut aut', 'Excepteur consectetu', NULL, '', '000831623943720', 34, 'sale', 482, 2, 5, '1623943720.jpg', 10, 5, 213, 4, '[\"lorem\",\"deserun\"]', 'Asperiores omnis est', '4', 'Facere velit laborum', NULL, 3, NULL, 1, '6', '7', '0', '2019-01-09', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:13:43', 46, NULL),
(85, 'nep', 86, 4, 85, NULL, 'Voluptates est cill', '', '', '000851623943778', 35, 'rent', 227, 3, 1, '1623943778.jpg', 10, 10, 180, 0, '[\"ipsa\",\"repr\"]', 'Quod aute atque mole', '2,5', NULL, '', 12, NULL, 1, '2', '26', '0', '1999-07-03', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:14:38', 46, NULL),
(86, 'en', 85, 4, 86, 'Corrupti ut deserun', 'Voluptates est cill', NULL, '', '000851623943778', 36, 'rent', 227, 3, 1, '1623943778.jpg', 10, 10, 180, 3, '[\"ipsa\",\"repr\"]', 'Quod aute atque mole', '3,4', 'Sapiente voluptas qu', NULL, 12, NULL, 1, '2', '26', '0', '1999-07-03', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:14:39', 46, NULL),
(87, 'nep', 88, 3, 87, NULL, 'Doloremque sit illu', '', '', '000871623943831', 35, 'sale', 770, 4, 5, '1623943831.jpg', 4, 1, 159, 0, '[\"Saepe\",\"quo\"]', 'Quis laborum elit u', '2', NULL, '', 12, NULL, 1, '0', '75', '0', '2013-07-23', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:15:32', 46, NULL),
(88, 'en', 87, 3, 88, 'Ut quo sed sunt opti', 'Doloremque sit illu', NULL, '', '000871623943831', 36, 'sale', 770, 4, 5, '1623943831.jpg', 4, 1, 159, 1, '[\"Saepe\",\"quo\"]', 'Quis laborum elit u', '3', 'Minim id aute irure ', NULL, 12, NULL, 1, '0', '75', '0', '2013-07-23', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:15:32', 46, NULL),
(89, 'nep', 90, 4, 89, NULL, 'Sit tenetur necessit', '', '', '000891623943870', 35, 'rent', 601, 5, 9, '1623943870.jpg', 8, 2, 978, 0, '[\"consectetur\"]', 'Facere ipsum sint d', '2', NULL, '', 1, NULL, 1, '0', '36', '2', '1975-08-19', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:16:11', 46, NULL),
(90, 'en', 89, 4, 90, 'Anim ducimus est fu', 'Sit tenetur necessit', NULL, '', '000891623943870', 36, 'rent', 601, 5, 9, '1623943870.jpg', 8, 2, 978, 9, '[\"consectetur\"]', 'Facere ipsum sint d', '3', 'At consequatur id qu', NULL, 1, NULL, 1, '0', '36', '2', '1975-08-19', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:16:11', 46, NULL),
(91, 'nep', 92, 4, 91, NULL, 'Sit quia consectetur', '', '', '000911623943926', 49, 'sale', 668, 1, 1, '1623943926.jpg', 2, 10, 50, 0, '[\"sit\",\"i\"]', 'Pariatur Consectetu', '2', NULL, '', 12, NULL, 1, '7', '7', '1', '2020-02-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:17:07', 46, NULL),
(92, 'en', 91, 4, 92, 'Est mollitia sint no', 'Sit quia consectetur', NULL, '', '000911623943926', 50, 'sale', 668, 1, 1, '1623943926.jpg', 2, 10, 50, 3, '[\"sit\",\"i\"]', 'Pariatur Consectetu', '3', 'Velit sit sed aliqui', NULL, 12, NULL, 1, '7', '7', '1', '2020-02-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:17:07', 46, NULL),
(93, 'nep', 94, 4, 93, NULL, 'Est nihil voluptatem', '', '', '000931623943972', 35, 'rent', 884, 6, 6, '', 7, 2, 194, 0, '[\"culpa\"]', 'Dolores similique ip', '5', NULL, '', 12, NULL, 1, '1', '70', '2', '2007-04-24', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:17:53', 46, NULL),
(94, 'en', 93, 4, 94, 'Et enim sit quaerat ', 'Est nihil voluptatem', NULL, '', '000931623943972', 36, 'rent', 884, 6, 6, NULL, 7, 2, 194, 3, '[\"culpa\"]', 'Dolores similique ip', '4', 'Similique ducimus e', NULL, 12, NULL, 1, '1', '70', '2', '2007-04-24', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:17:53', 46, NULL),
(95, 'nep', 96, 3, 95, NULL, 'At dolor qui molesti', '', '', '000951623944023', 49, 'sale', 10, 9, 4, '1623944023.jpg', 10, 6, 725, 0, '[\"cum\",\"Sed\"]', 'Minima est porro re', '2', NULL, '', 3, NULL, 1, '7', '80', '0', '2016-11-13', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:18:43', 46, NULL),
(96, 'en', 95, 3, 96, 'Omnis qui eos conse', 'At dolor qui molesti', NULL, '', '000951623944023', 50, 'sale', 10, 9, 4, '1623944023.jpg', 10, 6, 725, 9, '[\"cum\",\"Sed\"]', 'Minima est porro re', '3', 'Facere consectetur d', NULL, 3, NULL, 1, '7', '80', '0', '2016-11-13', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:18:44', 46, NULL),
(97, 'nep', 98, 3, 97, NULL, 'Est proident offic', '', '', '000971623944067', 35, 'rent', 255, 8, 3, '1623944068.jpg', 5, 6, 685, 0, '[\"tempore\",\"ve\"]', 'Velit a velit proide', '2', NULL, '', 1, NULL, 1, '2', '41', '2', '1991-02-16', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:19:28', 46, NULL),
(98, 'en', 97, 3, 98, 'Cupidatat fuga Ut o', 'Est proident offic', NULL, '', '000971623944067', 36, 'rent', 255, 8, 3, '1623944068.jpg', 5, 6, 685, 8, '[\"tempore\",\"ve\"]', 'Velit a velit proide', '3', 'Esse cum quis accus', NULL, 1, NULL, 1, '2', '41', '2', '1991-02-16', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:19:29', 46, NULL),
(99, 'nep', 100, 4, 99, NULL, 'Consequatur sit cu', '', '', '000991623944122', 35, 'sale', 295, 9, 2, '1623944122.jpg', 9, 2, 276, 0, '[\"ul\",\"iusto\",\"ducim\"]', 'Asperiores sit disti', '2,5', NULL, '', 1, NULL, 1, '2', '84', '0', '2020-03-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:20:23', 46, NULL),
(100, 'en', 99, 4, 100, 'Fugit quis dicta de', 'Consequatur sit cu', NULL, '', '000991623944122', 36, 'sale', 295, 9, 2, '1623944122.jpg', 9, 2, 276, 3, '[\"ul\",\"iusto\",\"ducim\"]', 'Asperiores sit disti', '3,4', 'Laboris facere incid', NULL, 1, NULL, 1, '2', '84', '0', '2020-03-22', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:20:23', 46, NULL),
(101, 'nep', 102, 3, 101, NULL, 'Magna ut sed et est ', '', '', '0001011623944229', 35, 'rent', 86, 1, 2, '1623944229.jpg', 8, 2, 753, 0, '[\"voluptas\"]', 'Sit esse dolor est c', '5', NULL, '', 3, NULL, 1, '2', '29', '3', '1977-10-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:22:10', 46, NULL),
(102, 'en', 101, 3, 102, 'Sed optio similique', 'Magna ut sed et est ', NULL, '', '0001011623944229', 36, 'rent', 86, 1, 2, '1623944229.jpg', 8, 2, 753, 10, '[\"voluptas\"]', 'Sit esse dolor est c', '4', 'Duis rerum dolor ad ', NULL, 3, NULL, 1, '2', '29', '3', '1977-10-26', 0, 0, 0, 0, '2021-06-26', '2021-06-26', 0, '2021-06-17 21:22:10', 46, NULL),
(103, 'nep', 104, 15, 103, NULL, 'Proident nemo fugit', '[{\"title\":\"living\",\"filename\":\"1623994901-1.jpg\"}]', '', '0001031623994899', 36, 'rent', 886, 10, 5, '1623994899.jpg', 3, 2, 637, 0, '[\"e\",\"Dolorem\",\"ut\"]', 'Numquam et do ab vol', '2', NULL, '[{\"filename\":\"1623994901bd.jpg\",\"type\":\"image\\/jpeg\"}]', 2, NULL, 1, '5', '41', '2', '1995-05-28', 2, 0, 0, 0, '2021-06-22', '2021-06-27', 0, '2021-06-18 11:26:40', 46, NULL),
(104, 'en', 103, 12, 104, 'Obcaecati nisi et ir', 'Proident nemo fugit', '[{\"title\":\"living\",\"filename\":\"1623994901-1.jpg\"}]', '', '0001031623994899', 36, 'rent', 886, 10, 5, '1623994899.jpg', 3, 2, 637, 2, '[\"e\",\"Dolorem\",\"ut\"]', 'Numquam et do ab vol', '3', 'Ipsam atque facere a', '[{\"filename\":\"1623994901bd.jpg\",\"type\":\"image\\/jpeg\"}]', 1, NULL, 1, '5', '41', '2', '1995-05-28', 2, 0, 0, 0, '2021-07-01', '2021-07-01', 0, '2021-06-18 11:26:40', 46, NULL),
(105, 'nep', 106, 6, 105, NULL, 'Aute perferendis cup', '', '', '0001051623998143', 35, 'rent', 800, 10, 7, '1623998143.jpg', 4, 1, 909, 0, '[\"ut\"]', 'In et aut officia ei', '2,5', NULL, '', 6, NULL, 0, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:20:44', 46, NULL),
(106, 'en', 105, 6, 106, 'Officiis adipisci ip', 'Aute perferendis cup', NULL, '', '0001051623998143', 36, 'rent', 800, 10, 7, '1623998143.jpg', 4, 1, 909, 6, '[\"ut\"]', 'In et aut officia ei', '3,4', 'Dolorem sint conseq', NULL, 6, NULL, 1, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:20:44', 46, NULL),
(107, 'nep', 108, 6, 107, NULL, 'Aute perferendis cup', '', '', '0001071623998191', 35, 'rent', 800, 10, 7, '1623998191.jpg', 4, 1, 909, 0, '[\"ut\"]', 'In et aut officia ei', '2,5', NULL, '', 6, NULL, 0, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:21:32', 46, NULL),
(108, 'en', 107, 6, 108, 'Officiis adipisci ip', 'Aute perferendis cup', NULL, '', '0001071623998191', 36, 'rent', 800, 10, 7, '1623998191.jpg', 4, 1, 909, 6, '[\"ut\"]', 'In et aut officia ei', '3,4', 'Dolorem sint conseq', NULL, 6, NULL, 1, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:21:32', 46, NULL),
(109, 'nep', 110, 6, 109, NULL, 'Aute perferendis cup', '', '', '0001091623998210', 35, 'rent', 800, 10, 7, '1623998210.jpg', 4, 1, 909, 0, '[\"ut\"]', 'In et aut officia ei', '2,5', NULL, '', 6, NULL, 0, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:21:51', 46, NULL),
(110, 'en', 109, 6, 110, 'Officiis adipisci ip', 'Aute perferendis cup', NULL, '', '0001091623998210', 36, 'rent', 800, 10, 7, '1623998210.jpg', 4, 1, 909, 6, '[\"ut\"]', 'In et aut officia ei', '3,4', 'Dolorem sint conseq', NULL, 6, NULL, 1, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:21:51', 46, NULL),
(111, 'nep', 112, 6, 111, NULL, 'Aute perferendis cup', '', '', '0001111623998232', 36, 'rent', 800, 10, 7, '1623998232.jpg', 4, 1, 909, 0, '[\"ut\"]', 'In et aut officia ei', '2,5', NULL, '', 5, NULL, 1, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:22:12', 46, NULL),
(112, 'en', 111, 8, 112, 'Officiis adipisci ip', 'Aute perferendis cup', NULL, '', '0001111623998232', 36, 'rent', 800, 10, 7, '1623998232.jpg', 4, 1, 909, 6, '[\"ut\"]', 'In et aut officia ei', '3,4', 'Dolorem sint conseq', NULL, 6, NULL, 1, '2', '49', '0', '2015-12-07', 0, 0, 0, 0, '2021-06-27', '2021-06-27', 0, '2021-06-18 12:22:12', 46, NULL),
(113, 'nep', 114, 114, 113, NULL, 'Rem ad corporis veli', '', '', '0001131624337845', 36, 'rent', 632, 5, 4, '1624337845.jpg', 7, 8, 635, 0, '[\"libero\"]', 'Consequatur ratione', '2', NULL, '[{\"filename\":\"1624337846s.jfif\",\"type\":\"image\\/jpeg\"}]', 5, NULL, 1, '6', '89', '0', '2002-03-09', 1, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 10:42:26', 46, NULL),
(114, 'en', 113, 113, 114, 'Distinctio Aut veri', 'Rem ad corporis veli', NULL, '', '0001131624337845', 36, 'rent', 632, 5, 4, '1624337845.jpg', 7, 8, 635, 9, '[\"libero\"]', 'Consequatur ratione', '3', 'Aliqua Sed quo veli', '[{\"filename\":\"1624337846s.jfif\",\"type\":\"image\\/jpeg\"}]', 6, NULL, 1, '6', '89', '0', '2002-03-09', 1, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 10:42:26', 46, NULL),
(115, 'nep', 116, 112, 115, NULL, 'Voluptatem excepteu', '', '', '0001151624341615', 33, 'sale', 227, 4, 3, '', 9, 7, 87, 0, '[\"quia\"]', 'Repellendus Corrupt', '', NULL, '', 3, NULL, 0, '5', '43', '1', '1983-04-11', 0, 1, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:45:15', 46, NULL),
(116, 'en', 115, 112, 116, 'Dolore laudantium i', 'Voluptatem excepteu', NULL, '', '0001151624341615', 34, 'sale', 227, 4, 3, NULL, 9, 7, 87, 1, '[\"quia\"]', 'Repellendus Corrupt', NULL, 'Aliquip est voluptas', NULL, 3, NULL, 0, '5', '43', '1', '1983-04-11', 0, 1, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:45:15', 46, NULL),
(117, 'nep', 118, 112, 117, NULL, 'Minus corrupti amet', '', '', '0001171624341663', 36, 'rent', 674, 2, 4, '1624797038.jpg', 7, 9, 738, 0, '[\"voluptatem\"]', 'Aut a omnis nisi qua', '2', NULL, '', 9, NULL, 1, '7', '86', '3', '1993-05-21', 0, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:46:03', 46, NULL),
(118, 'en', 117, 112, 118, 'Id amet Nam fuga ', 'Minus corrupti amet', NULL, '', '0001171624341663', 36, 'rent', 674, 2, 4, '1624797038.jpg', 7, 9, 738, 10, '[\"voluptatem\"]', 'Aut a omnis nisi qua', '3', 'Eius laboriosam eum', NULL, 10, NULL, 1, '7', '86', '3', '1993-05-21', 0, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:46:03', 46, NULL),
(119, 'nep', 120, 112, 119, NULL, 'Hic voluptas possimu', '', '', '0001191624341801', 36, 'rent', 354, 2, 10, '1624796937.jpg', 9, 5, 1000, 0, '[\"ut\",\"voluptate\",\"v\"]', 'Dicta eveniet ut as', '5', NULL, '', 7, NULL, 1, '7', '67', '2', '2019-08-13', 0, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:48:21', 46, NULL),
(120, 'en', 119, 125, 120, 'Nulla id quas beata', 'Hic voluptas possimu', NULL, '', '0001191624341801', 36, 'rent', 354, 2, 10, '1624796937.jpg', 9, 5, 1000, 4, '[\"ut\",\"voluptate\",\"v\"]', 'Dicta eveniet ut as', '4', 'Ea nesciunt eligend', NULL, 8, NULL, 1, '7', '67', '2', '2019-08-13', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-22 11:48:21', 46, NULL),
(121, 'nep', 122, 112, 121, NULL, 'Molestiae voluptas v', '', '', '0001211624341873', 34, 'sale', 444, 8, 3, '1624797010.jpg', 1, 2, 680, 0, '[\"et\",\"il\"]', 'Aliquid laboris dolo', '5', NULL, '', 5, NULL, 1, '5', '14', '1', '2005-09-22', 0, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:49:33', 46, NULL),
(122, 'en', 121, 130, 122, 'Quo animi in iusto ', 'Molestiae voluptas v', NULL, '', '0001211624341873', 34, 'sale', 444, 8, 3, '1624797010.jpg', 1, 2, 680, 4, '[\"et\",\"il\"]', 'Aliquid laboris dolo', '4', 'Est iusto exercitati', NULL, 6, NULL, 1, '5', '14', '1', '2005-09-22', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-22 11:49:33', 46, NULL),
(123, 'nep', 124, 112, 123, NULL, 'Dolor error odio ips', '', '', '0001231624342049', 34, 'sale', 982, 9, 4, '1624796985.png', 5, 8, 44, 0, '[\"ipsum\",\"quod\",\"exer\"]', 'Amet consequatur om', '5', NULL, '', 5, NULL, 1, '6', '51', '0', '1971-03-26', 0, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:52:29', 46, NULL),
(124, 'en', 123, 112, 124, 'Ea dicta voluptate q', 'Dolor error odio ips', NULL, '', '0001231624342049', 34, 'sale', 982, 9, 4, '1624796985.png', 5, 8, 44, 9, '[\"ipsum\",\"quod\",\"exer\"]', 'Amet consequatur om', '4', 'Laborum Officiis la', NULL, 6, NULL, 1, '6', '51', '0', '1971-03-26', 0, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-22 11:52:29', 46, NULL),
(125, 'nep', 126, 112, 125, NULL, 'Rerum exercitation n', '', '', '0001251624426572', 34, 'sale', 997, 9, 7, '1624796029.jpg', 7, 2, 718, 0, '[\"eiusmod\",\"perspicia\"]', 'Mollitia voluptatibu', '2', NULL, '', 5, NULL, 1, '4', '77', '2', '1998-10-02', 1, 0, 0, 0, '2021-07-02', '2021-07-02', 0, '2021-06-23 11:21:12', 46, NULL),
(126, 'en', 125, 131, 126, 'Vero itaque quia pra', 'Rerum exercitation n', NULL, '', '0001251624426572', 34, 'sale', 997, 9, 7, '1624796029.jpg', 7, 2, 718, 5, '[\"eiusmod\",\"perspicia\"]', 'Mollitia voluptatibu', '3', 'Rerum laudantium di', NULL, 6, NULL, 1, '4', '77', '2', '1998-10-02', 1, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-23 11:21:12', 46, NULL),
(127, 'nep', 128, 118, 127, NULL, 'Id laborum ut quia ', '', '', '0001271624785016', 34, 'sale', 230, 10, 2, '1624787154.jpg', 3, 2, 118, 0, '[\"illum\",\"et\",\"Eu\",\"ul\"]', 'Vero nesciunt omnis', '5', NULL, '', 4, NULL, 1, '7', '54', '1', '1986-12-16', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 14:55:16', 46, NULL),
(128, 'en', 127, 118, 128, 'Aliquip voluptatem ', 'Id laborum ut quia ', NULL, '', '0001271624785016', 34, 'sale', 230, 10, 2, '1624787154.jpg', 3, 2, 118, 5, '[\"illum\",\"et\",\"Eu\",\"ul\"]', 'Vero nesciunt omnis', '4', 'Eum velit ex volupta', NULL, 3, NULL, 1, '7', '54', '1', '1986-12-16', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 14:55:16', 46, NULL),
(129, 'nep', 130, 120, 129, NULL, 'Quis maiores proiden', '', '', '0001291624785087', 36, 'rent', 810, 3, 9, '1624795923.jpg', 1, 1, 494, 0, '[\"ipsum\",\"quia\"]', 'Et voluptas excepteu', '5', NULL, '', 9, NULL, 1, '1', '43', '3', '2018-12-28', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 14:56:27', 46, NULL),
(130, 'en', 129, 120, 130, 'Id tenetur itaque i', 'Quis maiores proiden', NULL, '', '0001291624785087', 36, 'rent', 810, 3, 9, '1624795923.jpg', 1, 1, 494, 1, '[\"ipsum\",\"quia\"]', 'Et voluptas excepteu', '4', 'Perferendis eum est', NULL, 10, NULL, 1, '1', '43', '3', '2018-12-28', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 14:56:27', 46, NULL),
(131, 'nep', 132, 120, 131, NULL, 'Et ex reprehenderit', '', '', '0001311624785612', 34, 'sale', 217, 10, 3, '1624794252.jpg', 9, 4, 880, 0, '[\"optio\"]', 'Ex occaecat qui aliq', '5', NULL, '', 9, NULL, 1, '1', '47', '0', '1983-12-10', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:05:12', 46, NULL),
(132, 'en', 131, 120, 132, 'Est dignissimos non ', 'Et ex reprehenderit', NULL, '', '0001311624785612', 34, 'sale', 217, 10, 3, '1624794252.jpg', 9, 4, 880, 1, '[\"optio\"]', 'Ex occaecat qui aliq', '4', 'Mollitia adipisci a ', NULL, 10, NULL, 1, '1', '47', '0', '1983-12-10', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:05:13', 46, NULL),
(133, 'nep', 134, 120, 133, NULL, 'Duis velit maiores i', '', '', '0001331624785646', 34, 'sale', 78, 3, 8, '1624794323.jpg', 10, 2, 891, 0, '[\"non\",\"maxime\"]', 'Expedita ut quasi in', '5', NULL, '', 4, NULL, 1, '4', '48', '0', '1973-03-09', 1, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:05:46', 46, NULL);
INSERT INTO `property_directory` (`id`, `content_lang`, `child_id`, `user_package_breakdown_id`, `verification_id`, `title`, `address`, `pan_images`, `youtube_videos`, `property_code`, `property_type`, `property_cat`, `property_size`, `bedrooms`, `hall`, `image`, `bathrooms`, `kitchen`, `price`, `floors`, `keywords`, `map_location`, `amenities`, `description`, `add_image`, `city`, `property_attachment`, `is_status`, `property_face`, `mohda`, `road_type`, `build_year`, `views`, `is_delete`, `show_number`, `viewed_number`, `secondary_expiry_date`, `expiry_date`, `is_expired`, `created_on`, `created_by`, `primary_creator`) VALUES
(134, 'en', 133, 120, 134, 'Commodo odio minus e', 'Duis velit maiores i', NULL, '', '0001331624785646', 34, 'sale', 78, 3, 8, '1624794323.jpg', 10, 2, 891, 9, '[\"non\",\"maxime\"]', 'Expedita ut quasi in', '4', 'Consequatur dolorem', NULL, 3, NULL, 1, '4', '48', '0', '1973-03-09', 1, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:05:46', 46, NULL),
(135, 'nep', 136, 120, 135, NULL, 'Magnam aliqua Sit ', '', '', '0001351624785750', 36, 'rent', 342, 5, 3, '1624795979.jpg', 9, 10, 897, 0, '[\"incididunt\"]', 'Qui dignissimos aut ', '5', NULL, '', 9, NULL, 1, '3', '77', '0', '1974-01-21', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:07:30', 46, NULL),
(136, 'en', 135, 120, 136, 'Et mollit excepturi ', 'Magnam aliqua Sit ', NULL, '', '0001351624785750', 36, 'rent', 342, 5, 3, '1624795979.jpg', 9, 10, 897, 1, '[\"incididunt\"]', 'Qui dignissimos aut ', '4', 'Id ullamco necessit', NULL, 10, NULL, 1, '3', '77', '0', '1974-01-21', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:07:30', 46, NULL),
(137, 'nep', 138, 120, 137, NULL, 'Officia incidunt nu', '', '', '0001371624785774', 36, 'rent', 44, 8, 1, '1624787122.jpg', 5, 9, 773, 0, '[\"qui\"]', 'Nostrum cumque asper', '2,5', NULL, '', 9, NULL, 1, '7', '22', '3', '1990-08-03', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:07:54', 46, NULL),
(138, 'en', 137, 120, 138, 'Provident voluptas ', 'Officia incidunt nu', NULL, '', '0001371624785774', 36, 'rent', 44, 8, 1, '1624787122.jpg', 5, 9, 773, 4, '[\"qui\"]', 'Nostrum cumque asper', '3,4', 'Quis anim consectetu', NULL, 10, NULL, 1, '7', '22', '3', '1990-08-03', 0, 0, 0, 0, '2021-07-07', '2021-07-07', 0, '2021-06-27 15:07:54', 46, NULL),
(139, 'nep', 140, 119, 139, NULL, 'Doloribus dolorum ve', '', '', '0001391624788303', 34, 'sale', 452, 8, 6, '1624788312.jpg', 3, 1, 17, 0, '[\"aut\"]', 'Voluptas voluptatem', '2,5', NULL, '', 7, NULL, 1, '7', '53', '2', '1988-09-21', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 15:50:04', 46, NULL),
(140, 'en', 139, 119, 140, 'Nisi doloribus liber', 'Doloribus dolorum ve', NULL, '', '0001391624788303', 34, 'sale', 452, 8, 6, '1624788312.jpg', 3, 1, 17, 8, '[\"aut\"]', 'Voluptas voluptatem', '3,4', 'Tenetur excepteur au', NULL, 8, NULL, 1, '7', '53', '2', '1988-09-21', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 15:50:04', 46, NULL),
(141, 'nep', NULL, 114, NULL, NULL, '', '', '', '0001411624788351', 33, 'sale', NULL, NULL, NULL, '1624788351.jpg', NULL, NULL, 207, 0, '[\"neque\"]', '', '5', NULL, '', NULL, NULL, 0, '', '', '', NULL, 0, 0, 0, 0, '2021-07-01', '2021-07-01', 0, '2021-06-27 15:50:51', 46, NULL),
(142, 'nep', 143, 119, 142, NULL, 'Enim architecto enim', '', '', '0001421624788394', 33, 'sale', 789, 9, 6, '1624788394.jpg', 8, 6, 641, 0, '[\"Incidunt\",\"dolori\"]', 'Dolor in iusto non e', '5', NULL, '', 6, NULL, 1, '5', '70', '2', '1987-06-01', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 15:51:34', 46, NULL),
(143, 'en', 142, 119, 143, 'Dolor sint beatae qu', 'Enim architecto enim', NULL, '', '0001421624788394', 34, 'sale', 789, 9, 6, '1624788394.jpg', 8, 6, 641, 9, '[\"Incidunt\",\"dolori\"]', 'Dolor in iusto non e', '4', 'Et eiusmod laudantiu', NULL, 6, NULL, 1, '5', '70', '2', '1987-06-01', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 15:51:34', 46, NULL),
(144, 'nep', 145, 11, 144, NULL, 'Consectetur vitae m', '', '', '0001441624792141', 33, 'sale', 482, 4, 4, '1624792142.jpg', 2, 4, 613, 0, '[\"qui\",\"Quaerat\",\"delectus\"]', 'Omnis ut voluptas qu', '5', NULL, '', 6, NULL, 1, '6', '80', '2', '2006-01-07', 0, 0, 0, 0, '2021-07-23', '2021-07-23', 0, '2021-06-27 16:54:02', 46, NULL),
(145, 'en', 144, 11, 145, 'Iure eu expedita inc', 'Consectetur vitae m', NULL, '', '0001441624792141', 34, 'sale', 482, 4, 4, '1624792142.jpg', 2, 4, 613, 5, '[\"qui\",\"Quaerat\",\"delectus\"]', 'Omnis ut voluptas qu', '4', 'Quae aliquip perfere', NULL, 6, NULL, 1, '6', '80', '2', '2006-01-07', 0, 0, 0, 0, '2021-07-23', '2021-07-23', 0, '2021-06-27 16:54:02', 46, NULL),
(146, 'nep', 147, 124, 146, NULL, 'Mollitia in omnis qu', '', '', '0001461624792630', 34, 'sale', 695, 9, 8, '1624792734.jpg', 6, 9, 42, 0, '[\"mag\"]', 'Ab ducimus ipsa am', '5', NULL, '', 9, NULL, 1, '7', '83', '1', '1993-05-27', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:02:11', 46, NULL),
(147, 'en', 146, 124, 147, 'Deserunt dolorem aut', 'Mollitia in omnis qu', NULL, '', '0001461624792630', 34, 'sale', 695, 9, 8, '1624792734.jpg', 6, 9, 42, 3, '[\"mag\"]', 'Ab ducimus ipsa am', '4', 'Deserunt ullam itaqu', NULL, 10, NULL, 1, '7', '83', '1', '1993-05-27', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:02:11', 46, NULL),
(148, 'nep', 149, 124, 148, NULL, 'Qui voluptate aut na', '', '', '0001481624792764', 35, 'rent', 558, 2, 1, '1624792764.jpg', 1, 1, 440, 0, '[\"Anim\",\"eos\"]', 'Sint iure consectetu', '2', NULL, '', 12, NULL, 0, '5', '29', '1', '1987-07-14', 3, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:04:24', 46, NULL),
(149, 'en', 148, 124, 149, 'Culpa ratione totam ', 'Qui voluptate aut na', NULL, '', '0001481624792764', 36, 'rent', 558, 2, 1, '1624792764.jpg', 1, 1, 440, 8, '[\"Anim\",\"eos\"]', 'Sint iure consectetu', '3', 'Dolores elit in off', NULL, 12, NULL, 1, '5', '29', '1', '1987-07-14', 3, 0, 0, 1, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:04:24', 46, NULL),
(150, 'nep', 151, 120, 150, NULL, 'Fuga Voluptate aut ', '', '', '0001501624793898', 33, 'sale', 661, 9, 1, '1624793898.jpg', 1, 4, 43, 0, '[\"poss\",\"Consequatur\",\"ut\",\"exerc\"]', 'Commodi in fugiat u', '2,5', NULL, '', 1, NULL, 0, '6', '30', '2', '2000-07-13', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:23:18', 46, NULL),
(151, 'en', 150, 120, 151, 'Sit architecto arch', 'Fuga Voluptate aut ', NULL, '', '0001501624793898', 34, 'sale', 661, 9, 1, '1624793898.jpg', 1, 4, 43, 9, '[\"poss\",\"Consequatur\",\"ut\",\"exerc\"]', 'Commodi in fugiat u', '3,4', 'Autem excepturi exce', NULL, 1, NULL, 1, '6', '30', '2', '2000-07-13', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:23:18', 46, NULL),
(152, 'nep', 153, 118, 152, NULL, 'Assumenda laudantium', '', '', '0001521624795021', 36, 'rent', 413, 10, 1, '1624795022.jpg', 5, 2, 861, 0, '[\"Non\",\"voluptas\",\"autem\"]', 'Dolorem proident ex', '5', NULL, '', 5, NULL, 1, '0', '12', '1', '1971-05-14', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:42:02', 46, NULL),
(153, 'en', 152, 118, 153, 'Exercitationem digni', 'Assumenda laudantium', NULL, '', '0001521624795021', 36, 'rent', 413, 10, 1, '1624795022.jpg', 5, 2, 861, 9, '[\"Non\",\"voluptas\",\"autem\"]', 'Dolorem proident ex', '4', 'Labore ipsum ut sed ', NULL, 6, NULL, 1, '0', '12', '1', '1971-05-14', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:42:02', 46, NULL),
(154, 'nep', 155, 118, 154, NULL, 'Libero soluta sint ', '', '', '0001541624795066', 33, 'sale', 92, 6, 9, '1624795066.jpg', 8, 6, 827, 0, '[\"soluta\",\"proide\"]', 'Tempora ad impedit ', '2,5', NULL, '', 3, NULL, 0, '7', '1', '1', '2008-03-01', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:42:46', 46, NULL),
(155, 'en', 154, 118, 155, 'Aspernatur omnis sit', 'Libero soluta sint ', NULL, '', '0001541624795066', 34, 'sale', 92, 6, 9, '1624795066.jpg', 8, 6, 827, 5, '[\"soluta\",\"proide\"]', 'Tempora ad impedit ', '3,4', 'Assumenda totam dolo', NULL, 3, NULL, 1, '7', '1', '1', '2008-03-01', 0, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:42:46', 46, NULL),
(156, 'nep', 157, 129, 156, NULL, 'Dolore voluptate ut ', '', '', '0001561624795385', 36, 'rent', 649, 6, 10, '1624795385.jpg', 5, 2, 725, 0, '[\"perferendis\",\"Est\",\"officia\"]', 'Quis nemo cillum qui', '2,5', NULL, '', 2, NULL, 1, '0', '82', '3', '2014-08-21', 15, 0, 0, 0, '2021-07-06', '2021-07-06', 0, '2021-06-27 17:48:06', 46, NULL),
(157, 'en', 156, 22, 157, 'Dolor aperiam ea dig', 'Dolore voluptate ut ', NULL, '', '0001561624795385', 36, 'rent', 649, 6, 10, '1624795385.jpg', 5, 2, 725, 8, '[\"perferendis\",\"Est\",\"officia\"]', 'Quis nemo cillum qui', '3,4', 'Quod laudantium des', NULL, 1, NULL, 1, '0', '82', '3', '2014-08-21', 15, 0, 0, 2, '2021-07-06', '2021-07-06', 0, '2021-04-21 17:48:06', 46, NULL),
(158, 'nep', 159, 130, 158, NULL, 'Consequatur laborio', '', '', '0001581625027231', 36, 'rent', 148, 10, 8, '1625027231.jpg', 5, 2, 564, 0, '[\"et\"]', 'In numquam similique', '5', NULL, '', 4, NULL, 0, '5', '46', '2', '1974-07-18', 10, 0, 1, 0, '2021-07-07', '2021-07-09', 0, '2020-05-06 10:18:12', 46, NULL),
(159, 'en', 158, 22, 159, 'Ipsum sint quia re', 'Consequatur laborio', NULL, '', '0001581625027231', 36, 'rent', 148, 10, 8, '1625027231.jpg', 5, 2, 564, 2, '[\"et\"]', 'In numquam similique', '4', 'Numquam repellendus', NULL, 3, NULL, 0, '5', '46', '2', '1974-07-18', 30, 0, 0, 13, '2021-07-07', '2021-07-09', 0, '2020-05-06 10:12:11', 46, NULL),
(160, 'nep', 161, 138, 160, NULL, 'Sed non minus ullam ', '', '', '0001601625468325', 34, 'sale', 126, 5, 3, '', 4, 8, 490, 0, '[\"quasi\",\"ve\"]', 'Expedita dolore in c', '5', NULL, '', 9, NULL, 1, '4', '48', '3', '2021-11-27', 0, 0, 1, 0, '2021-07-15', '2021-07-15', 0, '2021-07-05 12:43:46', 46, NULL),
(161, 'en', 160, 138, 161, 'Doloremque odit eum ', 'Sed non minus ullam ', NULL, '', '0001601625468325', 34, 'sale', 126, 5, 3, NULL, 4, 8, 490, 2, '[\"quasi\",\"ve\"]', 'Expedita dolore in c', '4', 'Cupiditate quis proi', NULL, 10, NULL, 1, '4', '48', '3', '2021-11-27', 0, 0, 0, 0, '2021-07-15', '2021-07-15', 0, '2021-07-05 12:43:46', 46, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_documents`
--

CREATE TABLE `property_documents` (
  `id` bigint(20) NOT NULL,
  `property_doc` varchar(200) DEFAULT NULL,
  `doc_type` varchar(200) DEFAULT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property_limitations`
--

CREATE TABLE `property_limitations` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(250) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `icon` text NOT NULL,
  `is_visible` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_limitations`
--

INSERT INTO `property_limitations` (`id`, `content_lang`, `child_id`, `title`, `description`, `slug`, `icon`, `is_visible`, `created_on`) VALUES
(2, 'en', 3, 'Max images', 'Total num of images allowed', 'max_images_en', 'image', 1, '2021-06-08 11:13:28'),
(3, 'nep', 2, 'अधिकतम छविहरू', 'छविहरूको कुल संख्या जुन अनुमति दिइनेछ', 'max_images_nep', 'fa-500px', 1, '2021-06-08 11:13:28'),
(4, 'en', 5, 'Max 360 images', 'Total num of 360  images allowed', 'max_360_images_en', 'image', 1, '2021-06-08 11:13:28'),
(5, 'nep', 4, 'अधिकतम images 360० छविहरू', 'अधिकतम images 360० छविहरू प्रवेश गर्न अनुमति दिइनेछ', 'max_360_images_nep', 'fa-500px', 1, '2021-06-08 11:13:28'),
(6, 'en', 7, 'Max youtube videos', 'Total num of youtube videos allowed', 'max_youtube_videos_en', 'file-video', 1, '2021-06-08 11:13:28'),
(7, 'nep', 6, 'अधिकतम यूट्यूब भिडियो', 'अधिकतम YouTube भिडियोहरू जुन प्रविष्ट गर्न सकिन्छ', 'max_youtube_videos_nep', 'fa-500px', 1, '2021-06-08 11:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `property_report`
--

CREATE TABLE `property_report` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `reason` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `comment` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_review`
--

CREATE TABLE `property_review` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `property_review` longtext DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `rating` bigint(20) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `property_cat` varchar(200) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `property_icon` varchar(200) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `content_lang`, `child_id`, `property_cat`, `title`, `property_icon`, `is_active`, `created_by`, `created_on`) VALUES
(33, 'nep', 34, 'sale', 'घर', 'flaticon-real-estate-2', 1, 1, '2021-04-07 12:52:32'),
(34, 'en', 33, 'sale', 'House', 'flaticon-real-estate-2', 1, 1, '2021-04-07 12:52:32'),
(35, 'nep', 36, 'rent,sale', 'भिल्ला', 'flaticon-sauna', 1, 1, '2021-04-07 15:04:39'),
(36, 'en', 35, 'rent,sale', 'Villa', 'flaticon-sauna', 1, 1, '2021-04-07 15:04:39'),
(49, 'nep', 50, 'sale', 'अपार्ट्मेन्ट ', 'flaticon-real-estate', 1, 1, '2021-04-11 15:09:45'),
(50, 'en', 49, 'sale', 'Apartment', 'flaticon-real-estate', 1, 1, '2021-04-11 15:09:46'),
(51, 'nep', 52, 'rent', 'कार्यालय', 'flaticon-municipality', 1, 1, '2021-04-16 12:30:03'),
(52, 'en', 51, 'sale', 'Office', 'flaticon-municipality', 1, 1, '2021-04-16 12:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `prop_package_count`
--

CREATE TABLE `prop_package_count` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `user_package_breakdown_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `content_lang`, `child_id`, `title`, `description`, `icon`, `is_active`, `created_on`) VALUES
(1, 'nep', 2, 'सम्पत्ति व्यवस्थापन', 'लोरेम इप्सुम केवल प्रिन्टिंग र त्य्प्सेत्तीनग उद्योग को डमी पाठ हो।', 'flaticon-house', 1, '2021-05-09 20:15:00'),
(2, 'en', 1, 'Property Management', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ', 'flaticon-house', 1, '2021-05-09 20:15:00'),
(3, 'nep', 4, 'धितो सेवा', 'लोरेम इप्सुम केवल प्रिन्टिंग र त्य्प्सेत्तीनग उद्योग को डमी पाठ हो।', 'flaticon-hosting', 1, '2021-05-09 20:20:22'),
(4, 'en', 3, 'Mortgage Service', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ', 'flaticon-hosting', 1, '2021-05-09 20:20:22'),
(5, 'nep', 6, 'परामर्श सेवा', 'लोरेम इप्सुम केवल प्रिन्टिंग र त्य्प्सेत्तीनग उद्योग को डमी पाठ हो।', 'flaticon-washing-machine', 1, '2021-05-09 20:20:45'),
(6, 'en', 5, 'Consulting Service', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 'flaticon-washing-machine', 1, '2021-05-09 20:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` bigint(20) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `content_lang` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `is_visible` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `child_id`, `content_lang`, `slug`, `title`, `description`, `icon`, `price`, `is_visible`) VALUES
(1, 2, 'en', 'property_verification_en', 'Property_verification', 'Property_verification', 'check', '5000', 1),
(2, 1, 'nep', 'property_verification_nep', 'property_verification', 'property_verification', '', '5000', 1),
(3, 4, 'en', 'property_photoshoot_en', 'Property_photoshoot', 'Property_photoshoot', 'camera', '5000', 1),
(4, 3, 'nep', 'property_photoshoot_nep', 'property_photoshoot', 'property_photoshoot', '', '5000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` char(40) COLLATE utf8_swedish_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `caption` mediumtext NOT NULL,
  `is_editable` int(11) NOT NULL DEFAULT 1,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(11) NOT NULL,
  `image` varchar(64) COLLATE utf8_swedish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `content_lang` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `info` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_swedish_ci NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `content_lang`, `child_id`, `info`, `position`, `content`, `created_on`) VALUES
(9, 'testimonial-2.jpg', 'ओलिभर बेडडोज', 'nep', NULL, 'धेरै राम्रो र छिटो', 'रिपोर्टर, इनसाइट्स', 'ल्याण्डमार्कसँग काम गर्नु भनेको परिवारको सदस्य हुनु जस्तो हो जसले सबै चीज ठीक गर्न सक्दछ। तिनीहरूलाई थाहा छ कि तपाईंलाई के चाहिन्छ, वास्तवमा तपाईंलाई आवश्यक परेको बेला।', '2021-04-18 15:02:16'),
(10, 'testimonial-2.jpg', 'Oliver Beddows', 'en', 9, 'Very good and fast', 'Reporter, Insights', 'Working with Landmark is like having a family member who can fix everything. They know what you need, exactly when you need it.', '2021-04-18 15:02:16'),
(11, 'testimonial-1.png', 'योएल लिम्बु', 'nep', NULL, 'धेरै राम्रो र छिटो', 'रिपोर्टर, इनसाइट्स', 'ल्याण्डमार्कसँग काम गर्नु भनेको परिवारको सदस्य हुनु जस्तो हो जसले सबै चीज ठीक गर्न सक्दछ। तिनीहरूलाई थाहा छ कि तपाईंलाई के चाहिन्छ, वास्तवमा तपाईंलाई आवश्यक परेको बेला।', '2021-04-18 15:02:16'),
(12, 'testimonial-1.png', 'Yoel Limbu', 'en', 11, 'Very good and fast', 'Reporter, Insights', 'Working with Landmark is like having a family member who can fix everything. They know what you need, exactly when you need it.', '2021-04-18 15:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `gateway` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `package_id` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `gateway`, `amount`, `user_id`, `package_id`, `created_on`) VALUES
(1, '1', '400000', 46, 30, '2021-06-22 10:08:21'),
(2, '1', '400000', 46, 30, '2021-06-22 10:10:08'),
(3, '1', '400000', 46, 30, '2021-06-22 10:11:41'),
(4, '1', '400000', 46, 30, '2021-06-22 10:13:22'),
(5, '1', '400000', 46, 30, '2021-06-22 10:13:59'),
(6, '1', '400000', 46, 30, '2021-06-22 10:14:34'),
(7, '1', '400000', 46, 30, '2021-06-22 10:20:55'),
(8, '1', '400000', 46, 30, '2021-06-22 10:21:34'),
(9, '1', '400000', 46, 30, '2021-06-22 10:24:54'),
(10, '1', '10000', 46, 32, '2021-06-22 10:25:27'),
(11, '1', '400000', 46, 30, '2021-06-22 10:33:33'),
(12, '1', '400000', 46, 30, '2021-06-22 10:34:34'),
(13, '1', '400000', 46, 30, '2021-06-22 10:35:37'),
(14, '1', '400000', 46, 30, '2021-06-22 10:36:40'),
(15, '1', '400000', 46, 30, '2021-06-22 10:37:17'),
(16, '1', '400000', 46, 30, '2021-06-22 10:38:51'),
(17, '1', '12000', 46, 42, '2021-06-22 15:28:54'),
(18, '0', '', 46, 1, '2021-06-22 16:57:24'),
(19, '1', '12000', 46, 42, '2021-06-27 14:36:39'),
(20, '2', '12000', 46, 42, '2021-06-27 14:38:23'),
(21, '1', '12000', 46, 42, '2021-06-27 14:39:01'),
(22, '1', '12000', 46, 42, '2021-06-27 14:40:28'),
(23, '1', '12000', 46, 42, '2021-06-27 14:41:45'),
(24, '1', '12000', 46, 42, '2021-06-27 14:47:15'),
(25, '1', '12000', 46, 42, '2021-06-27 14:48:28'),
(26, '1', '12000', 46, 42, '2021-06-27 14:49:44'),
(27, '1', '12000', 46, 42, '2021-06-27 14:50:07'),
(28, '1', '12000', 46, 42, '2021-06-27 14:50:27'),
(29, '1', '12000', 46, 42, '2021-06-27 14:50:44'),
(30, '1', '12000', 46, 42, '2021-06-27 14:52:07'),
(31, '1', '12000', 46, 42, '2021-06-27 14:52:40'),
(32, '1', '5000', 46, 40, '2021-06-27 14:52:45'),
(33, '1', '12000', 46, 42, '2021-06-27 17:01:36'),
(34, '1', '400000', 46, 30, '2021-06-27 17:01:39'),
(35, '1', '5000', 46, 40, '2021-06-27 17:47:03'),
(36, '1', '12000', 46, 42, '2021-06-29 13:33:42'),
(37, '1', '12000', 46, 42, '2021-06-29 14:27:51'),
(38, '1', '5000', 46, 40, '2021-07-05 11:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `incorrect_login` int(11) NOT NULL DEFAULT 0,
  `name` varchar(150) COLLATE utf8_swedish_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `image` mediumtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `post` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_swedish_ci NOT NULL,
  `access_token` varchar(250) COLLATE utf8_swedish_ci DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `phone_verification_token` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `phone_verified` int(11) NOT NULL DEFAULT 0,
  `email_verification_token` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `phone` varchar(64) COLLATE utf8_swedish_ci DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `parent_id`, `incorrect_login`, `name`, `role`, `image`, `username`, `post`, `address`, `auth_key`, `access_token`, `email_verified`, `phone_verification_token`, `phone_verified`, `email_verification_token`, `password_hash`, `password_reset_token`, `email`, `status`, `phone`, `is_verified`, `created_on`, `updated_on`, `created_by`, `updated_by`) VALUES
(1, NULL, 0, 'Administratorr', 1, '1621255841.jpg', 'admin@codecater.com', NULL, 'my adress is here', 'CCMimSr-D7e7tZPa-5OM0gpJVUI6uKjl', 'CCMimSr-D7e7tZPa-5OM0gpJVUI6uKjla', 0, 'pUfeU-PMiwI-m3EXuqrLwpTn70qnUJlL', 0, 'Grr9TvJoSbrBv6l0yIgYckVo8lX7b0Yl_1620667269', '$2y$13$xCdL76J2wvJUj9.vnECW6OzGdR8v5.TSVObBJ4WbSL1IpMqCSeg8m', 'a4Fkvr_WMwS1BaH27gPzOl_bfuho690x_1472543386', 'admin@codecater.com', 10, '98184596877', 1, '2020-09-14 10:48:24', NULL, 1, 1),
(45, NULL, 0, 'User', 2, 'profile.jpg', 'user@codecater.com', NULL, 'Chabahil', '', 'CCMimSr-D7e7tZPa-5OM0gpJVUI6uKjl1', 0, 'pUfeU-PMiwI-m3EXuqrLwpTn70qnUJlL', 0, 'Grr9TvJoSbrBv6l0yIgYckVo8lX7b0Yl_1620667269', '$2y$13$T1afttmB71.Isiwimsm0jeHW5/15GbDZPZrvtg.gFsXI08Xlccmpe', '', 'user@gmail.com', 10, '9818459687', 1, '2020-09-14 10:48:24', NULL, 1, NULL),
(46, NULL, 0, 'Yoel Limbuu', 2, '1625028497.png', 'agent@gmail.com', NULL, 'Sukedhara', 'CSqpWgiVFl7OEZ169aaeus4q_XxcdKp-', 'CCMimSr-D7e7tZPa-5OM0gpJVUI6uKjl2', 0, 'pUfeU-PMiwI-m3EXuqrLwpTn70qnUJlL', 0, 'Grr9TvJoSbrBv6l0yIgYckVo8lX7b0Yl_1620667269', '$2y$13$T1afttmB71.Isiwimsm0jeHW5/15GbDZPZrvtg.gFsXI08Xlccmpe', NULL, 'agent@gmail.com', 10, '9856547145', 1, '2021-04-24 14:35:33', NULL, 1, 46),
(48, NULL, 0, 'Company', 3, 'profile.jpg', 'company@gmail.com', NULL, 'Sukedhara', '8', 'CCMimSr-D7e7tZPa-5OM0gpJVUI6uKjl7', 0, 'pUfeU-PMiwI-m3EXuqrLwpTn70qnUJlL', 0, 'Grr9TvJoSbrBv6l0yIgYckVo8lX7b0Yl_1620667269', '$2y$13$a9doeiEly.g8hkK29NXE4OfT03W845zLP.ldxnTWGKyAch16FaLaS', NULL, 'company@gmail.com', 10, '980102010', 1, '2021-04-24 14:35:33', NULL, 1, 1),
(61, NULL, 0, 'Ryan Delaney', 4, NULL, 'jnerd48@gmail.com', NULL, '', 'XL6soWDpn9R0Z-G775yMnwhmfzF--Y95', 'u4OL2MWVXKssloKnlCEPFNt2f-VqwVWZ', 1, 'pUfeU-PMiwI-m3EXuqrLwpTn70qnUJlL', 0, 'Grr9TvJoSbrBv6l0yIgYckVo8lX7b0Yl_1620667269', '$2y$13$YRuOa90uCREy51rbA8STfO09Qw2Vzc.UhnRAfC9rjEp2p/sp5Aw7S', 'vVo5S5Y68bxCYyTX1XB_zsVs56NJrwqf_1620667269', 'jnerd48@gmail.com', 10, '', 0, '2021-05-10 23:06:09', NULL, NULL, NULL),
(62, NULL, 0, 'Bethany Hahn', 2, '16207113017.jpg', 'piry@mailinator.com', NULL, 'Kapan', 'oHT8EFdSDZ5c9FmEbUVatAyfeeJs1lIB', 'YTV8VlTfjQ7kWizFRTZxUDiQquHGcTYW', 0, 'FZulNh5mHiNuIWedbJEgPw8-XIANXxSC', 0, 'gVCm7sK4u6WFtUzBPv9JVfTlij55eHJo_1620711259', '$2y$13$U3KY64P.5c78q4ZzwB6LRuk3Bg8LgZPW7Us9NzsCfHsUKY3tjtgLC', 'qTgrBq4zDCBqeQOilryp4QArKCUMNUTK_1620711259', 'piry@mailinator.com', 10, '+1 (334) 694-7664', 0, '2021-05-11 11:19:19', NULL, NULL, 62),
(63, NULL, 0, 'Myra Bishop', 4, NULL, 'nebligerem@amazon-aws-us.com', NULL, '', 'sr6XJzTU0xW-27Nzsznmvx21otxABQ0u', 'bhkD1k-YRl-_8A8HES2qwIQtoEyhvccM', 1, 'LPRoRCEsM2Sl5C6qCkHNnOesJD8RwLcy', 0, 'S42OyuzRjjrrWKjWyytOX6gE6A1A1Ifh_1620836156', '$2y$13$Bxm34tevtxoU2iLj2N6UyO5NrhNdUxQqzOxEoGOB3fMoC0HuxnKta', 'R9Inx_E8Yq4LPAIf0npZUw80RrBgDn0Y_1620836156', 'nebligerem@amazon-aws-us.com', 10, '', 0, '2021-05-12 22:00:56', NULL, NULL, NULL),
(64, NULL, 0, NULL, NULL, 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=285194439649788&height=50&width=50&ext=1624512324&hash=AeQJ73NGURx_mbZ74fE', 'codecaters@gmail.com', NULL, NULL, '9-NIQQSQ4Q0xUZgt0WemFP72Sy5NHTFx', 'SswJHOpAmhSMzgT4lWLSr_QaEoLwim2t', 0, '9IaqjN1MF5X5GnB2H5_Nmw1ARQQsPcBZ', 0, 'DP44U8YFF2DVlhHtETyE50yvCLo4a3Tt_1621920326', '$2y$13$Cyghquk5AhYEvraVALaw3eBfsXS1XtMVqimPo9AmvxoalZmQWZSM6', 'i08ILJafQitT0iiwxSk3E1DvWyu9m-0e_1621920326', 'codecaters@gmail.com', 10, NULL, 0, '2021-05-25 11:10:26', NULL, NULL, NULL),
(81, NULL, 0, 'Garrett Tucker', 4, NULL, 'Garrett Tucker', NULL, '', 'Q_yTqLu_TrIFjZYSIQaQOsdIMfdxlUPf', 'Kjd9UNzJOGU6d6OK4ragvx0Hgc6Hsv50', 0, '707804', 0, 'cspVvRaM3IMfFzE8-t5uQ28Fy4EghAs7_1622201195', '$2y$13$KrdVkdR6k4y7IdRF84f/VuFlVQiHotvF0DFPzGQmagvydC91dpN1.', 'peEvvSnC4kbl8yVrxvSSiHR8tTuwehDk_1622201195', '', 10, '9818454474', 0, '2021-05-28 17:11:35', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `first_tour` int(11) NOT NULL DEFAULT 0,
  `remember_free` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `citizenship`, `dob`, `description`, `first_tour`, `remember_free`) VALUES
(15, 61, NULL, NULL, '', 0, 0),
(16, 62, NULL, NULL, '', 0, 0),
(17, 63, NULL, NULL, '', 0, 0),
(18, 46, NULL, NULL, '', 0, 0),
(19, 1, NULL, NULL, '', 0, 0),
(20, 64, NULL, NULL, NULL, 0, 0),
(37, 81, NULL, NULL, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `id` bigint(20) NOT NULL,
  `doc_name` varchar(250) NOT NULL,
  `user_doc` varchar(200) DEFAULT NULL,
  `doc_type` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_documents`
--

INSERT INTO `user_documents` (`id`, `doc_name`, `user_doc`, `doc_type`, `user_id`, `created_on`) VALUES
(11, 'another file', NULL, 'application/pdf', 1, '2021-05-17 00:54:28'),
(14, 'asdc', '16220978245.pdf', 'application/pdf', 1, '2021-05-27 12:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_package_breakdown`
--

CREATE TABLE `user_package_breakdown` (
  `id` bigint(20) NOT NULL,
  `package_code` varchar(250) NOT NULL,
  `user_package_relation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(250) NOT NULL,
  `type_slug` varchar(250) NOT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `price` varchar(250) DEFAULT NULL,
  `has_expired` int(11) DEFAULT NULL,
  `has_obstruction` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp(),
  `expiring_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_package_breakdown`
--

INSERT INTO `user_package_breakdown` (`id`, `package_code`, `user_package_relation_id`, `user_id`, `type`, `type_slug`, `used`, `quantity`, `price`, `has_expired`, `has_obstruction`, `created_on`, `updated_on`, `expiring_on`) VALUES
(1, '15191', 1, 46, 'propertyLimitations', 'max_images_en', 0, 1, NULL, NULL, NULL, '2021-06-17 19:46:15', '2021-06-17 19:46:15', NULL),
(2, '15191', 1, 46, 'addTypes', 'add_property_en', 50, 50, NULL, NULL, NULL, '2021-06-17 19:46:15', '2021-06-17 19:46:15', '2021-06-27'),
(3, '15191', 1, 46, 'addTypes', 'hot_en', 11, 50, NULL, NULL, NULL, '2021-06-17 19:46:15', '2021-06-17 19:46:15', '2021-06-27'),
(4, '15191', 1, 46, 'addTypes', 'urgent_en', 23, 50, NULL, NULL, NULL, '2021-06-17 19:46:15', '2021-06-17 19:46:15', '2021-06-27'),
(5, '25174', 2, 46, 'propertyLimitations', 'max_images_en', 0, 1, NULL, NULL, NULL, '2021-06-17 19:51:33', '2021-06-17 19:51:33', NULL),
(6, '25174', 2, 46, 'addTypes', 'add_property_en', 50, 50, NULL, NULL, NULL, '2021-06-17 19:51:33', '2021-06-17 19:51:33', '2021-06-27'),
(7, '25174', 2, 46, 'addTypes', 'hot_en', 50, 50, NULL, NULL, NULL, '2021-06-17 19:51:33', '2021-06-17 19:51:33', '2021-06-27'),
(8, '25174', 2, 46, 'addTypes', 'urgent_en', 10, 50, NULL, NULL, NULL, '2021-06-17 19:51:33', '2021-06-17 19:51:33', '2021-06-27'),
(9, '38751', 3, 46, 'propertyLimitations', 'max_images_en', 0, 1, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', NULL),
(10, '38751', 3, 46, 'addTypes', 'add_property_en', 21, 50, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', '2021-06-27'),
(11, '38751', 3, 46, 'addTypes', 'hot_en', 5, 50, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', '2021-06-27'),
(12, '38751', 3, 46, 'addTypes', 'urgent_en', 6, 50, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', '2021-06-27'),
(13, '38751', 3, 46, 'propertyLimitations', 'max_360_images_en', 0, 2, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', NULL),
(14, '38751', 3, 46, 'propertyLimitations', 'max_youtube_videos_en', 0, 2, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', NULL),
(15, '38751', 3, 46, 'addTypes', 'super_hot_en', 2, 50, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', '2021-06-22'),
(16, '38751', 3, 46, 'addTypes', 'featured_en', 1, 50, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', '2021-06-22'),
(17, '38751', 3, 46, 'serviceRequests', 'property_verification_en', 0, 2, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', NULL),
(18, '38751', 3, 46, 'serviceRequests', 'property_photoshoot_en', 0, 2, NULL, NULL, NULL, '2021-06-17 19:56:30', '2021-06-17 19:56:30', NULL),
(19, '49544', 4, 46, 'propertyLimitations', 'max_images_en', 0, 1, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', NULL),
(20, '49544', 4, 46, 'addTypes', 'add_property_en', 10, 10, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', '2021-06-28'),
(21, '49544', 4, 46, 'addTypes', 'hot_en', 0, 5, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', '2021-06-28'),
(22, '49544', 4, 46, 'addTypes', 'urgent_en', 0, 5, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', '2021-06-28'),
(23, '49544', 4, 46, 'propertyLimitations', 'max_360_images_en', 0, 2, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', NULL),
(24, '49544', 4, 46, 'propertyLimitations', 'max_youtube_videos_en', 0, 2, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', NULL),
(25, '49544', 4, 46, 'addTypes', 'super_hot_en', 0, 1, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', '2021-06-23'),
(26, '49544', 4, 46, 'addTypes', 'featured_en', 0, 1, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', '2021-06-23'),
(27, '49544', 4, 46, 'serviceRequests', 'property_verification_en', 0, 2, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', NULL),
(28, '49544', 4, 46, 'serviceRequests', 'property_photoshoot_en', 0, 2, NULL, NULL, NULL, '2021-06-18 11:29:47', '2021-06-18 11:29:47', NULL),
(111, '247730', 24, 46, 'propertyLimitations', 'max_images_en', 0, 1, NULL, NULL, NULL, '2021-06-22 10:38:51', '2021-06-22 10:38:51', NULL),
(112, '247730', 24, 46, 'addTypes', 'add_property_en', 5, 5, NULL, NULL, NULL, '2021-06-22 10:38:51', '2021-06-22 10:38:51', '2021-07-02'),
(113, '247730', 24, 46, 'addTypes', 'hot_en', 1, 5, NULL, NULL, NULL, '2021-06-22 10:38:51', '2021-06-22 10:38:51', '2021-07-02'),
(114, '247730', 24, 46, 'addTypes', 'urgent_en', 1, 5, NULL, NULL, NULL, '2021-06-22 10:38:51', '2021-06-22 10:38:51', '2021-07-02'),
(115, '381057', 38, 46, 'propertyLimitations', 'max_images_en', 0, 11, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', NULL),
(116, '381057', 38, 46, 'propertyLimitations', 'max_360_images_en', 0, 10, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', NULL),
(117, '381057', 38, 46, 'addTypes', 'add_property_en', 11, 11, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', '2021-07-07'),
(118, '381057', 38, 46, 'addTypes', 'super_hot_en', 3, 50, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', '2021-07-07'),
(119, '381057', 38, 46, 'addTypes', 'urgent_en', 2, 10, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', '2021-07-07'),
(120, '381057', 38, 46, 'addTypes', 'featured_en', 3, 10, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', '2021-07-07'),
(121, '381057', 38, 46, 'serviceRequests', 'property_verification_en', 0, 20, NULL, NULL, NULL, '2021-06-27 14:52:45', '2021-06-27 14:52:45', NULL),
(122, '403544', 40, 46, 'propertyLimitations', 'max_images_en', 0, 1, NULL, NULL, NULL, '2021-06-27 17:01:39', '2021-06-27 17:01:39', NULL),
(123, '403544', 40, 46, 'addTypes', 'add_property_en', 2, 50, NULL, NULL, NULL, '2021-06-27 17:01:39', '2021-06-27 17:01:39', '2021-07-07'),
(124, '403544', 40, 46, 'addTypes', 'hot_en', 2, 5, NULL, NULL, NULL, '2021-06-27 17:01:39', '2021-06-27 17:01:39', '2021-07-07'),
(125, '403544', 40, 46, 'addTypes', 'urgent_en', 1, 5, NULL, NULL, NULL, '2021-06-27 17:01:39', '2021-06-27 17:01:39', '2021-07-07'),
(126, '418680', 41, 46, 'propertyLimitations', 'max_images_en', 0, 11, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', NULL),
(127, '418680', 41, 46, 'propertyLimitations', 'max_360_images_en', 0, 10, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', NULL),
(128, '418680', 41, 46, 'addTypes', 'add_property_en', 2, 11, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', '2021-07-07'),
(129, '418680', 41, 46, 'addTypes', 'super_hot_en', 1, 10, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', '2021-07-07'),
(130, '418680', 41, 46, 'addTypes', 'urgent_en', 2, 10, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', '2021-07-07'),
(131, '418680', 41, 46, 'addTypes', 'featured_en', 1, 10, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', '2021-07-07'),
(132, '418680', 41, 46, 'serviceRequests', 'property_verification_en', 0, 20, NULL, NULL, NULL, '2021-06-27 17:47:03', '2021-06-27 17:47:03', NULL),
(133, '442520', 44, 46, 'propertyLimitations', 'max_images_en', 0, 11, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', NULL),
(134, '442520', 44, 46, 'propertyLimitations', 'max_360_images_en', 0, 10, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', NULL),
(135, '442520', 44, 46, 'addTypes', 'add_property_en', 1, 50, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', '2021-07-15'),
(136, '442520', 44, 46, 'addTypes', 'super_hot_en', 0, 30, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', '2021-07-15'),
(137, '442520', 44, 46, 'addTypes', 'urgent_en', 0, 30, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', '2021-07-15'),
(138, '442520', 44, 46, 'addTypes', 'featured_en', 1, 30, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', '2021-07-15'),
(139, '442520', 44, 46, 'serviceRequests', 'property_verification_en', 0, 20, NULL, NULL, NULL, '2021-07-05 11:08:47', '2021-07-05 11:08:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_package_relation`
--

CREATE TABLE `user_package_relation` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `package_id` bigint(20) DEFAULT NULL,
  `package_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`package_details`)),
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_package_relation`
--

INSERT INTO `user_package_relation` (`id`, `user_id`, `package_id`, `package_details`, `created_on`) VALUES
(1, 46, 1, '{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"title\":\"Basicc\",\"slug\":\"basic_en\",\"subtitle\":\"Basic\",\"description\":\"Basic\",\"order\":\"1\",\"price\":\"\",\"is_free\":\"1\",\"is_active\":\"1\",\"roles\":\"2,4\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"top\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"twice as others\\\"}}\",\"created_by\":\"0\",\"created_on\":\"2021-06-09 16:34:43\",\"updated_on\":\"2021-06-09 16:34:43\",\"packageAttributes\":[{\"id\":\"81\",\"package_id\":\"1\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"82\",\"package_id\":\"1\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"83\",\"package_id\":\"1\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"84\",\"package_id\":\"1\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-17 19:46:14'),
(2, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"2\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-17 19:51:33'),
(3, 46, 32, '{\"id\":\"32\",\"content_lang\":\"en\",\"child_id\":\"33\",\"title\":\"Premium\",\"slug\":\"premium_en\",\"subtitle\":\"Labore tenetur incid\",\"description\":\"premium deal\",\"order\":\"3\",\"price\":\"10000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"top\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"twice as others\\\"}}\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:12\",\"updated_on\":\"2021-06-11 08:20:12\",\"packageAttributes\":[{\"id\":\"89\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"90\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"91\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"92\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"93\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_360_images_en\",\"title\":\"max 360 images\",\"property_limiations_id\":\"4\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:25\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"4\",\"content_lang\":\"en\",\"child_id\":\"5\",\"title\":\"Max 360 images\",\"description\":\"Total num of 360  images allowed\",\"slug\":\"max_360_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"94\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_youtube_videos_en\",\"title\":\"max youtube videos\",\"property_limiations_id\":\"6\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:25\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"6\",\"content_lang\":\"en\",\"child_id\":\"7\",\"title\":\"Max youtube videos\",\"description\":\"Total num of youtube videos allowed\",\"slug\":\"max_youtube_videos_en\",\"icon\":\"file-video\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"95\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"super_hot_en\",\"title\":\"super hot\",\"property_limiations_id\":null,\"ad_types_id\":\"5\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"5\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":{\"id\":\"5\",\"content_lang\":\"en\",\"child_id\":\"6\",\"slug\":\"super_hot_en\",\"icon\":\"home-alt\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Super Hot\",\"description\":\"No of super hot properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"96\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"featured_en\",\"title\":\"featured\",\"property_limiations_id\":null,\"ad_types_id\":\"9\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"5\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":{\"id\":\"9\",\"content_lang\":\"en\",\"child_id\":\"10\",\"slug\":\"featured_en\",\"icon\":\"arrow-alt-circle-up\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Featured\",\"description\":\"No of featured properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"97\",\"package_id\":\"32\",\"type\":\"serviceRequests\",\"slug\":\"property_verification_en\",\"title\":\"property_verification\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"1\",\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"1\",\"child_id\":\"2\",\"content_lang\":\"en\",\"slug\":\"property_verification_en\",\"title\":\"Property_verification\",\"description\":\"Property_verification\",\"icon\":\"check\",\"price\":\"5000\",\"is_visible\":\"1\"}},{\"id\":\"98\",\"package_id\":\"32\",\"type\":\"serviceRequests\",\"slug\":\"property_photoshoot_en\",\"title\":\"property_photoshoot\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"3\",\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"3\",\"child_id\":\"4\",\"content_lang\":\"en\",\"slug\":\"property_photoshoot_en\",\"title\":\"Property_photoshoot\",\"description\":\"Property_photoshoot\",\"icon\":\"camera\",\"price\":\"5000\",\"is_visible\":\"1\"}}]}', '2021-06-17 19:56:30'),
(4, 46, 32, '{\"id\":\"32\",\"content_lang\":\"en\",\"child_id\":\"33\",\"title\":\"Premium\",\"slug\":\"premium_en\",\"subtitle\":\"Labore tenetur incid\",\"description\":\"premium deal\",\"order\":\"3\",\"price\":\"10000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"top\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"twice as others\\\"}}\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:12\",\"updated_on\":\"2021-06-11 08:20:12\",\"packageAttributes\":[{\"id\":\"89\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"90\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"91\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"92\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"93\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_360_images_en\",\"title\":\"max 360 images\",\"property_limiations_id\":\"4\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:25\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"4\",\"content_lang\":\"en\",\"child_id\":\"5\",\"title\":\"Max 360 images\",\"description\":\"Total num of 360  images allowed\",\"slug\":\"max_360_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"94\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_youtube_videos_en\",\"title\":\"max youtube videos\",\"property_limiations_id\":\"6\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:25\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"6\",\"content_lang\":\"en\",\"child_id\":\"7\",\"title\":\"Max youtube videos\",\"description\":\"Total num of youtube videos allowed\",\"slug\":\"max_youtube_videos_en\",\"icon\":\"file-video\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"95\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"super_hot_en\",\"title\":\"super hot\",\"property_limiations_id\":null,\"ad_types_id\":\"5\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"5\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":{\"id\":\"5\",\"content_lang\":\"en\",\"child_id\":\"6\",\"slug\":\"super_hot_en\",\"icon\":\"home-alt\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Super Hot\",\"description\":\"No of super hot properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"96\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"featured_en\",\"title\":\"featured\",\"property_limiations_id\":null,\"ad_types_id\":\"9\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"5\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":{\"id\":\"9\",\"content_lang\":\"en\",\"child_id\":\"10\",\"slug\":\"featured_en\",\"icon\":\"arrow-alt-circle-up\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Featured\",\"description\":\"No of featured properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"97\",\"package_id\":\"32\",\"type\":\"serviceRequests\",\"slug\":\"property_verification_en\",\"title\":\"property_verification\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"1\",\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"1\",\"child_id\":\"2\",\"content_lang\":\"en\",\"slug\":\"property_verification_en\",\"title\":\"Property_verification\",\"description\":\"Property_verification\",\"icon\":\"check\",\"price\":\"5000\",\"is_visible\":\"1\"}},{\"id\":\"98\",\"package_id\":\"32\",\"type\":\"serviceRequests\",\"slug\":\"property_photoshoot_en\",\"title\":\"property_photoshoot\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"3\",\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"3\",\"child_id\":\"4\",\"content_lang\":\"en\",\"slug\":\"property_photoshoot_en\",\"title\":\"Property_photoshoot\",\"description\":\"Property_photoshoot\",\"icon\":\"camera\",\"price\":\"5000\",\"is_visible\":\"1\"}}]}', '2021-06-18 11:29:46'),
(10, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:10:08'),
(11, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:11:41'),
(12, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:13:22'),
(13, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:13:59'),
(14, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:14:34'),
(15, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:20:55'),
(16, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:21:34'),
(17, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:24:54');
INSERT INTO `user_package_relation` (`id`, `user_id`, `package_id`, `package_details`, `created_on`) VALUES
(18, 46, 32, '{\"id\":\"32\",\"content_lang\":\"en\",\"child_id\":\"33\",\"title\":\"Premium\",\"slug\":\"premium_en\",\"subtitle\":\"Labore tenetur incid\",\"description\":\"premium deal\",\"order\":\"4\",\"price\":\"10000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"top\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"twice as others\\\"}}\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:12\",\"updated_on\":\"2021-06-11 08:20:12\",\"packageAttributes\":[{\"id\":\"89\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"90\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"91\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"92\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"93\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_360_images_en\",\"title\":\"max 360 images\",\"property_limiations_id\":\"4\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:25\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"4\",\"content_lang\":\"en\",\"child_id\":\"5\",\"title\":\"Max 360 images\",\"description\":\"Total num of 360  images allowed\",\"slug\":\"max_360_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"94\",\"package_id\":\"32\",\"type\":\"propertyLimitations\",\"slug\":\"max_youtube_videos_en\",\"title\":\"max youtube videos\",\"property_limiations_id\":\"6\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:20:25\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"6\",\"content_lang\":\"en\",\"child_id\":\"7\",\"title\":\"Max youtube videos\",\"description\":\"Total num of youtube videos allowed\",\"slug\":\"max_youtube_videos_en\",\"icon\":\"file-video\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"95\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"super_hot_en\",\"title\":\"super hot\",\"property_limiations_id\":null,\"ad_types_id\":\"5\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"5\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":{\"id\":\"5\",\"content_lang\":\"en\",\"child_id\":\"6\",\"slug\":\"super_hot_en\",\"icon\":\"home-alt\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Super Hot\",\"description\":\"No of super hot properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"96\",\"package_id\":\"32\",\"type\":\"addTypes\",\"slug\":\"featured_en\",\"title\":\"featured\",\"property_limiations_id\":null,\"ad_types_id\":\"9\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"5\",\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":{\"id\":\"9\",\"content_lang\":\"en\",\"child_id\":\"10\",\"slug\":\"featured_en\",\"icon\":\"arrow-alt-circle-up\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Featured\",\"description\":\"No of featured properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"97\",\"package_id\":\"32\",\"type\":\"serviceRequests\",\"slug\":\"property_verification_en\",\"title\":\"property_verification\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"1\",\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"1\",\"child_id\":\"2\",\"content_lang\":\"en\",\"slug\":\"property_verification_en\",\"title\":\"Property_verification\",\"description\":\"Property_verification\",\"icon\":\"check\",\"price\":\"5000\",\"is_visible\":\"1\"}},{\"id\":\"98\",\"package_id\":\"32\",\"type\":\"serviceRequests\",\"slug\":\"property_photoshoot_en\",\"title\":\"property_photoshoot\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"3\",\"quantity\":\"2\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-11 08:21:05\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"3\",\"child_id\":\"4\",\"content_lang\":\"en\",\"slug\":\"property_photoshoot_en\",\"title\":\"Property_photoshoot\",\"description\":\"Property_photoshoot\",\"icon\":\"camera\",\"price\":\"5000\",\"is_visible\":\"1\"}}]}', '2021-06-22 10:25:27'),
(19, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:33:33'),
(20, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:34:34'),
(21, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:35:37'),
(22, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:36:40'),
(23, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:37:17'),
(24, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"order\":\"3\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-22 10:38:51'),
(25, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-22 15:28:54'),
(26, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:36:39'),
(27, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:38:23'),
(28, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:39:01'),
(29, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:40:28'),
(30, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:41:45'),
(31, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:48:28'),
(32, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:49:45'),
(33, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:50:07'),
(34, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:50:27'),
(35, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:50:44'),
(36, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:52:07'),
(37, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 14:52:40'),
(38, 46, 40, '{\"id\":\"40\",\"content_lang\":\"en\",\"child_id\":\"41\",\"title\":\"Diamond\",\"slug\":\"diamond_en\",\"subtitle\":\"Et Vero Voluptate Re\",\"description\":\"Asdvasdv\",\"position\":null,\"position_id\":\"0\",\"order\":\"2\",\"price\":\"5000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"diamond level\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"\\\"}}\",\"created_by\":\"1\",\"created_on\":\"2021-06-18 15:20:18\",\"updated_on\":\"2021-06-18 15:20:18\",\"packageAttributes\":[{\"id\":\"162\",\"package_id\":\"40\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"11\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"163\",\"package_id\":\"40\",\"type\":\"propertyLimitations\",\"slug\":\"max_360_images_en\",\"title\":\"max 360 images\",\"property_limiations_id\":\"4\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"4\",\"content_lang\":\"en\",\"child_id\":\"5\",\"title\":\"Max 360 images\",\"description\":\"Total num of 360  images allowed\",\"slug\":\"max_360_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"164\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"11\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"165\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"super_hot_en\",\"title\":\"super hot\",\"property_limiations_id\":null,\"ad_types_id\":\"5\",\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"5\",\"content_lang\":\"en\",\"child_id\":\"6\",\"slug\":\"super_hot_en\",\"icon\":\"home-alt\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Super Hot\",\"description\":\"No of super hot properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"166\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"167\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"featured_en\",\"title\":\"featured\",\"property_limiations_id\":null,\"ad_types_id\":\"9\",\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"9\",\"content_lang\":\"en\",\"child_id\":\"10\",\"slug\":\"featured_en\",\"icon\":\"arrow-alt-circle-up\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Featured\",\"description\":\"No of featured properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"168\",\"package_id\":\"40\",\"type\":\"serviceRequests\",\"slug\":\"property_verification_en\",\"title\":\"property_verification\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"1\",\"quantity\":\"20\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"1\",\"child_id\":\"2\",\"content_lang\":\"en\",\"slug\":\"property_verification_en\",\"title\":\"Property_verification\",\"description\":\"Property_verification\",\"icon\":\"check\",\"price\":\"5000\",\"is_visible\":\"1\"}}]}', '2021-06-27 14:52:45'),
(39, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-27 17:01:36'),
(40, 46, 30, '{\"id\":\"30\",\"content_lang\":\"en\",\"child_id\":\"31\",\"title\":\"Standard\",\"slug\":\"standard_en\",\"subtitle\":\"\",\"description\":\"\\u091b\\u0935\\u093f\\u0939\\u0930\\u0942\\u0915\\u094b \\u0915\\u0941\\u0932 \\u0938\\u0902\\u0916\\u094d\\u092f\\u093e \\u091c\\u0941\\u0928 \\u0905\\u0928\\u0941\\u092e\\u0924\\u093f \\u0926\\u093f\\u0907\\u0928\\u0947\\u091b\",\"position\":null,\"position_id\":\"0\",\"order\":\"4\",\"price\":\"400000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 22:22:07\",\"updated_on\":\"2021-06-10 22:22:07\",\"packageAttributes\":[{\"id\":\"85\",\"package_id\":\"30\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:24:19\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"86\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"1\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:26:00\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"87\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"hot_en\",\"title\":\"hot properties\",\"property_limiations_id\":null,\"ad_types_id\":\"3\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 14:53:08\",\"adTypes\":{\"id\":\"3\",\"content_lang\":\"en\",\"child_id\":\"4\",\"slug\":\"hot_en\",\"icon\":\"temperature-hot\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Hot\",\"description\":\"No of hot  properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"88\",\"package_id\":\"30\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent properties\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"5\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-10 15:04:02\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null}]}', '2021-06-27 17:01:39'),
(41, 46, 40, '{\"id\":\"40\",\"content_lang\":\"en\",\"child_id\":\"41\",\"title\":\"Diamond\",\"slug\":\"diamond_en\",\"subtitle\":\"Et Vero Voluptate Re\",\"description\":\"Asdvasdv\",\"position\":null,\"position_id\":\"0\",\"order\":\"2\",\"price\":\"5000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"diamond level\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"\\\"}}\",\"created_by\":\"1\",\"created_on\":\"2021-06-18 15:20:18\",\"updated_on\":\"2021-06-18 15:20:18\",\"packageAttributes\":[{\"id\":\"162\",\"package_id\":\"40\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"11\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"163\",\"package_id\":\"40\",\"type\":\"propertyLimitations\",\"slug\":\"max_360_images_en\",\"title\":\"max 360 images\",\"property_limiations_id\":\"4\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"4\",\"content_lang\":\"en\",\"child_id\":\"5\",\"title\":\"Max 360 images\",\"description\":\"Total num of 360  images allowed\",\"slug\":\"max_360_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"164\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"11\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"165\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"super_hot_en\",\"title\":\"super hot\",\"property_limiations_id\":null,\"ad_types_id\":\"5\",\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"5\",\"content_lang\":\"en\",\"child_id\":\"6\",\"slug\":\"super_hot_en\",\"icon\":\"home-alt\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Super Hot\",\"description\":\"No of super hot properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"166\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"167\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"featured_en\",\"title\":\"featured\",\"property_limiations_id\":null,\"ad_types_id\":\"9\",\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"9\",\"content_lang\":\"en\",\"child_id\":\"10\",\"slug\":\"featured_en\",\"icon\":\"arrow-alt-circle-up\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Featured\",\"description\":\"No of featured properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"168\",\"package_id\":\"40\",\"type\":\"serviceRequests\",\"slug\":\"property_verification_en\",\"title\":\"property_verification\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"1\",\"quantity\":\"20\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"1\",\"child_id\":\"2\",\"content_lang\":\"en\",\"slug\":\"property_verification_en\",\"title\":\"Property_verification\",\"description\":\"Property_verification\",\"icon\":\"check\",\"price\":\"5000\",\"is_visible\":\"1\"}}]}', '2021-06-27 17:47:03'),
(42, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-29 13:33:42'),
(43, 46, 42, '{\"id\":\"42\",\"content_lang\":\"en\",\"child_id\":\"43\",\"title\":\"Whatever\",\"slug\":\"whatever_en\",\"subtitle\":\"Casdc\",\"description\":\"Casdc\",\"position\":\"before\",\"position_id\":\"1\",\"order\":\"1\",\"price\":\"12000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:51:07\",\"updated_on\":\"2021-06-22 12:51:07\",\"packageAttributes\":[]}', '2021-06-29 14:27:51');
INSERT INTO `user_package_relation` (`id`, `user_id`, `package_id`, `package_details`, `created_on`) VALUES
(44, 46, 40, '{\"id\":\"40\",\"content_lang\":\"en\",\"child_id\":\"41\",\"title\":\"Diamond\",\"slug\":\"diamond_en\",\"subtitle\":\"Et Vero Voluptate Re\",\"description\":\"Asdvasdv\",\"position\":null,\"position_id\":\"0\",\"order\":\"2\",\"price\":\"5000\",\"is_free\":\"0\",\"is_active\":\"1\",\"roles\":\"2\",\"package_services\":\"{\\\"1\\\":{\\\"editable_id\\\":\\\"1\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"search ranking\\\",\\\"value\\\":\\\"diamond level\\\"},\\\"3\\\":{\\\"editable_id\\\":\\\"3\\\",\\\"type\\\":\\\"packageServices\\\",\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"exposure\\\",\\\"value\\\":\\\"\\\"}}\",\"created_by\":\"1\",\"created_on\":\"2021-06-18 15:20:18\",\"updated_on\":\"2021-06-18 15:20:18\",\"packageAttributes\":[{\"id\":\"162\",\"package_id\":\"40\",\"type\":\"propertyLimitations\",\"slug\":\"max_images_en\",\"title\":\"max images\",\"property_limiations_id\":\"2\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"11\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"2\",\"content_lang\":\"en\",\"child_id\":\"3\",\"title\":\"Max images\",\"description\":\"Total num of images allowed\",\"slug\":\"max_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"163\",\"package_id\":\"40\",\"type\":\"propertyLimitations\",\"slug\":\"max_360_images_en\",\"title\":\"max 360 images\",\"property_limiations_id\":\"4\",\"ad_types_id\":null,\"service_requests_id\":null,\"quantity\":\"10\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":{\"id\":\"4\",\"content_lang\":\"en\",\"child_id\":\"5\",\"title\":\"Max 360 images\",\"description\":\"Total num of 360  images allowed\",\"slug\":\"max_360_images_en\",\"icon\":\"image\",\"is_visible\":\"1\",\"created_on\":\"2021-06-08 11:13:28\"},\"serviceRequests\":null},{\"id\":\"164\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"add_property_en\",\"title\":\"total no of properties\",\"property_limiations_id\":null,\"ad_types_id\":\"1\",\"service_requests_id\":null,\"quantity\":\"50\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"1\",\"content_lang\":\"en\",\"child_id\":\"2\",\"slug\":\"add_property_en\",\"icon\":\"home\",\"price\":\"10000\",\"runtime\":\"300\",\"total_ad_limit\":\"1000\",\"title\":\"Total no of Properties\",\"description\":\"No of properties you can add at a time\",\"in_property\":\"0\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"165\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"super_hot_en\",\"title\":\"super hot\",\"property_limiations_id\":null,\"ad_types_id\":\"5\",\"service_requests_id\":null,\"quantity\":\"30\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"5\",\"content_lang\":\"en\",\"child_id\":\"6\",\"slug\":\"super_hot_en\",\"icon\":\"home-alt\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Super Hot\",\"description\":\"No of super hot properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"166\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"urgent_en\",\"title\":\"urgent\",\"property_limiations_id\":null,\"ad_types_id\":\"7\",\"service_requests_id\":null,\"quantity\":\"30\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"7\",\"content_lang\":\"en\",\"child_id\":\"8\",\"slug\":\"urgent_en\",\"icon\":\"abacus\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"urgent\",\"description\":\"No of urgent properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"167\",\"package_id\":\"40\",\"type\":\"addTypes\",\"slug\":\"featured_en\",\"title\":\"featured\",\"property_limiations_id\":null,\"ad_types_id\":\"9\",\"service_requests_id\":null,\"quantity\":\"30\",\"runtime\":\"10\",\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":{\"id\":\"9\",\"content_lang\":\"en\",\"child_id\":\"10\",\"slug\":\"featured_en\",\"icon\":\"arrow-alt-circle-up\",\"price\":\"1000\",\"runtime\":\"30\",\"total_ad_limit\":\"1000\",\"title\":\"Featured\",\"description\":\"No of featured properties you can add at a time\",\"in_property\":\"1\"},\"propertyLimiations\":null,\"serviceRequests\":null},{\"id\":\"168\",\"package_id\":\"40\",\"type\":\"serviceRequests\",\"slug\":\"property_verification_en\",\"title\":\"property_verification\",\"property_limiations_id\":null,\"ad_types_id\":null,\"service_requests_id\":\"1\",\"quantity\":\"20\",\"runtime\":null,\"created_by\":\"1\",\"created_on\":\"2021-06-22 12:31:15\",\"adTypes\":null,\"propertyLimiations\":null,\"serviceRequests\":{\"id\":\"1\",\"child_id\":\"2\",\"content_lang\":\"en\",\"slug\":\"property_verification_en\",\"title\":\"Property_verification\",\"description\":\"Property_verification\",\"icon\":\"check\",\"price\":\"5000\",\"is_visible\":\"1\"}}]}', '2021-07-05 11:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role` text NOT NULL,
  `display_name` varchar(250) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `display_name`, `is_active`, `created_on`, `created_by`) VALUES
(1, 'admin', 'Administrator', 1, '2021-02-14 18:14:15', NULL),
(2, 'agent', 'Agent', 1, '2021-03-30 09:01:58', 1),
(3, 'company', 'Company', 1, '2021-03-30 09:02:12', 1),
(4, 'customer', 'Customer', 1, '2021-03-30 09:01:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`id`, `title`, `description`, `is_active`, `content_lang`, `child_id`, `created_by`, `created_on`) VALUES
(1, NULL, NULL, 0, 'nep', NULL, 1, '2021-04-28 12:43:14'),
(2, 'Dolor laborum accusa', '<p>Minima odit accusant. asdcasdc</p>', 1, 'en', 1, 1, '2021-04-28 12:43:14'),
(3, NULL, NULL, 0, 'nep', NULL, 1, '2021-04-28 16:07:48'),
(4, 'Natus expedita nulla', '<p>Voluptatem quo venia.</p>', 1, 'en', 3, 1, '2021-04-28 16:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `verification_actions`
--

CREATE TABLE `verification_actions` (
  `id` bigint(20) NOT NULL,
  `table_name` varchar(64) COLLATE utf8_swedish_ci NOT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  `table_column` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `table_value` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `verification_comment` longtext COLLATE utf8_swedish_ci DEFAULT NULL,
  `verification_status` tinyint(4) NOT NULL DEFAULT 0,
  `edited_status` tinyint(4) NOT NULL DEFAULT 0,
  `verified_by` bigint(20) DEFAULT NULL,
  `verified_on` datetime DEFAULT NULL,
  `requested_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `requested_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `verification_actions`
--

INSERT INTO `verification_actions` (`id`, `table_name`, `table_id`, `table_column`, `table_value`, `comment`, `verification_comment`, `verification_status`, `edited_status`, `verified_by`, `verified_on`, `requested_on`, `requested_by`) VALUES
(1, 'property_directory', 16, NULL, '{\"title\":\"317\",\"address\":\"Nihil modi doloribus\",\"property_code\":\"000161619778460\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"317\",\"bedrooms\":\"33\",\"hall\":\"34\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"4\",\"price\":\"649\",\"map_location\":\"At exercitation non \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"dicta\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:27:40', 1),
(2, 'property_directory', 17, NULL, '{\"title\":\"317\",\"address\":\"Nihil modi doloribus\",\"property_code\":\"000171619778483\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"317\",\"bedrooms\":\"33\",\"hall\":\"34\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"4\",\"price\":\"649\",\"map_location\":\"At exercitation non \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"dicta\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:28:03', 1),
(3, 'property_directory', 18, NULL, '{\"title\":\"317\",\"address\":\"Nihil modi doloribus\",\"property_code\":\"000171619778483\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"317\",\"bedrooms\":\"33\",\"hall\":\"34\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"4\",\"price\":\"649\",\"map_location\":\"At exercitation non \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"dicta\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:28:03', 1),
(4, 'property_directory', 19, NULL, '{\"title\":\"317\",\"address\":\"Nihil modi doloribus\",\"property_code\":\"000191619778564\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"317\",\"bedrooms\":\"33\",\"hall\":\"34\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"4\",\"price\":\"649\",\"map_location\":\"At exercitation non \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"dicta\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:29:24', 1),
(5, 'property_directory', 20, NULL, '{\"title\":\"317\",\"address\":\"Nihil modi doloribus\",\"property_code\":\"000191619778564\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"317\",\"bedrooms\":\"33\",\"hall\":\"34\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"4\",\"price\":\"649\",\"map_location\":\"At exercitation non \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"dicta\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:29:24', 1),
(6, 'property_directory', 21, NULL, '{\"title\":\"446\",\"address\":\"Consectetur enim ad\",\"property_code\":\"000211619778701\",\"property_type\":49,\"property_cat\":\"sale\",\"property_size\":\"446\",\"bedrooms\":\"15\",\"hall\":\"61\",\"image\":null,\"bathrooms\":\"99\",\"kitchen\":\"94\",\"price\":\"322\",\"map_location\":\"Incidunt veritatis \",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"Odit\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:31:41', 1),
(7, 'property_directory', 22, NULL, '{\"title\":\"446\",\"address\":\"Consectetur enim ad\",\"property_code\":\"000211619778701\",\"property_type\":49,\"property_cat\":\"sale\",\"property_size\":\"446\",\"bedrooms\":\"15\",\"hall\":\"61\",\"image\":null,\"bathrooms\":\"99\",\"kitchen\":\"94\",\"price\":\"322\",\"map_location\":\"Incidunt veritatis \",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"Odit\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:31:41', 1),
(8, 'property_directory', 23, NULL, '{\"title\":\"11\",\"address\":\"Est dolor quisquam f\",\"property_code\":\"000231619778813\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"11\",\"bedrooms\":\"8\",\"hall\":\"99\",\"image\":null,\"bathrooms\":\"57\",\"kitchen\":\"86\",\"price\":\"72\",\"map_location\":\"Numquam proident in\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"v\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:33:33', 1),
(9, 'property_directory', 24, NULL, '{\"title\":\"11\",\"address\":\"Est dolor quisquam f\",\"property_code\":\"000231619778813\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"11\",\"bedrooms\":\"8\",\"hall\":\"99\",\"image\":null,\"bathrooms\":\"57\",\"kitchen\":\"86\",\"price\":\"72\",\"map_location\":\"Numquam proident in\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"v\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:33:33', 1),
(10, 'property_directory', 25, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000251619779726\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"in\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:48:46', 1),
(11, 'property_directory', 26, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000251619779726\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"in\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:48:46', 1),
(12, 'property_directory', 27, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000271619780159\",\"property_type\":35,\"property_cat\":\"sale\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:55:59', 1),
(13, 'property_directory', 28, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000271619780159\",\"property_type\":35,\"property_cat\":\"sale\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:55:59', 1),
(14, 'property_directory', 29, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000291619780270\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619780270d.png\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:57:50', 1),
(15, 'property_directory', 30, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000291619780270\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619780270d.png\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 10:57:50', 1),
(16, 'property_directory', 31, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000311619780893\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:14', 1),
(17, 'property_directory', 32, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000311619780893\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:14', 1),
(18, 'property_directory', 33, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000331619780898\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:19', 1),
(19, 'property_directory', 34, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000331619780898\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:19', 1),
(20, 'property_directory', 35, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000351619780903\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:24', 1),
(21, 'property_directory', 36, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000351619780903\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:24', 1),
(22, 'property_directory', 37, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000371619780913\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:33', 1),
(23, 'property_directory', 38, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000371619780913\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:33', 1),
(24, 'property_directory', 39, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000391619780918\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:38', 1),
(25, 'property_directory', 40, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000391619780918\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:08:38', 1),
(26, 'property_directory', 41, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000411619780943\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619780943.jfif\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:09:03', 1),
(27, 'property_directory', 42, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000411619780943\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619780943.jfif\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:09:03', 1),
(28, 'property_directory', 43, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000431619781431\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619781432.jfif\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:17:12', 1),
(29, 'property_directory', 44, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000431619781431\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619781432.jfif\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:17:12', 1),
(30, 'property_directory', 45, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000451619781473\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619781473.jfif\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:17:53', 1),
(31, 'property_directory', 46, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000451619781473\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"1619781473.jfif\",\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:17:53', 1),
(32, 'property_directory', 47, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000471619783369\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:49:29', 1),
(33, 'property_directory', 48, NULL, '{\"title\":\"3\",\"address\":\"Fugit quisquam aut \",\"property_code\":\"000471619783369\",\"property_type\":35,\"property_cat\":\"\",\"property_size\":\"3\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":null,\"bathrooms\":\"3\",\"kitchen\":\"2\",\"price\":\"980\",\"map_location\":\"Autem consequat Tem\",\"amenities\":\"2\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-04-30 11:49:29', 1),
(34, 'property_directory', 49, NULL, '{\"title\":\"2\",\"address\":\"Nulla corporis volup\",\"property_code\":\"000491619960743\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"2\",\"bedrooms\":\"7\",\"hall\":\"2\",\"image\":\"16199607432.jpg\",\"bathrooms\":\"7\",\"kitchen\":\"9\",\"price\":\"72\",\"map_location\":\"Ad eligendi est pra\",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"nesciunt\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-02 13:05:44', 1),
(35, 'property_directory', 50, NULL, '{\"title\":\"2\",\"address\":\"Nulla corporis volup\",\"property_code\":\"000491619960743\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"2\",\"bedrooms\":\"7\",\"hall\":\"2\",\"image\":\"16199607432.jpg\",\"bathrooms\":\"7\",\"kitchen\":\"9\",\"price\":\"72\",\"map_location\":\"Ad eligendi est pra\",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"nesciunt\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-02 13:05:44', 1),
(36, 'property_directory', 51, NULL, '{\"title\":\"7\",\"address\":\"Quisquam velit asper\",\"property_code\":\"000511620015160\",\"property_type\":33,\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"10\",\"hall\":\"5\",\"image\":\"16200151611.png\",\"bathrooms\":\"9\",\"kitchen\":\"8\",\"price\":\"106\",\"map_location\":\"Excepturi molestiae \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"casdca\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-03 04:12:41', 1),
(37, 'property_directory', 52, NULL, '{\"title\":\"7\",\"address\":\"Quisquam velit asper\",\"property_code\":\"000511620015160\",\"property_type\":33,\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"10\",\"hall\":\"5\",\"image\":\"16200151611.png\",\"bathrooms\":\"9\",\"kitchen\":\"8\",\"price\":\"106\",\"map_location\":\"Excepturi molestiae \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"casdca\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-03 04:12:41', 1),
(38, 'property_directory', 53, NULL, '{\"title\":\"67\",\"address\":\"Quae facere sapiente\",\"property_code\":\"000531620234651\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"67\",\"bedrooms\":\"20\",\"hall\":\"62\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"26\",\"price\":\"115\",\"map_location\":\"Eveniet ducimus en\",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 17:10:51', 1),
(39, 'property_directory', 54, NULL, '{\"title\":\"67\",\"address\":\"Quae facere sapiente\",\"property_code\":\"000531620234651\",\"property_type\":35,\"property_cat\":\"rent\",\"property_size\":\"67\",\"bedrooms\":\"20\",\"hall\":\"62\",\"image\":null,\"bathrooms\":\"64\",\"kitchen\":\"26\",\"price\":\"115\",\"map_location\":\"Eveniet ducimus en\",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 17:10:51', 1),
(40, 'property_directory', 55, NULL, '{\"title\":\"89\",\"address\":\"Qui velit ad velit \",\"property_code\":\"000551620234689\",\"property_type\":33,\"property_cat\":\"sale\",\"property_size\":\"89\",\"bedrooms\":\"37\",\"hall\":\"23\",\"image\":null,\"bathrooms\":\"61\",\"kitchen\":\"72\",\"price\":\"196\",\"map_location\":\"Sed dolore odit minu\",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 17:11:29', 1),
(41, 'property_directory', 56, NULL, '{\"title\":\"89\",\"address\":\"Qui velit ad velit \",\"property_code\":\"000551620234689\",\"property_type\":33,\"property_cat\":\"sale\",\"property_size\":\"89\",\"bedrooms\":\"37\",\"hall\":\"23\",\"image\":null,\"bathrooms\":\"61\",\"kitchen\":\"72\",\"price\":\"196\",\"map_location\":\"Sed dolore odit minu\",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 17:11:29', 1),
(42, 'property_directory', 57, NULL, '{\"title\":\"46\",\"address\":\"Inventore est adipis\",\"property_code\":\"000571620235039\",\"property_type\":35,\"mohda\":\"Incidunt sit aliqua\",\"road_type\":\"Esse necessitatibus \",\"build_year\":\"1982\",\"property_face\":\"Et qui minim debitis\",\"property_cat\":\"rent\",\"property_size\":\"46\",\"bedrooms\":\"45\",\"hall\":\"81\",\"image\":null,\"bathrooms\":\"16\",\"kitchen\":\"70\",\"price\":\"996\",\"map_location\":\"Accusantium aut qui \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 17:17:19', 1),
(43, 'property_directory', 58, NULL, '{\"title\":\"46\",\"address\":\"Inventore est adipis\",\"property_code\":\"000571620235039\",\"property_type\":35,\"mohda\":\"Incidunt sit aliqua\",\"road_type\":\"Esse necessitatibus \",\"build_year\":\"1982\",\"property_face\":\"Et qui minim debitis\",\"property_cat\":\"rent\",\"property_size\":\"46\",\"bedrooms\":\"45\",\"hall\":\"81\",\"image\":null,\"bathrooms\":\"16\",\"kitchen\":\"70\",\"price\":\"996\",\"map_location\":\"Accusantium aut qui \",\"amenities\":\"5\",\"description\":null,\"add_image\":null,\"city\":\"1\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 17:17:19', 1),
(44, 'property_directory', 59, NULL, '{\"title\":null,\"address\":\"Exercitationem id es\",\"property_code\":\"000591620240269\",\"property_type\":35,\"mohda\":\"Esse omnis pariatur\",\"road_type\":\"Obcaecati et quibusd\",\"build_year\":\"1973\",\"property_face\":\"Nesciunt voluptates\",\"property_cat\":\"rent\",\"property_size\":\"81\",\"bedrooms\":\"99\",\"hall\":\"8\",\"image\":\"1620240269o.png\",\"bathrooms\":\"55\",\"kitchen\":\"30\",\"price\":\"88\",\"map_location\":\"Non veritatis in vit\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"16202402694o.png\\\",\\\"type\\\":\\\"image\\\\\\/png\\\"},{\\\"filename\\\":\\\"16202402692x.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16202402696a.png\\\",\\\"type\\\":\\\"image\\\\\\/png\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 18:44:29', 1),
(45, 'property_directory', 60, NULL, '{\"title\":null,\"address\":\"Exercitationem id es\",\"property_code\":\"000591620240269\",\"property_type\":35,\"mohda\":\"Esse omnis pariatur\",\"road_type\":\"Obcaecati et quibusd\",\"build_year\":\"1973\",\"property_face\":\"Nesciunt voluptates\",\"property_cat\":\"rent\",\"property_size\":\"81\",\"bedrooms\":\"99\",\"hall\":\"8\",\"image\":\"1620240269o.png\",\"bathrooms\":\"55\",\"kitchen\":\"30\",\"price\":\"88\",\"map_location\":\"Non veritatis in vit\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"16202402694o.png\\\",\\\"type\\\":\\\"image\\\\\\/png\\\"},{\\\"filename\\\":\\\"16202402692x.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16202402696a.png\\\",\\\"type\\\":\\\"image\\\\\\/png\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-05 18:44:29', 1),
(46, 'property_directory', 61, NULL, '{\"title\":null,\"address\":\"Eu in qui recusandae\",\"property_code\":\"000151620461961\",\"property_type\":33,\"mohda\":\"Omnis fuga A totam \",\"road_type\":\"A perferendis natus \",\"build_year\":\"2009\",\"property_face\":\"Quidem culpa consec\",\"property_cat\":\"sale\",\"property_size\":\"26\",\"bedrooms\":\"49\",\"hall\":\"12\",\"image\":\"\",\"bathrooms\":\"85\",\"kitchen\":\"30\",\"price\":\"107\",\"map_location\":\"Laudantium eum aper\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"8\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-08 08:19:21', 1),
(47, 'property_directory', 62, NULL, '{\"title\":null,\"address\":\"Eu in qui recusandae\",\"property_code\":\"000151620461961\",\"property_type\":33,\"mohda\":\"Omnis fuga A totam \",\"road_type\":\"A perferendis natus \",\"build_year\":\"2009\",\"property_face\":\"Quidem culpa consec\",\"property_cat\":\"sale\",\"property_size\":\"26\",\"bedrooms\":\"49\",\"hall\":\"12\",\"image\":\"\",\"bathrooms\":\"85\",\"kitchen\":\"30\",\"price\":\"107\",\"map_location\":\"Laudantium eum aper\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"8\",\"created_by\":1,\"keywords\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-08 08:19:21', 1),
(48, 'property_directory', 63, NULL, '{\"title\":null,\"address\":\"Adipisicing fugiat s\",\"property_code\":\"000171620759805\",\"property_type\":35,\"mohda\":\"61\",\"road_type\":\"2\",\"build_year\":\"1982-12-03\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"7\",\"bedrooms\":\"4\",\"hall\":\"4\",\"image\":\"16207598061.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"367\",\"map_location\":\"Commodo molestias vo\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620759806b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207598063 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207598063D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b3.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b4.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"8\",\"created_by\":1,\"keywords\":\"[\\\"Nesciunt\\\",\\\"doloribus\\\"]\",\"youtube_videos\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:03:27', 1),
(49, 'property_directory', 64, NULL, '{\"title\":null,\"address\":\"Adipisicing fugiat s\",\"property_code\":\"000171620759805\",\"property_type\":35,\"mohda\":\"61\",\"road_type\":\"2\",\"build_year\":\"1982-12-03\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"7\",\"bedrooms\":\"4\",\"hall\":\"4\",\"image\":\"16207598061.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"367\",\"map_location\":\"Commodo molestias vo\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620759806b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207598063 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207598063D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b3.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759806b4.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"8\",\"created_by\":1,\"keywords\":\"[\\\"Nesciunt\\\",\\\"doloribus\\\"]\",\"youtube_videos\":\"landmark\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:03:27', 1),
(50, 'property_directory', 65, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000191620759963\",\"property_type\":33,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207599634.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"57\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620759963b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207599633 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207599633D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759963b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759963b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"eum\\\",\\\"ven\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:06:03', 1),
(51, 'property_directory', 66, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000191620759963\",\"property_type\":33,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207599634.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"57\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620759963b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207599633 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207599633D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759963b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620759963b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"eum\\\",\\\"ven\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:06:03', 1),
(52, 'property_directory', 67, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000211620760018\",\"property_type\":33,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207600184.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"57\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620760018b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600183 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600183D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760018b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760018b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"eum\\\",\\\"ven\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:06:58', 1),
(53, 'property_directory', 68, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000211620760018\",\"property_type\":33,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207600184.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"57\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620760018b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600183 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600183D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760018b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760018b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"eum\\\",\\\"ven\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:06:58', 1),
(54, 'property_directory', 69, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000231620760053\",\"property_type\":35,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207600534.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"216\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620760054b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600543 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600543D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760054b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760054b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"Est\\\",\\\"et\\\",\\\"dicta\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:07:34', 1),
(55, 'property_directory', 70, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000231620760053\",\"property_type\":35,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207600534.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"216\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620760054b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600543 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600543D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760054b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760054b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"Est\\\",\\\"et\\\",\\\"dicta\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:07:34', 1),
(56, 'property_directory', 71, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000251620760092\",\"property_type\":35,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207600934.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"216\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620760093b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600933 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600933D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760093b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760093b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"Est\\\",\\\"et\\\",\\\"dicta\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:08:13', 1),
(57, 'property_directory', 72, NULL, '{\"title\":null,\"address\":\"Obcaecati est sed po\",\"property_code\":\"000251620760092\",\"property_type\":35,\"mohda\":\"98\",\"road_type\":\"2\",\"build_year\":\"2013-06-26\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"8\",\"bedrooms\":\"10\",\"hall\":\"9\",\"image\":\"16207600934.jpg\",\"bathrooms\":\"10\",\"kitchen\":\"4\",\"price\":\"216\",\"map_location\":\"Laborum Enim vitae \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"[{\\\"filename\\\":\\\"1620760093b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600933 .jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"16207600933D.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760093b1.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"},{\\\"filename\\\":\\\"1620760093b2.jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\"}]\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"Est\\\",\\\"et\\\",\\\"dicta\\\"]\",\"youtube_videos\":\"[\\\"<iframe width=\\\\\\\"560\\\\\\\" height=\\\\\\\"315\\\\\\\" src=\\\\\\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/embed\\\\\\/sO8t_zhmwOE\\\\\\\" title=\\\\\\\"YouTube video player\\\\\\\" frameborder=\\\\\\\"0\\\\\\\" allow=\\\\\\\"accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\\\\\" allowfullscreen><\\\\\\/iframe>\\\"]\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-11 19:08:14', 1),
(58, 'property_directory', 73, NULL, '{\"title\":null,\"address\":\"Placeat est dolores\",\"property_code\":\"000271621132882\",\"property_type\":33,\"mohda\":\"50\",\"road_type\":\"1\",\"build_year\":\"2003-01-27\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"4\",\"hall\":\"10\",\"image\":\"1621132883.jpg\",\"bathrooms\":\"6\",\"kitchen\":\"2\",\"price\":\"792\",\"map_location\":\"Lorem sed architecto\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"[\\\"dolore\\\",\\\"a\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-16 02:41:24', 1),
(59, 'property_directory', 74, NULL, '{\"title\":null,\"address\":\"Placeat est dolores\",\"property_code\":\"000271621132882\",\"property_type\":33,\"mohda\":\"50\",\"road_type\":\"1\",\"build_year\":\"2003-01-27\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"4\",\"hall\":\"10\",\"image\":\"1621132883.jpg\",\"bathrooms\":\"6\",\"kitchen\":\"2\",\"price\":\"792\",\"map_location\":\"Lorem sed architecto\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"[\\\"dolore\\\",\\\"a\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-16 02:41:24', 1),
(60, 'user_documents', 9, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-16 19:18:52', NULL),
(61, 'user_documents', 10, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-16 19:18:52', NULL),
(62, 'user_documents', 11, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-16 19:18:52', NULL),
(63, 'user_documents', 12, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-17 12:18:36', NULL),
(64, 'user_documents', 12, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-17 12:20:46', NULL),
(65, 'user_documents', 13, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-17 12:20:47', NULL),
(66, 'property_directory', 75, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000291621332816\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:13:37', 1),
(67, 'property_directory', 76, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000291621332816\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:13:37', 1),
(68, 'property_directory', 77, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000311621332918\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:15:18', 1),
(69, 'property_directory', 78, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000311621332918\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:15:18', 1),
(70, 'property_directory', 79, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000331621332993\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:16:33', 1),
(71, 'property_directory', 80, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000331621332993\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:16:33', 1),
(72, 'property_directory', 81, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000351621333066\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:17:47', 1),
(73, 'property_directory', 82, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000351621333066\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:17:47', 1),
(74, 'property_directory', 83, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000371621333185\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:19:45', 1),
(75, 'property_directory', 84, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000371621333185\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:19:45', 1);
INSERT INTO `verification_actions` (`id`, `table_name`, `table_id`, `table_column`, `table_value`, `comment`, `verification_comment`, `verification_status`, `edited_status`, `verified_by`, `verified_on`, `requested_on`, `requested_by`) VALUES
(76, 'property_directory', 85, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000391621333218\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:20:18', 1),
(77, 'property_directory', 86, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000391621333218\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:20:18', 1),
(78, 'property_directory', 87, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000411621333245\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:20:45', 1),
(79, 'property_directory', 88, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000411621333245\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:20:45', 1),
(80, 'property_directory', 89, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000431621333318\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:21:59', 1),
(81, 'property_directory', 90, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000431621333318\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:21:59', 1),
(82, 'property_directory', 91, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000451621333352\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:22:32', 1),
(83, 'property_directory', 92, NULL, '{\"title\":null,\"address\":\"Minus voluptate nost\",\"property_code\":\"000451621333352\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"0\",\"price\":\"1\",\"map_location\":\"Dolore commodi quia \",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:22:32', 1),
(84, 'property_directory', 93, NULL, '{\"title\":null,\"address\":\"Error voluptatibus e\",\"property_code\":\"000471621333392\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"1\",\"hall\":\"3\",\"image\":\"\",\"bathrooms\":\"3\",\"kitchen\":\"1\",\"price\":\"207\",\"map_location\":\"Aliquam esse dolorum\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"6\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:23:12', 1),
(85, 'property_directory', 94, NULL, '{\"title\":null,\"address\":\"Error voluptatibus e\",\"property_code\":\"000471621333392\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"1\",\"hall\":\"3\",\"image\":\"\",\"bathrooms\":\"3\",\"kitchen\":\"1\",\"price\":\"207\",\"map_location\":\"Aliquam esse dolorum\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"6\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:23:12', 1),
(86, 'property_directory', 95, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000491621333463\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:24:23', 1),
(87, 'property_directory', 96, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000491621333463\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:24:23', 1),
(88, 'property_directory', 97, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000511621333477\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:24:37', 1),
(89, 'property_directory', 98, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000511621333477\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:24:37', 1),
(90, 'property_directory', 99, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000531621333481\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:24:41', 1),
(91, 'property_directory', 100, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000531621333481\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:24:41', 1),
(92, 'property_directory', 101, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000551621333506\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:25:06', 1),
(93, 'property_directory', 102, NULL, '{\"title\":null,\"address\":\"Sint inventore laud\",\"property_code\":\"000551621333506\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"bedrooms\":\"2\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"3\",\"price\":\"495\",\"map_location\":\"Deserunt laboriosam\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:25:06', 1),
(94, 'property_directory', 103, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000571621333548\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:25:48', 1),
(95, 'property_directory', 104, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000571621333548\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:25:48', 1),
(96, 'property_directory', 105, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000591621333576\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:26:16', 1),
(97, 'property_directory', 106, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000591621333576\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:26:16', 1),
(98, 'property_directory', 107, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000611621333620\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:27:00', 1),
(99, 'property_directory', 108, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000611621333620\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:27:00', 1),
(100, 'property_directory', 109, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000631621333672\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:27:52', 1),
(101, 'property_directory', 110, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000631621333672\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:27:52', 1),
(102, 'property_directory', 111, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000651621333706\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:28:26', 1),
(103, 'property_directory', 112, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000651621333706\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:28:26', 1),
(104, 'property_directory', 113, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000671621333749\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:29:09', 1),
(105, 'property_directory', 114, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000671621333749\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:29:09', 1),
(106, 'property_directory', 115, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000691621333813\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:30:13', 1),
(107, 'property_directory', 116, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000691621333813\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:30:13', 1),
(108, 'property_directory', 117, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000711621333844\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:30:44', 1),
(109, 'property_directory', 118, NULL, '{\"title\":null,\"address\":\"Fugit aut temporibu\",\"property_code\":\"000711621333844\",\"property_type\":35,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"0\",\"hall\":\"4\",\"image\":\"\",\"bathrooms\":\"5\",\"kitchen\":\"4\",\"price\":\"534\",\"map_location\":\"Ipsam repellendus V\",\"amenities\":\"5,2\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:30:44', 1),
(110, 'property_directory', 119, NULL, '{\"title\":null,\"address\":\"Quis qui omnis ratio\",\"property_code\":\"000731621334033\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"3\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"4\",\"price\":\"120\",\"map_location\":\"Est commodi ea esse \",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"6\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:33:53', 1),
(111, 'property_directory', 120, NULL, '{\"title\":null,\"address\":\"Quis qui omnis ratio\",\"property_code\":\"000731621334033\",\"property_type\":49,\"mohda\":\"\",\"road_type\":\"\",\"build_year\":\"\",\"property_face\":\"\",\"property_cat\":\"rent\",\"property_size\":\"\",\"bedrooms\":\"3\",\"hall\":\"2\",\"image\":\"\",\"bathrooms\":\"0\",\"kitchen\":\"4\",\"price\":\"120\",\"map_location\":\"Est commodi ea esse \",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"6\",\"created_by\":1,\"keywords\":\"\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:33:53', 1),
(112, 'property_directory', 121, NULL, '{\"title\":null,\"address\":\"Sit consectetur num\",\"property_code\":\"000751621335052\",\"property_type\":33,\"mohda\":\"33\",\"road_type\":\"3\",\"build_year\":\"2021-11-17\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"4\",\"bedrooms\":\"3\",\"hall\":\"3\",\"image\":\"1621335052.jpg\",\"bathrooms\":\"7\",\"kitchen\":\"8\",\"price\":\"35\",\"map_location\":\"In hic ipsum culpa\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"do\\\",\\\"voluptatem\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:50:53', 1),
(113, 'property_directory', 122, NULL, '{\"title\":null,\"address\":\"Sit consectetur num\",\"property_code\":\"000751621335052\",\"property_type\":33,\"mohda\":\"33\",\"road_type\":\"3\",\"build_year\":\"2021-11-17\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"4\",\"bedrooms\":\"3\",\"hall\":\"3\",\"image\":\"1621335052.jpg\",\"bathrooms\":\"7\",\"kitchen\":\"8\",\"price\":\"35\",\"map_location\":\"In hic ipsum culpa\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"do\\\",\\\"voluptatem\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-18 10:50:53', 1),
(114, 'property_directory', 124, NULL, '{\"title\":null,\"address\":\"Dolore in cum mollit\",\"property_code\":\"000781621857878\",\"property_type\":35,\"mohda\":\"55\",\"road_type\":\"2\",\"build_year\":\"1977-04-10\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"5\",\"bedrooms\":\"7\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"6\",\"kitchen\":\"4\",\"price\":\"689\",\"map_location\":\"Ut dolores voluptate\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"sit\\\",\\\"sunt\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-24 12:04:38', 1),
(115, 'property_directory', 125, NULL, '{\"title\":null,\"address\":\"Dolore in cum mollit\",\"property_code\":\"000781621857878\",\"property_type\":35,\"mohda\":\"55\",\"road_type\":\"2\",\"build_year\":\"1977-04-10\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"5\",\"bedrooms\":\"7\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"6\",\"kitchen\":\"4\",\"price\":\"689\",\"map_location\":\"Ut dolores voluptate\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"sit\\\",\\\"sunt\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-24 12:04:38', 1),
(116, 'property_directory', 126, NULL, '{\"title\":null,\"address\":\"Dolore in cum mollit\",\"property_code\":\"000801621857934\",\"property_type\":35,\"mohda\":\"55\",\"road_type\":\"2\",\"build_year\":\"1977-04-10\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"5\",\"bedrooms\":\"7\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"6\",\"kitchen\":\"4\",\"price\":\"689\",\"map_location\":\"Ut dolores voluptate\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"sit\\\",\\\"sunt\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-24 12:05:34', 1),
(117, 'property_directory', 127, NULL, '{\"title\":null,\"address\":\"Dolore in cum mollit\",\"property_code\":\"000801621857934\",\"property_type\":35,\"mohda\":\"55\",\"road_type\":\"2\",\"build_year\":\"1977-04-10\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"5\",\"bedrooms\":\"7\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"6\",\"kitchen\":\"4\",\"price\":\"689\",\"map_location\":\"Ut dolores voluptate\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"3\",\"created_by\":1,\"keywords\":\"[\\\"sit\\\",\\\"sunt\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-24 12:05:34', 1),
(118, 'property_directory', 128, NULL, '{\"title\":null,\"address\":\"Alias quas est ea v\",\"property_code\":\"000821621920688\",\"property_type\":35,\"mohda\":\"3\",\"road_type\":\"1\",\"build_year\":\"1984-03-19\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"8\",\"bedrooms\":\"8\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"9\",\"kitchen\":\"4\",\"price\":\"488\",\"map_location\":\"Veniam dignissimos \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"\",\"city\":\"8\",\"created_by\":64,\"keywords\":\"[\\\"commodo\\\",\\\"ex\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-25 05:31:28', 64),
(119, 'property_directory', 129, NULL, '{\"title\":null,\"address\":\"Alias quas est ea v\",\"property_code\":\"000821621920688\",\"property_type\":35,\"mohda\":\"3\",\"road_type\":\"1\",\"build_year\":\"1984-03-19\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"8\",\"bedrooms\":\"8\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"9\",\"kitchen\":\"4\",\"price\":\"488\",\"map_location\":\"Veniam dignissimos \",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"\",\"city\":\"8\",\"created_by\":64,\"keywords\":\"[\\\"commodo\\\",\\\"ex\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-25 05:31:29', 64),
(120, 'property_directory', 130, NULL, '{\"title\":null,\"address\":\"Deleniti neque elit\",\"property_code\":\"000841621934287\",\"property_type\":35,\"mohda\":\"62\",\"road_type\":\"2\",\"build_year\":\"2008-02-08\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"6\",\"bedrooms\":\"3\",\"hall\":\"6\",\"image\":\"\",\"bathrooms\":\"2\",\"kitchen\":\"8\",\"price\":\"542\",\"map_location\":\"Qui blanditiis labor\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"[\\\"ex\\\",\\\"rem\\\",\\\"a\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-25 09:18:07', 1),
(121, 'property_directory', 131, NULL, '{\"title\":null,\"address\":\"Deleniti neque elit\",\"property_code\":\"000841621934287\",\"property_type\":35,\"mohda\":\"62\",\"road_type\":\"2\",\"build_year\":\"2008-02-08\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"6\",\"bedrooms\":\"3\",\"hall\":\"6\",\"image\":\"\",\"bathrooms\":\"2\",\"kitchen\":\"8\",\"price\":\"542\",\"map_location\":\"Qui blanditiis labor\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"[\\\"ex\\\",\\\"rem\\\",\\\"a\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-25 09:18:07', 1),
(122, 'property_directory', 132, NULL, '{\"title\":null,\"address\":\"Amet sint id in vo\",\"property_code\":\"000861622001500\",\"property_type\":33,\"mohda\":\"96\",\"road_type\":\"2\",\"build_year\":\"1989-05-03\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"1\",\"hall\":\"7\",\"image\":\"\",\"bathrooms\":\"6\",\"kitchen\":\"7\",\"price\":\"694\",\"map_location\":\"Quasi cillum nihil q\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"Culpa\\\",\\\"ut\\\",\\\"eni\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-26 03:58:20', 1),
(123, 'property_directory', 133, NULL, '{\"title\":null,\"address\":\"Amet sint id in vo\",\"property_code\":\"000861622001500\",\"property_type\":33,\"mohda\":\"96\",\"road_type\":\"2\",\"build_year\":\"1989-05-03\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"1\",\"hall\":\"7\",\"image\":\"\",\"bathrooms\":\"6\",\"kitchen\":\"7\",\"price\":\"694\",\"map_location\":\"Quasi cillum nihil q\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"Culpa\\\",\\\"ut\\\",\\\"eni\\\"]\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-26 03:58:20', 1),
(124, 'property_directory', 134, NULL, '{\"title\":null,\"address\":\"Neque quia ut eaque \",\"property_code\":\"000881622013274\",\"property_type\":35,\"mohda\":\"25\",\"road_type\":\"3\",\"build_year\":\"2001-08-13\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"7\",\"bedrooms\":\"4\",\"hall\":\"7\",\"image\":\"\",\"bathrooms\":\"8\",\"kitchen\":\"5\",\"price\":\"465\",\"map_location\":\"Voluptas tenetur ear\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"[\\\"cum\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-25\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-26 07:14:35', 1),
(125, 'property_directory', 135, NULL, '{\"title\":null,\"address\":\"Neque quia ut eaque \",\"property_code\":\"000881622013274\",\"property_type\":35,\"mohda\":\"25\",\"road_type\":\"3\",\"build_year\":\"2001-08-13\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"7\",\"bedrooms\":\"4\",\"hall\":\"7\",\"image\":\"\",\"bathrooms\":\"8\",\"kitchen\":\"5\",\"price\":\"465\",\"map_location\":\"Voluptas tenetur ear\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"10\",\"created_by\":1,\"keywords\":\"[\\\"cum\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-25\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-26 07:14:35', 1),
(126, 'property_directory', 136, NULL, '{\"title\":null,\"address\":\"Illum distinctio U\",\"property_code\":\"00011622093549\",\"property_type\":33,\"mohda\":\"56\",\"road_type\":\"3\",\"build_year\":\"2006-05-28\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"7\",\"hall\":\"7\",\"image\":\"1622093549.jpg\",\"bathrooms\":\"6\",\"kitchen\":\"10\",\"price\":\"320\",\"map_location\":\"Aliquip sint dolorem\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"6\",\"created_by\":1,\"keywords\":\"[\\\"fugiat\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-26\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-27 05:32:30', 1),
(127, 'property_directory', 137, NULL, '{\"title\":null,\"address\":\"Illum distinctio U\",\"property_code\":\"00011622093549\",\"property_type\":33,\"mohda\":\"56\",\"road_type\":\"3\",\"build_year\":\"2006-05-28\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"7\",\"bedrooms\":\"7\",\"hall\":\"7\",\"image\":\"1622093549.jpg\",\"bathrooms\":\"6\",\"kitchen\":\"10\",\"price\":\"320\",\"map_location\":\"Aliquip sint dolorem\",\"amenities\":\"5\",\"description\":null,\"add_image\":\"\",\"city\":\"6\",\"created_by\":1,\"keywords\":\"[\\\"fugiat\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-26\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-27 05:32:30', 1),
(128, 'user_documents', 14, NULL, '{}', NULL, NULL, 0, 0, NULL, NULL, '2021-05-27 06:43:44', NULL),
(129, 'property_directory', 138, NULL, '{\"title\":null,\"address\":\"Hsywhs\",\"property_code\":\"00031622118133\",\"property_type\":35,\"mohda\":\"350\",\"road_type\":\"2\",\"build_year\":\"2021-05-27\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"10\",\"bedrooms\":\"10\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"10\",\"kitchen\":\"10\",\"price\":\"160\",\"map_location\":\"Jajahauuaa\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"hayay\\\",\\\"hwhsh\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-26\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-27 12:22:14', 1),
(130, 'property_directory', 139, NULL, '{\"title\":null,\"address\":\"Hsywhs\",\"property_code\":\"00031622118133\",\"property_type\":35,\"mohda\":\"350\",\"road_type\":\"2\",\"build_year\":\"2021-05-27\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"10\",\"bedrooms\":\"10\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"10\",\"kitchen\":\"10\",\"price\":\"160\",\"map_location\":\"Jajahauuaa\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"hayay\\\",\\\"hwhsh\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-26\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-27 12:22:14', 1),
(131, 'property_directory', 140, NULL, '{\"title\":null,\"address\":\"Voluptatibus provide\",\"property_code\":\"00051622177389\",\"property_type\":33,\"mohda\":\"94\",\"road_type\":\"3\",\"build_year\":\"1987-11-01\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"5\",\"bedrooms\":\"2\",\"hall\":\"3\",\"image\":\"1622177389.jpg\",\"bathrooms\":\"6\",\"kitchen\":\"6\",\"price\":\"310\",\"map_location\":\"Iste quos aute corru\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"aliqua\\\",\\\"Rec\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-07\",\"package_id\":\"8\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-28 04:49:50', 1),
(132, 'property_directory', 141, NULL, '{\"title\":null,\"address\":\"Voluptatibus provide\",\"property_code\":\"00051622177389\",\"property_type\":33,\"mohda\":\"94\",\"road_type\":\"3\",\"build_year\":\"1987-11-01\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"5\",\"bedrooms\":\"2\",\"hall\":\"3\",\"image\":\"1622177389.jpg\",\"bathrooms\":\"6\",\"kitchen\":\"6\",\"price\":\"310\",\"map_location\":\"Iste quos aute corru\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"aliqua\\\",\\\"Rec\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-07\",\"package_id\":\"8\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-28 04:49:50', 1),
(133, 'property_directory', 142, NULL, '{\"title\":null,\"address\":\"Laudantium tempore\",\"property_code\":\"00071622184195\",\"property_type\":33,\"mohda\":\"76\",\"road_type\":\"0\",\"build_year\":\"2000-03-09\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"322\",\"bedrooms\":\"4\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"9\",\"price\":\"708\",\"map_location\":\"Pariatur Mollitia f\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"8\",\"created_by\":1,\"keywords\":\"[\\\"esse\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-17\",\"package_id\":\"9\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-28 06:43:16', 1),
(134, 'property_directory', 143, NULL, '{\"title\":null,\"address\":\"Laudantium tempore\",\"property_code\":\"00071622184195\",\"property_type\":33,\"mohda\":\"76\",\"road_type\":\"0\",\"build_year\":\"2000-03-09\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"322\",\"bedrooms\":\"4\",\"hall\":\"10\",\"image\":\"\",\"bathrooms\":\"4\",\"kitchen\":\"9\",\"price\":\"708\",\"map_location\":\"Pariatur Mollitia f\",\"amenities\":\"2\",\"description\":null,\"add_image\":\"\",\"city\":\"8\",\"created_by\":1,\"keywords\":\"[\\\"esse\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-17\",\"package_id\":\"9\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-28 06:43:16', 1),
(135, 'property_directory', 144, NULL, '{\"title\":null,\"address\":\"Vero ut omnis fugit\",\"property_code\":\"00091622193528\",\"property_type\":35,\"mohda\":\"5\",\"road_type\":\"1\",\"build_year\":\"2013-11-26\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"472\",\"bedrooms\":\"3\",\"hall\":\"9\",\"image\":\"\",\"bathrooms\":\"1\",\"kitchen\":\"2\",\"price\":\"204\",\"map_location\":\"Eligendi ex deleniti\",\"amenities\":\"2,5\",\"description\":null,\"add_image\":\"\",\"city\":\"1\",\"created_by\":1,\"keywords\":\"[\\\"moles\\\"]\",\"youtube_videos\":\"\",\"expiry_date\":\"2021-06-07\",\"package_id\":\"8\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-05-28 09:18:49', 1),
(136, 'property_directory', 148, NULL, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Eum lorem odit venia\",\"build_year\":\"2012-09-26\",\"bathrooms\":\"6\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Error non debitis qu\",\"hall\":\"6\",\"image\":null,\"keywords\":\"[\\\"dis\\\"]\",\"kitchen\":\"4\",\"title\":\"Omnis nesciunt et m\",\"mohda\":\"74\",\"map_location\":\"Magni perferendis as\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000111623848467\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"928\",\"property_attachment\":null,\"price\":\"971\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', 'PropertyDirectory', NULL, 0, 0, NULL, NULL, '2021-06-16 13:01:08', 46);

-- --------------------------------------------------------

--
-- Table structure for table `verification_property`
--

CREATE TABLE `verification_property` (
  `id` bigint(20) NOT NULL,
  `property_id` bigint(20) DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  `auto_verification_status` int(11) DEFAULT NULL,
  `auto_verification_results` longtext DEFAULT NULL,
  `auto_verification_time` varchar(250) DEFAULT NULL,
  `verification_comment` longtext DEFAULT NULL,
  `verification_status` int(11) DEFAULT 0,
  `edited_status` int(11) DEFAULT 0,
  `verified_by` bigint(20) DEFAULT NULL,
  `verified_on` datetime DEFAULT NULL,
  `requested_on` datetime DEFAULT current_timestamp(),
  `requested_by` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verification_property`
--

INSERT INTO `verification_property` (`id`, `property_id`, `contents`, `auto_verification_status`, `auto_verification_results`, `auto_verification_time`, `verification_comment`, `verification_status`, `edited_status`, `verified_by`, `verified_on`, `requested_on`, `requested_by`) VALUES
(1, 1, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Expedita dolor excep\",\"build_year\":\"1987-04-11\",\"bathrooms\":\"3\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Voluptate dolor culp\",\"hall\":\"9\",\"image\":\"1623938643.jpg\",\"keywords\":\"[\\\"fugiat\\\",\\\"atque\\\",\\\"c\\\"]\",\"kitchen\":\"3\",\"title\":\"Amet porro dolores \",\"mohda\":\"79\",\"map_location\":\"Provident suscipit \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"00011623938643\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"426\",\"property_attachment\":null,\"price\":\"758\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:49:06', 46),
(2, 1, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Expedita dolor excep\",\"build_year\":\"1987-04-11\",\"bathrooms\":\"3\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Voluptate dolor culp\",\"hall\":\"9\",\"image\":\"1623938643.jpg\",\"keywords\":\"[\\\"fugiat\\\",\\\"atque\\\",\\\"c\\\"]\",\"kitchen\":\"3\",\"title\":\"Amet porro dolores \",\"mohda\":\"79\",\"map_location\":\"Provident suscipit \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"00011623938643\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"426\",\"property_attachment\":null,\"price\":\"758\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:49:06', 46),
(3, 3, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Saepe iste excepteur\",\"build_year\":\"2006-12-01\",\"bathrooms\":\"10\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Rerum magnam vitae d\",\"hall\":\"7\",\"image\":\"1623938890.jpg\",\"keywords\":\"[\\\"error\\\",\\\"nu\\\"]\",\"kitchen\":\"5\",\"title\":\"Ut molestiae amet c\",\"mohda\":\"14\",\"map_location\":\"Dolore praesentium i Dolore praesentium i\",\"user_package_breakdown_id\":7,\"pan_images\":null,\"property_code\":\"00031623938890\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"395\",\"property_attachment\":null,\"price\":\"130\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:53:11', 46),
(4, 3, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Saepe iste excepteur\",\"build_year\":\"2006-12-01\",\"bathrooms\":\"10\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Rerum magnam vitae d\",\"hall\":\"7\",\"image\":\"1623938890.jpg\",\"keywords\":\"[\\\"error\\\",\\\"nu\\\"]\",\"kitchen\":\"5\",\"title\":\"Ut molestiae amet c\",\"mohda\":\"14\",\"map_location\":\"Dolore praesentium i Dolore praesentium i\",\"user_package_breakdown_id\":7,\"pan_images\":null,\"property_code\":\"00031623938890\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"395\",\"property_attachment\":null,\"price\":\"130\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:53:11', 46),
(5, 5, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Ut aliquid tenetur q\",\"build_year\":\"1997-08-22\",\"bathrooms\":\"2\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Eveniet tempor aliq\",\"hall\":\"4\",\"image\":\"1623938995.jpg\",\"keywords\":\"[\\\"quaerat\\\",\\\"au\\\"]\",\"kitchen\":\"10\",\"title\":\"Excepteur eiusmod mi\",\"mohda\":\"98\",\"map_location\":\"Laborum Et voluptat\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"00051623938995\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"112\",\"property_attachment\":null,\"price\":\"405\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:54:56', 46),
(6, 5, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Ut aliquid tenetur q\",\"build_year\":\"1997-08-22\",\"bathrooms\":\"2\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Eveniet tempor aliq\",\"hall\":\"4\",\"image\":\"1623938995.jpg\",\"keywords\":\"[\\\"quaerat\\\",\\\"au\\\"]\",\"kitchen\":\"10\",\"title\":\"Excepteur eiusmod mi\",\"mohda\":\"98\",\"map_location\":\"Laborum Et voluptat\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"00051623938995\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"112\",\"property_attachment\":null,\"price\":\"405\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:54:56', 46),
(7, 7, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Deserunt illum eius\",\"build_year\":\"1978-10-08\",\"bathrooms\":\"1\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Voluptate est volupt\",\"hall\":\"5\",\"image\":\"1623939054.jpg\",\"keywords\":\"[\\\"dolore\\\"]\",\"kitchen\":\"6\",\"title\":\"Voluptatibus cum est\",\"mohda\":\"48\",\"map_location\":\"Sed harum culpa ex \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"00071623939053\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"757\",\"property_attachment\":null,\"price\":\"105\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:55:54', 46),
(8, 7, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Deserunt illum eius\",\"build_year\":\"1978-10-08\",\"bathrooms\":\"1\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Voluptate est volupt\",\"hall\":\"5\",\"image\":\"1623939054.jpg\",\"keywords\":\"[\\\"dolore\\\"]\",\"kitchen\":\"6\",\"title\":\"Voluptatibus cum est\",\"mohda\":\"48\",\"map_location\":\"Sed harum culpa ex \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"00071623939053\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"757\",\"property_attachment\":null,\"price\":\"105\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:55:54', 46),
(9, 9, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Excepteur sint optio\",\"build_year\":\"2019-06-09\",\"bathrooms\":\"8\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Iusto tempora iste q\",\"hall\":\"1\",\"image\":\"1623939166.jpg\",\"keywords\":\"[\\\"magnam\\\"]\",\"kitchen\":\"1\",\"title\":\"Cumque pariatur Vol\",\"mohda\":\"93\",\"map_location\":\"Aperiam alias molest\",\"user_package_breakdown_id\":15,\"pan_images\":\"[{\\\"title\\\":\\\"bhaisepativilla\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"00091623939166\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"166\",\"property_attachment\":null,\"price\":\"42\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:57:48', 46),
(10, 9, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Excepteur sint optio\",\"build_year\":\"2019-06-09\",\"bathrooms\":\"8\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Iusto tempora iste q\",\"hall\":\"1\",\"image\":\"1623939166.jpg\",\"keywords\":\"[\\\"magnam\\\"]\",\"kitchen\":\"1\",\"title\":\"Cumque pariatur Vol\",\"mohda\":\"93\",\"map_location\":\"Aperiam alias molest\",\"user_package_breakdown_id\":15,\"pan_images\":\"[{\\\"title\\\":\\\"bhaisepativilla\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"00091623939166\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"166\",\"property_attachment\":null,\"price\":\"42\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:57:48', 46),
(11, 11, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Et quasi fugit eius\",\"build_year\":\"1988-07-09\",\"bathrooms\":\"10\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Quidem fugiat delec\",\"hall\":\"3\",\"image\":\"1623939259.jpg\",\"keywords\":\"[\\\"excepturi\\\"]\",\"kitchen\":\"5\",\"title\":\"Mollit inventore con\",\"mohda\":\"95\",\"map_location\":\"Harum dignissimos ea\",\"user_package_breakdown_id\":16,\"pan_images\":\"[{\\\"title\\\":\\\"building\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000111623939259\",\"property_type\":\"50\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"819\",\"property_attachment\":null,\"price\":\"125\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:59:20', 46),
(12, 11, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Et quasi fugit eius\",\"build_year\":\"1988-07-09\",\"bathrooms\":\"10\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Quidem fugiat delec\",\"hall\":\"3\",\"image\":\"1623939259.jpg\",\"keywords\":\"[\\\"excepturi\\\"]\",\"kitchen\":\"5\",\"title\":\"Mollit inventore con\",\"mohda\":\"95\",\"map_location\":\"Harum dignissimos ea\",\"user_package_breakdown_id\":16,\"pan_images\":\"[{\\\"title\\\":\\\"building\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000111623939259\",\"property_type\":\"50\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"819\",\"property_attachment\":null,\"price\":\"125\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 19:59:20', 46),
(13, 13, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Ex quis illo adipisc\",\"build_year\":\"1976-12-07\",\"bathrooms\":\"8\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Reiciendis quia offi\",\"hall\":\"1\",\"image\":\"1623939397.jpg\",\"keywords\":\"[\\\"culpa\\\"]\",\"kitchen\":\"4\",\"title\":\"Maxime similique vol\",\"mohda\":\"14\",\"map_location\":\"Et eius quae quia si\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000131623939397\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"279\",\"property_attachment\":null,\"price\":\"405\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:01:38', 46),
(14, 13, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Ex quis illo adipisc\",\"build_year\":\"1976-12-07\",\"bathrooms\":\"8\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Reiciendis quia offi\",\"hall\":\"1\",\"image\":\"1623939397.jpg\",\"keywords\":\"[\\\"culpa\\\"]\",\"kitchen\":\"4\",\"title\":\"Maxime similique vol\",\"mohda\":\"14\",\"map_location\":\"Et eius quae quia si\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000131623939397\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"279\",\"property_attachment\":null,\"price\":\"405\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:01:38', 46),
(15, 15, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Aute mollit ea ea ev\",\"build_year\":\"2021-07-15\",\"bathrooms\":\"10\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Libero pariatur Obc\",\"hall\":\"9\",\"image\":\"1623939460.jpg\",\"keywords\":\"[\\\"dolor\\\"]\",\"kitchen\":\"7\",\"title\":\"Id exercitationem la\",\"mohda\":\"68\",\"map_location\":\"Maxime itaque enim q\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000151623939460\",\"property_type\":\"52\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"122\",\"property_attachment\":null,\"price\":\"490\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:02:41', 46),
(16, 15, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Aute mollit ea ea ev\",\"build_year\":\"2021-07-15\",\"bathrooms\":\"10\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Libero pariatur Obc\",\"hall\":\"9\",\"image\":\"1623939460.jpg\",\"keywords\":\"[\\\"dolor\\\"]\",\"kitchen\":\"7\",\"title\":\"Id exercitationem la\",\"mohda\":\"68\",\"map_location\":\"Maxime itaque enim q\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000151623939460\",\"property_type\":\"52\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"122\",\"property_attachment\":null,\"price\":\"490\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:02:41', 46),
(17, 17, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Molestiae et irure d\",\"build_year\":\"1972-09-11\",\"bathrooms\":\"2\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Inventore aut est en\",\"hall\":\"4\",\"image\":\"1623939541.jpg\",\"keywords\":\"[\\\"eum\\\",\\\"reiciendis\\\"]\",\"kitchen\":\"4\",\"title\":\"Blanditiis sint labo\",\"mohda\":\"41\",\"map_location\":\"Atque voluptas vero \",\"user_package_breakdown_id\":12,\"pan_images\":\"[{\\\"title\\\":\\\"house\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000171623939541\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"230\",\"property_attachment\":null,\"price\":\"826\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:04:02', 46),
(18, 17, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Molestiae et irure d\",\"build_year\":\"1972-09-11\",\"bathrooms\":\"2\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Inventore aut est en\",\"hall\":\"4\",\"image\":\"1623939541.jpg\",\"keywords\":\"[\\\"eum\\\",\\\"reiciendis\\\"]\",\"kitchen\":\"4\",\"title\":\"Blanditiis sint labo\",\"mohda\":\"41\",\"map_location\":\"Atque voluptas vero \",\"user_package_breakdown_id\":12,\"pan_images\":\"[{\\\"title\\\":\\\"house\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000171623939541\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"230\",\"property_attachment\":null,\"price\":\"826\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:04:02', 46),
(19, 19, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Et sed quia voluptat\",\"build_year\":\"1999-06-12\",\"bathrooms\":\"8\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Exercitationem omnis\",\"hall\":\"2\",\"image\":\"1623939651.jpg\",\"keywords\":\"[\\\"cupiditate\\\",\\\"aut\\\"]\",\"kitchen\":\"5\",\"title\":\"Iusto maiores aut as\",\"mohda\":\"6\",\"map_location\":\"Officia cupidatat co\",\"user_package_breakdown_id\":11,\"pan_images\":\"[{\\\"title\\\":\\\"bhaisepativilla\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000191623939650\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"sale\",\"property_size\":\"748\",\"property_attachment\":null,\"price\":\"915\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:05:51', 46),
(20, 19, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Et sed quia voluptat\",\"build_year\":\"1999-06-12\",\"bathrooms\":\"8\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Exercitationem omnis\",\"hall\":\"2\",\"image\":\"1623939651.jpg\",\"keywords\":\"[\\\"cupiditate\\\",\\\"aut\\\"]\",\"kitchen\":\"5\",\"title\":\"Iusto maiores aut as\",\"mohda\":\"6\",\"map_location\":\"Officia cupidatat co\",\"user_package_breakdown_id\":11,\"pan_images\":\"[{\\\"title\\\":\\\"bhaisepativilla\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000191623939650\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"sale\",\"property_size\":\"748\",\"property_attachment\":null,\"price\":\"915\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:05:51', 46),
(21, 21, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"In et iusto ea velit\",\"build_year\":\"1972-12-05\",\"bathrooms\":\"2\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Et sunt esse alias \",\"hall\":\"6\",\"image\":\"1623939731.jpg\",\"keywords\":\"[\\\"quam\\\",\\\"sint\\\"]\",\"kitchen\":\"9\",\"title\":\"Dolor excepteur sequ\",\"mohda\":\"39\",\"map_location\":\"Quae voluptatem ea r\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000211623939731\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"256\",\"property_attachment\":null,\"price\":\"593\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:07:13', 46),
(22, 21, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"In et iusto ea velit\",\"build_year\":\"1972-12-05\",\"bathrooms\":\"2\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Et sunt esse alias \",\"hall\":\"6\",\"image\":\"1623939731.jpg\",\"keywords\":\"[\\\"quam\\\",\\\"sint\\\"]\",\"kitchen\":\"9\",\"title\":\"Dolor excepteur sequ\",\"mohda\":\"39\",\"map_location\":\"Quae voluptatem ea r\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000211623939731\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"256\",\"property_attachment\":null,\"price\":\"593\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:07:13', 46),
(23, 23, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Dolores aut ut et eu\",\"build_year\":\"2006-07-21\",\"bathrooms\":\"6\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Odit magni earum sed\",\"hall\":\"8\",\"image\":null,\"keywords\":\"[\\\"consequatur\\\"]\",\"kitchen\":\"7\",\"title\":\"Et voluptates labore\",\"mohda\":\"13\",\"map_location\":\"Sed omnis rerum sed \",\"user_package_breakdown_id\":11,\"pan_images\":null,\"property_code\":\"000231623939804\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"35\",\"property_attachment\":null,\"price\":\"843\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:08:24', 46),
(24, 23, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Dolores aut ut et eu\",\"build_year\":\"2006-07-21\",\"bathrooms\":\"6\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Odit magni earum sed\",\"hall\":\"8\",\"image\":null,\"keywords\":\"[\\\"consequatur\\\"]\",\"kitchen\":\"7\",\"title\":\"Et voluptates labore\",\"mohda\":\"13\",\"map_location\":\"Sed omnis rerum sed \",\"user_package_breakdown_id\":11,\"pan_images\":null,\"property_code\":\"000231623939804\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"35\",\"property_attachment\":null,\"price\":\"843\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:08:24', 46),
(25, 25, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magnam sed ratione s\",\"build_year\":\"1988-03-20\",\"bathrooms\":\"1\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Molestias omnis non \",\"hall\":\"6\",\"image\":\"1623939871.jpg\",\"keywords\":\"[\\\"non\\\"]\",\"kitchen\":\"1\",\"title\":\"Sit inventore earum \",\"mohda\":\"9\",\"map_location\":\"Sit minus qui eos d\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000251623939871\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"506\",\"property_attachment\":null,\"price\":\"249\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:09:32', 46),
(26, 25, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magnam sed ratione s\",\"build_year\":\"1988-03-20\",\"bathrooms\":\"1\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Molestias omnis non \",\"hall\":\"6\",\"image\":\"1623939871.jpg\",\"keywords\":\"[\\\"non\\\"]\",\"kitchen\":\"1\",\"title\":\"Sit inventore earum \",\"mohda\":\"9\",\"map_location\":\"Sit minus qui eos d\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000251623939871\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"506\",\"property_attachment\":null,\"price\":\"249\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:09:32', 46),
(27, 27, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Sed vel sint minus i\",\"build_year\":\"2005-09-26\",\"bathrooms\":\"7\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Id eum qui commodi d\",\"hall\":\"9\",\"image\":\"1623939975.png\",\"keywords\":\"[\\\"vitae\\\"]\",\"kitchen\":\"4\",\"title\":\"Vel recusandae Sed \",\"mohda\":\"12\",\"map_location\":\"Deserunt molestiae e\",\"user_package_breakdown_id\":11,\"pan_images\":null,\"property_code\":\"000271623939975\",\"property_type\":\"50\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"395\",\"property_attachment\":null,\"price\":\"539\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:11:16', 46),
(28, 27, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Sed vel sint minus i\",\"build_year\":\"2005-09-26\",\"bathrooms\":\"7\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Id eum qui commodi d\",\"hall\":\"9\",\"image\":\"1623939975.png\",\"keywords\":\"[\\\"vitae\\\"]\",\"kitchen\":\"4\",\"title\":\"Vel recusandae Sed \",\"mohda\":\"12\",\"map_location\":\"Deserunt molestiae e\",\"user_package_breakdown_id\":11,\"pan_images\":null,\"property_code\":\"000271623939975\",\"property_type\":\"50\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"395\",\"property_attachment\":null,\"price\":\"539\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:11:16', 46),
(29, 29, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Possimus corporis d\",\"build_year\":\"2015-08-26\",\"bathrooms\":\"2\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Ipsum ut ipsum et vo\",\"hall\":\"4\",\"image\":\"1623940042.jpg\",\"keywords\":\"[\\\"Ipsam\\\"]\",\"kitchen\":\"2\",\"title\":\"Et recusandae Volup\",\"mohda\":\"95\",\"map_location\":\"Hic exercitationem o\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000291623940042\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"521\",\"property_attachment\":null,\"price\":\"969\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:12:23', 46),
(30, 29, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Possimus corporis d\",\"build_year\":\"2015-08-26\",\"bathrooms\":\"2\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Ipsum ut ipsum et vo\",\"hall\":\"4\",\"image\":\"1623940042.jpg\",\"keywords\":\"[\\\"Ipsam\\\"]\",\"kitchen\":\"2\",\"title\":\"Et recusandae Volup\",\"mohda\":\"95\",\"map_location\":\"Hic exercitationem o\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000291623940042\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"521\",\"property_attachment\":null,\"price\":\"969\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:12:23', 46),
(31, 31, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Voluptatibus sint do\",\"build_year\":\"2014-03-12\",\"bathrooms\":\"9\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Libero aliquid quae \",\"hall\":\"1\",\"image\":\"1623940131.jpg\",\"keywords\":\"[\\\"Nihil\\\",\\\"et\\\",\\\"ac\\\",\\\"Officia\\\",\\\"magnam\\\",\\\"quibu\\\"]\",\"kitchen\":\"5\",\"title\":\"Amet sunt nisi adip\",\"mohda\":\"9\",\"map_location\":\"Quia qui nihil animi\",\"user_package_breakdown_id\":12,\"pan_images\":null,\"property_code\":\"000311623940131\",\"property_type\":\"52\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"335\",\"property_attachment\":null,\"price\":\"447\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:13:53', 46),
(32, 31, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Voluptatibus sint do\",\"build_year\":\"2014-03-12\",\"bathrooms\":\"9\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Libero aliquid quae \",\"hall\":\"1\",\"image\":\"1623940131.jpg\",\"keywords\":\"[\\\"Nihil\\\",\\\"et\\\",\\\"ac\\\",\\\"Officia\\\",\\\"magnam\\\",\\\"quibu\\\"]\",\"kitchen\":\"5\",\"title\":\"Amet sunt nisi adip\",\"mohda\":\"9\",\"map_location\":\"Quia qui nihil animi\",\"user_package_breakdown_id\":12,\"pan_images\":null,\"property_code\":\"000311623940131\",\"property_type\":\"52\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"335\",\"property_attachment\":null,\"price\":\"447\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:13:53', 46),
(33, 33, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Quidem cupiditate qu\",\"build_year\":\"2017-09-13\",\"bathrooms\":\"1\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ut hic veniam enim \",\"hall\":\"5\",\"image\":\"1623940300.jpg\",\"keywords\":\"[\\\"sdfghj\\\",\\\"asdfgh\\\"]\",\"kitchen\":\"2\",\"title\":\"Non enim nobis in au\",\"mohda\":\"48\",\"map_location\":\"Reprehenderit sint \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000331623940299\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"774\",\"property_attachment\":null,\"price\":\"636\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:16:41', 46),
(34, 33, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Quidem cupiditate qu\",\"build_year\":\"2017-09-13\",\"bathrooms\":\"1\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ut hic veniam enim \",\"hall\":\"5\",\"image\":\"1623940300.jpg\",\"keywords\":\"[\\\"sdfghj\\\",\\\"asdfgh\\\"]\",\"kitchen\":\"2\",\"title\":\"Non enim nobis in au\",\"mohda\":\"48\",\"map_location\":\"Reprehenderit sint \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000331623940299\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"774\",\"property_attachment\":null,\"price\":\"636\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:16:41', 46),
(35, 35, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Molestiae qui a quo \",\"build_year\":\"1991-02-04\",\"bathrooms\":\"9\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Deserunt voluptatum \",\"hall\":\"8\",\"image\":\"1623940413.jpg\",\"keywords\":\"[\\\"nesciunt\\\",\\\"magn\\\"]\",\"kitchen\":\"10\",\"title\":\"Ratione placeat sit\",\"mohda\":\"77\",\"map_location\":\"Accusamus assumenda \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000351623940412\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"839\",\"property_attachment\":null,\"price\":\"507\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:18:33', 46),
(36, 35, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Molestiae qui a quo \",\"build_year\":\"1991-02-04\",\"bathrooms\":\"9\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Deserunt voluptatum \",\"hall\":\"8\",\"image\":\"1623940413.jpg\",\"keywords\":\"[\\\"nesciunt\\\",\\\"magn\\\"]\",\"kitchen\":\"10\",\"title\":\"Ratione placeat sit\",\"mohda\":\"77\",\"map_location\":\"Accusamus assumenda \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000351623940412\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"839\",\"property_attachment\":null,\"price\":\"507\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:18:33', 46),
(37, 37, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Cumque proident tem\",\"build_year\":\"1992-12-11\",\"bathrooms\":\"5\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Deserunt temporibus \",\"hall\":\"10\",\"image\":\"1623940502.jpg\",\"keywords\":\"[\\\"et\\\"]\",\"kitchen\":\"2\",\"title\":\"Consequatur Et tota\",\"mohda\":\"20\",\"map_location\":\"At rerum ut velit ni\",\"user_package_breakdown_id\":12,\"pan_images\":\"[{\\\"title\\\":\\\"\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000371623940502\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"834\",\"property_attachment\":null,\"price\":\"901\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:20:03', 46),
(38, 37, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Cumque proident tem\",\"build_year\":\"1992-12-11\",\"bathrooms\":\"5\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Deserunt temporibus \",\"hall\":\"10\",\"image\":\"1623940502.jpg\",\"keywords\":\"[\\\"et\\\"]\",\"kitchen\":\"2\",\"title\":\"Consequatur Et tota\",\"mohda\":\"20\",\"map_location\":\"At rerum ut velit ni\",\"user_package_breakdown_id\":12,\"pan_images\":\"[{\\\"title\\\":\\\"\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000371623940502\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"834\",\"property_attachment\":null,\"price\":\"901\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:20:03', 46),
(39, 39, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Iure voluptatibus ei\",\"build_year\":\"2017-03-02\",\"bathrooms\":\"4\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Lorem optio sed quo\",\"hall\":\"7\",\"image\":\"1623940590.jpg\",\"keywords\":\"[\\\"assumenda\\\"]\",\"kitchen\":\"4\",\"title\":\"Veritatis et aut hic\",\"mohda\":\"41\",\"map_location\":\"Temporibus nisi sequ\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000391623940590\",\"property_type\":\"34\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"568\",\"property_attachment\":null,\"price\":\"409\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:21:31', 46),
(40, 39, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Iure voluptatibus ei\",\"build_year\":\"2017-03-02\",\"bathrooms\":\"4\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Lorem optio sed quo\",\"hall\":\"7\",\"image\":\"1623940590.jpg\",\"keywords\":\"[\\\"assumenda\\\"]\",\"kitchen\":\"4\",\"title\":\"Veritatis et aut hic\",\"mohda\":\"41\",\"map_location\":\"Temporibus nisi sequ\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000391623940590\",\"property_type\":\"34\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"568\",\"property_attachment\":null,\"price\":\"409\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:21:31', 46),
(41, 41, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Quibusdam voluptatem\",\"build_year\":\"1993-10-18\",\"bathrooms\":\"3\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Atque repellendus L\",\"hall\":\"6\",\"image\":\"1623940668.jpg\",\"keywords\":\"[\\\"qui\\\",\\\"dolor\\\",\\\"i\\\"]\",\"kitchen\":\"3\",\"title\":\"Quis reprehenderit a\",\"mohda\":\"5\",\"map_location\":\"Voluptas id voluptas\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000411623940668\",\"property_type\":\"52\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"676\",\"property_attachment\":null,\"price\":\"164\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:22:49', 46),
(42, 41, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Quibusdam voluptatem\",\"build_year\":\"1993-10-18\",\"bathrooms\":\"3\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Atque repellendus L\",\"hall\":\"6\",\"image\":\"1623940668.jpg\",\"keywords\":\"[\\\"qui\\\",\\\"dolor\\\",\\\"i\\\"]\",\"kitchen\":\"3\",\"title\":\"Quis reprehenderit a\",\"mohda\":\"5\",\"map_location\":\"Voluptas id voluptas\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000411623940668\",\"property_type\":\"52\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"676\",\"property_attachment\":null,\"price\":\"164\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:22:49', 46),
(43, 43, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Et repellendus Veli\",\"build_year\":\"1971-12-22\",\"bathrooms\":\"8\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ullam eaque tempor n\",\"hall\":\"6\",\"image\":\"1623942240.jpg\",\"keywords\":\"[\\\"sunt\\\"]\",\"kitchen\":\"3\",\"title\":\"Ad architecto quo ma\",\"mohda\":\"82\",\"map_location\":\"Culpa incididunt fug\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000431623942240\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"427\",\"property_attachment\":null,\"price\":\"813\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:49:03', 46),
(44, 43, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Et repellendus Veli\",\"build_year\":\"1971-12-22\",\"bathrooms\":\"8\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ullam eaque tempor n\",\"hall\":\"6\",\"image\":\"1623942240.jpg\",\"keywords\":\"[\\\"sunt\\\"]\",\"kitchen\":\"3\",\"title\":\"Ad architecto quo ma\",\"mohda\":\"82\",\"map_location\":\"Culpa incididunt fug\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000431623942240\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"427\",\"property_attachment\":null,\"price\":\"813\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:49:03', 46),
(45, 45, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Officia pariatur Il\",\"build_year\":\"2002-06-15\",\"bathrooms\":\"3\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Cum dolorem nostrum \",\"hall\":\"1\",\"image\":\"1623942390.jpg\",\"keywords\":\"[\\\"voluptatem\\\"]\",\"kitchen\":\"3\",\"title\":\"Harum duis suscipit \",\"mohda\":\"15\",\"map_location\":\"Qui ut ducimus sed \",\"user_package_breakdown_id\":12,\"pan_images\":null,\"property_code\":\"000451623942390\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"451\",\"property_attachment\":null,\"price\":\"979\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:51:32', 46),
(46, 45, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Officia pariatur Il\",\"build_year\":\"2002-06-15\",\"bathrooms\":\"3\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Cum dolorem nostrum \",\"hall\":\"1\",\"image\":\"1623942390.jpg\",\"keywords\":\"[\\\"voluptatem\\\"]\",\"kitchen\":\"3\",\"title\":\"Harum duis suscipit \",\"mohda\":\"15\",\"map_location\":\"Qui ut ducimus sed \",\"user_package_breakdown_id\":12,\"pan_images\":null,\"property_code\":\"000451623942390\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"451\",\"property_attachment\":null,\"price\":\"979\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:51:32', 46),
(47, 47, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Natus sequi qui volu\",\"build_year\":\"1993-03-26\",\"bathrooms\":\"6\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Duis placeat ex in \",\"hall\":\"10\",\"image\":\"1623942461.jpg\",\"keywords\":\"[\\\"maxime\\\"]\",\"kitchen\":\"3\",\"title\":\"Qui commodi eveniet\",\"mohda\":\"16\",\"map_location\":\"Aperiam est enim ape\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000471623942461\",\"property_type\":\"52\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"260\",\"property_attachment\":null,\"price\":\"983\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:52:42', 46),
(48, 47, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Natus sequi qui volu\",\"build_year\":\"1993-03-26\",\"bathrooms\":\"6\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Duis placeat ex in \",\"hall\":\"10\",\"image\":\"1623942461.jpg\",\"keywords\":\"[\\\"maxime\\\"]\",\"kitchen\":\"3\",\"title\":\"Qui commodi eveniet\",\"mohda\":\"16\",\"map_location\":\"Aperiam est enim ape\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000471623942461\",\"property_type\":\"52\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"260\",\"property_attachment\":null,\"price\":\"983\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:52:42', 46),
(49, 49, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Reprehenderit atque\",\"build_year\":\"2001-10-09\",\"bathrooms\":\"5\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"In ratione aut offic\",\"hall\":\"2\",\"image\":\"1623942524.jpg\",\"keywords\":\"[\\\"atque\\\",\\\"cupid\\\"]\",\"kitchen\":\"7\",\"title\":\"Quia id lorem aut a \",\"mohda\":\"5\",\"map_location\":\"Fugiat nisi exceptur\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000491623942524\",\"property_type\":\"52\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"430\",\"property_attachment\":null,\"price\":\"481\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:53:44', 46),
(50, 49, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Reprehenderit atque\",\"build_year\":\"2001-10-09\",\"bathrooms\":\"5\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"In ratione aut offic\",\"hall\":\"2\",\"image\":\"1623942524.jpg\",\"keywords\":\"[\\\"atque\\\",\\\"cupid\\\"]\",\"kitchen\":\"7\",\"title\":\"Quia id lorem aut a \",\"mohda\":\"5\",\"map_location\":\"Fugiat nisi exceptur\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000491623942524\",\"property_type\":\"52\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"430\",\"property_attachment\":null,\"price\":\"481\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:53:44', 46),
(51, 51, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Consequuntur laborio\",\"build_year\":\"1997-04-12\",\"bathrooms\":\"9\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Officia quaerat anim\",\"hall\":\"10\",\"image\":\"1623942663.jpg\",\"keywords\":\"[\\\"rerum\\\",\\\"similique\\\"]\",\"kitchen\":\"6\",\"title\":\"Qui et pariatur Vol\",\"mohda\":\"70\",\"map_location\":\"Ad officiis libero l\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000511623942663\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"204\",\"property_attachment\":null,\"price\":\"67\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:56:05', 46),
(52, 51, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Consequuntur laborio\",\"build_year\":\"1997-04-12\",\"bathrooms\":\"9\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Officia quaerat anim\",\"hall\":\"10\",\"image\":\"1623942663.jpg\",\"keywords\":\"[\\\"rerum\\\",\\\"similique\\\"]\",\"kitchen\":\"6\",\"title\":\"Qui et pariatur Vol\",\"mohda\":\"70\",\"map_location\":\"Ad officiis libero l\",\"user_package_breakdown_id\":8,\"pan_images\":null,\"property_code\":\"000511623942663\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"204\",\"property_attachment\":null,\"price\":\"67\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:56:05', 46),
(53, 53, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Et excepteur dolores\",\"build_year\":\"1987-12-09\",\"bathrooms\":\"7\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Similique alias enim\",\"hall\":\"3\",\"image\":\"1623942735.jpg\",\"keywords\":\"[\\\"r\\\",\\\"fghjk\\\"]\",\"kitchen\":\"6\",\"title\":\"Odit neque velit par\",\"mohda\":\"99\",\"map_location\":\"At tenetur consequun\",\"user_package_breakdown_id\":11,\"pan_images\":\"[{\\\"title\\\":\\\"\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000531623942735\",\"property_type\":\"50\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"581\",\"property_attachment\":null,\"price\":\"161\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:57:16', 46),
(54, 53, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Et excepteur dolores\",\"build_year\":\"1987-12-09\",\"bathrooms\":\"7\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Similique alias enim\",\"hall\":\"3\",\"image\":\"1623942735.jpg\",\"keywords\":\"[\\\"r\\\",\\\"fghjk\\\"]\",\"kitchen\":\"6\",\"title\":\"Odit neque velit par\",\"mohda\":\"99\",\"map_location\":\"At tenetur consequun\",\"user_package_breakdown_id\":11,\"pan_images\":\"[{\\\"title\\\":\\\"\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000531623942735\",\"property_type\":\"50\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"581\",\"property_attachment\":null,\"price\":\"161\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:57:16', 46),
(55, 55, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Sit incididunt eius\",\"build_year\":\"1988-03-10\",\"bathrooms\":\"7\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Vel nesciunt ut tem\",\"hall\":\"3\",\"image\":\"1623942806.jpg\",\"keywords\":\"[\\\"cumque\\\",\\\"mole\\\"]\",\"kitchen\":\"5\",\"title\":\"Velit culpa quis v\",\"mohda\":\"41\",\"map_location\":\"Voluptatem Sequi vo\",\"user_package_breakdown_id\":12,\"pan_images\":\"[{\\\"title\\\":\\\"\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000551623942806\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"90\",\"property_attachment\":null,\"price\":\"346\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:58:28', 46),
(56, 55, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Sit incididunt eius\",\"build_year\":\"1988-03-10\",\"bathrooms\":\"7\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Vel nesciunt ut tem\",\"hall\":\"3\",\"image\":\"1623942806.jpg\",\"keywords\":\"[\\\"cumque\\\",\\\"mole\\\"]\",\"kitchen\":\"5\",\"title\":\"Velit culpa quis v\",\"mohda\":\"41\",\"map_location\":\"Voluptatem Sequi vo\",\"user_package_breakdown_id\":12,\"pan_images\":\"[{\\\"title\\\":\\\"\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"000551623942806\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"90\",\"property_attachment\":null,\"price\":\"346\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:58:28', 46),
(57, 57, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aliquid consequat N\",\"build_year\":\"1990-03-09\",\"bathrooms\":\"2\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Qui quisquam totam d\",\"hall\":\"8\",\"image\":\"1623942892.jpg\",\"keywords\":\"[\\\"excepturi\\\"]\",\"kitchen\":\"10\",\"title\":\"Magna sint perferend\",\"mohda\":\"25\",\"map_location\":\"Quas exercitationem \",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000571623942892\",\"property_type\":\"52\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"829\",\"property_attachment\":null,\"price\":\"580\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:59:53', 46),
(58, 57, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aliquid consequat N\",\"build_year\":\"1990-03-09\",\"bathrooms\":\"2\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Qui quisquam totam d\",\"hall\":\"8\",\"image\":\"1623942892.jpg\",\"keywords\":\"[\\\"excepturi\\\"]\",\"kitchen\":\"10\",\"title\":\"Magna sint perferend\",\"mohda\":\"25\",\"map_location\":\"Quas exercitationem \",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000571623942892\",\"property_type\":\"52\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"829\",\"property_attachment\":null,\"price\":\"580\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 20:59:53', 46),
(59, 59, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Consequatur Ullamco\",\"build_year\":\"2005-10-08\",\"bathrooms\":\"4\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Lorem cumque id pers\",\"hall\":\"10\",\"image\":\"1623942937.jpg\",\"keywords\":\"[\\\"eum\\\",\\\"quibusd\\\"]\",\"kitchen\":\"9\",\"title\":\"Anim perspiciatis i\",\"mohda\":\"10\",\"map_location\":\"Molestiae sed non et\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000591623942937\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"432\",\"property_attachment\":null,\"price\":\"899\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:00:37', 46);
INSERT INTO `verification_property` (`id`, `property_id`, `contents`, `auto_verification_status`, `auto_verification_results`, `auto_verification_time`, `verification_comment`, `verification_status`, `edited_status`, `verified_by`, `verified_on`, `requested_on`, `requested_by`) VALUES
(60, 59, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Consequatur Ullamco\",\"build_year\":\"2005-10-08\",\"bathrooms\":\"4\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Lorem cumque id pers\",\"hall\":\"10\",\"image\":\"1623942937.jpg\",\"keywords\":\"[\\\"eum\\\",\\\"quibusd\\\"]\",\"kitchen\":\"9\",\"title\":\"Anim perspiciatis i\",\"mohda\":\"10\",\"map_location\":\"Molestiae sed non et\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000591623942937\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"432\",\"property_attachment\":null,\"price\":\"899\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:00:38', 46),
(61, 61, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Minus minus aut repr\",\"build_year\":\"1973-03-22\",\"bathrooms\":\"3\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Quis in eveniet adi\",\"hall\":\"3\",\"image\":\"1623942999.jpg\",\"keywords\":\"[\\\"est\\\",\\\"non\\\"]\",\"kitchen\":\"4\",\"title\":\"Et aliquid mollitia \",\"mohda\":\"31\",\"map_location\":\"Dolore odit qui plac\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000611623942998\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"422\",\"property_attachment\":null,\"price\":\"654\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:01:41', 46),
(62, 61, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Minus minus aut repr\",\"build_year\":\"1973-03-22\",\"bathrooms\":\"3\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Quis in eveniet adi\",\"hall\":\"3\",\"image\":\"1623942999.jpg\",\"keywords\":\"[\\\"est\\\",\\\"non\\\"]\",\"kitchen\":\"4\",\"title\":\"Et aliquid mollitia \",\"mohda\":\"31\",\"map_location\":\"Dolore odit qui plac\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000611623942998\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"422\",\"property_attachment\":null,\"price\":\"654\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:01:41', 46),
(63, 63, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Quos enim vel facili\",\"build_year\":\"1979-12-16\",\"bathrooms\":\"5\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Amet laborum Iste \",\"hall\":\"7\",\"image\":\"1623943097.jpg\",\"keywords\":\"[\\\"doloremque\\\",\\\"max\\\"]\",\"kitchen\":\"9\",\"title\":\"Rerum voluptatum ut \",\"mohda\":\"18\",\"map_location\":\"Labore a earum sit \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000631623943097\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"937\",\"property_attachment\":null,\"price\":\"964\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:03:18', 46),
(64, 63, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Quos enim vel facili\",\"build_year\":\"1979-12-16\",\"bathrooms\":\"5\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Amet laborum Iste \",\"hall\":\"7\",\"image\":\"1623943097.jpg\",\"keywords\":\"[\\\"doloremque\\\",\\\"max\\\"]\",\"kitchen\":\"9\",\"title\":\"Rerum voluptatum ut \",\"mohda\":\"18\",\"map_location\":\"Labore a earum sit \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000631623943097\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"937\",\"property_attachment\":null,\"price\":\"964\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:03:18', 46),
(65, 65, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Molestiae cupidatat \",\"build_year\":\"1985-07-24\",\"bathrooms\":\"9\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ex non nostrud magna\",\"hall\":\"9\",\"image\":\"1623943153.jpg\",\"keywords\":\"[\\\"sequi\\\"]\",\"kitchen\":\"6\",\"title\":\"Ratione modi beatae \",\"mohda\":\"30\",\"map_location\":\"Est non enim dolores\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000651623943153\",\"property_type\":\"50\",\"property_face\":\"3\",\"property_cat\":\"sale\",\"property_size\":\"358\",\"property_attachment\":null,\"price\":\"931\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:04:15', 46),
(66, 65, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Molestiae cupidatat \",\"build_year\":\"1985-07-24\",\"bathrooms\":\"9\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ex non nostrud magna\",\"hall\":\"9\",\"image\":\"1623943153.jpg\",\"keywords\":\"[\\\"sequi\\\"]\",\"kitchen\":\"6\",\"title\":\"Ratione modi beatae \",\"mohda\":\"30\",\"map_location\":\"Est non enim dolores\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000651623943153\",\"property_type\":\"50\",\"property_face\":\"3\",\"property_cat\":\"sale\",\"property_size\":\"358\",\"property_attachment\":null,\"price\":\"931\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:04:15', 46),
(67, 67, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Consequatur obcaecat\",\"build_year\":\"2015-07-27\",\"bathrooms\":\"4\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Impedit esse adipis\",\"hall\":\"8\",\"image\":\"1623943212.jpg\",\"keywords\":\"[\\\"iste\\\",\\\"ab\\\",\\\"id\\\",\\\"jhgjh\\\"]\",\"kitchen\":\"6\",\"title\":\"Minim unde deserunt \",\"mohda\":\"1\",\"map_location\":\"Iusto tenetur ration\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000671623943211\",\"property_type\":\"34\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"201\",\"property_attachment\":null,\"price\":\"706\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:05:12', 46),
(68, 67, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Consequatur obcaecat\",\"build_year\":\"2015-07-27\",\"bathrooms\":\"4\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Impedit esse adipis\",\"hall\":\"8\",\"image\":\"1623943212.jpg\",\"keywords\":\"[\\\"iste\\\",\\\"ab\\\",\\\"id\\\",\\\"jhgjh\\\"]\",\"kitchen\":\"6\",\"title\":\"Minim unde deserunt \",\"mohda\":\"1\",\"map_location\":\"Iusto tenetur ration\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000671623943211\",\"property_type\":\"34\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"201\",\"property_attachment\":null,\"price\":\"706\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:05:12', 46),
(69, 69, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Voluptatum ipsa eve\",\"build_year\":\"2004-07-06\",\"bathrooms\":\"9\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Tempor asperiores vo\",\"hall\":\"8\",\"image\":\"1623943262.jpg\",\"keywords\":\"[\\\"deleni\\\"]\",\"kitchen\":\"1\",\"title\":\"Accusantium inventor\",\"mohda\":\"1\",\"map_location\":\"Doloremque ex dolore\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000691623943262\",\"property_type\":\"36\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"771\",\"property_attachment\":null,\"price\":\"740\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:06:04', 46),
(70, 69, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Voluptatum ipsa eve\",\"build_year\":\"2004-07-06\",\"bathrooms\":\"9\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Tempor asperiores vo\",\"hall\":\"8\",\"image\":\"1623943262.jpg\",\"keywords\":\"[\\\"deleni\\\"]\",\"kitchen\":\"1\",\"title\":\"Accusantium inventor\",\"mohda\":\"1\",\"map_location\":\"Doloremque ex dolore\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000691623943262\",\"property_type\":\"36\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"771\",\"property_attachment\":null,\"price\":\"740\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:06:04', 46),
(71, 71, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Voluptas id dolore n\",\"build_year\":\"1973-03-27\",\"bathrooms\":\"9\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Laboriosam porro ex\",\"hall\":\"9\",\"image\":\"1623943323.jpg\",\"keywords\":\"[\\\"consequatur\\\"]\",\"kitchen\":\"2\",\"title\":\"Culpa provident vo\",\"mohda\":\"73\",\"map_location\":\"Consequat Accusamus\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000711623943323\",\"property_type\":\"52\",\"property_face\":\"3\",\"property_cat\":\"sale\",\"property_size\":\"500\",\"property_attachment\":null,\"price\":\"882\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:07:03', 46),
(72, 71, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Voluptas id dolore n\",\"build_year\":\"1973-03-27\",\"bathrooms\":\"9\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Laboriosam porro ex\",\"hall\":\"9\",\"image\":\"1623943323.jpg\",\"keywords\":\"[\\\"consequatur\\\"]\",\"kitchen\":\"2\",\"title\":\"Culpa provident vo\",\"mohda\":\"73\",\"map_location\":\"Consequat Accusamus\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000711623943323\",\"property_type\":\"52\",\"property_face\":\"3\",\"property_cat\":\"sale\",\"property_size\":\"500\",\"property_attachment\":null,\"price\":\"882\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:07:04', 46),
(73, 73, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Fuga Ex atque moles\",\"build_year\":\"2001-10-09\",\"bathrooms\":\"9\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"At vitae perferendis\",\"hall\":\"4\",\"image\":\"1623943371.jpg\",\"keywords\":\"[\\\"sunt\\\",\\\"delectus\\\"]\",\"kitchen\":\"2\",\"title\":\"Culpa neque sit ear\",\"mohda\":\"12\",\"map_location\":\"Labore in possimus \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000731623943371\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"946\",\"property_attachment\":null,\"price\":\"696\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:07:53', 46),
(74, 73, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Fuga Ex atque moles\",\"build_year\":\"2001-10-09\",\"bathrooms\":\"9\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"At vitae perferendis\",\"hall\":\"4\",\"image\":\"1623943371.jpg\",\"keywords\":\"[\\\"sunt\\\",\\\"delectus\\\"]\",\"kitchen\":\"2\",\"title\":\"Culpa neque sit ear\",\"mohda\":\"12\",\"map_location\":\"Labore in possimus \",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000731623943371\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"946\",\"property_attachment\":null,\"price\":\"696\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:07:53', 46),
(75, 75, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Sit ex tempora est \",\"build_year\":\"1979-02-10\",\"bathrooms\":\"1\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Accusamus labore fac\",\"hall\":\"8\",\"image\":\"1623943434.png\",\"keywords\":\"[\\\"consequuntur\\\"]\",\"kitchen\":\"8\",\"title\":\"Ut commodo enim blan\",\"mohda\":\"15\",\"map_location\":\"Tenetur mollitia lab\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000751623943434\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"390\",\"property_attachment\":null,\"price\":\"228\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:08:55', 46),
(76, 75, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Sit ex tempora est \",\"build_year\":\"1979-02-10\",\"bathrooms\":\"1\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Accusamus labore fac\",\"hall\":\"8\",\"image\":\"1623943434.png\",\"keywords\":\"[\\\"consequuntur\\\"]\",\"kitchen\":\"8\",\"title\":\"Ut commodo enim blan\",\"mohda\":\"15\",\"map_location\":\"Tenetur mollitia lab\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000751623943434\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"390\",\"property_attachment\":null,\"price\":\"228\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:08:55', 46),
(77, 77, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magni architecto con\",\"build_year\":\"1998-10-13\",\"bathrooms\":\"10\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Dolor quo sint harum\",\"hall\":\"9\",\"image\":\"1623943509.jpg\",\"keywords\":\"[\\\"sed\\\",\\\"mollit\\\"]\",\"kitchen\":\"9\",\"title\":\"Eum rerum quod duis \",\"mohda\":\"34\",\"map_location\":\"Obcaecati ipsam sit\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000771623943509\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"682\",\"property_attachment\":null,\"price\":\"558\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:10:11', 46),
(78, 77, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magni architecto con\",\"build_year\":\"1998-10-13\",\"bathrooms\":\"10\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Dolor quo sint harum\",\"hall\":\"9\",\"image\":\"1623943509.jpg\",\"keywords\":\"[\\\"sed\\\",\\\"mollit\\\"]\",\"kitchen\":\"9\",\"title\":\"Eum rerum quod duis \",\"mohda\":\"34\",\"map_location\":\"Obcaecati ipsam sit\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000771623943509\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"682\",\"property_attachment\":null,\"price\":\"558\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:10:11', 46),
(79, 79, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Et velit facere bla\",\"build_year\":\"1993-03-22\",\"bathrooms\":\"5\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Blanditiis dolorum a\",\"hall\":\"8\",\"image\":\"1623943625.jpg\",\"keywords\":\"[\\\"qui\\\"]\",\"kitchen\":\"3\",\"title\":\"Commodo ipsam molest\",\"mohda\":\"75\",\"map_location\":\"In assumenda rerum v\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000791623943625\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"943\",\"property_attachment\":null,\"price\":\"825\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:12:06', 46),
(80, 79, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Et velit facere bla\",\"build_year\":\"1993-03-22\",\"bathrooms\":\"5\",\"bedrooms\":\"7\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Blanditiis dolorum a\",\"hall\":\"8\",\"image\":\"1623943625.jpg\",\"keywords\":\"[\\\"qui\\\"]\",\"kitchen\":\"3\",\"title\":\"Commodo ipsam molest\",\"mohda\":\"75\",\"map_location\":\"In assumenda rerum v\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000791623943625\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"943\",\"property_attachment\":null,\"price\":\"825\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:12:06', 46),
(81, 81, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Aut fugiat cum ut e\",\"build_year\":\"1990-12-09\",\"bathrooms\":\"8\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ut sunt in perspici\",\"hall\":\"6\",\"image\":\"1623943673.jpg\",\"keywords\":\"[\\\"et\\\",\\\"sint\\\"]\",\"kitchen\":\"3\",\"title\":\"Nesciunt non illo c\",\"mohda\":\"100\",\"map_location\":\"Et quae asperiores c\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000811623943673\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"262\",\"property_attachment\":null,\"price\":\"627\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:12:55', 46),
(82, 81, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Aut fugiat cum ut e\",\"build_year\":\"1990-12-09\",\"bathrooms\":\"8\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Ut sunt in perspici\",\"hall\":\"6\",\"image\":\"1623943673.jpg\",\"keywords\":\"[\\\"et\\\",\\\"sint\\\"]\",\"kitchen\":\"3\",\"title\":\"Nesciunt non illo c\",\"mohda\":\"100\",\"map_location\":\"Et quae asperiores c\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000811623943673\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"262\",\"property_attachment\":null,\"price\":\"627\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:12:55', 46),
(83, 83, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Excepteur consectetu\",\"build_year\":\"2019-01-09\",\"bathrooms\":\"10\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Facere velit laborum\",\"hall\":\"5\",\"image\":\"1623943720.jpg\",\"keywords\":\"[\\\"lorem\\\",\\\"deserun\\\"]\",\"kitchen\":\"5\",\"title\":\"Qui ad minus aut aut\",\"mohda\":\"7\",\"map_location\":\"Asperiores omnis est\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000831623943720\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"482\",\"property_attachment\":null,\"price\":\"213\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:13:43', 46),
(84, 83, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Excepteur consectetu\",\"build_year\":\"2019-01-09\",\"bathrooms\":\"10\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Facere velit laborum\",\"hall\":\"5\",\"image\":\"1623943720.jpg\",\"keywords\":\"[\\\"lorem\\\",\\\"deserun\\\"]\",\"kitchen\":\"5\",\"title\":\"Qui ad minus aut aut\",\"mohda\":\"7\",\"map_location\":\"Asperiores omnis est\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000831623943720\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"482\",\"property_attachment\":null,\"price\":\"213\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:13:43', 46),
(85, 85, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Voluptates est cill\",\"build_year\":\"1999-07-03\",\"bathrooms\":\"10\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Sapiente voluptas qu\",\"hall\":\"1\",\"image\":\"1623943778.jpg\",\"keywords\":\"[\\\"ipsa\\\",\\\"repr\\\"]\",\"kitchen\":\"10\",\"title\":\"Corrupti ut deserun\",\"mohda\":\"26\",\"map_location\":\"Quod aute atque mole\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000851623943778\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"227\",\"property_attachment\":null,\"price\":\"180\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:14:39', 46),
(86, 85, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Voluptates est cill\",\"build_year\":\"1999-07-03\",\"bathrooms\":\"10\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Sapiente voluptas qu\",\"hall\":\"1\",\"image\":\"1623943778.jpg\",\"keywords\":\"[\\\"ipsa\\\",\\\"repr\\\"]\",\"kitchen\":\"10\",\"title\":\"Corrupti ut deserun\",\"mohda\":\"26\",\"map_location\":\"Quod aute atque mole\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000851623943778\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"227\",\"property_attachment\":null,\"price\":\"180\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:14:39', 46),
(87, 87, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Doloremque sit illu\",\"build_year\":\"2013-07-23\",\"bathrooms\":\"4\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Minim id aute irure \",\"hall\":\"5\",\"image\":\"1623943831.jpg\",\"keywords\":\"[\\\"Saepe\\\",\\\"quo\\\"]\",\"kitchen\":\"1\",\"title\":\"Ut quo sed sunt opti\",\"mohda\":\"75\",\"map_location\":\"Quis laborum elit u\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000871623943831\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"770\",\"property_attachment\":null,\"price\":\"159\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:15:32', 46),
(88, 87, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Doloremque sit illu\",\"build_year\":\"2013-07-23\",\"bathrooms\":\"4\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Minim id aute irure \",\"hall\":\"5\",\"image\":\"1623943831.jpg\",\"keywords\":\"[\\\"Saepe\\\",\\\"quo\\\"]\",\"kitchen\":\"1\",\"title\":\"Ut quo sed sunt opti\",\"mohda\":\"75\",\"map_location\":\"Quis laborum elit u\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000871623943831\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"sale\",\"property_size\":\"770\",\"property_attachment\":null,\"price\":\"159\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:15:32', 46),
(89, 89, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Sit tenetur necessit\",\"build_year\":\"1975-08-19\",\"bathrooms\":\"8\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"At consequatur id qu\",\"hall\":\"9\",\"image\":\"1623943870.jpg\",\"keywords\":\"[\\\"consectetur\\\"]\",\"kitchen\":\"2\",\"title\":\"Anim ducimus est fu\",\"mohda\":\"36\",\"map_location\":\"Facere ipsum sint d\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000891623943870\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"601\",\"property_attachment\":null,\"price\":\"978\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:16:11', 46),
(90, 89, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Sit tenetur necessit\",\"build_year\":\"1975-08-19\",\"bathrooms\":\"8\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"At consequatur id qu\",\"hall\":\"9\",\"image\":\"1623943870.jpg\",\"keywords\":\"[\\\"consectetur\\\"]\",\"kitchen\":\"2\",\"title\":\"Anim ducimus est fu\",\"mohda\":\"36\",\"map_location\":\"Facere ipsum sint d\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000891623943870\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"601\",\"property_attachment\":null,\"price\":\"978\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:16:11', 46),
(91, 91, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Sit quia consectetur\",\"build_year\":\"2020-02-26\",\"bathrooms\":\"2\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Velit sit sed aliqui\",\"hall\":\"1\",\"image\":\"1623943926.jpg\",\"keywords\":\"[\\\"sit\\\",\\\"i\\\"]\",\"kitchen\":\"10\",\"title\":\"Est mollitia sint no\",\"mohda\":\"7\",\"map_location\":\"Pariatur Consectetu\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000911623943926\",\"property_type\":\"50\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"668\",\"property_attachment\":null,\"price\":\"50\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:17:07', 46),
(92, 91, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Sit quia consectetur\",\"build_year\":\"2020-02-26\",\"bathrooms\":\"2\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Velit sit sed aliqui\",\"hall\":\"1\",\"image\":\"1623943926.jpg\",\"keywords\":\"[\\\"sit\\\",\\\"i\\\"]\",\"kitchen\":\"10\",\"title\":\"Est mollitia sint no\",\"mohda\":\"7\",\"map_location\":\"Pariatur Consectetu\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000911623943926\",\"property_type\":\"50\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"668\",\"property_attachment\":null,\"price\":\"50\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:17:07', 46),
(93, 93, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Est nihil voluptatem\",\"build_year\":\"2007-04-24\",\"bathrooms\":\"7\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Similique ducimus e\",\"hall\":\"6\",\"image\":null,\"keywords\":\"[\\\"culpa\\\"]\",\"kitchen\":\"2\",\"title\":\"Et enim sit quaerat \",\"mohda\":\"70\",\"map_location\":\"Dolores similique ip\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000931623943972\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"884\",\"property_attachment\":null,\"price\":\"194\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:17:53', 46),
(94, 93, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Est nihil voluptatem\",\"build_year\":\"2007-04-24\",\"bathrooms\":\"7\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Similique ducimus e\",\"hall\":\"6\",\"image\":null,\"keywords\":\"[\\\"culpa\\\"]\",\"kitchen\":\"2\",\"title\":\"Et enim sit quaerat \",\"mohda\":\"70\",\"map_location\":\"Dolores similique ip\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000931623943972\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"884\",\"property_attachment\":null,\"price\":\"194\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:17:53', 46),
(95, 95, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"At dolor qui molesti\",\"build_year\":\"2016-11-13\",\"bathrooms\":\"10\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Facere consectetur d\",\"hall\":\"4\",\"image\":\"1623944023.jpg\",\"keywords\":\"[\\\"cum\\\",\\\"Sed\\\"]\",\"kitchen\":\"6\",\"title\":\"Omnis qui eos conse\",\"mohda\":\"80\",\"map_location\":\"Minima est porro re\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000951623944023\",\"property_type\":\"50\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"10\",\"property_attachment\":null,\"price\":\"725\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:18:44', 46),
(96, 95, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"At dolor qui molesti\",\"build_year\":\"2016-11-13\",\"bathrooms\":\"10\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Facere consectetur d\",\"hall\":\"4\",\"image\":\"1623944023.jpg\",\"keywords\":\"[\\\"cum\\\",\\\"Sed\\\"]\",\"kitchen\":\"6\",\"title\":\"Omnis qui eos conse\",\"mohda\":\"80\",\"map_location\":\"Minima est porro re\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000951623944023\",\"property_type\":\"50\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"10\",\"property_attachment\":null,\"price\":\"725\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:18:44', 46),
(97, 97, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Est proident offic\",\"build_year\":\"1991-02-16\",\"bathrooms\":\"5\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Esse cum quis accus\",\"hall\":\"3\",\"image\":\"1623944068.jpg\",\"keywords\":\"[\\\"tempore\\\",\\\"ve\\\"]\",\"kitchen\":\"6\",\"title\":\"Cupidatat fuga Ut o\",\"mohda\":\"41\",\"map_location\":\"Velit a velit proide\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000971623944067\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"255\",\"property_attachment\":null,\"price\":\"685\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:19:28', 46),
(98, 97, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Est proident offic\",\"build_year\":\"1991-02-16\",\"bathrooms\":\"5\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Esse cum quis accus\",\"hall\":\"3\",\"image\":\"1623944068.jpg\",\"keywords\":\"[\\\"tempore\\\",\\\"ve\\\"]\",\"kitchen\":\"6\",\"title\":\"Cupidatat fuga Ut o\",\"mohda\":\"41\",\"map_location\":\"Velit a velit proide\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"000971623944067\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"255\",\"property_attachment\":null,\"price\":\"685\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:19:29', 46),
(99, 99, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Consequatur sit cu\",\"build_year\":\"2020-03-22\",\"bathrooms\":\"9\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Laboris facere incid\",\"hall\":\"2\",\"image\":\"1623944122.jpg\",\"keywords\":\"[\\\"ul\\\",\\\"iusto\\\",\\\"ducim\\\"]\",\"kitchen\":\"2\",\"title\":\"Fugit quis dicta de\",\"mohda\":\"84\",\"map_location\":\"Asperiores sit disti\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000991623944122\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"295\",\"property_attachment\":null,\"price\":\"276\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:20:23', 46),
(100, 99, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Consequatur sit cu\",\"build_year\":\"2020-03-22\",\"bathrooms\":\"9\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Laboris facere incid\",\"hall\":\"2\",\"image\":\"1623944122.jpg\",\"keywords\":\"[\\\"ul\\\",\\\"iusto\\\",\\\"ducim\\\"]\",\"kitchen\":\"2\",\"title\":\"Fugit quis dicta de\",\"mohda\":\"84\",\"map_location\":\"Asperiores sit disti\",\"user_package_breakdown_id\":4,\"pan_images\":null,\"property_code\":\"000991623944122\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"sale\",\"property_size\":\"295\",\"property_attachment\":null,\"price\":\"276\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:20:23', 46),
(101, 101, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magna ut sed et est \",\"build_year\":\"1977-10-26\",\"bathrooms\":\"8\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Duis rerum dolor ad \",\"hall\":\"2\",\"image\":\"1623944229.jpg\",\"keywords\":\"[\\\"voluptas\\\"]\",\"kitchen\":\"2\",\"title\":\"Sed optio similique\",\"mohda\":\"29\",\"map_location\":\"Sit esse dolor est c\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"0001011623944229\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"86\",\"property_attachment\":null,\"price\":\"753\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:22:10', 46),
(102, 101, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magna ut sed et est \",\"build_year\":\"1977-10-26\",\"bathrooms\":\"8\",\"bedrooms\":\"1\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Duis rerum dolor ad \",\"hall\":\"2\",\"image\":\"1623944229.jpg\",\"keywords\":\"[\\\"voluptas\\\"]\",\"kitchen\":\"2\",\"title\":\"Sed optio similique\",\"mohda\":\"29\",\"map_location\":\"Sit esse dolor est c\",\"user_package_breakdown_id\":3,\"pan_images\":null,\"property_code\":\"0001011623944229\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"86\",\"property_attachment\":null,\"price\":\"753\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-17 21:22:10', 46),
(103, 103, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Proident nemo fugit\",\"build_year\":\"1995-05-28\",\"bathrooms\":\"3\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Ipsam atque facere a\",\"hall\":\"5\",\"image\":\"1623994899.jpg\",\"keywords\":\"[\\\"e\\\",\\\"Dolorem\\\",\\\"ut\\\"]\",\"kitchen\":\"2\",\"title\":\"Obcaecati nisi et ir\",\"mohda\":\"41\",\"map_location\":\"Numquam et do ab vol\",\"user_package_breakdown_id\":15,\"pan_images\":\"[{\\\"title\\\":\\\"living\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"0001031623994899\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"886\",\"property_attachment\":null,\"price\":\"637\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 11:26:40', 46),
(104, 103, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Proident nemo fugit\",\"build_year\":\"1995-05-28\",\"bathrooms\":\"3\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Ipsam atque facere a\",\"hall\":\"5\",\"image\":\"1623994899.jpg\",\"keywords\":\"[\\\"e\\\",\\\"Dolorem\\\",\\\"ut\\\"]\",\"kitchen\":\"2\",\"title\":\"Obcaecati nisi et ir\",\"mohda\":\"41\",\"map_location\":\"Numquam et do ab vol\",\"user_package_breakdown_id\":15,\"pan_images\":\"[{\\\"title\\\":\\\"living\\\",\\\"filename\\\":\\\"\\\"}]\",\"property_code\":\"0001031623994899\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"886\",\"property_attachment\":null,\"price\":\"637\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 11:26:40', 46),
(105, 105, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998143.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001051623998143\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:20:44', 46),
(106, 105, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998143.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001051623998143\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:20:44', 46),
(107, 107, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998191.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001071623998191\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:21:32', 46),
(108, 107, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998191.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001071623998191\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:21:32', 46),
(109, 109, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998210.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001091623998210\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:21:51', 46),
(110, 109, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998210.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001091623998210\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:21:51', 46),
(111, 111, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998232.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001111623998232\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:22:12', 46),
(112, 111, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Aute perferendis cup\",\"build_year\":\"2015-12-07\",\"bathrooms\":\"4\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Dolorem sint conseq\",\"hall\":\"7\",\"image\":\"1623998232.jpg\",\"keywords\":\"[\\\"ut\\\"]\",\"kitchen\":\"1\",\"title\":\"Officiis adipisci ip\",\"mohda\":\"49\",\"map_location\":\"In et aut officia ei\",\"user_package_breakdown_id\":6,\"pan_images\":null,\"property_code\":\"0001111623998232\",\"property_type\":\"36\",\"property_face\":\"2\",\"property_cat\":\"rent\",\"property_size\":\"800\",\"property_attachment\":null,\"price\":\"909\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-18 12:22:12', 46),
(113, 113, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Rem ad corporis veli\",\"build_year\":\"2002-03-09\",\"bathrooms\":\"7\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Aliqua Sed quo veli\",\"hall\":\"4\",\"image\":\"1624337845.jpg\",\"keywords\":\"[\\\"libero\\\"]\",\"kitchen\":\"8\",\"title\":\"Distinctio Aut veri\",\"mohda\":\"89\",\"map_location\":\"Consequatur ratione\",\"user_package_breakdown_id\":114,\"pan_images\":null,\"property_code\":\"0001131624337845\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"632\",\"property_attachment\":null,\"price\":\"635\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 10:42:26', 46),
(114, 113, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Rem ad corporis veli\",\"build_year\":\"2002-03-09\",\"bathrooms\":\"7\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Aliqua Sed quo veli\",\"hall\":\"4\",\"image\":\"1624337845.jpg\",\"keywords\":\"[\\\"libero\\\"]\",\"kitchen\":\"8\",\"title\":\"Distinctio Aut veri\",\"mohda\":\"89\",\"map_location\":\"Consequatur ratione\",\"user_package_breakdown_id\":114,\"pan_images\":null,\"property_code\":\"0001131624337845\",\"property_type\":\"36\",\"property_face\":\"6\",\"property_cat\":\"rent\",\"property_size\":\"632\",\"property_attachment\":null,\"price\":\"635\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 10:42:26', 46),
(115, 115, '{\"add_image\":\"\",\"amenities\":null,\"address\":\"Voluptatem excepteu\",\"build_year\":\"1983-04-11\",\"bathrooms\":\"9\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Aliquip est voluptas\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"quia\\\"]\",\"kitchen\":\"7\",\"title\":\"Dolore laudantium i\",\"mohda\":\"43\",\"map_location\":\"Repellendus Corrupt\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001151624341615\",\"property_type\":\"34\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"227\",\"property_attachment\":null,\"price\":\"87\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:45:15', 46),
(116, 115, '{\"add_image\":\"\",\"amenities\":null,\"address\":\"Voluptatem excepteu\",\"build_year\":\"1983-04-11\",\"bathrooms\":\"9\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Aliquip est voluptas\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"quia\\\"]\",\"kitchen\":\"7\",\"title\":\"Dolore laudantium i\",\"mohda\":\"43\",\"map_location\":\"Repellendus Corrupt\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001151624341615\",\"property_type\":\"34\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"227\",\"property_attachment\":null,\"price\":\"87\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:45:15', 46),
(117, 117, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Minus corrupti amet\",\"build_year\":\"1993-05-21\",\"bathrooms\":\"7\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Eius laboriosam eum\",\"hall\":\"4\",\"image\":null,\"keywords\":\"[\\\"voluptatem\\\"]\",\"kitchen\":\"9\",\"title\":\"Id amet Nam fuga \",\"mohda\":\"86\",\"map_location\":\"Aut a omnis nisi qua\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001171624341663\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"674\",\"property_attachment\":null,\"price\":\"738\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:46:03', 46),
(118, 117, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Minus corrupti amet\",\"build_year\":\"1993-05-21\",\"bathrooms\":\"7\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Eius laboriosam eum\",\"hall\":\"4\",\"image\":null,\"keywords\":\"[\\\"voluptatem\\\"]\",\"kitchen\":\"9\",\"title\":\"Id amet Nam fuga \",\"mohda\":\"86\",\"map_location\":\"Aut a omnis nisi qua\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001171624341663\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"674\",\"property_attachment\":null,\"price\":\"738\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:46:03', 46),
(119, 119, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Hic voluptas possimu\",\"build_year\":\"2019-08-13\",\"bathrooms\":\"9\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Ea nesciunt eligend\",\"hall\":\"10\",\"image\":null,\"keywords\":\"[\\\"ut\\\",\\\"voluptate\\\",\\\"v\\\"]\",\"kitchen\":\"5\",\"title\":\"Nulla id quas beata\",\"mohda\":\"67\",\"map_location\":\"Dicta eveniet ut as\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001191624341801\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"354\",\"property_attachment\":null,\"price\":\"1000\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:48:21', 46);
INSERT INTO `verification_property` (`id`, `property_id`, `contents`, `auto_verification_status`, `auto_verification_results`, `auto_verification_time`, `verification_comment`, `verification_status`, `edited_status`, `verified_by`, `verified_on`, `requested_on`, `requested_by`) VALUES
(120, 119, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Hic voluptas possimu\",\"build_year\":\"2019-08-13\",\"bathrooms\":\"9\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Ea nesciunt eligend\",\"hall\":\"10\",\"image\":null,\"keywords\":\"[\\\"ut\\\",\\\"voluptate\\\",\\\"v\\\"]\",\"kitchen\":\"5\",\"title\":\"Nulla id quas beata\",\"mohda\":\"67\",\"map_location\":\"Dicta eveniet ut as\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001191624341801\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"354\",\"property_attachment\":null,\"price\":\"1000\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:48:21', 46),
(121, 121, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Molestiae voluptas v\",\"build_year\":\"2005-09-22\",\"bathrooms\":\"1\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Est iusto exercitati\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"et\\\",\\\"il\\\"]\",\"kitchen\":\"2\",\"title\":\"Quo animi in iusto \",\"mohda\":\"14\",\"map_location\":\"Aliquid laboris dolo\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001211624341873\",\"property_type\":\"34\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"444\",\"property_attachment\":null,\"price\":\"680\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:49:33', 46),
(122, 121, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Molestiae voluptas v\",\"build_year\":\"2005-09-22\",\"bathrooms\":\"1\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Est iusto exercitati\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"et\\\",\\\"il\\\"]\",\"kitchen\":\"2\",\"title\":\"Quo animi in iusto \",\"mohda\":\"14\",\"map_location\":\"Aliquid laboris dolo\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001211624341873\",\"property_type\":\"34\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"444\",\"property_attachment\":null,\"price\":\"680\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:49:33', 46),
(123, 123, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Dolor error odio ips\",\"build_year\":\"1971-03-26\",\"bathrooms\":\"5\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Laborum Officiis la\",\"hall\":\"4\",\"image\":null,\"keywords\":\"[\\\"ipsum\\\",\\\"quod\\\",\\\"exer\\\"]\",\"kitchen\":\"8\",\"title\":\"Ea dicta voluptate q\",\"mohda\":\"51\",\"map_location\":\"Amet consequatur om\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001231624342049\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"982\",\"property_attachment\":null,\"price\":\"44\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:52:29', 46),
(124, 123, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Dolor error odio ips\",\"build_year\":\"1971-03-26\",\"bathrooms\":\"5\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Laborum Officiis la\",\"hall\":\"4\",\"image\":null,\"keywords\":\"[\\\"ipsum\\\",\\\"quod\\\",\\\"exer\\\"]\",\"kitchen\":\"8\",\"title\":\"Ea dicta voluptate q\",\"mohda\":\"51\",\"map_location\":\"Amet consequatur om\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001231624342049\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"982\",\"property_attachment\":null,\"price\":\"44\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-22 11:52:29', 46),
(125, 125, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Rerum exercitation n\",\"build_year\":\"1998-10-02\",\"bathrooms\":\"7\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Rerum laudantium di\",\"hall\":\"7\",\"image\":null,\"keywords\":\"[\\\"eiusmod\\\",\\\"perspicia\\\"]\",\"kitchen\":\"2\",\"title\":\"Vero itaque quia pra\",\"mohda\":\"77\",\"map_location\":\"Mollitia voluptatibu\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001251624426572\",\"property_type\":\"34\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"997\",\"property_attachment\":null,\"price\":\"718\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-23 11:21:12', 46),
(126, 125, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Rerum exercitation n\",\"build_year\":\"1998-10-02\",\"bathrooms\":\"7\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Rerum laudantium di\",\"hall\":\"7\",\"image\":null,\"keywords\":\"[\\\"eiusmod\\\",\\\"perspicia\\\"]\",\"kitchen\":\"2\",\"title\":\"Vero itaque quia pra\",\"mohda\":\"77\",\"map_location\":\"Mollitia voluptatibu\",\"user_package_breakdown_id\":112,\"pan_images\":null,\"property_code\":\"0001251624426572\",\"property_type\":\"34\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"997\",\"property_attachment\":null,\"price\":\"718\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-23 11:21:12', 46),
(127, 127, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Id laborum ut quia \",\"build_year\":\"1986-12-16\",\"bathrooms\":\"3\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Eum velit ex volupta\",\"hall\":\"2\",\"image\":null,\"keywords\":\"[\\\"illum\\\",\\\"et\\\",\\\"Eu\\\",\\\"ul\\\"]\",\"kitchen\":\"2\",\"title\":\"Aliquip voluptatem \",\"mohda\":\"54\",\"map_location\":\"Vero nesciunt omnis\",\"user_package_breakdown_id\":118,\"pan_images\":null,\"property_code\":\"0001271624785016\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"230\",\"property_attachment\":null,\"price\":\"118\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 14:55:16', 46),
(128, 127, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Id laborum ut quia \",\"build_year\":\"1986-12-16\",\"bathrooms\":\"3\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Eum velit ex volupta\",\"hall\":\"2\",\"image\":null,\"keywords\":\"[\\\"illum\\\",\\\"et\\\",\\\"Eu\\\",\\\"ul\\\"]\",\"kitchen\":\"2\",\"title\":\"Aliquip voluptatem \",\"mohda\":\"54\",\"map_location\":\"Vero nesciunt omnis\",\"user_package_breakdown_id\":118,\"pan_images\":null,\"property_code\":\"0001271624785016\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"230\",\"property_attachment\":null,\"price\":\"118\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 14:55:16', 46),
(129, 129, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Quis maiores proiden\",\"build_year\":\"2018-12-28\",\"bathrooms\":\"1\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Perferendis eum est\",\"hall\":\"9\",\"image\":null,\"keywords\":\"[\\\"ipsum\\\",\\\"quia\\\"]\",\"kitchen\":\"1\",\"title\":\"Id tenetur itaque i\",\"mohda\":\"43\",\"map_location\":\"Et voluptas excepteu\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001291624785087\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"810\",\"property_attachment\":null,\"price\":\"494\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 14:56:27', 46),
(130, 129, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Quis maiores proiden\",\"build_year\":\"2018-12-28\",\"bathrooms\":\"1\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Perferendis eum est\",\"hall\":\"9\",\"image\":null,\"keywords\":\"[\\\"ipsum\\\",\\\"quia\\\"]\",\"kitchen\":\"1\",\"title\":\"Id tenetur itaque i\",\"mohda\":\"43\",\"map_location\":\"Et voluptas excepteu\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001291624785087\",\"property_type\":\"36\",\"property_face\":\"1\",\"property_cat\":\"rent\",\"property_size\":\"810\",\"property_attachment\":null,\"price\":\"494\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 14:56:27', 46),
(131, 131, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Et ex reprehenderit\",\"build_year\":\"1983-12-10\",\"bathrooms\":\"9\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Mollitia adipisci a \",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"optio\\\"]\",\"kitchen\":\"4\",\"title\":\"Est dignissimos non \",\"mohda\":\"47\",\"map_location\":\"Ex occaecat qui aliq\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001311624785612\",\"property_type\":\"34\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"217\",\"property_attachment\":null,\"price\":\"880\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:05:13', 46),
(132, 131, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Et ex reprehenderit\",\"build_year\":\"1983-12-10\",\"bathrooms\":\"9\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Mollitia adipisci a \",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"optio\\\"]\",\"kitchen\":\"4\",\"title\":\"Est dignissimos non \",\"mohda\":\"47\",\"map_location\":\"Ex occaecat qui aliq\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001311624785612\",\"property_type\":\"34\",\"property_face\":\"1\",\"property_cat\":\"sale\",\"property_size\":\"217\",\"property_attachment\":null,\"price\":\"880\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:05:13', 46),
(133, 133, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Duis velit maiores i\",\"build_year\":\"1973-03-09\",\"bathrooms\":\"10\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Consequatur dolorem\",\"hall\":\"8\",\"image\":null,\"keywords\":\"[\\\"non\\\",\\\"maxime\\\"]\",\"kitchen\":\"2\",\"title\":\"Commodo odio minus e\",\"mohda\":\"48\",\"map_location\":\"Expedita ut quasi in\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001331624785646\",\"property_type\":\"34\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"78\",\"property_attachment\":null,\"price\":\"891\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:05:46', 46),
(134, 133, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Duis velit maiores i\",\"build_year\":\"1973-03-09\",\"bathrooms\":\"10\",\"bedrooms\":\"3\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Consequatur dolorem\",\"hall\":\"8\",\"image\":null,\"keywords\":\"[\\\"non\\\",\\\"maxime\\\"]\",\"kitchen\":\"2\",\"title\":\"Commodo odio minus e\",\"mohda\":\"48\",\"map_location\":\"Expedita ut quasi in\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001331624785646\",\"property_type\":\"34\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"78\",\"property_attachment\":null,\"price\":\"891\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:05:46', 46),
(135, 135, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magnam aliqua Sit \",\"build_year\":\"1974-01-21\",\"bathrooms\":\"9\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Id ullamco necessit\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"incididunt\\\"]\",\"kitchen\":\"10\",\"title\":\"Et mollit excepturi \",\"mohda\":\"77\",\"map_location\":\"Qui dignissimos aut \",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001351624785750\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"342\",\"property_attachment\":null,\"price\":\"897\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:07:30', 46),
(136, 135, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Magnam aliqua Sit \",\"build_year\":\"1974-01-21\",\"bathrooms\":\"9\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Id ullamco necessit\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"incididunt\\\"]\",\"kitchen\":\"10\",\"title\":\"Et mollit excepturi \",\"mohda\":\"77\",\"map_location\":\"Qui dignissimos aut \",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001351624785750\",\"property_type\":\"36\",\"property_face\":\"3\",\"property_cat\":\"rent\",\"property_size\":\"342\",\"property_attachment\":null,\"price\":\"897\",\"road_type\":\"0\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:07:30', 46),
(137, 137, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Officia incidunt nu\",\"build_year\":\"1990-08-03\",\"bathrooms\":\"5\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Quis anim consectetu\",\"hall\":\"1\",\"image\":null,\"keywords\":\"[\\\"qui\\\"]\",\"kitchen\":\"9\",\"title\":\"Provident voluptas \",\"mohda\":\"22\",\"map_location\":\"Nostrum cumque asper\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001371624785774\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"44\",\"property_attachment\":null,\"price\":\"773\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:07:54', 46),
(138, 137, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Officia incidunt nu\",\"build_year\":\"1990-08-03\",\"bathrooms\":\"5\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Quis anim consectetu\",\"hall\":\"1\",\"image\":null,\"keywords\":\"[\\\"qui\\\"]\",\"kitchen\":\"9\",\"title\":\"Provident voluptas \",\"mohda\":\"22\",\"map_location\":\"Nostrum cumque asper\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001371624785774\",\"property_type\":\"36\",\"property_face\":\"7\",\"property_cat\":\"rent\",\"property_size\":\"44\",\"property_attachment\":null,\"price\":\"773\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:07:54', 46),
(139, 139, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Doloribus dolorum ve\",\"build_year\":\"1988-09-21\",\"bathrooms\":\"3\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Tenetur excepteur au\",\"hall\":\"6\",\"image\":null,\"keywords\":\"[\\\"aut\\\"]\",\"kitchen\":\"1\",\"title\":\"Nisi doloribus liber\",\"mohda\":\"53\",\"map_location\":\"Voluptas voluptatem\",\"user_package_breakdown_id\":119,\"pan_images\":null,\"property_code\":\"0001391624788303\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"452\",\"property_attachment\":null,\"price\":\"17\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:50:04', 46),
(140, 139, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Doloribus dolorum ve\",\"build_year\":\"1988-09-21\",\"bathrooms\":\"3\",\"bedrooms\":\"8\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"8\",\"description\":\"Tenetur excepteur au\",\"hall\":\"6\",\"image\":null,\"keywords\":\"[\\\"aut\\\"]\",\"kitchen\":\"1\",\"title\":\"Nisi doloribus liber\",\"mohda\":\"53\",\"map_location\":\"Voluptas voluptatem\",\"user_package_breakdown_id\":119,\"pan_images\":null,\"property_code\":\"0001391624788303\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"452\",\"property_attachment\":null,\"price\":\"17\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:50:04', 46),
(141, 141, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"\",\"build_year\":\"\",\"bathrooms\":\"\",\"bedrooms\":\"\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"\",\"description\":\"Consequat Dolore mi\",\"hall\":\"\",\"image\":\"1624788351.jpg\",\"keywords\":\"[\\\"neque\\\"]\",\"kitchen\":\"\",\"title\":\"Aut qui doloribus ve\",\"mohda\":\"\",\"map_location\":\"\",\"user_package_breakdown_id\":114,\"pan_images\":null,\"property_code\":\"0001411624788351\",\"property_type\":\"34\",\"property_face\":\"\",\"property_cat\":\"sale\",\"property_size\":\"\",\"property_attachment\":null,\"price\":\"207\",\"road_type\":\"\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:50:51', 46),
(142, 142, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Enim architecto enim\",\"build_year\":\"1987-06-01\",\"bathrooms\":\"8\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Et eiusmod laudantiu\",\"hall\":\"6\",\"image\":\"1624788394.jpg\",\"keywords\":\"[\\\"Incidunt\\\",\\\"dolori\\\"]\",\"kitchen\":\"6\",\"title\":\"Dolor sint beatae qu\",\"mohda\":\"70\",\"map_location\":\"Dolor in iusto non e\",\"user_package_breakdown_id\":119,\"pan_images\":null,\"property_code\":\"0001421624788394\",\"property_type\":\"34\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"789\",\"property_attachment\":null,\"price\":\"641\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:51:34', 46),
(143, 142, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Enim architecto enim\",\"build_year\":\"1987-06-01\",\"bathrooms\":\"8\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Et eiusmod laudantiu\",\"hall\":\"6\",\"image\":\"1624788394.jpg\",\"keywords\":\"[\\\"Incidunt\\\",\\\"dolori\\\"]\",\"kitchen\":\"6\",\"title\":\"Dolor sint beatae qu\",\"mohda\":\"70\",\"map_location\":\"Dolor in iusto non e\",\"user_package_breakdown_id\":119,\"pan_images\":null,\"property_code\":\"0001421624788394\",\"property_type\":\"34\",\"property_face\":\"5\",\"property_cat\":\"sale\",\"property_size\":\"789\",\"property_attachment\":null,\"price\":\"641\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 15:51:34', 46),
(144, 144, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Consectetur vitae m\",\"build_year\":\"2006-01-07\",\"bathrooms\":\"2\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Quae aliquip perfere\",\"hall\":\"4\",\"image\":\"1624792142.jpg\",\"keywords\":\"[\\\"qui\\\",\\\"Quaerat\\\",\\\"delectus\\\"]\",\"kitchen\":\"4\",\"title\":\"Iure eu expedita inc\",\"mohda\":\"80\",\"map_location\":\"Omnis ut voluptas qu\",\"user_package_breakdown_id\":11,\"pan_images\":null,\"property_code\":\"0001441624792141\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"482\",\"property_attachment\":null,\"price\":\"613\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 16:54:02', 46),
(145, 144, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Consectetur vitae m\",\"build_year\":\"2006-01-07\",\"bathrooms\":\"2\",\"bedrooms\":\"4\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Quae aliquip perfere\",\"hall\":\"4\",\"image\":\"1624792142.jpg\",\"keywords\":\"[\\\"qui\\\",\\\"Quaerat\\\",\\\"delectus\\\"]\",\"kitchen\":\"4\",\"title\":\"Iure eu expedita inc\",\"mohda\":\"80\",\"map_location\":\"Omnis ut voluptas qu\",\"user_package_breakdown_id\":11,\"pan_images\":null,\"property_code\":\"0001441624792141\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"482\",\"property_attachment\":null,\"price\":\"613\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 16:54:02', 46),
(146, 146, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Mollitia in omnis qu\",\"build_year\":\"1993-05-27\",\"bathrooms\":\"6\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Deserunt ullam itaqu\",\"hall\":\"8\",\"image\":null,\"keywords\":\"[\\\"mag\\\"]\",\"kitchen\":\"9\",\"title\":\"Deserunt dolorem aut\",\"mohda\":\"83\",\"map_location\":\"Ab ducimus ipsa am\",\"user_package_breakdown_id\":124,\"pan_images\":null,\"property_code\":\"0001461624792630\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"695\",\"property_attachment\":null,\"price\":\"42\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:02:11', 46),
(147, 146, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Mollitia in omnis qu\",\"build_year\":\"1993-05-27\",\"bathrooms\":\"6\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Deserunt ullam itaqu\",\"hall\":\"8\",\"image\":null,\"keywords\":\"[\\\"mag\\\"]\",\"kitchen\":\"9\",\"title\":\"Deserunt dolorem aut\",\"mohda\":\"83\",\"map_location\":\"Ab ducimus ipsa am\",\"user_package_breakdown_id\":124,\"pan_images\":null,\"property_code\":\"0001461624792630\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"695\",\"property_attachment\":null,\"price\":\"42\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:02:11', 46),
(148, 148, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Qui voluptate aut na\",\"build_year\":\"1987-07-14\",\"bathrooms\":\"1\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Dolores elit in off\",\"hall\":\"1\",\"image\":\"1624792764.jpg\",\"keywords\":\"[\\\"Anim\\\",\\\"eos\\\"]\",\"kitchen\":\"1\",\"title\":\"Culpa ratione totam \",\"mohda\":\"29\",\"map_location\":\"Sint iure consectetu\",\"user_package_breakdown_id\":124,\"pan_images\":null,\"property_code\":\"0001481624792764\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"558\",\"property_attachment\":null,\"price\":\"440\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:04:24', 46),
(149, 148, '{\"add_image\":\"\",\"amenities\":\"3\",\"address\":\"Qui voluptate aut na\",\"build_year\":\"1987-07-14\",\"bathrooms\":\"1\",\"bedrooms\":\"2\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"12\",\"description\":\"Dolores elit in off\",\"hall\":\"1\",\"image\":\"1624792764.jpg\",\"keywords\":\"[\\\"Anim\\\",\\\"eos\\\"]\",\"kitchen\":\"1\",\"title\":\"Culpa ratione totam \",\"mohda\":\"29\",\"map_location\":\"Sint iure consectetu\",\"user_package_breakdown_id\":124,\"pan_images\":null,\"property_code\":\"0001481624792764\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"558\",\"property_attachment\":null,\"price\":\"440\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:04:24', 46),
(150, 150, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Fuga Voluptate aut \",\"build_year\":\"2000-07-13\",\"bathrooms\":\"1\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Autem excepturi exce\",\"hall\":\"1\",\"image\":\"1624793898.jpg\",\"keywords\":\"[\\\"poss\\\",\\\"Consequatur\\\",\\\"ut\\\",\\\"exerc\\\"]\",\"kitchen\":\"4\",\"title\":\"Sit architecto arch\",\"mohda\":\"30\",\"map_location\":\"Commodi in fugiat u\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001501624793898\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"661\",\"property_attachment\":null,\"price\":\"43\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:23:18', 46),
(151, 150, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Fuga Voluptate aut \",\"build_year\":\"2000-07-13\",\"bathrooms\":\"1\",\"bedrooms\":\"9\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Autem excepturi exce\",\"hall\":\"1\",\"image\":\"1624793898.jpg\",\"keywords\":\"[\\\"poss\\\",\\\"Consequatur\\\",\\\"ut\\\",\\\"exerc\\\"]\",\"kitchen\":\"4\",\"title\":\"Sit architecto arch\",\"mohda\":\"30\",\"map_location\":\"Commodi in fugiat u\",\"user_package_breakdown_id\":120,\"pan_images\":null,\"property_code\":\"0001501624793898\",\"property_type\":\"34\",\"property_face\":\"6\",\"property_cat\":\"sale\",\"property_size\":\"661\",\"property_attachment\":null,\"price\":\"43\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:23:18', 46),
(152, 152, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Assumenda laudantium\",\"build_year\":\"1971-05-14\",\"bathrooms\":\"5\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Labore ipsum ut sed \",\"hall\":\"1\",\"image\":\"1624795022.jpg\",\"keywords\":\"[\\\"Non\\\",\\\"voluptas\\\",\\\"autem\\\"]\",\"kitchen\":\"2\",\"title\":\"Exercitationem digni\",\"mohda\":\"12\",\"map_location\":\"Dolorem proident ex\",\"user_package_breakdown_id\":118,\"pan_images\":null,\"property_code\":\"0001521624795021\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"413\",\"property_attachment\":null,\"price\":\"861\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:42:02', 46),
(153, 152, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Assumenda laudantium\",\"build_year\":\"1971-05-14\",\"bathrooms\":\"5\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"6\",\"description\":\"Labore ipsum ut sed \",\"hall\":\"1\",\"image\":\"1624795022.jpg\",\"keywords\":\"[\\\"Non\\\",\\\"voluptas\\\",\\\"autem\\\"]\",\"kitchen\":\"2\",\"title\":\"Exercitationem digni\",\"mohda\":\"12\",\"map_location\":\"Dolorem proident ex\",\"user_package_breakdown_id\":118,\"pan_images\":null,\"property_code\":\"0001521624795021\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"413\",\"property_attachment\":null,\"price\":\"861\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:42:02', 46),
(154, 154, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Libero soluta sint \",\"build_year\":\"2008-03-01\",\"bathrooms\":\"8\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Assumenda totam dolo\",\"hall\":\"9\",\"image\":\"1624795066.jpg\",\"keywords\":\"[\\\"soluta\\\",\\\"proide\\\"]\",\"kitchen\":\"6\",\"title\":\"Aspernatur omnis sit\",\"mohda\":\"1\",\"map_location\":\"Tempora ad impedit \",\"user_package_breakdown_id\":118,\"pan_images\":null,\"property_code\":\"0001541624795066\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"92\",\"property_attachment\":null,\"price\":\"827\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:42:46', 46),
(155, 154, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Libero soluta sint \",\"build_year\":\"2008-03-01\",\"bathrooms\":\"8\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Assumenda totam dolo\",\"hall\":\"9\",\"image\":\"1624795066.jpg\",\"keywords\":\"[\\\"soluta\\\",\\\"proide\\\"]\",\"kitchen\":\"6\",\"title\":\"Aspernatur omnis sit\",\"mohda\":\"1\",\"map_location\":\"Tempora ad impedit \",\"user_package_breakdown_id\":118,\"pan_images\":null,\"property_code\":\"0001541624795066\",\"property_type\":\"34\",\"property_face\":\"7\",\"property_cat\":\"sale\",\"property_size\":\"92\",\"property_attachment\":null,\"price\":\"827\",\"road_type\":\"1\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:42:46', 46),
(156, 156, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Dolore voluptate ut \",\"build_year\":\"2014-08-21\",\"bathrooms\":\"5\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Quod laudantium des\",\"hall\":\"10\",\"image\":\"1624795385.jpg\",\"keywords\":\"[\\\"perferendis\\\",\\\"Est\\\",\\\"officia\\\"]\",\"kitchen\":\"2\",\"title\":\"Dolor aperiam ea dig\",\"mohda\":\"82\",\"map_location\":\"Quis nemo cillum qui\",\"user_package_breakdown_id\":129,\"pan_images\":null,\"property_code\":\"0001561624795385\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"649\",\"property_attachment\":null,\"price\":\"725\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:48:06', 46),
(157, 156, '{\"add_image\":\"\",\"amenities\":\"3,4\",\"address\":\"Dolore voluptate ut \",\"build_year\":\"2014-08-21\",\"bathrooms\":\"5\",\"bedrooms\":\"6\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"1\",\"description\":\"Quod laudantium des\",\"hall\":\"10\",\"image\":\"1624795385.jpg\",\"keywords\":\"[\\\"perferendis\\\",\\\"Est\\\",\\\"officia\\\"]\",\"kitchen\":\"2\",\"title\":\"Dolor aperiam ea dig\",\"mohda\":\"82\",\"map_location\":\"Quis nemo cillum qui\",\"user_package_breakdown_id\":129,\"pan_images\":null,\"property_code\":\"0001561624795385\",\"property_type\":\"36\",\"property_face\":\"0\",\"property_cat\":\"rent\",\"property_size\":\"649\",\"property_attachment\":null,\"price\":\"725\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-27 17:48:06', 46),
(158, 158, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Consequatur laborio\",\"build_year\":\"1974-07-18\",\"bathrooms\":\"5\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Numquam repellendus\",\"hall\":\"8\",\"image\":\"1625027231.jpg\",\"keywords\":\"[\\\"et\\\"]\",\"kitchen\":\"2\",\"title\":\"Ipsum sint quia re\",\"mohda\":\"46\",\"map_location\":\"In numquam similique\",\"user_package_breakdown_id\":130,\"pan_images\":null,\"property_code\":\"0001581625027231\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"148\",\"property_attachment\":null,\"price\":\"564\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-30 10:12:11', 46),
(159, 158, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Consequatur laborio\",\"build_year\":\"1974-07-18\",\"bathrooms\":\"5\",\"bedrooms\":\"10\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"3\",\"description\":\"Numquam repellendus\",\"hall\":\"8\",\"image\":\"1625027231.jpg\",\"keywords\":\"[\\\"et\\\"]\",\"kitchen\":\"2\",\"title\":\"Ipsum sint quia re\",\"mohda\":\"46\",\"map_location\":\"In numquam similique\",\"user_package_breakdown_id\":130,\"pan_images\":null,\"property_code\":\"0001581625027231\",\"property_type\":\"36\",\"property_face\":\"5\",\"property_cat\":\"rent\",\"property_size\":\"148\",\"property_attachment\":null,\"price\":\"564\",\"road_type\":\"2\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-06-30 10:12:11', 46),
(160, 160, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Sed non minus ullam \",\"build_year\":\"2021-11-27\",\"bathrooms\":\"4\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Cupiditate quis proi\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"quasi\\\",\\\"ve\\\"]\",\"kitchen\":\"8\",\"title\":\"Doloremque odit eum \",\"mohda\":\"48\",\"map_location\":\"Expedita dolore in c\",\"user_package_breakdown_id\":138,\"pan_images\":null,\"property_code\":\"0001601625468325\",\"property_type\":\"34\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"126\",\"property_attachment\":null,\"price\":\"490\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-07-05 12:43:46', 46),
(161, 160, '{\"add_image\":\"\",\"amenities\":\"4\",\"address\":\"Sed non minus ullam \",\"build_year\":\"2021-11-27\",\"bathrooms\":\"4\",\"bedrooms\":\"5\",\"content_lang\":\"en\",\"created_by\":46,\"created_on\":null,\"city\":\"10\",\"description\":\"Cupiditate quis proi\",\"hall\":\"3\",\"image\":null,\"keywords\":\"[\\\"quasi\\\",\\\"ve\\\"]\",\"kitchen\":\"8\",\"title\":\"Doloremque odit eum \",\"mohda\":\"48\",\"map_location\":\"Expedita dolore in c\",\"user_package_breakdown_id\":138,\"pan_images\":null,\"property_code\":\"0001601625468325\",\"property_type\":\"34\",\"property_face\":\"4\",\"property_cat\":\"sale\",\"property_size\":\"126\",\"property_attachment\":null,\"price\":\"490\",\"road_type\":\"3\",\"youtube_videos\":\"\"}', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-07-05 12:43:46', 46);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) NOT NULL,
  `row_id` bigint(20) NOT NULL,
  `table_name` varchar(250) NOT NULL,
  `session_id` varchar(300) DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `location` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `row_id`, `table_name`, `session_id`, `ip`, `location`, `created_at`) VALUES
(15, 2, 'PropertyDirectory', '4rqega8ttfinf80an0qjft054e', '::1', ',', '2021-04-26 13:36:02'),
(16, 9, 'PropertyDirectory', '4rqega8ttfinf80an0qjft054e', '::1', ',', '2021-04-26 13:39:30'),
(17, 11, 'PropertyDirectory', '4rqega8ttfinf80an0qjft054e', '::1', ',', '2021-04-26 13:40:09'),
(18, 11, 'PropertyDirectory', 'pq10l8504vcgc8a6ivmebq937l', '::1', ',', '2021-04-26 15:26:56'),
(19, 2, 'PropertyDirectory', 'pq10l8504vcgc8a6ivmebq937l', '::1', ',', '2021-04-26 18:08:30'),
(20, 8, 'PropertyDirectory', 'ee7ilidteuj732hrf6eo8r0arf', '::1', ',', '2021-04-26 19:04:44'),
(21, 16, 'PropertyDirectory', 'ee7ilidteuj732hrf6eo8r0arf', '::1', ',', '2021-04-26 19:15:14'),
(22, 11, 'PropertyDirectory', 'ee7ilidteuj732hrf6eo8r0arf', '::1', ',', '2021-04-26 19:15:41'),
(23, 16, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:17:10'),
(24, 8, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:30:56'),
(25, 6, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:31:10'),
(26, 11, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:32:30'),
(27, 2, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:34:06'),
(28, 5, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:35:44'),
(29, 4, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:39:25'),
(30, 14, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:39:39'),
(31, 10, 'PropertyDirectory', 'qir5pvmpveqgt2hqfjhqn903fc', '::1', ',', '2021-04-26 20:42:46'),
(32, 6, 'PropertyDirectory', 'n26c14olgvfkhjt1a99srti7ku', '::1', ',', '2021-04-26 22:33:00'),
(33, 6, 'PropertyDirectory', 'vtcmljjf11gj2u1jbqq8brbhfj', '::1', ',', '2021-04-27 10:32:11'),
(34, 6, 'PropertyDirectory', 'rjqgbnpgi5h127q4fl5giojnoj', '::1', ',', '2021-04-27 11:23:49'),
(35, 6, 'PropertyDirectory', 'qt12m49c2u8tjjvht19cl53umo', '::1', ',', '2021-04-27 12:34:22'),
(36, 6, 'PropertyDirectory', '7s2e0rpi5rdlsvlo3crehu5ld5', '::1', ',', '2021-04-27 13:40:07'),
(37, 6, 'PropertyDirectory', '3nu6iq4flvbgtf33nsrlecohir', '::1', ',', '2021-04-27 14:56:38'),
(38, 6, 'PropertyDirectory', 'a59da878sb4lij2sbvf33hn30r', '::1', ',', '2021-04-27 15:11:12'),
(39, 9, 'PropertyDirectory', 'fhl93voiv3f43i9o6v1a0hoopb', '::1', ',', '2021-04-27 17:14:05'),
(40, 13, 'Blog', 'f944kaeet4lb7di1g02ho76qvv', '::1', ',', '2021-04-28 23:50:08'),
(41, 13, 'Blog', 'vh86updlm9vifktg9qgpouoddd', '::1', ',', '2021-04-29 00:02:29'),
(42, 13, 'Blog', 'b3g4vpod5bna1g3t4ceqgbafun', '::1', ',', '2021-04-29 00:19:46'),
(43, 14, 'Blog', 'b3g4vpod5bna1g3t4ceqgbafun', '::1', ',', '2021-04-29 00:44:01'),
(44, 16, 'Blog', 'b3g4vpod5bna1g3t4ceqgbafun', '::1', ',', '2021-04-29 00:44:47'),
(45, 15, 'Blog', 'b3g4vpod5bna1g3t4ceqgbafun', '::1', ',', '2021-04-29 00:45:28'),
(46, 15, 'Blog', 'abmalfd2e7c0hcnjmd4cplkmme', '::1', ',', '2021-04-29 11:06:56'),
(47, 36, 'News', '6i7isakg9g8qeo90djas6rscnc', '::1', ',', '2021-04-29 14:59:06'),
(48, 24, 'News', '6i7isakg9g8qeo90djas6rscnc', '::1', ',', '2021-04-29 15:01:37'),
(49, 8, 'PropertyDirectory', '6i7isakg9g8qeo90djas6rscnc', '::1', ',', '2021-04-29 16:30:59'),
(50, 6, 'PropertyDirectory', '6i7isakg9g8qeo90djas6rscnc', '::1', ',', '2021-04-29 17:43:24'),
(51, 2, 'PropertyDirectory', 'emf9nf72isre3icrhvh5l2s0us', '::1', ',', '2021-04-30 10:32:36'),
(52, 6, 'PropertyDirectory', 'emf9nf72isre3icrhvh5l2s0us', '::1', ',', '2021-04-30 10:32:50'),
(53, 4, 'PropertyDirectory', 'e88qmiipmsdvb8bfh8im70fiqj', '::1', ',', '2021-04-30 11:50:52'),
(54, 5, 'PropertyDirectory', 'fbuvnc94eto5n07g05qpcm9r6h', '::1', ',', '2021-05-02 13:18:06'),
(55, 9, 'PropertyDirectory', '4rmpqito2k2oa3m8vk31mmmepd', '::1', ',', '2021-05-02 17:56:07'),
(56, 6, 'PropertyDirectory', '4rmpqito2k2oa3m8vk31mmmepd', '::1', ',', '2021-05-02 17:56:20'),
(57, 5, 'PropertyDirectory', 'hltinabs7t5j6vq4v2hr7m8mp3', '::1', ',', '2021-05-04 10:45:31'),
(58, 6, 'PropertyDirectory', 'hltinabs7t5j6vq4v2hr7m8mp3', '::1', ',', '2021-05-04 10:45:43'),
(59, 9, 'PropertyDirectory', 'hltinabs7t5j6vq4v2hr7m8mp3', '::1', ',', '2021-05-04 10:46:01'),
(60, 4, 'PropertyDirectory', 'hltinabs7t5j6vq4v2hr7m8mp3', '::1', ',', '2021-05-04 10:46:13'),
(61, 14, 'PropertyDirectory', 'hltinabs7t5j6vq4v2hr7m8mp3', '::1', ',', '2021-05-04 10:46:24'),
(62, 2, 'PropertyDirectory', 'hltinabs7t5j6vq4v2hr7m8mp3', '::1', ',', '2021-05-04 10:48:32'),
(63, 2, 'PropertyDirectory', '4lrdghg3thfntnkd7j43k8tqnj', '::1', ',', '2021-05-04 10:59:53'),
(64, 9, 'PropertyDirectory', '6q8jhbb7jaknashqvfpepf6s42', '127.0.0.1', ',', '2021-05-04 15:52:10'),
(65, 14, 'PropertyDirectory', '6q8jhbb7jaknashqvfpepf6s42', '127.0.0.1', ',', '2021-05-04 15:55:55'),
(66, 11, 'PropertyDirectory', '6q8jhbb7jaknashqvfpepf6s42', '127.0.0.1', ',', '2021-05-04 15:57:20'),
(67, 14, 'PropertyDirectory', 'h4sfr7vifudjtj9tn0orsdm6kp', '127.0.0.1', ',', '2021-05-04 15:59:53'),
(68, 11, 'PropertyDirectory', 'h4sfr7vifudjtj9tn0orsdm6kp', '127.0.0.1', ',', '2021-05-04 16:00:03'),
(69, 8, 'PropertyDirectory', 'h4sfr7vifudjtj9tn0orsdm6kp', '127.0.0.1', ',', '2021-05-04 16:01:53'),
(70, 14, 'PropertyDirectory', '5bp4k2kqp1ujvot6esp7ln7cuq', '127.0.0.1', ',', '2021-05-04 16:03:18'),
(71, 11, 'PropertyDirectory', '5bp4k2kqp1ujvot6esp7ln7cuq', '127.0.0.1', ',', '2021-05-04 16:03:34'),
(72, 8, 'PropertyDirectory', '5bp4k2kqp1ujvot6esp7ln7cuq', '127.0.0.1', ',', '2021-05-04 16:04:21'),
(73, 14, 'PropertyDirectory', 'c1rltk6rkkd7mqokra8cuqsib4', '127.0.0.1', NULL, '2021-05-04 16:05:33'),
(74, 11, 'PropertyDirectory', 'c1rltk6rkkd7mqokra8cuqsib4', '127.0.0.1', NULL, '2021-05-04 16:05:49'),
(75, 6, 'PropertyDirectory', 'c1rltk6rkkd7mqokra8cuqsib4', '127.0.0.1', NULL, '2021-05-04 16:08:07'),
(76, 14, 'PropertyDirectory', 'fv1cqk0f7pu6ks43m09a8rhr07', '127.0.0.1', NULL, '2021-05-04 16:12:21'),
(77, 8, 'PropertyDirectory', NULL, '127.0.0.1', NULL, '2021-05-04 16:13:04'),
(78, 8, 'PropertyDirectory', 'fv1cqk0f7pu6ks43m09a8rhr07', '127.0.0.1', NULL, '2021-05-04 16:14:33'),
(79, 6, 'PropertyDirectory', 'fv1cqk0f7pu6ks43m09a8rhr07', '127.0.0.1', NULL, '2021-05-04 16:16:51'),
(80, 6, 'PropertyDirectory', '4v3qq4449ns6buuief2rb37itl', '127.0.0.1', NULL, '2021-05-04 17:50:57'),
(81, 9, 'PropertyDirectory', 'vb2lvchjn67rbsp6cfrp671718', '127.0.0.1', NULL, '2021-05-04 17:52:33'),
(82, 11, 'PropertyDirectory', 'd0l170m8msuj9csmg7spi6fcas', '127.0.0.1', NULL, '2021-05-04 17:59:09'),
(83, 9, 'PropertyDirectory', 'd0l170m8msuj9csmg7spi6fcas', '127.0.0.1', NULL, '2021-05-04 18:01:39'),
(84, 6, 'PropertyDirectory', 'd0l170m8msuj9csmg7spi6fcas', '127.0.0.1', NULL, '2021-05-04 18:02:25'),
(85, 11, 'PropertyDirectory', 'dn4hd3nucngssimgfs2vktp6rd', '127.0.0.1', NULL, '2021-05-04 18:02:34'),
(86, 14, 'PropertyDirectory', 'qvk8pue2u2f44449hfp12vpdel', '127.0.0.1', NULL, '2021-05-04 18:02:46'),
(87, 6, 'PropertyDirectory', 'qvk8pue2u2f44449hfp12vpdel', '127.0.0.1', NULL, '2021-05-04 18:03:53'),
(88, 11, 'PropertyDirectory', 'ou7sfc5fmt09qv51jbuljbo8vu', '127.0.0.1', NULL, '2021-05-04 18:04:55'),
(89, 9, 'PropertyDirectory', 'ou7sfc5fmt09qv51jbuljbo8vu', '127.0.0.1', NULL, '2021-05-04 18:09:59'),
(90, 9, 'PropertyDirectory', '9c7n78j3qtkcudr5obiqb5bk5g', '127.0.0.1', NULL, '2021-05-04 18:12:56'),
(91, 9, 'PropertyDirectory', 'ba8aki8qhpp6i4e0gjm7s004k1', '127.0.0.1', NULL, '2021-05-05 11:34:16'),
(92, 14, 'PropertyDirectory', 'ba8aki8qhpp6i4e0gjm7s004k1', '127.0.0.1', NULL, '2021-05-05 11:58:02'),
(93, 14, 'PropertyDirectory', '2tph0d3s9b75ju0cm3mjcnepml', '127.0.0.1', NULL, '2021-05-05 11:59:05'),
(94, 8, 'PropertyDirectory', 'cel6bjdv1os5nc0hsphguh5ohq', '127.0.0.1', NULL, '2021-05-05 13:17:51'),
(95, 14, 'PropertyDirectory', 'cel6bjdv1os5nc0hsphguh5ohq', '127.0.0.1', NULL, '2021-05-05 13:27:44'),
(96, 14, 'PropertyDirectory', 'gr6dkeiiaqqcgtqlqcpdoli2m9', '127.0.0.1', NULL, '2021-05-06 14:18:06'),
(97, 11, 'PropertyDirectory', '2ad8a0kimu0e6ikpoo13n5n91h', '127.0.0.1', NULL, '2021-05-08 15:14:57'),
(98, 13, 'Blog', '7erqh179i0vq0qui3oqk5ea7pe', '127.0.0.1', NULL, '2021-05-10 00:26:02'),
(99, 22, 'News', '7erqh179i0vq0qui3oqk5ea7pe', '127.0.0.1', NULL, '2021-05-10 00:55:07'),
(100, 2, 'News', '7erqh179i0vq0qui3oqk5ea7pe', '127.0.0.1', NULL, '2021-05-10 01:09:36'),
(101, 4, 'News', '7erqh179i0vq0qui3oqk5ea7pe', '127.0.0.1', NULL, '2021-05-10 01:11:37'),
(102, 41, 'News', '7erqh179i0vq0qui3oqk5ea7pe', '127.0.0.1', NULL, '2021-05-10 01:16:51'),
(103, 11, 'PropertyDirectory', 'n2s3qtjhqdtd4t3s54h5l074sn', '::1', NULL, '2021-05-10 12:31:59'),
(104, 12, 'PropertyDirectory', 'n2s3qtjhqdtd4t3s54h5l074sn', '::1', NULL, '2021-05-10 12:32:55'),
(105, 22, 'News', 'e4eqt8l4c3ik9d9l4pvn8uiphl', '::1', NULL, '2021-05-10 12:47:31'),
(106, 26, 'News', 'q5ukub0nbiicvps7pq03h9spic', '::1', NULL, '2021-05-10 12:57:49'),
(107, 11, 'PropertyDirectory', 'pje5m3nh39g48gtk16lqsa5buc', '::1', NULL, '2021-05-10 13:16:42'),
(108, 9, 'PropertyDirectory', 'pje5m3nh39g48gtk16lqsa5buc', '::1', NULL, '2021-05-10 13:56:32'),
(109, 6, 'PropertyDirectory', 'pje5m3nh39g48gtk16lqsa5buc', '::1', NULL, '2021-05-10 14:00:38'),
(110, 11, 'PropertyDirectory', 'psh0gdmo0s842je5tv8uc7p8gt', '::1', NULL, '2021-05-10 14:41:08'),
(111, 2, 'PropertyDirectory', 'psh0gdmo0s842je5tv8uc7p8gt', '::1', NULL, '2021-05-10 14:46:01'),
(112, 9, 'PropertyDirectory', 'psh0gdmo0s842je5tv8uc7p8gt', '::1', NULL, '2021-05-10 14:46:27'),
(113, 4, 'PropertyDirectory', 'psh0gdmo0s842je5tv8uc7p8gt', '::1', NULL, '2021-05-10 14:47:15'),
(114, 14, 'PropertyDirectory', '7q83he5o4e70p6aa29vo101v5q', '::1', NULL, '2021-05-10 17:43:00'),
(115, 62, 'PropertyDirectory', '2fufsmdrk2aubea9o5c812u4ka', '::1', NULL, '2021-05-11 11:42:23'),
(116, 14, 'PropertyDirectory', 'm73tsrib6sjf8gbl1g0t3dhm1h', '::1', NULL, '2021-05-11 13:03:01'),
(117, 6, 'PropertyDirectory', 'm73tsrib6sjf8gbl1g0t3dhm1h', '::1', NULL, '2021-05-11 13:24:35'),
(118, 6, 'PropertyDirectory', '3jmb0qt724oms6nm7j4q82m75v', '::1', NULL, '2021-05-11 13:59:53'),
(119, 6, 'PropertyDirectory', 'dh4q7c91qp2940uh2t243r3k8u', '::1', NULL, '2021-05-11 14:17:36'),
(120, 2, 'PropertyDirectory', 'kol4mc9ph6conq8n2ocskd5l6a', '::1', NULL, '2021-05-11 15:26:37'),
(121, 14, 'PropertyDirectory', 'qqd5afk7mgjd924vl5cdr2t5r7', '::1', NULL, '2021-05-11 20:59:05'),
(122, 9, 'PropertyDirectory', 'qqd5afk7mgjd924vl5cdr2t5r7', '::1', NULL, '2021-05-11 20:59:48'),
(123, 6, 'PropertyDirectory', 'qqd5afk7mgjd924vl5cdr2t5r7', '::1', NULL, '2021-05-11 21:00:04'),
(124, 14, 'PropertyDirectory', '696l2mrtgh6omrotu29m5bbskc', '::1', NULL, '2021-05-11 22:23:59'),
(125, 6, 'PropertyDirectory', 'd9gkdio8rs82kj7gn6e70eeumh', '127.0.0.1', NULL, '2021-05-12 16:34:49'),
(126, 72, 'PropertyDirectory', 'd9gkdio8rs82kj7gn6e70eeumh', '127.0.0.1', NULL, '2021-05-12 16:34:57'),
(127, 72, 'PropertyDirectory', '541l7gaplrplfgkvaagq0m1u5k', '127.0.0.1', NULL, '2021-05-12 16:35:59'),
(128, 12, 'PropertyDirectory', '036dbgh535eda4v9krm1qskva4', '::1', NULL, '2021-05-13 11:52:57'),
(129, 6, 'PropertyDirectory', 'b1sbne3t97lenbp4gv92b8kpl3', '::1', NULL, '2021-05-16 14:33:16'),
(130, 74, 'PropertyDirectory', 'b1sbne3t97lenbp4gv92b8kpl3', '::1', NULL, '2021-05-16 14:47:58'),
(131, 74, 'PropertyDirectory', 'pplorjdq2tdgaji2dnrt8b0gbg', '::1', NULL, '2021-05-16 15:17:27'),
(132, 74, 'PropertyDirectory', '739bvsq3pnk415ulgseks90id0', '::1', NULL, '2021-05-16 15:19:46'),
(133, 70, 'PropertyDirectory', '739bvsq3pnk415ulgseks90id0', '::1', NULL, '2021-05-16 15:27:19'),
(134, 2, 'PropertyDirectory', '739bvsq3pnk415ulgseks90id0', '::1', NULL, '2021-05-16 15:39:49'),
(135, 11, 'PropertyDirectory', 'cu4jum2ig91fdgc1gj8tl4i57a', '::1', NULL, '2021-05-17 11:32:02'),
(136, 74, 'PropertyDirectory', 'cu4jum2ig91fdgc1gj8tl4i57a', '::1', NULL, '2021-05-17 11:36:56'),
(137, 68, 'PropertyDirectory', 'cu4jum2ig91fdgc1gj8tl4i57a', '::1', NULL, '2021-05-17 11:37:11'),
(138, 70, 'PropertyDirectory', 'cu4jum2ig91fdgc1gj8tl4i57a', '::1', NULL, '2021-05-17 11:44:18'),
(139, 9, 'PropertyDirectory', 'cu4jum2ig91fdgc1gj8tl4i57a', '::1', NULL, '2021-05-17 11:51:24'),
(140, 2, 'PropertyDirectory', 'cu4jum2ig91fdgc1gj8tl4i57a', '::1', NULL, '2021-05-17 11:55:13'),
(141, 2, 'PropertyDirectory', 'idlp237ib68t9b4075d5pvhak3', '::1', NULL, '2021-05-18 14:58:04'),
(142, 66, 'PropertyDirectory', 'ctk54um0l416gtlrpq6luo96rg', '::1', NULL, '2021-05-18 16:25:02'),
(143, 74, 'PropertyDirectory', 'ctk54um0l416gtlrpq6luo96rg', '::1', NULL, '2021-05-18 16:25:17'),
(144, 6, 'PropertyDirectory', 'ctk54um0l416gtlrpq6luo96rg', '::1', NULL, '2021-05-18 16:39:49'),
(145, 9, 'PropertyDirectory', 'cabpmvf32umhdovkg43qgmatu4', '::1', NULL, '2021-05-22 16:14:07'),
(146, 70, 'PropertyDirectory', 'qu03balud9sd0kjnomdb6n3n6n', '::1', NULL, '2021-05-25 09:03:49'),
(147, 74, 'PropertyDirectory', 'r1i07p1a298ism2njeitvs6ki8', '::1', NULL, '2021-05-25 11:44:27'),
(148, 70, 'PropertyDirectory', 'r1i07p1a298ism2njeitvs6ki8', '::1', NULL, '2021-05-25 11:44:54'),
(149, 137, 'PropertyDirectory', 'pe5on9l7ajqbs8051fotfn4iiq', '::1', NULL, '2021-05-27 11:18:17'),
(150, 139, 'PropertyDirectory', '2o252ruhjkiki29q9cpcgkbre0', '::1', NULL, '2021-05-27 18:15:16'),
(151, 137, 'PropertyDirectory', 'j3ujj8aa5ggon8dc824nu2b62r', '::1', NULL, '2021-05-28 10:35:40'),
(152, 137, 'PropertyDirectory', 'rj4ut02ptl1oq4t2vn3r3hmgla', '::1', NULL, '2021-05-28 10:44:33'),
(153, 137, 'PropertyDirectory', 't5cjtm8ulr8deqe65fjuhkbmr7', '::1', NULL, '2021-05-28 10:52:07'),
(154, 141, 'PropertyDirectory', 't5cjtm8ulr8deqe65fjuhkbmr7', '::1', NULL, '2021-05-28 10:53:24'),
(155, 143, 'PropertyDirectory', 't5cjtm8ulr8deqe65fjuhkbmr7', '::1', NULL, '2021-05-28 15:01:20'),
(156, 143, 'PropertyDirectory', 'qsn695tmd0soien9m4m7c6a6da', '::1', NULL, '2021-05-30 14:12:01'),
(157, 148, 'PropertyDirectory', 'ktthp3tsa7dn6s3pmcse68jp19', '::1', NULL, '2021-06-04 13:32:56'),
(158, 152, 'PropertyDirectory', 'ktthp3tsa7dn6s3pmcse68jp19', '::1', NULL, '2021-06-04 13:33:17'),
(159, 12, 'PropertyDirectory', 'tlvg2mf45ha4idggl1aktlr0ht', '::1', NULL, '2021-06-18 08:33:00'),
(160, 104, 'PropertyDirectory', '3d6n9tdc3ojb2mdlavqvdlsibq', '::1', NULL, '2021-06-18 12:17:20'),
(161, 104, 'PropertyDirectory', 'e5mve3j0mjb910d0kn1ecqraj2', '192.168.1.68', NULL, '2021-06-18 12:28:00'),
(162, 114, 'PropertyDirectory', '9sfqe2k1ltn3n02h9ug8ulpgll', '::1', NULL, '2021-06-22 11:14:46'),
(163, 126, 'PropertyDirectory', 'uo040h6mslna7qua1n2qoj2r32', '::1', NULL, '2021-06-27 18:10:31'),
(164, 157, 'PropertyDirectory', 'uo040h6mslna7qua1n2qoj2r32', '::1', NULL, '2021-06-27 18:12:56'),
(165, 149, 'PropertyDirectory', 'uo040h6mslna7qua1n2qoj2r32', '::1', NULL, '2021-06-27 18:25:22'),
(166, 157, 'PropertyDirectory', '4el7hk21couu32mkbi9r5k9tv0', '::1', NULL, '2021-06-28 08:16:35'),
(167, 159, 'PropertyDirectory', 'ejqqvfqd9g5chme7tbpikq5lbb', '::1', NULL, '2021-06-30 10:14:42'),
(168, 159, 'PropertyDirectory', '633uhd4he66og9s13hbvh8cpht', '::1', NULL, '2021-06-30 11:14:35'),
(169, 159, 'PropertyDirectory', '53s0n7k67r76ifhrshfa7lfm1f', '::1', NULL, '2021-06-30 12:16:13'),
(170, 157, 'PropertyDirectory', 'j9kh2ego1nb2oohma7dncd8br1', '::1', NULL, '2021-06-30 12:41:06'),
(171, 149, 'PropertyDirectory', 'j9kh2ego1nb2oohma7dncd8br1', '::1', NULL, '2021-06-30 12:43:29'),
(172, 149, 'PropertyDirectory', 'm3unusqpvbnme6vjp23vpt9pa9', '::1', NULL, '2021-06-30 13:42:40'),
(173, 134, 'PropertyDirectory', 'e8gdj1p0cvei0ojtcqrcon1gu3', '::1', NULL, '2021-07-05 17:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `website_details`
--

CREATE TABLE `website_details` (
  `id` bigint(20) NOT NULL,
  `content_lang` varchar(200) DEFAULT NULL,
  `child_id` bigint(20) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `roles` varchar(200) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` bigint(20) NOT NULL,
  `updated_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_details`
--

INSERT INTO `website_details` (`id`, `content_lang`, `child_id`, `slug`, `title`, `content`, `is_active`, `roles`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 'en', 2, 'about', 'Basicc', '                                <p><br></p><p class=\"letter-spacing-263 text-uppercase text-primary mb-6 font-weight-500 text-center\">welcome to LANDMARK\r\n               </p><p>\r\n               <br></p><h2 class=\"text-heading mb-4 fs-22 fs-md-32 text-center lh-16 px-6\">We see change as opportunity, not a\r\n                  threat and\r\n                  start\r\n                  with the\r\n                  belief that\r\n                  there is\r\n                  a better way. </h2><p><br></p><p class=\"text-center px-lg-11 fs-15 lh-17 mb-11\">\r\n                  Over the past 25 years we’ve created more than 5,000 new homes and 1.5 million sq ft of workspace in\r\n                  over 60 regeneration projects. Have a look at the short film below to learn more about how we’ve\r\n                  achieved this and what drives us.\r\n               </p><p><br></p>                        ', 1, '1,2,3,4', 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(2, 'nep', NULL, 'about', 'About', '                <p><br></p><p class=\"letter-spacing-263 text-uppercase text-primary mb-6 font-weight-500 text-center\">लन्डमार्कमा स्वागत छ</p><p><br></p><h2 class=\"text-heading mb-4 fs-22 fs-md-32 text-center lh-16 px-6\">हामी परिवर्तनलाई अवसरको रूपमा देख्छौं, धम्की होइन र विश्वासको साथ सुरु हुन्छ त्यहाँ उत्तम मार्ग छ।</h2><p><br></p><p class=\"text-center px-lg-11 fs-15 lh-17 mb-11\">\r\n                  विगत २ years बर्षमा हामीले 5,000० भन्दा बढी नयाँ निर्माण परियोजनाहरूमा 5,000,००० भन्दा बढी नयाँ घरहरू र १. million मिलियन वर्ग फुट कार्यक्षेत्र सिर्जना गरेका छौं। हामीले यो कसरी हासिल गरेका छौं र हामीलाई के ड्राइभ गर्छ भन्ने बारे थप जान्न तलको छोटो फिल्म हेर्नुहोस्।</p><p><br></p><p><br></p>            ', NULL, NULL, 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(3, 'en', 4, 'terms_conditions', 'Terms & Conditions', '<ol><li>a</li><li>b</li><li>c</li><li>d</li><li>e</li><li>f</li><li>g</li><li>h</li><li>i</li><li>j</li><li>k</li><li>l</li><li>m</li></ol>', NULL, NULL, 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(4, 'nep', NULL, 'terms_conditions', 'नियम तथा सर्त', '<ol><li>                पर्खी बसे आउला भनि\r\nमेरो उठने पालो\r\nमेरो उठने पालो\r\nकुर्दा कुर्दै जिन्दगी नै\r\nभै गएछ कालो कालो\r\nभै गएछ कालो\r\nमेरो उठने पालो\r\nवारि पारि अँध्यारो छ आँखा खोली हेर्दा\r\nअँध्यारो नै देखिन्छ नि आँखा चिम्ली हेर्दा\r\nवारि पारि अँध्यारो छ आँखा खोली हेर्दा\r\nअँध्यारो नै देखिन्छ नि आँखा चिम्ली हेर्दा\r\nआफ्नै छाँया आफै सँग भागी हिँड्न थाल्यो\r\nभागी हिँड्न थाल्यो\r\nआफ्नै माँया आफैलाई बोझ लाग्न थाल्यो थाल्यो\r\nबोझ लाग्न थाल्यो\r\nबोझ लाग्न थाल्यो\r\nतातो हाँवा बहिदिन्छ मुटु पोल्ने गरी\r\nनिराशाको दियो बल्छ दिनै जल्ने गरी\r\nतातो हाँवा बहिदिन्छ मुटु…             </li></ol>', NULL, NULL, 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(5, 'en', 6, 'privacy', 'Privacy', '                <ol><li>a</li><li>b</li></ol>            ', NULL, NULL, 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(6, 'nep', NULL, 'privacy', 'गोपनीयता', '                <ol><li>                पर्खी बसे आdddd</li></ol>            ', NULL, NULL, 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(7, '', NULL, 'site-setting', 'Site Settings', '{\"Site Detail\":{\"Site Name\":\"Landmark\",\"Hour of Operation\":\"Monday - Friday:   09:00 - 20:00\\r\\nSunday & Saturday:   10:30 - 22:00\\r\\n\",\"Map Location\":\"<iframe src=\\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d441.4615324944158!2d85.34571578951129!3d27.726786418539284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb196efe7a5051%3A0x5edbe2bee76af6a!2sCashonwheel!5e0!3m2!1sne!2snp!4v1618738497614!5m2!1sne!2snp\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\"></iframe>\"},\"Contact Details\":{\"Email\":\"info@codecater.com\",\"Office Phone\":\"9851157099\",\"Mobile Number\":\"9851157099\",\"Address\":\"Sukedhara-09, Kathmandu\",\"Fax\":\"9851157099\"},\"Socail Details\":{\"Facebook\":\"Facebookc\",\"Instagram\":\"Instagram\",\"Twitter\":\"Twitter\",\"LinkedIn\":\"LinkedIn\"},\"payment_gateways\":{\"esewa\":{\"id\":\"1\",\"title\":\"esewa\"},\"khalti\":{\"id\":\"2\",\"title\":\"khalti\"}}}', NULL, NULL, 1, '2021-03-21 16:45:14', 0, '2021-04-13 13:57:07'),
(12, '', NULL, 'verification', 'Verification', 'manual', NULL, NULL, 1, '2021-04-13 13:59:21', 0, '2021-04-13 13:59:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_types`
--
ALTER TABLE `add_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ibfk_create_by` (`created_by`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`blog_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `verification_id` (`verification_id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacancy_id` (`vacancy_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_created_by` (`created_by`),
  ADD KEY `faq_updated_by` (`updated_by`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `from_user_id` (`from_user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_r` (`category_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_categories_ibfk_1` (`created_by`),
  ADD KEY `news_categories_ibfk_2` (`updated_by`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`news_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `verification_id` (`verification_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_attributes`
--
ALTER TABLE `package_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `ad_types_id` (`ad_types_id`),
  ADD KEY `property_limiations_id` (`property_limiations_id`),
  ADD KEY `service_requests_id` (`service_requests_id`);

--
-- Indexes for table `package_services`
--
ALTER TABLE `package_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_directory`
--
ALTER TABLE `property_directory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `property_type` (`property_type`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `city` (`city`),
  ADD KEY `user_package_breakdown_id` (`user_package_breakdown_id`),
  ADD KEY `primary_creator` (`primary_creator`);

--
-- Indexes for table `property_documents`
--
ALTER TABLE `property_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `property_limitations`
--
ALTER TABLE `property_limitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `property_report`
--
ALTER TABLE `property_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `property_review`
--
ALTER TABLE `property_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `prop_package_count`
--
ALTER TABLE `prop_package_count`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `user_package_breakdown_id` (`user_package_breakdown_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`,`slug`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `transaction_ibfk_1` (`package_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_key` (`auth_key`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `role` (`role`),
  ADD KEY `email` (`email`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_package_breakdown`
--
ALTER TABLE `user_package_breakdown`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_package_relation_id` (`user_package_relation_id`);

--
-- Indexes for table `user_package_relation`
--
ALTER TABLE `user_package_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_package_relation_ibfk_2` (`package_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `verification_actions`
--
ALTER TABLE `verification_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_name` (`table_name`),
  ADD KEY `verified_by` (`verified_by`),
  ADD KEY `requested_by` (`requested_by`);

--
-- Indexes for table `verification_property`
--
ALTER TABLE `verification_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `verified_by` (`verified_by`),
  ADD KEY `requested_by` (`requested_by`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directory_id` (`row_id`);

--
-- Indexes for table `website_details`
--
ALTER TABLE `website_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `child_id` (`child_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_types`
--
ALTER TABLE `add_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `package_attributes`
--
ALTER TABLE `package_attributes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `package_services`
--
ALTER TABLE `package_services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_directory`
--
ALTER TABLE `property_directory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `property_documents`
--
ALTER TABLE `property_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_limitations`
--
ALTER TABLE `property_limitations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_report`
--
ALTER TABLE `property_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_review`
--
ALTER TABLE `property_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `prop_package_count`
--
ALTER TABLE `prop_package_count`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_package_breakdown`
--
ALTER TABLE `user_package_breakdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `user_package_relation`
--
ALTER TABLE `user_package_relation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `verification_actions`
--
ALTER TABLE `verification_actions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `verification_property`
--
ALTER TABLE `verification_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `website_details`
--
ALTER TABLE `website_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `advertisement_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `advertisement` (`id`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `blog_ibfk_3` FOREIGN KEY (`child_id`) REFERENCES `blog` (`id`);

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `blog_comments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `careers`
--
ALTER TABLE `careers`
  ADD CONSTRAINT `careers_ibfk_1` FOREIGN KEY (`vacancy_id`) REFERENCES `vacancy` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `faq_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `faq_ibfk_3` FOREIGN KEY (`child_id`) REFERENCES `faq` (`id`);

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property_directory` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `news_ibfk_3` FOREIGN KEY (`child_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `news_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `news_categories` (`id`);

--
-- Constraints for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD CONSTRAINT `news_categories_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `news_categories` (`id`);

--
-- Constraints for table `news_comments`
--
ALTER TABLE `news_comments`
  ADD CONSTRAINT `news_comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `news_comments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `package_attributes`
--
ALTER TABLE `package_attributes`
  ADD CONSTRAINT `package_attributes_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `package_attributes_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `package_attributes_ibfk_3` FOREIGN KEY (`ad_types_id`) REFERENCES `add_types` (`id`),
  ADD CONSTRAINT `package_attributes_ibfk_4` FOREIGN KEY (`property_limiations_id`) REFERENCES `property_limitations` (`id`),
  ADD CONSTRAINT `package_attributes_ibfk_5` FOREIGN KEY (`service_requests_id`) REFERENCES `service_requests` (`id`);

--
-- Constraints for table `property_directory`
--
ALTER TABLE `property_directory`
  ADD CONSTRAINT `property_directory_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `property_directory_ibfk_2` FOREIGN KEY (`property_type`) REFERENCES `property_type` (`id`),
  ADD CONSTRAINT `property_directory_ibfk_3` FOREIGN KEY (`child_id`) REFERENCES `property_directory` (`id`),
  ADD CONSTRAINT `property_directory_ibfk_4` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `property_directory_ibfk_5` FOREIGN KEY (`user_package_breakdown_id`) REFERENCES `user_package_breakdown` (`id`),
  ADD CONSTRAINT `property_directory_ibfk_6` FOREIGN KEY (`primary_creator`) REFERENCES `user` (`id`);

--
-- Constraints for table `property_documents`
--
ALTER TABLE `property_documents`
  ADD CONSTRAINT `property_documents_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_directory` (`id`);

--
-- Constraints for table `property_report`
--
ALTER TABLE `property_report`
  ADD CONSTRAINT `property_report_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_directory` (`id`);

--
-- Constraints for table `property_review`
--
ALTER TABLE `property_review`
  ADD CONSTRAINT `property_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `property_review_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property_directory` (`id`);

--
-- Constraints for table `property_type`
--
ALTER TABLE `property_type`
  ADD CONSTRAINT `property_type_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `property_type_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `property_type` (`id`);

--
-- Constraints for table `prop_package_count`
--
ALTER TABLE `prop_package_count`
  ADD CONSTRAINT `prop_package_count_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_directory` (`id`),
  ADD CONSTRAINT `prop_package_count_ibfk_2` FOREIGN KEY (`user_package_breakdown_id`) REFERENCES `user_package_breakdown` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `testimonials` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`role`) REFERENCES `user_roles` (`id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD CONSTRAINT `user_documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_package_breakdown`
--
ALTER TABLE `user_package_breakdown`
  ADD CONSTRAINT `user_package_breakdown_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_package_breakdown_ibfk_3` FOREIGN KEY (`user_package_relation_id`) REFERENCES `user_package_relation` (`id`);

--
-- Constraints for table `user_package_relation`
--
ALTER TABLE `user_package_relation`
  ADD CONSTRAINT `user_package_relation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_package_relation_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);

--
-- Constraints for table `verification_property`
--
ALTER TABLE `verification_property`
  ADD CONSTRAINT `verification_property_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property_directory` (`id`),
  ADD CONSTRAINT `verification_property_ibfk_2` FOREIGN KEY (`verified_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `verification_property_ibfk_3` FOREIGN KEY (`requested_by`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
