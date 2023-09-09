-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2017 at 06:18 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1572888_foodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id_Cat` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Parent` int(11) DEFAULT NULL,
  `PicUrl` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id_Cat`, `Name`, `Parent`, `PicUrl`) VALUES
(1, 'Legecy', 0, NULL),
(2, 'Proposed', 0, NULL),
(3, 'غذای ایرانی', 15, NULL),
(4, 'غذای مدرن', 15, NULL),
(5, 'غذای دریایی', 15, NULL),
(6, 'غذای ملل', 15, NULL),
(7, 'غذای محلی', 15, NULL),
(8, 'غذای کودک', 15, NULL),
(9, 'غذای دانشجویی', 15, NULL),
(10, 'غذای رژیمی', 15, NULL),
(11, 'سوپ', 13, NULL),
(12, 'سالاد', 13, NULL),
(13, 'پیش غذا', 1, NULL),
(14, 'دسر', 1, NULL),
(15, 'غذای اصلی', 1, NULL),
(16, 'ترشی و شور', 31, NULL),
(17, 'چاشنی و ادویه', 31, NULL),
(18, 'سس و رب', 31, NULL),
(19, 'نوشیدنی', 1, NULL),
(20, 'نان و خمیر', 31, NULL),
(21, 'کیک و شیرینی', 1, NULL),
(22, 'مربا و کمپوت', 31, NULL),
(23, 'تنقلات', 31, NULL),
(24, 'تزئینات', 0, NULL),
(25, 'نکات آشپزی', 0, NULL),
(26, 'نان و غلات', 2, NULL),
(27, 'سبزیجات', 2, NULL),
(28, 'میوه جات', 2, NULL),
(29, 'شیر و لبنیات', 2, NULL),
(30, 'گوشت، حبوبات، تخم مرغ و مغزها', 2, NULL),
(31, 'متفرقه', 1, NULL),
(32, 'خورش', 3, NULL),
(33, 'انواع پلو', 3, NULL),
(34, 'ته چین', 3, NULL),
(35, 'کباب', 3, NULL),
(36, 'کوکو', 3, NULL),
(37, 'کتلت و شامی', 3, NULL),
(38, 'دلمه و کوفته', 3, NULL),
(39, 'آش و حلیم', 3, NULL),
(40, 'آبگوشت و اشکنه', 3, NULL),
(41, 'پیتزا', 4, NULL),
(42, 'ساندویچ', 4, NULL),
(43, 'ماکارونی', 4, NULL),
(44, 'لازانیا', 4, NULL),
(45, 'سوفله', 4, NULL),
(46, 'استیک', 4, NULL),
(47, 'ماهی و میگو', 5, NULL),
(48, 'ایتالیایی', 6, NULL),
(49, 'فرانسوی', 6, NULL),
(50, 'چینی', 6, NULL),
(51, 'عربی', 6, NULL),
(52, 'ترکی', 6, NULL),
(53, 'مکزیکی', 6, NULL),
(54, 'آلمانی', 6, NULL),
(55, 'یونانی', 6, NULL),
(56, 'هندی', 6, NULL),
(57, 'کره ای', 6, NULL),
(58, 'سایر کشورها', 6, NULL),
(59, 'گیلانی', 7, NULL),
(60, 'آذربایجانی', 7, NULL),
(61, 'قزوینی', 7, NULL),
(62, 'جنوبی', 7, NULL),
(63, 'شیرازی', 7, NULL),
(64, 'اصفهانی', 7, NULL),
(65, 'مازندرانی', 7, NULL),
(66, 'اردبیلی', 7, NULL),
(67, 'کرمانی', 7, NULL),
(68, 'همدانی', 7, NULL),
(69, 'خراسانی', 7, NULL),
(70, 'سایر استان ها', 7, NULL),
(71, 'بورانی و پوره', 13, NULL),
(72, 'اردور', 13, NULL),
(73, 'املت ', 13, NULL),
(74, 'کرپ', 13, NULL),
(75, 'اسنک و رول', 13, NULL),
(76, 'پای و گراتن', 13, NULL),
(77, 'سایر', 13, NULL),
(78, 'دسر ایرانی', 14, NULL),
(79, 'دسر مدرن', 14, NULL),
(80, 'انواع بستنی', 14, NULL),
(81, 'انواع ژله', 14, NULL),
(82, 'کرم و موس', 14, NULL),
(83, 'سایر', 14, NULL),
(87, 'نوشیدنی گرم', 19, NULL),
(88, 'شربت ها', 19, NULL),
(89, 'اسموتی و شیک', 19, NULL),
(90, 'مخلوط ها', 19, NULL),
(91, 'سایر نوشیدنی ها', 19, NULL),
(92, 'انواع کیک', 21, NULL),
(93, 'کلوچه و کوکی', 21, NULL),
(94, 'شیرینی عید نوروز', 21, NULL),
(95, 'شیرینی خشک', 21, NULL),
(96, 'شیرینی تر', 21, NULL),
(97, 'مافین و کاپ', 21, NULL),
(98, 'پای و تارت', 21, NULL),
(99, 'کیک و شیرینی', 126, NULL),
(100, 'غذای کودک', 126, NULL),
(101, 'میوه و سبزی', 126, NULL),
(102, 'انواع سالاد', 126, NULL),
(103, 'انواع دسر', 126, NULL),
(104, 'سایر غذاها', 126, NULL),
(105, 'مناسبت ها', 126, NULL),
(106, 'گوشت قرمز', 25, NULL),
(107, 'گوشت مرغ', 25, NULL),
(108, 'ماهی و میگو', 25, NULL),
(109, 'تخم مرغ', 25, NULL),
(110, 'برنج', 25, NULL),
(111, 'فوت و فن آشپزی', 25, NULL),
(112, 'کیک و شیرینی', 25, NULL),
(113, 'حبوبات', 25, NULL),
(114, 'سبزیجات', 25, NULL),
(115, 'فستفود', 25, NULL),
(116, 'نوشیدنی ها', 25, NULL),
(117, 'دسر و ژله', 25, NULL),
(118, 'پیمانه های آشپزی', 25, NULL),
(119, 'ادویه جات', 25, NULL),
(120, 'ترشی جات', 25, NULL),
(121, 'میوه جات', 25, NULL),
(122, 'لبنیات', 25, NULL),
(123, 'نکات ریز', 25, NULL),
(124, 'معرفی وسایل آشپزی', 25, NULL),
(126, 'تزئین موادغذایی', 126, NULL),
(127, 'تزئین دستمال', 126, NULL),
(128, 'چیدمان میز غذا', 24, NULL),
(129, 'میز صبحانه', 128, NULL),
(130, 'میز ناهار و شام', 128, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id_Food` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Recepies` text,
  `Likes` int(11) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Time` int(11) DEFAULT NULL,
  `Meal` int(11) DEFAULT NULL,
  `isFree` tinyint(1) DEFAULT NULL,
  `Pic_URL` varchar(45) DEFAULT NULL,
  `Writer` int(11) NOT NULL,
  `Id_cat_p` int(11) DEFAULT NULL,
  `Id_cat_l` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id_Food`, `Title`, `Recepies`, `Likes`, `Score`, `Time`, `Meal`, `isFree`, `Pic_URL`, `Writer`, `Id_cat_p`, `Id_cat_l`) VALUES
(5, 'erwer', 'erwe', 0, 0, 233, 4, 0, 'gftdf', 1, NULL, NULL),
(6, 'sdf', 'sdfsd', 0, 0, 12, 22, 0, 'sdf', 1, NULL, NULL),
(7, 'نیمرو', 'روغن رو داغ کن تخم مرغ را بشکن توش و بعد نوش جان', 0, 0, 1, 1, 0, '', 1, NULL, NULL),
(8, 'hghg', 'vhvhvhv jgjhgjh gjuhkhn gjkgjkghkh', 0, 0, 20, 2, 1, '', 1, NULL, NULL),
(9, 'fgh', ';\'[kjlhhdfgd fdgdn', 0, 0, 10, 2, 1, '', 1, NULL, NULL),
(10, 'fdgfd', 'fgdfgdfgfdgbdfbg', 0, 0, 44, 5, 1, '', 1, NULL, NULL),
(11, 'werwr', 'df\nsadfa', 0, 0, 32, 21, 1, 'dfsdsfd', 1, NULL, NULL),
(12, 'new', 'sdfsdfsdfdsfsdfsdfdsf', 0, 0, 444, 23, 1, 'dfgfdgfd', 1, NULL, NULL),
(13, 'last', '7\n11\n', 0, 0, 11, 2, 1, '711', 1, NULL, NULL),
(14, '45', '45', 0, 0, 45, 23, 1, '45', 1, NULL, NULL),
(15, '11', '11', 0, 0, 11, 11, 1, '11', 1, NULL, NULL),
(16, 'سالاد سزار', 'اول\nسپس\nدر آخر', 1, 0, 45, 3, 1, '16.jpg', 1, 26, 12),
(17, 'سالاد شیرازی', 'اول\nدوم\nسوم\nچهارم\n', 5, 0, 1, 21, 1, '17.jpg', 1, 26, 12),
(18, 'سالاد فصل', 'd.mf\nnsd\nnsdfn', 7, 0, 22, 4, 1, '18.jpg', 1, 26, 12),
(19, 'سالاد ماکارونی', 'sdfsdf', 9, 0, 23, 22, 1, '19.jpg', 1, 26, 12),
(20, 'sdf', 'sdf', 0, 0, 23, 23, 1, '1.jpg', 1, 26, 13),
(21, 'sfsdf', 'sdfdsf', 0, 0, 22, 22, 1, '312123.jpg', 1, 28, 13),
(22, 'xcvxcv', 'xcv', 0, 0, 23, 22, 1, 'cxv', 1, 29, 71),
(23, '22', 'sdf', 0, 0, 22, 22, 1, '0', 1, 29, 13),
(24, 'df', 'sdf', 0, 0, 231, 22, 1, '0', 1, 26, 13),
(25, 'sdf', 'xvgsfd\nsdfsdf\nsdf\nsdfsd\nf\nsdf\ndsf', 0, 0, 23, 234, 1, '0', 1, 28, 71),
(26, 'rwe', 'dfggd', 0, 0, 2323, 234, 1, '0', 1, 28, 20),
(27, 'e3qw', 'fdg', 0, 0, 33, 22, 1, '0', 1, 28, 71),
(28, 'dsf', 'gsdf', 0, 0, 22, 11, 1, '0', 1, 28, 43),
(29, 'sdf', 'dfdsdf', 0, 0, 2, 2, 1, '0', 1, 29, 50),
(30, '22', '22', 0, 0, 22, 22, 1, '0', 1, 28, 49),
(31, '11', '11', 0, 0, 11, 11, 1, '0', 1, 30, 13),
(32, '22', '22', 0, 0, 22, 22, 1, '0', 1, 28, 34),
(33, '3', '3', 0, 0, 3, 3, 1, '0', 1, 28, 72),
(34, '21', 'dsa 21', 0, 0, 21, 2, 1, '0', 1, 27, 15),
(35, '23', 'dg', 0, 0, 23, 23, 1, '0', 1, 26, 15),
(36, 'ksdf', 'dfsdf', 0, 0, 23, 32, 1, '35', 1, 26, 15),
(37, 'تل', '2. سنیئبسی\nیسبسیب\n', 0, 0, 30, 3, 1, '0', 1, 26, 38),
(38, '22', 'نیسست', 0, 0, 22, 22, 1, '0', 1, 27, 71),
(39, 'lkdfjgnfkg fdljg blm blkm', '*. پیاز  را ریز خرد کنید و با مقداری روغن در قابلمه یا زودپز تفت دهید. لپه را بشویید. گوشت را قطعه قطعه خرد کنید و با پیاز و لپه شسته شده تفت دهید. در موقع تفت دادن به مقدار کافی فلفل و زردچوبه هم به مواد اضافه کنید.  همین که رنگ گوشت عوض شد، مقداری آب روی آن بریزید و بگذاریید با شعله ملایم بپزد.\n*. بعد از یک ساعت، لیمو عمانی ها را با چنگال سوراخ کرده و به خورش اضافه کنید. سپس حرارت شعله را کم کنید تا خورش به آرامی بپزد و جا بیفتد. در انتهای پخت خورش ، نمک و رب گوجه فرنگی  را به آن اضافه کنید. وقتی خورش به روغن افتاد و مواد خورش کاملاً پخت، شعله را خاموش کنید.\n*. سیب زمینی  ها را پوست بکنید و خلال کنید و با روغن داغ در ماهیتابه سرخ کنید. بعد از اینکه خورش را در ظرف کشیدید، سیب زمینی های سرخ شده را روی آن بریزید ( یا می توانید قبل از ریختن خورش در ظرف ، سیب زمینی ها را در آن بریزید و هم بزنید ).در صورت تمایل می توانید.\n*. مقدار خیلی کم هم دارچین روی ظرف خورش بریزید که البته بستگی به ذائقه شما دارد. همچنین می توانید برای تزئین خورش در میهمانی ها ، مقداری از سیب زمینی را مطابق تصویر بالا به صورت گل ببرید و سرخ کنید.امیدواریم با تهیه این غذای بسیار خوشمزه، لذت کافی را برده و لحظات خوشی را در کنار خانواده سپری کنید.', 0, 0, 120, 2, 1, '0', 1, 30, 35),
(40, 'صورت پیشرفت خواهید کرد.', 'فرقی ندارد درباره‌ی همکارتان باشد یا مشتری یا فروشنده یا هرکس دیگر، حتی برای ثانیه‌ای این فکر به سرتان نزند که سفره‌ی دل‌تان را پیش رئیس‌تان باز کنید یا با او علیه دیگری توطئه‌ای بچینید، طوری که انگار او رفیق شماست. رئیس شما رفیق‌تان نیست. و با چنین رفتاری این خطر را به جان می‌خرید که بی‌حرمتی یا انتقادتان شامل حال کسی بشود که اهمیتش برای شرکت بیشتر از شخص شماست. علاوه بر این رئیس‌تان را به فکر فرو خواهید برد که پشت سر او به دیگران چه می‌گویید و اعتماد او را بعد از این هرگز نخواهید داشت.\nتوجه کنید، رؤسا هم درست مانند من و شما آدم‌های زمینی هستند. آنها درست مثل من و شما انسان‌اند. اما در موقعیت منحصربه‌فردی قرار دارند، و به همین دلیل لازم است که ارتباط با آنها تابع برخی ملاحظات باشد. در حالت کلی، اگر این رابطه را حرفه‌ای، مرتبط با کسب‌وکار و همراه با درجه‌ای از احترام حفظ کنید متقابلا همین‌ها را دریافت خواهید کرد. اگر مسئولیتی را پذیرفتید، در قبال آن پاسخ‌گو باشید و کارتان را به اتمام برسانید، در این صورت پیشرفت خواهید کرد.', 0, 0, 123, 22, 1, '39', 1, 30, 13),
(41, 'Insert', 'فرقی ندارد درباره‌ی همکارتان باشد یا مشتری یا فروشنده یا هرکس دیگر، حتی برای ثانیه‌ای این فکر به سرتان نزند که سفره‌ی دل‌تان را پیش رئیس‌تان باز کنید یا با او علیه دیگری توطئه‌ای بچینید، طوری که انگار او رفیق شماست. رئیس شما رفیق‌تان نیست. و با چنین رفتاری این خطر را به جان می‌خرید که بی‌حرمتی یا انتقادتان شامل حال کسی بشود که اهمیتش برای شرکت بیشتر از شخص شماست. علاوه بر این رئیس‌تان را به فکر فرو خواهید برد که پشت سر او به دیگران چه می‌گویید و اعتماد او را بعد از این هرگز نخواهید داشت.\nتوجه کنید، رؤسا هم درست مانند من و شما آدم‌های زمینی هستند. آنها درست مثل من و شما انسان‌اند. اما در موقعیت منحصربه‌فردی قرار دارند، و به همین دلیل لازم است که ارتباط با آنها تابع برخی ملاحظات باشد. در حالت کلی، اگر این رابطه را حرفه‌ای، مرتبط با کسب‌وکار و همراه با درجه‌ای از احترام حفظ کنید متقابلا همین‌ها را دریافت خواهید کرد. اگر مسئولیتی را پذیرفتید، در قبال آن پاسخ‌گو باشید و کارتان را به اتمام برسانید، در این صورت پیشرفت خواهید کرد.', 0, 0, 22, 2, 1, '41', 1, 30, 98),
(42, '33', 'فرقی ندارد درباره‌ی همکارتان باشد یا مشتری یا فروشنده یا هرکس دیگر، حتی برای ثانیه‌ای این فکر به سرتان نزند که سفره‌ی دل‌تان را پیش رئیس‌تان باز کنید یا با او علیه دیگری توطئه‌ای بچینید، طوری که انگار او رفیق شماست. رئیس شما رفیق‌تان نیست. و با چنین رفتاری این خطر را به جان می‌خرید که بی‌حرمتی یا انتقادتان شامل حال کسی بشود که اهمیتش برای شرکت بیشتر از شخص شماست. علاوه بر این رئیس‌تان را به فکر فرو خواهید برد که پشت سر او به دیگران چه می‌گویید و اعتماد او را بعد از این هرگز نخواهید داشت.\nتوجه کنید، رؤسا هم درست مانند من و شما آدم‌های زمینی هستند. آنها درست مثل من و شما انسان‌اند. اما در موقعیت منحصربه‌فردی قرار دارند، و به همین دلیل لازم است که ارتباط با آنها تابع برخی ملاحظات باشد. در حالت کلی، اگر این رابطه را حرفه‌ای، مرتبط با کسب‌وکار و همراه با درجه‌ای از احترام حفظ کنید متقابلا همین‌ها را دریافت خواهید کرد. اگر مسئولیتی را پذیرفتید، در قبال آن پاسخ‌گو باشید و کارتان را به اتمام برسانید، در این صورت پیشرفت خواهید کرد.', 0, 0, 3, 2, 1, '42.jpg', 1, 27, 47);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id_Ing` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Unit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id_Ing`, `Name`, `Unit`) VALUES
(1, 'تخم مرغ', NULL),
(2, 'سیب زمینی', NULL),
(3, 'آرد', NULL),
(4, 'شکر', 1),
(5, 'مرغ', 4),
(6, 'گوشت', 1),
(7, 'شکر سفید', 1),
(8, 'شکر قرمز', 1);

-- --------------------------------------------------------

--
-- Table structure for table `middle`
--

CREATE TABLE `middle` (
  `id_Food` int(11) NOT NULL,
  `id_ing` int(11) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Unit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `middle`
--

INSERT INTO `middle` (`id_Food`, `id_ing`, `Number`, `Unit`) VALUES
(13, 4, 300, 1),
(14, 3, 46, 1),
(15, 1, 2, 2),
(15, 2, 2, 2),
(15, 3, 200, 1),
(15, 4, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `middleunit`
--

CREATE TABLE `middleunit` (
  `id_Ing` int(11) NOT NULL,
  `Id_Unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id_Unit` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id_Unit`, `Name`) VALUES
