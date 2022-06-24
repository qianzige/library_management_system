/*
SQLyog v10.2 
MySQL - 5.0.16 : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL auto_increment,
  `book_name` varchar(80) default NULL,
  `author` varchar(80) default NULL,
  `price` int(11) NOT NULL default '0',
  `type` varchar(80) default NULL,
  `book_press` varchar(80) default NULL COMMENT '出版社',
  `stock` int(11) default '0' COMMENT '库存',
  `is_lend` int(11) default '0',
  `details` varchar(252) default NULL COMMENT '详情描述',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`id`,`book_name`,`author`,`price`,`type`,`book_press`,`stock`,`is_lend`,`details`) values (1,'大主宰7','222',152,'玄幻','2222',6,0,'咱们就是说这书很离谱，但是还是挺好看的哈哈哈哈哈哈'),(2,'元尊','111',666,'玄幻','666',8,0,NULL),(3,'完美世界','辰东',65,'玄幻','红旗',8,0,NULL),(4,'999','99',999,'999','99',7,0,NULL),(6,'777','777',777,'777','77',3,0,NULL),(9,'仙逆222','东野圭吾12',552,'玄幻222','不知道22',8,0,'不知道不知道不知道不知道不知道2');

/*Table structure for table `lend_list` */

DROP TABLE IF EXISTS `lend_list`;

CREATE TABLE `lend_list` (
  `id` int(11) NOT NULL auto_increment,
  `sernum` varchar(80) NOT NULL COMMENT '流水号',
  `book_id` int(11) NOT NULL COMMENT '图书号',
  `lend_date` date default NULL COMMENT '借出日期',
  `return_date` date default NULL COMMENT '应还日期',
  `reason` varchar(80) default NULL COMMENT '借阅原因',
  `reader_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `lend_list` */

insert  into `lend_list`(`id`,`sernum`,`book_id`,`lend_date`,`return_date`,`reason`,`reader_id`) values (6,'I3CW8Zn3',4,'2022-06-14','2022-06-04','ww',1);

/*Table structure for table `reader` */

DROP TABLE IF EXISTS `reader`;

CREATE TABLE `reader` (
  `id` int(11) NOT NULL auto_increment,
  `reader_name` varchar(80) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reader` */

insert  into `reader`(`id`,`reader_name`) values (1,'李大钊1'),(3,'哈哈真神奇');

/*Table structure for table `return_list` */

DROP TABLE IF EXISTS `return_list`;

CREATE TABLE `return_list` (
  `id` int(11) NOT NULL auto_increment,
  `sernum` varchar(80) NOT NULL,
  `book_id` int(11) NOT NULL,
  `return_date` date default NULL,
  `reader_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `return_list` */

insert  into `return_list`(`id`,`sernum`,`book_id`,`return_date`,`reader_id`) values (3,'8o7p5uwf',1,'2022-06-14',3);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`) values (1,'admin','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
