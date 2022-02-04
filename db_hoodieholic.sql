/*
SQLyog Enterprise v10.42 
MySQL - 5.5.5-10.1.31-MariaDB : Database - db_hoodieholic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_hoodieholic` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_hoodieholic`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('0b8e04c42fd9750b4b7f92073fd571aee65acd47a7e713a22bc4e67eecee3642809a6d24e1c2b163',1,1,'Personal Access Token','[]',0,'2018-12-22 00:09:35','2018-12-22 00:09:35','2019-12-22 00:09:35'),('15be0806848fc7f7a5539d3ad2da98dc1368fc9e3e6f8502294e470424e3e331a6014dc15fc40535',1,1,'Personal Access Token','[]',0,'2018-12-22 00:45:20','2018-12-22 00:45:20','2019-12-22 00:45:20'),('166e1103f9379357fa15134e8b880802166421a17ece51eb9ba5a3fb1ae1c76657e59090e4ef8b18',2,1,'Personal Access Token','[]',0,'2018-12-22 00:02:54','2018-12-22 00:02:54','2019-12-22 00:02:54'),('1818d5b51b3c1b4d6ed604821747328e12ff2e592355b6f54af0467a5b03c69a924a06c9ba059dec',2,1,'Personal Access Token','[]',0,'2018-12-04 14:39:27','2018-12-04 14:39:27','2019-12-04 14:39:27'),('1b8b5e00329ada3605864ec62af079d339ec8fc33e5e418026d0debf3ad46a5f494ccf97abf76d68',2,1,'Personal Access Token','[]',0,'2018-12-14 12:56:30','2018-12-14 12:56:30','2019-12-14 12:56:30'),('294f649fe052e31f2ccb04fa29c1134b462f277f055d93d63548eb2c31eedf73f2f28aa5d4806b53',1,1,'Personal Access Token','[]',0,'2018-12-22 00:03:21','2018-12-22 00:03:21','2019-12-22 00:03:21'),('3139f9f7d8f02b1cb937599803ac2b685c4bd3cfea5163a5b23b82a56b61ee119c81cde826d6466e',1,1,'Personal Access Token','[]',0,'2018-12-21 07:29:32','2018-12-21 07:29:32','2019-12-21 07:29:32'),('38b387ed6fa35a0df3c0e70296afcb26001e26619f32f75e32088ccee0b912f3c65065fcf9f2553e',2,1,'Personal Access Token','[]',0,'2018-12-22 00:04:46','2018-12-22 00:04:46','2019-12-22 00:04:46'),('4518515a61c2f503e14de7d29be679ffca0e74fbd736bc081e8b4ebec2cde3073eee8884e1043728',1,1,'Personal Access Token','[]',0,'2018-12-21 18:43:27','2018-12-21 18:43:27','2019-12-21 18:43:27'),('628694ffede7733300ee8f5371d5da6d26eb8c2a8e3e4ed4343d19f817cf267b7f3d3f4f3a53200b',4,1,'Personal Access Token','[]',0,'2018-12-21 04:55:17','2018-12-21 04:55:17','2019-12-21 04:55:17'),('6d141a1d2c49a1337ee5e423f625a8d3a1a581f3dcde08054d19062da952089d667dbde117eab1e6',1,1,'Personal Access Token','[]',0,'2018-12-22 00:07:12','2018-12-22 00:07:12','2019-12-22 00:07:12'),('6fc73c0b059579ccac535b5aee32f3738d39ecaf0d35014e980879171b792b35574c905e2df10f1c',2,1,'Personal Access Token','[]',0,'2018-12-21 07:31:40','2018-12-21 07:31:40','2019-12-21 07:31:40'),('708787a7768000e62edd821428ed2b3b2130d7531a518bc9a8c3d9fd5f666a6fb396b8a991b85c00',1,1,'Personal Access Token','[]',0,'2018-12-22 00:10:03','2018-12-22 00:10:03','2019-12-22 00:10:03'),('710791bac43538fb76d222fd1a781f5e862532670ae64abd9c69ffd37c2cdcea85b9bcc216dacbc5',2,1,'Personal Access Token','[]',0,'2018-12-22 00:02:51','2018-12-22 00:02:51','2019-12-22 00:02:51'),('7ac84310276d3d55c6fe36954f7084032696d245ad80131ef6f1e3e3ce286aa88164745969cc72b1',4,1,'Personal Access Token','[]',0,'2018-12-21 05:12:54','2018-12-21 05:12:54','2019-12-21 05:12:54'),('7afdc90b21891b270b814fff81922dd5488c66ba27b775f2d9bd81e189deab62ab0f75524e8622c6',1,1,'Personal Access Token','[]',0,'2018-12-21 18:43:15','2018-12-21 18:43:15','2019-12-21 18:43:15'),('8a7d9b01df24f4f8362fb767bd653a5e4162c1adeae6fba1359dd4ac827a231337ea923f8c0e3761',2,1,'Personal Access Token','[]',0,'2018-12-22 00:05:40','2018-12-22 00:05:40','2019-12-22 00:05:40'),('8df63b8fe9b8ef2cc200bed64f1e5b3365786ffc2d521254128004d5780e57da89a358b4133994bf',1,1,'Personal Access Token','[]',0,'2018-12-21 18:41:41','2018-12-21 18:41:41','2019-12-21 18:41:41'),('8eb50a07445e1ec16cec34e90905e59a4ff3343d468a7f294b18ac95ce73d3254b405f6243b41ef0',1,1,'Personal Access Token','[]',0,'2018-12-22 00:09:18','2018-12-22 00:09:18','2019-12-22 00:09:18'),('8edc7809d6feadcf84bf69e28bd01e54cef618b2ca0f572227bb419f8cd08f6655bf40ea53883467',4,1,'Personal Access Token','[]',0,'2018-12-21 06:01:06','2018-12-21 06:01:06','2019-12-21 06:01:06'),('9a9593468c5c4750a68da629997f00fcdc006bfb0d209a48566f3c06da9aa33c7a8b0ff577f0ad68',9,1,'Personal Access Token','[]',0,'2018-12-21 07:46:50','2018-12-21 07:46:50','2019-12-21 07:46:50'),('9de79da93303630906f14e2294702475b4e488253321a096e76957829325bb39c2480a85d4b25fbd',1,1,'Personal Access Token','[]',0,'2018-12-22 00:08:19','2018-12-22 00:08:19','2019-12-22 00:08:19'),('9e9751a40e76e8c12b05e8ddb09f99827581e00cee6c84d9c57ec96dc8fdca90be25b8b0bf70b639',9,1,'Personal Access Token','[]',0,'2018-12-21 08:08:51','2018-12-21 08:08:51','2019-12-21 08:08:51'),('a3d45ae41b2eaf3bbaa471fe3f362f629052f9926dbb7d9e628e7e753dcb5f040c4808b43ddb2f12',2,1,'Personal Access Token','[]',0,'2018-12-22 00:02:47','2018-12-22 00:02:47','2019-12-22 00:02:47'),('a5945cb2a9f844be15d7352457fe3d72d6aa0e3ddf694c6042330461d315179d01449236bd1fe970',1,1,'Personal Access Token','[]',0,'2018-12-21 12:16:22','2018-12-21 12:16:22','2019-12-21 12:16:22'),('a925dcbdf314995c59dde769e5ea25cbbf1c1ce871c326cab8a5acf54ed28c1a8827d500d89095c4',1,1,'Personal Access Token','[]',0,'2018-12-22 00:07:08','2018-12-22 00:07:08','2019-12-22 00:07:08'),('aa8f4807e4ab2065586979b96d307773bb10ffb67961623619fc73d10918d841f8eb3e84a877cf89',2,1,'Personal Access Token','[]',0,'2018-12-14 10:35:27','2018-12-14 10:35:27','2019-12-14 10:35:27'),('ab1dbace2f6bdacfafe10bb10dacb406b9dccbd9ee6b3d7875ccc9364bdfddabe1a9e42de02c4a95',2,1,'Personal Access Token','[]',0,'2018-12-21 18:42:28','2018-12-21 18:42:28','2019-12-21 18:42:28'),('ad8f08f6c5cbff2edf22a476422475fa6244211ed304cc2c46e3855f21e5b2f0fb48132ff393ac1e',2,1,'Personal Access Token','[]',0,'2018-12-21 18:45:22','2018-12-21 18:45:22','2019-12-21 18:45:22'),('af8c9dc7fdf5d69d83206040b14fe02db0212877585827cac87682159c54bab34c9bb2f19f365a4f',2,1,'Personal Access Token','[]',0,'2018-12-21 18:41:58','2018-12-21 18:41:58','2019-12-21 18:41:58'),('b08ff78d289fff7c8c24644fa8cf1f1e283d3153cdfa4d0168027f2c13e3c8a48cf4095cf7e4861a',2,1,'Personal Access Token','[]',0,'2018-12-14 09:21:20','2018-12-14 09:21:20','2019-12-14 09:21:20'),('b2404ba95d7a02468af4faec187a5e31163e4fcef9d65a0e4d8e011ef6454f831c536b678a9da249',1,1,'Personal Access Token','[]',0,'2018-12-22 00:06:51','2018-12-22 00:06:51','2019-12-22 00:06:51'),('bb68adb1b11ff4eb10201110a2a1acf353f8d196fcf82c32a65f31f9476b216b73d8508111b68d60',2,1,'Personal Access Token','[]',0,'2018-12-05 16:02:52','2018-12-05 16:02:52','2019-12-05 16:02:52'),('bb805b0ca1451ac4da6f9e4512346fef4ed3e9d572df44d4f44fc417233b0467d364e92b6d56e88a',1,1,'Personal Access Token','[]',0,'2018-12-21 18:41:45','2018-12-21 18:41:45','2019-12-21 18:41:45'),('bbd8e227f55fe71c79e51e087438ed96fdd47565087d5a606123377b7ef206664e6dc9ab050f8d95',1,1,'Personal Access Token','[]',0,'2018-12-21 18:43:47','2018-12-21 18:43:47','2019-12-21 18:43:47'),('c805dbb92bbe753875b5f0c1a0f74de678dcb1033859820e9b4af71d739386c76f19d2dd556ccbe4',2,1,'Personal Access Token','[]',0,'2018-12-14 10:40:20','2018-12-14 10:40:20','2019-12-14 10:40:20'),('c8c31c359092b2b8ca13c91f08820b5aac379401a89c7881bd08ff97f4e938e91f4b535df0e868b2',2,1,'Personal Access Token','[]',0,'2018-12-14 10:37:05','2018-12-14 10:37:05','2019-12-14 10:37:05'),('d08f60f42f99d4115d1f6ab828bd88b21a00c5d2cb7bbe6542924ce2f6237073d3c8905938eb7df1',2,1,'Personal Access Token','[]',0,'2018-12-22 00:02:38','2018-12-22 00:02:38','2019-12-22 00:02:38'),('d32840bc2072b9c8226808d9bfe23b08517d2a8397e6bb935ae132c33f4a9b327846669e436b04ed',1,1,'Personal Access Token','[]',0,'2018-12-21 11:45:57','2018-12-21 11:45:57','2019-12-21 11:45:57'),('d65d2e22c30b7748ae016d013e3f7a8fac82db5aeb235b31a8bbbd1b206ac8b6c308272039bb234a',2,1,'Personal Access Token','[]',0,'2018-12-04 14:11:59','2018-12-04 14:11:59','2019-12-04 14:11:59'),('d87104a48c74ac6b3e54f3bb8ccd669d4435db93afaa5e61f0876b97949f282b98dee62193bc6e9e',2,1,'Personal Access Token','[]',0,'2018-12-05 16:03:06','2018-12-05 16:03:06','2019-12-05 16:03:06'),('db5e565da7a25c0408dd3e65f3c50af14709ef14586eea7467a79c883b69b80f4b0075934d06a2f4',4,1,'Personal Access Token','[]',0,'2018-12-21 07:32:16','2018-12-21 07:32:16','2019-12-21 07:32:16'),('dbf781d91fcb8605bb68a87358e7fd0894568d3834c1d391bcccac4abae21e47562e5c0178c9b354',1,1,'Personal Access Token','[]',0,'2018-12-21 12:16:20','2018-12-21 12:16:20','2019-12-21 12:16:20'),('e3f41877f8f443d07bfc59f6bf053e7268042a7ed41705f41cc4dbc609f1a19d51bf571eed66193f',1,1,'Personal Access Token','[]',0,'2018-12-21 18:44:04','2018-12-21 18:44:04','2019-12-21 18:44:04'),('ea4336a446f6af52d55a165b23ccffe870ac536784e4a1a1a11958738c12c4a9d9630dc29adadf07',1,1,'Personal Access Token','[]',0,'2018-12-21 07:30:35','2018-12-21 07:30:35','2019-12-21 07:30:35'),('f0ba6821cf55bd54cc56814ed7d2f5385bfd00e19ffa006784849b7b175b5646e03d1d4d2c8c5f57',2,1,'Personal Access Token','[]',0,'2018-12-22 00:03:04','2018-12-22 00:03:04','2019-12-22 00:03:04'),('fab8a97770edfe9fec0efa1ffb7071b0342163c13375d0ebe10e946f4b5d3f19e422f25355f82592',2,1,'Personal Access Token','[]',0,'2018-12-14 12:56:25','2018-12-14 12:56:25','2019-12-14 12:56:25'),('fdd083bf822564792b6be8760486de94ce4832098ed6de8ba175d28373e92db5e9af343ec23b311d',10,1,'Personal Access Token','[]',0,'2018-12-21 08:07:21','2018-12-21 08:07:21','2019-12-21 08:07:21'),('fe5901c9448fb786124e00b2f8c1f77230717e5f6e3237d4e2daec2a18c33b4cff148c21afa55dc3',1,1,'Personal Access Token','[]',0,'2018-12-21 18:45:03','2018-12-21 18:45:03','2019-12-21 18:45:03');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'personal_access_client','NcaSVeoNR8LXcVJ2Jk2DtWvdwY66EZ2wWVOqf6jj','http://localhost',1,0,0,'2018-12-04 14:11:28','2018-12-04 14:11:28');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2018-12-04 14:11:28','2018-12-04 14:11:28');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `tb_barang` */

