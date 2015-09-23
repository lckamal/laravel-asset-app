# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.19-0ubuntu0.14.04.1)
# Database: akproject
# Generation Time: 2015-09-23 11:26:58 +0000
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
  `department_id` int(10) unsigned NOT NULL,
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

INSERT INTO `assets` (`id`, `department_id`, `employee_id`, `category_id`, `vendor_id`, `name`, `asset_no`, `description`, `model`, `serial`, `barcode`, `date_acquired`, `date_disposed`, `purchase_price`, `location_lat`, `location_long`, `image`, `status`, `created_at`, `updated_at`)
VALUES
	(1,20,21,18,16,'Nella Bayer','6573','Aliquid ut vitae dolores qui maiores et id. Eum iste sed numquam consectetur excepturi quidem beatae. Repellat aut voluptatum culpa ratione. Non eius neque a recusandae aperiam nesciunt error.','in','n','0795617485516','2014-02-22','2014-11-24',378.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(2,16,16,4,17,'Mr. Cortez Paucek','2882','Quas odit assumenda et et. Nihil cum facilis iste. Illum dolor corporis enim. Inventore porro reiciendis quae quasi est.','rerum','s','8261317314156','2013-02-07','2011-06-21',579.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(3,10,46,11,11,'Adrien Pouros','9670','Saepe placeat aut voluptatum distinctio. Est odit voluptate non vel eaque expedita at.','aperiam','e','1399690039810','1997-01-07','1983-04-22',762.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(4,1,32,5,4,'Prof. Werner Wiza','9881','Maxime nam harum corporis ut necessitatibus. Iure et iste molestiae voluptatem. Et qui inventore dolorum et culpa animi quia. Totam consequuntur impedit ea ut ut cumque.','rerum','m','6380895154335','1979-07-17','1996-11-09',302.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(5,4,46,7,5,'Armand Funk','8919','Sunt ut laborum non quos. Blanditiis et aut sit dolores eos.','occaecati','i','7519914462314','1977-07-22','1978-08-06',499.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(6,5,22,8,10,'Ebony Monahan V','6854','Vitae non iusto ab iure architecto quo sapiente. Voluptas inventore placeat nulla culpa et. Nobis harum ab amet.','neque','l','9672389696894','1970-09-04','1981-07-05',888.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(7,1,38,9,20,'Dejah Lockman','8825','Itaque est similique eum ea a provident itaque voluptas. Ut ut rerum repellat quae ipsa commodi.','laboriosam','p','2439669456497','1972-02-14','2002-08-24',547.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(8,19,25,18,16,'Nella Kilback','7993','Occaecati nulla sint qui cumque et sunt atque porro. Est nulla deleniti sit laboriosam. Tempore ab consectetur veniam consequatur sapiente hic molestiae illo.','repellat','q','8844884758952','1981-07-21','1975-05-15',684.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(9,11,1,13,20,'Kody Kautzer III','8709','Excepturi sunt quaerat fugit in impedit architecto. Et qui molestias eius iure. Porro voluptatem aut sit et ut velit quasi. Sint omnis rem dolorum assumenda ducimus cumque ex.','dolorem','s','6707005914274','1988-11-30','1986-12-01',977.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(10,3,37,14,5,'Mr. Oswald Funk','5196','Ullam totam harum commodi hic aliquid ut est. Voluptatum et omnis praesentium id delectus nesciunt doloribus. Veniam repellendus in et nihil voluptates. Quis beatae repellat recusandae nostrum eum dolorem aut.','velit','t','4981281993013','2012-08-12','1973-05-11',854.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(11,13,37,13,1,'Janice Mraz','9126','Nesciunt amet aut tenetur qui autem voluptatum quam. Ut deleniti excepturi rerum. Itaque perspiciatis aliquid dolorem ab aut sint. Qui cupiditate et consequatur fuga odio.','molestiae','p','5881676076903','2000-05-31','1976-10-30',873.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(12,7,3,11,20,'Austen Zboncak','7674','Minima corporis sed ullam et ipsam culpa numquam. Quia voluptatem enim pariatur illum et. Recusandae sapiente nemo ipsum delectus in temporibus debitis amet. Est veritatis aut omnis placeat voluptas itaque.','aut','o','7960347500973','1992-03-12','2012-04-07',377.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(13,4,1,20,10,'Kyra Boehm','3300','Nemo sapiente debitis et amet voluptatem quia voluptas. Adipisci qui repellendus et voluptates. Tenetur enim quod autem cupiditate.','eum','u','2383554441801','1997-01-18','1991-12-01',989.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(14,5,4,20,7,'Mr. Mitchel Fay','7771','Rerum dolores enim doloremque unde officia ut. Similique blanditiis natus corporis. Consequatur facere aut quo velit assumenda qui. Facere velit modi voluptate excepturi aliquid nam ut accusamus.','fuga','s','7840328943800','2003-07-22','1980-07-09',912.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(15,16,6,10,2,'Marilyne Ratke','9319','Voluptates rerum eius voluptatibus et. Aperiam enim occaecati perferendis provident qui maxime. Quis nobis voluptatibus amet nulla error et. Similique sit sed perferendis dolorem asperiores.','voluptate','c','3205525231091','1970-01-27','2009-05-17',54.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(16,9,37,18,18,'Dr. Joshuah Parker','7597','Consequuntur autem molestias quia vel. Voluptatem sed aliquid quas tempora. Mollitia suscipit qui ut. Aut vero dignissimos quia laborum quia.','error','n','2914928518586','1970-11-16','1977-01-10',593.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(17,18,47,3,2,'Prof. Mariela Crona','7072','Iure quo laborum debitis adipisci est nesciunt. Molestias quae qui nihil deserunt aut quaerat rerum voluptatem. Reprehenderit qui ut rerum earum modi quis.','quis','h','3513516403489','2000-06-15','1970-05-25',600.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(18,14,10,12,14,'Mr. Jeff Reichert DVM','6314','Quo sint ut quod ipsa quos quod. Et sint sed rerum.','voluptatibus','h','5914432742825','1994-04-25','2009-10-31',767.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(19,5,30,16,14,'Prince Willms DVM','276','Adipisci cumque quas aut omnis nulla dolorem. Iusto repellendus voluptate quia ipsa. Commodi earum quos neque distinctio reprehenderit. Nam voluptates vitae earum non sit dolorum optio qui.','voluptas','o','9740845493599','1993-04-14','1993-07-21',272.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(20,2,9,18,20,'Emie Kris','3399','Et quidem quas optio. Architecto quia blanditiis delectus molestiae fugiat rerum dolor. Sunt iure voluptatem autem et praesentium sint a. Quia architecto illum porro nam exercitationem.','alias','a','7979613070812','1993-08-12','1971-06-26',107.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(21,14,21,19,11,'Hester Stehr','7672','Eos et laboriosam rerum modi. Praesentium amet molestias officiis ullam eveniet consectetur unde. Impedit hic vel aut voluptas.','commodi','u','2231515193781','1994-07-06','2004-12-06',214.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(22,4,44,14,10,'Mikayla Rodriguez','7198','Voluptas exercitationem sint accusamus amet rem fugiat. Nesciunt quis rerum tenetur a. Minus consequatur nisi et ea esse. Quidem rerum eos voluptas alias.','explicabo','d','2451547264710','2001-09-15','1978-05-09',655.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(23,7,35,16,17,'Verner O\'Keefe','3727','Ut quis et qui ullam. Minus quo incidunt deleniti. Magnam hic et quis aut esse quia. Modi assumenda sunt dolores et amet sunt quis.','nesciunt','i','1328593107678','1994-01-15','2000-02-02',957.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(24,12,21,12,20,'Delilah Leuschke Jr.','1059','Qui ut quae voluptatem animi unde commodi. Et et ut a et. Ut veniam repellendus consequatur eius et eaque.','consectetur','k','2013381851619','1996-11-16','1995-08-03',818.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(25,4,14,15,4,'Lilla Renner','5333','Et ea maiores accusamus hic minus enim magni. Illo et hic architecto. Reiciendis sunt velit rerum architecto.','quia','b','9077956298936','1984-07-02','1977-04-13',415.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(26,19,10,6,1,'Miss Claudia Reinger','2228','Alias exercitationem ipsa pariatur omnis. Dolor molestiae et laudantium laboriosam. Quas non optio maxime sit iure. Assumenda mollitia non perspiciatis velit facilis.','vel','q','9371425457429','1971-01-08','1988-11-28',470.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(27,1,48,19,9,'Janessa Brown IV','992','Ut repellendus cum dolor sed sint vel. Culpa tempore non aut amet. Repudiandae dolorem sint delectus non consequatur est illum.','hic','m','3300005423451','1975-10-07','1992-10-22',878.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(28,2,21,15,10,'Aditya Beatty','646','Id iste labore id voluptate distinctio voluptas odio et. Voluptates veritatis alias vitae rerum. Aut provident sunt quam dolores quia ex.','dolor','e','4738964297162','2003-02-03','1974-10-03',625.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(29,19,28,4,12,'Candelario Swaniawski PhD','7786','Cupiditate maiores sed animi sed aut a. Veniam deserunt est cumque dolorem molestiae quis. Unde est sapiente a incidunt. Excepturi rerum sed molestiae architecto excepturi et ea.','nesciunt','f','8455811230771','1994-06-11','2010-04-06',223.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(30,16,38,17,13,'Tianna Pfeffer','4588','Et voluptatem occaecati unde. Et omnis animi et voluptatem illum possimus. Optio iure modi aut est. Atque vitae non ea sunt repellat dolorem optio. Nobis consequatur et neque maiores assumenda adipisci.','pariatur','f','2081542457550','2004-01-01','2008-11-10',424.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(31,7,38,18,2,'Caitlyn Lubowitz','6142','Voluptatem distinctio laborum minus omnis aperiam. Aut ullam numquam voluptatem qui.','nesciunt','m','2140755586867','1989-08-05','1998-09-11',30.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(32,15,42,6,5,'Elouise Simonis Sr.','5266','Ut aut architecto voluptatem. Esse rerum et quas quos animi et voluptatem. Delectus accusantium error nihil ut quas.','accusantium','i','5467730449953','2009-09-25','1973-10-26',916.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(33,1,38,3,4,'Maximillia Toy','1874','Sed optio non ipsa id dolores ullam. Modi nam omnis et dolores dolor nisi est. Voluptatem dolorum at aut veritatis vero hic dolor. In tempore veniam nobis mollitia nisi vel. Quasi officia quia itaque ab sapiente.','occaecati','o','7655365797701','2000-01-17','1974-05-06',701.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(34,1,22,10,20,'Boris Rodriguez','1607','Et dolores a rerum nobis eos. Fuga tempore et quam neque voluptatem omnis. Dolores consequatur reiciendis dolore dolores voluptatum eum et.','deleniti','v','5608359562856','1998-11-13','2006-08-18',971.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(35,17,29,13,8,'Mr. Adolph Stanton','2993','Necessitatibus eius odio deserunt rerum. Sint labore et modi pariatur.','sequi','h','2971444141469','1974-07-03','1982-09-23',827.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(36,5,20,1,12,'Kelli Jerde','347','Sit nesciunt laborum ullam repellendus voluptates et omnis quibusdam. Eius repellat nemo beatae. Provident eaque libero molestiae et eligendi aut sit.','est','t','8842212854024','1994-04-09','1972-10-07',910.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(37,16,28,7,6,'Demarcus Mante','9068','Quia mollitia dignissimos ut dicta optio. Iure aut omnis quia qui qui pariatur voluptatem. Repellendus et nostrum odio aperiam consectetur facere.','corporis','v','9857740633590','1979-01-08','2000-08-08',719.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(38,11,14,6,12,'Dr. Manuela Runolfsson Sr.','6692','Non iure itaque omnis. Qui corporis quaerat est natus doloribus.','provident','n','5492066070298','1981-08-02','1990-05-16',207.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(39,10,41,9,11,'Tania Huel','8083','Cumque ex vitae in quia ratione. Dolor voluptates et asperiores doloremque sed eveniet adipisci. Non ut reiciendis eius id nam quam.','ut','y','5922163461328','1994-10-17','1997-04-28',618.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(40,20,1,2,14,'Fern Wisozk','3565','Sint autem aut reprehenderit aut illo veniam adipisci architecto. Veniam eaque sunt nam. Soluta voluptatem et voluptas natus.','et','p','9334659730409','1998-10-17','1991-08-09',308.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(41,19,19,9,16,'Tiana West','7141','Facere voluptatem id aut voluptatem iure aut. Numquam rerum totam quas mollitia alias. Voluptatem est quidem exercitationem sequi magni placeat tempora. Dolorem autem iure qui ipsum.','ut','d','5280502210779','2008-07-19','2008-08-24',916.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(42,18,44,15,11,'Burnice Cruickshank','7069','Nemo sunt est sit soluta. Sunt mollitia sed quis id voluptas est. At sed aut explicabo magni.','eligendi','l','0353158685460','2004-02-17','2007-07-30',650.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(43,4,34,7,18,'Kyler Yundt','6103','Eum nisi sit doloribus sit explicabo. Placeat odio assumenda minus pariatur dolorem alias. Dolorum enim ipsam autem quia et ex.','corporis','s','1719397535123','1973-09-02','1993-09-07',237.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(44,7,10,17,9,'Roxanne Rogahn','6173','Sint quia omnis autem qui consequatur. Debitis quidem corrupti aut aut animi quis impedit. Dicta fuga doloribus rerum reprehenderit velit sit ut.','aliquam','j','3524550394213','1984-03-20','1980-11-19',703.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(45,13,29,12,3,'Mckenzie Heathcote','2095','Voluptates eum dolores quaerat provident. Omnis nesciunt ut qui labore dolorem dolorum. Accusantium commodi ut eius sed. Doloribus vel eum quod odit.','optio','c','1586611352404','1980-09-17','1973-04-08',998.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(46,7,50,12,17,'Dr. Darryl Howell I','2252','Enim hic ea in nam est. Qui architecto autem voluptas inventore corporis. Ut voluptatem fugit ea perspiciatis officiis sint nam enim. Maiores libero velit debitis accusantium qui ut maiores veniam.','quia','v','1464650473758','1970-01-29','1999-01-21',176.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(47,4,41,12,18,'Rasheed Klein I','6470','Sunt et vel corrupti vel ipsam quam et. Labore corporis pariatur quia aut fuga possimus autem. Neque qui error ut qui quo et. Consectetur excepturi quis consequuntur et.','rerum','m','0794353671276','1983-05-12','2007-09-11',706.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(48,13,4,2,1,'Stephon Greenholt','4232','Dolores neque id labore quod animi occaecati. Soluta qui porro atque aut rerum. Explicabo harum voluptate minima consequatur repellendus cum minima. Sint facere dolorem dolores possimus.','asperiores','e','1257373994941','1988-05-14','2009-02-05',818.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(49,1,16,16,13,'Prof. Rasheed Legros Sr.','6102','Illo aut et animi id error quis praesentium veniam. Et hic recusandae error saepe dignissimos facilis ut. Molestias officia odio et consectetur qui accusantium dolorem. Occaecati optio quis impedit est assumenda placeat dolorum.','temporibus','b','2590364447026','2008-12-01','1994-06-08',766.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(50,8,26,18,1,'Mrs. Bridgette Quitzon Sr.','5297','Architecto eligendi rerum quae quos ad nemo non. Qui in eos similique dignissimos debitis dolores. Autem ex velit odit ipsam. Iusto amet consequatur dolor sint similique voluptatibus. Est eveniet natus voluptas voluptatem quia fuga non.','ut','e','8147083355350','1995-08-06','2003-10-03',900.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(51,4,14,1,5,'Isadore Upton','4311','Fugiat ratione necessitatibus et. Et veniam et nemo aspernatur. Aut sit nostrum quaerat beatae. Qui fugit optio ut assumenda pariatur accusamus.','dolorem','v','6456719013857','2006-10-04','1984-05-14',420.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(52,7,32,7,7,'Jermaine Kuhn II','1984','Nobis facere ipsam et magni voluptas. Eaque quia nam iusto iure eius. Rerum ipsa consectetur autem aut necessitatibus. Ipsum aut soluta laudantium nesciunt. Maxime ut ut doloremque similique veritatis voluptas omnis.','est','w','0473256717228','1986-11-12','1981-02-26',917.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(53,6,1,2,13,'Rigoberto Schiller','2885','Quam dolore sed voluptatem. Ex eum fuga enim est aliquid. Eos facilis ea temporibus saepe.','dignissimos','c','1730540098777','1995-03-01','2000-02-24',857.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(54,6,14,11,18,'Amir Senger IV','2986','Sint neque aut provident delectus eligendi deserunt assumenda ea. Aut ut repellat odio culpa. Tempore ipsam ipsa et nesciunt beatae officiis.','ut','n','5622871994759','1977-12-04','1990-10-22',909.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(55,5,26,11,9,'Dr. Lucio Kerluke IV','4167','Et sapiente nobis voluptatum delectus voluptate asperiores. Velit sed non quae rerum sed deserunt ea cum. Excepturi velit quis voluptatem fugit illo qui. Maxime non consequuntur culpa id debitis dolor molestiae. Adipisci perspiciatis nisi voluptatem fugiat eos ut porro.','non','z','7269538835284','2003-06-22','2005-04-04',368.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(56,15,3,8,5,'Clarabelle Kessler IV','4045','Amet architecto veritatis debitis aspernatur. Sed rerum qui et excepturi ipsam rerum et. Quidem ratione sequi et quos. Mollitia non omnis et.','voluptas','n','7551626031037','1971-03-28','2015-03-27',926.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(57,15,31,17,12,'Elyse Aufderhar Sr.','4242','Sed earum officiis id provident. Asperiores et accusamus sed rem id libero perferendis. Voluptas itaque temporibus repellat. Nostrum voluptatem dolor voluptatem possimus.','sint','n','7125059787481','1982-11-25','1997-01-13',197.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(58,18,37,14,11,'Prof. Stanford Swaniawski','3093','Molestiae enim aperiam et odio labore beatae. Cupiditate ullam autem voluptatem. Error quam saepe repudiandae autem fuga facere nam sed.','nobis','r','4296084948581','1980-09-30','1970-04-13',69.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(59,12,27,4,9,'Prof. Arnoldo Bayer V','6992','Quis harum eaque quisquam quod. Eaque aut voluptas non iusto animi perferendis possimus ullam. Autem ut laborum consectetur ea. Recusandae quia aut repellat natus.','nostrum','l','6784095909526','1981-08-16','1995-07-09',579.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(60,13,21,7,15,'Prof. Madie Emard DVM','1221','Voluptates nulla est laborum voluptatem. Et eaque ex laudantium ad dolorem ipsam aperiam rerum. Tenetur ducimus corrupti alias error eligendi nostrum id autem. Repudiandae fugit possimus fugit corrupti.','sequi','i','5970327684175','2005-10-14','2008-02-27',292.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(61,20,38,10,15,'Prof. Ryder Bergnaum PhD','5067','Sit fuga quia pariatur iusto et id. Ea cupiditate impedit voluptatem ut occaecati sequi. Officiis est dolorem quos neque nisi corporis. Consequatur voluptatem dolore impedit.','repellat','m','6119870205911','1978-03-18','2004-05-09',890.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(62,12,21,16,13,'Prof. Elias Sipes DDS','2859','Adipisci nostrum temporibus et accusamus quia commodi. Voluptatem rerum id ut totam ut. Excepturi ad non ipsa eius saepe. Error perferendis accusantium voluptatem praesentium saepe harum assumenda. Eaque ut animi accusamus.','asperiores','k','4028641071445','2000-12-07','1992-06-14',641.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(63,1,19,9,1,'Marta Brekke','9455','Et et maiores illo est. Mollitia voluptatem omnis non voluptates sapiente. Aut quaerat quod ut qui sunt autem doloribus tempora.','nostrum','v','0112966056868','1973-07-30','2003-08-18',800.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(64,9,34,20,19,'Onie Greenfelder','4621','Quod corporis commodi molestiae dolorum repudiandae labore inventore. Magnam eius et et quisquam saepe et. Explicabo hic et nemo vero architecto iure velit.','adipisci','t','2497394883278','2000-04-09','2000-05-26',370.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(65,20,50,18,18,'Dr. Elmer Strosin PhD','4027','Tenetur illo illo illo saepe sit illo architecto. Animi quae corporis mollitia quisquam ut quo voluptatum ducimus. Dignissimos consequuntur similique nam porro vel.','dolor','i','5531625151624','1975-07-10','2005-06-23',930.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(66,12,34,7,4,'Sandrine Dicki I','8884','Cumque eum at maiores quod eos. Est quaerat ipsam et qui vel ad aperiam debitis. Culpa esse ea commodi dolorem soluta eum. Mollitia et pariatur doloremque quia.','molestias','u','3451400955105','1996-03-02','2003-09-03',676.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(67,20,43,3,7,'Silas Towne','5860','Placeat et molestias est ut porro modi. Consequuntur quia earum quo illo nihil voluptas.','adipisci','i','6400978862183','2002-05-24','1992-12-15',380.00,NULL,NULL,NULL,'active','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(68,19,6,15,9,'Miss Tamia Herzog','7229','Est voluptatibus consectetur non ut. Facere excepturi reprehenderit numquam eum aut culpa labore. Eum error iure est.','consequuntur','u','0542516143166','2013-07-20','2012-09-30',213.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(69,2,25,20,19,'Blaze Lind','5720','Aut beatae est id. Odit odit adipisci amet quo dolorem nemo ut. Voluptate facere neque quo ut libero aut. Quos amet perspiciatis error.','sint','w','7479963155479','1973-05-24','1982-07-07',165.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(70,19,27,17,9,'Lenore Bogisich','8565','Deserunt soluta architecto asperiores modi doloribus. Ipsa dolores enim voluptas blanditiis sunt ut ea. Ut laboriosam velit quaerat necessitatibus.','suscipit','g','0469556709643','1981-01-16','1999-09-09',223.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(71,4,46,7,12,'Granville Jacobson','6346','Aliquam corporis illum pariatur consectetur. Voluptates magnam temporibus iusto ab saepe. Cupiditate saepe autem molestiae repudiandae enim tempora.','est','k','2302061359690','1990-11-25','2009-07-03',32.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(72,8,20,12,11,'Margot Hodkiewicz','17','Saepe qui nemo sed non ea. Suscipit a qui voluptatem sed facilis. Magnam odio asperiores vel.','minus','o','3623518193858','2014-12-01','1977-11-21',494.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(73,6,23,3,20,'Destiny Mante','7735','Cupiditate occaecati beatae tempore sequi. Enim et iste perferendis possimus hic explicabo rerum. Rerum alias architecto nam laudantium minus.','quas','m','8870679999798','1983-08-11','1992-01-15',237.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(74,10,45,15,18,'Justine Reinger V','9266','Non ea architecto rerum quo maxime. Aliquam quos est non adipisci. Nemo dignissimos porro aut at quos quasi modi.','eum','a','4975729157488','2014-03-10','2015-04-28',848.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(75,10,24,2,15,'Mrs. Eda Lubowitz V','2073','Minima et facere debitis dicta cumque eveniet sunt. Illum quia provident voluptatem qui repellendus. Laudantium vel aut deserunt est dolorum perferendis et. Consequatur est beatae hic.','et','m','2531539231767','2000-07-18','1979-06-01',323.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(76,3,38,13,10,'Ernestina Gorczany','3965','Impedit laboriosam ut qui dolores ut iure asperiores. Facere labore deserunt laudantium mollitia vel velit.','non','a','6985169690252','1980-06-15','1970-10-03',508.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(77,7,38,20,12,'Immanuel Schultz','4530','Et inventore adipisci voluptates dolorum adipisci. Repellendus sit quaerat molestiae velit in sed qui. Illum sint sunt nihil sit quo autem perferendis.','omnis','b','2156236312368','1978-09-03','1989-10-20',741.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(78,17,48,16,11,'Garland Yost V','60','Omnis reiciendis dolor voluptatem sit delectus a deserunt. Rerum quo ut laudantium.','ut','z','4001593776576','1994-08-17','1999-08-07',584.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(79,4,17,18,2,'Vladimir Hills','1421','Et laboriosam nesciunt quo vel. Esse quae voluptatem laborum occaecati ab. Consequatur nulla assumenda hic et aut.','molestiae','r','3610635077055','1997-03-13','1975-10-16',898.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(80,9,24,17,17,'Prof. Arvilla Wyman','6353','Iusto aut quo at nostrum corporis consequatur. Qui excepturi iure et numquam quod sed. Ducimus labore dignissimos autem inventore facere. Dignissimos sapiente eum mollitia animi.','doloremque','e','8590766755044','1993-11-06','1971-12-06',577.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(81,17,5,12,10,'Garth Hayes','6623','Saepe veniam ullam omnis recusandae ipsa et. Omnis a possimus quo in nemo consequatur expedita. Quisquam nulla distinctio repudiandae sunt reprehenderit vero aliquam dignissimos. Accusamus quis autem consequuntur soluta.','illum','g','9851271625482','2006-12-10','1991-12-16',974.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(82,4,18,6,15,'Corbin Grady','1230','Quia omnis est et saepe similique reiciendis. Ipsa sit similique esse ut quidem. Qui enim ipsum repellat dicta. Qui impedit tenetur cupiditate tenetur id aut voluptas.','fugit','y','0920311112158','2013-04-20','1998-06-12',519.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(83,5,4,16,3,'Esther Nicolas','7813','Nihil facere debitis ullam nam eos quas mollitia earum. Laborum atque voluptates a rem quaerat. Provident necessitatibus temporibus alias itaque aliquid aperiam. Vel et alias vel.','aut','q','4342529768501','1979-10-27','2013-02-08',536.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(84,15,25,19,16,'Deonte Erdman','1154','Aut aut voluptatem quia nobis culpa iusto. Fugit excepturi sunt cumque.','aperiam','i','5362932763626','1975-01-05','1973-09-20',91.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(85,14,17,20,1,'Else Lockman','8158','Molestiae porro ut consequatur. Distinctio doloribus in aliquam consequatur voluptatem.','porro','j','3262460899472','1989-05-17','2014-01-04',58.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(86,9,40,19,11,'Veronica Fisher','2582','Optio nemo dolorum eos amet ut quo quia. Reiciendis nesciunt maiores impedit rem odit consequuntur cupiditate. Rem similique et dolores vel at.','cupiditate','p','8160536181498','1991-05-10','1991-09-24',710.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(87,10,5,9,5,'Favian Fadel','4818','Vero recusandae id est dolorem assumenda. Omnis consectetur rerum aliquid et delectus eveniet deserunt. Sed corporis deserunt illum cupiditate dolorum ipsa fugiat. Sed officia temporibus velit fugit rerum harum. Quis aliquid cumque fuga ut.','qui','b','8506230193410','2004-05-23','2003-06-19',743.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(88,20,28,2,4,'Stevie Wolf','6730','Laborum quis qui animi natus aut dolorum ut. Occaecati ipsa aut aut corrupti voluptatum. Ullam ratione rem culpa possimus. Saepe ducimus tenetur velit ut.','deserunt','p','1943840039092','2009-07-17','1983-06-30',598.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(89,6,34,18,2,'Ressie Labadie','1988','Expedita consequatur esse esse eius et sapiente. Velit eius suscipit molestias et. Dignissimos ad provident voluptas nihil hic.','eius','u','4778405968794','2013-11-01','1973-09-20',395.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(90,2,31,20,10,'Dr. Janick Legros MD','2130','Quaerat vel commodi sit qui molestiae. Possimus ullam unde rem. Est omnis cumque ab nam quia.','unde','v','0547324716908','1997-12-11','1989-02-25',521.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(91,20,17,11,11,'Prof. Arne Glover II','8394','Consequatur natus ex et adipisci sed. Iusto ad dolor delectus voluptatibus saepe id quo eos. Quo fuga praesentium voluptatibus enim dolorem autem expedita.','veritatis','w','7659487522975','1981-07-08','1980-10-11',466.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(92,8,49,8,7,'Arianna Schaden','5418','Velit quisquam et ut. Ut fugiat voluptas quia enim eos perferendis soluta praesentium. Maxime assumenda et consectetur eum doloremque quaerat.','distinctio','u','2773106230777','2000-09-13','2000-08-23',124.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(93,19,23,15,10,'Brant Nikolaus','72','Ut unde dignissimos est saepe fugit sit rem. Id dolor est pariatur reprehenderit similique ut. Dolor et ut ut ut labore. Dolorum veniam consequatur quasi rerum.','possimus','n','8761407141339','2009-07-13','2005-09-07',7.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(94,16,1,6,6,'Prof. Percival Prohaska','8306','Et dolores nihil consequatur id rerum sit voluptas. Aliquid sapiente quo ut qui. Et consequuntur blanditiis omnis. Voluptatem ut ipsa repudiandae.','dignissimos','z','3966533550399','1988-07-28','1978-06-23',613.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(95,16,38,1,19,'Dr. Evans Aufderhar','9776','Inventore dignissimos id recusandae et eos eius nisi. Illum totam illum earum voluptatem. Quia illo ullam reiciendis. Molestiae voluptate voluptatem aut.','ea','b','4074247020776','1974-08-06','2009-06-02',162.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(96,20,33,8,14,'Humberto Emmerich DDS','7922','Repellat dicta beatae eos occaecati consectetur. Sed autem et ullam ducimus sapiente corporis. Tempore hic et rerum est omnis magni sequi.','doloremque','l','5725551914082','2010-09-21','1972-04-09',719.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(97,18,2,4,13,'Leanna Kling','4245','Dolores ut dolorem ducimus fuga placeat. Quis autem in nobis quidem eos dolorum qui.','quidem','d','7590117630618','1987-12-22','1982-04-07',791.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(98,5,12,4,14,'Miss Abbigail Jacobson','4486','Et fugit praesentium omnis illum pariatur sit. Necessitatibus dolorem qui vero explicabo velit voluptas possimus reprehenderit. Provident et eum sequi et. Molestias impedit quasi aliquid in labore.','nam','x','1041271033723','1974-02-07','1975-03-14',201.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(99,3,7,20,4,'Rosie Becker MD','7206','Autem similique ut optio mollitia nobis. Qui accusamus voluptatem ipsum sit. Non reprehenderit in sit pariatur voluptas et dolores. Quia veniam voluptas praesentium accusamus quis.','dolor','g','4659532976077','1980-10-09','1986-08-14',142.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07'),
	(100,12,13,16,10,'Prof. Mollie Bogan','3455','Eius quaerat voluptatibus omnis nesciunt et. Harum est dolorem rem ut maxime reprehenderit expedita. Qui ex eveniet qui est non et tempora. Aut praesentium blanditiis dolore porro dolores harum ut.','officiis','g','1380636837720','1990-11-21','2003-09-30',37.00,NULL,NULL,NULL,'active','2015-09-23 10:19:07','2015-09-23 10:19:07');

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
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
	(1,'id','Numquam sunt dolore aliquam porro perspiciatis aspernatur ratione. Quod aut id aspernatur molestiae natus et a error. Temporibus et earum sapiente ut sed.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(2,'sint','Maxime voluptatum mollitia ut. Quidem est sunt rem laborum. Asperiores sunt accusamus et quia nemo.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(3,'et','Accusamus impedit molestias rerum accusamus architecto natus. Corrupti numquam consequatur quia quod id aspernatur. In eos ad doloremque quam et qui velit vel. Suscipit nobis ab sed natus.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(4,'at','Qui sit exercitationem voluptatibus sunt. Eos aut error laboriosam voluptatum qui necessitatibus. Tenetur repellendus aliquam cupiditate corporis ea aspernatur qui.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(5,'accusantium','Reprehenderit est magnam recusandae. Praesentium pariatur veniam et ut voluptatum eveniet qui natus. Et ut odio beatae eveniet omnis. Est in sed sit ab quisquam debitis ullam.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(6,'qui','Dolorem labore quod sunt ea dolores quisquam maxime. Incidunt itaque mollitia odio id expedita deserunt temporibus.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(7,'consectetur','Corporis qui molestias explicabo totam ut est. Nam quia nihil quas nihil et ipsa ea fugit. Perferendis recusandae in a natus similique ut quaerat.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(8,'delectus','Nemo aliquid repellendus voluptas. Consequatur sunt hic sequi qui sit esse unde nisi. Laboriosam doloribus tenetur voluptas perspiciatis.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(9,'debitis','Voluptates eum repudiandae amet nisi. Possimus temporibus voluptates et tempore. Saepe sapiente a dolor placeat vero veritatis optio. Ducimus repudiandae omnis quis.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(10,'sed','Et labore asperiores omnis id quia ea. Rerum rem vitae praesentium dolorum itaque odio neque voluptas.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(11,'praesentium','Minus dolores libero repudiandae cumque exercitationem. Deserunt sed tempora id quasi dolores. Perspiciatis voluptate aspernatur cum dolorem nihil officiis.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(12,'quo','Nulla ducimus voluptates voluptatem et vero enim. Fuga accusantium illum incidunt earum. Ea quis est tempore quia aut perspiciatis. Dolore illo et quasi quia.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(13,'ut','Tempora sit enim tempore sed. Aperiam explicabo et recusandae corporis aliquam explicabo corporis assumenda. Quisquam aut iure nostrum esse et. Ad provident quasi aperiam qui aut.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(14,'minus','Illo nisi laboriosam id. Odit ad voluptatum incidunt et magni assumenda. Qui provident minima sequi deleniti.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(15,'eos','Quos fugiat quia accusamus minus. Vero ea reiciendis beatae quo. Asperiores provident perferendis fuga deleniti blanditiis.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(16,'eum','Consequatur quia est asperiores accusamus nobis dolore voluptas. Velit ratione architecto temporibus quidem sint. Veritatis qui magni fuga.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(17,'beatae','Corrupti rerum sapiente quis et nostrum quia ipsa. Quia totam eos laudantium. Nesciunt minima aut necessitatibus qui laudantium dolor quia. Suscipit fugit enim fugiat molestiae ipsum.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(18,'in','Voluptatum sunt est eligendi quis. Dicta nisi ab praesentium qui est delectus. Non quo a quia quas recusandae molestiae et.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(19,'voluptas','Minima iusto quasi et et ut. Labore laborum dolorem nesciunt voluptatem itaque ad. Ab nam et corporis aut explicabo molestiae ipsa.','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(20,'qui','Quo et aut aliquam nemo magni dignissimos. Inventore et et facere ea deserunt. Omnis et ea perspiciatis et adipisci.','2015-09-23 10:19:06','2015-09-23 10:19:06');

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
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`, `latitude`, `longitude`)
VALUES
	(1,'West LLC','2015-09-23 10:19:06','2015-09-23 10:19:06',-86.264911,-30.027113),
	(2,'Wisozk and Sons','2015-09-23 10:19:06','2015-09-23 10:19:06',32.649983,-81.833410),
	(3,'Legros Ltd','2015-09-23 10:19:06','2015-09-23 10:19:06',-64.189755,114.582472),
	(4,'Wuckert-Cassin','2015-09-23 10:19:06','2015-09-23 10:19:06',83.517716,-12.423816),
	(5,'Brekke-Crona','2015-09-23 10:19:06','2015-09-23 10:19:06',24.514435,23.868556),
	(6,'Hansen-Jast','2015-09-23 10:19:06','2015-09-23 10:19:06',-77.072713,-152.005443),
	(7,'Rosenbaum, Osinski and Greenfelder','2015-09-23 10:19:06','2015-09-23 10:19:06',-60.129435,6.325096),
	(8,'Fritsch PLC','2015-09-23 10:19:06','2015-09-23 10:19:06',3.986641,34.057663),
	(9,'Turner, Homenick and Kilback','2015-09-23 10:19:06','2015-09-23 10:19:06',-14.912633,-25.445819),
	(10,'Nader, Harvey and Gleason','2015-09-23 10:19:06','2015-09-23 10:19:06',-82.415439,12.926206),
	(11,'Smith Inc','2015-09-23 10:19:06','2015-09-23 10:19:06',-23.408162,-48.152742),
	(12,'Rodriguez Group','2015-09-23 10:19:06','2015-09-23 10:19:06',73.615676,-72.390942),
	(13,'Reinger Group','2015-09-23 10:19:06','2015-09-23 10:19:06',-46.825121,-63.223106),
	(14,'Fadel-Cartwright','2015-09-23 10:19:06','2015-09-23 10:19:06',-26.120446,-31.049953),
	(15,'Schuster-Haley','2015-09-23 10:19:06','2015-09-23 10:19:06',36.984818,-73.627680),
	(16,'Mraz, Macejkovic and Witting','2015-09-23 10:19:06','2015-09-23 10:19:06',-13.210007,-38.168838),
	(17,'Skiles, Runolfsdottir and Fay','2015-09-23 10:19:06','2015-09-23 10:19:06',70.675067,-57.976612),
	(18,'Jerde-Farrell','2015-09-23 10:19:06','2015-09-23 10:19:06',38.320089,3.128068),
	(19,'Hodkiewicz, Buckridge and Emmerich','2015-09-23 10:19:06','2015-09-23 10:19:06',-60.931356,-95.958771),
	(20,'Homenick PLC','2015-09-23 10:19:06','2015-09-23 10:19:06',10.698488,-139.766115);

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
	(1,'Abdullah','Stamm','Arnulfo.Schuster@Little.com',579,'8819 Gabe Wall',NULL,'West Monserratbury','Minnesota',NULL,'LV','80293',NULL,'(505)512-2423x842','','1940-05-27',NULL,'America/Santiago',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(2,'Emie','Greenholt','Damion52@yahoo.com',314,'46503 Reichel Forge Apt. 641',NULL,'Henryhaven','Tennessee',NULL,'MV','46530',NULL,'578-564-8825','','1964-02-13',NULL,'Africa/Harare',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(3,'Gerard','Dietrich','cAufderhar@hotmail.com',822,'956 Wiza Spring',NULL,'Farrellton','Kentucky',NULL,'TZ','00847-7678',NULL,'1-210-256-6771x564','','1954-05-27',NULL,'Pacific/Fakaofo',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(4,'Cornell','Fritsch','Darrion.Reynolds@Erdman.com',132,'89031 Little Lane Suite 315',NULL,'Shannymouth','Washington',NULL,'ET','07551-5625',NULL,'044.309.7463','','1969-12-19',NULL,'America/Nipigon',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(5,'Amber','Heidenreich','yJacobi@yahoo.com',602,'60887 Schowalter Ville',NULL,'East Generalborough','Iowa',NULL,'BY','46950',NULL,'1-868-658-2390x91853','','1916-05-25',NULL,'Europe/Busingen',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(6,'Ivah','Feest','kWillms@Braun.com',62,'321 Ruecker Port',NULL,'Rogerstad','Oklahoma',NULL,'FM','78657',NULL,'698-153-3960x940','','1996-09-11',NULL,'Pacific/Johnston',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(7,'Jodie','Rohan','Luettgen.Sienna@Sawayn.com',445,'579 Freda Station Apt. 140',NULL,'Lake Charlesfurt','Montana',NULL,'TM','92984-3780',NULL,'709-485-2360','','1997-05-22',NULL,'America/Indiana/Winamac',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(8,'Ida','Kutch','Hank12@hotmail.com',598,'200 Prosacco Estate Apt. 310',NULL,'South Bartholome','Hawaii',NULL,'NE','51521-1860',NULL,'1-215-590-1644x817','','1924-02-09',NULL,'America/Sitka',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(9,'Trey','Lang','Veum.Kavon@hotmail.com',967,'18032 Mollie Shore Suite 891',NULL,'Hintzmouth','Vermont',NULL,'VE','16973-8884',NULL,'1-576-183-4812','','1955-01-20',NULL,'Africa/Lubumbashi',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(10,'Ruth','Fritsch','sReichert@Powlowski.net',116,'28855 Adolfo Plaza Suite 579',NULL,'West Joaquin','North Dakota',NULL,'IQ','69089',NULL,'872-089-2162x52962','','1958-12-03',NULL,'Asia/Kamchatka',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(11,'Ardith','Ferry','Ronaldo.Turner@hotmail.com',493,'523 Antwan Skyway',NULL,'Port Dakotaberg','Florida',NULL,'ES','13797',NULL,'1-922-904-1245','','1946-02-15',NULL,'America/Boa_Vista',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(12,'Lou','Rau','hFisher@gmail.com',805,'7070 Tyrique Harbor',NULL,'Port Webster','Nebraska',NULL,'AO','80199-5911',NULL,'(959)398-2475x104','','1925-04-30',NULL,'America/Cancun',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(13,'Ayla','Miller','Hyman.Nitzsche@hotmail.com',410,'0641 Walter Glen Suite 007',NULL,'Port Raulberg','North Dakota',NULL,'GN','89887',NULL,'019.006.2176x5364','','1929-05-11',NULL,'Asia/Pyongyang',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(14,'Paris','Koch','Laisha20@gmail.com',165,'3648 Towne Ridge',NULL,'South Rowanborough','Minnesota',NULL,'ZM','93893-4304',NULL,'(294)915-0304x51139','','2000-06-19',NULL,'America/Resolute',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(15,'Bianka','Mayer','Madyson.Sporer@yahoo.com',218,'87585 River Meadows',NULL,'Romaguerachester','West Virginia',NULL,'AI','88824',NULL,'(924)478-1026x445','','1983-02-26',NULL,'Pacific/Funafuti',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(16,'Anissa','Grady','lRolfson@Blick.net',455,'805 Beatty Vista Apt. 133',NULL,'New Janickfort','Colorado',NULL,'WF','86266-5848',NULL,'846.025.5684','','1933-08-08',NULL,'Europe/Brussels',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(17,'Isidro','Dach','Baylee07@Windler.com',81,'167 Kade Field Apt. 231',NULL,'Jacobsonborough','Florida',NULL,'IE','41469',NULL,'+15(2)9164375635','','1979-01-27',NULL,'America/Fortaleza',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(18,'Brennan','Keeling','Ledner.Vicente@Medhurst.com',320,'026 Feil Inlet',NULL,'Kamronfort','Kansas',NULL,'HT','52604',NULL,'230.103.5862','','1937-06-22',NULL,'Pacific/Easter',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(19,'Dewayne','Schaden','Cierra79@Kub.net',636,'752 Jayce Alley',NULL,'Jesschester','New Hampshire',NULL,'GH','22871-7629',NULL,'1-777-468-5816x91751','','1986-10-18',NULL,'Asia/Rangoon',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(20,'Marcos','Cassin','Timothy.Adams@hotmail.com',991,'37077 Viviane Shores',NULL,'Kennafort','Nebraska',NULL,'DJ','81224-2597',NULL,'(736)829-2290x5870','','1936-01-11',NULL,'Indian/Christmas',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(21,'Dagmar','Hickle','Michale.Herman@gmail.com',217,'9669 Adrienne Crescent',NULL,'New Lacy','West Virginia',NULL,'KR','03077-1075',NULL,'1-817-845-8250x85439','','1933-01-19',NULL,'Europe/Madrid',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(22,'Mitchel','Rolfson','Ludwig.Hilll@gmail.com',43,'402 Stokes Via',NULL,'Alfonzoshire','South Dakota',NULL,'ES','04623-5662',NULL,'1-100-578-9796','','1971-11-21',NULL,'Africa/Freetown',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(23,'Isabell','Fadel','oSchowalter@hotmail.com',238,'88137 Crooks Expressway Suite 528',NULL,'Lake Laverneport','Washington',NULL,'VC','29333-5437',NULL,'01967291791','','2011-05-30',NULL,'Africa/Dar_es_Salaam',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(24,'Eula','Conn','Gunnar.Hettinger@Feest.com',92,'34137 Hosea Corner',NULL,'Sauerside','Virginia',NULL,'LV','28003',NULL,'069.823.4860','','1989-07-03',NULL,'Indian/Cocos',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(25,'Misty','Botsford','iSawayn@hotmail.com',603,'80324 Beier Village Suite 365',NULL,'Jeaniehaven','Louisiana',NULL,'SH','79852',NULL,'(809)485-1030x4820','','2009-01-30',NULL,'Atlantic/Canary',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(26,'Mavis','Pollich','Beahan.Holly@gmail.com',998,'461 Friesen Fords',NULL,'Lake Dejahburgh','Wyoming',NULL,'BG','42310',NULL,'716.465.3436x149','','1968-03-22',NULL,'America/Montevideo',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(27,'Mohamed','Hettinger','Shanny43@yahoo.com',914,'55103 Lubowitz Rapids Apt. 449',NULL,'Edmondfurt','California',NULL,'NC','01483-9826',NULL,'1-176-464-0717x958','','1917-06-22',NULL,'Antarctica/Rothera',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(28,'Alana','VonRueden','Wehner.Unique@Reinger.com',857,'7740 Breitenberg Dam Apt. 290',NULL,'New Cassidy','California',NULL,'BR','60802-9361',NULL,'549-029-1400','','1979-07-25',NULL,'Asia/Dubai',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(29,'Ethyl','Kihn','Ruecker.Orville@Littel.net',896,'5434 Ignatius Mission Apt. 179',NULL,'Eunachester','Wisconsin',NULL,'IO','91593-2261',NULL,'819.729.3447','','1931-04-29',NULL,'America/Indiana/Knox',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(30,'Drake','Huel','vPouros@Daniel.com',984,'91430 Sigmund Island',NULL,'New Annette','Iowa',NULL,'GG','51355-3739',NULL,'(863)511-4789','','2003-01-17',NULL,'America/Marigot',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(31,'General','Beatty','Kaycee.Wilderman@yahoo.com',273,'9562 Gustave Villages Apt. 056',NULL,'Skilesmouth','Utah',NULL,'GW','82911',NULL,'1-233-112-3315x5552','','1953-06-27',NULL,'Asia/Ashgabat',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(32,'Pattie','Dibbert','Kara.Dickinson@hotmail.com',103,'9979 Kathlyn Common',NULL,'Lake Lucious','Ohio',NULL,'NU','25265',NULL,'063-600-6995x256','','1989-06-17',NULL,'Indian/Kerguelen',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(33,'Roger','Kreiger','Will.Edgar@Lemke.info',934,'832 Ricardo Parkway',NULL,'South Isabelbury','Michigan',NULL,'TM','16341-1641',NULL,'(698)390-9569','','2014-10-22',NULL,'Asia/Hovd',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(34,'Rogelio','Runolfsson','Polly.Beier@Hermann.com',615,'8939 Drew Villages Apt. 643',NULL,'New Allisonshire','Texas',NULL,'JO','76022',NULL,'823-548-6155x83035','','1990-05-04',NULL,'Asia/Bishkek',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(35,'Jadon','Larkin','Elisabeth53@Jerde.com',932,'56594 Sydney Fields',NULL,'Omermouth','Arizona',NULL,'VC','81696',NULL,'02850113562','','1928-02-04',NULL,'America/Godthab',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(36,'Devan','Hickle','Lourdes01@hotmail.com',231,'93063 Monserrat Inlet',NULL,'Kyleberg','Georgia',NULL,'BJ','07862-2560',NULL,'1-773-469-9760','','1957-04-11',NULL,'Pacific/Chatham',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(37,'Guillermo','Parisian','Hammes.Jordane@Steuber.com',497,'0328 London Avenue',NULL,'Lake Hugh','Iowa',NULL,'BF','01111',NULL,'1-689-687-4118x6313','','1995-08-07',NULL,'Antarctica/Troll',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(38,'Era','Wyman','Ulices08@gmail.com',124,'1861 Kutch Mount Suite 996',NULL,'Garretburgh','West Virginia',NULL,'FO','38793',NULL,'(782)847-9750x12939','','1923-01-26',NULL,'Africa/Kigali',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(39,'Deontae','O\'Hara','Athena.Gaylord@Veum.com',94,'32602 Brice Land',NULL,'Renefort','New Jersey',NULL,'SZ','12370',NULL,'017.478.3462x2845','','2010-03-29',NULL,'America/Indiana/Indianapolis',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(40,'Pansy','Little','Bruce.Parker@gmail.com',165,'65925 Clotilde Street',NULL,'Lake Zackaryfurt','New Jersey',NULL,'LI','72996-4921',NULL,'399.488.4109x15139','','1924-01-08',NULL,'Pacific/Tarawa',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(41,'Jacques','Cronin','Kadin.Quigley@Torp.com',991,'827 Armstrong Knolls',NULL,'North Mabelleborough','Indiana',NULL,'OM','15225-2145',NULL,'735-363-0779x48169','','1954-09-29',NULL,'Antarctica/Troll',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(42,'Durward','Fahey','Anissa.Bins@Medhurst.com',39,'814 Aufderhar Flat Apt. 842',NULL,'West Connorburgh','Nebraska',NULL,'NI','38874-5220',NULL,'816.331.2910x2953','','1947-03-07',NULL,'America/Metlakatla',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(43,'Edwina','McKenzie','Curtis.Ryan@Simonis.com',739,'2759 Frida Spring Apt. 352',NULL,'Lake Nick','Nevada',NULL,'BF','29517',NULL,'+70(1)1825420846','','1921-05-16',NULL,'Europe/Rome',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(44,'Judah','Harvey','Heathcote.Rosina@Kutch.com',213,'6500 Davonte Row Apt. 609',NULL,'New Alexanderberg','Alaska',NULL,'GN','22683-8967',NULL,'055-654-4099x9294','','1973-02-25',NULL,'Europe/Vilnius',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(45,'Hayley','Cummerata','Adams.Sunny@Marks.net',299,'313 Schinner Street Suite 919',NULL,'Lake Dewaynetown','Kentucky',NULL,'FM','63061-3350',NULL,'(631)973-2606','','1969-11-07',NULL,'America/Recife',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(46,'Fae','Denesik','qRohan@yahoo.com',462,'844 Walker Ports',NULL,'Regantown','North Carolina',NULL,'NA','15560',NULL,'+41(8)3267923270','','2012-05-11',NULL,'America/Grand_Turk',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(47,'Asia','Halvorson','Mark.Jacobi@Auer.biz',552,'19772 Prudence Springs',NULL,'New Tabithabury','Arkansas',NULL,'GI','55246',NULL,'1-259-270-8826x6692','','1918-07-02',NULL,'Indian/Mauritius',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(48,'Kaitlin','Turcotte','Alphonso.Aufderhar@Bode.com',907,'99765 Bartoletti Divide',NULL,'Elroytown','Alabama',NULL,'CR','56845-1952',NULL,'+42(0)7596113680','','1973-07-14',NULL,'Asia/Samarkand',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(49,'Milford','Robel','hBernhard@Jast.com',422,'3356 Ziemann Square Suite 859',NULL,'New Jarretttown','Minnesota',NULL,'UZ','95256',NULL,'1-408-390-1760','','1964-02-04',NULL,'Pacific/Chuuk',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(50,'Lucienne','Tremblay','Austyn87@Hermann.com',822,'4831 Jayce Oval',NULL,'Rueckermouth','Alabama',NULL,'CI','32889-7055',NULL,'1-618-765-5947x724','','1971-03-21',NULL,'Asia/Dhaka',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06');

/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table floors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `floors`;

CREATE TABLE `floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;

INSERT INTO `floors` (`id`, `department_id`, `name`, `image`, `created_at`, `updated_at`)
VALUES
	(1,1,'Jameson Johns',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(2,19,'Mr. Hans Brekke',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(3,20,'Lilian Howe',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(4,7,'Tre Bartoletti',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(5,6,'Jevon Walsh I',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(6,8,'Janet Koss III',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(7,8,'Mrs. Angelita Gleichner DVM',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(8,15,'Matteo Rohan',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(9,19,'Mr. Jaquan Toy',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(10,10,'Shakira Pollich',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(11,18,'Asa Ullrich',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(12,2,'Ariane Koch',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(13,14,'Prof. Harley Veum Jr.',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(14,10,'Kenneth Lynch',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(15,11,'Jefferey Mraz DDS',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(16,5,'Ms. Vergie Ondricka PhD',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(17,12,'Christopher Bogan',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(18,4,'Monserrat Mohr',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(19,8,'Jarrod Kshlerin',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(20,9,'Mr. Leon Sipes V',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(21,14,'Merritt Schinner',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(22,2,'Andreanne Monahan Sr.',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(23,5,'Mr. Axel Batz',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(24,19,'Teresa Jerde Sr.',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(25,18,'Wilhelmine Mante II',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(26,12,'Bradford Ratke',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(27,5,'Marcelino Bogan',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(28,3,'Winnifred Daugherty',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(29,11,'Sylvester Beatty V',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(30,16,'Mrs. Burdette Bayer',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(31,2,'Mrs. Gwen Treutel',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(32,15,'Tania Romaguera II',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(33,16,'Mr. General Leffler',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(34,4,'Raina Klein',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(35,12,'Jadon Walter',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(36,14,'Ashlynn Weber',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(37,20,'Lenna Mayert',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(38,17,'Ralph Schmitt',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(39,2,'Aniya Ziemann',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(40,12,'Ms. Viola Russel',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(41,17,'Monserrat Beahan',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(42,9,'Brenna O\'Keefe',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(43,9,'Dr. Grant Sanford PhD',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(44,2,'Miss Grace Anderson',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(45,17,'Nicholas Kemmer',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(46,9,'Dr. Jules Mann DVM',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(47,6,'Khalil Doyle',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(48,4,'Larue Becker DVM',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(49,16,'Clara Conn',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(50,16,'Amani Dooley',NULL,'2015-09-23 10:19:06','2015-09-23 10:19:06');

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
	('2015_09_23_062915_create_floors_table',2);

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
	(9,1);

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
	(9,'manage_floors','Manage floors for department building','2015-09-23 08:51:27','2015-09-23 08:51:27');

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
	(1,1,'admin','admin@admin.com','$2y$10$ynN0bPozqXwSoDF8ACVZn.MC51fzH4950J5n4O9BsGEXJUK6JD/6i',1,'SOdNlhDXKAF3uJXmWr3C6dkeK0GZ9EhgNzLlvZcCAeT6QGhCgtwsGlLe6Aup','0000-00-00 00:00:00','2015-09-21 14:03:59');

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
	(1,'Strosin and Sons','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(2,'Crooks Ltd','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(3,'Deckow Inc','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(4,'Zulauf, Murphy and Nolan','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(5,'Rosenbaum-Towne','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(6,'Gutkowski Inc','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(7,'Towne, Christiansen and White','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(8,'Schmeler-Pfannerstill','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(9,'Zboncak-Jakubowski','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(10,'Roob-Kreiger','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(11,'Rohan-Hirthe','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(12,'Skiles PLC','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(13,'Hills-Schuppe','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(14,'Witting, Corkery and Upton','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(15,'Treutel and Sons','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(16,'Stokes, Lubowitz and Denesik','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(17,'Gerlach Group','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(18,'Collins, Hartmann and Lynch','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(19,'Mertz-Lemke','2015-09-23 10:19:06','2015-09-23 10:19:06'),
	(20,'Kassulke and Sons','2015-09-23 10:19:06','2015-09-23 10:19:06');

/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
