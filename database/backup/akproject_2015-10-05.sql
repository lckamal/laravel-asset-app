# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.19-0ubuntu0.14.04.1)
# Database: akproject
# Generation Time: 2015-10-05 06:03:25 +0000
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
  `position_top` float(10,4) DEFAULT NULL,
  `position_left` float(10,4) DEFAULT NULL,
  `status` enum('active','inactive','repair') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;

INSERT INTO `assets` (`id`, `building_id`, `floor_id`, `employee_id`, `category_id`, `vendor_id`, `name`, `asset_no`, `description`, `model`, `serial`, `barcode`, `date_acquired`, `date_disposed`, `purchase_price`, `location_lat`, `location_long`, `image`, `position_top`, `position_left`, `status`, `created_at`, `updated_at`)
VALUES
	(1,26,57,8,25,10,'Ms. Phoebe Jast V','3630','Sequi ut iure ut animi rem. Omnis error consectetur vel ut.','597778268','2347323','5038399682632','1986-02-25','1975-12-03',743.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(2,25,56,35,26,13,'Merlin O\'Keefe','2218','Ullam sit voluptatum voluptatum quae ea quidem aut. Non enim in et non dolor beatae aut. Ducimus ut error eveniet et. Quis molestias iste delectus officiis excepturi aliquid ipsum.','677691016','9743115','3483553205950','1979-08-03','1983-10-03',516.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(3,26,59,1,25,13,'Godfrey Kunde','8836','Nam ut consequuntur debitis dolores dolorum sit. Qui aut voluptatem vel. Esse dicta ea aliquid reprehenderit qui.','372038137','7282794','2478206815038','2006-05-25','1997-03-06',579.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(4,22,2,35,25,7,'Sigurd Legros','9793','Dolore voluptates qui quia distinctio quae. Consequatur et molestiae excepturi itaque. Aspernatur illo aliquam esse reiciendis aliquid est. Repellendus molestiae aut quidem sint et.','953196520','7840621','7373962992748','1970-04-06','2002-07-24',640.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(5,24,54,24,26,14,'Alexanne Bergnaum','6103','Earum enim fugiat nobis quae aliquid doloremque neque eveniet. Maxime eos accusantium fuga quam quia enim. Non aut et rerum non non autem.','199317904','1928146','0234666794311','1989-12-22','1979-08-12',708.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(6,24,55,17,22,10,'Mr. Jess Parisian','7081','Tempore commodi omnis impedit molestias rerum. Nobis molestiae dolorem est rem et. Distinctio quo inventore atque aspernatur temporibus excepturi.','459827783','2903143','4941941120562','1999-11-13','1995-06-12',213.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(7,25,56,32,24,7,'Lorenz Romaguera','1636','Ut aut qui animi sed tenetur veritatis est. Aut quia nemo dignissimos natus. Ea nemo repudiandae quo est ut officia rerum. Perspiciatis ipsa ducimus eligendi maiores dolore.','592465535','1803314','3353214956883','2013-10-30','1974-08-16',868.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(8,22,51,27,24,5,'Maegan Klocko','6403','Deserunt ad mollitia dolores blanditiis. Dicta assumenda voluptas molestiae rerum. Aspernatur libero id in. Nihil voluptatibus quas sed qui tempora.','394578850','217027','0275356371016','1986-07-09','1995-05-04',208.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(9,22,2,1,23,6,'Mr. Dedrick Franecki','3822','Aliquam nihil quam aliquam sint quis. Nostrum et nostrum adipisci eaque sed aut. Nisi sit sapiente alias non laboriosam.','894197444','1595649','4152765711977','2006-08-02','1980-05-14',695.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(10,22,1,39,24,9,'Miss Margarett Mraz','6208','Ipsam sit voluptates reprehenderit et quis corrupti. Eveniet mollitia rerum animi eum vitae placeat.','830942926','5646165','0516128941656','1975-09-21','2011-11-08',358.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(11,26,59,37,22,2,'Dr. Kenyatta Schmeler','946','Ea fugit non et reiciendis ex. Et eos vel asperiores.','492621409','1315497','6189921535878','2001-12-13','1982-05-17',443.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(12,25,53,24,25,10,'Ms. Nyasia Schaden','9551','Cum est itaque ut laborum. Qui iste placeat id optio pariatur cumque omnis. Fugit assumenda nihil quis.','404520554','8915838','1024745223080','1990-09-24','1992-12-09',474.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(13,26,59,38,25,14,'Destiny Schinner','3966','Facere temporibus ut molestias ut. At quo vero qui blanditiis odio pariatur. Hic porro dolor nisi velit. Facilis incidunt sunt excepturi minus.','788907904','8794592','2193139872704','2008-06-09','2000-12-17',179.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(14,22,2,1,22,6,'Della Morar','380','Assumenda provident doloribus aliquid optio. Velit nobis aut tempora et omnis rerum. Nihil commodi vel cum sapiente inventore quo eos eligendi.','907700396','1891863','3629722055944','1983-07-16','2015-08-27',540.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(15,25,56,37,22,12,'Ms. Clarissa Deckow DVM','8962','Molestiae excepturi quasi fugiat sunt dolores. Necessitatibus qui excepturi saepe ea commodi. Excepturi aliquam rerum distinctio neque.','335111086','4549383','5076584197837','2000-12-07','1990-04-20',622.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(16,25,56,50,26,2,'Josue Dietrich','824','Deleniti vel omnis distinctio voluptatem omnis qui et. Rerum tempore labore quia quia necessitatibus. Itaque dolores possimus aut nihil debitis voluptates voluptatem. Hic aut deleniti nisi voluptas aut non et.','20999856','8406318','0427491127960','1987-02-20','2004-09-14',757.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(17,22,51,44,24,5,'Sabina Weimann','6391','Inventore sit amet rem voluptatem et. Qui dolor quisquam consequatur libero mollitia eum impedit. Totam architecto in et ducimus unde eum fugiat dicta. Aliquam sunt porro porro.','212840511','2433417','4314219779937','1992-10-20','1995-11-16',620.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(18,23,52,44,24,6,'Dusty Quitzon','3775','Sit sit quia tempora eos consequatur. Dicta soluta voluptatibus consequatur sapiente possimus molestiae doloribus maiores. Fugiat ea nihil iure sint odio accusantium tempore aut. Occaecati sapiente debitis totam voluptas voluptas repellat.','759918916','8321628','3159516527871','1989-06-27','1974-01-29',836.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(19,23,60,2,26,5,'Dr. Narciso Kassulke','6997','Repudiandae dolorem omnis et. Tempora beatae animi est odit quod. Dolores sapiente voluptatem nesciunt praesentium omnis necessitatibus voluptas.','372580867','7136234','6361971576456','2015-04-29','1991-04-23',920.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(20,23,60,2,26,1,'Delphine Runolfsdottir','1266','Corrupti voluptas quos illum sapiente magnam dolor voluptatem. Similique aspernatur repellat omnis et.','968387200','8674041','1598603529503','1995-10-18','1979-09-05',206.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(21,26,58,47,25,7,'Prof. Leilani West V','8159','Nobis enim ut culpa quaerat possimus repudiandae consequatur. Blanditiis optio est aliquid nihil quo non earum. Ut est eaque voluptatibus cumque. Sed neque dolorem dolor eum non.','773459372','863969','6444397954104','2014-12-05','2002-07-01',906.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(22,22,51,34,26,10,'Oda Bogan','787','Cum ut vel nulla quod. Id soluta hic qui. Officiis atque laboriosam nihil nihil in consequatur qui. Enim similique doloremque nesciunt.','932408205','30109','2276360240167','2010-06-10','1993-05-01',652.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(23,22,51,30,22,9,'Dr. Elias Runolfsdottir II','5584','Molestiae deleniti voluptatem possimus esse. Omnis ut omnis id ducimus totam illum. Blanditiis laborum et consequatur et odio quia et molestiae. Iusto ex debitis non quo in.','763400661','338364','1590657332962','1987-02-10','1990-12-30',437.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(24,26,58,47,25,12,'Rosella Mitchell','9292','Porro id sint nihil. Dolor minima enim quaerat. Et ullam sit in eaque deleniti nam facilis maxime.','96844304','4246290','8429374432217','1981-07-02','2003-10-06',682.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(25,26,59,29,26,10,'Lilliana Mitchell','27','Sed commodi debitis illo qui est. Et ut placeat unde earum molestiae atque suscipit. Modi quisquam voluptatem accusamus dolores dolore laborum. Possimus voluptatem ducimus quam impedit rerum eos. At est aspernatur dignissimos beatae quis.','223837203','5531792','0852069996103','2009-11-08','2008-02-14',905.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(26,25,53,22,25,12,'Ms. Leora Prohaska III','7249','Quisquam provident sint veritatis distinctio doloremque. Dolor et dignissimos molestiae quo repellendus similique et.','663795542','5697991','7400535002594','1989-09-09','2004-03-13',408.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(27,26,3,19,22,7,'Mariano Tillman DDS','9221','Sed suscipit voluptas quis quia commodi rerum. Aut dolore qui maiores necessitatibus recusandae unde dolore a. Voluptates voluptatem quasi non quo deserunt.','887539980','6723433','6765391569188','2015-09-28','2014-12-18',872.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(28,22,51,19,22,2,'Sonny Reilly','2163','Explicabo consequatur sed fugiat aut eaque. Ut quia non aliquam accusamus nisi deserunt placeat. Consequatur et quis saepe et vitae voluptatibus. Voluptatem ab esse est quaerat nihil sit ea. Maiores qui soluta qui in temporibus.','663392053','6752302','0387305352356','1982-05-04','2013-09-27',544.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(29,22,2,22,26,10,'Prof. Natalia Kemmer V','9794','Eos beatae sint quis itaque perspiciatis voluptates aliquid perspiciatis. Rerum doloremque assumenda fuga rerum. Atque explicabo praesentium est ipsam eius quaerat totam. Qui ullam facere in quis sed dolorem. Quidem omnis eos quo reiciendis quibusdam tempore.','73632013','7840098','8282065585834','1986-11-20','2005-06-22',542.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(30,24,55,26,26,10,'Deron Medhurst','4622','Sunt ratione natus commodi nesciunt excepturi voluptates. Natus ratione culpa perspiciatis aliquid porro. Doloribus corrupti alias quas consequatur sint ipsam.','403412512','7786847','3194392225459','1980-04-22','1975-07-14',449.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(31,25,56,33,26,6,'Miss Kellie Gibson','1440','Quia quia dolore adipisci fugit ducimus aut quisquam. Sit est sed aut quis. Occaecati dolorum ut qui ipsam. Et unde quis enim.','576398802','6336225','9189120930792','1988-02-10','1993-05-31',186.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:04','2015-10-05 06:02:04'),
	(32,26,57,43,26,1,'Alfonzo Rogahn','5013','Ipsum amet qui commodi vel error eligendi. Cupiditate minima aut necessitatibus fuga adipisci ab inventore pariatur. Tempora itaque hic qui. Consectetur eos reiciendis ratione. Qui ipsum ab eos ut tenetur sed.','111834020','3708617','0329913644300','1987-08-29','1975-07-03',612.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(33,26,58,34,25,7,'Brennon Bayer','8596','Sed assumenda sit aut consequatur. Voluptatem et ut corporis saepe et impedit ut.','197447074','5941390','9914569455281','1978-02-14','2000-01-03',408.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(34,26,58,39,24,1,'Edgar Tremblay','1406','Magnam eveniet nesciunt commodi iure laboriosam aut iste. Et voluptatem ea et eaque recusandae ipsa molestiae. Ut hic magni dolore ratione quaerat eveniet. Alias similique qui quisquam adipisci quos ipsum.','446203452','6015932','5565800376830','1988-07-21','2008-10-13',365.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(35,23,60,19,23,13,'Mariane Dietrich','9439','Esse iusto tempora et quis eos facere et. Veritatis sunt fuga voluptatem enim. Rerum harum aliquid tenetur consequatur minus nihil. Totam aut voluptate quibusdam et quos.','831763102','4162933','3501930726468','1990-03-20','1992-11-16',540.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(36,23,52,12,26,12,'Cale Watsica','1793','Sapiente quidem eum voluptas fuga accusamus. Occaecati quia officiis rem. Id sit velit saepe commodi nisi. Quos numquam exercitationem iusto nam.','264736212','1338466','5032265722132','2013-03-23','2004-02-18',313.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(37,25,53,27,25,7,'Jennifer Mitchell','1047','Rem expedita sint non nam voluptatum. Excepturi reprehenderit doloremque nam enim. Quo sint sed aliquid natus exercitationem necessitatibus quod. Laboriosam velit pariatur officiis sapiente commodi. Voluptas iusto reprehenderit et.','78961655','6996384','6872921771802','1992-11-30','2012-01-18',800.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(38,22,51,10,23,10,'Johan Keebler','7845','Et aspernatur sit in in explicabo. Et qui perferendis voluptatem autem rem. Fugiat dolor cupiditate sit similique quod.','170540612','7662833','8737524428745','1999-06-04','1987-11-11',781.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(39,23,52,49,23,1,'Dr. Shawn Runolfsdottir','605','A qui adipisci voluptatibus quod reiciendis sunt ea. Repudiandae pariatur in et praesentium repudiandae. Dicta voluptatibus natus et maxime quia veniam repellendus. Dolor voluptatem facere qui expedita voluptas quae. Distinctio dignissimos et delectus ex.','56486290','997102','0867824127128','1978-01-26','1973-02-20',454.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(40,22,1,3,23,5,'Alysha Lebsack','936','Suscipit error voluptas rerum esse quia facilis. Ipsam mollitia perferendis error voluptatum. Ipsa eos quam culpa.','977536950','1028089','1775792594189','1996-12-12','2011-09-14',309.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(41,24,54,12,23,12,'Antonetta Kovacek DVM','9096','Ipsa quibusdam consequatur voluptatem modi voluptates. Exercitationem consequatur dicta omnis officia.','689765713','7172344','4534379393945','1999-10-17','2004-10-07',272.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(42,25,53,18,24,8,'Prof. Marina Borer I','855','Velit voluptas sed autem magni vero. Voluptatem nihil et distinctio iste odio. Ea ex in est non.','863539830','2603558','7512806361016','1973-06-15','2011-12-19',82.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(43,26,3,13,22,9,'Prof. Rod White','6778','Quam labore numquam consequatur eum. In odio animi dolorem eos est sunt quia. Provident nulla hic atque.','877631135','1858385','6791635108929','2002-06-07','1987-10-06',673.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(44,25,56,20,26,13,'Dr. Kade Hackett','2428','Et voluptas illum minus in quis distinctio. Eum ullam aut animi tenetur aut magni. Voluptatibus dolores ea odio ad voluptatibus tenetur.','582707797','7656325','5898343434508','2009-01-03','2000-11-06',253.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(45,23,52,2,22,1,'Kelsi Harber II','5221','Harum nihil aut autem ab aspernatur minus quo. Dolor perspiciatis velit ut tenetur. Ipsam velit distinctio repudiandae nam odit.','417915991','8729762','4684779256637','1988-07-07','1970-08-08',608.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(46,23,52,8,25,3,'Mrs. Ava Kassulke PhD','1598','Soluta distinctio non nobis dolorem. Expedita laboriosam ea eum nihil ducimus in et. Incidunt quasi excepturi aut et.','78849852','5694055','3695203758048','2007-09-15','2000-08-22',714.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(47,24,54,41,25,4,'Ryder Okuneva','4733','Quas excepturi saepe libero. Nulla ullam vero dolorem totam. Odit consequuntur veniam reiciendis accusantium eveniet aut rem. Unde expedita soluta ut non magni et.','487809351','6591231','3735495588371','1988-08-21','1996-07-13',595.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(48,24,55,42,24,3,'Berenice O\'Reilly Sr.','6618','Ut qui quis fugit est at numquam. Maxime veniam non quia cupiditate velit sed iste. Aut in omnis omnis qui ipsam nesciunt aliquam. Id consectetur enim vero tempore minima eos et.','31561471','972920','8280713310425','1993-09-12','1982-09-27',968.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(49,23,60,6,26,13,'Anissa Jacobi','6926','Dolorum quam voluptatem accusantium recusandae delectus. Aperiam quo perspiciatis cum voluptatem nisi ut. Qui nulla quod ut iste quaerat. Esse aliquam deleniti ea velit.','379138180','6101720','8144363612004','1977-04-01','1971-01-10',805.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(50,22,1,1,26,10,'Dr. Robb Goodwin DDS','5206','Eos corporis dicta vel aut aut. Nesciunt id sunt dolor cum ipsum qui vitae. Animi eum eveniet inventore iure quae.','943591370','8732866','9670478051876','1998-10-30','2009-03-21',497.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(51,24,55,26,25,9,'Dr. Constance Crist PhD','10','Vitae vero expedita odit quo voluptatem dolor. Velit et et voluptatem laborum. Et ut est quia sit. Eos quas sed rerum in placeat et ducimus alias.','202005291','7328666','5916017649093','1989-11-02','1993-07-10',96.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(52,23,60,32,23,10,'Sylvan Lehner','5870','Non in tempore accusamus hic quo repudiandae temporibus. Vel qui sunt et accusamus aut soluta. Aliquam quo ut dolore. Vel expedita rerum ipsum illum facere consequatur error.','989496430','4761592','6431747244084','1997-08-14','1975-08-03',265.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(53,22,1,50,23,3,'Edison Rosenbaum II','1587','Incidunt qui voluptas suscipit. Quod est ut numquam deleniti placeat. Dolores non porro reprehenderit doloribus. Consectetur molestiae rerum ut exercitationem a consequuntur.','115305616','687674','6917582940195','1989-12-07','2002-09-21',272.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(54,22,1,25,26,1,'Ramona O\'Kon Sr.','7229','Id ipsum nulla magnam deleniti. Est omnis et et laborum nihil autem laboriosam deleniti.','578835301','9907881','6272378335563','2015-01-16','1972-05-27',849.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(55,24,54,37,25,4,'Harmon Price','786','Aliquid qui expedita praesentium fuga commodi. Rerum ad dolore exercitationem. Sint voluptatibus cupiditate quo ut. Eaque dolorem itaque ut non.','151572937','8877201','8729153493775','1986-11-25','1987-12-12',687.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(56,26,59,25,25,7,'Kale Larson','8279','Eum deleniti ullam laborum facilis culpa consectetur magni. Delectus nemo debitis et quas debitis. Rerum sit natus provident nam. Et ut id corporis.','947664713','5863898','5396848129931','2006-07-03','1970-10-25',663.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(57,25,53,39,26,3,'Prof. Ena Hahn III','4089','Eius dicta optio dolor nobis totam. Tempora a quidem fuga veritatis. Voluptatum iure sequi nesciunt labore dolores nulla.','607699523','612771','4942147415179','2006-07-23','1982-04-07',714.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(58,23,52,18,26,2,'Amy Grant','2455','Et est et ea consectetur eum laboriosam temporibus. Distinctio ea vel sunt. Ad aut voluptates nesciunt ut saepe soluta. Mollitia nobis at aliquid quis.','39428443','7439222','8381416918939','2014-10-30','2014-02-28',542.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(59,26,59,47,24,6,'Dr. Jocelyn Nikolaus V','1351','Voluptates non et quia reprehenderit ullam. Esse consequatur deserunt quos. Cum doloremque doloribus perspiciatis aut enim. Et eius aspernatur delectus odio excepturi in sed.','588070282','4222609','8678139793173','1994-09-27','2013-06-23',935.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(60,22,51,44,25,6,'Carolina Goodwin','9018','In quis dolore modi ratione omnis dignissimos. Omnis culpa similique omnis nisi. Qui ad autem ratione architecto nobis. Placeat illo dolorum sunt nobis assumenda quis.','444937530','8218062','6731105495029','2001-08-25','2009-08-15',534.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(61,26,3,2,24,3,'Jamey Frami III','6760','Pariatur cumque dolorum sit eligendi repellendus hic. Delectus adipisci voluptates odit suscipit. Cumque molestiae voluptas molestiae libero qui perferendis. In doloremque nihil voluptas dolores.','855312278','2206281','1298353080278','2010-11-01','2011-10-28',791.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(62,25,53,41,22,12,'Nicolas Jerde','3719','Esse consectetur dolorem eum est. Sunt ullam dolor quos aut ducimus dolorum. Culpa exercitationem id ea explicabo. Qui illum enim consequatur at fugit perspiciatis rem et.','295012875','6232448','3753597616488','1991-05-13','1978-02-01',987.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(63,23,60,16,26,1,'Karli Kuhlman','1145','Aut dolorem exercitationem ipsa sunt et alias. Sit est voluptatem quis officia officia. Dolor sit eum maxime tempora est. Ab et similique suscipit.','271621695','4695158','8344416180386','1995-08-09','1988-10-03',684.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(64,25,56,24,22,3,'Glenna Turner','444','Et impedit possimus optio quia soluta natus. Atque harum illo sunt porro ad voluptatum. Deleniti quis cupiditate molestias delectus blanditiis.','37852449','7847970','8798372586674','2011-05-08','1988-12-08',571.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(65,22,51,20,23,2,'Prof. Leann Heathcote','5406','Molestiae eum architecto dolores saepe. Sed distinctio officiis veritatis adipisci veritatis nam. Omnis debitis et molestiae nisi. Sit iste tempora est inventore laudantium ea. Sit sunt natus similique necessitatibus et debitis quos.','675552580','8478074','7097764089917','1985-08-24','1992-12-22',728.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(66,26,58,13,22,8,'Marlin Ryan DDS','7148','Voluptates a et et exercitationem. Reiciendis vel qui illo sequi earum dolorem. Ab ea aut officia assumenda quidem. Labore sequi ullam maxime nostrum. Consequatur voluptates laboriosam voluptatem quaerat aspernatur.','492062771','1718465','4997763849549','1986-08-24','1970-08-16',701.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(67,22,1,35,23,13,'Joanny Lueilwitz PhD','5340','Sit nobis velit a quia impedit. Ipsum maiores deleniti totam praesentium. Facilis deserunt dicta sed sed et. Quis libero repudiandae qui et est quis quo.','848281620','6520621','1549825510930','1993-09-03','1987-11-14',55.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(68,23,60,25,23,5,'Jillian Wiza','8793','Corporis rerum soluta nulla et saepe culpa dignissimos est. Neque et veniam suscipit. Id sit ab saepe tempora id ab voluptas. Doloremque numquam aspernatur accusamus ad autem sed eius.','152508566','6800687','8372709060688','2010-03-18','1971-08-16',514.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(69,25,53,9,25,4,'Ellie Christiansen','3895','Quisquam sit eaque est non quis qui. Enim est rerum voluptate harum sapiente aut facere. Dolorem eius sed nihil veniam qui occaecati. Aut vitae doloremque ea eos velit rem.','67526306','3760763','0467555711520','2007-09-26','1977-07-30',167.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(70,23,52,17,22,7,'Antonietta Kreiger','2159','Ad voluptas rerum ab sunt laboriosam dolores. Quasi voluptatibus eveniet porro nesciunt quam molestias. Cupiditate quasi est molestiae. Nihil in et aut vitae. Cupiditate eos sapiente beatae necessitatibus.','153169494','3512238','5153426822284','2000-08-23','2007-09-24',872.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(71,26,58,46,26,6,'Dr. Jordon Gislason','877','Voluptas dicta qui fugiat voluptatem ipsam ut nesciunt. Non ipsam quam eveniet tempora esse. Commodi ut aut ut enim unde dolores voluptatem. Possimus nam sint nam sint impedit odio dicta. Minus ut optio ea labore quibusdam qui.','329554495','769809','0706298078751','1971-04-19','2000-11-06',655.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(72,26,57,45,26,3,'Dewayne Reilly','9555','Tenetur et suscipit rerum dolorum deleniti sit. Aut doloribus minus autem eos. Adipisci non fuga sit quas. Non dolorem facilis facere tempora tenetur architecto.','547157870','7256183','3017271958241','2003-10-09','1998-04-04',753.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(73,24,54,21,24,8,'Dante Zemlak','8775','Nisi molestias itaque sequi aut assumenda. Sunt quod voluptate odio dolorum. Perspiciatis quas iusto quo nesciunt ea esse veritatis.','489530069','3617017','6055254059124','1974-01-12','1980-04-19',127.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(74,22,2,27,24,8,'Prof. Morris Bartell DVM','8545','Quasi qui dolores voluptates asperiores ab ipsa natus at. Sit rerum consequatur repudiandae fugiat soluta rem quis. Voluptatibus magnam voluptate velit provident eum et necessitatibus rem.','526002549','3448981','0886718854513','2007-10-11','2014-07-15',75.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(75,26,3,18,25,14,'Elissa Skiles','6508','Ipsam rem magnam facilis sit. Vitae voluptate non error aut nisi non eos eum. Est quidem omnis est soluta.','953534849','7458367','1979283902846','2015-09-22','1982-08-24',106.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(76,24,54,31,22,13,'Toby Kohler','4229','Nostrum officiis et ipsam eum enim sed voluptates voluptatibus. Adipisci id corrupti numquam dolor ut beatae. Labore id at sit. Omnis architecto omnis dignissimos saepe.','377560544','7945223','1578415674967','2013-08-24','1994-04-18',912.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(77,24,55,15,22,5,'Mr. Simeon Will IV','346','Iusto perspiciatis dolore sunt et blanditiis voluptatem. Totam autem expedita eum corporis ab. Maxime saepe ea quas unde animi est.','237043702','3527061','5369221677749','1994-09-14','1979-11-12',476.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(78,23,60,11,24,1,'Serena Langosh','9962','Fuga aspernatur autem natus eum. Laborum eum ut est libero. Ex veritatis perspiciatis quam neque. Sit sit nisi omnis quis excepturi autem.','436532380','4496235','5177745504171','2005-01-29','2009-03-30',872.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(79,23,60,15,23,6,'Prof. Desmond Mueller DVM','9924','Similique eos necessitatibus eius similique in. Consequatur sunt voluptatem dolorum ea ipsam. Veniam aut et beatae voluptatibus dolores id sint. Recusandae dolores consectetur illum voluptatem commodi.','324112517','2567842','4749193936074','1977-10-11','1978-11-15',86.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(80,26,3,48,23,9,'Dr. Fredy Little II','5316','Quo impedit laboriosam aliquid maxime sed. Distinctio sed magnam reiciendis accusantium a impedit. Harum ut aut animi laborum iste repellat dolorem. Nihil neque ipsam magnam voluptates numquam.','784465438','269865','4928624345009','2000-12-06','1979-02-02',213.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(81,25,53,21,26,6,'Buddy Runolfsson','8116','Corporis aperiam dolorem at similique delectus. Sit iure id enim dolores.','23752318','8399922','4687221875974','2004-03-20','2008-12-31',794.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(82,26,59,50,25,3,'Otis Wisozk','498','Nam autem blanditiis enim et quis ut repellat. Vitae sit pariatur velit. At occaecati labore nesciunt enim sed numquam.','989051621','7167657','4481531331645','2002-01-28','2001-08-03',328.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(83,26,58,46,25,8,'Kaden Runolfsdottir IV','3727','Ea facere ipsa veritatis eum suscipit quis. Eum deleniti fuga et explicabo at id. Exercitationem accusamus velit velit autem quasi consequatur. Ea laudantium alias ut iure consequatur qui aut. Molestiae unde fuga aut sint sit qui.','186798661','7297735','2941404824060','2007-06-02','1987-11-26',988.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(84,24,54,31,24,6,'Kelton Kub','5023','Quo voluptatem veniam nostrum accusantium recusandae. Maxime eum placeat rerum excepturi eaque hic laborum. Quas libero error autem occaecati possimus quia pariatur.','564043025','4271515','9748158651965','1983-02-22','2004-01-17',897.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(85,25,53,22,23,8,'Blaise Dare','4915','Facere labore facere voluptas. Neque aut tempora voluptatem sint cupiditate exercitationem vitae natus.','902065191','8471412','8472469027607','1995-01-20','2002-04-25',590.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(86,24,54,5,23,1,'Jefferey Kunde Sr.','7533','Facere consequatur laboriosam incidunt ipsum. Est in iusto voluptatibus architecto et itaque. Voluptatem repellat error corrupti et recusandae beatae repellat.','476074062','3273262','3266859577064','2013-04-17','1994-10-24',127.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(87,24,55,40,24,12,'Dr. Ceasar Tremblay Sr.','3783','Ipsa consequatur quo rerum voluptatem culpa consequatur. Esse sed laborum quas veniam quidem. Occaecati voluptate est aperiam ut minus explicabo.','641982553','5087994','1550351224994','1984-08-16','2006-12-03',693.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(88,24,54,40,24,9,'Alessia Ratke','9401','Cupiditate beatae sunt voluptas omnis aut. Culpa aspernatur eius ipsa fugit alias odio sed. Dolores suscipit ut deserunt expedita quae cumque velit. Debitis natus consequatur voluptates dicta qui.','382358590','8612088','3428097717071','2013-05-15','1998-02-13',243.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(89,23,52,29,22,2,'Marjorie Torphy','8030','Maiores quis debitis ratione. Necessitatibus voluptas rerum explicabo et deleniti. Dolorem molestiae deleniti molestiae fuga nobis sed. Eum veritatis voluptas officiis asperiores sit mollitia.','193170185','952642','8932010288487','2003-08-07','2014-03-18',241.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(90,24,54,3,24,12,'Cooper Carroll','9272','Consequatur iste ducimus minima aperiam dicta qui distinctio. Molestias laboriosam nihil sed nemo nam. Asperiores saepe dolor maiores sunt veritatis consequuntur. Laboriosam aut error facere alias. Inventore nam adipisci enim fuga placeat.','223078893','7266685','4035949504537','1972-07-06','1976-07-15',345.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(91,23,52,38,25,14,'Retha Cole','8734','Sapiente architecto quo quo et qui enim. Sit hic debitis temporibus praesentium. Et nihil rem quod ea. Suscipit doloribus non mollitia architecto numquam perspiciatis. Fuga ut modi modi ad ut voluptatum.','834946441','1091714','0819265148286','1989-08-22','1970-02-08',939.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(92,22,2,45,23,13,'Kassandra Bashirian','5307','Ut doloremque voluptate facilis quaerat earum est et. Omnis labore nisi omnis mollitia vel. Sint voluptate repellendus culpa omnis suscipit. Sed eum ut qui.','589733568','157549','5365742171186','1997-01-17','1989-11-07',857.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(93,25,56,5,26,13,'Loy Herzog PhD','1810','Consequatur doloribus eligendi et sed et. Neque ipsum eos modi impedit et aut sit. Quia quam molestiae ab laboriosam nobis odio sit neque.','949487821','6773742','6143672095777','1988-10-28','2013-07-19',642.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(94,24,54,41,23,5,'Jamir O\'Hara','7661','Ut odit necessitatibus culpa veniam nesciunt et qui soluta. Non expedita omnis odio fugit non. Alias esse laborum dolore ullam non iste voluptatum eveniet. Dolor veniam magnam ut quo facere illo rem.','639301672','2596000','2082562957464','2011-11-08','1970-11-01',738.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(95,22,51,50,24,5,'Troy Conroy DVM','5418','Harum et aliquam eum non velit. Mollitia nihil dolor ea odit esse quae tempore necessitatibus. Ut expedita velit sed unde quo officiis.','877886122','1725512','4689647586304','1975-08-23','1988-04-24',618.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(96,24,54,38,26,1,'Ramiro Lang','4427','Sequi quis fugiat totam in quo iure. Vel reiciendis dolor neque exercitationem iure qui dolor et. Quos ipsa cupiditate velit dolor. Et officia at quos recusandae et dolor enim.','740747199','2291381','5959676159503','1995-07-02','2006-04-08',499.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(97,26,3,11,22,6,'Miss Golda Mann','5384','Perspiciatis porro et fugit a et. Alias soluta vel sit hic vitae facere mollitia. Dicta veritatis dolorem repellendus laboriosam.','408551849','3909957','1896710789996','1984-03-21','2009-09-12',252.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(98,26,57,15,24,2,'Nora Becker V','8511','Quasi repellendus voluptatem est aut non perspiciatis excepturi. Rerum sunt ea molestiae in repudiandae. Rerum et et suscipit magnam consequatur. Sit a temporibus consectetur quis.','335357923','8214149','9110722519429','1994-09-19','2001-10-27',995.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(99,25,53,21,23,3,'Clemmie Hessel','9237','Nesciunt enim ab dicta adipisci autem officiis. Eligendi optio aut rerum alias. Eos voluptatem ipsa et itaque non et quisquam est.','209460755','4465985','6194027055946','1986-08-10','1992-04-06',174.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05'),
	(100,25,53,16,22,8,'Irma Swaniawski','8764','Necessitatibus perferendis rerum ea voluptatum officia. Cumque et alias dignissimos consequuntur. Occaecati id rem consequatur vel.','171406952','9041659','3995750789107','2002-07-24','1991-09-01',819.00,NULL,NULL,NULL,NULL,NULL,'active','2015-10-05 06:02:05','2015-10-05 06:02:05');

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
	(22,'Red 8','2015-10-04 08:55:27','2015-10-04 09:22:47',-12.371454,130.869356),
	(23,'Red 6','2015-10-04 09:21:17','2015-10-04 09:25:28',-12.372702,130.869659),
	(24,'Red 5','2015-10-04 09:23:42','2015-10-04 09:24:00',-12.371321,130.870617),
	(25,'Purple 12','2015-10-04 09:26:47','2015-10-04 09:27:22',-12.371510,130.867775),
	(26,'Blue 1','2015-10-04 09:28:30','2015-10-04 09:30:11',-12.372081,130.870763);

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
	(22,'Mac book pro','13 and 15 inch mac book pro','2015-10-03 07:12:44','2015-10-03 07:12:44'),
	(23,'Furnitures','desk, bench, chair etc.','2015-10-03 07:13:19','2015-10-03 07:13:19'),
	(24,'Networking devices','routers, modems, switches, hubs','2015-10-03 07:13:55','2015-10-03 07:13:55'),
	(25,'Book shelf','book shelf in library ','2015-10-03 07:14:58','2015-10-03 07:14:58'),
	(26,'Computers','Different brands of Computers','2015-10-03 07:17:09','2015-10-03 07:17:09');

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
	(1,'School of Engineering and Information Technology','2015-09-30 18:21:23','2015-10-04 12:19:22'),
	(2,'School of Health','2015-09-30 18:21:23','2015-10-04 12:19:41'),
	(3,'School of Environment','2015-09-30 18:21:23','2015-10-04 12:24:31'),
	(4,'School of Psychological and Clinical Sciences','2015-09-30 18:21:23','2015-10-04 12:24:44'),
	(5,'School of Academic Language and Learning','2015-09-30 18:21:23','2015-10-04 12:24:54'),
	(6,'School of Business','2015-09-30 18:21:23','2015-10-04 12:25:03'),
	(7,'School of Creative Arts and Humanities','2015-09-30 18:21:23','2015-10-04 12:25:12'),
	(8,'School of Education','2015-09-30 18:21:23','2015-10-04 12:25:27'),
	(9,'School of Law','2015-09-30 18:21:23','2015-10-04 12:25:37'),
	(10,'School of Indigenous Knowledges and Public Policy','2015-09-30 18:21:23','2015-10-04 12:25:48');

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
	(1,'Isabella','Jacobs','Riley28@Runte.biz',266,'24859 Barrows Ways Suite 873','','Garrettview','VIC','region of victoria','TK','58688','','783-230-6064x7910','','2008-02-13','234-56-7655','America/Glace_Bay','','2015-09-30 18:21:23','2015-10-04 13:44:25'),
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
	(1,22,'1st flooor','/images/floors/1.jpg','2015-09-30 18:21:23','2015-10-04 12:37:35'),
	(2,22,'2nd floor','/images/floors/2.jpg','2015-09-30 18:21:23','2015-10-04 12:37:56'),
	(3,26,'1st Floor',NULL,'2015-09-30 18:21:23','2015-10-05 05:40:41'),
	(51,22,'3nd Floor','/images/floors/51.jpg','2015-10-04 09:00:33','2015-10-04 12:32:31'),
	(52,23,'First Floor','/images/floors/52.JPG','2015-10-04 12:38:53','2015-10-04 13:03:41'),
	(53,25,'1st Floor','/images/floors/53.jpg','2015-10-05 03:55:58','2015-10-05 05:47:49'),
	(54,24,'1st Floor',NULL,'2015-10-05 05:47:04','2015-10-05 05:47:04'),
	(55,24,'2nd Floor',NULL,'2015-10-05 05:47:16','2015-10-05 05:47:16'),
	(56,25,'2nd Floor',NULL,'2015-10-05 05:47:34','2015-10-05 05:47:34'),
	(57,26,'2nd Floor',NULL,'2015-10-05 05:48:07','2015-10-05 05:48:07'),
	(58,26,'3rd Floor',NULL,'2015-10-05 05:48:22','2015-10-05 05:48:22'),
	(59,26,'4th Floor',NULL,'2015-10-05 05:48:51','2015-10-05 05:48:51'),
	(60,23,'2nd Floor',NULL,'2015-10-05 05:49:20','2015-10-05 05:49:20');

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
	('kamal@skrollx.com','37a24e9ff260819896213147946c9633253f62978f427940b3e29e3fcf3f1b93','2015-09-30 16:45:40'),
	('divyathy.eaty11@gmail.com','83a813fd4bed9269ca7ba2055d024716e0306a0ba48016736de7db8c1aaf911f','2015-10-05 05:11:50'),
	('amolkattel@gmail.com','bdde6c8e9ef60d747882bae0ba03de1d328f04fa60dae8144c21aa0f2d9988d5','2015-10-05 05:12:07');

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
	(1,5),
	(1,6),
	(2,1),
	(2,4),
	(3,1),
	(4,1),
	(4,2),
	(4,5),
	(5,1),
	(5,3),
	(5,6),
	(6,1),
	(6,2),
	(6,6),
	(7,1),
	(7,5),
	(7,6),
	(8,1),
	(8,2),
	(9,1),
	(9,5),
	(9,6),
	(10,1),
	(10,5),
	(10,6);

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
	(1,1),
	(1,2),
	(1,5),
	(1,6),
	(2,3),
	(2,4),
	(2,7);

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
	(1,'admin','Administrator','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,'user','User','2015-10-01 08:34:34','2015-10-04 09:55:17'),
	(5,'Student',NULL,'2015-10-05 04:00:57','2015-10-05 04:00:57'),
	(6,'Staff',NULL,'2015-10-05 04:01:35','2015-10-05 04:01:35');

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
	(1,1,'admin','admin@admin.com','$2y$10$ynN0bPozqXwSoDF8ACVZn.MC51fzH4950J5n4O9BsGEXJUK6JD/6i',1,'U1AI4OaBcWENb5XvMPqOs9G47pcn8j6ZyYzVzRNi2XMLAawJUrfFDqeQZFzS','0000-00-00 00:00:00','2015-10-05 05:11:53'),
	(2,1,'Divyathy Banala','divyathy.eaty11@gmail.com','$2y$10$FhM93hCeT6hm/2wLU1ud2eoNDlI2GSVyZx2nh/L5h9SWnPDmLMxTq',1,'m7xH4kXwTlFKgbAOK4VBhrY5APGpLup2awmRSXGsq1EHFz5mpFd5OfrfPdWh','2015-10-04 09:39:11','2015-10-05 05:06:37'),
	(3,1,'User','user@email.com','$2y$10$rDYFm/yVCcjH/h6pUO/XbuqHUGojDQyi7gfc01F8.wqQFqsI4CFw.',1,NULL,'2015-10-04 13:48:41','2015-10-04 13:48:41'),
	(4,1,'Amol','amolkattel@gmail.com','$2y$10$7npQa91UszcJUm1.M.oAk.H.2JGTdu0gt8Ppyhruy1Vmk/7ue.wta',1,'5YG1nZRKGQ9LylrUI5Yg726QjPIv7fzBi0ZKrtvNcKKLr36RvKKXWo0XR5Ky','2015-10-05 03:58:10','2015-10-05 04:56:26'),
	(5,1,'Jagbhir','jagbirchaudhary@gmail.com','$2y$10$1lfD684XbNdoqVPCqAAKlek/NBn7dUqVatDEf5XaerZMkp7FRaDMW',1,NULL,'2015-10-05 03:59:04','2015-10-05 03:59:04'),
	(6,1,'Chen','kkjikang@gmail.com','$2y$10$RpwP8svBAg1q8gkVsJugG.TC0kHoAxmXhbrlw/ujKQSaRwGzWL05i',1,NULL,'2015-10-05 03:59:46','2015-10-05 03:59:46'),
	(7,2,'jagbir','birchaudhary@gmail.com','$2y$10$Q91lhjhxVI5q.rChCqGSr.EkutH8ga6ORFkwlN95VVbwhfpPB/QaK',1,'uLeNhIt41OgdGiywZPYbIb2IKnVNEkbfJH2i5hkNZlRcBZKcKWrpgd0TpkkM','2015-10-05 04:38:04','2015-10-05 04:39:37');

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
	(1,'Dell Computers','2015-09-30 18:21:23','2015-10-03 07:04:35'),
	(2,'HP computers','2015-09-30 18:21:23','2015-10-03 07:04:47'),
	(3,'Apple','2015-09-30 18:21:23','2015-10-03 07:04:56'),
	(4,'IBM','2015-09-30 18:21:23','2015-10-03 07:05:06'),
	(5,'Philips','2015-09-30 18:21:23','2015-10-03 07:05:32'),
	(6,'Samsung','2015-09-30 18:21:23','2015-10-03 07:05:44'),
	(7,'Sony','2015-09-30 18:21:23','2015-10-03 07:05:54'),
	(8,'Panasonic','2015-09-30 18:21:23','2015-10-03 07:06:05'),
	(9,'Cisco','2015-09-30 18:21:23','2015-10-05 05:36:29'),
	(10,'TP Link','2015-09-30 18:21:23','2015-10-05 05:36:41'),
	(12,'Toshiba','2015-09-30 18:21:23','2015-10-05 05:37:11'),
	(13,'Lenovo','2015-09-30 18:21:23','2015-10-05 05:37:23'),
	(14,'Google','2015-09-30 18:21:23','2015-10-05 05:37:56');

/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
