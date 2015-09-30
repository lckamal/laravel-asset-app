# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.19-0ubuntu0.14.04.1)
# Database: akproject
# Generation Time: 2015-09-30 18:24:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` int(10) unsigned NOT NULL,
  `floor_id` int(10) unsigned DEFAULT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `vendor_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asset_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_acquired` date DEFAULT NULL,
  `date_disposed` date DEFAULT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `location_lat` double(8,2) DEFAULT NULL,
  `location_long` double(8,2) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` enum('active','inactive','repair') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;

INSERT INTO `assets` (`id`, `building_id`, `floor_id`, `employee_id`, `category_id`, `vendor_id`, `name`, `asset_no`, `description`, `model`, `serial`, `barcode`, `date_acquired`, `date_disposed`, `purchase_price`, `location_lat`, `location_long`, `image`, `status`, `created_at`, `updated_at`)
VALUES
	(1,18,18,14,17,17,'Ms. Meta Ortiz I','3259','Aut est corporis rerum suscipit ut ut consequatur. Est iure tempora qui eos maiores. Excepturi ipsa ut laboriosam ut.','158474036','6641442','1633892237774','1986-01-13','2003-03-31',418.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(2,3,8,27,19,10,'Ms. Krystina Pacocha Jr.','6006','Eum iste et eos qui quidem ducimus illo omnis. Nobis saepe aut soluta error earum maxime. Et et vel aspernatur nihil.','198990139','7693075','1487288817558','1982-04-22','1974-08-10',432.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(3,18,28,4,18,6,'Abigayle Kirlin III','2738','Occaecati a aut aliquam modi temporibus velit. Qui delectus voluptas omnis. Reiciendis cumque sed et soluta fugiat blanditiis repellat. Quam facilis sed ut reprehenderit natus aliquam nulla. Quibusdam cupiditate consequatur enim neque temporibus voluptatem.','161666153','6100329','2116127245793','1985-07-02','2001-10-12',17.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(4,11,39,4,11,9,'Prof. Dedric Waelchi','6135','Rerum quod deserunt accusamus possimus inventore aut. Vitae enim dolorem laborum quibusdam. Maxime aut quo aut incidunt sit.','68384527','8938474','3328393106237','2014-05-25','2010-07-05',508.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(5,9,14,16,3,15,'Friedrich Turner','5870','Et perspiciatis reiciendis atque molestias. Qui modi corporis asperiores debitis repellat quia et. Inventore aspernatur nesciunt dolor voluptate eos.','527692481','6133058','4344590702903','1998-06-29','1989-12-10',936.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(6,7,47,43,13,2,'Dr. Ford Hammes IV','9729','Vel possimus eaque dolorum impedit non. Dolorem rerum omnis et quae non nostrum. Sit quia eos dolor voluptatibus laboriosam accusamus. Totam sequi dolores provident omnis autem aliquam.','137737308','7622350','0966722105259','1989-01-25','2008-01-11',468.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(7,16,2,8,9,12,'Angel Stracke','636','Eaque mollitia possimus earum unde et. Aut quia nihil et illum. Ad modi doloribus perferendis animi officia accusamus recusandae consequuntur.','388838058','7657540','3889707248703','1979-03-09','2015-01-24',805.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(8,19,1,12,20,6,'Alessandra Kassulke','7063','Enim quibusdam accusamus dolores consequuntur commodi blanditiis dolorem. Earum sed et est autem quia non et. Similique consequatur quia fugit tenetur ut.','966054602','1619923','9237012024880','2011-05-30','1992-08-21',376.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(9,19,1,24,11,6,'Jacey Lesch','9420','Laborum quos natus qui rerum sit. Soluta aliquid et rerum architecto et. Et omnis in voluptas consequatur ullam.','736721669','9046928','1855741482474','2005-07-18','1971-06-18',10.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(10,20,50,50,19,12,'Desmond Rempel','5268','Voluptates enim et beatae id. Molestias in placeat esse voluptas ut ut. Sit ipsa neque quis cum temporibus non in voluptate.','370597840','5268441','1810605010286','1983-09-28','1971-02-14',254.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(11,4,5,48,15,11,'Wilford Gleason','990','Maxime voluptatum quas ut harum. Minus dicta sed fuga quia. Libero porro consequatur adipisci assumenda nostrum neque. Voluptatem qui quia sit eos qui.','822241709','1388770','9871350904307','1979-08-08','2007-12-14',928.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(12,12,42,45,16,3,'Jasmin Walter PhD','4256','Sed rerum ullam voluptas sunt. Eos molestiae voluptas molestias ad eum itaque unde blanditiis. Voluptatem nihil provident odit ratione.','806362718','2177292','5626691972898','1993-06-14','2005-09-24',470.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(13,10,23,49,15,3,'Dr. Juston Lynch','317','In illo officiis rem consequuntur. Non facilis voluptatem laboriosam velit ullam quos. Perspiciatis sit veritatis esse inventore dolorum qui accusamus.','643220814','5024544','3129896537050','1995-08-24','1980-03-17',873.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(14,15,37,42,10,19,'Leanna Willms','4574','Adipisci qui sunt autem voluptatem qui est pariatur. Velit et non aut sit voluptas.','895663647','7634540','2400430706851','2006-12-28','2011-03-22',273.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(15,19,1,38,19,3,'Haven Hickle','74','Cum ex id ad nam dolorum libero nobis. Consequatur quia at laborum distinctio. A aliquid in aliquam et. Unde est reprehenderit debitis laudantium voluptas.','76903701','5968394','7289893071288','1991-05-05','1989-07-11',363.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(16,4,5,44,11,9,'Federico Sawayn','917','Expedita rem corporis ut. Qui perspiciatis voluptates distinctio animi nemo odio est. Qui eum placeat cumque placeat a et at.','99466501','214943','3379526723531','1987-04-20','1972-05-02',204.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(17,15,37,6,3,3,'Prof. Marina Hirthe V','6773','Quibusdam quia ea aut perspiciatis. Sint eos ducimus est aut pariatur consequatur. Voluptatem inventore assumenda aut nulla rerum minima.','869386401','5636566','0518065729502','1974-05-04','1975-05-14',800.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(18,14,34,25,19,12,'Katrine Marvin','472','Ea ipsam nulla amet quia autem aut labore. Quasi ut est similique quia.','813808024','2846649','8329134353908','1996-10-22','1973-09-16',836.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(19,12,42,20,11,11,'Dane Deckow','9511','Aliquam omnis error doloribus commodi dolorum libero. Eveniet voluptatem ducimus aliquam eos. Totam accusamus alias pariatur vel facilis enim.','415991814','1204229','7129600795833','1984-09-03','2014-05-13',921.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(20,1,38,48,13,2,'Dr. Clark Rowe','3480','Sit quae odio minima. Sint quis voluptatem excepturi aut. Officia ab sed neque quia cupiditate reprehenderit. Voluptatem maxime error ut accusantium architecto labore.','541652066','3871812','6779764610162','2014-09-07','1992-05-19',399.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(21,17,29,8,18,1,'Dr. Kris Keeling IV','4638','Laboriosam officiis provident sed eos soluta delectus et corporis. Ut consectetur est id cupiditate eius. Ea dolor mollitia et aut sed. Quidem debitis qui totam animi.','4453657','180496','5505552818547','1996-09-18','1988-08-01',329.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(22,10,23,6,7,14,'Prof. Osbaldo O\'Connell','6605','Incidunt in aspernatur rem sit. Quaerat dicta magni id totam quo animi. Omnis doloribus qui repudiandae quos id.','928112577','8369199','3359589002231','1994-08-06','1985-01-03',584.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(23,10,23,28,16,6,'Cielo Goyette','1807','Rerum eius qui nam in nostrum. Dolore labore nam enim. Cumque repudiandae minus nulla quo.','926170943','1244694','7923851353992','2002-04-15','2000-12-20',488.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(24,13,7,24,20,3,'Prof. Davin Rohan','9206','Totam sint aspernatur optio repudiandae non. Incidunt vero ut error et ut in. Qui voluptas a sit saepe et ducimus voluptas laborum.','94119449','5806134','2644424521680','2013-10-05','1987-11-13',590.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(25,14,34,25,9,8,'Alden Kuhn','684','Et sit voluptas corporis eveniet a rerum voluptatum. Voluptatem officia alias voluptate ex aut laudantium. Corrupti maiores itaque veniam quia est sed.','604558360','555337','3400809628196','1992-08-18','1985-01-19',263.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(26,20,50,49,10,11,'Mona McGlynn','4335','Fugit officia et facere sit omnis et cumque eveniet. Enim dolor et neque quia velit ea in. Enim dolores voluptatem fugit. Amet voluptatem quia quod fuga ex eum iusto.','3682726','5468700','1809203873348','2005-06-04','2008-03-14',770.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(27,6,33,18,17,4,'Aida Hintz','4842','At eum sunt rerum pariatur pariatur soluta. Consequatur rerum quae impedit deleniti. Nihil tempora consequuntur blanditiis suscipit veniam doloremque libero est. Hic repellendus nisi autem voluptas voluptates et est id.','844176207','8758544','0944933041924','2008-06-06','1991-07-31',928.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(28,10,23,25,1,2,'Dr. Oren O\'Connell V','3604','Distinctio ut ut sequi nesciunt architecto mollitia. Ratione excepturi et dignissimos nesciunt blanditiis. Unde et provident dolorum sequi quia. Quia atque in sit impedit.','137560036','6636517','3816550659721','1999-10-01','1986-02-18',981.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(29,10,23,23,19,7,'Chelsie Parisian IV','8453','Quo sit accusantium corrupti nisi blanditiis doloribus excepturi. Recusandae soluta dolores eligendi sint error ullam et iste. Quis maxime veritatis quam amet voluptate deserunt temporibus. Itaque asperiores inventore sit ullam mollitia porro voluptas.','963649921','1415670','7382587893071','1971-08-08','1981-08-10',702.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(30,9,10,50,6,2,'Ms. Justine Von','984','Corrupti ut laborum dolor eligendi est. Nemo ut sit officia mollitia ipsa. Unde vel dicta fuga ea. Molestias ipsam necessitatibus sit molestiae ad beatae dicta.','222035047','3190519','6748546522962','1982-12-08','1999-03-31',168.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(31,17,16,6,3,16,'Mr. Khalid Tremblay II','1695','Maxime sed quas fugiat dolorem. Iusto officiis numquam possimus. Enim quia corporis ab pariatur unde dignissimos.','779178842','3587728','9821984878963','1998-03-19','1985-03-21',218.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(32,8,12,11,1,9,'Prof. Heather Jerde','1371','Minima praesentium voluptas in magni nemo ut. Sapiente voluptates magnam non et est consequatur. At est voluptas voluptatum sed consequatur maxime. Consequatur quo nesciunt officia amet soluta. Amet doloribus eius voluptatibus dignissimos incidunt soluta.','311353433','3355195','7871819598377','1972-08-01','1979-10-23',826.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(33,15,32,22,4,8,'Gregg Heathcote','7728','Dolorum et neque nostrum. Nostrum dolores sunt expedita libero autem doloribus cupiditate.','573280801','8044162','2108686023783','1985-05-10','1996-01-04',841.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(34,16,22,6,7,3,'Dr. Joesph Cartwright','3345','Similique perferendis numquam explicabo distinctio illo. Id et at quis quis omnis. Est ipsum facilis est aliquam. Occaecati fugiat a et excepturi assumenda aliquam excepturi alias. Accusamus dolore quia nisi corrupti voluptatem dolorem.','276670670','9281123','0692595971379','2007-05-08','1989-12-20',484.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(35,13,7,43,4,15,'Shayna Smith','3859','Exercitationem dolor eos et doloremque necessitatibus nihil eius. Quo consequatur consectetur itaque dolor est voluptatem. Dolores hic nostrum aliquam exercitationem. Est velit facilis odit non.','545838139','1855001','8764306930424','1998-02-08','2015-07-19',319.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(36,6,33,19,9,12,'Dianna Towne','3475','Officiis exercitationem animi ut ex. Quibusdam eos sit enim molestias. Est id harum tenetur voluptas laudantium maiores. Minima exercitationem eligendi recusandae iusto officiis. Ratione omnis excepturi est a.','880761761','8125274','4674121550841','1979-10-26','2000-09-10',989.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(37,5,49,50,16,20,'Blake O\'Keefe','6008','Nihil nostrum aliquam doloribus inventore in qui neque. Eius ab libero veniam laboriosam velit quam vel. Harum sint enim eveniet.','6426311','9717398','6742429774950','2015-02-04','1981-07-27',68.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(38,14,46,22,9,9,'Sigmund Kuhic','3538','Odit quis commodi explicabo ut soluta reiciendis. Aspernatur beatae qui cupiditate. Ut provident laborum quidem assumenda nihil. Laborum distinctio unde totam ut eaque.','589646311','3728981','7902097630418','1978-12-21','1981-06-26',619.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(39,12,25,11,10,6,'Daisha Buckridge','9694','Ut a dolor eos est tempora. Ut voluptatibus quibusdam similique corrupti aut. Consectetur rerum quae molestias consequuntur.','253981234','3608375','6290945393457','1971-11-02','1980-08-29',157.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(40,13,7,4,11,2,'Mrs. Kirstin Roberts','7954','Saepe sed voluptatem occaecati ducimus labore est rem necessitatibus. Modi magni necessitatibus quos deserunt nesciunt dolorum minus qui. Recusandae voluptas ut aut excepturi ad.','924210459','9546409','2668633541512','1982-03-12','2004-12-04',171.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(41,1,38,3,20,10,'Humberto Rolfson','6665','Aut voluptatibus expedita ipsa. Quia iusto sunt iure veritatis. Dolore exercitationem optio omnis molestiae nisi unde. Vel nostrum nemo excepturi ut. Adipisci nihil rerum aut ut qui repellat.','444156543','1128149','4190247213694','1999-04-13','1988-04-28',715.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(42,9,10,48,13,3,'Vinnie Lowe','6046','Magni quaerat adipisci tenetur consequatur voluptate vero blanditiis nihil. Quo quae autem explicabo et. Ut et qui quas officiis.','508516669','9971298','0822815344717','1972-06-19','1979-06-17',784.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(43,7,6,15,16,18,'Otilia Mraz','5172','Facere sed saepe vel modi et maiores placeat mollitia. Non rerum eveniet voluptas at fugiat. Qui aut quasi atque maiores eum iure. Fuga architecto ut voluptates omnis consequatur voluptas atque.','867203681','2783701','0833936102216','2000-10-13','2014-02-21',912.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(44,14,34,6,9,9,'Elmo Watsica','9352','Tempora numquam accusamus odit et minima sint quas. Debitis nihil impedit odio porro sit et magnam sit. Ducimus maiores amet commodi sit quis.','920262621','5478898','2478947401439','2006-04-22','2012-08-08',697.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(45,3,35,20,16,7,'Andrew Huels','1765','Aliquam dolorem non consequatur et distinctio vitae doloremque. Dolores ea quibusdam distinctio. Non deleniti voluptas et saepe nihil.','684538488','6570037','6157368877967','2013-01-16','2001-03-14',49.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(46,6,19,50,13,13,'Dr. Wilburn Johnson DDS','4539','Omnis veniam ipsum alias non nobis pariatur quia aut. Eum quis officia rerum veritatis error. Et vero molestias ab animi. Voluptates velit nisi tenetur eos fuga aut eveniet labore. Sunt voluptatibus est vel vero rerum perferendis consequatur.','67997445','2255388','6814229694711','2000-03-29','1998-12-14',268.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(47,4,5,46,13,7,'Hannah Gorczany Sr.','655','Eaque deserunt voluptatibus quia cupiditate. Quia quaerat tenetur et doloribus ut. Illo qui nemo reiciendis accusamus eveniet. Accusantium ipsam ad quis deleniti et tempora.','287495112','6261959','1318419320756','2005-04-21','2006-01-15',706.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(48,12,42,45,17,17,'Darrel Baumbach','3223','Accusantium reiciendis repellat dolores sit quae quo. Quas eum ut enim sit nisi consectetur et. Quo numquam quas sit architecto aliquid est.','591028166','390868','1664897508163','1988-02-26','2000-04-29',0.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(49,10,23,38,14,17,'Aryanna Kris','281','Omnis nulla porro dolores et. Non fuga fuga neque et nesciunt qui. Fugiat fugiat dolorum rem quo accusantium omnis aut. Dolorum commodi ullam ad distinctio qui. Quis ut ut aliquid libero.','230531126','1513065','8977873106806','1982-12-18','1988-05-21',41.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(50,16,2,16,18,3,'Ray Cummerata','6601','Eum suscipit facilis dicta et natus corrupti et. Laborum nemo quis quia est. Et aliquam aliquid dolore ullam ipsam neque.','535471466','6479557','1529756737293','2009-07-01','2002-09-05',865.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(51,11,9,36,13,18,'Breana Hand','4194','Necessitatibus commodi pariatur iste quisquam aut id. Aut voluptatem provident velit. Voluptas explicabo ut repellendus reprehenderit numquam unde.','680334811','5126801','5059758765681','1978-07-17','1971-06-22',550.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(52,11,9,19,5,1,'Prof. Hershel Hane','6619','Rerum accusamus eaque ut. Assumenda vel placeat sed dolores. Suscipit debitis velit minus beatae.','350262096','9233976','9408375996576','1982-06-13','2009-03-14',64.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(53,14,11,12,17,14,'Mrs. Ardith Gleichner MD','6140','Vel odio corrupti autem consequatur qui sunt labore. Laboriosam vitae rerum sunt. Culpa velit et quas voluptatem quis hic. Amet laborum est quisquam quidem libero minima.','763818546','7605979','0844878872822','1975-02-09','1994-07-10',228.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(54,4,5,33,5,5,'Mr. Kim Little','1388','Totam et mollitia dolorum sit aut ut sit. Magni aut voluptatem est facere aut porro aut. Quod velit aut qui necessitatibus minus ex repellendus. Sit doloremque officia et quo cupiditate. Dolorem enim cumque voluptate in tempore enim.','497214538','457090','9309701793398','1972-04-25','1991-01-31',762.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(55,6,45,18,1,8,'Mrs. Liliana Gulgowski','3825','Provident quidem voluptatem harum deleniti tempore ut. Animi non nisi reiciendis corrupti. Mollitia non ut vitae impedit aspernatur voluptatibus. Quos ad sapiente est dolor aspernatur itaque et sed.','684688722','3766470','9502210839896','1987-09-13','1993-09-19',656.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(56,3,8,3,7,18,'Lora Conroy','9971','Sint illo natus ea natus. Voluptatibus fugit rerum ea modi inventore vel saepe. Itaque veritatis et ea aut qui. Consequatur sint iure id earum.','905626061','4491649','5313733674321','2009-04-01','1984-12-08',407.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(57,17,16,42,19,17,'Ona Rosenbaum','6101','Velit itaque est ratione sit laborum culpa voluptas. Ducimus omnis numquam in vel aperiam. Tempore blanditiis nobis iusto et doloribus.','735332784','9331750','3684623805302','2002-05-09','1988-06-11',630.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(58,17,29,10,14,4,'Mr. Dan Witting V','5155','Itaque saepe est in saepe repudiandae sed. Itaque et non iusto eveniet non quaerat rem. Nostrum quisquam et maxime exercitationem beatae quo. Dolore neque ut itaque cupiditate ipsam qui ut.','379733963','9156928','4475048331885','2008-05-30','2004-03-26',485.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(59,18,28,14,3,13,'Fritz DuBuque','1799','Excepturi adipisci veritatis cumque et quaerat fuga. Eligendi ea mollitia natus. Quam in aut cum libero explicabo magni.','486926707','7247076','6646102320192','2008-08-25','2000-05-17',269.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(60,8,12,40,16,4,'Karelle Jacobi','8476','Illo impedit fuga deserunt est. Dolor est vel explicabo consequatur necessitatibus enim qui nobis. Nulla non in dolor. Et voluptatem quibusdam non iusto et omnis. Aliquam facilis magnam doloremque quisquam et ut in.','517792059','2808925','3457294697794','1974-03-03','1974-03-22',287.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(61,8,12,2,5,8,'Connie Baumbach','9790','Provident sit quas ut nulla illum praesentium. Nesciunt dolorum hic voluptate aut esse eaque atque. Dolor saepe eum rerum delectus placeat.','331606662','3055720','0545307726753','2001-05-17','1977-03-07',932.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(62,15,15,41,18,20,'Dr. Marian Rippin Sr.','7600','Id omnis sit ut in quia. Necessitatibus vel porro rerum et rerum. Itaque debitis voluptatem minima in a ut. Incidunt ut maiores consectetur ut et.','918867159','8064061','4063551937115','2014-01-20','1992-11-04',826.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(63,15,32,9,16,3,'Bonnie Doyle','4175','Et molestias maiores quo est aut sed neque. Ratione quis harum quis. Enim ea hic placeat id facilis totam.','286973166','2785782','3862457108787','2008-06-05','2007-08-25',363.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(64,11,17,27,9,5,'Chasity Reinger','3369','Aut quo et iusto temporibus illo tempora praesentium. Placeat assumenda quia et rerum illum. Blanditiis dolores praesentium nesciunt at provident mollitia qui voluptas.','227263157','734094','8706965397804','1972-03-21','2000-04-09',185.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(65,4,5,14,12,7,'Prof. Hildegard Jerde','966','Voluptate ut sint nostrum suscipit eum. Fugiat aut aliquid consectetur esse quo eum. Labore architecto sunt voluptatem repudiandae. Voluptatem officia tenetur quia magnam sed quibusdam recusandae numquam.','761556729','2106979','4409302508355','2005-06-23','2003-01-18',655.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(66,12,25,36,5,11,'Lionel Dach DDS','2459','Sit reprehenderit porro est corporis aut nostrum. Quis ipsa voluptatibus dolore aut sit. Soluta vel officia vel. Fuga facilis quibusdam non harum et voluptatum quo. Necessitatibus esse qui et eveniet aut qui repellendus aut.','94178542','8082214','8888452391721','1984-11-30','1997-01-13',35.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(67,1,38,5,3,18,'Kellie Herman I','524','Est aspernatur ut praesentium voluptatem nobis. Est iure ad quo rerum soluta molestias sed. Necessitatibus harum minus magnam est quis illo. Necessitatibus exercitationem molestiae ullam et ex.','839069612','8708894','5918757996598','2007-06-26','1976-11-25',302.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(68,18,28,13,19,11,'Sage Runolfsdottir','2326','Ipsum in impedit et odio deleniti vitae impedit. Consequatur amet eveniet et qui. Fugit libero saepe occaecati et sit fuga.','689973427','7509231','9909684770333','2009-01-19','2010-09-16',844.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(69,11,17,49,12,12,'Dr. Chandler Boehm IV','7471','Velit optio aperiam voluptatibus est asperiores mollitia dolorem. Expedita provident qui sed et.','727282304','3792840','8434073576025','2005-11-20','1993-05-16',546.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(70,17,16,25,2,13,'Vaughn Ferry','6066','Reiciendis eius assumenda quae cum tempore. In aut sit animi dolorem. Velit cupiditate non ratione et corrupti.','958101709','5976896','2444347177816','2005-06-02','1993-04-17',546.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(71,1,38,27,1,13,'Domenica Doyle III','6441','Odio ullam commodi eos animi. Aut nihil est tempora dolore reiciendis. Repudiandae quia voluptatem ducimus aut.','559878435','9728598','6961392411208','1989-12-18','1996-06-15',630.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(72,7,47,40,20,1,'Prof. Twila Donnelly','5707','Voluptas similique beatae at facere ab aut veniam. Et hic voluptatibus temporibus. Omnis vero quia et quis quis. Sapiente omnis consequatur non nam est.','866388296','5539746','2773874827988','1975-11-17','1972-04-16',968.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(73,8,12,2,4,9,'Ms. Ofelia Miller','6012','Sed aut adipisci aut autem magni ipsa tempore. Ut quod impedit eius accusantium. Accusamus et voluptas officiis.','367870085','4179444','9368615715735','1975-05-10','1983-12-19',519.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(74,10,23,25,10,4,'Dusty Pollich','6810','Ducimus quod veritatis qui. Quasi temporibus vero ducimus eaque aut nihil quisquam.','528580673','5381064','8047078547695','1978-05-14','1982-01-05',619.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(75,15,15,42,16,1,'Kennedi Homenick','3658','Rerum ut dolorum dicta architecto voluptatum officiis. Culpa ut quasi dicta. Dolor et molestiae commodi accusamus minus atque impedit occaecati. Labore voluptas laborum aut dicta velit unde aut. Autem eos facilis tempore adipisci repellat odit.','215782093','737365','7704253661317','2000-05-30','1989-08-18',466.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(76,3,8,20,6,14,'Pink Hilpert','9230','Qui veniam dolore cum ipsa sit. Doloribus repellendus aspernatur sed autem nihil eos.','970696495','6672647','7576065419062','1982-11-19','1980-08-01',802.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(77,2,26,19,14,19,'Dejon Simonis','1486','Aut deleniti eum est qui voluptatem. Quidem rerum nisi odit tempore sint voluptatum. Vitae perferendis iusto dolorem ducimus est modi aut. Veritatis sunt eum molestiae est quod nostrum.','765942058','4752305','7977162620366','1993-11-30','2003-07-21',516.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(78,1,21,5,14,14,'Noe Botsford','4358','Vitae cupiditate quis corporis et aliquid exercitationem. Voluptatem et laudantium itaque ducimus consequatur quos. Et vel quisquam veniam temporibus explicabo delectus ducimus aut.','437148794','6555363','5551577352443','1993-08-13','2012-02-15',549.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(79,12,25,39,18,15,'Marcella Koepp Jr.','9951','Deleniti reiciendis fugit quaerat nam consequatur. Placeat voluptatum libero placeat. Consequatur dolor ullam voluptatem ipsum minima vel earum.','634384807','9785811','6993483719009','1998-10-07','1976-06-09',971.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(80,9,14,2,5,16,'Markus Toy','4069','Est quisquam in esse consectetur voluptates at velit. Et natus ut sunt reiciendis. Harum eos ducimus enim dolorem. Exercitationem in neque sapiente velit enim odio.','990099268','7601053','7160818308569','1991-05-03','1990-11-19',763.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(81,11,9,47,8,2,'Ms. Bria Bogisich','6988','Rem possimus eaque iusto autem. Assumenda voluptatem quia eum quo quas. Officia voluptatem consequuntur et et quis. Quae optio earum adipisci culpa. Eligendi exercitationem voluptatibus sint non sed eius.','402212378','746222','8995344481702','1994-04-08','1999-05-22',36.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(82,11,17,14,6,9,'Georgianna Bruen','3325','Eum nemo totam dolore praesentium et minima. Assumenda nihil mollitia impedit. Aspernatur tempora voluptatibus sint. Voluptate rerum id quaerat excepturi recusandae.','426447471','908825','7054650399772','1972-08-29','1997-05-30',613.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(83,9,43,45,5,10,'Mr. Hudson Von','788','Ipsum officia ut qui ea sunt molestiae commodi. Dolorum maiores laboriosam amet quia voluptatem rerum. Qui aut esse eaque voluptas voluptates. Ut voluptas beatae quisquam molestiae voluptate aut. Qui eos iure dolores vel ut neque.','556741061','8484570','8016804870420','2002-07-20','1985-10-08',65.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(84,18,18,4,15,2,'Dayna Kohler','5030','Et cupiditate qui velit debitis. Eos et est inventore nihil placeat. Doloribus dicta accusantium dicta voluptas in unde hic ipsa.','238505140','2347040','1129954125221','2009-10-09','1999-09-03',315.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(85,6,31,34,12,20,'Jake Daugherty','1308','Ullam non dolorem voluptatem eaque ut quia est repellat. Et sapiente accusantium dolorum voluptatum minus eum quia.','399087574','4398895','4648677711384','2009-01-01','1993-09-08',786.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(86,20,20,13,4,19,'Mable Rohan','3746','In aut nostrum modi doloribus ab et. Sequi vel optio asperiores id aspernatur.','250433915','3499949','0832224126040','1970-08-17','2013-05-02',617.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(87,15,15,42,13,9,'Brooklyn Huel','9159','Ullam rerum aut blanditiis numquam autem. Quia non ab aperiam aut. Esse voluptates nobis non et ipsa expedita. Tempora ad ullam est laboriosam.','689902624','5507123','8394624833567','2000-08-18','1998-05-13',251.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(88,16,22,24,3,2,'Marlene Gerhold','3810','Iusto necessitatibus qui ut consequuntur iure distinctio. Voluptate repellat tempore ipsam voluptatem et quia consequuntur sunt. Corrupti asperiores et odio quo ipsa omnis. Perferendis et et soluta rerum voluptas et est consectetur.','385946994','4314179','7250071048460','1998-03-05','1988-11-13',574.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(89,3,35,42,18,19,'Tyler Dickens','7936','Deserunt nemo ratione assumenda eaque earum. Recusandae nemo et at accusamus quia adipisci at. Nihil saepe officia ipsa. Quis facere dolorum sed illum voluptatum officiis.','629269564','8285942','8092156769766','2011-04-15','1988-10-27',959.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(90,11,9,43,1,14,'Anne McKenzie V','9702','Aut maxime et ratione atque et. Magni quibusdam possimus ut laborum esse. Sed temporibus et non amet ipsam est. Vitae nulla quo ut dolores aut molestiae.','860361682','4118273','9832469197875','1990-03-07','1983-04-16',663.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(91,15,32,16,5,20,'Devante Lang','1555','Qui incidunt beatae eum dolorem molestias est quidem aut. Voluptatem quam laborum provident dicta hic iste nulla. Nesciunt alias delectus magni ut. Ut consequatur porro ut suscipit aperiam ut.','201009689','2261465','7642576628313','1973-11-08','1981-05-28',555.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(92,9,24,18,19,20,'Prof. Tillman Zboncak I','6541','Facilis recusandae ratione est est est in. Error aliquid exercitationem vel eum vitae. Atque cupiditate animi reprehenderit debitis. Facere et repellat quo hic blanditiis.','158247028','8752853','1213849154752','1997-03-14','2002-04-02',750.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(93,12,42,17,5,5,'Miss Eleanora Wiza I','8111','Qui iste harum omnis. Dicta assumenda similique quam quod. Eaque beatae excepturi quisquam vero quia aut.','262627839','1201286','7977970052076','1985-06-22','1992-10-22',465.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(94,15,15,39,12,14,'Carmen Walsh IV','9344','Ex reiciendis corporis molestiae rerum reiciendis veniam. Quo ullam cumque harum. Est placeat laborum dignissimos aut maxime est eius. Rerum ipsum at ipsum voluptates iste eius dolores.','493214376','9114803','1636286429458','2013-06-13','2002-03-29',551.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(95,8,12,29,17,3,'Herman McDermott','9688','Incidunt id aperiam explicabo qui neque sequi aut. Debitis itaque omnis minus itaque non tenetur. Rerum expedita praesentium sit natus quia at. Aut totam dicta officiis nam amet.','759998915','249076','5360040592367','1998-06-22','1999-10-31',931.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(96,3,8,3,9,1,'Ms. Jayne Lakin I','8735','Ex asperiores illum nihil quasi dolorum vero voluptas ea. Repellendus quam maxime nesciunt qui unde. Mollitia vel quibusdam deleniti facilis voluptatem optio nihil sit.','45854962','706536','6562927005383','1970-03-14','1972-04-09',257.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(97,4,5,25,11,19,'Kamron Senger','1225','Dolores qui nisi consectetur consequatur aut optio facilis. Maxime rerum ab consequatur officiis modi. Repellendus numquam est suscipit fugiat itaque praesentium.','583720282','9911111','6578551977613','1998-06-29','1986-04-17',441.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(98,7,6,38,8,11,'Mariane Champlin','5061','In velit velit atque eos saepe est. Necessitatibus corporis odio perferendis voluptate odio. Ut velit autem eligendi.','911900162','6184727','9696824461595','1970-05-02','1991-12-31',887.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(99,11,17,26,11,11,'Burdette Crona','8','Autem qui dolor non qui consequatur voluptas voluptas. Suscipit qui quas non qui et reiciendis. Quia mollitia velit dicta ullam. Est ut ut itaque rerum voluptates suscipit praesentium tempore. Voluptas non et reprehenderit est aliquam.','387289541','8513102','5373188455326','1978-06-19','1988-03-10',376.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(100,1,21,43,6,14,'Mrs. Princess Weber Jr.','194','Voluptas minima sed qui tempore nihil eius. Voluptas nobis excepturi voluptates vel.','557503992','6294794','9090820761398','2012-10-14','1982-11-15',522.00,NULL,NULL,NULL,'active','2015-09-30 18:21:24','2015-09-30 18:21:24');

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table buildings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `buildings`;

CREATE TABLE `buildings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;