DROP TABLE IF EXISTS `tb_barang`;

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `image` text,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tb_barang` */

insert  into `tb_barang`(`id`,`nama_barang`,`stok`,`image`,`status`,`created_at`,`updated_at`) values (1,'Widcal Black',12,'1.jpg',1,'2018-12-21 23:39:47','2018-12-21 23:39:47'),(2,'Widcal White Misty',5,'2.jpg',1,'2018-12-21 23:40:38','2018-12-21 23:40:38'),(3,'Widcal Grey Misty',6,'3.jpg',1,'2018-12-22 08:36:00','2018-12-22 00:36:00'),(4,'Widcal Grey Camo List',2,'4.jpg',1,'2018-12-22 08:33:14','2018-12-22 00:33:14'),(5,'Widcal Grey List White',10,'5.jpg',1,'2018-12-22 08:32:57','2018-12-22 00:32:57'),(6,'ahsha',1,'6.jpg',0,'2018-12-22 08:29:28','2018-12-22 00:29:28'),(7,'uay',12,'7.jpg',0,'2018-12-22 08:29:33','2018-12-22 00:29:33'),(8,'t',2,'8.jpg',0,'2018-12-22 08:53:35','2018-12-22 00:53:35'),(9,'tes',4,'9.jpg',0,'2018-12-22 08:54:10','2018-12-22 00:54:10');

/*Table structure for table `tb_detail_history` */

DROP TABLE IF EXISTS `tb_detail_history`;

CREATE TABLE `tb_detail_history` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_history` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_detail_history` */

/*Table structure for table `tb_history` */

DROP TABLE IF EXISTS `tb_history`;

CREATE TABLE `tb_history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_history` */

/*Table structure for table `tb_member` */

DROP TABLE IF EXISTS `tb_member`;

CREATE TABLE `tb_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_member` */

insert  into `tb_member`(`id`,`name`,`username`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'Yonatan','natanzt1','$2y$10$/sQ7m0PJdiXjhUjUWaHtRuo/4RIIX3CapFTlIhUJhxwo8VijFKd9G','xFxdEKCmJrB9qKyKeFohTu5hHdwGwzuNrlI2CsrBb3AbQ0KY8LQLU2hPm4J7','2018-10-31 14:49:42','2018-10-31 06:49:21'),(2,'Yonatan Adiwinata','admin','$2y$10$RCfUBomTSxfMRhAF.RAD1.rvFJ1IJvzPKUaE2A8jvfuVy/nq7ETwq','187qQPRZpXvVsj6JDrIfXlgKaknRK97lsJGQ75YVQr6IstCEimby7zBeP0Cd','2018-12-04 20:29:34','2018-12-04 11:54:30');

/*Table structure for table `tb_transaksi` */

DROP TABLE IF EXISTS `tb_transaksi`;

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id_barang` (`id_barang`),
  KEY `tb_transaksi_ibfk_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_transaksi` */

