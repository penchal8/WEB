/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.45-community-nt : Database - ebussticket
*********************************************************************
Server version : 5.0.45-community-nt
*/


create database if not exists `ebussticket`;

USE `ebussticket`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert into `adminlogin` values 
('admin','admin');

/*Table structure for table `busseats` */

DROP TABLE IF EXISTS `busseats`;

CREATE TABLE `busseats` (
  `serviceno` varchar(50) NOT NULL,
  `busname` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `distance` float default NULL,
  `cost` float default NULL,
  `dates` date default NULL,
  `totalseat` int(11) default NULL,
  `available` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `busseats` */

insert into `busseats` values 
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-03',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-28',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-27',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-26',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-25',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-24',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-23',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-22',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-21',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-20',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-19',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-18',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-17',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-16',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-15',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-14',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-13',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-12',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-11',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-10',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-09',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-08',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-07',38,34),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-06',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-05',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-04',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-03',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-28',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-27',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-26',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-25',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-24',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-23',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-22',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-21',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-20',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-19',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-18',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-17',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-16',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-15',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-14',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-13',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-12',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-11',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-10',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-09',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-08',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-07',38,34),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-06',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-05',38,38),
('CAUS02574','Volvo AC','Fullerton','Los Angeles',45,31,'2015-11-04',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-03',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-28',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-27',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-26',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-25',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-24',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-23',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-22',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-21',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-20',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-19',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-18',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-17',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-16',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-15',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-14',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-13',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-12',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-11',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-10',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-09',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-08',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-07',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-06',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-05',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-04',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-03',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-28',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-27',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-26',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-25',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-24',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-23',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-22',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-21',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-20',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-19',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-18',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-17',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-16',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-15',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-14',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-13',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-12',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-11',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-10',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-09',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-08',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-07',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-06',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-05',38,38),
('CAUS02948','Volvo','Fullerton','Los angeloas',810,1500,'2015-11-04',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-03',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-28',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-27',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-26',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-25',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-24',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-23',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-22',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-21',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-20',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-19',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-18',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-17',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-16',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-15',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-14',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-13',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-12',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-11',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-10',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-09',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-08',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-07',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-06',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-05',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-04',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-03',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-28',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-27',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-26',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-25',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-24',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-23',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-22',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-21',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-20',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-19',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-18',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-17',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-16',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-15',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-14',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-13',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-12',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-11',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-10',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-09',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-08',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-07',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-06',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-05',38,38),
('CAUS03325','Super Luxery','Fullerton','Los angeloas',850,1200,'2015-11-04',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-03',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-28',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-27',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-26',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-25',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-24',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-23',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-22',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-21',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-20',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-19',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-18',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-17',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-16',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-15',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-14',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-13',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-12',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-11',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-10',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-09',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-08',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-07',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-06',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-05',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-04',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-03',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-28',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-27',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-26',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-25',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-24',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-23',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-22',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-21',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-20',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-19',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-18',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-17',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-16',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-15',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-14',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-13',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-12',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-11',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-10',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-09',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-08',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-07',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-06',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-05',38,38),
('CAUS03147','Super Luxery','Fullerton','Orange City',250,413,'2015-11-04',38,38);

/*Table structure for table `bussroot` */

DROP TABLE IF EXISTS `bussroot`;

CREATE TABLE `bussroot` (
  `id` int(11) NOT NULL auto_increment,
  `sourcecity` varchar(50) NOT NULL,
  `sourcestate` varchar(50) NOT NULL,
  `distance` float NOT NULL,
  `destinationcity` varchar(50) NOT NULL,
  `desinationstate` varchar(50) NOT NULL,
  `cost` float NOT NULL,
  `serviceno` varchar(50) NOT NULL,
  `busname` varchar(50) NOT NULL,
  `busstatus` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sourcecity` (`sourcecity`,`sourcestate`,`distance`,`destinationcity`,`desinationstate`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `bussroot` */

insert into `bussroot` values 
(3,'Fullerton','California',250,'Orange City','California',413,'CAUS03147','Super Luxery','yes'),
(20,'Fullerton','California',850,'Los angeloas','California',1200,'CAUS03325','Super Luxery','yes'),
(21,'Fullerton','California',810,'Los angeloas','California',1500,'CAUS02948','Volvo','yes'),
(22,'Fullerton','CA',45,'Los Angeles','CA',31,'CAUS02574','Volvo AC','yes');

/*Table structure for table `bussticketsingleperson` */

DROP TABLE IF EXISTS `bussticketsingleperson`;

CREATE TABLE `bussticketsingleperson` (
  `ticketnumber` int(11) NOT NULL,
  `no_of_passenger` int(11) NOT NULL,
  `booking_user` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `boardingpoint` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `booking_date` date default NULL,
  `dateof_journey` date default NULL,
  `booking_usertype` varchar(50) NOT NULL,
  `personName` varchar(50) NOT NULL,
  `personage` int(11) default NULL,
  `personGender` varchar(50) NOT NULL,
  `personpassport` varchar(50) NOT NULL,
  `mobileNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `TotalTicketFare` float NOT NULL,
  `seatnumber` int(11) default NULL,
  PRIMARY KEY  (`ticketnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bussticketsingleperson` */

insert into `bussticketsingleperson` values 
(1584031,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-28','Employee','Nalanda',23,'female','Tdd@33','9030817786','mystrengthha@gmail.com',1500,0),
(1982884,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Student','Harshida',23,'female','PB12312','9030817786','ramu.maloth5@gmail.com',1500,NULL),
(1986758,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Student','Harsha',23,'male','PB12312','9030817786','ramu.maloth5@gmail.com',1500,32),
(2197442,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-30','Employee','Himavarsha',24,'female','PBSD2213','9059025614','lx160cm@gmail.com',1500,36),
(2319019,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Student','Harshida',23,'female','','9030817786','ramu.maloth5@gmail.com',0,NULL),
(2444220,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Student','Anil Varma',23,'female','MyPc','9030817786','ramu.maloth5@gmail.com',1500,30),
(2453611,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Student','Anil Varma',23,'female','PB12312','9030817786','mystrengthha@gmail.com',1500,0),
(2459922,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Employee','Chanti',25,'male','myPassport','9030817786','mystrengthha@gmail.com',1500,NULL),
(2526044,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Employee','RaghuNAth',23,'male','MyPc','9030817786','venubabu0539@gmail.com',1500,0),
(2557416,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Student','Harshida',23,'female','PB12312','9030817786','ramu.maloth5@gmail.com',0,NULL),
(2646207,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Employee','RaghuNAth',23,'male','MyPc','9030817786','venubabu0539@gmail.com',1500,0),
(2667222,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Student','Harshida',23,'female','PB12312','9030817786','ramu.maloth5@gmail.com',1500,31),
(2777600,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-30','Employee','Harshida',23,'female','myPassport','9030817786','ramu.maloth5@gmail.com',1500,37),
(2883283,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Employee','Anil Varma',24,'female','myPassport','9030817786','lx160cm@gmail.com',0,NULL),
(2885815,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Student','Harshida',23,'female','PB12312','9030817786','ramu.maloth5@gmail.com',1500,NULL),
(2970261,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Student','Harshida',23,'female','PB12312','9030817786','ramu.maloth5@gmail.com',1500,NULL),
(2996477,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Employee','Chanti',25,'male','myPassport','9030817786','mystrengthha@gmail.com',1500,NULL),
(3206583,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-27','2015-07-28','Student','Harshida',23,'female','PB12312','9030817786','ramu.maloth5@gmail.com',0,NULL),
(3325880,1,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-28','2015-07-29','Employee','Arun Jaitly',23,'male','My Pass','984900021','sonu@gmail.com',1500,0);

/*Table structure for table `busticketmultipleusers` */

DROP TABLE IF EXISTS `busticketmultipleusers`;

CREATE TABLE `busticketmultipleusers` (
  `ticketnumber` int(11) NOT NULL,
  `no_of_passenger` int(11) NOT NULL,
  `booking_user` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `boardingpoint` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `booking_date` date default NULL,
  `dateof_journey` date default NULL,
  `booking_usertype` varchar(50) NOT NULL,
  `noofadults` int(11) NOT NULL,
  `adultNamea` varchar(50) NOT NULL,
  `adultsagea` varchar(100) default NULL,
  `adultsGendera` varchar(50) NOT NULL,
  `adultspassports` varchar(50) NOT NULL,
  `adultfare` float NOT NULL,
  `noofseniours` int(11) NOT NULL,
  `seniourNamea` varchar(50) NOT NULL,
  `senioursagea` varchar(100) default NULL,
  `seniourGendera` varchar(50) NOT NULL,
  `seniourpassports` varchar(50) NOT NULL,
  `seniourfare` float NOT NULL,
  `noofchilds` int(11) NOT NULL,
  `childNames` varchar(50) NOT NULL,
  `childfares` float default NULL,
  `mobileNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `TotalTicketFare` float NOT NULL,
  `TotalSeats` varchar(11) default NULL,
  PRIMARY KEY  (`ticketnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `busticketmultipleusers` */

insert into `busticketmultipleusers` values 
(2020634,4,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-30','2015-07-31','Employee',2,'Mani/Yata Manikyam/','28/23/','female/male/','PBDt55/PBDt55/',2925,1,'Suman Chary/','56/','female/','GGGGg/',1462.5,1,'Shaik/',1462.5,'9030817786','ramu.maloth5@gmail.com',5118.75,''),
(2040045,4,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-30','2015-07-31','Employee',2,'Sundaram/Yata Manikyam/','28/28/','male/male/','PBDt55/PBDt55/',2925,0,'0','0','0','0',0,2,'Shaik/Hanif/',0,'9030817786','ramu.maloth5@gmail.com',3656.25,'4'),
(2141720,5,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-30','2015-07-31','Student',2,'Sundaram/Yata Manikyam/','23/28/','female/male/','PBDt55/PBDt55/',2700,2,'Suman Chary/Suman Chary/','56/56/','female/male/','GGGGg/GGGGg/',2700,1,'Shaik',2700,'9030817786','ramu.maloth5@gmail.com',6075,'5'),
(2152591,2,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-30','2015-07-31','Student',1,'Yata Manikyam/','23/','female/','PBDt55/',1350,0,'0','0','0','0',0,1,'Sindhu',0,'9059025614','sonu@gmail.com',2025,'2'),
(2337024,5,'shiva','EBUSS002583','CATRN2776','TGV','Fulerton','Los angeloas','2015-07-30','2015-07-31','Employee',2,'Yata Manikyam/Yata Manikyam/','23/23/','female/male/','PBDt55/PBDt55/',1735.5,2,'Nikhil/Suman Chary/','56/56/','female/male/','GGGGg/GGGGg/',1735.5,1,'Shaik/',1735.5,'9030817786','mystrengthha@gmail.com',3904.88,''),
(2448399,5,'shiva','EBUSS002583','CATRN2458','gomathi','Secundrabad','guntur','2015-08-17','2015-08-18','Employee',2,'Shiva/Alekya/','30/28/','male/female/','SB12345/Ap4431/',565.5,2,'Anupkumar/Dilip/','65/64/','male/male/','DD222/sdsdsd/',565.5,1,'Prem/',565.5,'9849098490','ramu.datapoint@gmail.com',1272.38,''),
(2452913,4,'shiva','EBUSS002583','CAUS03147','Super Luxery','Fulerton','Orange City','2015-08-31','2015-09-03','Employee',2,'Shiva M/Manush/','30/28/','male/female/','APS221/TGS112/',805.35,1,'Kapil Dev/','64/','male/','Ind112/',402.675,1,'Suman@gmail.com/',402.675,'9849098490','lx160cm@gmail.com',1409.36,'4'),
(2483919,3,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-30','2015-07-31','Employee',1,'Yata Manikyam/','23/','female/','Pas1123/',1462.5,0,'0','0','0','0',0,2,'MustafaKiran',0,'9030817786','lx160cm@gmail.com',2193.75,'3'),
(2498392,5,'shiva','EBUSS002583','CAUS02948','Volvo','Fulerton','Los angeloas','2015-07-31','2015-08-01','Employee',2,'Yata Manikyam/Vunissa/','28/25/','male/female/','PSBDMQ112/PBDt55/',2925,1,'Casandra/','56/','female/','DDFF564/',1462.5,2,'Sindhu/Nikhil/',1462.5,'9030817786','lx160cm@gmail.com',5118.75,'5'),
(2614887,4,'varshini','EBUSS002691','CAUS02574','Volvo AC','Fullerton','Los Angeles','2015-11-03','2015-11-07','Student',2,'Varshini Mehatha/Maduri/','24/24/','female/female/','2547888/2233544/',55.8,1,'kalyan/','65/','male/','6658777/',27.9,1,'Manjesh/',27.9,'1788278721','varunkumar@gmail.com',97.65,'4'),
(3113391,4,'shiva','EBUSS002583','CATRN2776','TGV','Fulerton','Los angeloas','2015-07-30','2015-07-31','Employee',2,'Yata Manikyam/Yata Manikyam/','23/23/','female/female/','PBDt55/PBDt55/',1735.5,1,'Nikhil/','56/','female/','GGGGg/',867.75,1,'Shaik/',867.75,'9030817786','ramu.maloth5@gmail.com',3037.13,'');

/*Table structure for table `contactinfo` */

DROP TABLE IF EXISTS `contactinfo`;

CREATE TABLE `contactinfo` (
  `author` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subjects` varchar(30) NOT NULL,
  `data` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contactinfo` */

insert into `contactinfo` values 
('Alex','lx160cm@gmail.com','Make Use Of waste','This is a Glory of the Art. This is a Glory of the Art.\r\nThis is a Glory of the Art.\r\nThis is a Glory of the Art.\r\nThis is a Glory of the Art.');

/*Table structure for table `fooddetails` */

DROP TABLE IF EXISTS `fooddetails`;

CREATE TABLE `fooddetails` (
  `ticketId` varchar(50) NOT NULL,
  `buser` varchar(50) NOT NULL,
  `breakfast` varchar(20) NOT NULL,
  `bquanty` int(11) default NULL,
  `lunch` varchar(20) NOT NULL,
  `lunchquantity` int(11) default NULL,
  `dinner` varchar(20) NOT NULL,
  `dinnerquant` int(11) default NULL,
  `cost` float default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fooddetails` */

insert into `fooddetails` values 
('2452913','shiva','breakfast',3,'lunch',3,'dinner',3,108.3),
('2614887','varshini','breakfast',3,'lunch',1,'dinner',1,53.1);

/*Table structure for table `logintable` */

DROP TABLE IF EXISTS `logintable`;

CREATE TABLE `logintable` (
  `sid` varchar(40) NOT NULL,
  `loginname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `logintable` */

insert into `logintable` values 
('EBUSS002691','varshini','varshini','Student'),
('EBUSS002426','nikhil','nikhil','Student'),
('EBUSS002015','sdsd','sdsd','Employee'),
('EBUSS002583','shiva','shiva','Employee'),
('EBUSS001653','539','harshida','Employee');

/*Table structure for table `lugaggedetails` */

DROP TABLE IF EXISTS `lugaggedetails`;

CREATE TABLE `lugaggedetails` (
  `ticketId` varchar(50) NOT NULL,
  `buser` varchar(50) NOT NULL,
  `luggagetype` varchar(100) NOT NULL,
  `luggagequantity` varchar(100) NOT NULL,
  `approxwait` varchar(100) NOT NULL,
  `cost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lugaggedetails` */

insert into `lugaggedetails` values 
('2452913','shiva','Bags','3','78kgs','$49.8'),
('2614887','varshini','Back Bag','4','65lbs','$49.8');

/*Table structure for table `rootpass` */

DROP TABLE IF EXISTS `rootpass`;

CREATE TABLE `rootpass` (
  `startpoint` varchar(100) NOT NULL,
  `startingstopname` varchar(100) NOT NULL,
  `firstRootNumber` varchar(100) NOT NULL,
  `firstrootCost` float NOT NULL,
  `firstgetdownstop` varchar(100) NOT NULL,
  `firstwalkdistance` varchar(100) NOT NULL,
  `firsttrainstationname` varchar(100) NOT NULL,
  `firsttrainname` varchar(100) NOT NULL,
  `secondcost` float NOT NULL,
  `getdowntrainstopname` varchar(100) NOT NULL,
  `secondwalkdistance` varchar(100) NOT NULL,
  `secondgetInBusnumber` varchar(100) NOT NULL,
  `thirdcost` float NOT NULL,
  `destination` varchar(100) NOT NULL,
  `totalcost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rootpass` */

insert into `rootpass` values 
('Yorba','AES College','54',1.3,'artcollege','3 min','Jamai Osmania','CSUB221',1.7,'Falaknama','5min','43',1,'VNR College',4);

/*Table structure for table `routepassdata` */

DROP TABLE IF EXISTS `routepassdata`;

CREATE TABLE `routepassdata` (
  `passid` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `startpoint` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `startdate` date default NULL,
  `typeofpass` varchar(30) NOT NULL,
  `totalcost` float default NULL,
  `dateofbooking` date default NULL,
  `creditcarc` varchar(40) NOT NULL,
  `cvv` varchar(30) NOT NULL,
  `mm` varchar(30) NOT NULL,
  `yyyy` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `waypoints` varchar(800) NOT NULL,
  UNIQUE KEY `user` (`user`,`startdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `routepassdata` */

insert into `routepassdata` values 
('EBUSSR001775','shiva','AES College','VNR College','2015-08-16','Weekly Pass',234.5,'2015-08-11','1111111111111111','236','12','2020','lx160cm@gmail.com','artcollege</b> Train CSUB221 Walk 3 min Get Down at Falaknama Walk Distance 5min Bus No43'),
('EBUSSR002085','varshini','AES College','VNR College','2015-08-17','Day Pass',33.5,'2015-08-17','1111111111111111','122','12','2020','lx160cm@gmail.com','artcollege</b> Train CSUB221 Walk 3 min Get Down at Falaknama Walk Distance 5min Bus No43'),
('EBUSSR002409','shiva','AES College','VNR College','2015-09-26','Monthly',1005,'2015-08-29','1111111111111111','223','12','2020','ramu.maloth5@gmail.com','artcollege</b> Train CSUB221 Walk 3 min Get Down at Falaknama Walk Distance 5min Bus No43'),
('EBUSSR002482','varshini','AES College','VNR College','2015-11-04','Monthly',120,'2015-11-04','1122332244556677','223','12','2020','varunkumar@gmail.com','artcollege</b> Train CSUB221 Walk 3 min Get Down at Falaknama Walk Distance 5min Bus No43');

/*Table structure for table `studentregister` */

DROP TABLE IF EXISTS `studentregister`;

CREATE TABLE `studentregister` (
  `sid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `loginname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `collegename` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `university` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `hallticket` varchar(50) NOT NULL,
  `sunique` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `registerdate` date NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY  (`loginname`),
  UNIQUE KEY `sunique` (`sunique`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentregister` */

insert into `studentregister` values 
('EBUSS001653','Harshida','539','harshida','Infy College','sr nagar','KLU','hyderabad','telangana','522203','9988774450','236541289','harshida.datapoint@gmail.com','99966332210','2015-07-21','Employee'),
('EBUSS002426','Nikhil','nikhil','nikhil','california mtech','Fullerton','CSU','California','california','567','CSU112','CSU112','665nikhil@gmail.com','9849098490','2015-06-11','Student'),
('EBUSS002583','shiva','shiva','shiva','Infy College','Hyderabad','JNTU','Fullerton','California','500022','04042402591','332321','mystrengthha@gmail.com','9963692386','2015-07-20','Employee'),
('EBUSS002691','varshini','varshini','varshini','california mtech','california State','california state university','delaware','california','550','ht22331','california112','varshini@gmail.com','33121123','2015-05-28','Student');

/*Table structure for table `trainroot` */

DROP TABLE IF EXISTS `trainroot`;

CREATE TABLE `trainroot` (
  `id` int(11) NOT NULL auto_increment,
  `sourcecity` varchar(50) NOT NULL,
  `sourcestate` varchar(50) NOT NULL,
  `distance` float NOT NULL,
  `destinationcity` varchar(50) NOT NULL,
  `desinationstate` varchar(50) NOT NULL,
  `cost` float NOT NULL,
  `trainno` varchar(50) NOT NULL,
  `trainname` varchar(50) NOT NULL,
  `seatstatus` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sourcecity` (`sourcecity`,`sourcestate`,`distance`,`destinationcity`,`desinationstate`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `trainroot` */

insert into `trainroot` values 
(4,'Fullerton','California',250,'Orange City','California',413,'CATRN2804','Duramtho','yes'),
(18,'Fullerton','California',890,'Los angeloas','California',1200,'CATRN2776','TGV','yes'),
(19,'Fullerton','California',850,'Los angeloas','California',1200,'CATRN2192','Buller Jet','yes'),
(20,'Fullerton','CA',80,'Los Angeles','CA',24,'CATRN3021','CCX','yes');

/*Table structure for table `trainseats` */

DROP TABLE IF EXISTS `trainseats`;

CREATE TABLE `trainseats` (
  `trainno` varchar(50) NOT NULL,
  `trainname` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `cost` float NOT NULL,
  `distance` float NOT NULL,
  `dates` date default NULL,
  `totalseat` int(11) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trainseats` */

insert into `trainseats` values 
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-17',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-11',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-17',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-10',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-11',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-09',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-10',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-08',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-09',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-07',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-08',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-06',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-07',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-05',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-06',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-04',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-05',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-03',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-04',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-02',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-03',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-01',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-02',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-31',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-01',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-30',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-31',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-29',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-30',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-28',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-29',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-27',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-28',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-26',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-27',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-25',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-26',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-24',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-25',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-23',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-24',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-22',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-23',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-21',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-22',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-20',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-21',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-19',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-20',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-18',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-19',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-17',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-18',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-11',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-17',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-10',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-11',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-09',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-10',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-08',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-09',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-07',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-08',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-06',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-07',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-05',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-06',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-04',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-05',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-03',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-04',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-02',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-03',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-01',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-02',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-31',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-08-01',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-30',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-31',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-29',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-30',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-28',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-29',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-27',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-28',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-26',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-27',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-25',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-26',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-24',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-25',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-23',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-24',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-22',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-23',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-21',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-22',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-20',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-21',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-19',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-20',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-18',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-19',300,300),
('CATRN2805','Chapra','Secunderbad','Mumbai',980,280,'2015-07-18',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-17',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-11',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-10',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-09',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-08',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-07',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-06',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-05',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-04',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-03',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-02',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-01',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-31',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-30',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-29',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-28',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-27',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-26',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-25',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-24',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-23',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-22',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-21',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-20',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-19',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-18',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-17',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-11',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-10',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-09',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-08',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-07',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-06',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-05',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-04',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-03',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-02',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-08-01',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-31',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-30',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-29',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-28',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-27',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-26',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-25',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-24',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-23',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-22',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-21',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-20',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-19',300,300),
('CATRN2455','Ap Superfast','Secunderbad','Delhi',1650,380,'2015-07-18',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-20',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-14',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-13',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-12',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-11',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-10',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-09',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-08',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-07',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-06',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-05',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-04',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-03',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-02',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-01',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-31',300,291),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-30',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-29',300,299),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-28',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-27',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-26',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-25',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-24',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-23',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-22',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-21',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-20',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-13',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-12',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-11',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-10',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-09',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-08',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-07',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-06',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-05',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-04',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-03',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-02',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-08-01',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-31',300,291),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-30',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-29',300,299),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-28',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-27',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-26',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-25',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-24',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-23',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-22',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-21',300,300),
('CATRN2776','TGV','Fulerton','Los angeloas',890,1200,'2015-07-20',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-20',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-14',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-13',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-12',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-11',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-10',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-09',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-08',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-07',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-06',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-05',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-04',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-03',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-02',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-01',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-31',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-30',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-29',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-28',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-27',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-26',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-25',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-24',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-23',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-22',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-21',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-20',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-13',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-12',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-11',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-10',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-09',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-08',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-07',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-06',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-05',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-04',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-03',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-02',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-08-01',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-31',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-30',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-29',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-28',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-27',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-26',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-25',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-24',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-23',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-22',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-21',300,300),
('CATRN2192','Buller Jet','Fulerton','Los angeloas',850,1200,'2015-07-20',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-07-31',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-25',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-24',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-23',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-22',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-21',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-20',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-19',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-18',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-17',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-16',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-15',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-14',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-13',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-12',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-11',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-10',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-09',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-08',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-07',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-06',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-05',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-04',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-03',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-02',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-01',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-07-31',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-25',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-24',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-23',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-22',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-21',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-20',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-19',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-18',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-17',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-16',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-15',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-14',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-13',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-12',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-11',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-10',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-09',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-08',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-07',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-06',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-05',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-04',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-03',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-02',300,300),
('CATRN2804','Duramtho','Fulerton','Orange City',250,413,'2015-08-01',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-07-31',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-25',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-24',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-23',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-22',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-21',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-20',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-19',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-18',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-17',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-16',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-15',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-14',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-13',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-12',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-11',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-10',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-09',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-08',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-07',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-06',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-05',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-04',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-03',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-02',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-01',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-07-31',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-25',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-24',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-23',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-22',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-21',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-20',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-19',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-18',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-17',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-16',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-15',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-14',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-13',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-12',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-11',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-10',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-09',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-08',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-07',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-06',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-05',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-04',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-03',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-02',300,300),
('CATRN2212','go','Secundrabad','bilar',785,7556,'2015-08-01',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-17',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-11',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-10',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-09',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-08',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-07',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-06',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-05',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-04',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-03',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-02',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-01',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-31',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-30',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-29',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-28',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-27',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-26',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-25',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-24',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-23',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-22',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-21',300,295),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-20',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-19',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-18',300,295),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-17',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-10',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-09',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-08',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-07',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-06',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-05',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-04',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-03',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-02',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-09-01',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-31',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-30',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-29',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-28',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-27',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-26',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-25',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-24',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-23',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-22',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-21',300,295),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-20',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-19',300,300),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-18',300,295),
('CATRN2458','gomathi','Secundrabad','guntur',290,100,'2015-08-17',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-03',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-28',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-27',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-26',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-25',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-24',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-23',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-22',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-21',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-20',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-19',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-18',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-17',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-16',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-15',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-14',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-13',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-12',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-11',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-10',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-09',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-08',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-07',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-06',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-05',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-04',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-03',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-28',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-27',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-26',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-25',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-24',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-23',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-22',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-21',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-20',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-19',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-18',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-17',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-16',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-15',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-14',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-13',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-12',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-11',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-10',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-09',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-08',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-07',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-06',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-05',300,300),
('CATRN3021','CCX','Fullerton','Los Angeles',80,24,'2015-11-04',300,300);

/*Table structure for table `trainticketmultipleusers` */

DROP TABLE IF EXISTS `trainticketmultipleusers`;

CREATE TABLE `trainticketmultipleusers` (
  `ticketnumber` int(11) NOT NULL,
  `no_of_passenger` int(11) NOT NULL,
  `booking_user` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `boardingpoint` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `booking_date` date default NULL,
  `dateof_journey` date default NULL,
  `booking_usertype` varchar(50) NOT NULL,
  `noofadults` int(11) NOT NULL,
  `adultNamea` varchar(50) NOT NULL,
  `adultsagea` varchar(100) default NULL,
  `adultsGendera` varchar(50) NOT NULL,
  `adultspassports` varchar(50) NOT NULL,
  `adultfare` float NOT NULL,
  `noofseniours` int(11) NOT NULL,
  `seniourNamea` varchar(50) NOT NULL,
  `senioursagea` varchar(100) default NULL,
  `seniourGendera` varchar(50) NOT NULL,
  `seniourpassports` varchar(50) NOT NULL,
  `seniourfare` float NOT NULL,
  `noofchilds` int(11) NOT NULL,
  `childNames` varchar(50) NOT NULL,
  `childfares` float default NULL,
  `mobileNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `TotalTicketFare` float NOT NULL,
  `TotalSeats` varchar(11) default NULL,
  PRIMARY KEY  (`ticketnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trainticketmultipleusers` */

insert into `trainticketmultipleusers` values 
(2645520,5,'shiva','EBUSS002583','CATRN2458','gomathi','Secundrabad','guntur','2015-08-17','2015-08-21','Employee',2,'Narun/Samala/','31/28/','male/female/','Ap22311/Ap44311/',565.5,1,'Great Pacq/','65/','male/','DD222/',282.75,2,'Prem/Varish/',282.75,'9849098490','sandhya.hnk@gmail.com',989.625,'5');

/*Table structure for table `trainticketsingleperson` */

DROP TABLE IF EXISTS `trainticketsingleperson`;

CREATE TABLE `trainticketsingleperson` (
  `ticketnumber` int(11) NOT NULL,
  `no_of_passenger` int(11) NOT NULL,
  `booking_user` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `boardingpoint` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `booking_date` date default NULL,
  `dateof_journey` date default NULL,
  `booking_usertype` varchar(50) NOT NULL,
  `personName` varchar(50) NOT NULL,
  `personage` int(11) default NULL,
  `personGender` varchar(50) NOT NULL,
  `personpassport` varchar(50) NOT NULL,
  `mobileNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `TotalTicketFare` float NOT NULL,
  `seatnumber` int(11) default NULL,
  PRIMARY KEY  (`ticketnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trainticketsingleperson` */

insert into `trainticketsingleperson` values 
(2156365,1,'shiva','EBUSS002583','CATRN2776','TGV','Fulerton','Los angeloas','2015-07-28','2015-07-29','Student','Arun Vadedkar',23,'male','myPassport','9030817786','ramu.maloth5@gmail.com',890,299);
