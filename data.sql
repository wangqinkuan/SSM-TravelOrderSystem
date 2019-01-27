/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2019-01-25 21:56:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `carrecord`
-- ----------------------------
DROP TABLE IF EXISTS `carrecord`;
CREATE TABLE `carrecord` (
  `car_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `car` (`car_id`),
  KEY `cust_car` (`cust_id`),
  KEY `status_car` (`status_id`),
  CONSTRAINT `car` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cust_car` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status_car` FOREIGN KEY (`status_id`) REFERENCES `recordstatus` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carrecord
-- ----------------------------
INSERT INTO `carrecord` VALUES ('1', '1', '2', '2019-01-21 18:37:39', '1');
INSERT INTO `carrecord` VALUES ('2', '1', '2', '2019-01-21 20:44:05', '2');
INSERT INTO `carrecord` VALUES ('3', '1', '2', '2019-01-21 20:44:08', '3');
INSERT INTO `carrecord` VALUES ('2', '1', '2', '2019-01-21 20:44:09', '4');
INSERT INTO `carrecord` VALUES ('1', '1', '2', '2019-01-21 20:44:10', '5');
INSERT INTO `carrecord` VALUES ('3', '1', '0', '2019-01-21 23:23:55', '6');
INSERT INTO `carrecord` VALUES ('2', '1', '2', '2019-01-21 23:23:56', '7');
INSERT INTO `carrecord` VALUES ('1', '1', '2', '2019-01-25 18:28:44', '8');

-- ----------------------------
-- Table structure for `cars`
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_type_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `num_cars` int(11) NOT NULL,
  `num_avail` int(11) NOT NULL,
  `car_num` varchar(255) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `car_type` (`car_type_id`),
  CONSTRAINT `car_type` FOREIGN KEY (`car_type_id`) REFERENCES `cartype` (`car_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('1', '1', '武汉', '100', '100', '鄂A1111', '344');
INSERT INTO `cars` VALUES ('2', '2', '武汉', '100', '100', '鄂A1321', '222');
INSERT INTO `cars` VALUES ('3', '3', '苏州', '100', '99', '苏A2222', '121');
INSERT INTO `cars` VALUES ('4', '1', '武汉', '100', '100', '鄂CK222', '222');
INSERT INTO `cars` VALUES ('5', '1', '武汉', '100', '100', '鄂B1212', '333');
INSERT INTO `cars` VALUES ('6', '1', '武汉', '100', '100', '鄂A2222', '333');
INSERT INTO `cars` VALUES ('7', '2', '武汉', '100', '100', '鄂A3232', '333');
INSERT INTO `cars` VALUES ('8', '3', '武汉', '200', '200', '鄂A3222', '111');
INSERT INTO `cars` VALUES ('9', '1', '北京', '155', '133', '京A3333', '444');
INSERT INTO `cars` VALUES ('10', '3', '北京', '122', '333', '京2323', '444');
INSERT INTO `cars` VALUES ('11', '1', '北京', '1233', '1223', '京232323', '444');

-- ----------------------------
-- Table structure for `cartype`
-- ----------------------------
DROP TABLE IF EXISTS `cartype`;
CREATE TABLE `cartype` (
  `car_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_type` varchar(255) NOT NULL,
  PRIMARY KEY (`car_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartype
-- ----------------------------
INSERT INTO `cartype` VALUES ('1', '出租车');
INSERT INTO `cartype` VALUES ('2', '顺风车');
INSERT INTO `cartype` VALUES ('3', '滴滴快车');

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', '王沁宽', 'wqk', '123');
INSERT INTO `customers` VALUES ('2', '张三', 'zs', '123');
INSERT INTO `customers` VALUES ('3', '李四', 'ls', '123');

-- ----------------------------
-- Table structure for `flightrecord`
-- ----------------------------
DROP TABLE IF EXISTS `flightrecord`;
CREATE TABLE `flightrecord` (
  `flight_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `flight` (`flight_id`),
  KEY `cust` (`cust_id`),
  KEY `status` (`status_id`),
  CONSTRAINT `cust` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `flight` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status` FOREIGN KEY (`status_id`) REFERENCES `recordstatus` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flightrecord
-- ----------------------------
INSERT INTO `flightrecord` VALUES ('1', '1', '1', '2019-01-21 15:17:01', '1');
INSERT INTO `flightrecord` VALUES ('2', '1', '0', '2019-01-21 15:17:06', '2');
INSERT INTO `flightrecord` VALUES ('2', '1', '2', '2019-01-22 16:34:31', '3');
INSERT INTO `flightrecord` VALUES ('1', '1', '1', '2019-01-22 16:34:33', '4');
INSERT INTO `flightrecord` VALUES ('1', '1', '1', '2019-01-22 16:34:34', '5');
INSERT INTO `flightrecord` VALUES ('2', '1', '0', '2019-01-22 21:33:51', '6');
INSERT INTO `flightrecord` VALUES ('5', '1', '0', '2019-01-22 21:33:53', '7');
INSERT INTO `flightrecord` VALUES ('7', '1', '0', '2019-01-22 21:33:57', '8');
INSERT INTO `flightrecord` VALUES ('9', '1', '1', '2019-01-22 21:34:00', '9');
INSERT INTO `flightrecord` VALUES ('10', '1', '1', '2019-01-22 21:34:04', '10');
INSERT INTO `flightrecord` VALUES ('6', '1', '0', '2019-01-22 21:34:06', '11');
INSERT INTO `flightrecord` VALUES ('1', '1', '2', '2019-01-25 18:05:11', '12');

-- ----------------------------
-- Table structure for `flights`
-- ----------------------------
DROP TABLE IF EXISTS `flights`;
CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL AUTO_INCREMENT,
  `flight_num` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `seat_num` int(11) NOT NULL,
  `avail_num` int(11) NOT NULL,
  `from_city` varchar(50) NOT NULL,
  `ariv_city` varchar(50) NOT NULL,
  `start_date` datetime NOT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flights
-- ----------------------------
INSERT INTO `flights` VALUES ('1', 'D1011', '34', '233', '233', '武汉', '苏州', '2019-01-23 09:43:42');
INSERT INTO `flights` VALUES ('2', 'T2333', '144', '100', '98', '北京', '上海', '2019-01-17 17:43:47');
INSERT INTO `flights` VALUES ('3', 'D4343', '222', '100', '100', '上海', '南京', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('4', 'D6666', '222', '100', '100', '西安', '广州', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('5', 'D3479', '222', '100', '99', '哈尔滨', '大连', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('6', 'D6234', '222', '100', '99', '乌鲁木齐', '北京', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('7', 'D2366', '266', '100', '99', '北京', '天津', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('8', 'D4324', '234', '100', '100', '北海', '南宁', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('9', 'D9996', '222', '100', '100', '南京', '扬州', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('10', 'T3423', '434', '100', '100', '重庆', '成都', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('11', 'T6456', '666', '100', '100', '成都', '西安', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('12', 'T6343', '666', '100', '100', '北京', '吉林', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('13', 'T3786', '666', '100', '100', '武汉', '石家庄', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('14', 'T8656', '666', '100', '100', '石家庄', '大庆', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('15', 'T3116', '645', '100', '100', '武汉', '十堰', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('16', 'T3556', '645', '100', '100', '十堰', '随州', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('17', 'T6446', '634', '100', '100', '武汉', '襄阳', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('18', 'T1246', '633', '100', '100', '上海', '成都', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('19', 'T0996', '655', '100', '100', '恩施', '黄石', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('20', 'T6846', '653', '100', '100', '武汉', '长沙', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('21', 'T3434', '346', '100', '100', '长沙', '南昌', '2019-01-22 21:24:15');
INSERT INTO `flights` VALUES ('22', 'T3434', '636', '100', '100', '武汉', '郑州', '2019-01-22 21:24:15');

-- ----------------------------
-- Table structure for `hotelrecord`
-- ----------------------------
DROP TABLE IF EXISTS `hotelrecord`;
CREATE TABLE `hotelrecord` (
  `hotel_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `hotel` (`hotel_id`),
  KEY `cust_hotel` (`cust_id`),
  KEY `status_hotel` (`status_id`),
  CONSTRAINT `cust_hotel` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status_hotel` FOREIGN KEY (`status_id`) REFERENCES `recordstatus` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotelrecord
-- ----------------------------
INSERT INTO `hotelrecord` VALUES ('1', '1', '2', '2019-01-21 19:06:32', '1');
INSERT INTO `hotelrecord` VALUES ('1', '1', '2', '2019-01-21 20:57:36', '2');
INSERT INTO `hotelrecord` VALUES ('1', '1', '2', '2019-01-21 23:28:19', '3');

-- ----------------------------
-- Table structure for `hotels`
-- ----------------------------
DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `num_rooms` int(11) NOT NULL,
  `num_avail` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotels
-- ----------------------------
INSERT INTO `hotels` VALUES ('1', '武汉', '200', '100', '100', '汉庭酒店');
INSERT INTO `hotels` VALUES ('2', '武汉', '100', '100', '100', '无敌酒店');
INSERT INTO `hotels` VALUES ('3', '武汉', '100', '100', '100', '哲学酒店');
INSERT INTO `hotels` VALUES ('4', '武汉', '100', '1001', '1001', '艺术酒店');
INSERT INTO `hotels` VALUES ('5', '武汉', '100', '100', '100', '绿林酒店');
INSERT INTO `hotels` VALUES ('6', '武汉', '100', '100', '100', '便宜酒店');
INSERT INTO `hotels` VALUES ('7', '武汉', '100', '100', '100', '武汉酒店');
INSERT INTO `hotels` VALUES ('8', '武汉', '100', '100', '100', '生猛酒店');

-- ----------------------------
-- Table structure for `recordstatus`
-- ----------------------------
DROP TABLE IF EXISTS `recordstatus`;
CREATE TABLE `recordstatus` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recordstatus
-- ----------------------------
INSERT INTO `recordstatus` VALUES ('0', '未出行');
INSERT INTO `recordstatus` VALUES ('1', '已出行');
INSERT INTO `recordstatus` VALUES ('2', '已取消');

-- ----------------------------
-- Procedure structure for `CAR_CANCEL`
-- ----------------------------
DROP PROCEDURE IF EXISTS `CAR_CANCEL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CAR_CANCEL`(IN recordId INT,carId INT)
BEGIN
	START TRANSACTION;
		update carrecord set status_id=2 where id=recordId;
		update cars set num_avail=num_avail+1 where car_id=carId;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `CAR_INSERT`
-- ----------------------------
DROP PROCEDURE IF EXISTS `CAR_INSERT`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CAR_INSERT`(IN CARID INT,CID INT)
BEGIN
	START TRANSACTION;
		UPDATE cars SET num_avail=num_avail-1 WHERE car_id=CARID;
		INSERT INTO carrecord(car_id,cust_id,status_id,update_date) VALUES(CARID,CID,0,NOW());
	COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `FLIGHT_CANCEL`
-- ----------------------------
DROP PROCEDURE IF EXISTS `FLIGHT_CANCEL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FLIGHT_CANCEL`(IN recordId INT,flightId INT)
BEGIN
	START TRANSACTION;
		update flightrecord set status_id=2 where id=recordId;
		update flights set avail_num=avail_num+1 where flight_id=flightId;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `FLIGHT_INSERT`
-- ----------------------------
DROP PROCEDURE IF EXISTS `FLIGHT_INSERT`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FLIGHT_INSERT`(IN FID INT,CID INT)
BEGIN
	#开始事务
	START TRANSACTION;
		#先更新有效座位数
		UPDATE flights SET avail_num=avail_num-1 WHERE flight_id=FID;
		#再插入用户记录
		insert into flightrecord(flight_id,cust_id,status_id,update_date) values(FID,CID,0,NOW());
	
	COMMIT;
		
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `HOTEL_CANCEL`
-- ----------------------------
DROP PROCEDURE IF EXISTS `HOTEL_CANCEL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HOTEL_CANCEL`(IN recordId INT,hotelId INT)
BEGIN
	START TRANSACTION;
		update hotelrecord set status_id=2 where id=recordId;
		update hotels set num_avail=num_avail+1 where hotel_id=hotelId;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `HOTEL_INSERT`
-- ----------------------------
DROP PROCEDURE IF EXISTS `HOTEL_INSERT`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HOTEL_INSERT`(IN HID INT,CID INT)
BEGIN
	START TRANSACTION;
		UPDATE hotels SET num_avail=num_avail-1 WHERE hotel_id=HID;
		INSERT INTO hotelrecord(hotel_id,cust_id,status_id,update_date) VALUES(HID,CID,0,NOW());
	COMMIT;
END
;;
DELIMITER ;