insert  into `tb_transaksi`(`id`,`id_barang`,`jumlah`,`user_id`,`created_at`,`updated_at`) values (1,4,2,2,'2018-12-21 23:50:28','2018-12-21 23:50:28'),(2,4,1,2,'2018-12-22 00:33:14','2018-12-22 00:33:14'),(3,3,1,2,'2018-12-22 00:35:43','2018-12-22 00:35:43'),(4,3,1,1,'2018-12-22 00:36:00','2018-12-22 00:36:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`password`,`remember_token`,`fcm_token`,`created_at`,`updated_at`) values (1,'Test4','admin2','$2y$10$PW3JDdfPGHN71NJk3IEUc.RKgPTT5UQobVQBnejs1yuKPuJ1uDhG2',NULL,'fE4dXlmzYT8:APA91bEFCxKBp_fon1MkvFCWfM57SZ0BAwZNojrbyYGmIlnrAqSW31wcgRZ218KcJ_QiwMoOeoQIqEJrPWuhX0d4Qv0qGihe7HqCmQJcLAsly1Y7zE8WYbwtt-TuGmysezM1zYSN9XsY','2018-12-04 13:23:49','2018-12-21 18:39:38'),(2,'Om Ganteng','@om_ganteng','$2y$10$zHE5PFeubPkS6lAJJY9kRu9Pxi1U/3I7AUm7bDZhIwV8QnHb2ddnO',NULL,'fDQ_eudFiLQ:APA91bENvepqtwetXmVIUazXppYF1QsvNS9HzMIYzHp7xf3I4o-yYmZExD7ZcErrqz94cRK3UmV-RCKo1C7SESU7hieSFMmbtmX3ETR8CBkbYeF136hvRkR7bACsVKhCR8Swc9yv0UCo','2018-12-04 13:56:14','2018-12-20 11:27:33'),(3,'johntitor','admin1','$2y$10$v4O8rhZ6xVXoyFS7DCsrSOsPTDQMcjU4Rnx/x06BBmErNVMByJbx.',NULL,'fDQ_eudFiLQ:APA91bENvepqtwetXmVIUazXppYF1QsvNS9HzMIYzHp7xf3I4o-yYmZExD7ZcErrqz94cRK3UmV-RCKo1C7SESU7hieSFMmbtmX3ETR8CBkbYeF136hvRkR7bACsVKhCR8Swc9yv0UCo','2018-12-14 09:09:32','2018-12-14 09:09:32'),(4,'Putra Eryawan','@putra','$2y$10$7EfeVplRSV6pcXfLNd/Bc.DTKDBGwK5Aluyo4lLaUmomb/YTxdwnO',NULL,'fDQ_eudFiLQ:APA91bENvepqtwetXmVIUazXppYF1QsvNS9HzMIYzHp7xf3I4o-yYmZExD7ZcErrqz94cRK3UmV-RCKo1C7SESU7hieSFMmbtmX3ETR8CBkbYeF136hvRkR7bACsVKhCR8Swc9yv0UCo','2018-12-21 04:52:53','2018-12-21 04:52:53'),(5,'Putra Eryawan','@putra2','$2y$10$krdGUdiglVpqeVkiHbcY3Oyx07.AhgFV4MU0vpupgdy.Jnzv14VFS',NULL,'fDQ_eudFiLQ:APA91bENvepqtwetXmVIUazXppYF1QsvNS9HzMIYzHp7xf3I4o-yYmZExD7ZcErrqz94cRK3UmV-RCKo1C7SESU7hieSFMmbtmX3ETR8CBkbYeF136hvRkR7bACsVKhCR8Swc9yv0UCo','2018-12-21 04:55:04','2018-12-21 04:55:04'),(6,'coba','@titor','$2y$10$6YVF8wB/wJ20LX38yEN3l.tW7wOupXBdPi.wUPOHhkIqaQDtiaX/C',NULL,NULL,'2018-12-21 07:41:06','2018-12-21 07:41:06'),(7,'Progmob KLP 2','@kelompok2','$2y$10$DyYFff.5mx/.IOFTSQkL2ueWyglvNUXYlBi8CnaGRsq3jfFOEdxPW',NULL,NULL,'2018-12-21 07:41:56','2018-12-21 07:41:56'),(8,'Kelompok2','progmob2@unud.it.iacid','$2y$10$P/Zt8pSnszvdIhHy5QEO4.0h/QM.SLqAizscM7.0/5EVWoRK1OT6O',NULL,NULL,'2018-12-21 07:43:20','2018-12-21 07:43:20'),(9,'Progmob Kelompok2','progmob2@unud.it.ac.id','$2y$10$yaN70q0dtt/lGASLL5LoyuirkfJ1dBpzIRc/uqO4aEQ1vd6eoSBTy',NULL,NULL,'2018-12-21 07:45:55','2018-12-21 08:50:35'),(10,'jaladhi','jaladhi','$2y$10$GR6IJhcmxlJSFyTToFUvh.WUcn9YvRliyYxsdZhF1G3WGV1zzD3b6',NULL,NULL,'2018-12-21 08:07:06','2018-12-21 08:07:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