(1, 'گرم'),
(2, 'دانه'),
(3, 'ق چ'),
(4, 'قاشق غذا خوری'),
(5, 'کیلو گرم');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_User` int(11) NOT NULL,
  `Username` text COLLATE utf8_unicode_ci NOT NULL,
  `Pass` text COLLATE utf8_unicode_ci NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `Country` text COLLATE utf8_unicode_ci,
  `Score` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '0',
  `Paid` int(11) NOT NULL DEFAULT '0',
  `Pic_Name` text COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_User`, `Username`, `Pass`, `Name`, `Country`, `Score`, `Level`, `Paid`, `Pic_Name`, `Description`) VALUES
(1, 'Admin', '11', 'Admin', 'ایران', 250, 1, 0, '1.jpg', 'مازیار'),
(4, 'Admin4', '14', 'Admin4', NULL, 0, 0, 0, '', ''),
(5, 'Admin1', '111', 'Admin1', NULL, 0, 0, 0, '', ''),
(14, 'e@gmail.com', '123', 'E', NULL, 0, 0, 0, '14.jpg', '14.jpg'),
(15, 'r@gmail.com', '123', 'R', NULL, 0, 0, 0, '15.jpg', ''),
(16, 'ab@g.com', 'mmm', 'Ab', NULL, 0, 0, 0, '16.jpg', ''),
(17, 'ah@gmail.com', 'mmm', 'Ah', NULL, 0, 0, 0, '17.jpg', ''),
(18, 'doshanak.a.r@gmail.com', '311188', 'Roshaaan', NULL, 0, 0, 0, '18.jpg', ''),
(19, 'el@gmail.com', '123', 'El', NULL, 0, 0, 0, '19.jpg', ''),
(20, 'Chaft', 'chaftaki@gmail.com', '123', NULL, 0, 0, 0, '', ''),
(21, 'maziyar', 'maziyar.grami@yahoo.com', 'maz', NULL, 0, 0, 0, '', ''),
(22, 'Admin2', '111', 'mazi', NULL, 0, 0, 0, '', ''),
(23, 'Maziyar.Gerami@gmail.com', 'blue', 'Maziyar', NULL, 0, 0, 0, '', ''),
(24, 'maziyar2', 'maziyar.grami1@yahoo.com', '09180918', NULL, 0, 0, 0, '', ''),
(25, 'Admin3', '111', 'mazi', NULL, 0, 0, 0, '', ''),
(26, 'maz5', 'mamm@yahoo.com', '11', NULL, 0, 0, 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id_Cat`),
  ADD UNIQUE KEY `Id_Cat_UNIQUE` (`Id_Cat`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id_Food`),
  ADD KEY `id_User_idx` (`Writer`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id_Ing`);

--
-- Indexes for table `middle`
--
ALTER TABLE `middle`
  ADD KEY `id_Food_idx` (`id_Food`),
  ADD KEY `id_Ing_idx` (`id_ing`);

--
-- Indexes for table `middleunit`
--
ALTER TABLE `middleunit`
  ADD KEY `Id_unit_idx` (`Id_Unit`),
  ADD KEY `Id_Ing_idx` (`id_Ing`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_Unit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id_Cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id_Food` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id_Ing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id_Unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `Writer` FOREIGN KEY (`Writer`) REFERENCES `user` (`id_User`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `middle`
--
ALTER TABLE `middle`
  ADD CONSTRAINT `id_Food` FOREIGN KEY (`id_Food`) REFERENCES `food` (`id_Food`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_Ing` FOREIGN KEY (`id_ing`) REFERENCES `ingredients` (`id_Ing`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `middleunit`
--
ALTER TABLE `middleunit`
  ADD CONSTRAINT `ing` FOREIGN KEY (`id_Ing`) REFERENCES `ingredients` (`id_Ing`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `unit` FOREIGN KEY (`Id_Unit`) REFERENCES `unit` (`id_Unit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
