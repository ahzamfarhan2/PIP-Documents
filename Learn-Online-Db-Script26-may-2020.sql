-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.17 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test_db
DROP DATABASE IF EXISTS `test_db`;
CREATE DATABASE IF NOT EXISTS `test_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test_db`;

-- Dumping structure for table test_db.authorities
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `authority_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.authorities: 3 rows
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` (`authority_id`, `name`) VALUES
	(1, 'READ_AUTHORITY'),
	(2, 'WRITE_AUTHORITY'),
	(3, 'DELETE_AUTHORITY');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;

-- Dumping structure for table test_db.courses
DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chapters` int(11) DEFAULT NULL,
  `course_key` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `description` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `duration_in_hrs` int(11) DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.courses: 19 rows
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`course_id`, `chapters`, `course_key`, `course_name`, `creation_date`, `description`, `domain`, `duration_in_hrs`, `last_update_date`, `price`, `rating`) VALUES
	(1, 200, '2e552bb07890a68f4563bc2beaa1a8227aae55106f202494d570cb5ab8ce5fb0', 'Spring Boot Fundamentals', '2018-06-10', 'I was given an assignment to start working on a spring boot project and this course gave me all the skills required to start working a spring boot project. All through the course, Bharath maintains the same pace, enthusiasm. You will definitely enjoy the course. Go for it without any doubt if you want to quickly learn spring boot with sufficient details. Thanks Bharath - Venu Reddy', 'Java', 500, '2020-01-01', 420, 4.7),
	(2, 100, 'ea699a8b09c3c99a9d67a7b6e00304c3605df81c1d578ff6f7f8ce63bc5b9acb', 'The Web Developer BootCamp', '2019-01-01', 'Just updated to include Bootstrap 4.1.3! Hi! Welcome to the Web Developer Bootcamp, the only course you need to learn web development. There are a lot of options for online developer training, but this course is without a doubt the most comprehensive and effective on the market.  ', 'UI', 150, '2019-10-30', 420, 5),
	(3, 180, 'd483bf6fad787dd0210d1ebd8dc8cd17651d673996f561f1173a578e4e6a9a4e', 'Spring & Hibernate for Beginners (includes Spring Boot)', '2016-09-28', 'Spring 5: Learn Spring 5 Core, AOP, Spring MVC, Spring Security, Spring REST, Spring Boot 2, Thymeleaf, JPA & Hibernate. SPRING BOOT SECTION NOW INCLUDES OVER 6.5 HOURS OF NEW VIDEOS 1 BEST SELLING SPRING-HIBERNATE COURSE ON UDEMY - OVER 38,000 REVIEWS - 5 STARS!', 'Java', 200, '2010-08-28', 420, 5),
	(4, 220, '21a0e835e26afdb69342060084641f61913cd9db4fe5f63addc7a438ebee420f', 'Java 8 New Features In Simple Way', '2017-11-10', 'Direct Class Room Videos To give Left and Right Anywhere about Lambda Expressions,Streams and More. Java 8 is one of the major and more prestigious version from Java. In this video tutorials we covered every topic  in detail on the board and on the system with live execution. Definitely you can feel like you are learning in class room directly from the instructor. As the part of this course we are covering     the following 11 topics.', 'Java', 400, '2020-03-10', 420, 4),
	(5, 150, '7a84d7b03398b0978e9bcf23e3a7a102e397b1236141ee71d9b5c8ecda6d9ad6', 'Java Memory Management', '2020-01-01', 'What Java professionals need to know about memory, garbage collection, tuning the VM, and avoiding memory leaks. This is a course for Java professionals (or aspiring Java professionals) who need an in depth understanding of how memory works in Java. In this course you\'ll learn what kinds of memory leaks are possible in Java, and how to avoid them. In addition I\'ll show you tools you can use to analyse how your applications are performing, and detect inefficient memory use, such as objects which are taking up too much memory, or problems causing inefficient garbage collection. And we\'ll see how to fix these. You don\'t need to be a Java Expert to do this course, but you should be able to confidently create basic Java code before you start.', 'Java', 300, '2020-10-30', 500, 4.8),
	(7, 200, '3e633d515cb7e087749d52f2f95567ded8b326928c7ad876e32939a26717046e', 'Spring Framework 5: Beginner to Guru', '2018-02-20', 'Spring Framework 5: Learn Spring Framework 5, Spring Boot 2, Spring MVC, Spring Data JPA, Spring Data MongoDB, Hibernate', 'Java', 800, '2020-04-28', 500, 4.4),
	(9, 700, '9c5cc53951c1ed7fa9739128a0f2249c50749fe1dc48db8babde6a6ce281139a', 'Microsoft Excel - Advanced Excel Formulas & Functions', '2018-01-01', 'Master 75+ Excel formulas with hands-on demos from a best-selling Microsoft Excel instructor (Excel \'07 - Excel 2019)', 'Microsoft', 450, '2019-01-12', 430, 4.8),
	(8, 500, '67a7b6e00304c3605df81c1d578ff6f7f8ce63bc5b9acb0210d1ebd8aae56fad7', 'Angular - The Complete Guide (2020 Edition)', '2020-01-29', 'This course starts from scratch, you neither need to know Angular 1 nor Angular 2!', 'UI', 200, NULL, 420, 3),
	(10, 350, '79c987d26b34aa3759509319cba7dd7617b9d84f9b80fb9bca27826919a32cb0', 'Docker for the Absolute Beginner - Hands On - DevOps', '2020-01-10', 'Learn Docker with Hands On Coding Exercises. For beginners in DevOps', 'Docker', 345, NULL, 560, 4.8),
	(11, 400, 'f0dd5f8555a82136e0761b48764120d3cb8b045f8272ad0f65a9f2c628a3fd40', 'Docker Mastery: with Kubernetes +Swarm from a Docker Captain', '2019-01-01', 'Build, test, deploy containers with the best mega-course on Docker, Kubernetes, Compose, Swarm and Registry using DevOps', 'Docker', 250, '2020-01-29', 500, 4.3),
	(12, 300, '484fcebd4914e19f10d0c75660852ac6e9969d4c3e32e4c479ea6b6870dc814e', 'Docker and Kubernetes: The Complete Guide', '2018-05-29', 'Build, test, and deploy Docker applications with Kubernetes while learning production-style development workflows', 'Docker', 400, '2020-01-01', 300, 4.6),
	(13, 250, 'aad42cec9b7b4a4cf1c0b5f4db6cbdc0026c13972f4316adcf21f0ab4a4ade62', 'Angular Crash Course for Busy Developers', '2020-05-29', 'Have limited time to learn Angular 4 (Angular 2+)? Take this course and learn Angular in 10 hours!', 'UI', 780, NULL, 400, 5),
	(14, 300, '143ec5e24b9ff8554ded7de940b1640aee44da41e0c557f9cc781a648ae030c1', 'Build Responsive Real World Websites with HTML5 and CSS3', '2019-03-20', 'The easiest way to learn modern web design, HTML5 and CSS3 step-by-step from scratch. Design AND code a huge project.', 'UI', 400, '2020-05-29', 600, 5),
	(15, 500, '1f7109a26cb2024c126f5cc81dc40739fc65c1bb33c220511a183f6d5046c085', 'Personality development & DISC persuasion: personality 4.0', '2017-02-09', 'Personality hacks & personality development using DISC personality development in sales, marketing & your career', 'Personality', 1000, '2020-05-29', 700, 3.5),
	(16, 700, '422d631e1aa93ef6e5ab1bca624eeb88b6c39d8b6a59f483863da0c8013d89e', 'Learn Ethical Hacking From Scratch', '2018-01-10', 'Become an ethical hacker that can hack computer systems like black hat hackers and secure them like security experts.', 'Hacking', 340, '2019-12-18', 600, 5),
	(17, 600, '44eb1806f299a9adcd4e1a130da0a99c6508665a5ab12f55f452c19e982bbf24', 'Photography Masterclass: A Complete Guide to Photography', '2020-05-29', 'The Best Online Professional Photography Class: How to Take Amazing Photos for Beginners & Advanced Photographers', 'Photography', 400, '2019-05-29', 700, 4),
	(18, 300, 'c95ed381df818e73e1fb0e85d4a03d2ccf449abc97b73e4e32914ac09f08d04a', 'Build Your Own RealTime OS (RTOS) From Ground Up™ on ARM 1', '2018-10-26', 'Build Your Own RealTime Operating Systems from first principles . Practice on STM32 and TIVA C boards', 'OS', 800, '2020-05-29', 890, 5),
	(19, 140, 'bf891be28061ea1872c7230254f7f2c20435e5e3801bf4611407cb0a03ab03a0', 'Basic work skills for Linux OS', '2018-10-12', 'Basics of work with OS Linux. Main commands for work with this OS. At the end of the course student will be able to customize the production environment on the new server including installation and configuration of:', 'OS', 300, '2019-09-17', 240, 2.3),
	(20, 456, 'b1c4ac4d13406987ab69f5c96a8cc2667d2d29d8bad842f71609220f747611a2', 'Getting Started with ARM mbed OS', '2020-01-10', 'Build Embedded Firmware with the ARM Mbed OS Platform. With a practical approach, this course teaches you how develop embedded applications using the ARM mbed OS platform. The initial sections of this course provide a wide-ranging introduction to embedded systems, using the mbed and demonstrating how it can be applied to rapidly produce successful embedded designs. The latter sections introduce the concept of real-time operating systems and then go on to teach you how to build real-time embedded applications using the ARM mbed OS platform.', 'OS', 760, '2019-05-29', 700, 5);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;

-- Dumping structure for table test_db.course_orders
DROP TABLE IF EXISTS `course_orders`;
CREATE TABLE IF NOT EXISTS `course_orders` (
  `course_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_order_key` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `f_course_id` bigint(20) DEFAULT NULL,
  `f_student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`course_order_id`),
  KEY `FK3640bo8wnwrxe5egh6kriu5yo` (`f_course_id`),
  KEY `FK1m1dpg8d7vduvquhrbqwdhnm0` (`f_student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.course_orders: 1 rows
/*!40000 ALTER TABLE `course_orders` DISABLE KEYS */;
INSERT INTO `course_orders` (`course_order_id`, `course_order_key`, `creation_date`, `discount`, `last_update_date`, `rating`, `f_course_id`, `f_student_id`) VALUES
	(46, '6e85ef15fcee18626511adb1aacc0ef3c5fe21acac98fb87c34fc318f7a2da13', '2020-05-29', NULL, NULL, 5, 3, 50);
/*!40000 ALTER TABLE `course_orders` ENABLE KEYS */;

-- Dumping structure for table test_db.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.roles: 2 rows
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`role_id`, `name`) VALUES
	(1, 'ROLE_USER'),
	(2, 'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table test_db.roles_authorities
DROP TABLE IF EXISTS `roles_authorities`;
CREATE TABLE IF NOT EXISTS `roles_authorities` (
  `rol_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  KEY `FKtil46r6ck987ocefctaes7jjm` (`author_id`),
  KEY `FK34l2v9i2v1tr4lta5qwobn7fe` (`rol_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.roles_authorities: 5 rows
/*!40000 ALTER TABLE `roles_authorities` DISABLE KEYS */;
INSERT INTO `roles_authorities` (`rol_id`, `author_id`) VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(2, 3);
/*!40000 ALTER TABLE `roles_authorities` ENABLE KEYS */;

-- Dumping structure for table test_db.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `student_key` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.students: 2 rows
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`student_id`, `active`, `country`, `creation_date`, `email`, `encrypted_password`, `first_name`, `last_name`, `last_update_date`, `phone`, `state`, `student_key`, `city`) VALUES
	(48, b'1', 'India', '2020-05-26', 'admin@gmail.com', '$2a$10$nEau.nl3oFYv8LGyjGH5ue/5Unw7Qe6NEMSPxU6BrRQI4dIkXN/y6', 'Super', 'Admin', NULL, '1234567899', 'KA', '99dd322339bd790a9440f7d07d436f752521d8f78d8065639980748f378f59bf', 'Bangalore'),
	(50, b'1', 'India', '2020-05-29', 'Anwar@gmail.com', '$2a$10$5.ZjjeshlZYaLDzw56SKKOgqaMFAiwpq9YkAxObLc6c4n1ZuURmHy', 'Anwar', 'Quazi', '2020-05-29', '1988775577', 'MH', 'eb495ff4c03a26f178059999428493d1a25815071935ba351b1f954cf7cb6f95', NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for table test_db.users_roles
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `stu_id` bigint(20) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  KEY `FKrq701yrxk88ea15i2oesc7fxk` (`rol_id`),
  KEY `FKdk4rng06j249ne0osox71ysrk` (`stu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table test_db.users_roles: 15 rows
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` (`stu_id`, `rol_id`) VALUES
	(35, 2),
	(36, 2),
	(37, 2),
	(38, 2),
	(39, 2),
	(40, 2),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 2),
	(49, 1),
	(50, 1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
