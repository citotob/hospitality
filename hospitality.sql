/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.47-0ubuntu0.14.04.1 : Database - hospitality
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hospitality` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hospitality`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add user object permission',8,'add_userobjectpermission'),(23,'Can change user object permission',8,'change_userobjectpermission'),(24,'Can delete user object permission',8,'delete_userobjectpermission'),(25,'Can add group object permission',9,'add_groupobjectpermission'),(26,'Can change group object permission',9,'change_groupobjectpermission'),(27,'Can delete group object permission',9,'delete_groupobjectpermission'),(28,'Can add userena registration',10,'add_userenasignup'),(29,'Can change userena registration',10,'change_userenasignup'),(30,'Can delete userena registration',10,'delete_userenasignup'),(31,'Can add contact',11,'add_messagecontact'),(32,'Can change contact',11,'change_messagecontact'),(33,'Can delete contact',11,'delete_messagecontact'),(34,'Can add recipient',12,'add_messagerecipient'),(35,'Can change recipient',12,'change_messagerecipient'),(36,'Can delete recipient',12,'delete_messagerecipient'),(37,'Can add message',13,'add_message'),(38,'Can change message',13,'change_message'),(39,'Can delete message',13,'delete_message'),(40,'Can add profile',14,'add_profile'),(41,'Can change profile',14,'change_profile'),(42,'Can delete profile',14,'delete_profile'),(43,'Can view profile',14,'view_profile'),(44,'Can add source',15,'add_source'),(45,'Can change source',15,'change_source'),(46,'Can delete source',15,'delete_source'),(47,'Can add thumbnail',16,'add_thumbnail'),(48,'Can change thumbnail',16,'change_thumbnail'),(49,'Can delete thumbnail',16,'delete_thumbnail'),(50,'Can add thumbnail dimensions',17,'add_thumbnaildimensions'),(51,'Can change thumbnail dimensions',17,'change_thumbnaildimensions'),(52,'Can delete thumbnail dimensions',17,'delete_thumbnaildimensions');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'!gA2ugibrfSDnhIn9G1lL497Zd3k1BTijurqSYxgn',NULL,0,'AnonymousUser','','','',0,1,'2016-09-05 08:23:40'),(2,'pbkdf2_sha256$30000$nksr3JscC0vw$qQOLQgN9aXx/vM85hqKmVCv3poQYEr1tuojKHa6bptc=','2016-09-06 05:02:32',1,'admin','admin','','admin@admin.com',1,1,'2016-09-05 09:07:28'),(3,'pbkdf2_sha256$30000$TDw8Mdz2CY49$ypVpQBMpvZwibsls1xvKNuxH70mBGewhdWQBUmgpd9o=','2016-09-08 03:04:28',0,'mcd','','','',0,1,'2016-09-06 03:26:08');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (1,'2016-09-06 03:26:08','3','mcd',1,'[{\"added\": {}}]',3,2),(2,'2016-09-06 03:26:44','3','mcd',2,'[]',3,2),(3,'2016-09-06 03:41:47','3','mcd',2,'[]',3,2),(4,'2016-09-06 03:43:23','3','mcd',2,'[]',3,2),(5,'2016-09-06 03:46:35','3','mcd',2,'[]',3,2),(6,'2016-09-06 04:03:50','3','mcd',2,'[]',3,2),(7,'2016-09-06 04:08:37','3','mcd',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',3,2),(8,'2016-09-06 04:27:59','3','mcd',2,'[]',3,2),(9,'2016-09-06 04:28:24','2','admin',2,'[{\"changed\": {\"fields\": [\"first_name\"]}}]',3,3),(10,'2016-09-06 04:29:17','3','mcd',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',3,2);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (7,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'auth','user'),(4,'contenttypes','contenttype'),(15,'easy_thumbnails','source'),(16,'easy_thumbnails','thumbnail'),(17,'easy_thumbnails','thumbnaildimensions'),(9,'guardian','groupobjectpermission'),(8,'guardian','userobjectpermission'),(14,'profiles','profile'),(5,'sessions','session'),(6,'sites','site'),(13,'umessages','message'),(11,'umessages','messagecontact'),(12,'umessages','messagerecipient'),(10,'userena','userenasignup');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2016-09-05 08:10:29'),(2,'auth','0001_initial','2016-09-05 08:10:32'),(3,'admin','0001_initial','2016-09-05 08:10:32'),(4,'admin','0002_logentry_remove_auto_add','2016-09-05 08:10:32'),(5,'contenttypes','0002_remove_content_type_name','2016-09-05 08:10:33'),(6,'auth','0002_alter_permission_name_max_length','2016-09-05 08:10:33'),(7,'auth','0003_alter_user_email_max_length','2016-09-05 08:10:33'),(8,'auth','0004_alter_user_username_opts','2016-09-05 08:10:33'),(9,'auth','0005_alter_user_last_login_null','2016-09-05 08:10:33'),(10,'auth','0006_require_contenttypes_0002','2016-09-05 08:10:33'),(11,'auth','0007_alter_validators_add_error_messages','2016-09-05 08:10:33'),(12,'auth','0008_alter_user_username_max_length','2016-09-05 08:10:34'),(13,'easy_thumbnails','0001_initial','2016-09-05 08:10:35'),(14,'easy_thumbnails','0002_thumbnaildimensions','2016-09-05 08:10:35'),(15,'guardian','0001_initial','2016-09-05 08:10:37'),(16,'sessions','0001_initial','2016-09-05 08:10:37'),(17,'sites','0001_initial','2016-09-05 08:10:37'),(18,'sites','0002_alter_domain_unique','2016-09-05 08:10:37'),(19,'umessages','0001_initial','2016-09-05 08:10:39'),(20,'userena','0001_initial','2016-09-05 08:10:40'),(21,'userena','0002_auto_20160902_0451','2016-09-05 08:10:40');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('gty5xh2q8ze9oi08w4z7xiev51w4klnk','MDliY2ZkYTk5MDY4NmExMWI4MDBkODhmM2RkZDdiNjJiMmI5NGEwZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiMzMyZDkxMTQ5OGU1NTg2MDgxMTM0ODg3ZTc1Mzg5NjZmNWIzMjViNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-09-22 03:04:28');

/*Table structure for table `django_site` */

DROP TABLE IF EXISTS `django_site`;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `django_site` */

insert  into `django_site`(`id`,`domain`,`name`) values (1,'example.com','example.com');

/*Table structure for table `easy_thumbnails_source` */

DROP TABLE IF EXISTS `easy_thumbnails_source`;

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `easy_thumbnails_source` */

/*Table structure for table `easy_thumbnails_thumbnail` */

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` (`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  CONSTRAINT `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `easy_thumbnails_thumbnail` */

/*Table structure for table `easy_thumbnails_thumbnaildimensions` */

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;

CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumb_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `easy_thumbnails_thumbnaildimensions` */

/*Table structure for table `guardian_groupobjectpermission` */

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;

CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_groupobjectpermission_group_id_3f189f7c_uniq` (`group_id`,`permission_id`,`object_pk`),
  KEY `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` (`content_type_id`),
  KEY `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `guardian_groupobjectpermissio_group_id_4bbbfb62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guardian_groupobjectpermission` */

/*Table structure for table `guardian_userobjectpermission` */

DROP TABLE IF EXISTS `guardian_userobjectpermission`;

CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_userobjectpermission_user_id_b0b3d2fc_uniq` (`user_id`,`permission_id`,`object_pk`),
  KEY `guardian_user_content_type_id_2e892405_fk_django_content_type_id` (`content_type_id`),
  KEY `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `guardian_user_content_type_id_2e892405_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guardian_userobjectpermission` */

/*Table structure for table `profiles_profile` */

DROP TABLE IF EXISTS `profiles_profile`;

CREATE TABLE `profiles_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `about_me` text,
  `mugshot` varchar(25) DEFAULT NULL,
  `privacy` varchar(25) DEFAULT NULL,
  `language` varchar(25) DEFAULT NULL,
  `order_cat_id` int(11) DEFAULT NULL,
  KEY `id` (`id`),
  KEY `profile` (`user_id`),
  CONSTRAINT `profile` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `profiles_profile` */

insert  into `profiles_profile`(`id`,`user_id`,`gender`,`website`,`location`,`birth_date`,`about_me`,`mugshot`,`privacy`,`language`,`order_cat_id`) values (1,2,NULL,'','',NULL,'','','registered','en',NULL),(2,3,NULL,'','',NULL,'','','registered','en',13);

/*Table structure for table `umessages_message` */

DROP TABLE IF EXISTS `umessages_message`;

CREATE TABLE `umessages_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `sent_at` datetime NOT NULL,
  `sender_deleted_at` datetime DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `umessages_message_924b1846` (`sender_id`),
  CONSTRAINT `umessages_message_sender_id_bcf82313_fk_auth_user_id` FOREIGN KEY (`sender_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `umessages_message` */

/*Table structure for table `umessages_messagecontact` */

DROP TABLE IF EXISTS `umessages_messagecontact`;

CREATE TABLE `umessages_messagecontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latest_message_id` int(11) NOT NULL,
  `um_from_user_id` int(11) NOT NULL,
  `um_to_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `umessages_messagecontact_um_from_user_id_6a2a0ed7_uniq` (`um_from_user_id`,`um_to_user_id`),
  KEY `umessages_mes_latest_message_id_b789216c_fk_umessages_message_id` (`latest_message_id`),
  KEY `umessages_messagecontact_um_to_user_id_41c358f4_fk_auth_user_id` (`um_to_user_id`),
  CONSTRAINT `umessages_messagecontact_um_to_user_id_41c358f4_fk_auth_user_id` FOREIGN KEY (`um_to_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `umessages_messagecontac_um_from_user_id_890567be_fk_auth_user_id` FOREIGN KEY (`um_from_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `umessages_mes_latest_message_id_b789216c_fk_umessages_message_id` FOREIGN KEY (`latest_message_id`) REFERENCES `umessages_message` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `umessages_messagecontact` */

/*Table structure for table `umessages_messagerecipient` */

DROP TABLE IF EXISTS `umessages_messagerecipient`;

CREATE TABLE `umessages_messagerecipient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `umessages_messagerec_message_id_acb759ef_fk_umessages_message_id` (`message_id`),
  KEY `umessages_messagerecipient_user_id_80f0245c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `umessages_messagerecipient_user_id_80f0245c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `umessages_messagerec_message_id_acb759ef_fk_umessages_message_id` FOREIGN KEY (`message_id`) REFERENCES `umessages_message` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `umessages_messagerecipient` */

/*Table structure for table `userena_userenasignup` */

DROP TABLE IF EXISTS `userena_userenasignup`;

CREATE TABLE `userena_userenasignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_active` datetime DEFAULT NULL,
  `activation_key` varchar(40) NOT NULL,
  `activation_notification_send` tinyint(1) NOT NULL,
  `email_unconfirmed` varchar(254) NOT NULL,
  `email_confirmation_key` varchar(40) NOT NULL,
  `email_confirmation_key_created` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `userena_userenasignup_user_id_2c4ec74f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userena_userenasignup` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
