/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - identity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`identity` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `identity`;

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `owner` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `id` varchar(1000) default NULL,
  `date` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `hashcode` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

/*Table structure for table `dataowner` */

DROP TABLE IF EXISTS `dataowner`;

CREATE TABLE `dataowner` (
  `id` varchar(1000) default NULL,
  `name` varchar(1000) default NULL,
  `emailid` varchar(1000) default NULL,
  `dateof birth` varchar(1000) default NULL,
  `gender` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `city` varchar(1000) default NULL,
  `country` varchar(1000) default NULL,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `skey` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataowner` */

insert  into `dataowner`(`id`,`name`,`emailid`,`dateof birth`,`gender`,`mobile`,`city`,`country`,`username`,`password`,`status`,`skey`) values ('DOID-436700','kishan','kishangadicherla@gmail.com','11-11-2109','Male','1234567890','HYD','india','kishangadicherla','kishan','keygenerated','83219');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `file` longblob NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `filetype` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `CDate` date NOT NULL,
  `owner` varchar(45) NOT NULL,
  `size` longtext NOT NULL,
  `data` mediumtext,
  `frank` varchar(45) default NULL,
  `file_key` varchar(45) NOT NULL,
  `description` varchar(100) default NULL,
  `hashcode` varchar(100) default NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `files` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