INSERT INTO `buildings` (`id`, `name`, `created_at`, `updated_at`, `latitude`, `longitude`)
VALUES
	(1,'Thompson Group','2015-09-30 18:21:23','2015-09-30 18:21:23',-4.537465,-5.582739),
	(2,'Breitenberg, Ferry and Smith','2015-09-30 18:21:23','2015-09-30 18:21:23',-60.287676,150.530905),
	(3,'Schinner LLC','2015-09-30 18:21:23','2015-09-30 18:21:23',85.840658,-4.111600),
	(4,'Turner-Boyer','2015-09-30 18:21:23','2015-09-30 18:21:23',84.962321,170.910115),
	(5,'Kerluke, Labadie and Hand','2015-09-30 18:21:23','2015-09-30 18:21:23',38.659914,57.747430),
	(6,'Leuschke, Crist and Kuhic','2015-09-30 18:21:23','2015-09-30 18:21:23',-79.487761,175.101951),
	(7,'Skiles-Hegmann','2015-09-30 18:21:23','2015-09-30 18:21:23',-61.460106,-60.868755),
	(8,'Klocko-Rice','2015-09-30 18:21:23','2015-09-30 18:21:23',25.422040,75.440788),
	(9,'Rath-Kautzer','2015-09-30 18:21:23','2015-09-30 18:21:23',-57.040234,83.200819),
	(10,'Champlin-Gorczany','2015-09-30 18:21:23','2015-09-30 18:21:23',-68.412816,111.842825),
	(11,'Tromp-Walsh','2015-09-30 18:21:23','2015-09-30 18:21:23',35.771111,-64.771578),
	(12,'Stamm Inc','2015-09-30 18:21:23','2015-09-30 18:21:23',81.798825,178.570844),
	(13,'Huels-Dooley','2015-09-30 18:21:23','2015-09-30 18:21:23',6.099688,143.494008),
	(14,'Ziemann LLC','2015-09-30 18:21:23','2015-09-30 18:21:23',-43.661876,139.547695),
	(15,'Mann-Harber','2015-09-30 18:21:23','2015-09-30 18:21:23',-19.299866,91.631822),
	(16,'Koss, King and Brown','2015-09-30 18:21:23','2015-09-30 18:21:23',-26.744061,67.761744),
	(17,'Ferry, Waelchi and Waters','2015-09-30 18:21:23','2015-09-30 18:21:23',0.272455,-171.749280),
	(18,'Gorczany, Lindgren and Klocko','2015-09-30 18:21:23','2015-09-30 18:21:23',-81.526893,-23.970697),
	(19,'Cole, D\'Amore and Farrell','2015-09-30 18:21:23','2015-09-30 18:21:23',58.425401,-72.265384),
	(20,'Champlin-Emard','2015-09-30 18:21:23','2015-09-30 18:21:23',16.053939,-100.993996);

