/*
MySQL Data Transfer
Source Host: localhost
Source Database: aadhar
Target Host: localhost
Target Database: aadhar
Date: 12/6/2016 6:54:35 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for aai
-- ----------------------------
DROP TABLE IF EXISTS `aai`;
CREATE TABLE `aai` (
  `aaid` varchar(255) NOT NULL default '',
  `aapwd` varchar(255) default NULL,
  `loc` varchar(255) default NULL,
  PRIMARY KEY  (`aaid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` varchar(255) NOT NULL default '',
  `pwd` varchar(255) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for astaff
-- ----------------------------
DROP TABLE IF EXISTS `astaff`;
CREATE TABLE `astaff` (
  `sid` decimal(10,0) NOT NULL default '0',
  `sname` varchar(255) default NULL,
  `loc` varchar(255) default NULL,
  `dor` varchar(255) default NULL,
  `pwd` varchar(255) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cregn
-- ----------------------------
DROP TABLE IF EXISTS `cregn`;
CREATE TABLE `cregn` (
  `appno` decimal(10,0) NOT NULL default '0',
  `ano` decimal(10,0) default NULL,
  `apwd` varchar(255) default NULL,
  `cname` varchar(255) default NULL,
  `caddr` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `fname` varchar(255) default NULL,
  `cno` varchar(255) default NULL,
  `occ` varchar(255) default NULL,
  `ph` varchar(255) default NULL,
  `pin` decimal(10,0) default NULL,
  `gend` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`appno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for license
-- ----------------------------
DROP TABLE IF EXISTS `license`;
CREATE TABLE `license` (
  `cid` decimal(10,0) NOT NULL default '0',
  `dor` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `lno` varchar(255) default NULL,
  `doi` varchar(255) default NULL,
  `doe` varchar(255) default NULL,
  `iauth` varchar(255) default NULL,
  `rmks` varchar(255) default NULL,
  `vtype` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cid`,`vtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for passport
-- ----------------------------
DROP TABLE IF EXISTS `passport`;
CREATE TABLE `passport` (
  `cid` decimal(10,0) NOT NULL default '0',
  `dor` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `ppno` varchar(255) default NULL,
  `doi` varchar(255) default NULL,
  `doe` varchar(255) default NULL,
  `iauth` varchar(255) default NULL,
  `rmks` varchar(255) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for pinmast
-- ----------------------------
DROP TABLE IF EXISTS `pinmast`;
CREATE TABLE `pinmast` (
  `sid` varchar(255) NOT NULL default '',
  `loc` varchar(255) default NULL,
  `inc` varchar(255) default NULL,
  `pwd` varchar(255) default NULL,
  `pinc` varchar(255) default NULL,
  `area` varchar(255) default NULL,
  `stype` varchar(255) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `cid` decimal(10,0) NOT NULL default '0',
  `venue` varchar(255) default NULL,
  `rto` varchar(255) default NULL,
  `tdate` varchar(255) default NULL,
  `ttime` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `vtype` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`cid`,`vtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for transit
-- ----------------------------
DROP TABLE IF EXISTS `transit`;
CREATE TABLE `transit` (
  `cid` decimal(10,0) NOT NULL default '0',
  `status` varchar(255) default NULL,
  `dost` varchar(255) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for travel
-- ----------------------------
DROP TABLE IF EXISTS `travel`;
CREATE TABLE `travel` (
  `cid` int(20) default NULL,
  `cname` varchar(255) default NULL,
  `ppno` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `dot` varchar(255) default NULL,
  `loc` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `aai` VALUES ('nandu', 'nandu', 'malleswaram');
INSERT INTO `admin` VALUES ('admin', 'nandu');
INSERT INTO `astaff` VALUES ('1000', 'hari', 'malleswaram', '6/12/2016', '123456');
INSERT INTO `cregn` VALUES ('1', '1000', '123456', 'nandu', 'malleswaram', '04/03/1981', 'nageswarao', '9739066172', 'director', 'nandu.jpg', '560003', 'Male', 'Accepted');
INSERT INTO `license` VALUES ('1000', '6/12/2016', 'Despatched', 'KA043911', '6/12/2016', '6/12/2026', 'RTO,Yeswanthpur', 'done well', '4');
INSERT INTO `passport` VALUES ('1000', '6/12/2016', 'Despatched', 'IGEEKS1', '6/12/2016', '6/12/2026', 'PS,Malleswaram', 'Genuine Candidae');
INSERT INTO `pinmast` VALUES ('P1', 'malleswaram', 'lakshmi', '123456', '560003', 'malleswaram', 'PS');
INSERT INTO `pinmast` VALUES ('R1', 'malleswaram', 'raju', '123456', '560003:560004:', 's1:s2:', 'RTA');
INSERT INTO `schedule` VALUES ('1000', 'yeswanthpur', 'raju', '12/6/2016', '11:00', 'Accept', '4');
INSERT INTO `travel` VALUES ('1000', 'nandu', 'IGEEKS1', 'Allowed', '6/12/2016', 'malleswaram');
