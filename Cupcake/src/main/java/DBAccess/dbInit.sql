-- noinspection SqlDialectInspectionForFile

-- noinspection SqlNoDataSourceInspectionForFile

CREATE DATABASE  IF NOT EXISTS `Cupcake`;
USE `Cupcake`;
SET GLOBAL time_zone = '+1:00';
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'customer',
  money float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `topings`;
CREATE TABLE `topings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  price float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `bottom`;
CREATE TABLE `bottom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  price float NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `ordrer`;
CREATE TABLE `ordrer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pris` float NOT NULL,
  betalt boolean NOT null,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  foreign key (user_id) references  users(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `Cupcakes`;
CREATE TABLE `Cupcakes` (
  `order_id` int(11) NOT NULL,
  `top_id` int(11) NOT NULL,
  `bottom_id` INT(11) NOT NULL,
  foreign key (order_id) references  `ordrer`(id),
  foreign key (top_id) references  topings(id),
  foreign key (bottom_id) references  bottom(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO bottom (name, price) VALUES
('Chocolate', 5),
('Vanilla', 5),
('Nutmeg', 5),
('Pistacio', 6),
('Almons', 6);

INSERT INTO topings (name, price) VALUES
('Chocolate',5),
('Blueberry',5),
('Rasberry',5),
('Crispy',6),
('Strawberry',6),
('Rum/Raisin',7),
('Orange',8),
('Lemon',8),
('Cream Cheese',9);

INSERT INTO `users` VALUES
(1,'jens@somewhere.com','jensen','customer', 500),
(2,'ken@somewhere.com','kensen','customer' , 500),
(3,'robin@somewhere.com','batman','employee', 500);

INSERT INTO `ordrer` VALUES(null,1,10, false);