/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'inventore','Odit consequatur eos tenetur. Cum ut ullam saepe. Rerum amet non esse voluptatem qui beatae.\nSimilique porro fugiat molestias magni. Aut dolorem numquam temporibus. Quo voluptas inventore et.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(2,'ut','Nihil est sint aspernatur fugit. Porro corrupti sint nobis ipsam quis doloribus. Quod quas cumque nisi alias nemo. Et velit doloremque sint quis.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(3,'nemo','Velit molestias quae nihil aut. Labore numquam quia voluptatibus reiciendis nam in. Rerum adipisci nemo ab a. Qui quo voluptatibus architecto adipisci placeat sit ut.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(4,'sit','Rem facere repudiandae qui veritatis. Qui qui inventore voluptates itaque aut. Esse sed sit veniam maxime. Doloribus autem adipisci ducimus voluptatem qui.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(5,'dolor','Fugiat laboriosam quasi cum culpa culpa. Eius veniam voluptatem ad. Delectus commodi ea reprehenderit adipisci temporibus nihil.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(6,'quod','Cum provident quas porro sit quod. Neque qui id consequuntur laudantium quia assumenda. Sint facere corrupti qui voluptatem commodi. Natus ad illum error ut corporis est.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(7,'non','Quod quia autem qui ullam eum. Atque accusamus hic dolorem optio iste. Voluptatem ut neque autem molestiae omnis a. Nihil illo aut aspernatur odio aspernatur repellat.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(8,'blanditiis','Veniam id aut ipsa voluptas reiciendis. Dolorem minus ab qui et quia. Et ab vero qui modi nemo voluptates hic et. Optio tenetur et enim vitae. Autem libero aut laborum atque ullam.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(9,'repudiandae','Pariatur ex dicta laborum dignissimos perspiciatis. Laudantium modi aut et.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(10,'tempora','Dolor ut et tenetur in adipisci magni quidem. Assumenda quas rem est vel molestiae est nobis est. Officiis hic possimus dolores aut rerum eum. Nulla ipsum impedit error debitis.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(11,'reiciendis','Ut rerum iste est rerum in. Vel facilis nobis esse pariatur ut ratione. Suscipit non eum et dolores.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(12,'vel','Perspiciatis nobis earum asperiores eligendi nulla et rerum. Eaque ea autem facere voluptatem. Dolor cupiditate nisi aut blanditiis ut.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(13,'ullam','Qui sequi ea numquam a et. Aut nihil et minus sequi et.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(14,'quis','Cumque molestiae ullam dolor. Distinctio fugit voluptas sit hic accusantium quae quisquam. Aut cupiditate id nulla soluta nisi quae ipsam.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(15,'neque','Ut odit facere repellat nemo esse laudantium et repellat. Error voluptatem quis nam. Doloremque praesentium beatae ex quis non debitis.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(16,'est','Vel eum ut qui dolore impedit dolores. Et facilis vel consectetur ut facilis perferendis. Corporis dicta debitis ea est.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(17,'repellat','Quia corporis eum asperiores alias et quibusdam sequi. Aliquid aut autem doloremque eaque numquam. Ratione fuga sunt consequatur ullam maiores sed dolores.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(18,'nulla','Est blanditiis fugiat laudantium reprehenderit consequuntur iusto. Voluptatibus in dolore nulla inventore nesciunt.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(19,'ut','Tenetur amet minus sit delectus placeat consectetur ipsa aut. Molestias nihil vel qui est quibusdam totam voluptatem iure. Optio quo sint accusamus voluptatem.','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(20,'delectus','Atque esse quod quis unde et ex laudantium. Facere provident est voluptatem asperiores et fugit quae modi. Expedita sed qui rerum. Sapiente et molestias repellat et velit exercitationem.','2015-09-30 18:21:23','2015-09-30 18:21:23');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table departments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Mertz-Wilkinson','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(2,'Deckow-Ferry','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(3,'Sipes, Kunze and Okuneva','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(4,'Altenwerth, Koch and McLaughlin','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(5,'Kerluke, Bechtelar and Ankunding','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(6,'Dickinson Ltd','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(7,'Emmerich-Mills','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(8,'Kohler Group','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(9,'Gutkowski-Bauch','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(10,'Graham-Zulauf','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(11,'Harris-Kautzer','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(12,'Donnelly Ltd','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(13,'Witting, Bode and Hickle','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(14,'Durgan PLC','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(15,'Rogahn, Renner and Mueller','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(16,'Ruecker, Greenholt and Stracke','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(17,'Kshlerin, Torp and Hahn','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(18,'Swift-Rippin','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(19,'Mertz PLC','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(20,'Legros Inc','2015-09-30 18:21:23','2015-09-30 18:21:23');

/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table employees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `employee_number` int(10) unsigned NOT NULL,
  `street_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status` enum('married','single') COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `ssn` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drivers_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `employee_number`, `street_1`, `street_2`, `city`, `state`, `region`, `country`, `zip_code`, `phone`, `mobile`, `marital_status`, `dob`, `ssn`, `timezone`, `drivers_license`, `created_at`, `updated_at`)
VALUES
	(1,'Isabella','Jacobs','Riley28@Runte.biz',266,'24859 Barrows Ways Suite 873',NULL,'Garrettview','Connecticut',NULL,'TK','58688',NULL,'783-230-6064x7910','','2008-02-13',NULL,'America/Glace_Bay',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(2,'Margaret','Bednar','Tom.Kris@Strosin.net',875,'0236 Brakus Rapids Apt. 978',NULL,'West Brandimouth','New Hampshire',NULL,'BD','32003',NULL,'1-584-085-5507x4746','','1980-07-11',NULL,'Europe/Dublin',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(3,'Sid','Abernathy','Callie.Hoppe@Kautzer.com',618,'76158 McKenzie Cliff',NULL,'Gusikowskichester','Oklahoma',NULL,'GP','61625',NULL,'768.844.3920','','1922-05-10',NULL,'Europe/Brussels',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(4,'Waldo','Eichmann','Emmie.Koch@yahoo.com',890,'640 Leone Terrace Apt. 463',NULL,'New Columbusfort','Wyoming',NULL,'NA','05659-7747',NULL,'1-303-590-6593x7103','','2002-02-20',NULL,'Atlantic/St_Helena',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(5,'Alyce','Hammes','Wade64@hotmail.com',998,'7652 Stamm Isle',NULL,'Bernhardside','Arkansas',NULL,'CV','60418-6688',NULL,'(229)343-7222','','1931-08-10',NULL,'Africa/Asmara',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(6,'Fae','Cremin','Eileen91@Hyatt.com',466,'48620 Samanta Throughway Apt. 616',NULL,'Port Masonside','Maryland',NULL,'TL','80571',NULL,'1-961-561-0646x7356','','2003-10-13',NULL,'Europe/Samara',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(7,'Grady','Jerde','eQuitzon@hotmail.com',401,'0009 Blake Pike',NULL,'Schultzmouth','New Mexico',NULL,'MY','79801-3253',NULL,'(468)388-8260x94551','','1963-07-03',NULL,'Asia/Oral',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(8,'Howell','Kuphal','Frances66@Little.com',252,'92689 Turcotte Trail Suite 354',NULL,'Port Amber','Arizona',NULL,'GT','75486',NULL,'(014)902-7884','','1947-08-31',NULL,'Asia/Kuwait',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(9,'Theodore','Mertz','Roscoe.Witting@Von.com',81,'2348 Jayden Motorway Suite 511',NULL,'Port Amie','New Hampshire',NULL,'MQ','23913-5799',NULL,'1-654-595-3357','','1996-04-26',NULL,'Europe/Brussels',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(10,'Amalia','Metz','Mann.Katelin@gmail.com',866,'48434 Sterling Unions Apt. 128',NULL,'New Gladysfurt','Alaska',NULL,'HK','11069-5862',NULL,'135-207-2465x7799','','1929-10-21',NULL,'Asia/Vientiane',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(11,'Wilber','Gutmann','nAdams@Ortiz.com',837,'501 Kay Mountains Suite 273',NULL,'New Felicita','Idaho',NULL,'SL','80948',NULL,'819.463.9942x4765','','2002-12-05',NULL,'Europe/Kaliningrad',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(12,'Kiera','Rice','Bradtke.Aida@Schmidt.com',440,'494 Gerard Brooks',NULL,'East Conradberg','Oregon',NULL,'PM','10886',NULL,'957-554-8337x940','','1967-10-10',NULL,'Pacific/Gambier',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(13,'Lynn','Johnson','Marlene.Wiza@hotmail.com',683,'010 Funk Mission Suite 139',NULL,'West Brett','West Virginia',NULL,'UZ','21507',NULL,'(765)521-6966x9040','','2009-06-29',NULL,'Europe/Vienna',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(14,'Ramon','Huels','Lucienne.Kris@yahoo.com',780,'433 Pattie Rapids',NULL,'West Ambroseview','Delaware',NULL,'CW','50178',NULL,'(362)917-7652','','1989-07-21',NULL,'Asia/Magadan',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(15,'Adele','Mraz','wCorkery@Barrows.com',736,'277 Rau Courts',NULL,'Port Busterport','Nevada',NULL,'DM','52133',NULL,'903.143.3045','','1939-10-12',NULL,'Africa/Blantyre',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(16,'Marcos','Brakus','Aubree82@Beatty.info',66,'26369 Ratke Lane',NULL,'North Claudshire','Idaho',NULL,'MH','38700',NULL,'1-489-278-1664x53833','','1966-06-07',NULL,'Asia/Omsk',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(17,'Tianna','Ruecker','Lesch.Elroy@hotmail.com',328,'95602 Kenton Curve Suite 519',NULL,'New Isobelton','North Dakota',NULL,'LV','81385-6592',NULL,'09622060231','','1960-06-30',NULL,'America/Manaus',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(18,'Beulah','Davis','pRunte@Buckridge.org',884,'5389 O\'Kon Ridge',NULL,'East Justineport','Iowa',NULL,'BV','39281',NULL,'(540)708-7479','','1961-10-10',NULL,'Asia/Hebron',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(19,'Carli','Schmeler','Lora45@yahoo.com',836,'4872 Beatty Extensions',NULL,'North Anjaliton','Nebraska',NULL,'BF','23653-9944',NULL,'1-150-429-1848x864','','1956-04-24',NULL,'Pacific/Noumea',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(20,'Lorena','Dietrich','Dulce26@gmail.com',720,'314 Alfreda Ports',NULL,'Ericaberg','New Hampshire',NULL,'LK','58426-1686',NULL,'(085)486-7306x5068','','1956-03-03',NULL,'Europe/Zagreb',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(21,'Xander','Gaylord','Kulas.Isabelle@Lemke.org',456,'53807 Armstrong Burgs Apt. 936',NULL,'Lisetteside','Rhode Island',NULL,'ER','10650',NULL,'963.023.9208x934','','1990-01-03',NULL,'America/Resolute',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(22,'Elmore','Greenholt','Schumm.Enoch@gmail.com',906,'9844 Eda Streets',NULL,'Zoiestad','South Dakota',NULL,'TR','32514',NULL,'+74(0)9086656074','','1946-04-22',NULL,'Africa/Douala',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(23,'Mustafa','Volkman','Reynolds.Miracle@hotmail.com',505,'93495 Strosin Turnpike',NULL,'West Amya','Virginia',NULL,'TH','77431-6123',NULL,'03322210082','','1996-09-11',NULL,'America/Guadeloupe',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(24,'Werner','Donnelly','Barry90@Volkman.net',555,'2597 Schiller Corners Suite 639',NULL,'Port Javierborough','Connecticut',NULL,'MH','41047-4307',NULL,'(657)395-2643x54829','','1964-08-01',NULL,'Europe/Malta',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(25,'Eddie','Spencer','Walter.Jillian@gmail.com',504,'205 Wisozk Throughway',NULL,'Harrishaven','Montana',NULL,'AS','62166',NULL,'209-756-3360x488','','1967-01-31',NULL,'Atlantic/Bermuda',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(26,'Lauretta','Schultz','Luciano54@yahoo.com',726,'156 Sanford Union',NULL,'North Elenortown','Maryland',NULL,'TV','12391',NULL,'727-560-1110x50311','','1970-12-30',NULL,'Australia/Eucla',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(27,'Letha','Collins','Shannon78@Klocko.com',853,'34464 Crona Run Suite 564',NULL,'West Keenanfort','Hawaii',NULL,'CY','69768-0045',NULL,'1-025-019-3802x0194','','1981-08-08',NULL,'Asia/Choibalsan',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(28,'Princess','Hoppe','Yessenia70@Hamill.biz',583,'007 Bart Ranch',NULL,'Skylaside','Illinois',NULL,'AL','56906-6653',NULL,'668-625-0447x7829','','2004-10-21',NULL,'America/Indiana/Tell_City',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(29,'Alexandrea','Hilpert','hHarvey@gmail.com',968,'55240 Eduardo Hill',NULL,'South Brendan','California',NULL,'LR','58173-9860',NULL,'792.239.6188','','1986-02-15',NULL,'America/Nipigon',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(30,'Emelia','Shields','Rozella.Kertzmann@yahoo.com',368,'876 Addie Keys',NULL,'Carmelashire','New York',NULL,'EE','49306',NULL,'854-977-2085x5212','','2015-01-19',NULL,'America/Danmarkshavn',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(31,'Oren','Prosacco','Abigayle.Ferry@Reichel.com',989,'36773 Bode Glens',NULL,'Wardfurt','Tennessee',NULL,'GB','93371-3812',NULL,'112-526-8395x039','','1968-07-03',NULL,'Australia/Sydney',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(32,'Imelda','Wisozk','eLockman@hotmail.com',506,'61268 Leffler Drive Apt. 889',NULL,'Sengerview','Hawaii',NULL,'MW','16679-6629',NULL,'995-509-0315','','1937-10-08',NULL,'Indian/Mahe',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(33,'Lilyan','Pollich','Nikolaus.Gerhard@Klein.com',153,'15330 Runolfsdottir Burgs Suite 828',NULL,'North Fritz','Nebraska',NULL,'FI','39753',NULL,'(087)521-5413x4846','','1955-07-31',NULL,'Pacific/Funafuti',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(34,'Saul','Hodkiewicz','Rodriguez.Larue@yahoo.com',500,'8886 Kozey Meadows Apt. 441',NULL,'Kayliehaven','Oregon',NULL,'FM','03238',NULL,'+94(1)0580883982','','1955-03-24',NULL,'America/Danmarkshavn',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(35,'Xzavier','Ratke','Warren37@hotmail.com',325,'645 Johnston Squares',NULL,'South Ginaberg','Iowa',NULL,'KY','69803-7932',NULL,'236.557.6810x2664','','1952-03-09',NULL,'America/Jamaica',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(36,'Ian','Runolfsdottir','Margarette.Kozey@yahoo.com',535,'735 Noelia Centers',NULL,'Romaguerabury','Massachusetts',NULL,'AM','07489-9028',NULL,'(488)765-4207x16680','','1990-03-02',NULL,'Europe/Jersey',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(37,'Patsy','Stroman','wNikolaus@Lehner.com',966,'578 Kyleigh Spurs Apt. 099',NULL,'West Eulahville','Kansas',NULL,'JO','05391',NULL,'(636)706-1069x265','','1963-05-19',NULL,'Indian/Chagos',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(38,'Trey','Yost','Joanie56@yahoo.com',372,'6686 Nikki Springs',NULL,'Kubport','Michigan',NULL,'CA','16893',NULL,'+84(7)5182505947','','1949-06-05',NULL,'America/El_Salvador',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(39,'Kimberly','Beatty','Emmet.Muller@yahoo.com',47,'07577 Sandra Ways',NULL,'West Katherineport','California',NULL,'NO','64320-9054',NULL,'497.715.3707','','2006-04-02',NULL,'America/Nipigon',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(40,'Bernadine','Walsh','Herta73@yahoo.com',753,'8413 Schaefer Course',NULL,'East Elijah','North Dakota',NULL,'BZ','81568-1040',NULL,'06589366572','','1967-04-03',NULL,'Europe/Belgrade',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(41,'Tierra','Wiza','Oliver08@Larkin.com',591,'6439 Franecki Passage Apt. 453',NULL,'Lavadabury','Iowa',NULL,'GH','36148',NULL,'736-103-8106x3720','','1926-12-27',NULL,'Atlantic/South_Georgia',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(42,'Randi','Reynolds','yLemke@gmail.com',772,'42062 Jacobson Drive Suite 780',NULL,'Elwynhaven','Indiana',NULL,'BI','91258',NULL,'1-545-437-3282x3432','','1966-02-24',NULL,'Asia/Nicosia',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(43,'Freeda','Spinka','Roslyn.Waters@Dibbert.com',866,'03607 Rosalind Path Suite 397',NULL,'Reinholdstad','Michigan',NULL,'AO','58436-6038',NULL,'1-768-181-4322','','2004-11-19',NULL,'America/Detroit',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(44,'Donavon','Abernathy','Serena45@Hansen.com',277,'4079 Toney Locks Apt. 842',NULL,'South Misty','Alaska',NULL,'MV','59967',NULL,'686-152-4202x8192','','1916-04-25',NULL,'America/Yellowknife',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(45,'Kiel','Skiles','Anderson54@gmail.com',408,'968 Crona Trace Apt. 239',NULL,'Marielleview','District of Columbia',NULL,'MM','67121-3560',NULL,'1-984-739-1924','','1957-03-16',NULL,'Pacific/Tahiti',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(46,'Adella','Torphy','Ramiro35@Homenick.org',541,'5604 Izaiah Route',NULL,'Ethelberg','Maine',NULL,'BJ','24651',NULL,'1-545-924-9966x564','','1917-07-09',NULL,'Europe/Kaliningrad',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(47,'Buck','Streich','Prince48@gmail.com',443,'9480 Torp Creek',NULL,'North Emery','Oregon',NULL,'MK','25508',NULL,'(543)165-7956x307','','1940-10-19',NULL,'America/Caracas',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(48,'Flavio','O\'Keefe','dTurcotte@Ledner.com',956,'02130 Erling Lock Apt. 479',NULL,'South Abbie','District of Columbia',NULL,'ZW','67013',NULL,'951.214.9851','','1958-01-14',NULL,'America/Grenada',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(49,'Pansy','Littel','Garth42@hotmail.com',705,'054 Verner Spur Apt. 801',NULL,'Hilperttown','Rhode Island',NULL,'DZ','81337-4466',NULL,'02800851041','','1962-06-25',NULL,'Antarctica/Troll',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24'),
	(50,'Tristian','Smith','Lexie.Howe@gmail.com',875,'860 Kuhlman Island',NULL,'South Merle','Vermont',NULL,'MH','43675',NULL,'05942750325','','1920-10-15',NULL,'America/New_York',NULL,'2015-09-30 18:21:24','2015-09-30 18:21:24');

/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table floors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `floors`;

CREATE TABLE `floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;

INSERT INTO `floors` (`id`, `building_id`, `name`, `image`, `created_at`, `updated_at`)
VALUES
	(1,19,'Lisette Funk',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(2,16,'Prof. Nathen O\'Reilly',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(3,17,'Alysha Eichmann',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(4,6,'Miss Meredith Muller',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(5,4,'Alyson Kohler',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(6,7,'Braulio Grant',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(7,13,'Dr. Charlie O\'Keefe',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(8,3,'Ricky Quitzon',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(9,11,'Miss Imogene Predovic',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(10,9,'Oda Kovacek',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(11,14,'Ceasar O\'Reilly',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(12,8,'Ms. Gabrielle Bartoletti',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(13,14,'Zechariah Hand',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(14,9,'Neha Wolf',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(15,15,'Ms. Abbie Corwin',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(16,17,'Otho Block',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(17,11,'Mr. Kamren Harber MD',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(18,18,'Dr. Domenick Beer',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(19,6,'Mrs. Carolyne Koelpin',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(20,20,'Dr. Zane Little II',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(21,1,'Daryl Huel',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(22,16,'Miss Chelsie McKenzie',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(23,10,'Dr. Tina Stoltenberg DVM',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(24,9,'Millie Nader',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(25,12,'Johnathan Fay',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(26,2,'Mr. Declan Hand Jr.',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(27,5,'Prof. Soledad Bergnaum DDS',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(28,18,'Prof. Stewart Hoeger',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(29,17,'Mr. Julius Barrows V',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(30,8,'Simeon Blanda',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(31,6,'Electa Lind',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(32,15,'Kenya Volkman',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(33,6,'Miss Fabiola Legros II',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(34,14,'Amely Kutch',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(35,3,'Lucious Conroy V',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(36,17,'Horace Bailey II',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(37,15,'Virgil Lowe',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(38,1,'Prof. Makenna Wolf Jr.',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(39,11,'Prof. Eryn Gleichner',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(40,3,'Prof. Brock Cole II',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(41,5,'Mr. Mason Sporer',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(42,12,'Dr. Ryleigh Brekke',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(43,9,'Wilhelm Erdman I',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(44,5,'Lysanne Stracke',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(45,6,'Dayne Wilkinson',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(46,14,'Efren Bernier Sr.',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(47,7,'Ms. Abigale Mueller V',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(48,7,'Leo Rohan',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(49,5,'Dayana Skiles',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(50,20,'Kristoffer Jakubowski DVM',NULL,'2015-09-30 18:21:23','2015-09-30 18:21:23');

/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `location` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2015_09_10_000000_create_department_table',1),
	('2015_09_10_200000_create_users_table',1),
	('2015_09_10_300000_create_roles_tables',1),
	('2015_09_10_400000_create_password_resets_table',1),
	('2015_09_11_131245_create_asset_table',1),
	('2015_09_15_160739_create_employee_table',1),
	('2015_09_17_132025_create_vendors_table',1),
	('2015_09_17_132105_create_category_table',1),
	('2015_09_18_101819_create_locations_table',1),
	('2015_09_23_062915_create_floors_table',2),
	('2015_09_30_171204_create_buildings_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;

INSERT INTO `password_resets` (`email`, `token`, `created_at`)
VALUES
	('kamal@skrollx.com','37a24e9ff260819896213147946c9633253f62978f427940b3e29e3fcf3f1b93','2015-09-30 16:45:40');

/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`)
VALUES
	(1,'manage_users','Manage user accounts','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,'manage_roles','Manage roles','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,'manage_permissions','Manage permissions','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(4,'manage_departments','Manage departments','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(5,'manage_employees','Manage employees','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(6,'manage_assets','Manage assets','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(7,'manage_categories','Manage categories','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(8,'manage_vendors','Manage vendors','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(9,'manage_floors','Manage floors for department building','2015-09-23 08:51:27','2015-09-23 08:51:27'),
	(10,'manage_buildings','Manage Buildings','2015-09-30 17:18:15','2015-09-30 17:18:15');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;

INSERT INTO `role_user` (`role_id`, `user_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `department_id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,1,'admin','kamal@skrollx.com','$2y$10$ynN0bPozqXwSoDF8ACVZn.MC51fzH4950J5n4O9BsGEXJUK6JD/6i',1,'JZmpzaAXeiI0uN7G1REZiZhh3HOFkCMwHMclOqrPjZHFWSeXG26VsQiPd2vw','0000-00-00 00:00:00','2015-09-30 15:35:16');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table vendors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vendors`;

CREATE TABLE `vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;

INSERT INTO `vendors` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Von, Spencer and Osinski','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(2,'Denesik, Mayer and Powlowski','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(3,'Rolfson-Ankunding','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(4,'Koch, Hudson and Heller','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(5,'Kreiger PLC','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(6,'Klein, Beahan and Barton','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(7,'Bode PLC','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(8,'Wiegand-Fritsch','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(9,'O\'Reilly, Green and Schiller','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(10,'Schmeler-O\'Connell','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(11,'Runolfsson, Mohr and Haag','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(12,'Dickens, Gislason and Hansen','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(13,'Bins and Sons','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(14,'Bauch PLC','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(15,'Kshlerin-Schuppe','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(16,'Morissette and Sons','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(17,'Kunze, Kemmer and Kemmer','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(18,'Senger PLC','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(19,'Renner, Roob and Witting','2015-09-30 18:21:23','2015-09-30 18:21:23'),
	(20,'Effertz Group','2015-09-30 18:21:23','2015-09-30 18:21:23');

/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
