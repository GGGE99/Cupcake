-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

CREATE DATABASE  IF NOT EXISTS `Cupcake`;
USE `Cupcake`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  money float NOT null DEFAULT 500.00,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `topings`;
CREATE TABLE `topings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  price float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `bottom`;
CREATE TABLE `bottom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  price float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pris` float NOT NULL,
  betalt boolean NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  foreign key (user_id) references  users(id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `Cupcakes`;
CREATE TABLE `Cupcakes` (
  `order_id` int(11) NOT NULL,
  `top_id` int(11) NOT NULL,
  `bottom_id` INT(11) NOT NULL,
  foreign key (order_id) references  `order`(id),
  foreign key (top_id) references  topings(id),
  foreign key (bottom_id) references  bottom(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `users` VALUES
(1,'jens@somewhere.com','jensen','customer', 500),
(2,'ken@somewhere.com','kensen','customer' , 500),
(3,'robin@somewhere.com','batman','employee', 500);






